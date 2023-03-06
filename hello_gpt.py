#!/usr/bin/env python
import argparse
import json
import os
import pickle
import tempfile

import requests


def main():
    #message force_m
    api_key=os.getenv('ENV_CHAT_GPT_API_KEY')
    if api_key == None:
      print('Not have ChatGpt ApiKey , please set your api key in .zshrc or .bash_profile like export ENV_CHAT_GPT_API_KEY= \"Your Chat GPT Api Key\"')
      exit(0)
    parser = argparse.ArgumentParser(description='A program with a command line way to chat with ChatGPT. Use gpt-3.5-turbo Model Api.')
    parser.add_argument('-m', '--message', default='Hello', help='chat content you want to send to ChatGPT (Will be continue with previous conversation)')
    parser.add_argument('--force-m', '--new_message', help='send message as a new conversation')

    args = parser.parse_args()

    tmp_path= tempfile.gettempdir()
    tmp_file_path= tmp_path + '/previous_result_1.pkl'
    result = []
    if os.path.exists(tmp_file_path):
        with open(tmp_file_path, 'rb') as f:
         data = pickle.load(f)
         result = data['result']

    if args.force_m != None:
       result = []
       result += [{'role':'user','content':f'{args.force_m}'}]
    else:
       result += [{'role':'user','content':f'{args.message}'}]

    # 设置请求头和请求参数
    url = 'https://api.openai.com/v1/chat/completions'

    auth='Bearer ' + api_key
    headers = {
       'Content-Type': 'application/json',
       'Authorization': auth,
    }

    data = {
      "model": "gpt-3.5-turbo",
      "messages": result,
    }

    body=json.dumps(data)

    # print(body)

    # conn = http.client.HTTPSConnection(url)
    # conn.timeout = 15.0
    # conn.request('POST','/v1/chat/completions',body,headers)
    
    # 发起POST请求
    # response = conn.getresponse()
    response=requests.post(url, data=body,headers=headers,timeout=10.0)
    # 处理响应
    if response.status_code == 200:
       success_result=json.loads(response.text)
       if 'choices' in success_result.keys():
         message=success_result['choices'][0]['message']
         role=message['role']
         content=message['content']
         result += [{'role':role,'content':content}]
         print(content)
    else:
       print('Failed to send message. Error code:', response.status_code)
    
    # 保存上一次执行的参数和结果
    data = {'args': vars(args), 'result': result}
    with open(tmp_file_path, 'wb') as f:
       pickle.dump(data, f)

if __name__ == '__main__':
    main()
