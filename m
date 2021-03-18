Return-Path: <SRS0=ZbHx=IQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6EEDC433E0
	for <linux-phy@archiver.kernel.org>; Thu, 18 Mar 2021 14:11:20 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5919664F2A
	for <linux-phy@archiver.kernel.org>; Thu, 18 Mar 2021 14:11:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5919664F2A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nBgC/KwJNQGY7tGnIazfaWFSA3mauxUPOUAav4mL7Ck=; b=dkAPsD7r1MSaJxN9+8HqeeGwN
	8cqvjcH4pAvqKDKBYht2zktt1TDvMZHO3A/HK+AH2fQ5hM51Hin5KUObQVgcwQWmlZFx7juqETeU8
	EA0UpHKRQH1jqdPoYuoRXP0YaeQuRu/19uhiyfJcLwTUqwYHCEZK/t4Iz0kskHPidpAjFz2DeQz5A
	faCaJLFC55BqX8gyCRgEuRV6iX3Woty03udJpi0uPwivpg+NOrK20bJMG09FmXMvx5g42HWMcqcis
	5Nx66u2nSxlTNjLCSDJ/73YsLOzVCt4nqBfrg0SH8d5+J8c7d95+FfCX/pbonSddS7yJFWozyRNSX
	6fdSzRPfg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMtMs-005RjG-QP; Thu, 18 Mar 2021 14:11:18 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMtMj-005RhC-9r; Thu, 18 Mar 2021 14:11:11 +0000
X-Originating-IP: 90.65.108.55
Received: from localhost (lfbn-lyo-1-1676-55.w90-65.abo.wanadoo.fr
 [90.65.108.55]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 42A7DFF81E;
 Thu, 18 Mar 2021 14:11:03 +0000 (UTC)
Date: Thu, 18 Mar 2021 15:11:03 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: 'w00385741 <weiyongjun1@huawei.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 UNGLinuxDriver@microchip.com,
 Bjarni Jonasson <bjarni.jonasson@microchip.com>,
 Andrew Lunn <andrew@lunn.ch>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, Hulk Robot <hulkci@huawei.com>
Subject: Re: [PATCH -next] phy: sparx5_serdes: Fix return value check in
 sparx5_serdes_probe()
Message-ID: <YFNfd+zVwyxiuiuk@piout.net>
References: <20210318135647.1286295-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318135647.1286295-1-weiyongjun1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210318_141109_429326_0AAC5442 
X-CRM114-Status: GOOD (  18.46  )
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

Hello,

On 18/03/2021 13:56:47+0000, 'w00385741 wrote:
> From: Wei Yongjun <weiyongjun1@huawei.com>
> 
> In case of error, the function devm_ioremap() returns NULL
> pointer not ERR_PTR(). The IS_ERR() test in the return value
> check should be replaced with NULL test.
> 
> Fixes: 2ff8a1eeb5aa ("phy: Add Sparx5 ethernet serdes PHY driver")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/phy/microchip/sparx5_serdes.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
> index 06bcf0c166cf..dd854d825000 100644
> --- a/drivers/phy/microchip/sparx5_serdes.c
> +++ b/drivers/phy/microchip/sparx5_serdes.c
> @@ -2438,10 +2438,10 @@ static int sparx5_serdes_probe(struct platform_device *pdev)
>  
>  	iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	iomem = devm_ioremap(priv->dev, iores->start, iores->end - iores->start + 1);
> -	if (IS_ERR(iomem)) {
> +	if (!iomem) {
>  		dev_err(priv->dev, "Unable to get serdes registers: %s\n",
>  			iores->name);
> -		return PTR_ERR(iomem);
> +		return -ENOMEM;
>  	}

A better fix would use devm_platform_ioremap_resource and get rid of the
error messages

>  	for (idx = 0; idx < ARRAY_SIZE(sparx5_serdes_iomap); idx++) {
>  		struct sparx5_serdes_io_resource *iomap = &sparx5_serdes_iomap[idx];
> 

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
