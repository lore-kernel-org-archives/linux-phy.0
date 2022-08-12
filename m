Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9421AC00140
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 07:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/5XI41QZERrhXkqs34Y0PtKdmZoe366G2egqg/ZuYM=; b=UCMeA8NsIlfxOK
	xp+qVOcDXhvmSecc1MuQZTqJw1jGSqh8IVR+zSkNQP4ymYsWPfL2B566PkrA4+HhURXVxNeSRa4tU
	6ZXHcFkEIeW8tmDLekqWKyYuGX0rHsX3yxDyhge+CluXmZ4tUW/EXydibhOgRwvJ//h0xtSBbN12z
	oUtMjg+6O6cHwZHaOvpXLwNLwOjcBFKo1yKOkdQjnR++H1yIYNHvAlj1ePT+RfbO32WFvXh5W5ABA
	3kGdknFFL2/0hZJJDlefV9n/pzOciD1iLln5hEAwWN0CPmUhkWwbEFA44+vSjGfZZZ+KYBsaFVTXu
	WTUoB4pTPgvPxeuZf2Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMPZO-002GQa-W4; Fri, 12 Aug 2022 07:59:03 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMPWZ-002BaA-MF; Fri, 12 Aug 2022 07:56:09 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 032FD5C0178;
	Fri, 12 Aug 2022 03:56:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Fri, 12 Aug 2022 03:56:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1660290966; x=1660377366; bh=A0
	Suz3pFHzbaDEdJ1Zd98AaOQsAUFz+r94G9QZCuotI=; b=TcTrobC40xND3xjOAj
	2l1FKmjTq5yki6KIjmfkgJu3HuvOnGRd0JIpeAKS/7sd8nOU6K14WRB00JjWsk07
	lsFBBEBmb2ZAsSCY4YyecmhWHsp7QJznf1H0ejwF5sL8ATZLbmWBoPzyMCrBhTBX
	vGOrLzA1bI4YrzjMyHUCaAstmVn6exGijY3PgmiS7mEezGKgSjTqlTR/ubBA9a/r
	cRbyi/F8t6zQE7BKow0822E2Eh2YrQvQxZcfyWQgXiawufVCY6TzMKzZwlT4lIE9
	sKwbVVsgPBipDDiriaAOoyKEH8dnmQljqd0u1ysgmkMer2pcBwSqlQkLI2+0+Q6F
	d4SA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1660290966; x=1660377366; bh=A0Suz3pFHzbaD
	EdJ1Zd98AaOQsAUFz+r94G9QZCuotI=; b=k+uqelU/83YxgC4MuSV2hgruY03b4
	EK+7aMRf2l6enro9v96bAWT6Wdyp53ejsmUE3R0yOID9aPu0PcRom7AHN48Jimtx
	8h0UaE38FLQSPzkrHdw6CWUxkA7/kl+Uogrsk6TZwHIHqRi+Vby/oQRdkDjiUPCp
	VnDA+E4hVOeUN9RZUMLSq9IMfmIZnoXAgEItxXb0qUowkyQYUTnXxkhw+PRxdm4C
	BdOpdfZngoHfOOLTtxjM9tIW8k9KSwi/0xtnfXzG4qEE9TwDA7n3Ey2e8mlAhDGg
	a5kQi6sIHXQkjNMKAmJ+2FV9oxV9r/W50Bnymsx0aaPM5enWoDn2i//GA==
X-ME-Sender: <xms:lgf2Yv99GP7xaaezsQbdwcYhigZH8Kv5JosBcFJL9nngdy_bv5MmNw>
    <xme:lgf2YrvbqsKg7eAGvmsJblaReef1J6r3uXPpXVaSrvx5gXbj4-4bTrgRS3yeSm6hW
    SmZEv40bjNSSgUy8Q>
X-ME-Received: <xmr:lgf2YtDo7RVPKySsjM5bbIKmfkpOTWUF80UngYmrPYkuxBcliU23TYpBP-T2fG7zvkQDRPBpzgYjIMp4GVo8tOyBkXvFWQvEIYKeIsS3CpTLWyIgfKUncCLAFQl-OojDnrTVmA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeghedguddvjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghm
    uhgvlhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenuc
    ggtffrrghtthgvrhhnpedukeetueduhedtleetvefguddvvdejhfefudelgfduveeggeeh
    gfdufeeitdevteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:lgf2YrdsGlrKYFa0u5xJqaKctGAghArR6xKXHfXIPXU6Rlaor6JHuQ>
    <xmx:lgf2YkN45EEV9vxzP0e-mAqK53xk9euVSNyiDur5E4xcna4KBVG6Vw>
    <xmx:lgf2YtkC_sq2ngCoKNrSdaxA-JMcfanwQjgAOaHcKGWqp_Bre6GRpg>
    <xmx:lgf2YrloC4C1N2bjU1vKKqB0qtlK6EMwWlNZu8UJfWH01qEhpBqMtg>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 12 Aug 2022 03:56:05 -0400 (EDT)
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
Subject: [PATCH 1/8] dt-bindings: sun6i-a31-mipi-dphy: Add the interrupts property
Date: Fri, 12 Aug 2022 02:55:56 -0500
Message-Id: <20220812075603.59375-2-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220812075603.59375-1-samuel@sholland.org>
References: <20220812075603.59375-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_005607_834604_348524AE 
X-CRM114-Status: UNSURE (   9.41  )
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

The sun6i DPHY can generate several interrupts, mostly for reporting
error conditions, but also for detecting BTA and UPLS sequences.
Document this capability in order to accurately describe the hardware.

The DPHY has no interrupt number provided in the vendor documentation
because its interrupt line is shared with the DSI controller.

Fixes: c25b84c00826 ("dt-bindings: display: Convert Allwinner DSI to a schema")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml           | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
index 22636c9fdab8..cf49bd99b3e2 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
@@ -24,6 +24,9 @@ properties:
   reg:
     maxItems: 1
 
+  interrupts:
+    maxItems: 1
+
   clocks:
     items:
       - description: Bus Clock
@@ -53,6 +56,7 @@ required:
   - "#phy-cells"
   - compatible
   - reg
+  - interrupts
   - clocks
   - clock-names
   - resets
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
