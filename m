Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 977F0CCFA13
	for <linux-phy@archiver.kernel.org>; Thu,  6 Nov 2025 23:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IjptdUgHQ4nZ1eYsfQ5LW4HqooRkaatuPxvLOT0J93E=; b=WMLumdqBBZPqWq
	GKzFjrYnkao8GzYnGJ5YB1km38PSgw0UV20u+afhP6odAFUDm206KpcyfnxstzPQ03xtry4zPXR8F
	dTnLLx0nHAHqVBieFXGiIiq+nbZS/CIizhkD38CQQOYcDW7IPsP/k3XyPNcLt3d8/EnNN0xH+sTb1
	Cy6ELoqGRLY576GB15yLIFDAZqUPJdBRsMv72A0/OHCaRn2FqkyfJdQfQeGUEk5O5+ctLVvfNNlIe
	Vb9EKw1zl3qf4sU981Bpl/nzy9iYvg51OfV90MFX4WkDo1trFhiN5bKp4We7jnm+d2g9SzgrydIGc
	wOmp4DOKnynfFy7tfiKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9Nt-0000000GNgP-0uF6;
	Thu, 06 Nov 2025 23:27:17 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9Nq-0000000GNZ4-32d3
	for linux-phy@lists.infradead.org;
	Thu, 06 Nov 2025 23:27:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762471633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tBx/RbO8BQMCKJrhX3UVFzNDKA/fgJo016hiP8kJ+pU=;
	b=by/RSgi15OpAY9bfkalQPnabc9ZvyUSmjdhiad1qaAjbyZGJF9U4lDB3Cq5LMbb3AknEtP
	K88SJrWVjYlLkgX+4k0V4Ks/QoOj19pjv8Nk8pYe0Rjy01KsdjVGog3o1t4VHfNoaSCkRt
	xUPD+p3e8ZbsDNeyyxI5QhvyzC1l6IY=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-37-ATiaw7M7PGuokzlF1w6hvA-1; Thu, 06 Nov 2025 18:27:12 -0500
X-MC-Unique: ATiaw7M7PGuokzlF1w6hvA-1
X-Mimecast-MFC-AGG-ID: ATiaw7M7PGuokzlF1w6hvA_1762471631
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8b33c1d8eso5308081cf.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Nov 2025 15:27:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762471631; x=1763076431;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tBx/RbO8BQMCKJrhX3UVFzNDKA/fgJo016hiP8kJ+pU=;
        b=D+zQukYQJeqkZIHdLPmPAu6g6Ta9cjzRKlYzk+RG+AHj/NwGXEOrPCnGdGJUT06Rg2
         hlmqX1ol73UGsFuEI/2QCCK7JQ/bPFS5LIeI4tloTlXLLHN1jHyWHuW1zLXVaupoimMU
         wEhIqqAUjqeMPc0FPwlP3jA94nX+i7D85xjqtSLfByvBkH1J+kGbYn951FS7bz0gt9h7
         VhGK0B/csU0zIm0ahQXLctftsxqw1rQsq9b+Z7BGIAUvZVPYVvavGcA3/xJsIBbmQ/tt
         FSkoq4xyt8hWEp1Vf93Ur0DwyOiXnTh6vT0oObud0tA3D6NxZrVHEbi8wzJ2DmBc3EWt
         9+VQ==
X-Forwarded-Encrypted: i=1; AJvYcCWb/tPlR0Srxb1bNhISaPjz3YHkIwEh6EIuvCCbOTMfq+3zA9DZz5Q1PqxGsWCIFNysomDJU8LEAXY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYFGZqwkp9IfLL89jQRExtdYH+TMpJpmNf00zgqiQgwTivEV8k
	VXzD5PwgyfTEVhvRNK45CH3cdia5lcD1peanNTCCy3V+1eO7XpAL0ME2wo3zE+/lqzslRUj2g+l
	w+nPd76E+vZkHg2ODLkWuZmdWsdRuZ+XVYgZ1L5yJRaCWEQj9f+P3XCS7wvb6O9wut/Q=
X-Gm-Gg: ASbGncv/EQEwlNply2lx05oyxNZNxOYNGmVyhPp1rZlJ1wXDhQU1oWWHc0hu33L2PhN
	1XcoeWv1poai0Z6oS55WGd+wErdbwWzg02JOM0Yjht0BQ98z8UtpLEoit/NLLBNJtyKvFZcklQh
	YPyKuSUf3HykPiaqrXALKK1tHPrCou2YZvV7tr4TlkRVGPvku0WcRWGQXb1+YRQF227aBekkgGD
	vMMr4VQZ5MdW8br0mv2E28djZxZBITejNsnCn7vedOFop9OGVZNXN8vnNYud1iyfKFz3nj1fHV6
	bIAz7T4pjzC/KcN5ZKJw4JaeHWhNX9avL1g9Jvgknyq33ecJ7xc/NJ5hFeh+Wmexrg1Um088tYD
	9dWMbueb7+TwGr/B7MQ+fKDQ6FKTphLk8tjBeXvRQVg==
