function global_error=funerror(realres,res,h)
global_error=max(abs(realres-res));
end