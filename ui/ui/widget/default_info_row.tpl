<div class="modern-breadcrumb">
    <div class="breadcrumb-item">
        <i class="ion ion-calendar"></i>
        {Lang::dateFormat($start_date)}
    </div>
    <div class="breadcrumb-item">
        <i class="ion ion-clock"></i>
        {Lang::dateFormat($current_date)}
    </div>
    {if $_c['enable_balance'] == 'yes' && in_array($_admin['user_type'],['SuperAdmin','Admin', 'Report'])}
        <div class="breadcrumb-item clickable" onclick="window.location.href = '{Text::url('customers&search=&order=balance&filter=Active&orderby=desc')}'">
            <i class="ion ion-cash"></i>
            {Lang::T('Customer Balance')}
            <span class="balance-amount">{$_c['currency_code']} {number_format($cb,0,$_c['dec_point'],$_c['thousands_sep'])}</span>
        </div>
    {/if}
</div>

<style>
.modern-breadcrumb {
    display: flex;
    align-items: center;
    gap: var(--space-lg);
    padding: var(--space-lg);
    background: var(--bg-primary);
    border-radius: var(--radius-lg);
    box-shadow: var(--shadow-sm);
    margin-bottom: var(--space-lg);
    flex-wrap: wrap;
}

.breadcrumb-item {
    display: flex;
    align-items: center;
    gap: var(--space-sm);
    padding: var(--space-sm) var(--space);
    background: var(--bg-tertiary);
    border-radius: var(--radius);
    font-weight: 500;
    color: var(--text-secondary);
    transition: all 0.2s ease;
}

.breadcrumb-item i {
    color: var(--primary-color);
    font-size: 1rem;
}

.breadcrumb-item.clickable {
    cursor: pointer;
    background: linear-gradient(135deg, var(--primary-color) 0%, var(--primary-dark) 100%);
    color: var(--text-inverse);
    box-shadow: var(--shadow-sm);
}

.breadcrumb-item.clickable:hover {
    transform: translateY(-1px);
    box-shadow: var(--shadow-md);
}

.balance-amount {
    font-weight: 700;
    font-size: 0.875rem;
}

@media (max-width: 768px) {
    .modern-breadcrumb {
        flex-direction: column;
        align-items: stretch;
    }
    
    .breadcrumb-item {
        justify-content: center;
    }
}
</style>