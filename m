Return-Path: <SRS0=Vlgz=MP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CCFEC4320E
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jul 2021 02:26:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB37460EBF
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jul 2021 02:26:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EB37460EBF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYY7j5WUHEvtWQ8jcKnJWUeesLS0dgp1Ww8m3j5xsq8=; b=ccZyssk4mPijnz
	6KXISRqIslPUTG5i+rJGhRYvObtp8uFl/b5218fDa0ZUzqXYJemk3jnjWOTOVaNd3nUKY2CQBzXSx
	r8VIeX/PFzGKu7XkJDTnHa9xrAouOXkMkOnpUVNO629+6a4CmAaVwoBWSZ7Wc+2uGXvGznPNyGDAY
	RXYTTeLpZDnPDN12SUtrd4Sql6yDB/3DwttRR0RZNOomuePVPHurV0O9a3Uiqb/9o/68kAP2Z196h
	TOb97oC8KQhBIKQrgfWwBzw0aN1pYJfhb1MX1ACNRQBVhuNrTys5U0x1O367job6KobOQX/6bSvEx
	icjisBNjwONhwt/WZnCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6kta-0035u2-Fi; Fri, 23 Jul 2021 02:26:38 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6ktY-0035tX-8a
 for linux-phy@lists.infradead.org; Fri, 23 Jul 2021 02:26:37 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id A73595808BF;
 Thu, 22 Jul 2021 22:26:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Thu, 22 Jul 2021 22:26:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=l9PH4QLd/cM4/
 cQPPaMBDFls0x1FzgEX2pJ1FwyEWZE=; b=m1v+TIVMqNGsZ8mfwlF0cUfWoM2h2
 HpgH/lJ01UZuscjeKa0YFU+XxxaVNgEqBcFy93jxiA1rIg8jYTBIy3W1Lw2gpV3C
 kIAT5vMwRescG26sz7QZKw0sYWZllDzS9nPRboJB/eL8pXJvnW9tGeh5zggxJBi1
 TzFrWU4Lqy12XgTSYrZpbpDfnyf9jV/jAhHg/KUbSo1DSgM7ABKnyxBbc3v2B4jO
 BMb5tXjW1uIB2TAOzMB3L6zs30oDo5tquAPp56F7ctzqx+f8r/bNXYf3Dtg4VRgr
 2aAw75sLFm11yMH0eC52rfc4eh9kATj6V/ZVOpGrKql94CrSUce+4q+Nw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=l9PH4QLd/cM4/cQPPaMBDFls0x1FzgEX2pJ1FwyEWZE=; b=RY2g7wsl
 MLuuM9E6321AuYSCacT/b1/nH4JxCNhms6GWjOyPOefhY76SH3xZol0o7piLrujP
 /YF6X6YdYwWwXStZOuuR1dUpmgtZsnfz6KXGA2cnQvz9QS0lwdibehgufszFhI6a
 k+ewQ/fAHi/nQDw3Iw1xVFpuExHr/nAnsU4dyX+bFSCAfiz7/3S3SIlPPhFyDovU
 XmS/vrsoXTOeguccRLEq4l7Qv3jnOjek0tsqhvIbJa4U8zngJnC+Q4XPaIaT1vl5
 bDdPe71baaQ9QEYYyUUMEZb5EDnbalW0UBrsded5YBLRqzhAAhAictHk85S5VlQJ
 7VrZM/BKSe1jxA==
X-ME-Sender: <xms:2yj6YDR_mwKtcxqEbj7dzsPv9eE4z9ah8AwQfHbzIXH2tfP6zFDK2Q>
 <xme:2yj6YEz9Y3Qin_44LMv1annPBaOsThj23J1A9QHHzsf4SrigcuZIuiBe42uxiviU6
 DtrgfUkn3YvWTBo6PE>
X-ME-Received: <xmr:2yj6YI15lcXoqyfgp81eP2pD0mYsqwdNWj9ABE-zKvtpAAqAtItdU_A376no0GqzxnUZBV1Rn4ov>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeejgdehgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhepjeeihffgteelkeelffduke
 dtheevudejvdegkeekjeefhffhhfetudetgfdtffeunecuvehluhhsthgvrhfuihiivgep
 vdenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgoh
 grthdrtghomh
X-ME-Proxy: <xmx:2yj6YDDbuARRLsjyQbPufz80RBtmI5dSlHPKpAKVAEjMxgTBe8hnWQ>
 <xmx:2yj6YMg3JgR-Jp6Cc9_rriMsLHtcYNHmf2VQeoFCv5wcubNYS5GS3w>
 <xmx:2yj6YHoMqnfFusvpmSzP6SzQXsjbRQp6OfTh7vsQs8428c8ulfFMlQ>
 <xmx:2yj6YBZMKjHx8MmewGqXwNIMGOaSGqc0dqDmKkFa7LVqGo3JEDeZsQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 22 Jul 2021 22:26:30 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v4 6/9] pinctrl: pistachio: Make it as an option
Date: Fri, 23 Jul 2021 10:25:40 +0800
Message-Id: <20210723022543.4095-7-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210723022543.4095-1-jiaxun.yang@flygoat.com>
References: <20210723022543.4095-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_192636_412847_1AEA7272 
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
