Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC1BBC47077
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jan 2024 10:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d1aE/V66NelTikpp5d4f/lSqrZmhe3S83Yk0TGCemo8=; b=30uD9jR1AVVXAN
	RgSzJzeWfMS2hxpoYGhdFQzFIv3loofFGqO8gKOk8u6XaW9lkB8cu1we0UxPnv6shZnW7dv1JTAYJ
	Mt+o2LffdcQQsfkWORLJHaZR4Ys85F+hOa1WyL4oha6/g/NqGyWqkrWTOTogV/udny3FRRcCt2aOZ
	NoDMEBc/eNHkcR4tJomVDtu0SUKcxWpg4A85brOXUhoQdUrTWS8iYssz82TWPYQF+Tzd4QNwzK5bR
	feo61c1+4fOFj5srWxkzgxK/djCcUAXVrUtnt6eUk3fnBgTOB6fflhs4a2thZBB3Vo/aXX+cl4giL
	/RnU4AZuVDYoOH6X7yfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNs5n-00Gw69-0a;
	Thu, 11 Jan 2024 10:15:19 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNs5f-00Gvxn-1A
	for linux-phy@lists.infradead.org;
	Thu, 11 Jan 2024 10:15:16 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40e5451c13aso22605605e9.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Jan 2024 02:15:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1704968109; x=1705572909; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+V4JzjzBqaHzJLZncYnEckgIPzqOvsDKGfGUY3ZauSA=;
        b=D3K009Om4gnVByQ/zLlpS7R86wEb4xnOKhIr/+9gWem1Rrw0nei6CYOTOLnq4I2pqH
         6j7shZgACp4ZqFdORJoU6JrFQS0oxDZSsFtYcSC7AhBKOYmheRCH6VpBBk+4yHrVFzmd
         lYpEP/U6glLb/hXwmmPCMHlCJSBZzlXs4h1MdPd5yCKl3fEJsRB5SlztJEWjQNg6F11p
         9qFqoBPk+R4UYJlMdTBERieoRghhJ3OsabMdp1tuzOxHWuE+2Qwnc7YobVO40pFwDZ1I
         IvoD4y6Rquy3dqDuPn/VGmkxPye4Y2XDnNcNi/3Wc94FyJ7odKwdvMMn99o1UTHudAhM
         JIHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704968109; x=1705572909;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+V4JzjzBqaHzJLZncYnEckgIPzqOvsDKGfGUY3ZauSA=;
        b=oCTBuTMIReY6NIgmNrgtHXvSfRewG9dhJsW+uxUzm48tnCEpGSUs6IONgTj/mSlUAW
         MJ1jR0Ig8G6S0xpVcxeSBgnXcBWtNSIhZWhKuFPR0fY5BpKHnOyJkpQNmBa/1XKAi4oP
         7jwQJ8lYqoQwsWclv8E9l5mG7/kpN6WvJKWN1+SY7DyuUe16JhAWJU3RC+7e87a1Gbxy
         3Fd2cRN/KLUESPzVPbd7xJSNLXLsjgU1pUBPm2CQg2JAcR/rC+gkpPuvzIH6b3XsFc2w
         0oGTnXImQJL64CB6GbR1Z3L+0S3i1nqwvI0xU7vIYPi+MXTp4ax0CKVvO2TynwL5vvQq
         r9TQ==
X-Gm-Message-State: AOJu0Yy/TQQ+0N9kj23dAYXZS/kaxpaGppefHGkN0Mkf4lJSNnQNh8u6
	+hmSu8IPaMrQibv3HrlODXELQk/XhT4Dvg==
X-Google-Smtp-Source: AGHT+IEm+n9REC3cDZLVtCMBBH7ollyf38bVEHwiAvqjBMBz1qwTcxZsn0pt65qrruZ1CkOufUMg3Q==
X-Received: by 2002:a05:600c:3b1d:b0:40e:6206:a518 with SMTP id m29-20020a05600c3b1d00b0040e6206a518mr68778wms.184.1704968109127;
        Thu, 11 Jan 2024 02:15:09 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:55f:21e0:9e19:4376:dea6:dbfa])
        by smtp.gmail.com with ESMTPSA id j7-20020a05600c190700b0040e52cac976sm5157758wmq.29.2024.01.11.02.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 02:15:08 -0800 (PST)
From: Julien Stephan <jstephan@baylibre.com>
To: 
Cc: Julien Stephan <jstephan@baylibre.com>,
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
Subject: [PATCH v5 0/2] phy: mtk-mipi-csi: add driver for CSI phy
Date: Thu, 11 Jan 2024 11:14:49 +0100
Message-ID: <20240111101504.468169-1-jstephan@baylibre.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_021511_413581_C9684FD8 
X-CRM114-Status: GOOD (  19.77  )
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

v4 can be found here: https://lore.kernel.org/linux-phy/20230620121928.1231745-1-jstephan@baylibre.com/

Changelog
Changes in v5:
- rebase on latest master scheduled for 6.8-rc1
- sort alphabetically CONFIG_PHY_MTK_MIPI_CSI_0_5 in Kconfig and Makefile
- put lines under 100 chars on one line

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

Phi-bang Nguyen (1):
  phy: mtk-mipi-csi: add driver for CSI phy

 .../bindings/phy/mediatek,mt8365-csi-rx.yaml  |  79 +++++
 MAINTAINERS                                   |   7 +
 drivers/phy/mediatek/Kconfig                  |  12 +
 drivers/phy/mediatek/Makefile                 |   2 +
 .../mediatek/phy-mtk-mipi-csi-0-5-rx-reg.h    |  62 ++++
 drivers/phy/mediatek/phy-mtk-mipi-csi-0-5.c   | 294 ++++++++++++++++++
 6 files changed, 456 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
 create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-csi-0-5-rx-reg.h
 create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-csi-0-5.c

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
