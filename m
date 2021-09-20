Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC9FC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 12:15:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2CC1E6108E
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 12:15:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2CC1E6108E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lunn.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IlBPqvt9k9kuTx1l6617PtfPbsdTH3sAlMU6zEu9VaY=; b=NqRQe9sQgRuY6G
	7xj9HOR0TZSKGMHbhFJWO+FQ/fNnHY3aqnUdrd4z4wRH+eycIm5Q9/ga8vNsPvU1KEdFLZY8f613Q
	Rkn0nBFK6H1evW0/928FwmRER1tbV13+CK9K1fjDASfDb7JcfPgF0s5o1iMbZS/tENosq2lrsTwJG
	gze7JSYgEbBEpvYU4/08ZGAvTAhUWNliHjWWAZd5FOIDs2nE41YNYGZuhclmnsRQmmm8y7a8/9G3p
	7C34gYw8NHORHmw1W0fI4YtSREgRt5tqwrPS2inVB8coNgLN31Jpt8AJfqZhXzEJtcmKmnV1OBy4+
	6dnvmMCjz481IDz15OEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSID4-001W4Q-Mv; Mon, 20 Sep 2021 12:15:46 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSID2-001W3o-B2
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 12:15:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=WTbZe8VMbmEjY4wxdK+axHkoEChu9D4sUMPCOdYrijU=; b=yvxfjOEcwBbJ028xSMsUyrRtO5
 a9nK/eBdV1dm3xyhQLiyWuoul7qVeLM8QfrzrqL+z+vR7aTIBx6YZZ9s6dM63Njg2bcKD4lenVKzP
 igieyQf/2bxlwvg0qb5bElxxx8Nw+f965m2jklYs1Vvp8qdhOwPKDRtGNJi5bd59U8vg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1mSICw-007UfB-4c; Mon, 20 Sep 2021 14:15:38 +0200
Date: Mon, 20 Sep 2021 14:15:38 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: davem@davemloft.net, kuba@kernel.org, robh+dt@kernel.org,
 linux@armlinux.org.uk, f.fainelli@gmail.com,
 alexandre.belloni@bootlin.com, vladimir.oltean@nxp.com,
 UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [RFC PATCH net-next 07/12] power: reset: Add lan966x power reset
 driver
Message-ID: <YUh7ammFjBHj3Kj8@lunn.ch>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
 <20210920095218.1108151-8-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920095218.1108151-8-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_051544_424272_9D75FAD3 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
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

> +struct lan966x_reset_context {
> +	struct regmap *gcb_ctrl;
> +	struct regmap *cpu_ctrl;
> +	struct notifier_block restart_handler;
> +};
> +
> +#define PROTECT_REG    0x88
> +#define PROTECT_BIT    BIT(5)
> +#define SOFT_RESET_REG 0x00
> +#define SOFT_RESET_BIT BIT(1)
> +
> +static int lan966x_restart_handle(struct notifier_block *this,
> +				  unsigned long mode, void *cmd)
> +{
> +	struct lan966x_reset_context *ctx = container_of(this, struct lan966x_reset_context,
> +							restart_handler);
> +
> +	/* Make sure the core is not protected from reset */
> +	regmap_update_bits(ctx->cpu_ctrl, PROTECT_REG, PROTECT_BIT, 0);

This all looks familiar...

Maybe yet another compatible added to reset-microchip-sparx5.c ?

      Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
