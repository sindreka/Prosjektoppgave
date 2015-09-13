% A tool for all figures made with p non separable

if 0 % convergence function 1
    j = 1;
    
    p = [4,8,12,16,20,40,100];
    utdata1  = zeros(length(p),3);
    utdata2  = zeros(length(p),3);
    utdata3  = zeros(length(p),3);
    for i = p
        utdata1(j,:) = parallel( i,i,1,1,1);
        utdata2(j,:) = parallel( i,i,1,2,1);
        utdata3(j,:) = parallel( i,i,1,3,1);
        j = j + 1;
    end
    figure(101)
    loglog(p,utdata1(:,3),'k:o')
    hold on
    plot(p,utdata2(:,3),'k:+')
    plot(p,utdata3(:,3),'k:d')
    plot(p,1./p.^2,'k-')
    h = legend('KPM(1)','KPM','Direct method','Helpline');
    xlabel('\rho = k')
    ylabel('\epsilon');
    
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
end
%%% Done
if 0 % convergence function 2
    j = 1;
    
    p = [4,8,12,16,20,60,100];
    utdata1  = zeros(length(p),3);
    utdata2  = zeros(length(p),3);
    utdata3  = zeros(length(p),3);
    for i = p
        utdata1(j,:) = parallel( i,i,1,1,2);
        utdata2(j,:) = parallel( i,i,1,2,2);
        utdata3(j,:) = parallel( i,i,1,3,2);
        j = j + 1;
    end
    figure(102)
    loglog(p,utdata1(:,3),'k:o')
    hold on
    plot(p,utdata2(:,3),'k:+')
    plot(p,utdata3(:,3),'k:d')
    plot(p,1./p.^2,'k-')
    h = legend('KPM(1)','KPM','Direct method','Helpline');
    xlabel('\rho = k')
    ylabel('\epsilon');
    
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
end

if 0 % speedup function 1
    p = [1,2,4];
    avg = 2;
    tol = 10^-15; m = 40;
    k = 40;
    j = 1;
    utdata1 = zeros(length(p),3,avg);
    utdata2 = zeros(length(p),3,avg);
    utdata3 = zeros(length(p),3,avg);
    utdata4 = zeros(length(p),3,avg);
    utdata5 = zeros(length(p),3,avg);
    
    for i = p
        for a = 1:avg
            utdata1(j,:,a) = parallel( m,k, 1,1,1,tol,i);
            utdata2(j,:,a) = parallel( m,k,20,1,1,tol,i);
            utdata3(j,:,a) = parallel( m,k,40,1,1,tol,i);
            utdata4(j,:,a) = parallel( m,k,100,1,1,tol,i);
            utdata5(j,:,a) = parallel( m,k,1 ,2,1,tol,i);
        end
        j = j + 1;
        
    end
    utdata1 = sum(utdata1,3)/avg;
    utdata2 = sum(utdata2,3)/avg;
    utdata3 = sum(utdata3,3)/avg;
    utdata4 = sum(utdata4,3)/avg;
    utdata5 = sum(utdata5,3)/avg;
    figure(401)
    loglog(p,utdata1(:,2),'k:o')
    hold on
    plot(p,utdata2(:,2),'k:+')
    plot(p,utdata3(:,2),'k:d')
    plot(p,utdata4(:,2),'k:^')
    plot(p,utdata5(:,2),'k:x')
    plot(p,1./p*100,'k-')
    h = legend('KPM(1)','KPM(20)','KPM(40)','KPM(100)','KPM','Helpline');
    xlabel('nP'); ylabel('Computation time');
    
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
    
    speedup1 = zeros(5,length(p));
    speedup1(1,:) = utdata1(:,2).\utdata1(1,2);
    speedup1(2,:) = utdata2(:,2).\utdata2(1,2);
    speedup1(3,:) = utdata3(:,2).\utdata3(1,2);
    speedup1(4,:) = utdata4(:,2).\utdata4(1,2);
    speedup1(5,:) = utdata5(:,2).\utdata5(1,2);
    
    pareff1 = zeros(5,length(p));
    pareff1(1,:) = speedup1(1,:)./p;
    pareff1(2,:) = speedup1(2,:)./p;
    pareff1(3,:) = speedup1(3,:)./p;
    pareff1(4,:) = speedup1(4,:)./p;
    pareff1(5,:) = speedup1(5,:)./p;
    
    save('speedu1.mat','speedup1','pareff1') % speedup data
end


