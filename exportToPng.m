function exportToPng(figure, filename, x, y)

    x = x / 100;
    y = y / 100;
    
    set(figure,'PaperUnits','inches','PaperSize',[x,y],'PaperPosition',[0 0 x y]);
    print('-dpng','-r100', filename);
    
end