Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545C4C07E96
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 03:16:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F37B261CB2
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 03:16:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F37B261CB2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lhVaVaJfLf5+rTP+J3uLO6rEA6WysVCiv7NvEf+6AfI=; b=Lp4lg4YkCszB6T
	gjEyV4tqEot9wwb3hWCyArsD4GVD+/uUXd7KhfAzvtNRCYlbUXn0eBJsEcfKwZWF3RxnID3a8v8Dc
	H1T62gzrlB5F0V5Nuf/xLK+Dr+H6wA+pS+0v4SV5SmUHaRMoqGi21dnUS1/Fdjs09YDoWqx9wJp3v
	6ZTcuJnhHuWXk+qg/va9fGn6VEq27I8eHhUmRMghBBZ4P5NJHEW4mnyQKWE6Ht0suHskE78jtxnZc
	o8ZJXQoGaKfPgmZwkJAZFYr+cnrpLgNPSHmikjWFwFVho/1Gtq/srqGLkerZaeR2ruJVKejFS4RCM
	nwRzVxOeqEbUx+cOVKHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0y30-00DGGo-CP; Wed, 07 Jul 2021 03:16:26 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0y2x-00DGG1-Lq
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 03:16:25 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4E0FC580452;
 Tue,  6 Jul 2021 23:16:17 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 06 Jul 2021 23:16:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=HD7fvV++lnXN3rWSs6B1vaR05h
 KL8vwruZu2/KPFdDg=; b=dj8L10ljRLCEcw+rfR2ejvc6zdTYI+p+Xn2SwyyWuw
 ntiKEItS8aL254dXSMWkpKa2A347Zwz7c7zJsCsa5FYKa3+U6aMta7j7e+GEELoJ
 5ZPAGDpeAStzV8mfAjvKHNBy8rp/yIFA14v8NabkU48y42lDklecfN3mRQ1CEny8
 vD9uQl2v/th+mAJ86fFU0i3B/SLiIqyZOyp6wbE3V3JbXBbJYB6tbA86kApzXVsL
 F+fl0SRoZ4UNEAvQ32yDpG2f9kMLJTtrQrDm2pCRRAXlyNbR5YzpImNVyM3fugb7
 7mzMEFt9m39Ja4K27SfGxdzQFpJzyuq7+AmnMFInYjjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=HD7fvV++lnXN3rWSs
 6B1vaR05hKL8vwruZu2/KPFdDg=; b=ozmbQtH4h2Sj+pL/aMBdxZF/d5DtSU4Z6
 yNy7stbILDPp69jViWm5njGhRww/vDYERVhHSyxX6TI2cZjqsng6EeDQx9wGZoNo
 hMuOq7SeVAJIacoaBgdqQ5nCpY0E2eU2exdPbQ6YQtq7YTqjVMjwyF1nRrLGfGZ+
 jpGA7vHgQ3YABvyUQclqdvabSmTR3DG/wcY2oNh4WGhHsZsHWHvqody+txoBFJj7
 K7BsMeX0CZPo/j1J8QBrO+3+nM4mJRkCS+GRkwy1fqYOGmSTp+sH2FolPo0AVjuN
 pkp9D0F9symNSSVhhKJPDAzqtfUfhyb56hzYUgHUcjgAzHeP2DDdQ==
X-ME-Sender: <xms:gBzlYBHdlhQRho6k4ijWjYwacYx--7Ov9ZjgvTpjleeFScrMCooLGw>
 <xme:gBzlYGWCeyDpCu1pDV6egxDoCyrCvSjVSn2hjPmHzh3EVHdw0IpKg4JqcTxV3j3U7
 0Y8jLkVBHUbgnjhuhY>
X-ME-Received: <xmr:gBzlYDKbOY7alhDYGtLIC6xk3YWUXNbemo256-9KRD49HrW8OSVhovd1VxWRe9H8N9qQRoMiziH2ntR_Dw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrtddugdeghecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghesfhhl
 hihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhephfejtdektdeuhedtieefteekve
 ffteejteefgeekveegffetvddugfeliefhtddunecuvehluhhsthgvrhfuihiivgeptden
 ucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgohgrth
 drtghomh
