Return-Path: <SRS0=xi9z=MN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 774BEC636CE
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3FAF261178
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3FAF261178
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=787guaXomFoCLpbufei3rjNJUhJfSNllOdhkw7yeaeM=; b=m0yB6uXfviiFiX
	6lt4hOV48uI9ODx6DZQyd2LG15ri8Xsg2mAAfS7Xnjqdnoday95N03iPjQYSXLAZGTgVFI9L5oge0
	mX7g6pFHNeNMMscv9DrCWkLGSwlaPvS7xsZiM7qR08F6VyawPIshulH8AefNNm56rxHnWh2aDpGjT
	JUg79oBt8bCrvNPENwthEaj245+zB85erzrNoJVBsmSf8Y4IE5NYPKN/KBc000gJoXNywqm4rve4C
	WHz7H4UvFKCQfAHam4ZLH64USnPt7jkllEbRmnuEgZ2hxrfg9nnDttz+KKbC4U9yFZoqPgeB8a6b5
	+N2GGjxXJcXQu0O4XFvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m62Ux-00ENOJ-Pg; Wed, 21 Jul 2021 03:02:15 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m62Uv-00ENNt-VW
 for linux-phy@lists.infradead.org; Wed, 21 Jul 2021 03:02:15 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.west.internal (Postfix) with ESMTP id CAD892B00505;
 Tue, 20 Jul 2021 23:02:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 20 Jul 2021 23:02:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=GDs/JfNH4KsVD
 SUz8zkXViG0OizllYpknHVtjbEEgAA=; b=rixyaawfcIJhjLBzuGTZYe9NTZ+HE
 Dmp/Eu47mF9abPzBncbyBu6XPWl++i5qHZ6d8izs6OK9m7TC39k32mcoMRFUs+x8
 0OVokVOxGgQltLtz4Fgm4p4DORW6MyL0jMb8v6OqI6Ycc39CxPbP+pysya3SnZT+
 5xoecNah+JqHUnEzIcK2T4CxIcLalK8oNYv3vU7bzP9RhRG90PWxnOeGd+xyY3Xa
 Q0m4kd07rD9CfTAqPREALhzg0ANsbJAAngvJmqXsqjEDO0nah51QfP2IR1d+eqOJ
 Cf/Xa4aIh0Z4H/tyk3EQ2COE0wthoBDf/IF46UbvaOWmLSIXzPlvkFpvQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=GDs/JfNH4KsVDSUz8zkXViG0OizllYpknHVtjbEEgAA=; b=d3M3lYBl
 FRaD+DbFUmStFLfjfQQqFEzBnCED63G9DGKYXiVXzokygc4035XuNDR5ISsLr+Uv
 DwjpCGhgW0KrROszJ/+pjqpRrS7q2cfFOuezrFoC8Elko3a/Cc9yxGJ9TOuOFiBW
 Ul1ZxxJxNJXoJQc4UHUqESsblKsAnUWUveF+NJh9v4S0arUtl9do0JvGeao9hIBj
 bIBwQn6FajzRz/o93bN1m10BD4U8i1MqK3PW1FTKr0iumJL8lf/Z+eWz2hgmKrf0
 IfwNJFFRC2N7FW0GWGywl/vuVwIjvddKV1VN0H+nfH3+zTbSnxElxyFtvuzS/7Ed
 V6rFxe2bjMiQLw==
X-ME-Sender: <xms:NI73YA276IokicYfqxYAgZh00Z6LdeUfH9lvxnnJ4zADGDQnBYkAsg>
 <xme:NI73YLFuFzur_vxDW4xE5HVv46rz4rwSNU5xpO0TBZkuVcDvEi3vlxVwGz8ZTmW3I
 tUK7nbKbrk7Z1-nVMI>
X-ME-Received: <xmr:NI73YI5_-bbHNujC7TAAsFKkx7nTA1jbVCJoqzHWI3OCyDvOU0zfLddXH4wWYZnm3Etz7Q42XAe->
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeefgdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhepjeeihffgteelkeelffduke
 dtheevudejvdegkeekjeefhffhhfetudetgfdtffeunecuvehluhhsthgvrhfuihiivgep
 tdenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgoh
 grthdrtghomh
X-ME-Proxy: <xmx:NI73YJ1PoBA-eReD_zGqXKY8LmenX6VmiWJOns6dcgYnnuNqw31ZbQ>
 <xmx:NI73YDG4yOL4HGC5YrN1eq9fmrbCZiTqYEy3Sqn6UJ-G7AXDJWGjZQ>
 <xmx:NI73YC8PBbFoZzphNnUhh6ejPAUP_cejmlYUnYmY_dbBx6hxHHZg1w>
 <xmx:NI73YL-4AY36HCdFxtQEcMmbx-LLA890cF77aHt4lGyNKcY3g4aeSiFbBzo>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 20 Jul 2021 23:02:08 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v3 3/9] clk: pistachio: Make it selectable for generic MIPS
 kernel
Date: Wed, 21 Jul 2021 11:01:28 +0800
Message-Id: <20210721030134.10562-4-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
References: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_200214_076480_A9CC7F57 
X-CRM114-Status: GOOD (  12.88  )
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
