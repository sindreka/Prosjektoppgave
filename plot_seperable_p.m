% A tool for all figures made with p separable

if 0 % convergence function 1
    j = 1;
    
    p = [4,8,12,16,20,40,60,100];
    utdata1  = zeros(length(p),3);
    utdata2  = zeros(length(p),3);
    utdata3  = zeros(length(p),3);
    for i = p
        utdata1(j,:) = seriell( i,i,1,1,1);
        utdata2(j,:) = seriell( i,i,1,2,1);
        utdata3(j,:) = seriell( i,i,1,3,1);
        j = j + 1;
    end
    figure(1)
    loglog(p,utdata1(:,3),'k:o')
    hold on
    plot(p,utdata2(:,3),'k:+')
    plot(p,utdata3(:,3),'k:d')
    plot(p,1./p.^2,'k-')
    legend('KPM(1)','KPM','Direct integration','Helpline');
    xlabel('\rho = k')
    ylabel('\epsilon');
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
end
if 0 % convergence function 2
    j = 1;
    
    p = [4,8,12,16,20,40,60,100];
    utdata1  = zeros(length(p),3);
    utdata2  = zeros(length(p),3);
    utdata3  = zeros(length(p),3);
    for i = p
        utdata1(j,:) = seriell( i,i,1,1,2);
        utdata2(j,:) = seriell( i,i,1,2,2);
        utdata3(j,:) = seriell( i,i,1,3,2);
        j = j + 1;
    end
    figure(2)
    loglog(p,utdata1(:,3),'k:o')
    hold on
    plot(p,utdata2(:,3),'k:+')
    plot(p,utdata3(:,3),'k:d')
    plot(p,1./p.^2,'k-')
    legend('KPM(1)','KPM','Direct integration','Helpline');
    xlabel('\rho = k')
    ylabel('\epsilon');
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
end


if 0 %restartvariabel function 1
    p = [1,4,20,40,100,200];
    avg = 2;
    k = 40;
    j = 1;
    
    utdata1  = zeros(length(p),3,avg);
    utdata2  = zeros(length(p),3,avg);
    utdata3  = zeros(length(p),3,avg);
    utdata4  = zeros(length(p),3,avg);
    for i = p
        for a = 1:avg
            if 10^2 >= i
                utdata1(j,:,a) = seriell( 10,k,i,1,1);
            end
            utdata2(j,:,a) = seriell( 50,k,i,1,1);
            utdata3(j,:,a) = seriell( 100,k,i,1,1);
            utdata4(j,:,a) = seriell( 200,k,i,1,1);
        end
        j = j + 1;
        
    end
    utdata1 = sum(utdata1,3)/avg;
    utdata2 = sum(utdata2,3)/avg;
    utdata3 = sum(utdata3,3)/avg;
    utdata4 = sum(utdata4,3)/avg;
    figure(3)
    loglog(p,utdata1(:,2),'k:o')
    hold on
    loglog(p,utdata2(:,2),'k:+')
    loglog(p,utdata3(:,2),'k:d')
    loglog(p,utdata4(:,2),'k:<')
    xlabel('n'); ylabel('Computation time');
    legend('KPM,(n), \rho = 10','KPM,(n), \rho = 50','KPM,(n), \rho = 100','KPM,(n), \rho = 200')
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
    
end


if 0 %restartvariabel function 2
    p = [1,4,20,40,100,200];
    avg = 2;
    k = 40;
    j = 1;
    
    utdata1  = zeros(length(p),3,avg);
    utdata2  = zeros(length(p),3,avg);
    utdata3  = zeros(length(p),3,avg);
    utdata4  = zeros(length(p),3,avg);
    for i = p
        for a = 1:avg
            if 00^2 >= i
                utdata1(j,:,a) = seriell(10,k,i,1,2);
            end
            utdata2(j,:,a) = seriell( 50,k,i,1,2);
            utdata3(j,:,a) = seriell( 100,k,i,1,2);
            utdata4(j,:,a) = seriell( 200,k,i,1,2);
        end
        j = j + 1;
    end
    utdata1 = sum(utdata1,3)/avg;
    utdata2 = sum(utdata2,3)/avg;
    utdata3 = sum(utdata3,3)/avg;
    utdata4 = sum(utdata4,3)/avg;
    figure(4)
    loglog(p,utdata1(:,2),'k:o')
    hold on
    loglog(p,utdata2(:,2),'k:+')
    loglog(p,utdata3(:,2),'k:d')
    loglog(p,utdata4(:,2),'k:<')
    xlabel('n'); ylabel('Computation time');
    legend('KPM,(n), \rho = 10','KPM,(n), \rho = 50','KPM,(n), \rho = 100','KPM,(n), \rho = 200')
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
end


