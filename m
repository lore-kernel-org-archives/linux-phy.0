Return-Path: <SRS0=Q81u=LV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UPPERCASE_50_75,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53414C49EB7
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 04:57:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 19B4861C23
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 04:57:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 19B4861C23
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9J9hAzLA3tlcE3+j1KO7rVp1457zyTsGFkw7ne+Xk04=; b=qAARcMRq7xeoZ1
	+93F2Yrt1Dq53BNp9aoFD+BlWptNXYXELAjhUmrI+ZFKi6WKF8dyZTNkN3d3iofca9xeduG2EtQKC
	3K5xbn8BQ0kgjeeqS8uCJ8/+vbjvSeles8r5aK8i9eFoiHkcUIGzndlRc+mNxTbRlkZsp+H3iV233
	8vgbZ1tF2IkVSFlJDb0jMEVUcjo7hjYU6DvSK+RYZmbj9zR/mrx5A3cISBKr2ZxEnnRZzNZePr+QO
	LLmhplGI6JVjz+XvsuY8pJ9nzBbnUHAlluOgnMHIKyD94rnGpQ1IG9DKr/pjSp68Hq4HXTq4kRy2e
	uPsvGJQtZTSFnEV6EzVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxMrK-00580n-Ks; Sun, 27 Jun 2021 04:57:30 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxMrH-005805-Ue
 for linux-phy@lists.infradead.org; Sun, 27 Jun 2021 04:57:29 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 587A55807B0;
 Sun, 27 Jun 2021 00:57:27 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 27 Jun 2021 00:57:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=izRxClR9rmdMb
 QxNobmULuQgWdizJr1NuVHnqGsRHa4=; b=pjiU1lZPyKQ5ZGq2Q8DaV42TZR+Jf
 LVClsPsvRrj0hs6+HaUK4L+C+eAMevYATS2ShZZWfBbinuPljUs9/CZ0qVRQ7AF9
 AFeMGJa3X+CLxXyUGIziicZuZTv95z6SvUEyCrnAX/Xc+dar5gcsoT2XBvl5WNHU
 UitiJ1fZyaaM38pPq1+M868FJEbxOtNAGen3UCh3fOfXCfGGTzsJpBA16tqac5zS
 rZxOkjKh35oghpgU9Sr0YCY3P8NBxxVc7qnR+CLJ1rhMDinF1flNMOWejaQfnLcK
 ZlXujjl6u8SS5LY0AeqW/C0Y7/esqrquM9TiD9uDqfEbJQOiGkCTc3Bww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=izRxClR9rmdMbQxNobmULuQgWdizJr1NuVHnqGsRHa4=; b=JUUnGXir
 KOB5g93jMrd0Ivv+ge++QuJyqMVvvgYtyjXJZnsMtuSW7RmNa0R88gqXzjZkVBh1
 6oLqf19I+WX7wvFeeet54e2g5MyNhPmg/zKhMlkoj5Qik6a52ndHO6ix0l0pLcYV
 DJtE9d1Qp3+HL5wbJB+1YMz0ZCrpTBrMQbrYpkNB8U805O9lqEOzi354Y4F9cHNy
 yLJvJCktO7Des2oxpUSmwEbTGbjHKEOZ6IyRiUtgMuDnzp9SnjPsiAOYfgAcl976
 wGF3qSWxDrZmPWDsB3DhRED5eukEAxGTJwkjCPI4pARuuUQA7QW+V9h2cxn93PZ/
 GB+X8YehsWxUJw==
X-ME-Sender: <xms:NwXYYHnt13JcMc2TRfR9RITPYTg3ZrxZmuRTAjezAbnI7Us04QlUdA>
 <xme:NwXYYK3uzAZov5dkmxDPVaW7sRAOzdoJ8Hh1Phf548S94zXSdW5hGZ38ZwD3FcfZl
 ZTR1N3X3B2Zo7GqLno>
X-ME-Received: <xmr:NwXYYNpljQju1B_wmlKGrJxH0UDyJAbM2el0ZZkyAgbXuiwUfM3FIgxrspXn44-qmkF84mBtR_o>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfeehuddgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheplfhirgiguhhnucgjrghnghcuoehjihgrgihunhdrhigrnhhg
 sehflhihghhorghtrdgtohhmqeenucggtffrrghtthgvrhhnpeejiefhgfetleekleffud
 ektdehvedujedvgeekkeejfefhhffhtedutefgtdffueenucevlhhushhtvghrufhiiigv
 pedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehjihgrgihunhdrhigrnhhgsehflhihgh
 horghtrdgtohhm
X-ME-Proxy: <xmx:NwXYYPmlkeOMgsS3mLtUAlJ8dkFpAymW5xT8wRJEnZgnKs8NZOgubg>
 <xmx:NwXYYF0l8esUT5PSrs4fFy5WZcmUPuCn-ITp2i_s8Z5SGaDf25fhmg>
 <xmx:NwXYYOsS4bU0MjvTgx8eVMwDl-nmWBJtblx5DxWGOGPFrkGKUr33vQ>
 <xmx:NwXYYOvIDykGdf3U0v0diNLFLcpvvCPfaYBMfHXYbxzJ-pV0m8ureQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 27 Jun 2021 00:57:21 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH 7/9] MIPS: config: generic: Add config for Marduk board
Date: Sun, 27 Jun 2021 12:56:29 +0800
Message-Id: <20210627045631.2882-8-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
References: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210626_215728_109970_4C951C99 
X-CRM114-Status: UNSURE (   7.86  )
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
