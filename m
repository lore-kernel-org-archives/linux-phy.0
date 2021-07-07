Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UPPERCASE_50_75,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4AE2C07E9B
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 03:16:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A130E61186
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 03:16:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A130E61186
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9J9hAzLA3tlcE3+j1KO7rVp1457zyTsGFkw7ne+Xk04=; b=vMQgBiUlxt6zc8
	+VedtIfvVJNKl8qCYmDLOUml8pvBjPLMLQJfL+OQkvglZPjlAnD3P3Q6sSQLvHxFUVIsJIfBqN6Zh
	nArl8HQ4ut7iP8ZVoWobTUmsh/LO+McAoVpr2DYwH9kVN49K/11bZVb+gAUqGr8L5O3BteVCi6BZC
	5gGNJwXkn+j7kyUr9FAObhAzrsdSe1X9UYtSCMbhjF22e80USLr7fcGxJo+9MeXEzM9Y7ntzJwV0e
	SAzGhffHWPbNQepkwXz22iqzvrT6FEYBlMTBHGbsdJ8OqCgHZ6zv3mf8GhShxR07LHbxNL9JB6wR+
	AJct+1GJ2/7ToXqkOh9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0y3T-00DGMe-6E; Wed, 07 Jul 2021 03:16:55 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0y3Q-00DGLv-4h
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 03:16:53 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id 8A8EB580452;
 Tue,  6 Jul 2021 23:16:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 06 Jul 2021 23:16:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=izRxClR9rmdMb
 QxNobmULuQgWdizJr1NuVHnqGsRHa4=; b=qtHvLDnC05XqzB5VLD/TLvRCv9m+3
 6dztCHvx27oYDn2W2Gh7oTJU9mJ4vLL4VCvRQcN5yZUXk+NCq+ewZyfga8GxFjRA
 TVdGVyg1QvSrsUIdiUC76UlxshhIEyhCbAGyr/4R9ExkDOsptttUjEFBG2uZq5U3
 QTj4CMnpWlH60dG0egyBomcxrQKqBoCrS9o++iccqTZAV4dj1SVxn5QmsX1PkpRR
 +l9Q7UzGanixqNmBipTMq/6qfTGQ+p+glME60Rhqyos/9o043MusYLDQeyG89Q1z
 gsQFrZzOUaX92gp8x1J5i+REplgod2Qd258WkEPR4stilDd7pt2UgiuhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=izRxClR9rmdMbQxNobmULuQgWdizJr1NuVHnqGsRHa4=; b=jARBPMWZ
 FLXYFYqtuf6x97HAD8PZFhAAc9WsOCjkYtG0BQcOQkve2XnNYLC1ClBXMeAMDAfF
 5yYjNsFt2WMnQOJW1kRD5i82sH4FQnMXbcNn+gfqGcq9KLoEVu3LnOpSFxmcBS1A
 Yp8D9S0Jd6NPqaH5A5oc+372b3OFmhqiUO+8ASjaTUhKfa5dI0tJR1aotHIm7yt5
 7XjsXWNBqGeWpRLNRahl8a3UTVOawq87eA3QBNCeaCOEpZY5XGd/SbAstxv/zufF
 8qPuzXZNz/WA8kkMhTJjnfIAaL3wBJBnZtMbNngbM/G484XqXyaCm1LUssjvGQDA
 y1p8i3IqK/PpUA==
X-ME-Sender: <xms:oxzlYM8KbOQmjfLONMthB6U482TsfsEVrz3oRGuYkLBHA4tDo9SEpA>
 <xme:oxzlYEuwgBTodlkRKISPp7nI8L_N83egSGDVAXKIquIv-yXRw3eSJJjamfk0NdmU1
 iHaYkKZ4RyKukuqF88>
X-ME-Received: <xmr:oxzlYCDKst8JTQ7uEPEnhuAyZ9MhmKf_0oxwMacBPPDiKhUsjMmQJYaa_PAkVzoqf4y755jo0A1U4nrFrQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrtddugdeghecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhepjeeihffgteelkeelffduke
 dtheevudejvdegkeekjeefhffhhfetudetgfdtffeunecuvehluhhsthgvrhfuihiivgep
 udenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgoh
 grthdrtghomh
X-ME-Proxy: <xmx:oxzlYMc7HDt-3faF2b0NrNSGrEj6evB08CeVl0hFrtTFj_pkrdcL4g>
 <xmx:oxzlYBMCcnI3X4lPQSXGNOVzmExflvzpA7z8-pJ2Zpk605qDKZuE4Q>
 <xmx:oxzlYGmQ0gxVKt-yIHbgLj62Wdg4yHu4_FTwN1Zt25g-ymZ2mKCqRA>
 <xmx:oxzlYCE_-ZOcz7KMS_WL_wep-FbodWxZGosvNrW56l3nfbUxYdu0Rg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 6 Jul 2021 23:16:47 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v2 7/9] MIPS: config: generic: Add config for Marduk board
Date: Wed,  7 Jul 2021 11:15:50 +0800
Message-Id: <20210707031552.20166-8-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
References: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_201652_303291_D2B33BB8 
X-CRM114-Status: UNSURE (   8.49  )
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
