Return-Path: <SRS0=gvcI=LF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCD4BC48BE0
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jun 2021 13:46:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 81705613C3
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jun 2021 13:46:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 81705613C3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kVS9osrwQQ1oRu6Zhthos3hxQEjPVXRBsrEd1jFI81o=; b=ESpwzVZsPmZ3qh
	JqcLow+Df7clUwy5ZXDeigWyWx4yIc7XAhZ68LZbjjjWvwe6A/Hry3N6hKgy4zz+K0Jk9Bx5YxrHZ
	z7+PyQG6oVOlAU/cHHmdrXePQky4ORbf7W9tqCEFoYhTuMSN8ZWlyKhaLhDQP83sMGqnOfEz7OzWV
	BlLFyVyD270hmUoRW91C8rlmlfJjHSTav4vJiXuytEqLWttrK4Cyf5YW5aEnGNaDUvj74+l6u6Niy
	pHRHzJ0RxLGb3sYor5mFsCZX6M+k/0kwGXKjMPSrJwn7Yf6CLjYKDHxLSC06o8Wp9jiEIaR+sLrkx
	ASx7Z0VxTGumbm3lmWBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrhUs-005QyS-2c; Fri, 11 Jun 2021 13:46:54 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrhUo-005QxT-Ok
 for linux-phy@lists.infradead.org; Fri, 11 Jun 2021 13:46:52 +0000
X-IronPort-AV: E=Sophos;i="5.83,265,1616425200"; d="scan'208";a="84106292"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie5.idc.renesas.com with ESMTP; 11 Jun 2021 22:46:47 +0900
Received: from localhost.localdomain (unknown [10.226.92.121])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id D8B204274BD0;
 Fri, 11 Jun 2021 22:46:44 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>, Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org
Subject: [PATCH 0/6] Add RZ/G2L USB2.0 phy and host support
Date: Fri, 11 Jun 2021 14:46:36 +0100
Message-Id: <20210611134642.24029-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_064650_938786_A21A3CD4 
X-CRM114-Status: UNSURE (   7.78  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This patch series adds USB2.0 phy and Host support for RZ/G2L SoC.

A new driver introduced for RZ/G2L USB phy control block,
which mainly controls reset and power down of the USB2.0/PHY.

This patchset is based on master branch [1]

[1] https://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git/

Biju Das (6):
  dt-bindings: phy: renesas: Document RZ/G2L USB PHY Control bindings
  drivers: clk: renesas: r9a07g044-cpg: Add USB clocks
  phy: renesas: Add RZ/G2L usb phy control driver
  arm64: configs: defconfig: Enable RZ/G2L USB PHY control driver
  dt-bindings: phy: renesas,usb2-phy: Document RZ/G2L phy bindings
  arm64: dts: renesas: r9a07g044: Add USB2.0 phy and host support

 .../phy/renesas,rzg2l-usbphyctrl.yaml         |  50 ++++++
 .../bindings/phy/renesas,usb2-phy.yaml        |   1 +
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi    |  81 +++++++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/clk/renesas/r9a07g044-cpg.c           |   6 +
 drivers/phy/renesas/Kconfig                   |   7 +
 drivers/phy/renesas/Makefile                  |   1 +
 drivers/phy/renesas/phy-rzg2l-usbphyctrl.c    | 163 ++++++++++++++++++
 8 files changed, 310 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml
 create mode 100644 drivers/phy/renesas/phy-rzg2l-usbphyctrl.c

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
