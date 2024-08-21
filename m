Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D07C3C52D6F
	for <linux-phy@archiver.kernel.org>; Wed, 21 Aug 2024 14:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SiLV371oZWemNyMr8eOk5amB6JGCkc/jUEB8If/dsuM=; b=Te/8O2aXPawVZ2
	xnQa/pKoT46fwA4Ak/d9QZN0MZomwTGy8FkwWUY/K42OHiP0r2ZnObylLqrytBAOY0xs0N5BPD8Hg
	GrK5tC6bl5qj8+22oWiuf6rzOfUUMt5MVcRAZulykDHZHY7r/JmPupQgDQxYvp8gD9kEHchlyHPP+
	PjArm/TVRZ26YwgW5vm/ylhNsF2sIo6rRuUj39rkXKUhDaeLyfXc0y2yA/ePeka/61COOizB5rgZE
	pVUtbGeTz4/XM03Io2ZJLdJiVXfnJ/9WhQU3VCcJnfRHzhShqAHPUn2mhkCDziNVol4X2PSQtndt6
	+qrPWnmnQLYEjXgkXcjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgmfW-00000009NWF-0cBj;
	Wed, 21 Aug 2024 14:50:38 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgmfT-00000009NVD-09kQ
	for linux-phy@lists.infradead.org;
	Wed, 21 Aug 2024 14:50:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 13F15CE0E76;
	Wed, 21 Aug 2024 14:50:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86E6DC4AF09;
	Wed, 21 Aug 2024 14:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724251830;
	bh=DOn+l7VijRoQ0qf3XpvX93tTLR74QrEEGQ4BtmKSlDc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PHtZXUF6aY8uuzdzlC/nehYxpXwf1+Vri257L2u9J+46BBETHc/1LSOI5bf3lVyxE
	 HuapqepRW9B9qTaRxeFOUGDKvDs6BSIn28vsBfIMo5/9i+QtHK5Px+8Y2cGXq7Tkx7
	 QSmwKv8zmOxX7+eKw+x0GqHl2PRILupM1FUPlAbfAO6Vb8jEXknKJOXRUVzhd2wfjl
	 /ibkexLAF22k5FZnhdCuYFtVcdaEMQ7uMxRavmxqJ3SX4cD96/OfWOg9CrhwzIMzd6
	 7WWVfuvfOnDi/rWGxbaTeezQ3DxSielSIJi8G2nM9VazcpqUtK6+rDLfvqGhMpCfua
	 mb9zzlJ8IxKbg==
Date: Wed, 21 Aug 2024 09:50:27 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Ma Ke <make24@iscas.ac.cn>
Cc: vkoul@kernel.org, kishon@kernel.org, agross@codeaurora.org, 
	ansuelsmth@gmail.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] phy: qualcomm: Check NULL ptr on lvts_data in
 qcom_ipq806x_usb_phy_probe()
Message-ID: <4kpmkjp6pp6r34v7se24rscnk2t7g2pjcrqm6l7nt7h3lgsu3v@rauqrchifqjj>
References: <20240821131042.1464529-1-make24@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240821131042.1464529-1-make24@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_075035_273604_D23D5009 
X-CRM114-Status: GOOD (  15.51  )
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

On Wed, Aug 21, 2024 at 09:10:42PM GMT, Ma Ke wrote:
> of_device_get_match_data() can return NULL if of_match_device failed, and
> the pointer 'data' was dereferenced without checking against NULL. Add
> checking of pointer 'data' in qcom_ipq806x_usb_phy_probe().

How do you create the platform_device such that this happens?

Regards,
Bjorn

> 
> Cc: stable@vger.kernel.org
> Fixes: ef19b117b834 ("phy: qualcomm: add qcom ipq806x dwc usb phy driver")
> Signed-off-by: Ma Ke <make24@iscas.ac.cn>
> ---
>  drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> index 06392ed7c91b..9b9fd9c1b1f7 100644
> --- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> @@ -492,6 +492,8 @@ static int qcom_ipq806x_usb_phy_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  
>  	data = of_device_get_match_data(&pdev->dev);
> +	if (!data)
> +		return -ENODEV;
>  
>  	phy_dwc3->dev = &pdev->dev;
>  
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
