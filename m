Return-Path: <SRS0=xi9z=MN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF293C07E9B
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B45E861178
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B45E861178
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PSX+7ViOQZOCcl8oRF2TRliJSrnM0t18cJM2DA2JdIU=; b=ZAxCgmy/cO6p/n
	P75tJ9fBHQP9h1fL4SR6X7Wi8C3COd2tzurrFHKaebhqhwXdRDz8YLQpzjIrj64+Pf5z9vO1Dr4Rz
	MDrgSSW68HLu436cL4T1oXvue7RUqrHqdtDuPzvE0tj1RjJW8RtTRdkiSObu5jxpwfxcUuGx1xbSp
	UZ63k30znwN5sUmcIUFXPsBMFUFA9kC6T/aXfyu4Qkg3N/95FNUKUA1EfcKw19D/SmY6hqGQBdMxZ
	MiFy3rzhCCFNoDf+OFo6k0abss0XIG2s5voqtTPiTzExLUOZX89aZfrut8DxUJIRgTvsk3GxK6Waq
	Ybqnd+RKMtG21xaHTJKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m62Ul-00ENLm-6f; Wed, 21 Jul 2021 03:02:03 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m62Ui-00ENKZ-VA
 for linux-phy@lists.infradead.org; Wed, 21 Jul 2021 03:02:02 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 830012B004FC;
 Tue, 20 Jul 2021 23:01:54 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 20 Jul 2021 23:01:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=GohC1Xd2UWQStJhSae6I3++vzG
 AiFbgghmNjmKdy6j0=; b=WkXI/MCbn1fdpcTgR+wb7KadJo2Vm9HCph5shcJ5fw
 LYRDLfRigLkGW0a0D0eca5+Io5zoJ+3AcC+MFGyAhfR580IPuGevvY+cCdjxUeH3
 upWSTgr1WxW1Bi7FuN7NuHWCGaNTTfzAAuGjP9uHLvHwoXYgLtL8eyfw6x0RKQr3
 HwjDppjmKqICiVBQtS/FUzGnQpzUH2rtQhEE6vLV46mDZC3Qfqr5dl3f4jFl2BLp
 7s1G41F1pKrT22dEqdDOb9wjED8koMRZMYO3U7yrJ1Z3MDIrSxAgEjDBAQAQy7Om
 hOUcsg4TfyB59O4hW+4o1/bEnEo4yUViVUQOMkiZOrJA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=GohC1Xd2UWQStJhSa
 e6I3++vzGAiFbgghmNjmKdy6j0=; b=d1SIOQXhNs3X+miPCQAPoOp2/pnho2Uy1
 pYjs9EtfY5f/oVC3b+pZ8LjDAoLHZd8yx1S2JbTPGJFEc+CeLidtYfYFlIena/Rs
 /8RVhnvd2gS0GAyhrUmbTEopQhKfeLS4k+FA0iuxTHiPcm28OVGA0gSjBFD2ALCI
 /RQCxalysJMESF6nAdXfJBLRRjAlPLUNHqU1MINCmYUvfuRbUvki0ADsg6AGURga
 6jdBvAUPbq4E+c3+hXT5kobyO/QpwI+j60qdu1CAfgirEjivU6Ld1PjmwwS6Gw/w
 WFfsSkcCFjpssqJ6P1zhmsdHnwzEUh9+j5tlb1oUb/kPRbkgbHXoQ==
X-ME-Sender: <xms:II73YGW0qEDVTEvZ2GJHRq1-sRxJyYBvZVvXVk6dLNFF2d8ADMJzrA>
 <xme:II73YCmp-UQ2Boiz39sGD21Sd4vdp37WhODwXIde9Zi4BtD0WVxZwMHKCtj770zIg
 yxsykfd9mer8ar6Cm8>
X-ME-Received: <xmr:II73YKY0dCPWU2gOMNBRy-WqIBuOScgs8xiFvT4FKQIhQirKFYBJ5g0vtHjmtPlOflyilZ3nj_8S>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeefgdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghesfhhl
 hihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhephfejtdektdeuhedtieefteekve
 ffteejteefgeekveegffetvddugfeliefhtddunecuvehluhhsthgvrhfuihiivgeptden
 ucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgohgrth
 drtghomh
X-ME-Proxy: <xmx:II73YNX6skF8MxyWwDXkQV8EfMmJxDsAl5ACgjkilBL17nw0xtUh9g>
 <xmx:II73YAnvL_WmV8ybFDoPOz9DzLNbUG6BmiEPVdTrtFfD1qn1kszHJw>
 <xmx:II73YCd5XSHw6t3T1ojDmj_xC_0U4jFhgLbZQAONJHr3z8p704WP6A>
 <xmx:Io73YJdVhOEQzb6RKtplBhWoAxZeJyLLIUAKuJusIX0M5ja15XCCsfTCXhc>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 20 Jul 2021 23:01:48 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v3 0/9] MIPS: Migrate pistachio to generic kernel
Date: Wed, 21 Jul 2021 11:01:25 +0800
Message-Id: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_200201_081527_616D9DA8 
X-CRM114-Status: UNSURE (   9.68  )
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
v3: Typo fixes and 0day testbot warning fix (Thanks to Sergei!)

Jiaxun Yang (9):
  MIPS: generic: Allow generating FIT image for Marduk board
  MIPS: DTS: Pistachio add missing cpc and cdmm
  clk: pistachio: Make it selectable for generic MIPS kernel
  clocksource/drivers/pistachio: Make it selectable for MIPS
  phy: pistachio-usb: Depend on MIPS || COMPILE_TEST
  pinctrl: pistachio: Make it as an option
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
