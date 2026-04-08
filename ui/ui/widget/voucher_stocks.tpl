{if $_c['disable_voucher'] != 'yes' && $stocks['unused']>0 || $stocks['used']>0}
    <div class="modern-voucher-stock">
        <div class="widget-header">
            <div class="widget-title">
                <i class="ion ion-ticket"></i>
                Vouchers Stock
            </div>
            <div class="widget-stats">
                <div class="stat-item">
                    <span class="stat-value">{$stocks['unused']}</span>
                    <span class="stat-label">Available</span>
                </div>
                <div class="stat-item">
                    <span class="stat-value">{$stocks['used']}</span>
                    <span class="stat-label">Used</span>
                </div>
            </div>
        </div>
        <div class="widget-content">
            <div class="voucher-table">
                <div class="table-header">
                    <div class="header-cell plan-name">Package Name</div>
                    <div class="header-cell unused">Available</div>
                    <div class="header-cell used">Used</div>
                </div>
                <div class="table-body">
                    {foreach $plans as $stok}
                        <div class="table-row">
                            <div class="cell plan-name">{$stok['name_plan']}</div>
                            <div class="cell unused">
                                <span class="badge badge-success">{$stok['unused']}</span>
                            </div>
                            <div class="cell used">
                                <span class="badge badge-info">{$stok['used']}</span>
                            </div>
                        </div>
                    {/foreach}
                    <div class="table-row total-row">
                        <div class="cell plan-name">
                            <strong>Total</strong>
                        </div>
                        <div class="cell unused">
                            <span class="badge badge-success">{$stocks['unused']}</span>
                        </div>
                        <div class="cell used">
                            <span class="badge badge-info">{$stocks['used']}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
    .modern-voucher-stock {
        background: var(--bg-primary);
        border-radius: var(--radius-lg);
        box-shadow: var(--shadow-sm);
        margin-bottom: var(--space-lg);
        overflow: hidden;
        transition: all 0.2s ease;
    }
    
    .modern-voucher-stock:hover {
        box-shadow: var(--shadow-md);
        transform: translateY(-1px);
    }
    
    .widget-header {
        background: linear-gradient(135deg, var(--primary-color) 0%, var(--primary-dark) 100%);
        color: var(--text-inverse);
        padding: var(--space-lg);
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    
    .widget-title {
        display: flex;
        align-items: center;
        gap: var(--space-sm);
        font-weight: 600;
        font-size: 1.125rem;
    }
    
    .widget-title i {
        font-size: 1.25rem;
    }
    
    .widget-stats {
        display: flex;
        gap: var(--space-lg);
    }
    
    .stat-item {
        text-align: center;
    }
    
    .stat-value {
        display: block;
        font-size: 1.5rem;
        font-weight: 700;
        line-height: 1;
    }
    
    .stat-label {
        display: block;
        font-size: 0.75rem;
        opacity: 0.8;
        margin-top: var(--space-xs);
    }
    
    .widget-content {
        padding: var(--space-lg);
    }
    
    .voucher-table {
        overflow-x: auto;
    }
    
    .table-header {
        display: grid;
        grid-template-columns: 2fr 1fr 1fr;
        gap: var(--space);
        padding: var(--space-sm) 0;
        border-bottom: 2px solid var(--border-color);
        margin-bottom: var(--space);
    }
    
    .header-cell {
        font-weight: 600;
        color: var(--text-primary);
        text-transform: uppercase;
        font-size: 0.75rem;
        letter-spacing: 0.05em;
    }
    
    .table-body {
        display: flex;
        flex-direction: column;
        gap: var(--space-sm);
    }
    
    .table-row {
        display: grid;
        grid-template-columns: 2fr 1fr 1fr;
        gap: var(--space);
        padding: var(--space-sm) 0;
        border-bottom: 1px solid var(--border-light);
        transition: all 0.2s ease;
    }
    
    .table-row:hover {
        background: var(--bg-secondary);
        border-radius: var(--radius);
        padding: var(--space-sm) var(--space);
        margin: 0 calc(-1 * var(--space));
    }
    
    .table-row.total-row {
        background: var(--bg-tertiary);
        border-radius: var(--radius);
        padding: var(--space);
        margin-top: var(--space);
        font-weight: 600;
    }
    
    .cell {
        display: flex;
        align-items: center;
        color: var(--text-secondary);
    }
    
    .badge {
        padding: var(--space-xs) var(--space-sm);
        border-radius: var(--radius-sm);
        font-weight: 600;
        font-size: 0.75rem;
        text-transform: uppercase;
        letter-spacing: 0.025em;
    }
    
    .badge-success {
        background: rgba(16, 185, 129, 0.1);
        color: var(--success-color);
        border: 1px solid rgba(16, 185, 129, 0.2);
    }
    
    .badge-info {
        background: rgba(59, 130, 246, 0.1);
        color: var(--info-color);
        border: 1px solid rgba(59, 130, 246, 0.2);
    }
    
    @media (max-width: 768px) {
        .widget-header {
            flex-direction: column;
            gap: var(--space);
            text-align: center;
        }
        
        .widget-stats {
            justify-content: center;
        }
        
        .table-header,
        .table-row {
            grid-template-columns: 1fr;
            gap: var(--space-xs);
        }
        
        .header-cell,
        .cell {
            padding: var(--space-xs) 0;
        }
        
        .badge {
            display: inline-block;
            min-width: 60px;
            text-align: center;
        }
    }
    </style>
{/if}