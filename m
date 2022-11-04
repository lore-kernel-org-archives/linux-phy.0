Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D71DC433FE
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 13:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0P7B6L4pmo9ofnLo0u0/VdIyiZwbgZs6Qgu8cb9HbN8=; b=j6n1krkD+p0yr2
	fsse+QbfugEewFdLKkKxnQH7kf+f7i0OMG9TN3h+eMwNu8INrqKWaWCak/r+JfYu/s84KuN/j87Ti
	+yehUC6zfeKAXxyvkCaxB/uUiwsgZZUm/UamZMCW9jK1RLMbPTP80XWYiYQ/ihpMqhxfCRyCSTM/h
	n8UTcxPSohJwzjGkFTBDAsjWzFDQp+RyxunRx9tw+pxj2E/GOs+IdHHwmXLhFJ8zQbaVkgjqE1h48
	vGAimPMpjH8k1NKjqr5CohZ6HI1jwVjEDtiNHEinvSfdv1s1jInjqrK1b09XeR1lxi1lluUEAF/Mn
	7+zykfUdH7Z6mejTfN2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqwqy-003jgh-KO; Fri, 04 Nov 2022 13:35:24 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqwpS-003iR9-EP; Fri, 04 Nov 2022 13:33:54 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailnew.nyi.internal (Postfix) with ESMTP id C50CB5805A0;
	Fri,  4 Nov 2022 09:33:49 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Fri, 04 Nov 2022 09:33:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667568829; x=
	1667576029; bh=hEKOJDq7NCncgYxMXlHU+pU/ROWXe3uUCVEMV5q4hLU=; b=S
	1pINkBqcWESXdghzvqqTZs9BO5lYuLhhZ5CGl0LcVdYKJznnGhoFG5VAn6oAtboI
	PyXtNU7GcGMKE6HOpd8uAuJ/yE/7GMkS72XKbuhyY885bfdumczASzwEy1Nf/zpT
	iOOjL9D46vC+kxk7CAzmcxo+kBvdt3oN3c9fc7YnuCEzZiHFLs2HrcOT4/JNaO9k
	ifs22l75gcVnUeRYd5I/Cld6iewIBHO8v6mMpazQjMa6kyJqYUWZI70+wU6V2BN+
	ygHUDlhy4ufoILFm2mXWYbtNPP19UZoB/ugqgXh8HxR0mjVDq2QQ2wt9VUjcHnbA
	8t7JSisnfH/d/NDMCH3pQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1667568829; x=
	1667576029; bh=hEKOJDq7NCncgYxMXlHU+pU/ROWXe3uUCVEMV5q4hLU=; b=k
	ML05Bx+lgy7VkDGEd1tIwrJVJ99fvXAcPO+Ca3QUdxrT0gnJ0kRUJKT2wg1wxNRO
	AasTRQIK74xQgAjvRk+gFLLzTWL6JAz3rr6QHO4xSHkThMWMuoQuAedlFQ7oTjXB
	Pen0hx2qf0D+hasFFLKwlb2+53oGASLO/WWFQzTmprDJUZbgfkF1V70Jj59asmlZ
	UiA6df7slql0NX+AYcZ42QCnNSdxKDGAIS17jazcDb+EOu27jAvgGAPIaPcc/aHD
	ymKSmrbFpBKas4mAqmu9kMld3Dk0+xYlrycDhgL91+oMXn0jwzHLBd67LwBtaVXH
	TM4TW2lwglrsmvagKiebg==
X-ME-Sender: <xms:vRRlY_snyScnvJfLmail2yPg8fu9Mdo30nKzXzBgdoIlQm7duIMiVg>
    <xme:vRRlYwek63ciyiAob-zbhplr1JrQt6qs-VKloBuvF2lFSmT_liT69fDoTzWSBQ6Ev
    qw-hxwV8Cj_gi8NcUc>
X-ME-Received: <xmr:vRRlYyx5hwTR9_NsPsrJyfv43x3upPKmTncwpkpxwfQB3BL0tHwflbjvFSWmr7NZv6pd_zFd1lBOLROOY5_cDSTSWIRRXhT6RF1UxiVX4ZXYCw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrvddugdehvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:vRRlY-OL_8VoH1nEAQYXd0Apy8v2isOjIKeh4xpGpWNZ8kjm6IXTVw>
    <xmx:vRRlY_9FBPEDgh51KfDic2CwepuaEVuAOS-2cJizs9ilI_sypmfwuQ>
    <xmx:vRRlY-WDr59S-fJwheMZlHR3UOaZFkVQy0InlpVkIK96TMP1X0fM1A>
    <xmx:vRRlY5cRcl7dK3vkZTdHFnyk_laqLI2Haoiywo3LrtEkJlXg-r4wnQ>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 4 Nov 2022 09:33:48 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
