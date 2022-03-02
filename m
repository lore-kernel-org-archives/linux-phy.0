Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1651C433FE
	for <linux-phy@archiver.kernel.org>; Wed,  2 Mar 2022 22:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PpJ1hcrixiZSp5ypePta3IHd0Ws2U85/MPwpM5b7mgY=; b=laMdoCWFb7tffQ
	oaf2diRgww7G8RLI6zaObZ9qxmf+NbaqgZzgqaWY2cgzsdSY8PvrO8T0meJ2nL0GSx7laggaQNNjf
	b68h94BICkJvcpVIu9I5Cv0b+9g2wy57X56JV9+/ZidF3LdRnA5tbD4EjqxO4b8P6CFW4HUV6R8r3
	rukAwW7CajHsjQ7DUNhHf4LeOEZ8HrMBe5c2HZKZbEshmUM7E/ABOx3mTPMtfkELs1yGK5AXF3NO7
	V6noZ/NCNCJk5QDoMuMrHli9d2knjEmI5vAAAxRvRLjgWVvbp5wFbU4VyyabxiBTqnDpqZtaJc9O9
	lG+T4Dthti4NHtDnqL+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPX9v-004Sjb-18; Wed, 02 Mar 2022 22:09:23 +0000
Received: from relay4-d.mail.gandi.net ([2001:4b98:dc4:8::224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPX8i-004S5D-8D; Wed, 02 Mar 2022 22:08:11 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 7BAE2E0003;
 Wed,  2 Mar 2022 22:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1646258874;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=lS1QSNcGHjM0XgM4B7WgVQryBpLLi9DEmZbSo/cMOS4=;
 b=Ote3cmIhGhk7KJS0xw+Cs7bF1JY7KqFtTRznRFMQ/c46qky2tYY2cIXY9hVGQhEJmqX9OP
 U4xAt/K0wnm3Pqa/OMt74VIPtie+FSN1/BBxcmCT/JeieyOhACx7AGDMbqF6ZfQypTKlXI
 usISbdehawZc35+D+zq3QOh4KdWaqG3kgnMaMiJ2L0nUcsUrVZHdZKAW7ZeI7sOxN+3a+C
 sxMDAANwX3dg/bf9wWVAXGLuBGBHoOrQBtGnVP/9elpzmk+BxWqR0ZmDFNYA1Rj1sWExcm
 fgILP9116WRqikXUK4tGgq0dRl6u13mSs6phGZvEXLo++mmFwxZXCYauUUJsgg==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v3 0/9] Allwinner A31/A83T MIPI CSI-2 and A31 ISP / MIPI CSI-2
 Support
Date: Wed,  2 Mar 2022 23:07:30 +0100
Message-Id: <20220302220739.144303-1-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_140808_702053_FBB16AD0 
X-CRM114-Status: GOOD (  11.22  )
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

This new version is an offspring from the big "Allwinner A31/A83T
MIPI CSI-2 Support and A31 ISP Support" series, which was split into
individual series for better clarity and handling.

This part only concerns the MIPI CSI-2 controllers support changes.

Changes since all-in-one v2:
- Use the newly-introduced media/mipi-csi2.h header instead of local
  definitions;
- Introduce a use a mutex for format access serialization;
- Make both port@0 and port@1 as well as ports required in the binding;
- Made one of the two CSI input ports required;

Paul Kocialkowski (9):
  dt-bindings: sun6i-a31-mipi-dphy: Add optional direction property
  phy: allwinner: phy-sun6i-mipi-dphy: Support D-PHY Rx mode for MIPI
    CSI-2
  dt-bindings: media: sun6i-a31-csi: Add MIPI CSI-2 input port
  dt-bindings: media: Add Allwinner A31 MIPI CSI-2 bindings
    documentation
  media: sunxi: Add support for the A31 MIPI CSI-2 controller
  MAINTAINERS: Add entry for the Allwinner A31 MIPI CSI-2 bridge driver
  dt-bindings: media: Add Allwinner A83T MIPI CSI-2 bindings
    documentation
  media: sunxi: Add support for the A83T MIPI CSI-2 controller
  MAINTAINERS: Add entry for the Allwinner A83T MIPI CSI-2 bridge

 .../media/allwinner,sun6i-a31-csi.yaml        |  66 +-
 .../media/allwinner,sun6i-a31-mipi-csi2.yaml  | 147 ++++
 .../media/allwinner,sun8i-a83t-mipi-csi2.yaml | 138 +++
 .../phy/allwinner,sun6i-a31-mipi-dphy.yaml    |  12 +
 MAINTAINERS                                   |  16 +
 drivers/media/platform/sunxi/Kconfig          |   2 +
 drivers/media/platform/sunxi/Makefile         |   2 +
 .../platform/sunxi/sun6i-mipi-csi2/Kconfig    |  12 +
 .../platform/sunxi/sun6i-mipi-csi2/Makefile   |   4 +
 .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c   | 766 ++++++++++++++++
 .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h   |  53 ++
 .../sun6i-mipi-csi2/sun6i_mipi_csi2_reg.h     |  76 ++
 .../sunxi/sun8i-a83t-mipi-csi2/Kconfig        |  11 +
 .../sunxi/sun8i-a83t-mipi-csi2/Makefile       |   4 +
 .../sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.c    |  72 ++
 .../sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.h    |  39 +
 .../sun8i_a83t_mipi_csi2.c                    | 833 ++++++++++++++++++
 .../sun8i_a83t_mipi_csi2.h                    |  56 ++
 .../sun8i_a83t_mipi_csi2_reg.h                | 151 ++++
 drivers/phy/allwinner/phy-sun6i-mipi-dphy.c   | 166 +++-
 20 files changed, 2609 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
 create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/Kconfig
 create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/Makefile
 create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c
 create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h
 create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2_reg.h
 create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/Kconfig
 create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/Makefile
 create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.c
 create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.h
 create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_mipi_csi2.c
 create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_mipi_csi2.h
 create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_mipi_csi2_reg.h

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