X-ME-Proxy: <xmx:gBzlYHFs8QKGuLvAvW_8az0nOFaVcUwhX5MnJn4XA6i3dxWnpMGVbQ>
 <xmx:gBzlYHV2qFrnn5Vm3DkrBZ116MHFOwUD3KCMHCy3Muj_DUIkLpJlKA>
 <xmx:gBzlYCMq6h6GIrsanFERjP_BfgWHUqIQKG2WnW7BUg1TK1YCN7RquA>
 <xmx:gRzlYAOQHXOYkkstFkuhEuEGElfB0hCiVI3w1BFU0bwjtVk-DfO65w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 6 Jul 2021 23:16:12 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v2 0/9] MIPS: Migrate pistachio to generic kernel
Date: Wed,  7 Jul 2021 11:15:43 +0800
Message-Id: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_201623_828131_E40E1DE8 
X-CRM114-Status: UNSURE (   9.74  )
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

I'm lucky enough to get a Creator CI40 board from dusts.
This patchset move it to gerneic kernel to reduce maintenance burden.
It have been tested with SD Card boot.

--
v2: Minor fixes

Jiaxun Yang (9):
  MIPS: generic: Allow generating FIT image for Marduk board
  MIPS: DTS: Pistachio add missing cpc and cdmm
  clk: pistachio: Make it selectable for generic MIPS kernel
  clocksource/drivers/pistachio: Make it seletable for MIPS
  phy: pistachio-usb: Depend on MIPS || COMPILE_TEST
  pinctrl: pistachio: Make it as a option
  MIPS: config: generic: Add config for Marduk board
  MIPS: Retire MACH_PISTACHIO
  MIPS: Make a alias for pistachio_defconfig

 arch/mips/Kbuild.platforms                    |   1 -
 arch/mips/Kconfig                             |  29 --
 arch/mips/Makefile                            |   3 +
 arch/mips/boot/dts/Makefile                   |   2 +-
 arch/mips/boot/dts/img/Makefile               |   3 +-
 arch/mips/boot/dts/img/pistachio.dtsi         |  10 +
 arch/mips/configs/generic/board-marduk.config |  53 +++
 arch/mips/configs/pistachio_defconfig         | 316 ------------------
 arch/mips/generic/Kconfig                     |   6 +
 arch/mips/generic/Platform                    |   1 +
 arch/mips/generic/board-marduk.its.S          |  22 ++
 arch/mips/pistachio/Kconfig                   |  14 -
 arch/mips/pistachio/Makefile                  |   2 -
 arch/mips/pistachio/Platform                  |   6 -
 arch/mips/pistachio/init.c                    | 125 -------
 arch/mips/pistachio/irq.c                     |  24 --
 arch/mips/pistachio/time.c                    |  55 ---
 drivers/clk/Kconfig                           |   1 +
 drivers/clk/Makefile                          |   2 +-
 drivers/clk/pistachio/Kconfig                 |   8 +
 drivers/clocksource/Kconfig                   |   3 +-
 drivers/phy/Kconfig                           |   2 +-
 drivers/pinctrl/Kconfig                       |   5 +-
 23 files changed, 114 insertions(+), 579 deletions(-)
 create mode 100644 arch/mips/configs/generic/board-marduk.config
 delete mode 100644 arch/mips/configs/pistachio_defconfig
 create mode 100644 arch/mips/generic/board-marduk.its.S
 delete mode 100644 arch/mips/pistachio/Kconfig
 delete mode 100644 arch/mips/pistachio/Makefile
 delete mode 100644 arch/mips/pistachio/Platform
 delete mode 100644 arch/mips/pistachio/init.c
 delete mode 100644 arch/mips/pistachio/irq.c
 delete mode 100644 arch/mips/pistachio/time.c
 create mode 100644 drivers/clk/pistachio/Kconfig

-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
