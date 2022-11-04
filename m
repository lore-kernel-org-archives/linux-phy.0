Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF3C0C433FE
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 13:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Nb/LTB6ekDFM0an13CRtbKfjAID+K2c9520gmaexH8=; b=g01DYDzXkoql5z
	JIfbCmJW9+ioFFjDNPygUoOhl6HoIuI2/IG8zfA8LrhE5mEUrr9f70cRQ//g8HeTplImjOCx88JJI
	GyI31Fj38dgCNKWDmZLGHJOElTCmJpkeWk25MVFLrF5xc7B2HYI7bzYzYMXdZcJyHNkdfcqVjx4VR
	sFSqpWAe/InCLib58uB85ePyNU0BpCoY5RnXZMn4Y7GJnqSrccs7e3v9cKHnsBZclHmAiqUpil+2j
	Kt4h6V40fnWYhwusSuqSmuGeQyfzffuFNPAFju41gA860JeMNM7T78Pgxn5RMXDnHzt0oTAS/sMKk
	ONNvWwcYfkgNLy0LCFcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqwbX-003dT4-43; Fri, 04 Nov 2022 13:19:27 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqwaK-003caj-6d; Fri, 04 Nov 2022 13:18:13 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailnew.nyi.internal (Postfix) with ESMTP id 836E25804B1;
	Fri,  4 Nov 2022 09:18:11 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Fri, 04 Nov 2022 09:18:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667567891; x=
	1667575091; bh=fmnbd20vnai0Isz1Na1SFvb6jzXJYKrz2269y3tcZXo=; b=C
	oupMYwVAU4WGUwrdylKXOPlxhygxfcRGnWp6IwpQkm4YYtTHyAKoct293YeCWZXZ
	8rfr1ME2p/GyrfDv8oDDxmf2e4yG5bUatgwp430EnNSCsXFsHzqGJiz8Ww0BqR0k
	j7jNiHqCoC/cowwZb7ACLnQf3HhNeBlRsc2An1cZvKrtbpjITe1RAlgcmY1A8wZe
	hNSLfcAMlRgiOKr8M0NErhYhxQK+vcfs3B92SPekPW7+/QlHz8w9TK08eKhNDWdW
	Vnbjxs2GgTjwJ9he/DdVCwnTKcI1ezMt88jjRC8r5z3qnZLuh32+95TFtPv4r08G
	K1DJikoMzpK18M3jUuUxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1667567891; x=
	1667575091; bh=fmnbd20vnai0Isz1Na1SFvb6jzXJYKrz2269y3tcZXo=; b=g
	UjzDA9JjkPwIuc39XA9n1T6FwrGwA++nqNr6afztTE8pmRMap/DnqYopuHU5e+lV
	8Qw3bqJerP7ZAonKJs1UoP7P0I71j+JxkATz3ErQl6hkfSo+t8ekXisNL/h7pMMK
	vmYq/LO/yIvqy4MCkKySajNaji4AVcSyAeDndK+y3SHfZrr4pvrK/WcRzFhvtAgq
	K1zbe/XTx3o/HJIzSh7eVb8lfVjm4pRHtSSrC/yp/X3JBz63DZb/YDR34WR8wR/Z
	yOZ62d4C4IBMmbsEUKk+U4yuiJAGxhQdXn7f8uv75RtQtwF5q4z6YBbCMWPDHWF/
	ImxbV4kvYVXO3DZ/OpKSg==
X-ME-Sender: <xms:ExFlYx5wOINYUZbR1RbTCApGVsu2CwngOOkhASmkzXuJpYVnLIu_tQ>
    <xme:ExFlY-7MYDtSfIbdwlsXm6KnCBDKU1akx5tt961cHL9vEgCxSoxfGoNDj7fUaiB4Y
    tReRqmvuvWV09iBLWk>
X-ME-Received: <xmr:ExFlY4dtHYcIxYhh7_iHw7LuSUes5VRSwIUj3zS0Qu3EOlohqM_7JjqofOkvT18828aXdc7iMtePv7Q8_bXq4Cx9rGeIwGY7QJ1Evl-XBp9gow>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrvddugdegkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeduudduhfevjeetfeegvdffvdevvdejudegudekjeehtdelhfffveethfej
    ledtveenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:ExFlY6JYRkdJGgoNXORjtR2RTexhRTa98QoW0FiIPSw6vdvnDZk1cA>
    <xmx:ExFlY1INMfok4ugxcAeyaw6d2bovQxscilcvxeIQ9v_dxh7b5vM3GQ>
    <xmx:ExFlYzz0WH1gaWxAQrOniSrbPQ4CEGHlu1qIVNdfDt6B_2gBSZ4-xg>
    <xmx:ExFlY0ZS_09pVAWoGjTpKf1JZKWGMTobM39h8RxuKcQLTVxzzVD3Cg>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 4 Nov 2022 09:18:10 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
Date: Fri, 04 Nov 2022 14:17:28 +0100
Subject: [PATCH v2 11/65] clk: k210: aclk: Add a determine_rate hook
MIME-Version: 1.0
Message-Id: <20221018-clk-range-checks-fixes-v2-11-f6736dec138e@cerno.tech>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2301; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=9Rjc30gdQbiTU5mY+5IHrTTpT8oxx4VPce37OsseMFE=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMmpAp/F1z66cCJxStfCZub3C97tWJWyoZLbwXV5wvX/zVUM
 ihavO0pZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjAR6VmMDEtyuXNYNMO2b9lc8V7Ucs
 fCtUJu/bY9FZdfP/2z7wGzzgmGfzZ3xP66uU+wLN7h8NTnpPO1tNdq6n/maezsluS61LbpFCcA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_061812_363377_7093E7FA 
X-CRM114-Status: GOOD (  17.97  )
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

The K210 ACLK clock implements a mux with a set_parent hook, but
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

The latter case would be equivalent to setting the flag
CLK_SET_RATE_NO_REPARENT, together with setting our determine_rate hook
to __clk_mux_determine_rate(). Indeed, if no determine_rate
implementation is provided, clk_round_rate() (through
clk_core_round_rate_nolock()) will call itself on the parent if
CLK_SET_RATE_PARENT is set, and will not change the clock rate
otherwise. __clk_mux_determine_rate() has the exact same behavior when
CLK_SET_RATE_NO_REPARENT is set.

And if it was an oversight, then we are at least explicit about our
behavior now and it can be further refined down the line.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/clk-k210.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/clk-k210.c b/drivers/clk/clk-k210.c
index 279931a38127..5b9fd00d14e1 100644
--- a/drivers/clk/clk-k210.c
+++ b/drivers/clk/clk-k210.c
@@ -639,6 +639,7 @@ static unsigned long k210_aclk_get_rate(struct clk_hw *hw,
 }
 
 static const struct clk_ops k210_aclk_ops = {
+	.determine_rate = __clk_mux_determine_rate,
 	.set_parent	= k210_aclk_set_parent,
 	.get_parent	= k210_aclk_get_parent,
 	.recalc_rate	= k210_aclk_get_rate,
@@ -661,6 +662,7 @@ static int __init k210_register_aclk(struct device_node *np,
 	init.parent_data = parent_data;
 	init.num_parents = 2;
 	init.ops = &k210_aclk_ops;
+	init.flags = CLK_SET_RATE_NO_REPARENT;
 	ksc->aclk.init = &init;
 
 	ret = of_clk_hw_register(np, &ksc->aclk);

-- 
b4 0.11.0-dev-99e3a

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
