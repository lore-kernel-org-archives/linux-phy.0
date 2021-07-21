Return-Path: <SRS0=xi9z=MN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UPPERCASE_50_75,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A415C6377A
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 21C4461029
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 21C4461029
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9J9hAzLA3tlcE3+j1KO7rVp1457zyTsGFkw7ne+Xk04=; b=pTmMo0j8Znr14S
	5jw6EO2M7F54EegPLodQ0RGqRw4Z2E5QgZokjCQBy6sHNv1wvnnbEgg/74gQ7R3Zc1MOkbnwHEAXY
	wnt1BDRMHff8JOrioMaqo9Pe5niqZYb+Fd/50g6co3aXlhiUKBtTfe0kX/he/2VMTczSpMoXWQHFg
	v5ItBQryKYuZeMCeoTKgThK7LWo7yra9xyR4hbtfksEGkPdYhzi0OXfWNMRceEKQPGef9Vj0LKap8
	Eq7+zMiI5kRgiQE8hCdjlf3jKrxAeltYwBtiwkoCtkBhVAEfdjR9yNV4/0+mCB10FqTX74Uwt4OWh
	6V+O4DRsb48Q3O0c4rsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m62VN-00ENS8-M7; Wed, 21 Jul 2021 03:02:41 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m62VK-00ENRa-Jq
 for linux-phy@lists.infradead.org; Wed, 21 Jul 2021 03:02:39 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 712282B004FC;
 Tue, 20 Jul 2021 23:02:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 20 Jul 2021 23:02:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=izRxClR9rmdMb
 QxNobmULuQgWdizJr1NuVHnqGsRHa4=; b=Meqd1jZhgWbw1K61vQskE88ZbgA96
 prD1GIp77u952S5A2YiZtNzwoinS4858CeKjeAHpog7lAbPHW/qZbjcvODj9aR1u
 VKtKG+KDl5V1qNxHGCZlAF5bl04uonTvaxNdHm2/GcKF2tOI47rBK83C5y3yUc/p
 sCCgJi7D5RFT61GjQAk72zTXsJVvF7GWUYLAQnpZSsZN4cAAfRcEhSHJkC6jh+9+
 0Yp2T+U4XP9vF1gGuFiA9lviGGoxSYw7znbxsDbkHQwtY/fpZSfpApDwjDBlWRHu
 kn5wAqpEz+fjD9WyvSbitsu0I0s598W5DGiwTXz2fMu2jsZStpXAH2Usg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=izRxClR9rmdMbQxNobmULuQgWdizJr1NuVHnqGsRHa4=; b=YWQXb++M
 Etq8Dci2mMl8J/rGo3zAX2ufrA0EIYCPRx/D42xCKUSTgv6J3RCaMwVFjakqmlGa
 r9/Beq72h5rCjwUOrmddGop01ta3Iv9oCAp4qjR94lbcrgxUiHq+WoBEDYD8S31j
 AX9cXLOUhGxXkVsb11W1cOrnDfcH0vKQ6cg5Zdq15fZe3r0S+PxclJVCUy1qkrvq
 cQc+54oJgYvNwg+EtnV0fPpMeHoQK4M9vtGK7zHoV7xToi8bmAb24P9nE6/3D+Uo
 QYT+MoOUH0EpWAOUnMwcv5aF2gznnbjl4H3SfIbx7wuVgmM4ycSE6sFml+orQYG6
 Cuxw3zkjKHcdcg==
X-ME-Sender: <xms:TI73YLEwMpvV6EWTqqBWeoxwGoc5P9OSOe-48Zz6_U6h8vKsgW5ZUw>
 <xme:TI73YIXdP9ViknyndM2ktVLH9EBIo1BZ2pr62zkZTTgCHNrEsx-JmoWx6rOrMY3ST
 P9zjdUWQyqzoWNasE0>
X-ME-Received: <xmr:TI73YNInM7EE3ykBeHDJSlWpLAs-lkrk_6pO8aSBF7a752zOeUioG4ewBW1utXzQv7DTcVLYjMtB>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeefgdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhepjeeihffgteelkeelffduke
 dtheevudejvdegkeekjeefhffhhfetudetgfdtffeunecuvehluhhsthgvrhfuihiivgep
 tdenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgoh
 grthdrtghomh
X-ME-Proxy: <xmx:TI73YJEMCn8eMG2abmdW3QprCaKPILBz5BMx-wbsWXH10hNOhju4xg>
 <xmx:TI73YBVkga5zF4R6aPlgpmvoRqyq4ccLKJ1iE1HzQe4f6-N1bCUdNg>
 <xmx:TI73YEMXRYfyy1-Dt6IZksxeks7QI57NwCURoCo1g4gnN4qA3qUTxQ>
 <xmx:TY73YKMljRvaO8NWZMl8ZucHkWrz3yeRSTTcbsEAwbvL6XhC1OP8TEiTRBQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 20 Jul 2021 23:02:31 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v3 7/9] MIPS: config: generic: Add config for Marduk board
Date: Wed, 21 Jul 2021 11:01:32 +0800
Message-Id: <20210721030134.10562-8-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
References: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_200238_714496_B10772D8 
X-CRM114-Status: UNSURE (   8.54  )
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

The config is minimal config to allow it boot from SD Card.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 arch/mips/configs/generic/board-marduk.config | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 arch/mips/configs/generic/board-marduk.config

diff --git a/arch/mips/configs/generic/board-marduk.config b/arch/mips/configs/generic/board-marduk.config
new file mode 100644
index 000000000000..05ca34cd5a73
--- /dev/null
+++ b/arch/mips/configs/generic/board-marduk.config
@@ -0,0 +1,53 @@
+CONFIG_FIT_IMAGE_FDT_MARDUK=y
+
+CONFIG_SCSI=y
+CONFIG_BLK_DEV_SD=y
+
+CONFIG_CLKSRC_PISTACHIO=y
+
+CONFIG_COMMON_CLK_PISTACHIO=y
+
+CONFIG_DMADEVICES=y
+CONFIG_IMG_MDC_DMA=y
+
+CONFIG_GPIOLIB=y
+CONFIG_GPIO_SYSFS=y
+CONFIG_GPIO_PCH=y
+
+CONFIG_I2C=y
+CONFIG_I2C_IMG=y
+
+CONFIG_MMC=y
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_DW=y
+CONFIG_MMC_DW_PLTFM=y
+
+CONFIG_NETDEVICES=y
+CONFIG_STMMAC_ETH=y
+CONFIG_STMMAC_PLATFORM=y
+
+CONFIG_PHY_PISTACHIO_USB=y
+
+CONFIG_PINCTRL=y
+CONFIG_PINCTRL_PISTACHIO=y
+
+CONFIG_RESET_PISTACHIO=y
+
+CONFIG_SERIAL_8250=y
+CONFIG_SERIAL_8250_CONSOLE=y
+CONFIG_SERIAL_OF_PLATFORM=y
+CONFIG_SERIAL_8250_DW=y
+
+CONFIG_SPI=y
+CONFIG_SRAM=y
+
+CONFIG_USB=y
+CONFIG_USB_EHCI_HCD=y
+CONFIG_USB_OHCI_HCD=y
+CONFIG_USB_DWC2=y
+
+CONFIG_CRYPTO_DEV_IMGTEC_HASH=y
+CONFIG_IMGPDC_WDT=y
+CONFIG_IR_IMG=y
+CONFIG_CC10001_ADC=y
+CONFIG_SND_SOC_IMG=y
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
