Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FBACC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Apr 2022 15:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t0lFe61RmIC3ptG/Fc2pnyT5eezB7ugmCTcqw2BV358=; b=hA+t61UZ5fkyoV
	02tdX+c5eqL4Idjset23LWsOs9ldLuzmTwACiMQVdH+mSiNQWeusqZJ8hm0DIAtj1Q7icHByEFaL+
	6MX23EvvuBBfqBljQJ9sa0CAsfVSCLMF3z790pCgv7WDlNxQt4+ZLNSwhre5v/qekwM2wlw4Eymir
	mx9KvPGXspOgooycVfOEPQpBHic3Ot4raVkZHXTyPvFlgsEP9gijEog+pLf1dRacFnpLjUkm0UGQg
	7U6pRVFadTvTQ3IOHbe9aHvwb3kl2KJ+u15PN1ax9SGrGsfS5RunWB2jMFEX0e0XhQhr3U8P02EsU
	suzCjIdsX4sl4G2/ARxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfNmK-00AUML-Ea; Fri, 15 Apr 2022 15:22:32 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfNll-00ATxO-UT; Fri, 15 Apr 2022 15:22:01 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id BCF89240004;
 Fri, 15 Apr 2022 15:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1650036112;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=AbEiNfshC8XkhzcTbadTaZQ7SjJznCWXhRPzsy2QMbY=;
 b=Ho2lSAybIB63tmiRXAczfB1YInTtWjXWxUZMp1IGRQ52W93iqFgRvu/RgHtEz2IFSWbInY
 +7Zu0wD90ng2xI+CgnrktH5DkVR+t23+R6+/ya7q2SaP5qgfeDBNAY4t2abg7pZLCz0XNh
 hLr1ejwPosID6zpAwgVY1+HuZUBYNINzVcp+FWolvNbu1+Zv0AlmdOUbwn0QU+lT9vo67c
 HSbcdZPjT9Qbp+fptK4iyWZVBQF4SUACjD4paW9GoV7DwYDdVFgkFQxzx693qWbzd6QRML
 ct+eIsQijjvGhRoZd4Bv/bTGKwwI0mXBFHRVL4j87VM4dNcX8Cnj1Zj4p08TWw==
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
Subject: [PATCH v4 0/8] Allwinner A31/A83T MIPI CSI-2 and A31 ISP / MIPI CSI-2
 Support
Date: Fri, 15 Apr 2022 17:21:30 +0200
Message-Id: <20220415152138.635525-1-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.35.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220415_082158_336572_56CC3AC4 
X-CRM114-Status: GOOD (  10.78  )
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

Changes since v3:
- Updated Kconfig to follow the latest media-wide changes;
- Switched to clock-managed regmap mmio;
- Various cosmetic cleanups;
- Used endpoint-base instead of video-interface for "internal" endpoints
  in device-tree schema;
- Removed clock-lanes property in device-tree schema since lane reordering
  is not possible;

Changes since all-in-one v2:
- Use the newly-introduced media/mipi-csi2.h header instead of local
  definitions;
- Introduce a use a mutex for format access serialization;
- Make both port@0 and port@1 as well as ports required in the binding;
- Made one of the two CSI input ports required;

Paul Kocialkowski (8):
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

 .../media/allwinner,sun6i-a31-csi.yaml        |  72 +-
 .../media/allwinner,sun6i-a31-mipi-csi2.yaml  | 147 ++++
 .../media/allwinner,sun8i-a83t-mipi-csi2.yaml | 135 +++
 .../phy/allwinner,sun6i-a31-mipi-dphy.yaml    |  12 +
 MAINTAINERS                                   |   8 +
 drivers/media/platform/sunxi/Kconfig          |   2 +
 drivers/media/platform/sunxi/Makefile         |   2 +
 .../platform/sunxi/sun6i-mipi-csi2/Kconfig    |  14 +
 .../platform/sunxi/sun6i-mipi-csi2/Makefile   |   4 +
 .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c   | 749 ++++++++++++++++
 .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h   |  52 ++
 .../sun6i-mipi-csi2/sun6i_mipi_csi2_reg.h     |  76 ++
 .../sunxi/sun8i-a83t-mipi-csi2/Kconfig        |  12 +
 .../sunxi/sun8i-a83t-mipi-csi2/Makefile       |   4 +
 .../sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.c    |  72 ++
 .../sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.h    |  39 +
 .../sun8i_a83t_mipi_csi2.c                    | 815 ++++++++++++++++++
 .../sun8i_a83t_mipi_csi2.h                    |  55 ++
 .../sun8i_a83t_mipi_csi2_reg.h                | 151 ++++
 drivers/phy/allwinner/phy-sun6i-mipi-dphy.c   | 166 +++-
 20 files changed, 2569 insertions(+), 18 deletions(-)
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
2.35.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
