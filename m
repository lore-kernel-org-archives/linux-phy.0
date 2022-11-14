Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC4C6C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 02:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qxDatqo742fogv3SQm3uYD6kdq5xOyzqpCgUQEDiQnc=; b=uURaeYym0yKLQo
	ouHNs2W3r9XSR/u/DMv+mwS7ef57wZ3/Zbj1zCJ2Qo9Ycj0Ai2y+fQw2hR5npIFoHabqN53EcV187
	Ft1S8Zo+RtBy5KKaYcuBlUOzmSrvLMHmPmTlG9oudMoUJ8/Ul6ueWH8LNNUpLuU95p3iXQs40lIx6
	/K8Scg/Yh/cwrXHtbNDjNKwIcx/gPZJcO/fFIws9J/HHBjXCc7TQ5WhdGTJPBJ8+31u1swWUGgtfg
	jIJjF97yD2TGAKVtdBt0D/UsVZUxXY+0F0yvqlyguaSFy8eKME/DFuEYJ0Zd8iE1nAMkP7SkhbLxi
	v8HcJTmYvd821q4G5xEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouP6Z-00FXSI-5N; Mon, 14 Nov 2022 02:21:47 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouP6A-00FXKa-48; Mon, 14 Nov 2022 02:21:23 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id AAB7C320091D;
	Sun, 13 Nov 2022 21:21:20 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Sun, 13 Nov 2022 21:21:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1668392480; x=1668478880; bh=um
	olr3krKDreOXkBCRZ2ECU8DgIaOFUrAbwdoxr5jYk=; b=hag55g1tUE4L+mclEK
	dlPwOqw7GtDUBcPb1uLPdd3jtsG2dbVhWYh6YsCKgfwHuIOurjU4HnzokYfBjGEa
	v4M3ugVEmku+ppkvrJN6o0C25KSyQMHCExkPPmJGkbTUcnbSbovTMcw8VB5TptcG
	a1tP6uV0gyEH+M7xF+fCKgANDmnmUK4n8YoFJlU4F0VDnSsA+W8c5EnUL+JNogzr
	wGQql5f/5YrbgiYhPOukAEa1s/jvckQDfQ0yUbypd5oGYOn/U37oEkwwUVdmAiJq
	i3GktiZm+7ZwX8FUGqJTV5VkdSuGflm2uHCpc8S43PpkSo4o0qMM8bryNjr5CtZ1
	uzHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1668392480; x=1668478880; bh=umolr3krKDreO
	XkBCRZ2ECU8DgIaOFUrAbwdoxr5jYk=; b=rocms4d2lCJfpHIoSs8dzXri6ofgM
	aafnZghvkK3AcRg2XftkOYC40gRtbDYwlO55E5PfA3+Bwb0YLNV+iafmsYMag8pP
	K/iAs7fskFmauoWyi8CJpfS0sBwhiMk45cd41aPGHSLeWl1coIDVe+kCwcWSaiYq
	ZS8IuC0nkRXuzlqDUbp3WbH6nHxmsiXnzhDwImS8PNhePOX3COCB8VxTos4QKnV/
	eW0GxgfOiX9uh0L3tpRhwPsz+tFZLjb7GD40GGhdeygJtyQIFW/GYQf9ThQfWiwe
	2QU/6zjKHgSOd9Og8msCHd+Wr3JvOIjlXumFtq03ZDMK1UKijKPjdLM/g==
X-ME-Sender: <xms:IKZxY6BFcPQsO5jhSkLfotBCCpwA0pdlJ4J8CSOcIYLxnt7wivbXiQ>
    <xme:IKZxY0iB0SldyHQ0WFoUiALhiSUdZ8p_rmPoQls6gyRYD6R7z87Kzoi2NlWD225fV
    4ww4px5GYMeJ2quQA>
X-ME-Received: <xmr:IKZxY9kTG57-wyvIz23Z4TkiTNIk5II6L6HGSVvhWF0YEnrtRR3CT8obMcbvCUoDCGfm-m6y5wlhFt6HsiofRzofgbpz8JTzVSDsE383DJJeF3-SYhHjzyJISgwaY906ZyT9nw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrgedugdeghecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
    lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
    frrghtthgvrhhnpedukeetueduhedtleetvefguddvvdejhfefudelgfduveeggeehgfdu
    feeitdevteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:IKZxY4zVS2Q663KYuzxMsGxMjDSQMtB-8FoaYkYlOSMVEaDLG1KOXw>
    <xmx:IKZxY_R4eVd2RNgLxxT5xJIte7bjbliZAHA54KuFw6ZQy_gDHqUUDA>
    <xmx:IKZxYzZUOvtyvxvRq8WB9nt-5-iReo13QFyA2o4Arrh7aRSE1l3hJw>
    <xmx:IKZxY-IZPSvx6GZhuDT2nVHj-L5H5TWZXoas-pYFbfdZNevwSLgwCQ>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 13 Nov 2022 21:21:19 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Samuel Holland <samuel@sholland.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH v2 2/8] ARM: dts: sun8i: a33: Add DPHY interrupt
Date: Sun, 13 Nov 2022 20:21:07 -0600
Message-Id: <20221114022113.31694-3-samuel@sholland.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221114022113.31694-1-samuel@sholland.org>
References: <20221114022113.31694-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_182122_214681_DBD3C115 
X-CRM114-Status: UNSURE (   7.91  )
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

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

(no changes since v1)

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
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
