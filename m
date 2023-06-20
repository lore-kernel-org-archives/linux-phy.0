Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA6C7EB64DD
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jun 2023 12:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xbYSL2RxJgNJWArJvpdOnbCVEbN8FyhhmypgThafWWI=; b=nZn1Z1SKm8IJZL
	ml6kjKr2knEdIt9ylG1dDn+ADBIBpag0wneQN489X69aQYgTuOIRZU2GDmF9iN0fTqev7gIes9h1e
	Dq3o3PW/jN+bVT4QHhXtPfQjdr6N7SnQ2fFz16wD+jTZgo5nKG5tx6YFnxG8GnU7+qE8gqdW3f3UR
	e67wsbDVIC6pCvfTaqrGHrbFL9PTB9Y7jXIl98W8qWfXSPkCpxKDdmRsAViFeKyrEeTIwAO+sq2xF
	6JL+fAfDD1SASOOF2b2X9Lamx6YUtbN0b9flgEhx3IUwFCt5+VHXopQNbszQ+EcIV6XroQlf9zQSv
	5MuQGqz70Jf2W1oTpexw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBaL8-00BEKQ-0y;
	Tue, 20 Jun 2023 12:20:06 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBaL3-00BEHd-2C
	for linux-phy@lists.infradead.org;
	Tue, 20 Jun 2023 12:20:04 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f9b4a71623so13728495e9.1
        for <linux-phy@lists.infradead.org>; Tue, 20 Jun 2023 05:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1687263598; x=1689855598;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LNI4/zrSq1DwpCr0c5xzZg4jt4/sWJPcC+yHwTLkMI0=;
        b=qHMLiWbpxQ4AIyI31j3BhKs1O21Xf47Q4XnDaAbBPZ8XSEjGUcexY0VmW60iIrHmlR
         TNrHAnz+xuQ/zyVIlXKOIbQyUw5FzlYJhvgR4O3uSo/3BeDYBb3lpRC7qsIcvSXwkVXI
         dydNk/ckN3ZdMi09BN2OsCM8s9oOsH/P/UXhxOSmEHEJFG5zN/fCmptNhIwPRWLZmi5t
         Kh/7eTQ4bSfSAAMx4gMMSBBPz/wIt/BJOlVd87SVhQza1XUON1itUuD1eA0n/GO318hv
         vljI5xjxJPBs5fT9wt0QBTtRQv0I36I2ci9FSzW0W6lJgQB2riG0gL1zedN+9wVLiLIx
         m4sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687263598; x=1689855598;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LNI4/zrSq1DwpCr0c5xzZg4jt4/sWJPcC+yHwTLkMI0=;
        b=a7OLDdnQpi4Mxdou4saHLO6aFVbxzFMnxK83zo1Ot34zJ5DtGnD3k/NIi5o3i/uLCW
         +x31Zg1us4dkvAg89oHqosd5tpsraoCuPDF4DdhUDgILMZcUzFVatE53WbKwEGBw/GRV
         kPX1rTfA7/Onn6vIGbfEp6rSiMIcxaU2fFJdgvBln8X24rCSF4wOeIWO9Ov3MlNsrCNg
         5PBbAbRr/Y1GPIIZU/WtJwhFLgVgwcYxZxwW5d73CJ+px1nrUyIsP8DZGXnLcQsJhsgV
         xQBIYJGwCGbT7aikcY5cv+kT10+1mpLR6FNEufseCBeB3OsN3H3NBUpCGdGsulhjGRpO
         gZuw==
X-Gm-Message-State: AC+VfDyghjvM9gbAbKY3MebXUsEx7ALRYuzGCTVS2iIWfV7NwioRE9gO
	jnnP9Tl8vuebUZgPRnYc0Qu7BQ==
X-Google-Smtp-Source: ACHHUZ5hReFUwTrfMO/fdZG3kTWZDy/la39aHY/vTMsgvKliGArpBRddbyAPM/7vBvYOnq+dl8/NpA==
X-Received: by 2002:a05:600c:22c6:b0:3f9:b1e7:8a4b with SMTP id 6-20020a05600c22c600b003f9b1e78a4bmr3205210wmg.21.1687263598308;
        Tue, 20 Jun 2023 05:19:58 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:55f:21e0:9e19:4376:dea6:dbfa])
        by smtp.gmail.com with ESMTPSA id u15-20020a05600c210f00b003f18b942338sm2242513wml.3.2023.06.20.05.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 05:19:57 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
To: 
Cc: pnguyen@baylibre.com,
	louis.kuo@mediatek.com,
	fsylvestre@baylibre.com,
	Julien Stephan <jstephan@baylibre.com>,
	Andy Hsieh <andy.hsieh@mediatek.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v4 0/3] phy: mtk-mipi-csi: add driver for CSI phy
