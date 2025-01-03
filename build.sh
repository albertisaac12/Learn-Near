#!/bin/bash

set -e

RUSTFLAG='-C link-args=s' cargo build --target wasm32-unknown-unknown
--release

cp target/wasm32-unknown-unknown/release/*.wasm./res/