Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83246C07E96
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 03:16:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 40C6061CB2
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 03:16:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 40C6061CB2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=787guaXomFoCLpbufei3rjNJUhJfSNllOdhkw7yeaeM=; b=aU9sC+kJCm+gKE
	J8uOIThvDGD1TK2+uGqjIrYcXzj+UAaU/BvzbKsDOU1MP7SSm/myGbOswaf4ghImyCATlKf3f0mI5
	R3fNhVHQs+q4+tqdIoghcCHFngKFVAkb8CJlKC3nUljNFYhzLkSthMDm9tErKEhUthQkv1egbJ+aw
	AmcdWRCwXZOwwlg3L8giWIcbTLnvDskBlnq5R4PiPUxvnNz0MjCNTTMKYhCV+h/9KSgIp/ynScmJk
	7bEQLMRcbma7h+KI3mBsloAqAgetzVh5j7GGWL0P1x9bJVBoGU1/aHT/E5LJNjNz3MUOg80Oibhiq
	HdzHCCKxOgPRI7XLOHLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0y39-00DGIg-NK; Wed, 07 Jul 2021 03:16:35 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0y37-00DGI7-J0
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 03:16:34 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 01B40580452;
 Tue,  6 Jul 2021 23:16:33 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Tue, 06 Jul 2021 23:16:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=GDs/JfNH4KsVD
 SUz8zkXViG0OizllYpknHVtjbEEgAA=; b=K4L6JwUlouPS/dn8F2J0nuHF7fvKi
 rUULNpn+pgqVxt2QRO8odG8Rzo1H3lMsQy1C7E7C/u6ix8Mg7jYawGHdI8Iz2/bq
 5GtWK8InO8bzFKUFJjjd7fRkctq64+2Hea5WzCRyREH5Ab+tJUNNLu8kvirMv1k8
 JW61Iw5bT/iX5FXXfznbrWP6kxqu1cWrKCSnS2sQyYj90EUXhISqTtSnaYqCVfvD
 KLE2i1QKE5+GnXWfzwWBs+GXGurdjVTO6FUygXKWqwWyc8E6ca9SkHG+4x+9Jhtx
 fRiM5vGYb04XgNLXD+4NO+qYrFEn4w2rIUrq6DKj6HEE/lg9rucBvLuZw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=GDs/JfNH4KsVDSUz8zkXViG0OizllYpknHVtjbEEgAA=; b=JD9ZKW/2
 xVzfSp+j5NmttP3gJW6QxM03+5P3uWjGaLDkNQCOPJPlpDeoDQUPhcfr4Tj58Ug/
 VVKjIyCnSd//+SGhkV75V6GkXR8XqqeKynQ2G+NVDSbl4Yi9WO9eJCQOO7WmmtmN
 MB4dfCXv8nzPNTAXOJ2ScCRzSSxtLdhWVNdRJ9eKQ3uwMkrFAMcCr1Yq4J86rNpk
 MRHLYAQQls/uLI9WI7B6ilPMFtQlUAtiiMslyG5rTbM5ButYJdBhpGEglckFCggJ
 1ylx6YOPD+BPmuHfm5Ddo9wXzUFskaUkMgycsUSA6HERuqRe9u3wzwevjnQesius
 CATqcztEMNVdiQ==
X-ME-Sender: <xms:kBzlYL6-9OLVIm_LXUb7rl_NjXq4lN1Qrsr6PGH4Im6NIYZHsEd9AA>
 <xme:kBzlYA4HsmgP9yck1KL8dFbXpK0Sgdasfz4U2Dr5v9NIW_bGQREBHPXYhTQj991O0
 L_DvXdQfDtnGlBbZow>
X-ME-Received: <xmr:kBzlYCftayKVlRl1OwFi40-ZshBPlwZPqoW1PxoaM7Zb5PjXYW00cQHMaqp-NUwOSPNUBcYwvviCPIYckg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrtddugdeghecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhepjeeihffgteelkeelffduke
 dtheevudejvdegkeekjeefhffhhfetudetgfdtffeunecuvehluhhsthgvrhfuihiivgep
 tdenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgoh
 grthdrtghomh
X-ME-Proxy: <xmx:kBzlYMJv3FVf1gZOWUMv6w9Qydtjh6f1C5kGk8E_rpeI2_EimLMbyQ>
 <xmx:kBzlYPKlXxo-NaS4aGq4w-uYd6TNaFJsvk90cEHaxXcKZrvPsq-r3A>
 <xmx:kBzlYFywz4GEMmWIxc8JRaSup6mdeZIsD32InLSV35SfvTqKnk6bYQ>
 <xmx:kBzlYMCYo_OdhZRcGb8nvZcC4HofW9APZiXm67817lel5Rv6B9BH2Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 6 Jul 2021 23:16:28 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v2 3/9] clk: pistachio: Make it selectable for generic MIPS
 kernel
Date: Wed,  7 Jul 2021 11:15:46 +0800
Message-Id: <20210707031552.20166-4-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
References: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_201633_732646_FD996D22 
X-CRM114-Status: GOOD (  13.02  )
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

We're moving pistachio to generic MIPS kernel. The clk driver
should be avilable to the generic MIPS kernel.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
v2: Depend on MIPS || COMPILE_TEST
---
 drivers/clk/Kconfig           | 1 +
 drivers/clk/Makefile          | 2 +-
 drivers/clk/pistachio/Kconfig | 8 ++++++++
 3 files changed, 10 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/pistachio/Kconfig

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index e80918be8e9c..18d31b654d02 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -389,6 +389,7 @@ source "drivers/clk/mediatek/Kconfig"
 source "drivers/clk/meson/Kconfig"
 source "drivers/clk/mstar/Kconfig"
 source "drivers/clk/mvebu/Kconfig"
+source "drivers/clk/pistachio/Kconfig"
 source "drivers/clk/qcom/Kconfig"
 source "drivers/clk/ralink/Kconfig"
 source "drivers/clk/renesas/Kconfig"
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 5f06879d7fe9..7339a9eabeb4 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -97,7 +97,7 @@ obj-y					+= mstar/
 obj-y					+= mvebu/
 obj-$(CONFIG_ARCH_MXS)			+= mxs/
 obj-$(CONFIG_COMMON_CLK_NXP)		+= nxp/
-obj-$(CONFIG_MACH_PISTACHIO)		+= pistachio/
+obj-$(CONFIG_COMMON_CLK_PISTACHIO)	+= pistachio/
 obj-$(CONFIG_COMMON_CLK_PXA)		+= pxa/
 obj-$(CONFIG_COMMON_CLK_QCOM)		+= qcom/
 obj-y					+= ralink/
diff --git a/drivers/clk/pistachio/Kconfig b/drivers/clk/pistachio/Kconfig
new file mode 100644
index 000000000000..d00f7b4a25fc
--- /dev/null
+++ b/drivers/clk/pistachio/Kconfig
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0
+
+config COMMON_CLK_PISTACHIO
+	bool "Support for IMG Pistachio SoC clock controllers"
+	depends on MIPS || COMPILE_TEST
+	help
+	  Support for the IMG Pistachio SoC clock controller.
+	  Say Y if you want to include clock support.
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
