Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE8CCC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 02:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UsDgcPBAL5qHPrDD3ySHEKHF0lv9VBYBSSS3DiSNDi4=; b=lKC0OlLFnXLATl
	RUSZ12UZhKyBUC6yLy3Lp08FrweqQukA+C0pzfqRu6Mzwm1QVWwNEC+wKOJsF0/Pd49SvhelIeQN8
	In1wwG+bXWtYBYWsLqgcPfxKqPtLdXZnbS/XHkCavWE/L584dY7BrSKwZjrdGsyTJuxB4lIKbxiez
	1R8ymC9doiWtP4h6dt1aNno7pBQSQUNWvnsCPB2po/4p2rW1zQ4dejLhhiXJe2SfBQJzejKpq4Qu2
	GeNrd0tnE97YQFVIUCgxzgG3yEggeJjnKIRg+7CNAXfsSxUbnHgz0+nB7vX/X24+v0yAlFOlWbZck
	YbKRanMF7rxM5EreKq6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouP7R-00FXqT-1M; Mon, 14 Nov 2022 02:22:41 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouP6K-00FXNv-Mh; Mon, 14 Nov 2022 02:21:34 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 43F303200914;
	Sun, 13 Nov 2022 21:21:31 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sun, 13 Nov 2022 21:21:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1668392490; x=1668478890; bh=Pe
	5+rxKJXBwbi3S5z0eDboZk1Gy4CrOI9srKQdU3gkc=; b=gvSnK23KlZhlQgj8By
	bFNa5ZFb8CgAhfh6C5eUE9LhBcthyducRab3pHtEmaF6z6z3sxZAJh+lQDRQOKwf
	XHHLGLe7dFVj7ZRkVn8tWwVkj8jtp0Y/3Pf0z/ZOgr+fGgh7At418Nfb0YBVoHF0
	3XUEqvURAhgpykh8iymFOZjOplbjjl6K31xUf1MShd2lcX2m4z0YgQxAGOkW5WHb
	0q3j6hOFTsa/OwnEr1y9lsKfLdC6rDvJg5z52P8kt82AZVv5ny2E8kclNUjEBlAm
	A3SgUvzaWn8WlLzYR1z3nj0phh62g+iIQXQlc6THGwgROHiPtAqcub8gNLsf/JVz
	N+0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1668392490; x=1668478890; bh=Pe5+rxKJXBwbi
	3S5z0eDboZk1Gy4CrOI9srKQdU3gkc=; b=L3EOj7g2AClJ7LrMgV9z2rmaQ21rd
	cCWp4xVKqqPcqr0R+mMehllu13Df3hTOjCheC1YjdGrndbr866v8TO1NaQZA0p1K
	Yp3g6XzjjS3whKM6vBpjp1DXhRhJMPvM9etPTEujCDc8mVy82Da8P5WgZIb12eEZ
	hvtxknCb/SMUjB5n4jNZY88Mfm5F81n2JHac3X8IG7/ZYtUCg6SrQdRIDjVazy3s
	2OpsLxAKFnYrIOGduDKmE6HNcIMffpTx2/ceYjJLYq27t3KbmIMdtkH4C0qcupe3
	1Sw+MWRGxXT/jqZW1ZfaFet75OE1Ukb1P2tKCyhT9mppfCzy2yFNF96Ug==
X-ME-Sender: <xms:KqZxY66mDuNN4d_aq74DyPUjzqcLSV8X3-M_WCF231SV3rINnyCl1g>
    <xme:KqZxYz5oW6s56d4xaDtQ1gCxCvEZAqWdif8s4F-_an6yxZZypQroxbPgwRUY-4CIX
    _OXMSYd_ctOYJx4UA>
X-ME-Received: <xmr:KqZxY5duG-p7IQYwrAAMjtybPGx-UqhBO_LRhO7he8hkjM5474WPIyaCsfmePgOkhvpcsk6-NVJfug9-mv-xbjzhzObB_faqrywXZoECxeB4ni9nis4pp_yq3mjE3S8qZoM4iw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrgedugdeghecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
    lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
    frrghtthgvrhhnpedukeetueduhedtleetvefguddvvdejhfefudelgfduveeggeehgfdu
    feeitdevteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:KqZxY3IsIX2dPzWHwknM9qqu8Kf-Ko3TLyMG3_RZiVXmixNwBZVVpw>
    <xmx:KqZxY-Icaib7DQzmS-HMs2B25RpCY7KNXmmKStYxnqNvK89ZNeZcVA>
    <xmx:KqZxY4z0X84Rp8_MAp67EKR6jsJJ11vgd0NSEhPYKxlUkuS2da4ONA>
    <xmx:KqZxYwAG4zbcI6YsLIzsd_-F_6ThAdWxdz_6J-gkH-XA4dPEqlHL4w>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 13 Nov 2022 21:21:30 -0500 (EST)
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
Subject: [PATCH v2 6/8] phy: allwinner: phy-sun6i-mipi-dphy: Set the enable bit last
Date: Sun, 13 Nov 2022 20:21:11 -0600
Message-Id: <20221114022113.31694-7-samuel@sholland.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221114022113.31694-1-samuel@sholland.org>
References: <20221114022113.31694-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_182132_801088_22759D93 
X-CRM114-Status: GOOD (  10.25  )
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

The A100 variant of the DPHY requires configuring the analog registers
before setting the global enable bit. Since this order also works on the
other variants, always use it, to minimize the differences between them.

Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Signed-off-by: Samuel Holland <samuel@sholland.org>
---

(no changes since v1)

 drivers/phy/allwinner/phy-sun6i-mipi-dphy.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c b/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
index 7d7322670a83..a2afedc399fd 100644
--- a/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
+++ b/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
@@ -183,10 +183,6 @@ static int sun6i_dphy_tx_power_on(struct sun6i_dphy *dphy)
 		     SUN6I_DPHY_TX_TIME4_HS_TX_ANA0(3) |
 		     SUN6I_DPHY_TX_TIME4_HS_TX_ANA1(3));
 
-	regmap_write(dphy->regs, SUN6I_DPHY_GCTL_REG,
-		     SUN6I_DPHY_GCTL_LANE_NUM(dphy->config.lanes) |
-		     SUN6I_DPHY_GCTL_EN);
-
 	regmap_write(dphy->regs, SUN6I_DPHY_ANA0_REG,
 		     SUN6I_DPHY_ANA0_REG_PWS |
 		     SUN6I_DPHY_ANA0_REG_DMPC |
@@ -244,6 +240,10 @@ static int sun6i_dphy_tx_power_on(struct sun6i_dphy *dphy)
 			   SUN6I_DPHY_ANA2_EN_P2S_CPU_MASK,
 			   SUN6I_DPHY_ANA2_EN_P2S_CPU(lanes_mask));
 
+	regmap_write(dphy->regs, SUN6I_DPHY_GCTL_REG,
+		     SUN6I_DPHY_GCTL_LANE_NUM(dphy->config.lanes) |
+		     SUN6I_DPHY_GCTL_EN);
+
 	return 0;
 }
 
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
