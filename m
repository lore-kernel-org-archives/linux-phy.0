Return-Path: <SRS0=Q81u=LV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 499B1C49EBA
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 04:57:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B98261C4D
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 04:56:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0B98261C4D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TNv+4OGXdoYTop3FPPyhUG07rx91czJp1F94u4jgD2Y=; b=X50TYcH4OdY1T/
	FLPlEl6e5ED8UUMjHZfs1z9O+NABggTXtdaj5JcXRQv43pf5XYriJIwDsAi68Y/q1inj77YEfPycJ
	eARYCHJXxS0EIKGUEKZuXfJZjz81UNFxWXpl/OR0Uy3ypwJ6CtKvD9A2+ql+ur50rJnaAudT+0s6K
	S1T2YqAAHlK1W5wjB27KGZBZuaY9yXAlgciCqahFYwdig2rR2wwWVSkIyzqIBQoZv1ROk17tTHvKd
	rB9//X6FxNI2BBCW70dL2KBQltOgZN25GEkTWDBFkX7FwRWbX7g+I89FswguBMI+AR2yAbeVjLvLJ
	gCtosQYV/AkqEmUiljHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxMqp-0057vP-Ag; Sun, 27 Jun 2021 04:56:59 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxMqm-0057u3-8C
 for linux-phy@lists.infradead.org; Sun, 27 Jun 2021 04:56:57 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 633CB5807B0;
 Sun, 27 Jun 2021 00:56:49 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Sun, 27 Jun 2021 00:56:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=OEzigg4+BoMPxsyoPsKvBQuXau
 nF/DeXQiUJoqVNnGg=; b=ZzhTi7PWoalGaRkNmj4TNmwp+GyvJC1wVlMyZvGZbS
 3FQHepYOSaREV6SWKRbqJjb+du7LOnvtCQ8NbRH3AvbnJ9XE+V40fPoj29f/F1xU
 u3F/CRdCDLqhxBecGgZadXMk2AnZE979jOkOWXyPS4UasCYYBwVqPuRcE1WCLXi/
 GIf67jWx8iyURz3NNX4i5AJ0Ugw5iuk1pYZneR+po9NRtM2n/jOifDba6+hn3N5R
 I7yHz3YS37l3AbH4IBBUj/kp0e667QHHPTppVyyPnChSE5UZnoUZh2HZ7xTPolyK
 t2gKaf4DVmELtBonu3NFhPzzloh4IA2sA0kxECsMS54w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=OEzigg4+BoMPxsyoP
 sKvBQuXaunF/DeXQiUJoqVNnGg=; b=aiI2vGZl0DEOtYORnQ7gnZwWOIXdbacN0
 MvjTFf2MYWr2SQ5iPtRUeGyjvGugvb7X5KPumHgT2GVcQMr4ev8wr3gX0umD15uh
 bU2JP0ErmQua1dx/0fIUAPwWaiMLfOfwBDz+YSQhGiTXGBjs2BJyyCwZKNZUnsf+
 u3qfEWdC5TuoFm3KQcfZHrOSGXVLpiPWvXyO/YvUSrEgtcmessV/unESf0pZkscx
 Wx/TfNBmhhwb4gcHvyQfbub6fL+j/4qXmtsRfcXVcXQIDgUcews+GV08ajhdznih
 GiHzrOEmS+3cRWBgRw/r0da68e9fM/fh4Z9XawGLVVnqCCuiSAAgQ==
X-ME-Sender: <xms:EAXYYDAXl0bL-S3T0-tqW-TL5TEHRyAZDFVgS-zsxQUu9dDNH8-z_w>
 <xme:EAXYYJgbYBU3eC_Y9svrHJLwUs8RVEuNCG-iZhn5cequ6WuigHPxVBENsgB7-vGb9
 ZqY0Qrkdqb1OPzEM5E>
X-ME-Received: <xmr:EAXYYOmnNqqoOpdJMFleiPLPEP0Org9Ynp7x8Y0dMQTLotn4I62b4t4qDwGM8E9hbQrj3a89GqA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfeehuddgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheplfhirgiguhhnucgjrghnghcuoehjihgrgihunhdrhigrnhhgsehf
 lhihghhorghtrdgtohhmqeenucggtffrrghtthgvrhhnpefhjedtkedtueehtdeifeetke
 evffetjeetfeegkeevgefftedvudfgleeihfdtudenucevlhhushhtvghrufhiiigvpedt
 necurfgrrhgrmhepmhgrihhlfhhrohhmpehjihgrgihunhdrhigrnhhgsehflhihghhorg
 htrdgtohhm
X-ME-Proxy: <xmx:EAXYYFxA0LFQvwZP1rNzZeZ0gQBHm2W35kqSXn-UygMFqFGQJ8zRkw>
 <xmx:EAXYYITTkShcHWtc_grNQEIkS8t-Mojh0uSopXsp29t9_UtuLy6M_Q>
 <xmx:EAXYYIZDtkA2YTKCYXg0e336aUm20qYA7hx-vKqVstigWo3Kjd76qA>
 <xmx:EQXYYNJO5Fj3kYT1hU07ISgqcWtMwIVLVidaufjjzE5E7KLnC_mJEw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 27 Jun 2021 00:56:41 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH 0/9] MIPS: Migrate pistachio to generic kernel
Date: Sun, 27 Jun 2021 12:56:22 +0800
Message-Id: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210626_215656_452038_7F0B1FC4 
X-CRM114-Status: UNSURE (   8.91  )
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
