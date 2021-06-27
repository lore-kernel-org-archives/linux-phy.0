Return-Path: <SRS0=Q81u=LV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26F6EC49EAB
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 04:57:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DE49461C23
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 04:57:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DE49461C23
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcJVmgR6mOj1Q57PHBEfenu1On+YJGU8fak+IBfWynw=; b=CP6p265SheiESM
	KLaZkcM5gnch1tW2kxchcgA4JOTq5hQF2suCQzmDTJ2G7Z9a329uGWnyDfsf6Zmu8ZZdM/szUem9m
	XU8FF0na39M+NnAI1nt9HBKBH/SmjnDUVBfDkHsO8FxnOgvoI+nmk6UmX1Z3X5W+vDmoR/Y74uU8i
	/GqJnFQRVL7pfA6stclh0xkvjlCFEJNW1zPl9AhCgCBgrmFKw5sanepmF/6nkxCkPUeIjKH7s+6aw
	9cf376BF9juP/badUdRQl5AEd0kJbwtoLGfQn4004k2Kp/mnt03GpFCFUdg4iH1OFJm+Cr4YFn61h
	3PtlWvHkR1fPbqnV0XBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxMrE-0057zl-F0; Sun, 27 Jun 2021 04:57:24 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxMrC-0057zE-9U
 for linux-phy@lists.infradead.org; Sun, 27 Jun 2021 04:57:23 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id AD1E05807B0;
 Sun, 27 Jun 2021 00:57:21 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Sun, 27 Jun 2021 00:57:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=E+Q3jJXoaXwDI
 JPG6GplM8tmB+spkJC75M4I54KAlkE=; b=cnEEeFz/v0/wfFsR7voQuxp3u4LLu
 6/8Hb+WTUfPpTdtaCfF/ZIYY9sr1KNBe5l2k0xjsYzY0h3TJjcku1jb7W/bpY9nr
 GubYrLEhxQn4LDNvYu8F/UGK/zdybIHVJ15QoFRZln4dpwVf+/2j+7yVVOKAcS2B
 8DeHbkuUaxev5dO5DStrbkT5MMo/Yq9s57c7oFFiK/mLAVvzMI7ZQXSQ5x0qZ+fY
 b+/VRvSIRyalqQSqOG+dz/Dhjxnhs/fMv8c83OUTI2B8o40nyM33EUCiSSYNThjg
 4W10GD1ETxYBHK75KEwfl39mI55+30rVBRE/2GeXoDGgv/hWERrssJ3Wg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=E+Q3jJXoaXwDIJPG6GplM8tmB+spkJC75M4I54KAlkE=; b=FvFqOQKg
 phFVA+3VYqh6xsFL9sYPcZBI+cAAiUB9KNdhJJsqHKtPHUhoZfZQSFryDE0/5yMZ
 Mj2DU3MduK4I9r0yz0tZ/pGjt3s5E9zHhx6Da7fWdOiDHvyLc4sEQ+4N9fdvsFb8
 4KjqXxQ8fUguJrBSbIwnWl/pU4Ui3roNxT5HJPhJEgEwZoehC8IBV0wHBHr3c51/
 jOXT3WqQeEeQX36giBGpugcGXCfwZaW7yc4u/Kfay4LYuVVP2eRfUXgMA2xo0vjt
 tiSSu9L+eqM+TvPHKIn+q2Xg0OvDjrglJM0FYllVtLqbrwac+UWN9ECFe7/L8Eaq
 TNblH9qJYnNKbQ==
X-ME-Sender: <xms:MQXYYDF46BXANxfEz_M47gJUxM4iZydnI4O4KFQwntMcujKOfXvISA>
 <xme:MQXYYAVPGcMK7rEEt7VgbUXLy2sKseBpx3VjixbhmcfNxlRrmMP0BFJUrx4ilmfcA
 or8Bm9CoGQXaQ7aAg0>
X-ME-Received: <xmr:MQXYYFJ7wfQhcmY0jolzoSbzfbc4l5Oy-TS----2ZkKU6dg6QlN-6OX8mHnZPwU6LUEQQENIlCg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfeehuddgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheplfhirgiguhhnucgjrghnghcuoehjihgrgihunhdrhigrnhhg
 sehflhihghhorghtrdgtohhmqeenucggtffrrghtthgvrhhnpeejiefhgfetleekleffud
 ektdehvedujedvgeekkeejfefhhffhtedutefgtdffueenucevlhhushhtvghrufhiiigv
 pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjihgrgihunhdrhigrnhhgsehflhihgh
 horghtrdgtohhm
X-ME-Proxy: <xmx:MQXYYBGaqBtBMqy5Gq_fFxgejLJhcJyH9_0GJPEFiR5UW5lf7gTQGQ>
 <xmx:MQXYYJWjJEPbcXakXsgK79DuxBxgCTD5b6TYehiksv-k8I2TaO71BA>
 <xmx:MQXYYMMg1AULTheLmU7UyRGcdGS4NNfMnQ7I8UblCePGoTcNBZ384g>
 <xmx:MQXYYCNFf-UowdSHepomlpxf5LDmhm8oWio3d2DzyuMjZhl90tznYw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 27 Jun 2021 00:57:16 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH 6/9] pinctrl: pistachio: Make it as a option
Date: Sun, 27 Jun 2021 12:56:28 +0800
Message-Id: <20210627045631.2882-7-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
References: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210626_215722_458178_3BD1A616 
X-CRM114-Status: UNSURE (   8.13  )
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
---
 drivers/pinctrl/Kconfig | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index c2c7e7963ed0..a189f1b3da5c 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -248,12 +248,15 @@ config PINCTRL_SX150X
 	  - 16 bits: sx1509q, sx1506q
 
 config PINCTRL_PISTACHIO
-	def_bool y if MACH_PISTACHIO
+	bool "IMG Pistachio SoC pinctrl driver"
+	depends on MIPS || COMPILE_TEST
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
