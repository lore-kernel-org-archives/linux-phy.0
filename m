Return-Path: <SRS0=xi9z=MN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F091C07E9B
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D499961178
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D499961178
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYY7j5WUHEvtWQ8jcKnJWUeesLS0dgp1Ww8m3j5xsq8=; b=glUPfmVAhmYrvu
	f/oGYDb4nYu/NjTCfo30KzCgi/S9Zx3Zv/qIAk2zoVkSGs3BcFknz4e8u/OkVx4nLY5M2XS7geksV
	eohSaxvjY6WlaRdd0A3nL4ZhBBRpDCrSGuNynhjLSWu6sHM3vkfaiMtlHiAtUkonabO/LMMj3Zqs4
	HTe1DvUPmhRUL7NsGROJDoZIT3vkjvq7HYyelr/IBjq/sL0h9Vi8bqfPKah/rtxl+cByAKu7Eednb
	xuG2z7736mjZnjVSv9JRY6C73ydzFDqj9ktuQzNG8FdbN6MwSvc/Kcd6+eNwkr2iiCuO5laR5c7Xs
	b2CypGuUQ52+ECNHnswQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m62VG-00ENR4-Cm; Wed, 21 Jul 2021 03:02:34 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m62VD-00ENQi-Nn
 for linux-phy@lists.infradead.org; Wed, 21 Jul 2021 03:02:32 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.west.internal (Postfix) with ESMTP id 836962B00513;
 Tue, 20 Jul 2021 23:02:30 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 20 Jul 2021 23:02:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=l9PH4QLd/cM4/
 cQPPaMBDFls0x1FzgEX2pJ1FwyEWZE=; b=cZcSPfT5nsjjHMnKkcGG4XUIp3fUn
 lVTfUhUBnD0sEZAZxcO5JLQyhNrfPihJq8cjYa9Dc4vG7I8L2Sm1qO0/XW9TzFV/
 GJdDKjNwXmmH2w6hhmMRc9fkhlrLB0xfssZeMjIb4F28e3pG7s8vBXZ/PUqAQ9Xb
 F7YuX6ZODSCrZHdE0WT39bubElqe1j2u2t49yJF3i1rP5mWwIgTwbjv2EAJjISg/
 0ezy4afrUBwW18uFMIUGUZKP1Q1qfxIauaNdzt/lNLsmcy8SnQOnJ5p5ndJMkiUj
 2iq2oJr9ol0740UlZiTrGPuCcvY+Hu/pGvnSf1CXVg/qKDnlLLb1wjMNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=l9PH4QLd/cM4/cQPPaMBDFls0x1FzgEX2pJ1FwyEWZE=; b=vunWxpF3
 uuKUM6YB6XS6QSZKOE0H+AkNwupXkbVZEngcYsIOVh8iKdcoRK6i1A9woMjXTwLs
 gIS58kw0Zlv/daSi84xOU1fMgmXvZrFt2Co/uaPStn3DVfeUURFgt18sVNHK3i5o
 MWpyn7Ezm/Rpvzc/cmGM+Y1bliJX79vV6fxPNmt9j78P/Fu5Mvivrx3lZwQQCQjP
 Y8fIv7MUe7r9nzeAD6Xa1qhqM1bFQznmm+Eo9kp7K1Lgw0TXWLEz3s07+x7jIdnD
 h3/Gd40mVbNd8c3zGOXuRDKLoZPm6bqsjSVIxuAsdIiKkHO8y5GZifRiEHZcPZHJ
 ahGStgAfpR232Q==
X-ME-Sender: <xms:Ro73YOtff6AAhz5vCgIkNpp-8y4GwJVuaAEaYeRp-EV1NRU0PKZwNQ>
 <xme:Ro73YDcVA0U0Pq1dxbjDXIdyTv7xu7-XeyU_ZJHIKwe5_Baee3C91g8PaF5VznFUE
 4I9hO6i9oI7IDuY_AM>
X-ME-Received: <xmr:Ro73YJzKc18epeX5tVFiIXuZuIMRcJ7AJ3_5cWSHmxDLQ6QbIK9BJk80lYOCncIQ1W7ErB-gwS9D>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeefgdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhepjeeihffgteelkeelffduke
 dtheevudejvdegkeekjeefhffhhfetudetgfdtffeunecuvehluhhsthgvrhfuihiivgep
 vdenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgoh
 grthdrtghomh
X-ME-Proxy: <xmx:Ro73YJPYCAFKXpYcGNRWE1R5jqw4fsJy_vI09Df-msnn0RhbcZYKQQ>
 <xmx:Ro73YO8MIMGM_ZPYPsyyDc32Txm86m_lhT7mHHqgqrdWMYODZh1qVw>
 <xmx:Ro73YBXYfrXRWvymNMQwLitWd1b6LS58vi5pAS1XqaQ4svQouYu_gg>
 <xmx:Ro73YP2471XS2PsYEUO0Fiosw63bVz3GWkWgUd9Yp3UMML3cOLNmM6FZR2s>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 20 Jul 2021 23:02:25 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v3 6/9] pinctrl: pistachio: Make it as an option
Date: Wed, 21 Jul 2021 11:01:31 +0800
Message-Id: <20210721030134.10562-7-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
References: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_200231_834278_5FD57B53 
X-CRM114-Status: UNSURE (   8.21  )
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

So it will be avilable for generic MIPS kernel.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
--
v3: Depend on OF as well
---
 drivers/pinctrl/Kconfig | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index c2c7e7963ed0..295f5eec58a9 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -248,12 +248,15 @@ config PINCTRL_SX150X
 	  - 16 bits: sx1509q, sx1506q
 
 config PINCTRL_PISTACHIO
-	def_bool y if MACH_PISTACHIO
+	bool "IMG Pistachio SoC pinctrl driver"
+	depends on OF && (MIPS || COMPILE_TEST)
 	depends on GPIOLIB
 	select PINMUX
 	select GENERIC_PINCONF
 	select GPIOLIB_IRQCHIP
 	select OF_GPIO
+    help
+	  This support pinctrl and gpio driver for IMG Pistachio SoC.
 
 config PINCTRL_ST
 	bool
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
