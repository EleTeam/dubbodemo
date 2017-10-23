package com.et.dubbodemo.id.service.impl;

import com.et.dubbodemo.id.spi.IdService;
import com.et.dubbodemo.id.service.util.SnowflakeIdWorkerFactory;
import org.springframework.stereotype.Service;

@Service("idService")
public class IdServiceImpl implements IdService
{
    @Override
    public synchronized Long generateId()
    {
        return SnowflakeIdWorkerFactory.nextId();
    }
}
