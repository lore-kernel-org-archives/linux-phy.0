Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A2D4C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 02:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dht0UTSQyVWgeSuVFPWnoqlSN4Be4ZCKlzEhwUNeJKM=; b=VXqPLHNHa2wZM5
	8X3D/S+p/jtGSCTYz3VcTVhZKMqbuDvPq+HN2itKjf6pOxL930/GFPM4CTIXfYUh59/NWQqri+3bw
	Pda8lx5aYJd+GI6YbWcpptNJJdtN1kencEQLZFaAVVBWM8k/su+7Ot/gaVDaR4E4YsWJ8d0sSI6KB
	F2jlcn8/LZf57Y431NRoZIdPeupeLHBLLwBEJPqHUa6uaYJ8S8ct5F5cnlhdy1VxMzINZiaHJH+zG
	dpDtePK/KtuRv6ygxwnTQnvjy8ce6EqrQ2mzMVMh29bDRpE6r94mrUsJVPoHtKChXo/7ethelIw4d
	j7c1W7G/2eueD5aN8xiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouP6Q-00FXPi-IW; Mon, 14 Nov 2022 02:21:38 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouP67-00FXJv-EH; Mon, 14 Nov 2022 02:21:20 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 02C6632007F0;
	Sun, 13 Nov 2022 21:21:17 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Sun, 13 Nov 2022 21:21:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1668392477; x=1668478877; bh=8d
	GrluyziuRFhWRkKBXbsD9qADCfDkyrmE8KHFwP3gA=; b=eIjuzMBfwoTXzDRlEv
	4tpkzlPpyVUMvi7Bgj4grlg88EXkPbd1wfPLuGI7iClTEoxcTbB48BRTsiSbr0cL
	6TLrfNVqhqCSWwONN9EUZZfz3N3Qel0IMhMAr5UfPCBkX6rPlUNmDpnxeWXi+qam
	ra6O/9D6TPuM71e42E0KGKyYLfvEbr2AnxuJpBX0IqJ3ssj033josoLc/nUNfKnZ
	k1UGqlQj7gP6lTdLitnji2GZn+qOiXz8oguDj0IaZbssGr+8PJD5em5s6AkeW68B
	C9wQFPX/qW50ulUKGEr01BRrPab0lG7NVqXGdS0seku4uuuqoZnC5JEyzPof+DPW
	irqQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1668392477; x=1668478877; bh=8dGrluyziuRFh
	WRkKBXbsD9qADCfDkyrmE8KHFwP3gA=; b=HLDoThWVgYInc0MDAvNrF03X9Y4WW
	MERCuwxx8u4+QVT07jfKM+EUeqwKdv+eixnrDRkkc7WQGaJQAce7Y+7bA4Luhypz
	LbyO0eaJDE7wWgFyxzdQ+smeayC1PC54lO762tFod8X/rUTBYNzDTuWV1bW+ELnL
	fnFVLurjvNveG41wEVpFeJjb5tUCT7N4e3iF2TJsYQSSezWWoRy2qQu19V2uWaVw
	+c56d6Dcvxx+tfvGazQH/FqA1A/XtQTgAcW1p5yICsO9/jmQPH/27afag4HbQSDQ
	lUS51bpDG1otaLgZUwMnhxUv4VbbKoeTPjBfGAOSpj6OmBBxbUQDRpVNw==
X-ME-Sender: <xms:HaZxY0-bLbbf6ZCywSyoWY74VDAAIOeN-4a7rjIHqPibFOMn2JAqoA>
    <xme:HaZxY8s2voEQ27IYHvphjrjeZLbaoNoDQkOPaIQykzF1YxuHrEIooaO5CQPsW8M1m
    WiVooh9y0qbZpl2PQ>
X-ME-Received: <xmr:HaZxY6AOvKdMGU9fCiU4npySnzNk-N4axgTeUn4CQHRW-DbBZAGCm4_qdHXp37qrl8geiAikcKjZimS-k6gXLUD7NSzt02N1cB--OcIAQksX3nSW4hX3twMNASGwZvk-DHWc4w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrgedugdeghecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
    lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
    frrghtthgvrhhnpedukeetueduhedtleetvefguddvvdejhfefudelgfduveeggeehgfdu
    feeitdevteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:HaZxY0dmmeBtFN7OyIWvg5_FaShTS8rbHflNyrM5PJhvewjAp2SJng>
    <xmx:HaZxY5Ma7IpoHdFIef7drhzgAt5KXdIZg-FvVVu69gwRF17dwU--rg>
    <xmx:HaZxY-n-0cDlOpUosdLSuwJwAT91r0dTdpczG9csYGLg3yj9IruW6g>
    <xmx:HaZxY9kVPsbHoBtcCaIMIpA8F1Sf5RSAyWczyQrtDTDJG7IdGYTv-Q>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 13 Nov 2022 21:21:16 -0500 (EST)
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
Subject: [PATCH v2 1/8] dt-bindings: sun6i-a31-mipi-dphy: Add the interrupts property
Date: Sun, 13 Nov 2022 20:21:06 -0600
Message-Id: <20221114022113.31694-2-samuel@sholland.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221114022113.31694-1-samuel@sholland.org>
References: <20221114022113.31694-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_182119_525689_00B8F8E4 
X-CRM114-Status: GOOD (  10.06  )
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

A trivial interrupt handler was used to verify that interrupts were in
fact generated by the DPHY and not the DSI controller.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

Changes in v2:
 - Add the interrupts property to the binding example
 - Drop the inappropriate Fixes tags

 .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml        | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
index dfb6a8993535..4c45d7fcc853 100644
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
@@ -61,9 +65,12 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
     dphy0: d-phy@1ca1000 {
         compatible = "allwinner,sun6i-a31-mipi-dphy";
         reg = <0x01ca1000 0x1000>;
+        interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
         clocks = <&ccu 23>, <&ccu 97>;
         clock-names = "bus", "mod";
         resets = <&ccu 4>;
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
