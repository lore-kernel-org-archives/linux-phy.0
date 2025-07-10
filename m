Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA876C83F17
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 18:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLU7IHM2EZWZR4FeEuAcHAchfxLupvjXZfpeti5I2P8=; b=hYcxueFnNqmtxB
	/AilQv6mKd/4QdCkaTsnUQWSk8xiGdAW0duZf6ViIvSU+9ayEmxivSTry9fQLvdPpcyJdV1tSHMyA
	mbNiJcN2SoZpFQB36DjwBvtr7/ZsI+ZToyAXUE8FFM3ZHKILO9PoMGtR3ZHCgePj0r9b1TbehCnsp
	0z3pOG7meDJ9zHZ6ZbKJ9hZU/ISgPUZoLRLzu32+vIRKN7DcyA1NHU7+6l8ENp+DMulJUSb/UpVDo
	j/3XVNIhy/iZ4EFtohp5WxjfIUdguwfgVXXDHNMfyclL1qw0sUoNd0vjLG1u0PKDV0f62HvAo8vNQ
	/7chr6ZplEJTuPBpUCwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw3V-0000000CiKS-2m8H;
	Thu, 10 Jul 2025 18:31:37 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtqN-0000000CMfb-18Eu
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 16:09:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163794;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=X6cvCt1VBmJTFRCGYPDZTJ8fBnxpBorEBWf40KWv3BU=;
	b=JhvgPz+7mnKO+7YBaVyfEzTSqLcBmri5VvIgFMmIZmyYfOqNwEyk6MdzwYmg0kBfAFggUw
	2W5jgXP6I3tWETdqa68bLpHIogO/bYLbiRfi21vZqi65LysqpnyZIC5lmzWKLhdaCh0D6m
	3Hl6lbSiZ5XcKwWSwBjTkgdQ6H+W/bY=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-395-iiKX6kidOnakrJPYDYDRug-1; Thu, 10 Jul 2025 12:08:30 -0400
X-MC-Unique: iiKX6kidOnakrJPYDYDRug-1
X-Mimecast-MFC-AGG-ID: iiKX6kidOnakrJPYDYDRug_1752163710
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fb3bb94b5cso18557486d6.2
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 09:08:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163709; x=1752768509;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X6cvCt1VBmJTFRCGYPDZTJ8fBnxpBorEBWf40KWv3BU=;
        b=HazQ97E2XczjPktxknJdh/qHFwUv4sCPyDMBD6WYzrf8bQJqJrE/5CJWKHU7hu/tgt
         GSWRLC9hdUMe7UCzYms6+5H2GwZ/eb1qeY0vLeGtjpatdDHpBm7QOImVH0LcUhT5Y2Jd
         PDSzICV6Xnr+TAkG2o+NLKJUr++7iw4Oeatghnqc4ndaQmp4FQCKvTLUVxxsIoHL+XOi
         FP28cKHMran/Z47jU4CUnMOdcOcH5+neGwHUTrlC56VkiC1rqgOmueUZHqwPL0UGSR5L
         BPW8+DYnMLXKWMAasYG8W+ek14s+V79dq+9Wbbgpj0Y2xq8sp7Q0ANyIXGIsBGA29Wvp
         RYBw==
X-Forwarded-Encrypted: i=1; AJvYcCUbtL6fkAvKYE+f3X0tbs5Jh4bIW+IUOE35SrHG21koxbxIqM/RNGP5S83WhmroRs2v2h8dUr39B5E=@lists.infradead.org
X-Gm-Message-State: AOJu0YxxrvyEfD4AUd+ZYvwp9qW5ehFbxjoeQpjwVUxmSQG/sGzmQVEH
	e/R9Y5Ww5/UDLCHfU/W3sZGBxiDAWO4IdrJZt+5oZnY7F2xM4ddCjlEilyKji5CkEhqx7FzLgJk
	dHRUN4oS4CIwmeMjSdJx4f6Lz7Oyf9qH66bmj1egmg33l9lspBhIRX/tr4NuHWqBswe2WT+dnks
	xqOOF9KvScSQewcgImkXxbmDHDrkPZM0t6s+o8VaMREKTCYhfkSw==
