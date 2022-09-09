Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F434ECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 05:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fsMg4dkIh+ZR6WzoSgx/igYX3dq/KxPyXEmcgT4rA/Y=; b=Pua0stIFVChbiO
	9Riu/5MIX0f6YXICjMARE93F/K4BktNHSgYkJcKwEEex7EeN7+c6iio8ViVrAXS7GA7CskOMcIW1y
	eufwpkTPiWZm8JPLMPmCvoVem/PCnyyfLHpAuLP412XxkuUFiRi8Li4PlPSNEhEy+muuGtMWsJSpK
	V65hbJ7/YKMSmIb2y+Ds0YY3SSWbZghDw5xcamVYJe+vYHR5xh5wzUa2s/7sdh0GToy6Le7ZrcKIY
	zEmymPGf8cWw4yZklDrGUXFja2YRWlgr3v/ceCxM3UfZGGFOH4iwSizSesrNoO/LjkD2srm9t3oXI
	4ssM22WfjrRQ+zowbCiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWWjy-00CrDU-Fm; Fri, 09 Sep 2022 05:39:46 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWWjv-00Cr5s-03
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 05:39:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id A2FC6CE2044;
	Fri,  9 Sep 2022 05:39:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C799C433C1;
	Fri,  9 Sep 2022 05:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1662701974;
	bh=XZoGAJnq0Epw0ofT4kF1WcYEbl8SCrwY3jcmk+Ck+Fw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tzbWQDzQqSF1qxkUvwWC+MToN1KwKYT9TwEsc2n1pzdho9Xb9LiovSGRBFjzkSY0H
	 U+QcC13iijqcN0VFut0gJrw/AA0rt15aAkIpWqr/c2uHK6PejyH6q2YxQhPHQpT3pJ
	 DU6iteSAc6wUZh4i7Dnsk6LbEdZBiYZIEXwmbShA=
Date: Fri, 9 Sep 2022 07:39:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sun Ke <sunke32@huawei.com>
Cc: vincent.sunplus@gmail.com, kishon@ti.com, vkoul@kernel.org,
	p.zabel@pengutronix.de, linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: usb: Fix potential NULL dereference in
 sp_usb_phy_probe()
Message-ID: <YxrRlCytfPobnjSv@kroah.com>
References: <20220909013546.2259545-1-sunke32@huawei.com>
 <20220909013546.2259545-2-sunke32@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220909013546.2259545-2-sunke32@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_223943_476978_670B4CD8 
X-CRM114-Status: GOOD (  18.51  )
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

On Fri, Sep 09, 2022 at 09:35:45AM +0800, Sun Ke wrote:
> platform_get_resource_byname() may fail and return NULL, so we should
> better check it s return value to avoid a NULL pointer dereference
> a bit later in the code.
> 
> Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
> Signed-off-by: Sun Ke <sunke32@huawei.com>
> ---
>  drivers/phy/sunplus/phy-sunplus-usb2.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
> index 5269968b3060..d73a8a421d9c 100644
> --- a/drivers/phy/sunplus/phy-sunplus-usb2.c
> +++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
> @@ -249,11 +249,15 @@ static int sp_usb_phy_probe(struct platform_device *pdev)
>  	usbphy->dev = &pdev->dev;
>  
>  	usbphy->phy_res_mem = platform_get_resource_byname(pdev, IORESOURCE_MEM, "phy");

How can this fail on this system?

> +	if (!usbphy->phy_res_mem)
> +		return -EINVAL;
>  	usbphy->phy_regs = devm_ioremap_resource(&pdev->dev, usbphy->phy_res_mem);
>  	if (IS_ERR(usbphy->phy_regs))
>  		return PTR_ERR(usbphy->phy_regs);
>  
>  	usbphy->moon4_res_mem = platform_get_resource_byname(pdev, IORESOURCE_MEM, "moon4");

Same here, how can this fail?
Have you seen these failures happen in real systems?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
