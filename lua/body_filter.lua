 local response_body = string.sub(ngx.arg[1], 1, 1000)
 ngx.ctx.buffered = (ngx.ctx.buffered or "") .. response_body

 if ngx.arg[2] then
    ngx.var.response_body = ngx.ctx.buffered
    end