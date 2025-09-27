#!/usr/bin/env python
# -*- coding: utf-8 -*-

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def root_endpoint():
    return {"data": "La API funciona correctamente."}


@app.get("/foo/{id}")
def read_id(id: int, query: str | None = None):
    return {"id": "id", "query": "query"}
