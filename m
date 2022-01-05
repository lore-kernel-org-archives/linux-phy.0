Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CA5DC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jan 2022 10:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dHXCmPNY5R46qdCmXVUCaf4l/I9uMCKcYCFq+Wd870o=; b=ODxTrtTaP2cDtk
	Jp2aABag3+jZ56L6fn788Ga+79QStyfuwxxXVYvXfTWzByvGwXAeHOTSWM3yBy45KCNr5TlBAIuIs
	lpMwvPFoQ2EL+Int0Yv2agT4gkZ/pDss5tvF8tN6/i6C5lxHgPIRbhFTM+KrvT6NlfokUaR/iA0ch
	CSLvS0nLlfXYla8GIKc69Z4JUWx0PDQtfpRZmrSWIK0ErNRNBvLIudiXmzVlcmpOU2E+b6zD+Dv1f
	zbX/IP2Qj8AlWyJWnGjugMEWdRWdYpMrvt1yvYiUofkk4FEC68AGPXvu4Ye7USRtdpxWKEVhK3SGx
	fyMiEvCnPnRqZBhl09iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n53m3-00EYdN-HK; Wed, 05 Jan 2022 10:44:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n53lt-00EYa7-Rt
 for linux-phy@lists.infradead.org; Wed, 05 Jan 2022 10:43:58 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1n53la-0006nF-P5; Wed, 05 Jan 2022 11:43:38 +0100
Received: from pza by lupine with local (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1n53lX-00BCdk-3W; Wed, 05 Jan 2022 11:43:35 +0100
Message-ID: <13c43c38b8494d374e204c4fa43f160770e7b662.camel@pengutronix.de>
Subject: Re: [PATCH v7 3/4] phy: rockchip: add naneng combo phy for RK3568
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, jbx6244@gmail.com, devicetree@vger.kernel.org, 
 vkoul@kernel.org, michael.riesch@wolfvision.net, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, kishon@ti.com,
 cl@rock-chips.com, kever.yang@rock-chips.com, lee.jones@linaro.org, 
 wulf@rock-chips.com
Date: Wed, 05 Jan 2022 11:43:35 +0100
In-Reply-To: <20211230084815.28110-4-yifeng.zhao@rock-chips.com>
References: <20211230084815.28110-1-yifeng.zhao@rock-chips.com>
 <20211230084815.28110-4-yifeng.zhao@rock-chips.com>
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_024357_913217_DBFD0EEE 
X-CRM114-Status: UNSURE (   4.90  )
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

On Thu, 2021-12-30 at 16:48 +0800, Yifeng Zhao wrote:
[...]
> +static int rockchip_combphy_parse_dt(struct device *dev, struct rockchip_combphy_priv *priv)
> +{
[...]
> +	priv->phy_rst = devm_reset_control_array_get(dev, false, false);

Please use devm_reset_control_array_get_exclusive() instead.

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
