Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18F42C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 13:42:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C96C760F21
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 13:42:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C96C760F21
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAsH09Mw4GbpWx94JyU37X0AAOKuYFdfq73JiroIJc8=; b=Xar5N5sIDKdgIL
	AbaJdpY/A4+a7kK7CPVdriFu4dvNLjJk5mHRlr3GThtqx6yk6P+hJIRR/Y6CjYApJRCl2YC8deXEw
	zhHQO1SyIczus+jUvy/QN8+F6tDLnZ8xVYJ6miVGeDb/MTVgsml7j6C+69Nl/TkhgyBNz6NPDh9Vn
	cwt3Eo0YiQ+UMDWgS+9xTlp+RiVv220318n4uLyWF/l/KW4Cd1ePdhHaSnHJVtCjci6WwQpohOTlC
	spHxndHWGSvc5FPC504kyaPGKB4ANCOjFl6ZohCjZoTmcdYlGAw2ueVjNTkU4Wg9QCbXOgb9WVd6M
	E7+al342A5f4TIOEoHng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSJYk-001pEO-Aw; Mon, 20 Sep 2021 13:42:14 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSJYh-001pDA-8R
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 13:42:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OH+GVeIdWaM8bBkd2TRp9ZRcX+WrRFhYL3tYwyLWkNA=; b=Vmy7EZ4gJpyBgHMkhiDI4D6tQn
 2cZxulJfBY9SbhZtdCy0RZK8B9ll5ravy32Idxqz1rJjkB1u8NNzT4psWza1dWZHZDaIgLUr6Fc6C
 bnAglaIe6lxAVKS0bS4KUB6aXVcP+VxNij2+PefTZANkpz13YCXYAZKpVD7MiyZ1Vgq4pWNEhABhE
 c+yVAbi08PCLM20tm/U43SwHi1Nw62OQkf/snmoi2fYBGXHSswwed4LgsOIb/KWMXaWdPbrCYvefw
 VQ0aVAFf5u5vLsK3C4E90/6f8C6pIwnllJHC5HzwentXAYBrN8a3gPOAUqM8tZ+w4wcrHp3FpUf3i
 XbsDyQaA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:54670)
 by pandora.armlinux.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@armlinux.org.uk>)
 id 1mSJYX-0001f9-SA; Mon, 20 Sep 2021 14:42:01 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1mSJYW-0002L7-0w; Mon, 20 Sep 2021 14:42:00 +0100
Date: Mon, 20 Sep 2021 14:42:00 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: davem@davemloft.net, kuba@kernel.org, robh+dt@kernel.org,
 andrew@lunn.ch, f.fainelli@gmail.com, alexandre.belloni@bootlin.com,
 vladimir.oltean@nxp.com, UNGLinuxDriver@microchip.com,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org
Subject: Re: [RFC PATCH net-next 03/12] phy: Add lan966x ethernet serdes PHY
 driver
Message-ID: <YUiPqJjsoBg99VbR@shell.armlinux.org.uk>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
 <20210920095218.1108151-4-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920095218.1108151-4-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_064211_346199_E0428F52 
X-CRM114-Status: GOOD (  10.58  )
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

On Mon, Sep 20, 2021 at 11:52:09AM +0200, Horatiu Vultur wrote:
> +static int lan966x_calc_sd6g40_setup_lane(struct lan966x_sd6g40_setup_args config,
> +					  struct lan966x_sd6g40_setup *ret_val)
> +{
> +	struct lan966x_sd6g40_mode_args sd6g40_mode;
> +	struct lan966x_sd6g40_mode_args *mode_args = &sd6g40_mode;
> +
> +	if (lan966x_sd6g40_get_conf_from_mode(config.mode, config.refclk125M,
> +					      mode_args))
> +		return -1;

This needs fixing to be a real negative error number.
lan966x_sd6g40_setup_lane() propagates this functions non-zero
return value, which is then propagated through lan966x_sd6g40_setup(),
and then through serdes_set_mode() to the PHY layer.

In general, I would suggest that _all_ int-returning functions in the
kernel that return a negative failure value _should_ _always_ return a
negative error code, so that your reviewers don't have to chase code
paths to work out whether a mistake such as the above exists.

To put it another way: never use "return -1" in the kernel.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
