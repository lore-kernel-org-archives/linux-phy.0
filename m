Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14045C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 13:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4g8XcSjHmlveBgmb4SjqvcPHmg2W1EYHfGA+XoU2ubY=; b=nD4eXK+bFLotV8
	Bi08nhv2Ku/bpOzRmG41kifftwutz5hHhP4ZgEfMpcq5MBaEU/ybMnuAESbJDVILcAGWb9bl3++ZE
	w/BCA0P+aqzUgz8Zte9iteyrnA0ps2qMgzGKOStT/LYjewaZJvcVUeK8CoL1Ymi7Rduy+oHFNFAkm
	auiGqYUPu97+xePSicArbQt+tTkic/REPElR8xlpL0COewUJZ22SriFZ0jwHaUDtA0j0rdSBZFdm0
	ZpsyAO1WYwQ4hQ0R5aDPdt/7HLGtEPU9fKptJWWnIU8DVw1edKx/08+4tjgYPbE/Jsc8rlQAGtuSu
	C0x/3mheZdhnt9HYvazw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw2Gp-00BA8F-Es; Tue, 31 May 2022 13:50:51 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw2Gf-00B9xx-GV
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 13:50:46 +0000
Received: by mail-wr1-x434.google.com with SMTP id q7so7831233wrg.5
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 06:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ks9vTtzXL1NzJuLhvcv/lBf9sH/I8oroEcUXJQecJiY=;
        b=xtZHSA3K85YeP1R8TqJTezh1l7AboO67QnJbxmUxYsSKR3b9HMFsTp1QD4TVZvKYD1
         HykwJkz0IW4fwjPH1Z0l9xH3Oif1Qyz4EObPsiwZXnAXo/kCZCKI8eI5xsuJ7HgXtaXN
         igvkGmpchkyuuMO2tdAR159F7tqSL4KCQk76eOzZ0gnvace+L6L/D7RGtYizyiAxNH/H
         U1OOXHiLwvj0PnjQ9PmyWuR1utFiONwi7NGx9h2FLtpNKsKkOyd7zUg6Z7fPPuvzo2+J
         OzV184qkC3Q1grDw1sZEiE1et3kV/ow2A5Uy2HR/6AQuE2OaglwYGrTIwCVgkLMJpI+J
         hYNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ks9vTtzXL1NzJuLhvcv/lBf9sH/I8oroEcUXJQecJiY=;
        b=H7mdvlPaOukSu/LsFUQzAgSIAz2go+SmurpEOIr5IFodjtmYdE2dKZhG8ENdNmYzsH
         lJ9RY1RABzLYfy41snLTLYqfsNW0my0wBR3S+ijU7d+4ggpEPAzRw/8XZx9FE+sPpsXn
         Em/fmhyMCC3v2P4jR+uqj1ZDRSBA7pIWHLEZj/nl2zRv3OL/pVlAPManhKpad5O9SukJ
         zCokpL49Hd+W4odSBGYXT9XDFCvBtkwv6kxUZXVprLONsmVbpzZ3Knx5A1fHpy3A2jiK
         KnKuXANyS3bOdFPH4m1iPHNQyJtFKdv7nGe1gh2OL1XmcBjKZyLbgn3pihn9LBckJlcv
         0Gww==
X-Gm-Message-State: AOAM530lohFR6XIM8Xyz5HCPthi+Y2NG2IN/PfJCkfH5ZxEPqq+Zw56c
	wJTnHBTBy2na6L0GDwORm2+rXg==
X-Google-Smtp-Source: ABdhPJzh0ABvRvzeW4VNDfDT+jgXlefhQRDjukiBBkCf5v7KqylLxZRg6Qya21tyLqyBuT1Kzn3OQA==
X-Received: by 2002:a5d:6f1d:0:b0:20f:ff40:263f with SMTP id ay29-20020a5d6f1d000000b0020fff40263fmr25172992wrb.626.1654005037132;
        Tue, 31 May 2022 06:50:37 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id l11-20020a05600c1d0b00b00394351e35edsm2404806wms.26.2022.05.31.06.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 06:50:36 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	qii.wang@mediatek.com,
	matthias.bgg@gmail.com,
	jic23@kernel.org,
	chaotian.jing@mediatek.com,
	ulf.hansson@linaro.org,
	srinivas.kandagatla@linaro.org,
	chunfeng.yun@mediatek.com,
	broonie@kernel.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dmaengine@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 00/17] Add support for MT8365 EVK board