X-Gm-Gg: ASbGncuz7ykMuOCSk4AFstVwtVHHBSGI6UaF2SVnYAluBp2gyz6PeNuK5Gz3gEi/pND
	AyPrs0QDV1G6ckH+2S82/WMwvaCipRx8ydKhI0iMwNMFHZfo0vtgNL0HXWi7Mez8PZMA5m0JWLE
	h3gFyE0h3kTHyRHHwgSY9ghPWgDXMAwsruM3ludLk9Rvn3Tlxo2Fk1KclbW97vN+wO7kUEI0pJv
	vytNU04h/jQlEiJc5MrTQQ3qI+ZkxADS48xKBL1p8fY7tk4NPFbE6iixa0pAmrjxcZKazY9IDgl
	bJlVdrvHqSIZbUdNEeqNLQ46isG0tXGvc2vVmeshctOWeP3asrLgHwTNMKiL
X-Received: by 2002:a05:6214:3107:b0:6fd:61b6:3360 with SMTP id 6a1803df08f44-7048b8bd8b7mr113600696d6.5.1752163708775;
        Thu, 10 Jul 2025 09:08:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7IKnx0oGY6DzZmPHsoNfOxbxEl/6NrEujAZIrZneNt1HGeFa55m0X6zYpF5NdeeHumqI+Dw==
X-Received: by 2002:a05:6214:3107:b0:6fd:61b6:3360 with SMTP id 6a1803df08f44-7048b8bd8b7mr113599866d6.5.1752163708155;
        Thu, 10 Jul 2025 09:08:28 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:27 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:18 -0400
Subject: [PATCH 8/9] phy: rockchip: phy-rockchip-samsung-hdptx: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-8-0ff274055e42@redhat.com>
References: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
In-Reply-To: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=2561;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=tFpHMfoqDqhzNTaVv7v0N0qvUtE+54itjjhNS/n95Lc=;
 b=e7X3yn2YeXeKXrOkS5F+e0IypwltHuyXsyzMnUIUuprHWBg0Yjbm20ihxHiKGf27VyMww7dN8
 zNFlSuHfbztAbMvbZ4Tm4rj9g4qefWj2ql3S7qfHwrgGweB+1fYDH7N
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 9ug6n3uQcQCEqvBCd-NPakL5sAegnC2FL_PSFtHP9UA_1752163710
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090955_374080_AFB3FD4B 
X-CRM114-Status: GOOD (  14.08  )
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

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 79db57ee90d1487b51f4ddadde870a275dd7b17b..f027d2caa4c2ebfc0fdec08bcebf3f415ff1a064 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1869,8 +1869,8 @@ static unsigned long rk_hdptx_phy_clk_recalc_rate(struct clk_hw *hw,
 	return hdptx->hw_rate;
 }
 
-static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
-					unsigned long *parent_rate)
+static int rk_hdptx_phy_clk_determine_rate(struct clk_hw *hw,
+					   struct clk_rate_request *req)
 {
 	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
 
@@ -1879,14 +1879,17 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
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
 
-		if (ret)
-			return ret;
+		if (ret) {
+			req->rate = ret;
+
+			return 0;
+		}
 
 		hdptx->hdmi_cfg = hdmi;
 	}
@@ -1896,7 +1899,9 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * hence ensure rk_hdptx_phy_clk_set_rate() won't be invoked with
 	 * a different rate argument.
 	 */
-	return hdptx->hdmi_cfg.tmds_char_rate;
+	req->rate = hdptx->hdmi_cfg.tmds_char_rate;
+
+	return 0;
 }
 
 static int rk_hdptx_phy_clk_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -1925,7 +1930,7 @@ static const struct clk_ops hdptx_phy_clk_ops = {
 	.prepare = rk_hdptx_phy_clk_prepare,
 	.unprepare = rk_hdptx_phy_clk_unprepare,
 	.recalc_rate = rk_hdptx_phy_clk_recalc_rate,
-	.round_rate = rk_hdptx_phy_clk_round_rate,
+	.determine_rate = rk_hdptx_phy_clk_determine_rate,
 	.set_rate = rk_hdptx_phy_clk_set_rate,
 };
 

-- 
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
