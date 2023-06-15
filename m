Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A61BEB64D9
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 17:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ok5EUY7CxPuCQPJQpl0xAHErjNf4P0HqlyDSg/5y7ac=; b=I0nbNpoNi+Gox/seOMEN2cdIXE
	BXv8NguBH0qOt4ARzdDXbBYyJh+IwfCpcBtA68Mq0jjtTFsVHy75JetWuvEXxrOnV/ZQcR5Z/Ev4c
	k0V8QpCbLXDMnAQ6d1u6U1bxE1l9Jfm0Z2ODS1wHA7MTt8U8zEVwyP6172Vqpw+zNbMXMFY2dJGXm
	gYZePgiLYjS5KypEXKRgMDPVi8FUOephKNdYrhoJqRNFQrZwyIUl+sYzKMwJehkMF+GhKnODnPSp8
	mgrAW42XgWbueAwh8XBj8qQw9OB5SBwizSrTdHyva93dQjOUaBtobbivNY6+MOseedPhTFeIEGFoE
	Vn+slwkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUH-00FXBX-0Y;
	Thu, 15 Jun 2023 17:10:21 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUE-00FX9q-2x
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 17:10:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=8x78MvgAGf0Pwtnasq/3ixUfJIGr5jN/dHSd464Z2hQ=;
	b=hr5+BqzP9WVpUBezueHehavpwYTSm6bvX5IhVWo8GcAm4aa5g9wBD7lwGxMGJo38T1Yz
	sunsnIac7aTYxp6fwrNZDeY59a3etr8DvX7WnvDTNa2n+nW0V16vbidl2IcB2af15h0byP
	TXM470aTOU1vaDlqAITHGI6heDEkZBRadVoyAr6pcMyTNIkqXtXJP199ZIVGEtQ4jw0OPN
	gCrgxrwFuFNtuKcanya1YkC9zsxr5owDs2tH+LORm8MVKIP6S5vHAnE7X7DaYcm7ENlfjM
	yzzAtNbi/fTr5xXDGDnQBo2tAeJ4K3Y67XIVBabDjGdSglMBJnmALI2QgNwlXE3g==
Received: by filterdrecv-77869f68cc-wnrh7 with SMTP id filterdrecv-77869f68cc-wnrh7-1-648B45F8-58
        2023-06-15 17:10:17.048603932 +0000 UTC m=+3087256.701033920
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-2 (SG)
	with ESMTP
	id dUuyg-PyTA26fNyKJvWdhw
	Thu, 15 Jun 2023 17:10:16.831 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v4 1/6] phy/rockchip: inno-hdmi: use correct vco_div_5 macro
 on rk3328
Date: Thu, 15 Jun 2023 17:10:17 +0000 (UTC)
Message-Id: <20230615171005.2251032-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615171005.2251032-1-jonas@kwiboo.se>
References: <20230615171005.2251032-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h+ZrqWCTZdFFi5nlL?=
 =?us-ascii?Q?DuP0hLMHKNwHCEmYMS2H=2FdC7+pE+Pk3R=2FVINVZo?=
 =?us-ascii?Q?OHLxCqDj40h5GYb1sEiLgsa5m5FpcuPAmvdKW+Q?=
 =?us-ascii?Q?lZ+8ngV7vvmggtyqgs+R88IyIWaammQE4SiN3WB?=
 =?us-ascii?Q?53v19xpBYBtO=2FdmME8XcqVUHfNqiEB5nEa15wD?=
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Zheng Yang <zhengyang@rock-chips.com>
Cc: Alex Bee <knaerzche@gmail.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
	Kishon Vijay Abraham I <kishon@ti.com>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_101019_048894_3A5280F3 
X-CRM114-Status: GOOD (  10.43  )
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

inno_hdmi_phy_rk3328_clk_set_rate() is using the RK3228 macro
when configuring vco_div_5 on RK3328.

Fix this by using correct vco_div_5 macro for RK3328.

Fixes: 53706a116863 ("phy: add Rockchip Innosilicon hdmi phy")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v3:
- no change

 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 1e1563f5fffc..f348e5347d81 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -790,8 +790,8 @@ static int inno_hdmi_phy_rk3328_clk_set_rate(struct clk_hw *hw,
 			 RK3328_PRE_PLL_POWER_DOWN);
 
 	/* Configure pre-pll */
-	inno_update_bits(inno, 0xa0, RK3228_PCLK_VCO_DIV_5_MASK,
-			 RK3228_PCLK_VCO_DIV_5(cfg->vco_div_5_en));
+	inno_update_bits(inno, 0xa0, RK3328_PCLK_VCO_DIV_5_MASK,
+			 RK3328_PCLK_VCO_DIV_5(cfg->vco_div_5_en));
 	inno_write(inno, 0xa1, RK3328_PRE_PLL_PRE_DIV(cfg->prediv));
 
 	val = RK3328_SPREAD_SPECTRUM_MOD_DISABLE;
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