if 0 % ant vs m %  function 1
    p = [4,8,12,16,20,40,60,100];
    k = 40; m = 40;
    j = 1;
    utdata1 = zeros(length(p),3);
    utdata2 = zeros(length(p),3);
    utdata3 = zeros(length(p),3);
    utdata4 = zeros(length(p),3);
    for i = p
        utdata1(j,:) = seriell( 20,k,i,1,1);
        utdata2(j,:) = seriell( 40,k,i,1,1);
        utdata3(j,:) = seriell( 100,k,i,1,1);
        utdata4(j,:) = seriell( 200,k,i,1,1);
        j = j + 1;
    end
    figure(5)
    loglog(p,utdata1(:,1),'k:o')
    hold on
    plot(p,utdata2(:,1),'k:+')
    plot(p,utdata3(:,1),'k:d')
    plot(p,utdata4(:,1),'k:<')
    plot(p,1./p.^2*10^4,'k-')
    legend('KPM(n), \rho = 20','KPM(n), \rho = 40','KPM(n), \rho = 100','KPM(n), \rho = 200','Helpline');
    xlabel('n'); ylabel('\eta');
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
end


if 0 % ant vs m %  function 2
    p = [4,8,12,16,20,40,60,100];
    k = 40; m = 40;
    j = 1;
    utdata1 = zeros(length(p),3);
    utdata2 = zeros(length(p),3);
    utdata3 = zeros(length(p),3);
    utdata4 = zeros(length(p),3);
    for i = p
        utdata1(j,:) = seriell( 20,k,i,1,2);
        utdata2(j,:) = seriell( 40,k,i,1,2);
        utdata3(j,:) = seriell( 100,k,i,1,2);
        utdata4(j,:) = seriell( 200,k,i,1,2);
        j = j + 1;
    end
    figure(6)
    loglog(p,utdata1(:,1),'k:o')
    hold on
    plot(p,utdata2(:,1),'k:+')
    plot(p,utdata3(:,1),'k:d')
    plot(p,utdata4(:,1),'k:<')
    plot(p,1./p.^2*10^4,'k-')
    legend('KPM(n), \rho = 20','KPM(n), \rho = 40','KPM(n), \rho = 100','KPM(n), \rho = 200','Helpline');
    xlabel('n'); ylabel('\eta');
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
end


if 0 % time vs m %  function 1
    p = [10,20,40,80,100];
    avg = 2;
    k = 40;
    j = 1;
    utdata1 = zeros(length(p),3,avg);
    utdata2 = zeros(length(p),3,avg);
    utdata3 = zeros(length(p),3,avg);
    utdata4 = zeros(length(p),3,avg);
    utdata5 = zeros(length(p),3,avg);
    utdata6 = zeros(length(p),3,avg);
    
    for i = p
        for a = 1:avg
            utdata1(j,:,a) = seriell( i,k,1,1,1);
            utdata2(j,:,a) = seriell( i,k,20,1,1);
            utdata3(j,:,a) = seriell( i,k,40,1,1);
            utdata4(j,:,a) = seriell( i,k,80,1,1);
            utdata5(j,:,a) = seriell( i,k,1,2,1);
            utdata6(j,:,a) = seriell( i,k,1,3,1);
        end
        j = j + 1;
        
    end
    utdata1 = sum(utdata1,3)/avg;
    utdata2 = sum(utdata2,3)/avg;
    utdata3 = sum(utdata3,3)/avg;
    utdata4 = sum(utdata4,3)/avg;
    utdata5 = sum(utdata5,3)/avg;
    utdata6 = sum(utdata6,3)/avg;
    
    figure(7)
    loglog(p,utdata1(:,2),'k:o')
    hold on
    plot(p,utdata2(:,2),'k:+')
    plot(p,utdata3(:,2),'k:d')
    plot(p,utdata4(:,2),'k:<')
    plot(p,utdata5(:,2),'k:^')
    plot(p,utdata6(:,2),'k:x')
    plot(p,p.^6,'k-')
    h = legend('KPM(1)','KPM(20)','KPM(40)','KPM(80)','KPM','DM','Helpline');
    xlabel('\rho'); ylabel('Computation time');
    set(findall(gcf,'-property','FontSize'), 'Fontsize',18)
    set(h,'Location','Best');
end


