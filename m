Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34B40C19F2D
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 08:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAQ3r+nXnAbDbXEPqTI4oVDe+Z+cMCAgufOlLv1g2jY=; b=TdBPs2vDyKOxEA
	7JgA2gJFVGxYRMDicB2D7/Lv+iO/wOg7ZRWYHoUVj2SC4dkWnw2CgxS/IY87Sar+IIVzkwPjxwivl
	kj8blNeEDhNscFrHKTWR5W/BmCuIT5hzReYWXS0kitIiLaO2nLke5zU5q6vdt7WPP1HzteBhYHP9U
	bI0XDjD1sbWs9zUNcVu2sTk+rZOf8d1P9pvvMA4d97SgkDsRwsj+KqenH8QqPJKDQ19cofx94gbvB
	+PykQW4v00kVc9GxvVHcg/SW0KtyIJZeHPba/rSRWt79pu/skfAyChLvVX0Qt/jZN0JHkXFusqdIY
	7Cqu9svT/Qk9SYz8R25g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMPb9-002Jga-D0; Fri, 12 Aug 2022 08:00:51 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMPWd-002BgF-4O; Fri, 12 Aug 2022 07:56:12 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 70CEF5C017C;
	Fri, 12 Aug 2022 03:56:10 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Fri, 12 Aug 2022 03:56:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1660290970; x=1660377370; bh=hq
	hnld67pDLmyX1tJBCi+H9QPo25a/aBfduzgY06UlA=; b=g6f4x6qYl0ol4Uo73U
	oQ1EA7uAAc7lhfWNtUgZ8vP25tu//0EmbOqBthrKnL3fPVXALOOB4VnQqc0H4KTy
	YOfX1tNQ0hqaIMy1GJh/6GC4YV8Evv0/mWVq4rJoJCOGCcTmKheMf1kQMa48ZA+H
	1KNeESjvf7RerQ/q8b/vpzoYCl/DGATIvPqkdmCUvNqzIan+Mx58+5fn2vyuAaiD
	TwjqHx5EIZGooFnnmc2F0eODIOmo7rtOqV5HnoxfmlpRxWACmnMerXz7holWDFhP
	REUrKrKU4w7MsGuIeIxuljyCtHmhKtd9C3x4AVmHFjTSpIDaCjPoPa1OKWM0e5GE
	8STQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1660290970; x=1660377370; bh=hqhnld67pDLmy
	X1tJBCi+H9QPo25a/aBfduzgY06UlA=; b=QHiN/6EXtWLDEwii71eNzW6SySZx3
	g87zxAntgceKO3w8dV3R60kdyJhLyIKjWwbpUWZwt10u4bjy0RnnvN/9cuqgsBVN
	MLI8HgCZHrWcUgfsADKwgR4x0jCE9EiR1epOWLJ/vemiQP4bQMMylSX7DI2hWE+w
	eAkQMC+qLXYo6wiMu9dh3zYFE3G/FZAV20tE+WlzExaBn7TQReD15QqhngcNLmqK
	WOe8RhPaTiYstWwQKTLmUSzakmsQiI+4GW2sBj3p3uvu5/ud2Ic4kSH2FRP7RZUv
	Q5vRxke/M+JYf4KLsATwNFdjfYRhDN7AviNM02fPG4y9D1yvH+kN7ZKLA==
X-ME-Sender: <xms:mgf2YqhyOBA59n4vBPOaCS-sfdcYMzaBxrowDnaOvqRks_zZZQrEyA>
    <xme:mgf2YrDd4UmDUdcM9hTaJpAS0GEB2dwln36vgicW_MIAT5_aIMic4MQECBufjsiSN
    iHa72_WqgGmzVJ4pw>
X-ME-Received: <xmr:mgf2YiHc91d9SIamysnrvMf3hi2Jn1C0jFGoCRikHI9QXzWOBqKEp6DdpPn6a6OtVPL8re-Ko_3qHCPsC1gVaTrc_bPcBiyF9wNKeEQm8A6yDmA77q2NWMeW-yefKzN82vxmvA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeghedguddvjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghm
    uhgvlhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenuc
    ggtffrrghtthgvrhhnpedukeetueduhedtleetvefguddvvdejhfefudelgfduveeggeeh
    gfdufeeitdevteenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:mgf2YjTMnfU6aoJn9dR1UB_MjUc02F9KGSbRNo22L0ZH01w9ZTyFQg>
    <xmx:mgf2Ynxu2u3DmbgEvwtNsU5vVpJKa1VzYpUUYSWszPDe2wgBDEFdXQ>
    <xmx:mgf2Yh4Pe2jqzYjYsDvvL-9UIWjxhpqb4-9r_eu5kUTwTN9p1R297g>
    <xmx:mgf2YsKtwV7aCenttmbiIlvWt5hIfm-4YH8NmmaqtJ_TOgyajOekBw>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 12 Aug 2022 03:56:09 -0400 (EDT)
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
Subject: [PATCH 4/8] dt-bindings: sun6i-a31-mipi-dphy: Add the A100 DPHY variant
Date: Fri, 12 Aug 2022 02:55:59 -0500
Message-Id: <20220812075603.59375-5-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220812075603.59375-1-samuel@sholland.org>
References: <20220812075603.59375-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_005611_324595_4D1D0151 
X-CRM114-Status: UNSURE (   9.88  )
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

A100 features an updated DPHY, which moves PLL control inside the DPHY
register space. (Previously PLL-MIPI was controlled from the CCU. This
does not affect the "clocks" property because the link between PLL-MIPI
and the DPHY was never represented in the devicetree.) It also requires
a modified analog power-on sequence. Finally, the new DPHY adds support
for operating as an LVDS PHY. D1 uses this same variant.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml           | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
index cf49bd99b3e2..b88c4b52af7d 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
@@ -17,9 +17,13 @@ properties:
   compatible:
     oneOf:
       - const: allwinner,sun6i-a31-mipi-dphy
+      - const: allwinner,sun50i-a100-mipi-dphy
       - items:
           - const: allwinner,sun50i-a64-mipi-dphy
           - const: allwinner,sun6i-a31-mipi-dphy
+      - items:
+          - const: allwinner,sun20i-d1-mipi-dphy
+          - const: allwinner,sun50i-a100-mipi-dphy
 
   reg:
     maxItems: 1
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
