Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5788FECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trz3fr77Q0RhbbXXmN40Sk9Ykqp943ktUHYIoYvAR1s=; b=vr3OR46eTvSDOc
	ixvmfEmQUzNaZDKhkxLN/i2H4ljbW6vKCJCdThFRBb3ojQKYyuseldpXLLmT6Ov2EXiocXVuWTLNH
	wra+LytH9vJEX5aCz6dkiBU6JYsBZrI3/BQ4TikvyqR7bwdxVKTQ2mYbaUsXafZCnPu++m5pSdk4M
	XYtjt0qatYdU2kMD/4iDapTi6AVmCAcOGme6jF0pVLzkbSGcM72heTwI23swbrvJ4+aAAv4cxPuwx
	nEfxBwAVgQhpgkq8q+oH01XN+MXe1NNTR/RgaZlzYsHyurFcmCY76nKqZg39tGccNVbzQdPMKwsF1
	zmNjS5qNExXy8bW7MSsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPed-00HQKt-Ol; Fri, 28 Oct 2022 13:44:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPeb-00HQHw-1L
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:44:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ooPeJ-0004WP-2G; Fri, 28 Oct 2022 15:43:51 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ooPeH-00059M-GL; Fri, 28 Oct 2022 15:43:49 +0200
Date: Fri, 28 Oct 2022 15:43:49 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: mchehab@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org,
	laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
	jacopo@jmondi.org, hverkuil@xs4all.nl
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de,
	linux-media@vger.kernel.org
Subject: Re: [PATCH v4 0/4] Add support for Toshiba TC358746
Message-ID: <20221028134349.lxvo2jjvs6aehrbd@pengutronix.de>
References: <20220930124812.450332-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220930124812.450332-1-m.felsch@pengutronix.de>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_064409_082278_7CDCC485 
X-CRM114-Status: GOOD (  13.70  )
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

Hi,

gentle ping.

Regards,
  Marco

On 22-09-30, Marco Felsch wrote:
> Hi,
> 
> this small series adds the support for the Toshiba TC358746 MIPI-CSI to
> Parallel converter chip. The different versions of this serie can be
> found here [1]. Thanks a lot for the review feedback from Laurent and
> Sakari, which was very helpful.
> 
> [1] https://lore.kernel.org/all/20220922134843.3108267-1-m.felsch@pengutronix.de/
>     https://lore.kernel.org/all/20220916134535.128131-1-m.felsch@pengutronix.de/
>     https://lore.kernel.org/all/20220818143307.967150-5-m.felsch@pengutronix.de/
> 
> Marco Felsch (4):
>   phy: dphy: refactor get_default_config
>   phy: dphy: add support to calculate the timing based on hs_clk_rate
>   media: dt-bindings: add bindings for Toshiba TC358746
>   media: tc358746: add Toshiba TC358746 Parallel to CSI-2 bridge driver
> 
>  .../bindings/media/i2c/toshiba,tc358746.yaml  |  178 ++
>  drivers/media/i2c/Kconfig                     |   17 +
>  drivers/media/i2c/Makefile                    |    1 +
>  drivers/media/i2c/tc358746.c                  | 1696 +++++++++++++++++
>  drivers/phy/phy-core-mipi-dphy.c              |   31 +-
>  include/linux/phy/phy-mipi-dphy.h             |    3 +
>  6 files changed, 1922 insertions(+), 4 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/toshiba,tc358746.yaml
>  create mode 100644 drivers/media/i2c/tc358746.c
> 
> -- 
> 2.30.2
> 
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