if 0 % time vs m % function 2
    p = [10,20,40,80,100];
    avg = 2;
    k = 40;
    j = 1;
    utdata1 = zeros(length(p),3,avg);
    utdata2 = zeros(length(p),3,avg);
    utdata3 = zeros(length(p),3,avg);
    utdata4 = zeros(length(p),3,avg);
    utdata5 = zeros(length(p),3,avg);
    utdata6 = zeros(length(p),3,avg);
    
    for i = p
        for a = 1:avg
            utdata1(j,:,a) = seriell( i,k,1,1,2);
            utdata2(j,:,a) = seriell( i,k,20,1,2);
            utdata3(j,:,a) = seriell( i,k,40,1,2);
            utdata4(j,:,a) = seriell( i,k,80,1,2);
            utdata5(j,:,a) = seriell( i,k,1,2,2);
            utdata6(j,:,a) = seriell( i,k,1,3,2);
        end
        j = j + 1;
        
    end
    utdata1 = sum(utdata1,3)/avg;
    utdata2 = sum(utdata2,3)/avg;
    utdata3 = sum(utdata3,3)/avg;
    utdata4 = sum(utdata4,3)/avg;
    utdata5 = sum(utdata5,3)/avg;
    utdata6 = sum(utdata6,3)/avg;
    
    figure(8)
    loglog(p,utdata1(:,2),'k:o')
    hold on
    plot(p,utdata2(:,2),'k:+')
    plot(p,utdata3(:,2),'k:d')
    plot(p,utdata4(:,2),'k:<')
    plot(p,utdata5(:,2),'k:^')
    plot(p,utdata6(:,2),'k:x')
    plot(p,p.^6,'k-')
    h = legend('KPM(1)','KPM(20)','KPM(40)','KPM(80)','KPM','DM','Helpline');
    xlabel('\rho'); ylabel('Computation time');
    set(findall(gcf,'-property','FontSize'), 'Fontsize',18)
    set(h,'Location','Best');
end

if 0 % time vs k % function 1
    p = [10,20,40,80,100];
    avg = 2;
    m = 40;
    j = 1;
    utdata1 = zeros(length(p),3,avg);
    utdata2 = zeros(length(p),3,avg);
    utdata3 = zeros(length(p),3,avg);
    utdata4 = zeros(length(p),3,avg);
    utdata5 = zeros(length(p),3,avg);
    utdata6 = zeros(length(p),3,avg);
    
    for i = p
        for a = 1:avg
            utdata1(j,:,a) = seriell( m,i,1,1,1);
            utdata2(j,:,a) = seriell( m,i,20,1,1);
            utdata3(j,:,a) = seriell( m,i,40,1,1);
            utdata4(j,:,a) = seriell( m,i,80,1,1);
            utdata5(j,:,a) = seriell( m,i,1,2,1);
            utdata6(j,:,a) = seriell( m,i,1,3,1);
        end
        j = j + 1;
        
    end
    utdata1 = sum(utdata1,3)/avg;
    utdata2 = sum(utdata2,3)/avg;
    utdata3 = sum(utdata3,3)/avg;
    utdata4 = sum(utdata4,3)/avg;
    utdata5 = sum(utdata5,3)/avg;
    utdata6 = sum(utdata6,3)/avg;
    figure(9)
    loglog(p,utdata1(:,2),'k:o')
    hold on
    plot(p,utdata2(:,2),'k:+')
    plot(p,utdata3(:,2),'k:d')
    plot(p,utdata4(:,2),'k:<')
    plot(p,utdata5(:,2),'k:^')
    plot(p,utdata6(:,2),'k:x')
    plot(p,p,'k-')
    h = legend('KPM(1)','KPM(20)','KPM(40)','KPM(80)','KPM','DM','Helpline');
    xlabel('k'); ylabel('Computation time');
    set(findall(gcf,'-property','FontSize'), 'Fontsize',18)
    set(h,'Location','Best');
end


