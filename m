Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46913C021B2
	for <linux-phy@archiver.kernel.org>; Sun, 23 Feb 2025 11:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsV0bV8D9kRy02bs7SsNkNSRJuRUNZVwjQAk+liPyLk=; b=AfLNdM+PZguGRC
	bN6xLFNouUVxrVpQ0PHqQMF6vQJYWl097md42gCAVT9WKCJLNUL37W2bBCnx2zI/UwOkMlNkt6eWb
	JWV6XYoeoR+r13tnfLMhPz505NM3EstoBkraNfdfiIiRiPIyN5NDpaKDxSjBWZRuj+0vl1xCuEGqx
	DwDRi9tl7uu2tZrFQsMv9h9EffcDTIliCSYpglIc5XOi4gBuZCHNlDmz8MwTMUFqpHFye+llF4G8r
	S8816sGT3VC6sw7Z6EhT+bV3sKer6WPEcktPeSfveH5vz8qN9BT3LRzpirvkbk/fC7BJ45C4DCH50
	gtlzGYqOT9jCRZ1R9ANA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tm9qX-0000000Aw1o-04U4;
	Sun, 23 Feb 2025 11:08:29 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tm9kj-0000000AupW-36QZ;
	Sun, 23 Feb 2025 11:02:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740308548;
	bh=JVO6B5huh7eGDo+k3A1fG3SKCxGyB11XeWKMxuuZ+rw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=cpDS2JUc+MmlgrsPFOokKGjIpsyFpA+XzBTpm+0RU0zK7viHx3hhDXPSVrYJ3evkP
	 0a10fO3kiwrQGRnOpsY4S9RJnzNHL0fDVqeqLu/Wbg2VAgHJ1+Qu6behCnKhz8+Y7Q
	 +9zlbwaNW3oTNmRGe6rWMIcIGomarbwN0cnN58Hnfqog3oA6gvq4H1b9JAoOEOR9zF
	 VniuSQZHn2FBXIxroj13mOlOzjySWhQDbu9cBT09NqXOrccvWuDtfbUWPk+DIhEmxC
	 W4xelZKRqcBrhzYYwqo3aNl7bfiQdP5tCqPxwxVn/fwJPc5ze2wEN3uszdnkekiJqX
	 FgnjPqhox7ubg==
Received: from localhost (unknown [188.27.58.83])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 2A60A17E0DD1;
	Sun, 23 Feb 2025 12:02:28 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sun, 23 Feb 2025 13:02:10 +0200
Subject: [PATCH v3 3/8] phy: rockchip: samsung-hdptx: Fix clock ratio setup
MIME-Version: 1.0
Message-Id: <20250223-phy-sam-hdptx-bpc-v3-3-66a5c8e68327@collabora.com>
References: <20250223-phy-sam-hdptx-bpc-v3-0-66a5c8e68327@collabora.com>
In-Reply-To: <20250223-phy-sam-hdptx-bpc-v3-0-66a5c8e68327@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_030229_926631_FBA8C3DE 
X-CRM114-Status: UNSURE (   9.34  )
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

The switch from 1/10 to 1/40 clock ratio must happen when exceeding the
340 MHz rate limit of HDMI 1.4, i.e. when entering the HDMI 2.0 domain,
and not before.

While at it, introduce a define for this rate limit constant.

Fixes: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index f88369864c50e4563834ccbb26f1f9f440e99271..cf2c3a46604cb9d8c26fe5ec8346904e0b62848f 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -320,6 +320,7 @@
 #define LN3_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
 #define LN3_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
 
+#define HDMI14_MAX_RATE			340000000
 #define HDMI20_MAX_RATE			600000000
 
 enum dp_link_rate {
@@ -1072,7 +1073,7 @@ static int rk_hdptx_ropll_tmds_mode_config(struct rk_hdptx_phy *hdptx,
 
 	regmap_write(hdptx->regmap, LNTOP_REG(0200), 0x06);
 
-	if (rate >= 3400000) {
+	if (rate > HDMI14_MAX_RATE / 100) {
 		/* For 1/40 bitrate clk */
 		rk_hdptx_multi_reg_write(hdptx, rk_hdtpx_tmds_lntop_highbr_seq);
 	} else {

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
