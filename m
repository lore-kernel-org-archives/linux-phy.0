Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05C37EB64DD
	for <linux-phy@archiver.kernel.org>; Fri, 11 Aug 2023 08:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgKbsgxYirkaywBf6WEnP02V/0ivr02rm38g//zDJ34=; b=oSejJxmJEGhpOX
	TfSAmIjT8IGWesabzVnoVwlsN0/6Gbev1WYpl+DGTqdPjVUhDecPhPCYyyHH8HVIOLxE6QvoLWM1Y
	C8HPNUdVKEdaUhVnq0nqUsRJKd3Za+JmysE4QFKnnLvCJmnUcjtayPbKh0ijYPn9OH6wA8R4b4LnZ
	AHitbIvshFSHMewRoLiBjhxPdDy3CmpWC8HoYjiNvmwZWn0x/yU2EnNvBgLN+WqDpMz2sky+MCbdc
	68RKWCQtcjTPTi1NloFeNe+1iIXzsfliOx1QLY7IS4/R51YWFzKuaMbGQSp47GMpz4XpaNMnbGTAk
	/cgs90ALJlArQATVNePQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUNOJ-009qCY-2J;
	Fri, 11 Aug 2023 08:21:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUNOH-009qBl-0E;
	Fri, 11 Aug 2023 08:21:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E3A1161D1E;
	Fri, 11 Aug 2023 08:20:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D462C433C7;
	Fri, 11 Aug 2023 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691742055;
	bh=gKOt2r2zZpriDKuP1ZDJHQnF5ZRf/VSoPvScgdxNPl0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=svRmhdgz6wmvxhCq9kJ2PwgFauMjS42KRjJEcCOzPsyInD8Za8HFOppBwnMY/Ymjb
	 L0Y+l+bUzHmyJ7UxFQWeuaYexO2VhnH8zgfgExBum8q+dj0Oc/PB/zLeWSsqvpRm8i
	 RAL5k2kdRt17bX2/l3rQ/FnVUmPFS5VQC+PrZUuuHcmp9dQ3P8fesMa0PonIsQsdqA
	 RVgTx+qDbjtszv/YQnXYL5R1QzHocIycQMeq5SPGc+t8OxSvlK7BxPJC8kpvnTcaxL
	 z5ydYDpe7/8hgE+/rm0L6RVsxAffSxuQYYIexJ7Gk38Bt0eM4XXesXKT6gdOze9QYG
	 5ob9vERZNNC/w==
Date: Fri, 11 Aug 2023 09:20:52 +0100
From: Vinod Koul <vkoul@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] phy: fsl-imx8mq-usb: add dev_err_probe if getting
 vbus failed
Message-ID: <ZNXvZOv3q9eViDeW@matsya>
References: <20230801084807.87160-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230801084807.87160-1-alexander.stein@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_012101_260838_2E9594BA 
X-CRM114-Status: GOOD (  17.57  )
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

On 01-08-23, 10:48, Alexander Stein wrote:
> This adds an error message if getting vbus failed for some reason,
> -EPROBE_DEFER is handled appropriately as well and adds a nice
> information to debugfs.

Fails to apply on phy/next

> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> index c1a57541fbb3..3af007b8e77f 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> @@ -399,7 +399,7 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
>  	if (PTR_ERR(imx_phy->vbus) == -ENODEV)
>  		imx_phy->vbus = NULL;
>  	else if (IS_ERR(imx_phy->vbus))
> -		return PTR_ERR(imx_phy->vbus);
> +		return dev_err_probe(dev, PTR_ERR(imx_phy->vbus), "failed to get vbus\n");
>  
>  	phy_set_drvdata(imx_phy->phy, imx_phy);
>  
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
