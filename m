Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5490AC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  3 Feb 2022 01:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NdFlRtEeiN1ERlNlCoFXz5xjTafuTGvyn5C0UKmA0+A=; b=RkZ0Dl5K4AZFFo
	hfWTBUbCw4ov/5YusvTy4hWStfjnUgglYcKhHXXx7JjTwR2Cr+Hpq0khSIu8y1ycjqdNJzbC+24YY
	gZNbc1tRodKrxRiX2TEhypPVaxRlPOsMDICMIgrzbqa6J0C9ODTNUPSu/32RlibGiqsuWq2Ahr69C
	8RcwHJl4leS8WXbq/Mu9KSTJbPHJyEdKwk88g2De4r1gKRtFEL5d6pU/Q5dInMmaXNvEE/7+qA2qs
	KjuODAJYrYcFAovaQ1tK21LAsQV4mLFvv2cEWNPjS20CWKW/Y2MD0o0FBD75jRDtmE50/MJ2klKIf
	a2DqjbvBYINt4JdQaJGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFR3E-00HJdz-Ov; Thu, 03 Feb 2022 01:36:44 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFR2c-00HJTm-22; Thu, 03 Feb 2022 01:36:07 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id 67D845801D8;
 Wed,  2 Feb 2022 20:36:05 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 02 Feb 2022 20:36:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; bh=Qv9J1cRGGPx4g8yfYeZF9v08xNYwi0
 aJAWkB6MIlnNo=; b=PsTXpCgOT5MWmZJun82tGr+XVHga3TcF2KbdsfcUSlRJwr
 CM5n946W0YwpTidnusclb3EZmpdo7Yt+tJ8BCrm5gcCY0D6huNxovmFGHZDPzdqg
 OHuiUlQQxAc8zBKUq49HLu1y56QS+ecPM2YUyg+sRlX2ISvNVVl1QmEX1/TX5myG
 LmGOURKncuQsGkDAsKF8siYsqWtCEfCOUGQlOaI3Y6lBGUrF90K5m0glil/Fis4W
 ju+okkFbHMnVSJfS/8lFlD9R1LeOOLk2qQlprws0P9S4R/Fl2QftdF2CfTpCxAqN
 2SAxURcag3FPTdMG/hEA05rhgPkfpstmAJGkNaLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Qv9J1c
 RGGPx4g8yfYeZF9v08xNYwi0aJAWkB6MIlnNo=; b=oG6ujevragac52soTNNY5a
 v5PPCIYKTrEX8enK7AMQMfTMVQXQVDXeyHT6ZBzUvhaCFo6YprXNlWrMy/hoOexe
 GZfCD3fQlV04xemT3AqxESAZoVkSFoJ/9gqRrwSJAY8y1W6xE6wx0eRYCTzs67VM
 IVkaBloXm7GPvjtXW1RrzzwYlc6OcpsMUtlTPz/YCEeEpucs2ZMTc+VeU9FgtATC
 c1msKONWRvTHXIB7tx7IJduuLGoH7sijUmbEEeIMGJxqTGmCDll298HIDaBSYcKk
 elM2GWLQ+1I3yNHo7EKlOJ3uuPrUy0cGDfTnrkQfyTpuVNVgiqxcDaTAIjRrdWdA
 ==
X-ME-Sender: <xms:hTH7YbXjzgxgQrunYqBCvZI7PixE2Mj6UVm4_d6_7fyh3kcoCMqAWg>
 <xme:hTH7YTmufX3_X0glz-mbmqiez5WuEtzvNpc1WXpA0UhcLD6nACYl5lbc8-M_gwQG8
 _kxFOZ-gTU-Ng2Cbw>
X-ME-Received: <xmr:hTH7YXa89loeAW2Pss-OmISxfpSJG5iKjFG5svuxPro-WtYVR00JnEfFx93iC-WRxyEIwOvZSnlIeI1Ky19cNz6_uOa76g385e0ESF3Ob9XepucftpuCE1Li8drsh3GPCbSRcQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrgeeigdefiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecuggftrf
 grthhtvghrnhepudfhjeefvdfhgfefheetgffhieeigfefhefgvddvveefgeejheejvdfg
 jeehueeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 epshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:hTH7YWWuC75YL797VAW9eKKrlFMgzGPU1u1VDiggIaDVDkX02CwadQ>
 <xmx:hTH7YVnDBwGm1k7z_yc7EHTTeiG88FK2yeK5bY5yeI2qVPFGHj5HJQ>
 <xmx:hTH7YTe_wi5LNZao5QsXYdTCQGl6OJbw5J1ielHG-_IDaLSs0lDEzw>
 <xmx:hTH7YbcNc-gvENjmmJ9vgqbNwXZ1cnAiNirRm98gB8vCWxpI58HY4Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 2 Feb 2022 20:36:04 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Samuel Holland <samuel@sholland.org>
Subject: [PATCH 4/4] phy: sun4i-usb: Add D1 variant
Date: Wed,  2 Feb 2022 19:35:57 -0600
Message-Id: <20220203013558.11490-4-samuel@sholland.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220203013558.11490-1-samuel@sholland.org>
References: <20220203013558.11490-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_173606_215932_FA6DD95F 
X-CRM114-Status: UNSURE (   9.26  )
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

D1 has a register layout like A100 and H616, with the moved SIDDQ bit.
Unlike H616 it does not have any dependencies between PHY instances.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 drivers/phy/allwinner/phy-sun4i-usb.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
index 6675dad17415..d5f3b42eb8ce 100644
--- a/drivers/phy/allwinner/phy-sun4i-usb.c
+++ b/drivers/phy/allwinner/phy-sun4i-usb.c
@@ -945,6 +945,15 @@ static const struct sun4i_usb_phy_cfg sun8i_v3s_cfg = {
 	.phy0_dual_route = true,
 };
 
+static const struct sun4i_usb_phy_cfg sun20i_d1_cfg = {
+	.num_phys = 2,
+	.type = sun50i_h6_phy,
+	.phyctl_offset = REG_PHYCTL_A33,
+	.dedicated_clocks = true,
+	.hci_phy_ctl_clear = PHY_CTL_SIDDQ,
+	.phy0_dual_route = true,
+};
+
 static const struct sun4i_usb_phy_cfg sun50i_a64_cfg = {
 	.num_phys = 2,
 	.type = sun50i_a64_phy,
@@ -975,6 +984,7 @@ static const struct of_device_id sun4i_usb_phy_of_match[] = {
 	{ .compatible = "allwinner,sun8i-h3-usb-phy", .data = &sun8i_h3_cfg },
 	{ .compatible = "allwinner,sun8i-r40-usb-phy", .data = &sun8i_r40_cfg },
 	{ .compatible = "allwinner,sun8i-v3s-usb-phy", .data = &sun8i_v3s_cfg },
+	{ .compatible = "allwinner,sun20i-d1-usb-phy", .data = &sun20i_d1_cfg },
 	{ .compatible = "allwinner,sun50i-a64-usb-phy",
 	  .data = &sun50i_a64_cfg},
 	{ .compatible = "allwinner,sun50i-h6-usb-phy", .data = &sun50i_h6_cfg },
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
