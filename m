Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7E9CC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 02:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rw2QevZQp+2sOMqxidlR3Fdkt2DFKPCsdDhi+YF5jpY=; b=Xy4dzxNtSx/Twb
	a7wrkPg2KGriKldS6T3DcaCszINhwTXm7k3ofHK92C3LlFnLNq0YPlpKgEY3/yG7F/7P5plgNwPOt
	66O1DkV8MmvPRSPkdq/C0g9ZLmBodzNsuDOMCo+aH6vC9ocW7Dj0kHeepznuODc9sHqUfR3KnV17p
	XqSoEwOLiFnwDK/J5aQJIyY6QuqAo0UTKpfXqNdz0JwxWE47e3esSo0U3BXauHI3q0aUHpGU6GTq1
	3lGDq8POJxxPLBnS0b6+ijNeIuNsOUrXpET/OqgcQC1reOe/ZygeXkklbAIcIZwPqJutJVt9yYnD/
	GFR+kFWVI4L6zqIDwJWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouP6l-00FXVi-4E; Mon, 14 Nov 2022 02:21:59 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouP6C-00FXL1-QG; Mon, 14 Nov 2022 02:21:26 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 5B366320091E;
	Sun, 13 Nov 2022 21:21:23 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Sun, 13 Nov 2022 21:21:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1668392482; x=1668478882; bh=+A
	yJRlUtw7YrN/zrnK1iUvTLXnPZ+9CqwIituSa4cZE=; b=k890dPAVDkQjmQmihQ
	94VBs2P1Trbfpql9DNIml3vOr3ibLmQqy62qeQV01jIapywMjoIKQ2Q+ocuQ9id/
	IZqK6U8b8LbuMZC51oj8CoFqm252QDus22/DshPl/oKlwOeNMRM4FaPLnPUzoPrl
	xP2lXd+8ZpT1145xC6qyelCL3xFs3HNUXwSDgLo+o25W8vbFbtTSb5+i+ypJe9rp
	lP4J96gYTYhqZ8+I8kBZ+F/1kctkJVrud0y2KW2CBp8bWOsNqnYiMxIe3syxJoyQ
	K3h7bfF9Rd714qO9sKxrYV5v+/wkR8hl2PB98lfttL6410d7FOa+QrK+urWkbfWz
	YXuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1668392482; x=1668478882; bh=+AyJRlUtw7YrN
	/zrnK1iUvTLXnPZ+9CqwIituSa4cZE=; b=mTyFuoH1oscs64LiEtfA2+1XlyM1h
	t+6u5kyzCFdAt+MnQjQzXSSl429VqCOFS5iZb66ybEku4jcXlwRGfHDKOHGY3xWQ
	kp0yi5v/Y18N6q96SHhL2qZPkqiqq51YrVj9CgvYwZlgYCZCoXTJUlNQSnsXsGOd
	Oz5d1JQjAV2TFN0Qpm38XJiyjzmCJGsXPxygPQl4CHpGafnY7reRffGaMbYU84FX
	kJPE003BYS6rPqN63JHxUb6piW1YuKlRq4KmRzkJmxtYqHbmyGHLImgKAifvVRBN
	CqqNYAPc2d+PYyko6rgAtHQPSP8J3uK1WOBmGgqfzdXv3/idi4lk4qOjw==
X-ME-Sender: <xms:IqZxY30p63koNBcx0YTK9GUmeQXcDjhXJANKhnH0qXW-yzWiJmMuoQ>
    <xme:IqZxY2EUmR11P5eH46PqWMEOVg1s0LL7whmqzsvHx6yzKoPsYqF6h67sGZrSbMWbq
    0KkneFH5VM6bHm8og>
X-ME-Received: <xmr:IqZxY34rSQGXHLWMCPElCnKN4kSaPCBgXm1mE5x_sEJnMYvio1ehYB7U72eR7Pw3NODMZ86isWhGfsoD7wChCSLHg4EDwDC8cKa0uG_KtfAlREG6B7wrwkzuKG3V0YvUOZ6dYw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrgedugdeghecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
    lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
    frrghtthgvrhhnpedukeetueduhedtleetvefguddvvdejhfefudelgfduveeggeehgfdu
    feeitdevteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:IqZxY80kRuqAQ9hmmU2nXlcTXKPgIuiZcJ77bkE0m2TfPjKDzn7_uQ>
    <xmx:IqZxY6GdLbRjKA3i2OdgYajvtchN_Uske6qXR5sA24oL9xBqL5fCpA>
    <xmx:IqZxY99fXSK4BL-lHgh-GG24xTvevOO-jfO0DLKOvn3MfYoviVDNIQ>
    <xmx:IqZxYxcOgM6m4ycsqJXGigPXuz_VVBnPm3eP7nQ7I8bXqUpZLswB8A>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 13 Nov 2022 21:21:22 -0500 (EST)
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
Subject: [PATCH v2 3/8] arm64: dts: allwinner: a64: Add DPHY interrupt
Date: Sun, 13 Nov 2022 20:21:08 -0600
Message-Id: <20221114022113.31694-4-samuel@sholland.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221114022113.31694-1-samuel@sholland.org>
References: <20221114022113.31694-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_182124_903551_F1F9C5CD 
X-CRM114-Status: UNSURE (   7.54  )
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

 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 77b5349f6087..62f45f71ec65 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -1199,6 +1199,7 @@ dphy: d-phy@1ca1000 {
 			compatible = "allwinner,sun50i-a64-mipi-dphy",
 				     "allwinner,sun6i-a31-mipi-dphy";
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