if 0 % speedup function 2
    p = [1,2,4];
    avg = 2;
    tol = 10^-15; m = 40;
    k = 40;
    j = 1;
    utdata1 = zeros(length(p),3,avg);
    utdata2 = zeros(length(p),3,avg);
    utdata3 = zeros(length(p),3,avg);
    utdata4 = zeros(length(p),3,avg);
    utdata5 = zeros(length(p),3,avg);
    
    for i = p
        for a = 1:avg
            utdata1(j,:,a) = parallel( m,k, 1,1,2,tol,i);
            utdata2(j,:,a) = parallel( m,k,20,1,2,tol,i);
            utdata3(j,:,a) = parallel( m,k,40,1,2,tol,i);
            utdata4(j,:,a) = parallel( m,k,100,1,2,tol,i);
            utdata5(j,:,a) = parallel( m,k,1 ,2,2,tol,i);
        end
        j = j + 1;
        
    end
    utdata1 = sum(utdata1,3)/avg;
    utdata2 = sum(utdata2,3)/avg;
    utdata3 = sum(utdata3,3)/avg;
    utdata4 = sum(utdata4,3)/avg;
    utdata5 = sum(utdata5,3)/avg;
    figure(402)
    loglog(p,utdata1(:,2),'k:o')
    hold on
    plot(p,utdata2(:,2),'k:+')
    plot(p,utdata3(:,2),'k:d')
    plot(p,utdata4(:,2),'k:^')
    plot(p,utdata5(:,2),'k:x')
    plot(p,1./p*100,'k-')
    h = legend('KPM(1)','KPM(20)','KPM(40)','KPM(100)','KPM','Helpline');
    xlabel('nP'); ylabel('Computation time');
    
    h = set(findall(gcf,'-property','FontSize'), 'Fontsize',18);
    set(h,'Location','Best');
    
    speedup2 = zeros(5,length(p));
    speedup2(1,:) = utdata1(:,2).\utdata1(1,2);
    speedup2(2,:) = utdata2(:,2).\utdata2(1,2);
    speedup2(3,:) = utdata3(:,2).\utdata3(1,2);
    speedup2(4,:) = utdata4(:,2).\utdata4(1,2);
    speedup2(5,:) = utdata5(:,2).\utdata5(1,2);
    
    pareff2 = zeros(5,length(p));
    pareff2(1,:) = speedup2(1,:)./p;
    pareff2(2,:) = speedup2(2,:)./p;
    pareff2(3,:) = speedup2(3,:)./p;
    pareff2(4,:) = speedup2(4,:)./p;
    pareff2(5,:) = speedup2(5,:)./p;
    save('speedu2.mat','speedup2','pareff2') % speedup data
end


%compare

avg = 2; k = 40; m = 40; p = [20,40,100,200]; para = 4; tol = 10^-15;
% parallel(m,k,n,prob,func,conv,para)

if 1 % time vs m and m % function 1
    j = 1;
    utdata1 = zeros(length(p),3,avg);
    utdata2 = zeros(length(p),3,avg);
    kkk = 3;
    for i = p
        for a = 1:avg
            utdata1(j,:,a) = parallel( i,i,ceil(sqrt(i)),1,1,10^-kkk,para);
            utdata2(j,:,a) = parallel( i,i,1 ,3,1,tol,1);
        end
        j = j + 1;
        kkk = kkk+2;
        
    end
    utdata1 = sum(utdata1,3)/avg;
    utdata2 = sum(utdata2,3)/avg;
    figure(800)
    loglog(p,utdata1(:,2),'k:o')
    hold on
    plot(p,utdata2(:,2),'k:+')
    plot(p,p.^6/10000000000,'k-')
    h = legend('KPM(40)','DM','Helpline');
    xlabel('\rho = k'); ylabel('Computation time');
    set(findall(gcf,'-property','FontSize'), 'Fontsize',18)
    set(h,'Location','Best');
    drawnow; print -djpeg c1comp1m
    h = get(0,'children');
    saveas(h(end),'c1comp1m','fig');
end

if 1 % time vs m and m % function 2
    j = 1;
    utdata1 = zeros(length(p),3,avg);
    utdata2 = zeros(length(p),3,avg);
    kkk = 3;
    for i = p
        for a = 1:avg
            utdata1(j,:,a) = parallel( i,i,ceil(sqrt(i)),1,2,10^-kkk,para);
            utdata2(j,:,a) = parallel( i,i,1 ,3,2,tol,1);
        end
        j = j + 1;
        kkk = kkk + 2;
        
    end
    utdata1 = sum(utdata1,3)/avg;
    utdata2 = sum(utdata2,3)/avg;
    figure(801)
    loglog(p,utdata1(:,2),'k:o')
    hold on
    plot(p,utdata2(:,2),'k:+')
    plot(p,p.^6/10000000000,'k-')
    h = legend('KPM(\sqrt(\rho))','DM','Helpline');
    xlabel('\rho = k'); ylabel('Computation time');
    set(findall(gcf,'-property','FontSize'), 'Fontsize',18)
    set(h,'Location','Best');
    drawnow; print -djpeg c2comp2m
    h = get(0,'children');
    saveas(h(end),'c2comp2m','fig');
end
