Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D09CC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 20 Apr 2022 07:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5g9FmiHjYl/XXE2ra5/uPgfEcTPQbTUHAI80j1jLCag=; b=dWxpjosz0BAHrr
	zGVPGY/2Omaus2C53nB/dEv+/m2TuUsT1NqZ4KkPhRBS+oAXfsVTM9UOxRcbNPW1RlM93QWVFu8Q2
	cpJobJViVix1amSuNPIJtDAGONMJFWT0WqRgkNx2/oHx6UmnaFvQEVxg4Tmr0w8zHTd4d3W7jZrHX
	CBPHxS23syZachZuBpYPh0yTFdEjghYd/CS94UAU4pa1sUrGuDqUTV3RJ2cTmHiZuxR3C/u9nTW/j
	saso5gQwOLVWppHzR/hs+mjwXbl/rQzwpoIlPCS/N4hfRdy4n1zmL2h0Hur1EsuY/4l0y88luNEP9
	D4A1DP7tE4bcuXBZbfPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh4mS-007lGE-LY; Wed, 20 Apr 2022 07:29:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh4mP-007lAP-TR
 for linux-phy@lists.infradead.org; Wed, 20 Apr 2022 07:29:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1nh4mB-0007Lb-2j; Wed, 20 Apr 2022 09:29:23 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1nh4m9-0047V2-BD; Wed, 20 Apr 2022 09:29:19 +0200
Received: from pza by lupine with local (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1nh4m6-0002mx-Pi; Wed, 20 Apr 2022 09:29:18 +0200
Message-ID: <9ee4e73d0b6c9d1cdf6c9ebe94474e7200240701.camel@pengutronix.de>
Subject: Re: [RFC/RFT 3/6] phy: rockchip: Support pcie v3
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
 <robh+dt@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Krzysztof =?UTF-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>, Peter Geis
 <pgwipeout@gmail.com>, Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
Date: Wed, 20 Apr 2022 09:29:18 +0200
In-Reply-To: <20220416135458.104048-4-linux@fw-web.de>
References: <20220416135458.104048-1-linux@fw-web.de>
 <20220416135458.104048-4-linux@fw-web.de>
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_002937_999684_8EEBF46B 
X-CRM114-Status: UNSURE (   9.60  )
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

On Sa, 2022-04-16 at 15:54 +0200, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> RK3568 supports PCIe v3 using not Combphy like PCIe v2 on rk3566.
> It use a dedicated pcie-phy. Add support for this.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> driver was taken from linux 5.10 based on in
> https://github.com/JeffyCN/mirrors
> which now has disappeared
> ---
[...]
> +	priv->p30phy = devm_reset_control_get(dev, "phy");

Please use devm_reset_control_get_exclusive() instead. It is
functionally identical but makes clear that this driver requires
exclusive control over the reset line.

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