Date: Tue, 31 May 2022 15:50:09 +0200
Message-Id: <20220531135026.238475-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_065041_811810_5447A330 
X-CRM114-Status: GOOD (  10.09  )
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

This patch series adds support for the MT8365 EVK board.

This series has dependencies on the following series:
https://patchwork.kernel.org/project/linux-mediatek/list/?series=646256
https://patchwork.kernel.org/project/linux-mediatek/list/?series=646091
https://patchwork.kernel.org/project/linux-mediatek/list/?series=646083
https://patchwork.kernel.org/project/linux-mediatek/list/?series=646081
https://patchwork.kernel.org/project/linux-mediatek/list/?series=646076
https://patchwork.kernel.org/project/linux-mediatek/list/?series=646068
https://patchwork.kernel.org/project/linux-mediatek/list/?series=646020
https://patchwork.kernel.org/project/linux-mediatek/list/?series=646052
https://lore.kernel.org/r/20220504091923.2219-2-rex-bc.chen@mediatek.com 
https://lore.kernel.org/r/20220512062622.31484-2-chunfeng.yun@mediatek.com 
https://lore.kernel.org/r/20220512062622.31484-1-chunfeng.yun@mediatek.com
https://lore.kernel.org/r/20220524115019.97246-1-angelogioacchino.delregno@collabora.com
https://lore.kernel.org/all/20220127015857.9868-1-biao.huang@mediatek.com/

Fabien Parent (17):
  dt-bindings: i2c: i2c-mt65xx: add binding for MT8365 SoC
  dt-bindings: memory: add mt8365 SoC binding documentation
  dt-bindings: mmc: mtk-sd: add bindings for MT8365 SoC
  dt-bindings: arm: mediatek: Add binding for mt8365-evk board
  dt-bindings: dma: mediatek,uart-dma: add MT8365 bindings
  dt-bindings: iio: adc: mediatek: add MT8365 SoC bindings
  dt-bindings: nvmem: mediatek,efuse: add MT8365 bindings
  dt-bindings: watchdog: mtk-wdt: Add MT8365 SoC bindings
  dt-bindings: spi: mt65xx: add MT8365 SoC bindings
  dt-bindings: serial: mediatek: add MT8365 bindings
  dt-bindings: phy: mediatek,dsi-phy: Add MT8365 SoC bindings
  dt-bindings: phy: mediatek,tphy: add MT8365 SoC bindings
  dt-bindings: usb: mediatek,mtu3: add MT8365 SoC bindings
  dt-bindings: usb: mediatek,mtk-xhci: add MT8365 SoC bindings
  arm64: dts: mediatek: add mt6357 device-tree
  arm64: dts: mediatek: add mt8365 device-tree
  arm64: dts: mediatek: add mt8365-evk board device-tree

 .../devicetree/bindings/arm/mediatek.yaml     |    4 +
 .../bindings/dma/mediatek,uart-dma.yaml       |    1 +
 .../devicetree/bindings/i2c/i2c-mt65xx.yaml   |    4 +
 .../iio/adc/mediatek,mt2701-auxadc.yaml       |    1 +
 .../mediatek,smi-common.yaml                  |    6 +
 .../memory-controllers/mediatek,smi-larb.yaml |    6 +
 .../devicetree/bindings/mmc/mtk-sd.yaml       |    3 +
 .../bindings/nvmem/mediatek,efuse.yaml        |    1 +
 .../bindings/phy/mediatek,dsi-phy.yaml        |    4 +
 .../bindings/phy/mediatek,tphy.yaml           |    1 +
 .../bindings/serial/mediatek,uart.yaml        |    1 +
 .../bindings/spi/mediatek,spi-mt65xx.yaml     |    1 +
 .../bindings/usb/mediatek,mtk-xhci.yaml       |    1 +
 .../bindings/usb/mediatek,mtu3.yaml           |    1 +
 .../devicetree/bindings/watchdog/mtk-wdt.txt  |    1 +
 arch/arm64/boot/dts/mediatek/Makefile         |    1 +
 arch/arm64/boot/dts/mediatek/mt6357.dtsi      |  272 +++++
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts   |  578 +++++++++
 arch/arm64/boot/dts/mediatek/mt8365.dtsi      | 1047 +++++++++++++++++
 19 files changed, 1934 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6357.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8365-evk.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8365.dtsi

-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