Date: Fri, 04 Nov 2022 14:18:14 +0100
Subject: [PATCH v2 57/65] clk: ingenic: tcu: Switch to determine_rate
MIME-Version: 1.0
Message-Id: <20221018-clk-range-checks-fixes-v2-57-f6736dec138e@cerno.tech>
References: <20221018-clk-range-checks-fixes-v2-0-f6736dec138e@cerno.tech>
In-Reply-To: <20221018-clk-range-checks-fixes-v2-0-f6736dec138e@cerno.tech>
To: Stephen Boyd <sboyd@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Paul Cercueil <paul@crapouillou.net>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Andreas Färber <afaerber@suse.de>,
 Jonathan Hunter <jonathanh@nvidia.com>, Abel Vesa <abelvesa@kernel.org>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Orson Zhai <orsonzhai@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Samuel Holland <samuel@sholland.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Vinod Koul <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sekhar Nori <nsekhar@ti.com>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Takashi Iwai <tiwai@suse.com>,
 David Airlie <airlied@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 David Lechner <david@lechnology.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Mark Brown <broonie@kernel.org>,
 Max Filippov <jcmvbkbc@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-stm32@st-md-mailman.stormreply.com, alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-mips@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>,
 linux-renesas-soc@vger.kernel.org, linux-actions@lists.infradead.org, linux-clk@vger.kernel.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, patches@opensource.cirrus.com,
 linux-tegra@vger.kernel.org, linux-rtc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
X-Mailer: b4 0.11.0-dev-99e3a
X-Developer-Signature: v=1; a=openpgp-sha256; l=2825; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=wUbMrwrN41Q9yshHLu56uxaXfBgvFGNU5DxK45MwFTw=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMmpAt9uZeRsEZz3PfGUUdnyeWsEFx2Zrns00b49+M+ZvAMB
 SteudJSyMIhxMciKKbLECJsviTs163UnG988mDmsTCBDGLg4BWAi3/4z/GI2nHdaY3amI8vLK9+qo2
 6+TZ3nc4894/uZ/PTrDZF2jccZGS4tya/dwt7vnOc018usYGdpTvTSknTbFd732ln+fOq/zg8A
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_063350_716749_3F1AD28E 
X-CRM114-Status: GOOD (  21.27  )
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

The Ingenic TCU clocks implements a mux with a set_parent hook, but
doesn't provide a determine_rate implementation.

This is a bit odd, since set_parent() is there to, as its name implies,
change the parent of a clock. However, the most likely candidate to
trigger that parent change is a call to clk_set_rate(), with
determine_rate() figuring out which parent is the best suited for a
given rate.

The other trigger would be a call to clk_set_parent(), but it's far less
used, and it doesn't look like there's any obvious user for that clock.

So, the set_parent hook is effectively unused, possibly because of an
oversight. However, it could also be an explicit decision by the
original author to avoid any reparenting but through an explicit call to
clk_set_parent().

The driver does implement round_rate() though, which means that we can
change the rate of the clock, but we will never get to change the
parent.

However, It's hard to tell whether it's been done on purpose or not.

Since we'll start mandating a determine_rate() implementation, let's
convert the round_rate() implementation to a determine_rate(), which
will also make the current behavior explicit. And if it was an
oversight, the clock behaviour can be adjusted later on.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/ingenic/tcu.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/ingenic/tcu.c b/drivers/clk/ingenic/tcu.c
index d5544cbc5c48..7d04ef40b7cf 100644
--- a/drivers/clk/ingenic/tcu.c
+++ b/drivers/clk/ingenic/tcu.c
@@ -178,18 +178,21 @@ static u8 ingenic_tcu_get_prescale(unsigned long rate, unsigned long req_rate)
 	return 5; /* /1024 divider */
 }
 
-static long ingenic_tcu_round_rate(struct clk_hw *hw, unsigned long req_rate,
-		unsigned long *parent_rate)
+static int ingenic_tcu_determine_rate(struct clk_hw *hw,
+				      struct clk_rate_request *req)
 {
-	unsigned long rate = *parent_rate;
+	unsigned long rate = req->best_parent_rate;
 	u8 prescale;
 
-	if (req_rate > rate)
-		return rate;
+	if (req->rate > rate) {
+		req->rate = rate;
+		return 0;
+	}
 
-	prescale = ingenic_tcu_get_prescale(rate, req_rate);
+	prescale = ingenic_tcu_get_prescale(rate, req->rate);
 
-	return rate >> (prescale * 2);
+	req->rate = rate >> (prescale * 2);
+	return 0;
 }
 
 static int ingenic_tcu_set_rate(struct clk_hw *hw, unsigned long req_rate,
@@ -219,7 +222,7 @@ static const struct clk_ops ingenic_tcu_clk_ops = {
 	.set_parent	= ingenic_tcu_set_parent,
 
 	.recalc_rate	= ingenic_tcu_recalc_rate,
-	.round_rate	= ingenic_tcu_round_rate,
+	.determine_rate	= ingenic_tcu_determine_rate,
 	.set_rate	= ingenic_tcu_set_rate,
 
 	.enable		= ingenic_tcu_enable,

-- 
b4 0.11.0-dev-99e3a

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
