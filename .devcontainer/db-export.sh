#!/usr/bin/bash

dbname=db
user=db
mysqldump --no-tablespaces \
    --ignore-table=$dbname.sys_log \
    --ignore-table=$dbname.fe_sessions \
    --ignore-table=$dbname.be_sessions \
    --ignore-table=$dbname.cache_hash \
    --ignore-table=$dbname.cache_hash_tags \
    --ignore-table=$dbname.cache_pages \
    --ignore-table=$dbname.cache_pages_tags \
    --ignore-table=$dbname.cache_rootline \
    --ignore-table=$dbname.cache_rootline_tags \
    --ignore-table=$dbname.sys_history \
    --ignore-table=$dbname.sys_refindex \
    --ignore-table=$dbname.sys_messenger_messages \
    --ignore-table=$dbname.sys_http_report \
    --ignore-table=$dbname.index_words \
    --ignore-table=$dbname.index_fulltext \
    -u $user ${dbname} -h localhost -pdb > /workspaces/surfcamp-2025/data/db/db.sql
