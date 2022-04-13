Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58B1BC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 10:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qI0eEpKzSZ9xby3JwfM8vDzauFwD8vbCP/ehqbtc17I=; b=VYJYZf9hjHKali
	4qNONT8YPrLqGyqpdgrWtjk/21FiukExJDBLSXfw9V4yh+5zvS9VnSrv9HUk71vkCEugnJKWKlSa6
	xiXw4i3AJNSV/KroQQ4BXC51QCgG7/HA/nRShMZEfSpaIOcRuZU2dJVMtpILcHEt4G0u2oqk5gvZ4
	y3qpRIxYyhlpN6XyG8l2vkFmZI/DlMU80es9NrDSLEkVs8xzSGRyXyte1Auyw9jK1w5iNaZp44JoF
	73YSfIhSdBZt932caIT7vRxw1ZANIJSW8LfVvLANUzyNiXHIs+LrT7UGsDIKr+6q5be71K2eOyra0
	l9ze8ooCc0LciVqNBb0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neafK-000hhx-Lg; Wed, 13 Apr 2022 10:56:02 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neafI-000hgo-3z
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 10:56:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id ADCF4B821DC;
 Wed, 13 Apr 2022 10:55:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0085EC385A3;
 Wed, 13 Apr 2022 10:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649847357;
 bh=x/DfLNP13aIWRhDPgt4OxLhq9Lscy/vrCAdzrghAUD8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nBDZlrcL3OH4FgQG5F7z2lQUDB+gPyPZaGXcu82pYB9HDtmnkNsSAdm3NW8AO3YzI
 FD0Q3h9yAdoFUkwnxNQsVZTyiPIM4BAqepDs0ay1drtJWLvnPhqBI/xUBQLeYQqv3w
 o6v+LK+ExnVXnaAYtOV32BG6eGg7AOdLrUQBdy8LsJ8h3WfgbA16H65unJqXDf0r6I
 jrekv56LtA22lV4sI9q559KPh/Xuq+W+R1oj0dB3D47394bACWWKn0OP7uADadD7HB
 1kkA6OaVlLTG3LEXckuX2s47jcKIry57Y9t3q4D0B1zK+qF1hoR+ra2Vi13bds8ROk
 XrF0SVKuUVVoQ==
Date: Wed, 13 Apr 2022 16:25:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: cgel.zte@gmail.com
Cc: kishon@ti.com, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Minghao Chi <chi.minghao@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>
Subject: Re: [PATCH] phy/motorola: using pm_runtime_resume_and_get instead of
 pm_runtime_get_sync
Message-ID: <YlasOb7q7ocMJ54i@matsya>
References: <20220413093627.2538442-1-chi.minghao@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220413093627.2538442-1-chi.minghao@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_035600_356378_7A12CEFD 
X-CRM114-Status: GOOD (  18.88  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 13-04-22, 09:36, cgel.zte@gmail.com wrote:
> From: Minghao Chi <chi.minghao@zte.com.cn>
> 
> Using pm_runtime_resume_and_get is more appropriate
> for simplifing code

Can you explain why is it more appropriate?

> 
> Reported-by: Zeal Robot <zealci@zte.com.cn>

where is this report?

> Signed-off-by: Minghao Chi <chi.minghao@zte.com.cn>
> ---
>  drivers/phy/motorola/phy-mapphone-mdm6600.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/motorola/phy-mapphone-mdm6600.c
> index 5172971f4c36..8738d512131d 100644
> --- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
> +++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
> @@ -253,12 +253,9 @@ static irqreturn_t phy_mdm6600_wakeirq_thread(int irq, void *data)
>  		return IRQ_NONE;
>  
>  	dev_dbg(ddata->dev, "OOB wake on mode_gpio1: %i\n", wakeup);
> -	error = pm_runtime_get_sync(ddata->dev);
> -	if (error < 0) {
> -		pm_runtime_put_noidle(ddata->dev);
> -
> +	error = pm_runtime_resume_and_get(ddata->dev);
> +	if (error < 0)
>  		return IRQ_NONE;
> -	}
>  
>  	/* Just wake-up and kick the autosuspend timer */
>  	pm_runtime_mark_last_busy(ddata->dev);
> @@ -601,10 +598,9 @@ static int phy_mdm6600_probe(struct platform_device *pdev)
>  	pm_runtime_set_autosuspend_delay(ddata->dev,
>  					 MDM6600_MODEM_IDLE_DELAY_MS);
>  	pm_runtime_enable(ddata->dev);
> -	error = pm_runtime_get_sync(ddata->dev);
> +	error = pm_runtime_resume_and_get(ddata->dev);
>  	if (error < 0) {
>  		dev_warn(ddata->dev, "failed to wake modem: %i\n", error);
> -		pm_runtime_put_noidle(ddata->dev);
>  		goto cleanup;
>  	}
>  
> -- 
> 2.25.1
> 

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
