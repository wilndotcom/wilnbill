<div class="modern-dashboard-stats">
    <div class="stats-grid">
        <div class="stat-card slide-in-up">
            <div class="stat-icon">
                <i class="ion ion-person"></i>
            </div>
            <div class="stat-value">{$total_customers}</div>
            <div class="stat-label">Total Customers</div>
        </div>
        
        <div class="stat-card slide-in-up" style="animation-delay: 0.1s">
            <div class="stat-icon" style="background: var(--gradient-success);">
                <i class="ion ion-cash"></i>
            </div>
            <div class="stat-value">{$total_revenue}</div>
            <div class="stat-label">Total Revenue</div>
        </div>
        
        <div class="stat-card slide-in-up" style="animation-delay: 0.2s">
            <div class="stat-icon" style="background: var(--gradient-warning);">
                <i class="ion ion-wifi"></i>
            </div>
            <div class="stat-value">{$active_plans}</div>
            <div class="stat-label">Active Plans</div>
        </div>
        
        <div class="stat-card slide-in-up" style="animation-delay: 0.3s">
            <div class="stat-icon" style="background: var(--gradient-danger);">
                <i class="ion ion-stats-bars"></i>
            </div>
            <div class="stat-value">{$daily_sales}</div>
            <div class="stat-label">Daily Sales</div>
        </div>
    </div>
</div>

<style>
.modern-dashboard-stats {
    margin-bottom: var(--space-xl);
}

.stats-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: var(--space-lg);
}

.stat-card {
    background: var(--bg-card);
    border-radius: var(--radius-xl);
    padding: var(--space-xl);
    text-align: center;
    box-shadow: var(--shadow-lg);
    transition: all 0.3s ease;
    position: relative;
    overflow: hidden;
}

.stat-card::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 3px;
    background: var(--gradient-primary);
}

.stat-card:hover {
    transform: translateY(-5px);
    box-shadow: var(--shadow-xl);
}

.stat-icon {
    width: 60px;
    height: 60px;
    background: var(--gradient-primary);
    border-radius: var(--radius-full);
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 0 auto var(--space) auto;
    color: white;
    font-size: 1.5rem;
    box-shadow: var(--shadow);
}

.stat-value {
    font-size: 2.5rem;
    font-weight: 800;
    color: var(--text-primary);
    margin: 0 0 var(--space-sm) 0;
    background: var(--gradient-primary);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

.stat-label {
    color: var(--text-secondary);
    font-weight: 500;
    margin: 0;
}

@media (max-width: 768px) {
    .stats-grid {
        grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
        gap: var(--space);
    }
    
    .stat-card {
        padding: var(--space-lg);
    }
    
    .stat-icon {
        width: 50px;
        height: 50px;
        font-size: 1.25rem;
    }
    
    .stat-value {
        font-size: 2rem;
    }
}
</style>