Date: Tue, 20 Jun 2023 14:18:45 +0200
Message-ID: <20230620121928.1231745-1-jstephan@baylibre.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_052001_944425_194CF0D4 
X-CRM114-Status: GOOD (  18.91  )
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

Adding a new driver for the MIPI CSI CD-PHY module v 0.5 embedded in
some Mediatek soc, such as the MT8365

This driver was adapted from https://patchwork.kernel.org/project/linux-mediatek/cover/20200708104023.3225-1-louis.kuo@mediatek.com/

v1 can be found here: https://lore.kernel.org/all/20230403071929.360911-1-jstephan@baylibre.com/

v2 can be found here: https://lore.kernel.org/all/20230515090551.1251389-1-jstephan@baylibre.com/

v3 can be found here: https://lore.kernel.org/all/20230524083033.486490-1-jstephan@baylibre.com/

Changelog
Changes in v4:
include/dt-bindings/phy/phy.h:
	- remove commit adding PHY_TYPE_CDPHY definition

Binding file:
	- use the standard phy-type property instead of a custom one so
	  rename mediatek,phy-type -> phy-type
	- phy-type property is made optional: when present, describes the
	  phy type and the operating mode
	- phy-cell is modified to accept a phy argument representing the
	  phy operating mode if phy-type is not specified
	- adding new property num-lanes

Driver:
	- add a custom xlate function to handle phy cells
	- update probe function to retrieve the new value phy-type
	  instead of the mediatek,phy-type
	- remove useless struct define `struct mtk_mipi_dphy;`
	- rename some functin/variable from `xx_dphy_xx` to `xx_cdphy_xx`
	- update probe function to read num-lanes property

Changes in v3:
Binding file:
	- rename compatible string
	  mediatek,phy-mipi-csi-0-5 -> mediatek,mt8365-csi-rx
	- rename binding file to be as compatible string
	- change property mediatek,is_cdphy -> mediatek,phy-type using an
	  enum value instead of boolean for scalability
	- remove status property from example nodes
	- rename example node name 'mipi_rx_csi0: mipi_rx_csi0@11c10000' ->
	  'csi0_rx: phy@11c10000'
	- put reg address in lower case

include/dt-bindings/phy/phy.h:
	- add PHY_TYPE_CDPHY definition

Driver:
	- rename compatible string
	- rename property mediatek,is_cdphy -> mediatek,phy-type
	- rename CSIx* macro to CSIX* (x -> X)
	- fix style issue on the driver data structure
	- update MODULE_DESCRIPTION as suggested by Angelo
	  and update the kconfig module description to match it
	- add dphy /cdphy eq tuning function to factor the code
	  and increase readability
	- fix typo __PHY_MTK__MIPI_CSI__C_0_5_RX_REG_H_ -->
	  __PHY_MTK_MIPI_CSI_V_0_5_RX_REG_H_
	- reword commit message to update my contributions
	- added missing copyright
	- added module name in Kconfig

Changes in v2:
	- fix all comments on bindings
	- move the binding chunk from driver to binding commit
	- fix dt_binding_check error (reported by DT_CHECKER_FLAGS)
	- use a more generic compatible string
	- add a new dt properties to simplify the driver
	  "mediatek,is_cdphy"
	- rename the driver and the corresponding file to include
	  version
	- drop of_match_ptr()
	- use devm_platform_ioremap_resource
	- use phy-mtk-io.h api instead of regmap
	- rework the driver to use dt nodes to declare PHY instead of an
	  array in the driver
	- remove useless define for unused registers
	- remove support for CSI0A/B because it cannot be tested, and it
	  simplifies the driver for a first review
	- edit commit message and bindings to be more descriptive about the
	  hardware


Florian Sylvestre (1):
  dt-bindings: phy: add mediatek MIPI CD-PHY module v0.5

Julien Stephan (1):
  phy use phy-type

Phi-bang Nguyen (1):
  phy: mtk-mipi-csi: add driver for CSI phy

 .../bindings/phy/mediatek,mt8365-csi-rx.yaml  |  73 ++++
 MAINTAINERS                                   |   7 +
 drivers/phy/mediatek/Kconfig                  |  12 +
 drivers/phy/mediatek/Makefile                 |   2 +
 .../mediatek/phy-mtk-mipi-csi-0-5-rx-reg.h    |  62 ++++
 drivers/phy/mediatek/phy-mtk-mipi-csi-0-5.c   | 331 ++++++++++++++++++
 6 files changed, 487 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
 create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-csi-0-5-rx-reg.h
 create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-csi-0-5.c

--




2.41.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
