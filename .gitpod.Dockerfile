FROM gitpod/workspace-full-vnc
RUN npm install
RUN cd recipes && pnpm i && pnpm run package
RUN cd ..
ENTRYPOINT DEBUG_COLORS=1 DEBUG=Ferdi:* npm run start:all-dev