Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F45AECAA27
	for <linux-phy@archiver.kernel.org>; Thu, 25 Aug 2022 19:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E7qXOozlCU6bCZOfUT3q+r9XBpb2vR2DQiwjc/ZszzE=; b=2uxqw036qnzaiL
	u4bNrudzRPr3qAPUof0sPeeomlMHy9GyyGf7ncHzu4vtkz3t47CF31p03C9hX5FEDHYGiW45Ujrx3
	PIElcFpCE3zuHbNaPmolmk8dSih13Gbi+z0csDniqzoCKJx1KyV5DPoFanri7nsxuNKhc82yS3/4l
	5780XSWX52zG8z5SYQRofR+NWVi/caOvhVpuTLFYA6S6Vq8ZQ9yLDN6tHqoEOJY4O1OKkX+Xj2rv7
	ROE11jJDf4JIxXW9f4sweeSzV8OKMMqaq2voJiStrpvcYDeBsmFDVZJdg2K3+x6Zw3X1N+n7RiLI8
	dIGmTrdbzp/Iwj4WLJRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRIhA-002mOv-Ub; Thu, 25 Aug 2022 19:39:16 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRIgw-002mFc-KL; Thu, 25 Aug 2022 19:39:04 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
	by mxout1.routing.net (Postfix) with ESMTP id 6516B40666;
	Thu, 25 Aug 2022 19:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1661456336;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=BjCaPS3Ls4OcThfe6JXlBlmUcyFt3U2x6sPSAzYayAE=;
	b=RZHrhso7bq5krHTSILI+Du8+jJ4NY2btosRsojMruDhy8p3HV9L4CrZKxe5FdB54E8t4EP
	57d/mZgmm2+oY2EoIZB7Xay7O2Oqen4mLCuwN+1+pZipAE7funuSgJQYuyjyFM6f0EsIjl
	41i3HdpbyI5buN2CNR1NRTRKMAT0sAM=
Received: from frank-G5.. (fttx-pool-80.245.75.185.bambit.de [80.245.75.185])
	by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 3206B402A9;
	Thu, 25 Aug 2022 19:38:55 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Simon Xue <xxm@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/5] RK3568 PCIe V3 support
Date: Thu, 25 Aug 2022 21:38:31 +0200
Message-Id: <20220825193836.54262-1-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mail-ID: ec59aa3d-efac-4485-ba71-0bdc305891d2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_123903_693174_E35D5D54 
X-CRM114-Status: UNSURE (   9.34  )
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

From: Frank Wunderlich <frank-w@public-files.de>

This series adds Rockchip PCIe V3 support found on rk3568 SOC.

Compared to PCIeV2 which uses the Naneng combphy, PCIe v3 uses a dedicated
PCI-phy.

Frank Wunderlich (4):
  dt-bindings: phy: rockchip: add PCIe v3 phy
  dt-bindings: soc: grf: add pcie30-{phy,pipe}-grf
  arm64: dts: rockchip: rk3568: Add PCIe v3 nodes
  arm64: dts: rockchip: Add PCIe v3 nodes to BPI-R2-Pro

Shawn Lin (1):
  phy: rockchip: Support PCIe v3

 .../bindings/phy/rockchip,pcie3-phy.yaml      |  80 +++++
 .../devicetree/bindings/soc/rockchip/grf.yaml |   3 +
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 117 +++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 122 +++++++
 drivers/phy/rockchip/Kconfig                  |   9 +
 drivers/phy/rockchip/Makefile                 |   1 +
 .../phy/rockchip/phy-rockchip-snps-pcie3.c    | 319 ++++++++++++++++++
 include/linux/phy/pcie.h                      |  12 +
 8 files changed, 663 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
 create mode 100644 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
 create mode 100644 include/linux/phy/pcie.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
