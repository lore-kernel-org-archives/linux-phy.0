Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84BDCC7EE2E
	for <linux-phy@archiver.kernel.org>; Wed, 24 May 2023 09:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nlVXgbPi5+HbNwatmaK6IX+Vlkq4kL2sPCrmL/GeEuM=; b=PMC6iEwuk9oMXI
	iSXkiHLb3cAzLY46EWJgsNplhZgsIkXscrlBVav+je26bHdys/kZo363+AjWSw3h1iYwLvxGNbZlV
	GjEBOhdICbnsGWVPvLvIVvX1ntLisUzDq3KxHE4hWXJaRvGAJyUyWHeDiQ9YJ/NLqIrHpMA7Dvfy0
	WFz6u6siiGKw97G13b9XKAszosM1QeU94fzAMZNnqoUvBAwutRgKBHU9BHIoHkM7n2dJXWRSxOo/T
	sNUwXTybTaW5Uj3F78yWaGQA/qe91rKGrrnO3DRtezrpKMZDM5jXXVvT/N6J0ljZaggAbtMr25nuv
	NRell/j2yVXKZLd+R96Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ktl-00Cz96-0W;
	Wed, 24 May 2023 09:35:13 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1jtT-00CmYi-2N
	for linux-phy@lists.infradead.org;
	Wed, 24 May 2023 08:30:55 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-309550263e0so460875f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 24 May 2023 01:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684917044; x=1687509044;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kffM2qOd8UySQXRHCzIS0BeFu6Pjgruc1iNUigvygb8=;
        b=TrQn2EijrNey35nJ4xgpghuPuNSrvgrfBZjIxo8csQh6I1eaXFFYJISM7dXKj1+92/
         bTgTyOVd0m+OAduhxhN/IHEjxY9KQrHQFx0b8TfDbO1amxKvnwAmY0wr06vA99olLews
         tbxmwz3MeJ+bpNt/W4UcTZbAaGVPov+9EjNBO2fdXCitmVSSsRSwYX70okXZWAqtDU58
         Pvlw6frc5B8bW8yah2SWWEfYRqzrvLh00WLLEeHhvDAH8CCfGwj3bSbuM8YaEf1KR4yp
         MDTRv+/fDWL15PFeMb0jw6CnsaB5HN6og5AMXKNxw9torqW5G3CWMgEMndLpudAz7kxc
         vU3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684917044; x=1687509044;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kffM2qOd8UySQXRHCzIS0BeFu6Pjgruc1iNUigvygb8=;
        b=JsckTpOiraVo4g1/pvBe9aFwYWoQWG5vRKZ7rzJITCt4UvuDipmky0CNF9z3y1omso
         CfM4uc6ehmcU+1nBT6ac2tGFflfFFEAySPpcjDvV6Zdy8mY8bBRx5T5k3UKUEjPslNUZ
         /qcRpr7pzicVvoS4+mxXA5lQwAOHXfrGFPrHyQeLX9T0HlL1SW3eOnaxxFQtit+3Ohm6
         uUGGreHL8woqI2kdc3fnOvsU2rUj6JhOl/KDQQy0Q+w3kQiLNCtfQsWDCyoBI5vmxxFh
         q/wcSPpP8xaFbuvL1Me82QtdMs1oKZVk+etUUe1dt5YONdaTHF9NWcQULySgel9nYMtm
         etQA==
X-Gm-Message-State: AC+VfDxi6jR3QXkAzB1tiwgWx46aKKDyxfeT2PF5ZDBSfHX2DTV2BW8+
	ExNjxWtFGJQHBIs0SlJ61LNApw==
X-Google-Smtp-Source: ACHHUZ6RKUgi2r3+ULkAZkHhThnj59JBpVMuBR0BTeba5BRaxoHn2ulZhXc1hJPCT/6mYxsCf65d+Q==
X-Received: by 2002:adf:f103:0:b0:309:509f:a7ef with SMTP id r3-20020adff103000000b00309509fa7efmr12077478wro.67.1684917044126;
        Wed, 24 May 2023 01:30:44 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:55f:21e0:9e19:4376:dea6:dbfa])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d484b000000b00307c0afc030sm13871832wrs.4.2023.05.24.01.30.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 01:30:43 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
To: 
Cc: mkorpershoek@baylibre.com,
	khilman@baylibre.com,
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
Subject: [PATCH v3 0/3] phy: mtk-mipi-csi: add driver for CSI phy
Date: Wed, 24 May 2023 10:30:29 +0200
Message-Id: <20230524083033.486490-1-jstephan@baylibre.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_013051_786313_B23DAF31 
X-CRM114-Status: GOOD (  18.16  )
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

Changelog
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
  dt-bindings: phy: add PHY_TYPE_CDPHY definition

Phi-bang Nguyen (1):
  phy: mtk-mipi-csi: add driver for CSI phy

 .../bindings/phy/mediatek,mt8365-csi-rx.yaml  |  68 +++++
 MAINTAINERS                                   |   7 +
 drivers/phy/mediatek/Kconfig                  |   8 +
 drivers/phy/mediatek/Makefile                 |   2 +
 .../mediatek/phy-mtk-mipi-csi-0-5-rx-reg.h    |  58 ++++
 drivers/phy/mediatek/phy-mtk-mipi-csi-0-5.c   | 272 ++++++++++++++++++
 include/dt-bindings/phy/phy.h                 |   3 +-
 7 files changed, 417 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
 create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-csi-0-5-rx-reg.h
 create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-csi-0-5.c

--
2.40.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
