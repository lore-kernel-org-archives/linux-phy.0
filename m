Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E383ECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 07:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eejxfq0r/YmOr986tv+bMKD5gRCPIYSEObAIv0Rdl2w=; b=Upgi65Tny4dtyJ
	ZrWLYvEqLefWN6s0DZnXHRE2XJ3aZ9/4UhEJ7T7Dh36UcIAz/eLVrM5l4dzbjFj9UJChJnuDheuEn
	YBEYF5uNT80uqhvNtM+ipWsU0eaLKdpkIhU2IeUds4my6/CQymn8X2xpDU97LWeh2kxEhf2+dok+5
	hGURNNpSX3bsJpAwm6cz8J51Cd7mW/276ANvXN3GEtcdXqOdKKVdlxYQMwbpUE7tOzxkAiB9Jk+9l
	M2UmoP3DSRdXdn5agYdoWLxYrCDp2P99G3WT+ff/fvG20o4sXthS+jwgqmUU3J+O45HZCxqs3pgCJ
	9Yk7wi0d4hDF6mOvMygQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvXR-00EjMN-Lr; Tue, 30 Aug 2022 07:19:57 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvXO-00EjLv-MY
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 07:19:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 13207614A5;
	Tue, 30 Aug 2022 07:19:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E168BC433C1;
	Tue, 30 Aug 2022 07:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661843993;
	bh=cNl2q6IwhNO1r/WX6/JP3SlN458v5wTt/geQej7BrCw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cTqkeBK2Wg4Rjz1Qdp1w2nJSsduJhiCv9dfwLA5MTJbuLRYnz3vtqKk3Ldhsq8yHt
	 SLjbHymv3AUeKCudBUL0w9+QrRSGhOp0Pe+G1dU+OyZXinKR/qYKdn+u+0aMu2UjoM
	 kClNAemEplLWLVZj8OZiYKcakpRJmDoVBnOiEbjLi2BWvWRSascb7QAbZRgGpLBx8g
	 E69cPMRPj5GnhVphavfGEp2IF/7TpKG9KRDaMqR6XZnRVBGsEX9whTEaBJDGqKJxYA
	 PXn3EqzZEabPnnBGZYXwnDXnAv+iiBKANwm5sTNPFCkrS7bTnADuBdzxAMtyp0pbFM
	 HPw0ydz2KqMLA==
Date: Tue, 30 Aug 2022 12:49:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: williamsukatube@163.com
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, jckuo@nvidia.com, kishon@ti.com,
	thierry.reding@gmail.com, jonathanh@nvidia.com,
	William Dean <williamsukatube@gmail.com>,
	Hacash Robot <hacashRobot@santino.com>
Subject: Re: [PATCH] phy: tegra: xusb: check the return value of
 devm_kzalloc() in tegra_xusb_setup_usb_role_switch()
Message-ID: <Yw26FXFyb3GwQaux@matsya>
References: <20220723034130.2952016-1-williamsukatube@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220723034130.2952016-1-williamsukatube@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_001954_795437_9F1EBBBB 
X-CRM114-Status: GOOD (  15.48  )
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

On 23-07-22, 11:41, williamsukatube@163.com wrote:
> From: William Dean <williamsukatube@gmail.com>
> 
> The function devm_kzalloc() in tegra_xusb_setup_usb_role_switch()
> can fail, so its return value should be checked.
> 
> Fixes: f67213cee2b35 ("phy: tegra: xusb: Add usb-role-switch support")
> Reported-by: Hacash Robot <hacashRobot@santino.com>

Where is this bug report?

> Signed-off-by: William Dean <williamsukatube@gmail.com>
> ---
>  drivers/phy/tegra/xusb.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
> index aa5237eacd29..e3611fb4c779 100644
> --- a/drivers/phy/tegra/xusb.c
> +++ b/drivers/phy/tegra/xusb.c
> @@ -668,6 +668,8 @@ static int tegra_xusb_setup_usb_role_switch(struct tegra_xusb_port *port)
>  	port->dev.driver = devm_kzalloc(&port->dev,
>  					sizeof(struct device_driver),
>  					GFP_KERNEL);
> +	if (!port->dev.driver)
> +		return -ENOMEM;
>  	port->dev.driver->owner	 = THIS_MODULE;
>  
>  	port->usb_role_sw = usb_role_switch_register(&port->dev,
> -- 
> 2.25.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
