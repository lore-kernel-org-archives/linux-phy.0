Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACDE6C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Apr 2022 07:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlkw4jUNWUQlzEKJGonSuG1PJJhVt3UMrzGgQPQgEfA=; b=fK5E2ixFDkOy24
	8obO/Tt6ydiOZZRg5aqk8WCvPbpbHtrZaWkI3n1cdh/9bmCD8VG9USmwwHckbhCRHbSBRmDuP6z89
	GDKC0HaiqQSZXyj1GWlOk2gyX1YgLlkFOESgitMV8gjQ77byn3K3XAryQEPcng9S4FOK5s99KFaKg
	fsWPOslrypo48JgNH4vEPtJAGp8/LLHddZrN4uEa3rccIfO9UQMERqtf6z+jnGwvlva5436iO345K
	QquGcw9kyELQdn/Sz6rJHYCYQp93vsgusaDFF8Kop3/ytEQwbu5L1QR0PFib1C4cwe5yv9fGhjmNE
	QTE4FpHVuLjUOMgon3eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh4nK-007lkj-3F; Wed, 20 Apr 2022 07:30:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh4n4-007ldX-SC; Wed, 20 Apr 2022 07:30:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8368C618B3;
 Wed, 20 Apr 2022 07:30:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF1DAC385A0;
 Wed, 20 Apr 2022 07:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650439816;
 bh=+EDTmtai/jQZPWiRlzQLKQkboIqyWdx84ej+J0tgCT0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lbzpvm/rXJqIP40ZLzhNxJqSNboD4Hfk+B9K54hBNd9SBa1jZSKJAq2lqjHx5lTiF
 mHqnxAuKK9c96NUFSxyh9indJmJNNrFm60iDqkFLKpSBXKxorqWucVtDyZ4Rak6JAf
 tkWpFesOVCPMSmHBmRJgtbWu/RPnPFf4ojkPRdkbJpfkztunS9KhCVQVBBQjtqWM46
 KCAxxbGuDm+ycKV08gp9I0xd/vBXuTSv3ZScZh4X0VpsBD8Xwnd3TefnrnK+N6O/9B
 TLysoHxyA4HDXUahRW9izrVaarTquVdArJyMsTK1QHAgD20fmAbYVTFYXIH6hUhaaE
 K9CmiG516V9AA==
Date: Wed, 20 Apr 2022 13:00:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, kishon@ti.com,
 robh+dt@kernel.org, krzk+dt@kernel.org, andrzej.hajda@intel.com,
 narmstrong@baylibre.com, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agx@sigxcpu.org,
 robert.chiras@nxp.com, martin.kepplinger@puri.sm
Subject: Re: [PATCH resend v8 0/5] phy: phy-fsl-imx8-mipi-dphy: Add i.MX8qxp
 LVDS PHY mode support
Message-ID: <Yl+2hOIcr6CrOv+T@matsya>
References: <20220419010852.452169-1-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220419010852.452169-1-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_003019_018276_58A8EC20 
X-CRM114-Status: GOOD (  15.29  )
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

On 19-04-22, 09:08, Liu Ying wrote:
> Hi,
> 
> This is the v8 series to add i.MX8qxp LVDS PHY mode support for the Mixel
> PHY in the Freescale i.MX8qxp SoC.
> 
> The Mixel PHY is MIPI DPHY + LVDS PHY combo, which can works in either
> MIPI DPHY mode or LVDS PHY mode.  The PHY mode is controlled by i.MX8qxp
> SCU firmware.  The PHY driver would call a SCU function to configure the
> mode.
> 
> The PHY driver is already supporting the Mixel MIPI DPHY in i.MX8mq SoC,
> where it appears to be a single MIPI DPHY.
> 
> 
> Patch 1/5 sets PHY mode in the Northwest Logic MIPI DSI host controller
> bridge driver, since i.MX8qxp SoC embeds this controller IP to support
> MIPI DSI displays together with the Mixel PHY.
> 
> Patch 2/5 allows LVDS PHYs to be configured through the generic PHY functions
> and through a custom structure added to the generic PHY configuration union.
> 
> Patch 3/5 converts mixel,mipi-dsi-phy plain text dt binding to json-schema.
> 
> Patch 4/5 adds dt binding support for the Mixel combo PHY in i.MX8qxp SoC.
> 
> Patch 5/5 adds the i.MX8qxp LVDS PHY mode support in the Mixel PHY driver.

Applied patch 2-5 to phy-next, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