if 0 % time vs k %  function 2
    p = [10,20,40,80,100];
    avg = 10;
    m = 40;
    j = 1;
    utdata1 = zeros(length(p),3,avg);
    utdata2 = zeros(length(p),3,avg);
    utdata3 = zeros(length(p),3,avg);
    
    for i = p
        for a = 1:avg
            utdata1(j,:,a) = seriell( m,i,1,1,2);
            utdata2(j,:,a) = seriell( m,i,20,1,2);
            utdata3(j,:,a) = seriell( m,i,40,1,2);
            utdata4(j,:,a) = seriell( m,i,80,1,2);
            utdata5(j,:,a) = seriell( m,i,1,2,2);
            utdata6(j,:,a) = seriell( m,i,1,3,2);
        end
        j = j + 1;
        
    end
    utdata1 = sum(utdata1,3)/avg;
    utdata2 = sum(utdata2,3)/avg;
    utdata3 = sum(utdata3,3)/avg;
    utdata4 = sum(utdata4,3)/avg;
    utdata5 = sum(utdata5,3)/avg;
    utdata6 = sum(utdata6,3)/avg;
    figure(10)
    loglog(p,utdata1(:,2),'k:o')
    hold on
    plot(p,utdata2(:,2),'k:+')
    plot(p,utdata3(:,2),'k:d')
    plot(p,utdata4(:,2),'k:<')
    plot(p,utdata5(:,2),'k:^')
    plot(p,utdata6(:,2),'k:x')
    plot(p,p,'k-')
    h = legend('KPM(1)','KPM(20)','KPM(40)','KPM(80)','KPM','DM','Helpline');
    xlabel('k'); ylabel('Computation time');
    set(findall(gcf,'-property','FontSize'), 'Fontsize',18)
    set(h,'Location','Best');
end

n = 10;
if 1 %convergencekriteria: ant vs tol for different m, function 1 % Merkelig
    p = [1,10^-1,10^-2,10^-3,10^-5,10^-7,10^-9,10^-11,10^-13,10^-15];

    k = 40;
    j = 1;
    
    utdata1  = zeros(length(p),3);
    utdata2  = zeros(length(p),3);
    utdata3  = zeros(length(p),3);
    
    for i = p
            utdata1(j,:) = seriell( 10,k,n,1,1,i);
            utdata2(j,:) = seriell( 50,k,n,1,1,i);
            utdata3(j,:) = seriell( 100,k,n,1,1,i);
        j = j + 1;
    end
    figure(11)
    semilogx(p,utdata1(:,1),'k:o')
    hold on
    loglog(p,utdata2(:,1),'k:+')
    loglog(p,utdata3(:,1),'k:d')
    xlabel('\delta'); ylabel('\gamma');
    legend('KPM(1), \rho = 10','KPM(1), \rho = 50','KPM(1), \rho = 100')
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
end

if 1 %convergencekriteria: ant vs tol for different m, function 2
    p = [1,10^-1,10^-2,10^-3,10^-5,10^-7,10^-9,10^-11,10^-13,10^-15];

    k = 40;
    j = 1;
    
    utdata1  = zeros(length(p),3);
    utdata2  = zeros(length(p),3);
    utdata3  = zeros(length(p),3);
    
    for i = p
            utdata1(j,:) = seriell(10,k,n,1,2,i);
            utdata2(j,:) = seriell( 50,k,n,1,2,i);
            utdata3(j,:) = seriell( 100,k,n,1,2,i);
        j = j + 1;
        
    end
    figure(12)
    semilogx(p,utdata1(:,1),'k:o')
    hold on
    loglog(p,utdata2(:,1),'k:+')
    loglog(p,utdata3(:,1),'k:d')
    xlabel('\delta'); ylabel('\gamma');
    legend('KPM(1), \rho = 10','KPM(1), \rho = 50','KPM(1), \rho = 100')
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
end

if 1 %convergencekriteria: err vs tol for different m, function 1
    p = [1,10^-1,10^-2,10^-3,10^-5,10^-7,10^-9,10^-11,10^-13,10^-15];

    k = 40;
    j = 1;
    
    utdata1  = zeros(length(p),3);
    utdata2  = zeros(length(p),3);
    utdata3  = zeros(length(p),3);
    
    for i = p
            utdata1(j,:) = seriell( 10,k,n,1,1,i);
            utdata2(j,:) = seriell( 50,k,n,1,1,i);
            utdata3(j,:) = seriell( 100,k,n,1,1,i);
        j = j + 1;
        
    end
    figure(13)
    loglog(p,utdata1(:,3),'k:o')
    hold on
    loglog(p,utdata2(:,3),'k:+')
    loglog(p,utdata3(:,3),'k:d')
     xlabel('\delta'); ylabel('\epsilon');
    legend('KPM(1), \rho = 10','KPM(1), \rho = 50','KPM(1), \rho = 100')
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
end

