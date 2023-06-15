Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7580FEB64DA
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 17:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nCiCuVXHhd85a62Tv5MMurSr0wbkk1SQB5dCIKu750U=; b=i/X0/zzEuRQmcjZWm2h7J5i+V3
	eSg0x1RVcNQwNWCMle0Q/I2MX5gGUmH3qsTN+ZlLl5Ue+AQI0fe+3IzNQS94uhNmqqpKffbnBTKwV
	qHAPcRoXmxD3BgL7LbfRilupY1WDnfNqyl3bO+xwkq/5aa43GLRMK1sQjjYymEZAMDQitQ0Rj4cKy
	h0uCltBiTYSSqyHDVs+8znuFCE+n9mpJ2MqoADvJp611Zi7TF0ClJRw4p97Ub6PVsaGayix9of6x0
	U74krkXpA4/L3jbi3DXjwE5AkcPCsb95bLYMnqKg/CnTAW4Xksrkfs6RiW4m9XapTr3g5OdY5YYgB
	8f6x72Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUc-00FXTq-02;
	Thu, 15 Jun 2023 17:10:42 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUK-00FXDM-0W
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 17:10:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=SwUrQGtfdJAfbPGuPioQpX3ZwqUQutzSyANTQ3rAAzw=;
	b=AMwf2Hpdyvkd7i69t99g+qZJ9jtyPG9rteVAsinO8lpeNRIbbOB9Y1NHTAqw1kEUboIX
	Wp2ypBdurEoTq1nzyETIhOgWse33pC7/jmORGjvT2ccuTy6Lp75x1OxW1A7sx/QfQRbKm+
	oCw26goRml136PvKzb+ClgRrs1L5xYP4J6VSE3oQpg0GkpGrVfLf7v6ygI92QAQNXu0pfn
	8QbeZFChndwjVbMh9Un6LAL77QrYTbT65UEWvmHKIupaThEQJ4uoZGTh5bQTn4gBMZ5rf+
	o1ABoCJIAhM8tpJ/LNd7zpA+FM7UtgdicRgHwt0Ht89ZepMry/kMdFRM630qEuJg==
Received: by filterdrecv-84b96456cb-6l8hp with SMTP id filterdrecv-84b96456cb-6l8hp-1-648B45FD-25
        2023-06-15 17:10:21.532681887 +0000 UTC m=+3087112.128091413
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-2 (SG)
	with ESMTP
	id A-l5S23OQY-HMDmXz1kwpQ
	Thu, 15 Jun 2023 17:10:21.207 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v4 4/6] phy/rockchip: inno-hdmi: do not power on rk3328 post
 pll on reg write
Date: Thu, 15 Jun 2023 17:10:21 +0000 (UTC)
Message-Id: <20230615171005.2251032-5-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615171005.2251032-1-jonas@kwiboo.se>
References: <20230615171005.2251032-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h444tarc9ufij5dRA?=
 =?us-ascii?Q?eI1cNBIYAT3oqUvqrtRFevHr5kMKRB2WdkvXiol?=
 =?us-ascii?Q?zFWREqpE=2FjoQJRA6K5mU0FvT1bQmfn7AfC5hAab?=
 =?us-ascii?Q?MPp=2Fq+92LY54ykao0sF3BO=2FcUdT=2FHwGov=2FFX7yX?=
 =?us-ascii?Q?fp=2F=2F2MAZP2yiCyGi4O6E0FpwJ7J3U0PJjydVHw?=
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Zheng Yang <zhengyang@rock-chips.com>
Cc: Alex Bee <knaerzche@gmail.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
	Kishon Vijay Abraham I <kishon@ti.com>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_101024_358031_6E4F7FF8 
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

inno_write is used to configure 0xaa reg, that also hold the
POST_PLL_POWER_DOWN bit.
When POST_PLL_REFCLK_SEL_TMDS is configured the power down bit is not
taken into consideration.

Fix this by keeping the power down bit until configuration is complete.
Also reorder the reg write order for consistency.

Fixes: 53706a116863 ("phy: add Rockchip Innosilicon hdmi phy")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v3:
- no change

 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index f027e0a2e26b..fe7fa9a43ec0 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -1020,9 +1020,10 @@ inno_hdmi_phy_rk3328_power_on(struct inno_hdmi_phy *inno,
 
 	inno_write(inno, 0xac, RK3328_POST_PLL_FB_DIV_7_0(cfg->fbdiv));
 	if (cfg->postdiv == 1) {
-		inno_write(inno, 0xaa, RK3328_POST_PLL_REFCLK_SEL_TMDS);
 		inno_write(inno, 0xab, RK3328_POST_PLL_FB_DIV_8(cfg->fbdiv) |
 			   RK3328_POST_PLL_PRE_DIV(cfg->prediv));
+		inno_write(inno, 0xaa, RK3328_POST_PLL_REFCLK_SEL_TMDS |
+			   RK3328_POST_PLL_POWER_DOWN);
 	} else {
 		v = (cfg->postdiv / 2) - 1;
 		v &= RK3328_POST_PLL_POST_DIV_MASK;
@@ -1030,7 +1031,8 @@ inno_hdmi_phy_rk3328_power_on(struct inno_hdmi_phy *inno,
 		inno_write(inno, 0xab, RK3328_POST_PLL_FB_DIV_8(cfg->fbdiv) |
 			   RK3328_POST_PLL_PRE_DIV(cfg->prediv));
 		inno_write(inno, 0xaa, RK3328_POST_PLL_POST_DIV_ENABLE |
-			   RK3328_POST_PLL_REFCLK_SEL_TMDS);
+			   RK3328_POST_PLL_REFCLK_SEL_TMDS |
+			   RK3328_POST_PLL_POWER_DOWN);
 	}
 
 	for (v = 0; v < 14; v++)
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
