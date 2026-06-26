Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB734C43458
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 15:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwi0O9pOXxiAkDEIAqQHRumOWeAa+BVP/4sKuBcBKmI=; b=QZHzyKmgzrwI7p
	bkIEM8OYZ2r2Lqo7pTra0ruXK7JcTuSC2XWLbx8aK9dk86pCjTVecWcUEEV1XxagELFlXiWg0qidG
	o7aydDzoaTtN15QOASgo8PhlWK90968oMiDbgtdjKTskiW2llfLIPhqHAUSDy0qtB0JM4WYwuRMly
	zn5/GfBvKa/OMlunc0/5qnpMOWyL88JSKv1tnOW8Z+a2NAGtQeRa+6xylo3odFF4El327Pps70hBe
	MwDaQKqcjfMHS7Ofla+GyiE+eaXrR05L2zXyKkNAFYKlXhOIsHWRH2HWO7ASI+XSxie/m3GO4zM/I
	VXo3ndh4XqF3XzYLhO3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd8Cs-0000000BWvM-2mCC;
	Fri, 26 Jun 2026 15:11:02 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd8Cp-0000000BWua-1TOZ
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 15:11:01 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id C280E4E4096B;
	Fri, 26 Jun 2026 15:10:53 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 8750960232;
	Fri, 26 Jun 2026 15:10:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D5000104C976A;
	Fri, 26 Jun 2026 17:10:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782486652; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=RIDSW4QSN+EL196dH0Hkhfs2WUAzhZ9MQ1BBZjgBM6k=;
	b=G1h62niQqlh9fdwTRptlTS4dlNEaeDSca/KWRTACRbEf/8BU3A61klMmetMCWiFxjywELB
	8AL3p/XkWsIa8g7+MWFuaL8aHrRXbVdtNsTPWxrEHZx3uZiNTDhSBUDxO4PHFPOx0uUcG0
	KSDKXGC++qqDjaNzmEPK2U8nGqyh8h30Fh/Hu5Hzk5DEzO8ZaOb64Op/w05VRFlRIaW+wi
	xJoheRJKHp+ZdUuwRsHOokMQpp+bDBOQspihj5C51dc7BC5JceVRqIKTdMe3wM5s4Veo9T
	6WVdIVOdT5DKmsLUUVtBR4z1/zYVjYWtRcXbels8EDf1lilKLIobvsRv40XZrw==
Message-ID: <f729897a-c2a5-4925-9d8a-9d29569113ec@bootlin.com>
Date: Fri, 26 Jun 2026 17:10:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net v4 2/2] net: phy: mdio-i2c: defer RollBall bridge
 probe to PHY discovery
To: Petr Wozniak <petr.wozniak@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Bjorn Mork <bjorn@mork.no>, Aleksander Bajkowski <olek2@wp.pl>,
 Marek Behun <kabel@kernel.org>
References: <20260624084814.20972-1-petr.wozniak@gmail.com>
 <20260624084814.20972-3-petr.wozniak@gmail.com>
Content-Language: en-US
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
In-Reply-To: <20260624084814.20972-3-petr.wozniak@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_081059_562888_2ACC8206 
X-CRM114-Status: GOOD (  11.82  )
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

Hi Petr,

On 6/24/26 10:48, Petr Wozniak wrote:
> commit 8fe125892f40 ("net: phy: sfp: probe for RollBall I2C-to-MDIO
> bridge in mdio-i2c") introduced a regression: the RollBall I2C-to-MDIO
> bridge is not yet ready to respond to CMD_READ/CMD_DONE cycles when
> sfp_sm_add_mdio_bus() runs in SFP_S_INIT.  The 200 ms probe times out,
> i2c_mii_probe_rollball() returns -ENODEV, and sfp_sm_add_mdio_bus()
> sets mdio_protocol = MDIO_I2C_NONE.  By the time sfp_sm_probe_for_phy()
> runs (up to ~17 s later on affected hardware), the bridge is fully
> initialized but PHY probing is skipped because the protocol has already
> been changed to NONE.
> 
> This affects both modules inserted before boot and hotplugged modules on
> hardware where bridge initialization exceeds the 200 ms probe window
> (confirmed: FLYPRO SFP-10GT-CS-30M with Aquantia AQR113C, hotplugged).
> 
> Move the probe from i2c_mii_init_rollball(), called at bus-creation time,
> to sfp_sm_probe_for_phy() in sfp.c, where it runs after the SFP state
> machine module initialization delays.  Export the probe function as
> mdio_i2c_probe_rollball() so sfp.c can call it.
> 
> For RTL8261BE-based modules the probe correctly returns -ENODEV at PHY
> discovery time, causing sfp_sm_probe_for_phy() to destroy the MDIO bus
> and set MDIO_I2C_NONE, eliminating the 5+ minute PHY probe retry loop.
> 
> For genuine RollBall modules (e.g. FLYPRO SFP-10GT-CS-30M with Aquantia
> AQR113C) the probe now runs after initialization is complete and
> correctly returns 0, so PHY detection proceeds normally.
> 
> Reported-by: Aleksander Bajkowski <olek2@wp.pl>
> Fixes: 8fe125892f40 ("net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c")
> Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>
I finally got time to test this with a RollBall module, and I
confirm what Aleksander says, the RollBall module's PHY doesn't
get detected even with this patch.

It does work on v7.0 though, so before the bridge probing was
introduced.

Maxime

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