if 1 %convergencekriteria: err vs tol for different m, function 2
    p = [1,10^-1,10^-2,10^-3,10^-5,10^-7,10^-9,10^-11,10^-13,10^-15];

    k = 40;
    j = 1;
    
    utdata1  = zeros(length(p),3);
    utdata2  = zeros(length(p),3);
    utdata3  = zeros(length(p),3);
    
    for i = p
            utdata1(j,:) = seriell( 10,k,n,1,2,i);
            utdata2(j,:) = seriell( 50,k,n,1,2,i);
            utdata3(j,:) = seriell( 100,k,n,1,2,i);
        j = j + 1;
        
    end
    figure(14)
    loglog(p,utdata1(:,3),'k:o')
    hold on
    loglog(p,utdata2(:,3),'k:+')
    loglog(p,utdata3(:,3),'k:d')
     xlabel('\delta'); ylabel('\epsilon');
    legend('KPM(1), \rho = 10','KPM(1), \rho = 50','KPM(1), \rho = 100')
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
end

if 1 %convergencekriteria: ant vs tol for different k, function 1 % Merkelig
    p = [1,10^-1,10^-2,10^-3,10^-5,10^-7,10^-9,10^-11,10^-13,10^-15];
    
    m = 40;
    j = 1;
    
    utdata1  = zeros(length(p),3);
    utdata2  = zeros(length(p),3);
    utdata3  = zeros(length(p),3);
    
    for i = p
        utdata1(j,:) = seriell( m,10,n,1,1,i);
        utdata2(j,:) = seriell( m,50,n,1,1,i);
        utdata3(j,:) = seriell( m,100,n,1,1,i);
        j = j + 1;
    end
    figure(15)
    semilogx(p,utdata1(:,1),'k:o')
    hold on
    loglog(p,utdata2(:,1),'k:+')
    loglog(p,utdata3(:,1),'k:d')
    xlabel('\delta'); ylabel('\gamma');
    legend('KPM(1), k = 10','KPM(1), k = 50','KPM(1), k = 100')
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
end

%%% Done
if 1 %convergencekriteria: ant vs tol for different k, function 2
    p = [1,10^-1,10^-2,10^-3,10^-5,10^-7,10^-9,10^-11,10^-13,10^-15];
    
    k = 40;
    j = 1;
    
    utdata1  = zeros(length(p),3);
    utdata2  = zeros(length(p),3);
    utdata3  = zeros(length(p),3);
    
    for i = p
        utdata1(j,:) = seriell( m,10,n,1,2,i);
        utdata2(j,:) = seriell( m,50,n,1,2,i);
        utdata3(j,:) = seriell( m,100,n,1,2,i);
        j = j + 1;
        
    end
    figure(16)
    semilogx(p,utdata1(:,1),'k:o')
    hold on
    loglog(p,utdata2(:,1),'k:+')
    loglog(p,utdata3(:,1),'k:d')
    xlabel('\delta'); ylabel('\gamma');
    legend('KPM(1), k = 10','KPM(1), k = 50','KPM(1), k = 100')
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
end


if 1 %convergencekriteria: err vs tol for different k, function 1
    p = [1,10^-1,10^-2,10^-3,10^-5,10^-7,10^-9,10^-11,10^-13,10^-15];
    
    m = 40;
    j = 1;
    
    utdata1  = zeros(length(p),3);
    utdata2  = zeros(length(p),3);
    utdata3  = zeros(length(p),3);
    
    for i = p
        utdata1(j,:) = seriell( m,10,n,1,1,i);
        utdata2(j,:) = seriell( m,50,n,1,1,i);
        utdata3(j,:) = seriell( m,100,n,1,1,i);
        j = j + 1;
        
    end
    figure(17)
    loglog(p,utdata1(:,3),'k:o')
    hold on
    loglog(p,utdata2(:,3),'k:+')
    loglog(p,utdata3(:,3),'k:d')
    xlabel('tol'); ylabel('err');
    legend('KPM(1), k = 10','KPM(1), k = 50','KPM(1), k = 100')
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
end

if 1 %convergencekriteria: err vs tol for different k, function 2
    p = [1,10^-1,10^-2,10^-3,10^-5,10^-7,10^-9,10^-11,10^-13,10^-15];
    
    m = 40;
    j = 1;
    
    utdata1  = zeros(length(p),3);
    utdata2  = zeros(length(p),3);
    utdata3  = zeros(length(p),3);
    
    for i = p
        utdata1(j,:) = seriell( m,10,n,1,2,i);
        utdata2(j,:) = seriell( m,50,n,1,2,i);
        utdata3(j,:) = seriell( m,100,n,1,2,i);
        j = j + 1;
        
    end
    figure(18)
    loglog(p,utdata1(:,3),'k:o')
    hold on
    loglog(p,utdata2(:,3),'k:+')
    loglog(p,utdata3(:,3),'k:d')
    xlabel('tol'); ylabel('err');
    legend('KPM(1), k = 10','KPM(1), k = 50','KPM(1), k = 100')
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
end