X-Received: by 2002:a05:622a:189b:b0:4e8:affc:29a7 with SMTP id d75a77b69052e-4ed94a4c31dmr14935851cf.69.1762471631438;
        Thu, 06 Nov 2025 15:27:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFt4j9euZosp2hZeGEJaF3Zc+V1HHaVy/kAkeKIc2HE/iGD894+L3jbsBB5eqZssh32fH0eaA==
X-Received: by 2002:a05:622a:189b:b0:4e8:affc:29a7 with SMTP id d75a77b69052e-4ed94a4c31dmr14935481cf.69.1762471631061;
        Thu, 06 Nov 2025 15:27:11 -0800 (PST)
Received: from [10.197.115.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88082a3aa91sm27389196d6.56.2025.11.06.15.27.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:27:10 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 06 Nov 2025 18:25:54 -0500
Subject: [PATCH v2 RESEND 8/9] phy: rockchip: phy-rockchip-samsung-hdptx:
 convert from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251106-phy-clk-route-rate-v2-resend-v1-8-e2058963bfb1@redhat.com>
References: <20251106-phy-clk-route-rate-v2-resend-v1-0-e2058963bfb1@redhat.com>
In-Reply-To: <20251106-phy-clk-route-rate-v2-resend-v1-0-e2058963bfb1@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>, 
 Maxime Ripard <mripard@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2539; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=XNrncR0wdrogri0mOccJ1j7cRKzm0SbJrI8uS65MUBg=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ59RZa/lLcfPtOav3l31tLb3NLLrj9XuLfm2MKzO8eb
 lmSfiJesaOUhUGMi0FWTJFlSa5RQUTqKtt7dzRZYOawMoEMYeDiFICJLLFjZFjls3zG0W8X965q
 XmO0fd3SSvnMpefLahKc57Dc3CGSpOjH8Fe6eEW0erXU1wzZ+KO6q++4quybaPjtwWm7bfZNNya
 mn+QHAA==
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: NLKBMZIGVzYw7TaW9bb_nQN2cWhJbJDKjZ9-EXCWF54_1762471631
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_152714_868776_E93DC306 
X-CRM114-Status: GOOD (  14.24  )
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

The round_rate() clk ops is deprecated, so migrate this driver from
round_rate() to determine_rate() using the Coccinelle semantic patch
on the cover letter of this series.

Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 01bbf668e05ef94e24a3fa11f96f219c4f942451..e5436c99a3c435715358a07da73b4d10d78ef1fc 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1868,8 +1868,8 @@ static unsigned long rk_hdptx_phy_clk_recalc_rate(struct clk_hw *hw,
 	return hdptx->hw_rate;
 }
 
-static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
-					unsigned long *parent_rate)
+static int rk_hdptx_phy_clk_determine_rate(struct clk_hw *hw,
+					   struct clk_rate_request *req)
 {
 	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
 
@@ -1878,9 +1878,9 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * To be dropped as soon as the RK DW HDMI QP bridge driver
 	 * switches to make use of phy_configure().
 	 */
-	if (!hdptx->restrict_rate_change && rate != hdptx->hdmi_cfg.tmds_char_rate) {
+	if (!hdptx->restrict_rate_change && req->rate != hdptx->hdmi_cfg.tmds_char_rate) {
 		struct phy_configure_opts_hdmi hdmi = {
-			.tmds_char_rate = rate,
+			.tmds_char_rate = req->rate,
 		};
 		int ret = rk_hdptx_phy_verify_hdmi_config(hdptx, &hdmi);
 
@@ -1895,7 +1895,9 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * hence ensure rk_hdptx_phy_clk_set_rate() won't be invoked with
 	 * a different rate argument.
 	 */
-	return hdptx->hdmi_cfg.tmds_char_rate;
+	req->rate = hdptx->hdmi_cfg.tmds_char_rate;
+
+	return 0;
 }
 
 static int rk_hdptx_phy_clk_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -1924,7 +1926,7 @@ static const struct clk_ops hdptx_phy_clk_ops = {
 	.prepare = rk_hdptx_phy_clk_prepare,
 	.unprepare = rk_hdptx_phy_clk_unprepare,
 	.recalc_rate = rk_hdptx_phy_clk_recalc_rate,
-	.round_rate = rk_hdptx_phy_clk_round_rate,
+	.determine_rate = rk_hdptx_phy_clk_determine_rate,
 	.set_rate = rk_hdptx_phy_clk_set_rate,
 };
 

-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
