Return-Path: <SRS0=Q81u=LV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E838C49EAB
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 04:57:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5142861C43
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 04:57:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5142861C43
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYE9Y5JRDhqaRn15MOdlvRWoKmt3+DIGNWFmM3CTmok=; b=vbMZrE4dU+0hM6
	I1Ty7pEPyRQoD0sZQ29wONNQ2i0BspIujh4UszeBv/Wc5YTfh95PjQmhMI88D4y7LzA2khcQpVA2z
	Zb0oUZwGifvmGzteJ7Dt72rzDj+TRKNu34pOn08vZ9fOLwYff876lSsCiXCnCI4l0AAsLIkFGmI75
	IaCwfVNHUAufDn/qu1xXwEk13ZSNude7rWAtDLUelVWgaZmeTys4q4MZoagK4My3VIMVHbVp2BjNa
	zxvwF0AO55P3nF4W9un/4lfOcjwWso5V15WBF9iBNvIv2EHs8PwsL6jQDEXtv7tL7hYeZySsh5+1r
	tHx8JNgjtguG+jO63etQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxMqy-0057x4-RY; Sun, 27 Jun 2021 04:57:08 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxMqv-0057wU-Hj
 for linux-phy@lists.infradead.org; Sun, 27 Jun 2021 04:57:06 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id E9B875807B0;
 Sun, 27 Jun 2021 00:57:04 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 27 Jun 2021 00:57:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=WgFoz70/Esrgj
 fDgiLzMNjhpqDNBbnZfKwv0f/HH9vU=; b=CqmkzLwBpcGGo2fDUBiKfvwpvu96o
 9CLRBEbuEKKZ5hJu6+ZC7zeob49SunB4v38XwGp4dTIutp9uup6jDqcNUSjmQQ3P
 lsgQh32HOQaRuzWHTmTihaQXni956bV4CPjO3lJpKuK+cxQreUetIsoimB19+EZY
 FOhOimYWYWi2NKl5WRLklPDqOaMeDtNrEgw2PsMFSyWfWREjCaGMPmWE9NqJgOqw
 4GdezyYYd5GXXNm+zei1tVa3zdK3+DBCiUtBZjKM8FX6S1b6jBHUeJ1OstD8H4wg
 aduixdU9mey1sj/l3jn/WuxPMj+zYufUnnVL0iJy0GuN1jUppTIgz/Wyw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=WgFoz70/EsrgjfDgiLzMNjhpqDNBbnZfKwv0f/HH9vU=; b=LRr1HPy6
 gMh9pYStIuoVjFpL1R1hfRGI4qQHNjjr3dKdVjYZp0jHwu0HCjtJyl3ZTtXCxOZt
 q0JtAcAlhmVy1WemCn9YR3fr1t2VwNAxUJHinKHdv6a+ahjrRNrudCKdYf9ks0II
 /Awm+2TiNW3KYUJ9QRtKwz6wM9FF0G8D8T4PLCoYSxi5Rb42YDiYGMU3hMK5CeGi
 SaWdGP1n3yD1xw+OjOeBJtTv3JIZmBEBc7t49RWIz15JHQm4JSsRYp1fR66bts1K
 pEjlqfxvU+SIx4Sx9/Ea/XT2MSR8BzdBIzEemyyoz17zRaPenleDWzMcaMqJMcmg
 TkDRk8X86Etg1Q==
X-ME-Sender: <xms:IAXYYGzUJpWO6VdQkq-IwFHh3k16p-upRf26qxKOhvDuq8QcKmHTUA>
 <xme:IAXYYCSW5yfFXDcO65h6kFtdxzN8qtD4FMS_oaeYSHN6R_MmkU5VGppWfTzDXGRnL
 75QSGwaRKADvgg7kgc>
X-ME-Received: <xmr:IAXYYIWdD6eI4UIMmhpu1FmZlzOHXOIlD0yDrDHNhc-89Hq4a2NpQCCyzyX_zPl4UVehCuKlhFI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfeehuddgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheplfhirgiguhhnucgjrghnghcuoehjihgrgihunhdrhigrnhhg
 sehflhihghhorghtrdgtohhmqeenucggtffrrghtthgvrhhnpeejiefhgfetleekleffud
 ektdehvedujedvgeekkeejfefhhffhtedutefgtdffueenucevlhhushhtvghrufhiiigv
 pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjihgrgihunhdrhigrnhhgsehflhihgh
 horghtrdgtohhm
X-ME-Proxy: <xmx:IAXYYMj7qvpMw58D0dYkw38Fsy_qTXl4ylIj3tu7hgEu4TLrcOIhLA>
 <xmx:IAXYYICopiFnLm_WzvL5SQszDPo4iNgwnO6JjCyGBMeMNqAEyEexgw>
 <xmx:IAXYYNJaP-Z3Z_yFtpzP5Ii-Tl0KVe405If95xMQjb-Rln8dPDhytw>
 <xmx:IAXYYM5aCMM5yIUdTeEO7zXfZifuXplzv-HETw45XaR_7CQKu3K7pg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 27 Jun 2021 00:57:00 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH 3/9] clk: pistachio: Make it selectable for generic MIPS kernel
Date: Sun, 27 Jun 2021 12:56:25 +0800
Message-Id: <20210627045631.2882-4-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
References: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210626_215705_695426_7BB0E795 
X-CRM114-Status: GOOD (  12.04  )
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
index 000000000000..efb7a7f45259
--- /dev/null
+++ b/drivers/clk/pistachio/Kconfig
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0
+
+config COMMON_CLK_PISTACHIO
+	bool "Support for IMG Pistachio SoC clock controllers"
+	depends on MIPS
+	help
+	  Support for the IMG Pistachio SoC clock controller.
+	  Say Y if you want to include clock support.
\ No newline at end of file
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
