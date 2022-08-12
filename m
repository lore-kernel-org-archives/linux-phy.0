Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82F6BC00140
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 08:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVG/Ynk9avuGyd9HPT9TTiOD7st4k1jRa3wFVvsIDWk=; b=xeCjUkz6x7zZ7s
	LXqmQThhfnm2yh8UrJOBjm49bxJQI+p7Lzgq9kvpO/co1h81Gr6FnTKgAm52r7XquwoKrq3w8Z1HN
	dReYEqDRBdIq2O7cWK8ZqDTLz3yydtxqqbWgxKNqcL1Xa1zkM4SP4ps6xvCtKGk41Yu7CYecgj1ho
	sM5vTBFZv/t/BsuXtmkGdToZBLjpWt80MNozlj+OIH3Dn0MQMuPe/GxO394gZxOSHx0xYy/I2Zvu2
	VV+kSZyyVTAwZpdRGoTiyC6Qz0zvSfC/b4n0dK6cir8mD4fueRMXk6wjLLaizWBDBbKaghIQpS2CP
	woY3YCtArzBO3U9Fdx2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMPb8-002JfR-PQ; Fri, 12 Aug 2022 08:00:50 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMPWa-002Bc9-UH; Fri, 12 Aug 2022 07:56:10 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 3447D5C0093;
	Fri, 12 Aug 2022 03:56:08 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Fri, 12 Aug 2022 03:56:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1660290968; x=1660377368; bh=rZ
	iG6grkeNFoa0EaMz7hkCpgYpyXUz05Y3f0gOaC91o=; b=tJ/2BG8yq+Hs2vtIxb
	gGpRbzgkCYI3Y3boXrrGiR/LNXHlccTfH9IR+2qmtOHROA9eu12m6DVhL6EF1Mek
	Gh3MFHFpCP1eBo7mnD33UMKN9zx2NY61BIq6kd4kX7jlII+uHx8tlagpDmabOuZx
	fll8ggR7rSZqmV/s5MFabzF02FxjSZK3gjHLjKGY0CzC+aD9jQ4w/WCGvsaQHBqH
	wKkEBhJP6SChcOUPb8LNH4zbdG+7cu8CAMOvVCfPWFGGzFh3k9TGQTOz1PBl3MYM
	loirqMUq5/0Py6bBINrTJggG6wdsiVUF0JvnUJlqHj48d0+UWPb3dm6KVLKp+jAy
	9d4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1660290968; x=1660377368; bh=rZiG6grkeNFoa
	0EaMz7hkCpgYpyXUz05Y3f0gOaC91o=; b=Zqiv6Qfmm0Txv1KErVAbGUbO8IjVF
	IBGzjSvezCTXlfxjySlHQufo42HLHhbx3Q0EjYl5zZdv10WWv+fms0LpvzXsV3q7
	IHxgG/Y7OsrzHfaCTFbV5azeKN0qbb95htkgoYcmVZr0UN1zHtsfGuwLRwupjmag
	0M/3EpQgKsYkPjK0mmr1xDhF06elAJ4wF2Yn0LKt1s1TvWUup0UUHIDQoZV6oCed
	dubgC6nCDgzDCACXqAMgZGe3s5lo/lUFXEWYuryNjjAvbqAGGPX6ATCVPLl1Fs2F
	Y+lZLnI5cV6WAKPubmOa0Ev4Jbye9ynP+HhAndySSTpqp+TGRVSQ9TphQ==
X-ME-Sender: <xms:mAf2YmSQzK9Tf-oYFE_P6clsL2wzSyFtW921kdvbiK7M7u1bSXFudg>
    <xme:mAf2Yrxu-b_PSF589-vBjk5qw4-yq4E2KVmIZnqemm9B0nET7AekolNFTFEUjVrbe
    AHnriXsYDFb6DpoiA>
X-ME-Received: <xmr:mAf2Yj1mYesLMG_USq1CLlAYAK5n9ch2972MmATz4rOsw7CjZtUz3Uy1svL4nMliijwkR5ffuwAbYAP5nR_-MlKlWq1DJnLykeTMHVJyB2ai0Eu-g3f98o63PlrXTvtshlncgA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeghedguddvjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghm
    uhgvlhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenuc
    ggtffrrghtthgvrhhnpedukeetueduhedtleetvefguddvvdejhfefudelgfduveeggeeh
    gfdufeeitdevteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:mAf2YiDCciXx2kYWBCEI8kyHiDYqwopJV4HxXoCIsNxNSPEB96gbmQ>
    <xmx:mAf2YvgrCf6zwUlG0SDnXIUifNDouJoXD5Ui8Y5SVNSp8cewyUmXjw>
    <xmx:mAf2Yuok74AluJWPFbP1y71w9-F95fPOjK0kdhq-mePxUYBXHVH6zA>
    <xmx:mAf2Yv4NxpRRscJTaBoIe5zAELYO53wZIxsrFZc19KraOxPSc-gdTg>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 12 Aug 2022 03:56:07 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Samuel Holland <samuel@sholland.org>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Ripard <maxime@cerno.tech>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH 2/8] ARM: dts: sun8i: a33: Add DPHY interrupt
Date: Fri, 12 Aug 2022 02:55:57 -0500
Message-Id: <20220812075603.59375-3-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220812075603.59375-1-samuel@sholland.org>
References: <20220812075603.59375-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_005609_089340_399CA72B 
X-CRM114-Status: UNSURE (   8.72  )
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

The DPHY has an interrupt line which is shared with the DSI controller.

Fixes: 88fe315d2c0a ("ARM: dts: sun8i: a33: Add the DSI-related nodes")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 arch/arm/boot/dts/sun8i-a33.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/sun8i-a33.dtsi b/arch/arm/boot/dts/sun8i-a33.dtsi
index b3d1bdfb5118..30fdd2703b1f 100644
--- a/arch/arm/boot/dts/sun8i-a33.dtsi
+++ b/arch/arm/boot/dts/sun8i-a33.dtsi
@@ -278,6 +278,7 @@ dsi_in_tcon0: endpoint {
 		dphy: d-phy@1ca1000 {
 			compatible = "allwinner,sun6i-a31-mipi-dphy";
 			reg = <0x01ca1000 0x1000>;
+			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_MIPI_DSI>,
 				 <&ccu CLK_DSI_DPHY>;
 			clock-names = "bus", "mod";
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
