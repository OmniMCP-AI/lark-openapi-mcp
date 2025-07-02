FROM node:20-slim

WORKDIR /app

# 声明环境变量（可在构建或运行时覆盖）
ENV APP_ID=your_app_id
ENV APP_SECRET=your_app_secret
ENV USER_ACCESS_TOKEN=your_user_access_token

# 启动命令，自动带上用户 token（如果有），以 stdio 模式运行
CMD npx -y @larksuiteoapi/lark-mcp mcp -a $APP_ID -s $APP_SECRET -m stdio
