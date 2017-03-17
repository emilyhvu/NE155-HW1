function vq = interp_lagrange(x, v, xq)
    % Returns interpolated values of a 1-D function. Row vector
    % x contains the sample points, row vector v contains 
    % those values, and row vector xq is the evaluation points 
    % of interest. Returns row vector vq, the values
    % of the Lagrange interpolation at each point xq
    
    assert(length(x) == length(v), 'Length of x must match length of v');
    
    vq = [];
    
    for i = 1:length(xq)
        P = 0;
        for j = 1:length(x)
            P = P + v(j).*L(j, x, xq(i));
        end
        vq(end + 1) = P;
    end
end
    
function prod = L(k, pts, x)
    prod = 1.0;
    
    for i = 1:length(pts)
        if i ~= k
            prod = prod.*(x - pts(i))./(pts(k) - pts(i));
        end
    end
end