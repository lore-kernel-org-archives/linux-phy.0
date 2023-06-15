Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 588D5EB64DB
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 17:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WImDmRf1dRLiIC4a8ftakJ0Iyxx1zfFhPBvygSIZ1xY=; b=gqRGEJrO9nfzWtQbCzv5duLRrQ
	mT1cB0wZzX5stRrezRUOpRwP06YmXW0/v1LWZgT0U6i/2mqKVNcMwpRCpWlW/Un6++XXi05PYeDFy
	n/+SQjsRyvFWqXgjsUwjo9exehPeyA0VF1DMqmiUEZ/9wgF791gLeniyP3e+kspcqJ0JVemIwL/tZ
	CkzMF4Z9/icqYw8MEk7jw90+oICbpxcVWec4ejju+kONMeyxSZEKadZBeqPJvG5Tq4vNYff9mDmql
	eN21sE7Fi6zcQobCjtsdJehAtRXAKx+eJZeDHiKrogJ7YOsaPAFA4+HHnDlH2cFr0UP2Ai8OfSWKa
	aCexO6ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUR-00FXLg-36;
	Thu, 15 Jun 2023 17:10:31 +0000
Received: from s.wrqvtzvf.outbound-mail.sendgrid.net ([149.72.126.143])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUJ-00FXCp-1w
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 17:10:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=8ooaJ/fJ3+j9OCaEbuWbdYU2/7sjkqEhUDQuCiE/jIU=;
	b=NRpURhpCccrMdm7W1pDACKs/yei/UGUXGihmLRCubNDdsy4SP5ySgOshUxQHX0PygiF9
	qjKpT7tTGUI0wkXm0Ag+Gnr5KvQ1BiewqOUkT2GuOzby5GquhHmwAZvYW28C6PSYaRtS0k
	0W/5eaQybcD6ByNQ+s2x07Z9g65gJhjfz7nn9KPab6NlT3gAVPV753UMxdDYPbSvSzckJb
	/VxLRTo80LHb36mrh5o33voD4e3l0sPkRmb7kjyVvbkRVu3NDBwqzlr4PXVqYGFe8xEbzT
	vgJV7qhQhYVKlgduYSDd93cfh6bgEdR695Dc04W0+usTM5dmkcGxqartrTiu8Q1g==
Received: by filterdrecv-8684c58db7-nd6mk with SMTP id filterdrecv-8684c58db7-nd6mk-1-648B45FA-20
        2023-06-15 17:10:18.776312499 +0000 UTC m=+3087108.038527950
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-2 (SG)
	with ESMTP
	id zaywGFtjRWCk_6Nh7Lu_Fw
	Thu, 15 Jun 2023 17:10:18.316 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v4 2/6] phy/rockchip: inno-hdmi: round fractal pixclock in
 rk3328 recalc_rate
Date: Thu, 15 Jun 2023 17:10:19 +0000 (UTC)
Message-Id: <20230615171005.2251032-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615171005.2251032-1-jonas@kwiboo.se>
References: <20230615171005.2251032-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h3SYu5hEq4KgBns7F?=
 =?us-ascii?Q?iO7aTPDjxDTYhEBYiJEY=2FNOI1OekR9=2FtXSs=2F5zA?=
 =?us-ascii?Q?LrTs1XRDkOP3mQmWIORiMAV6wOjsV7kk0b=2FJUEc?=
 =?us-ascii?Q?+SGfyFfi5gT3NQ5vYyPvdzdkXenwkUD5fS+dVhx?=
 =?us-ascii?Q?8e55hLkcHB3+oDX5uF8F5Ed2yrX2GiPtjkN+SB?=
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Zheng Yang <zhengyang@rock-chips.com>
Cc: Alex Bee <knaerzche@gmail.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
	Kishon Vijay Abraham I <kishon@ti.com>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_101023_795317_C9441E20 
X-CRM114-Status: UNSURE (   9.70  )
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

From: Zheng Yang <zhengyang@rock-chips.com>

inno_hdmi_phy_rk3328_clk_recalc_rate() is returning a rate not found
in the pre pll config table when the fractal divider is used.
This can prevent proper power_on because a tmdsclock for the new rate
is not found in the pre pll config table.

Fix this by saving and returning a rounded pixel rate that exist
in the pre pll config table.

Fixes: 53706a116863 ("phy: add Rockchip Innosilicon hdmi phy")
Signed-off-by: Zheng Yang <zhengyang@rock-chips.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v3:
- no change

 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index f348e5347d81..7d412f771f6c 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -745,10 +745,12 @@ unsigned long inno_hdmi_phy_rk3328_clk_recalc_rate(struct clk_hw *hw,
 		do_div(vco, (nd * (no_a == 1 ? no_b : no_a) * no_d * 2));
 	}
 
-	inno->pixclock = vco;
-	dev_dbg(inno->dev, "%s rate %lu\n", __func__, inno->pixclock);
+	inno->pixclock = DIV_ROUND_CLOSEST((unsigned long)vco, 1000) * 1000;
 
-	return vco;
+	dev_dbg(inno->dev, "%s rate %lu vco %llu\n",
+		__func__, inno->pixclock, vco);
+
+	return inno->pixclock;
 }
 
 static long inno_hdmi_phy_rk3328_clk_round_rate(struct clk_hw *hw,
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
