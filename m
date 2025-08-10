Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D02C2C87FDA
	for <linux-phy@archiver.kernel.org>; Sun, 10 Aug 2025 22:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcMC8sgJssqHQ0yn5N4wfX/5sLHhHpGv7CQEq43oZRk=; b=P8guPBte6xEiLa
	zIauBclIzminCDpBmlqMAXKniYIyk/efa76YTAisMED0v1VTrzGsPv6rw/ibEt0QH100NhTZ5cvTp
	lQtz7vYs3ptMKT7qvTsD3d8OfIDY0vC5hlhZ1nQPzsug4IaEsYOrJFdoCiZsgbgNUFBrBe8telOE6
	aPXVqCZQX2+zAcbSDWScaULIX3G/xkONptWCfnV1VRVfLXRmZqS9AwmJSnmIRYm8VYGzGzKMyPGP2
	CvYkKsyPhv3G52txPDcknY/HcbQgXTGCQRBIu7FYIATfUEEqb4ydLJUJyHVz8e+5DFJbvIsQ409d8
	40PxteCdE56yVPqOnj1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEsm-000000068iE-2X8D;
	Sun, 10 Aug 2025 22:51:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEnt-0000000682G-12Wo
	for linux-phy@bombadil.infradead.org;
	Sun, 10 Aug 2025 22:46:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:In-Reply-To:References:Message-Id:MIME-Version:Subject:Date:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=vnGrlNLU39XteVbV9vgE2Sk+xvdwKQpHrkhTkr/Vktc=; b=WCZoCE8/2BX7DXJe7t+/Hs0MBW
	ZtEQBDSV7qo/O1hlTg7rtWKF0uuGHp/dakjSBh59fuoK1vkFTPqXGe7Dz67UlH0xwyRArA5ZoLVBh
	Dbl3VWvXTah+oi7Zw50UJGo73zkl2p6cEmE186F/1IrMSA8qlKT0Mn6LuVlKo8dqw9z25pQ3Zl5b8
	Qys1c5PBbZ14wEDsWI5TjO/ei9IvvbUJypBSehZbmL3NUhyGBfaTcf7K0xc6pPZCseRs2WM1Q2s3C
	xia2JSgzlGqtFZmnOP38j5+Q2naKipb702MYyGptBq4vuUTmJj3cAt3hCu7KEyf5a3RwG/YvANaP1
	YeQFB9zg==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEnm-0000000FJdM-2axg
	for linux-phy@lists.infradead.org;
	Sun, 10 Aug 2025 22:46:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754865964;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vnGrlNLU39XteVbV9vgE2Sk+xvdwKQpHrkhTkr/Vktc=;
	b=YLCOyhnNu8Lo2cheCKTiEY7w5DLJoJtVg5qqFckzh1v7FkwX/feV69fZiqP4KBKJKkqRNr
	DDak+J/bfcW4LysrGrSfhVHoHehzGaShW0X3cvmExmxn4UpIGXkcGUfpTzH42vHca2zgPX
	i4mqEQ7d7KZ/Igpmgc3EofTSNUGuPTI=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754865964;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vnGrlNLU39XteVbV9vgE2Sk+xvdwKQpHrkhTkr/Vktc=;
	b=YLCOyhnNu8Lo2cheCKTiEY7w5DLJoJtVg5qqFckzh1v7FkwX/feV69fZiqP4KBKJKkqRNr
	DDak+J/bfcW4LysrGrSfhVHoHehzGaShW0X3cvmExmxn4UpIGXkcGUfpTzH42vHca2zgPX
	i4mqEQ7d7KZ/Igpmgc3EofTSNUGuPTI=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-141-wE8lAIv9MreCVZYgR4YQqQ-1; Sun, 10 Aug 2025 18:46:02 -0400
X-MC-Unique: wE8lAIv9MreCVZYgR4YQqQ-1
X-Mimecast-MFC-AGG-ID: wE8lAIv9MreCVZYgR4YQqQ_1754865962
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b085852fb8so157974341cf.3
        for <linux-phy@lists.infradead.org>; Sun, 10 Aug 2025 15:46:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754865962; x=1755470762;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vnGrlNLU39XteVbV9vgE2Sk+xvdwKQpHrkhTkr/Vktc=;
        b=tBNaELOL2+yWu9UjclNcuS7yd7Ws+YmYp6l/N+RSRIREeHgBGPb2dmq4gzxgSm6K9Q
         oweAkxFid1Z7yBgS9eZnUN0cGiwf4PuxhBDF6xFWwfqhbKuvEH4WfyFWJvplJdWhTxiV
         /KSZIOHDfsnT3Ok7A/lUohoV/RrO6nFTK7gj7nAwUoeVjv/0M+6OulNKtvvXWRSWseyh
         WzpMZ0ToeNn/dbiH70e74kkKEJpu/Kmnu2hAs/dwiFvEJvd4BXw42M9jUli+DH0ExMXJ
         PJ6P6w738iYqA5UMhLjCAS/y+bRMqjO/+WsWmu9ZMJ0xrLmM/8ydqT6WdWc4dE8dmeX2
         aw0A==
X-Gm-Message-State: AOJu0YwIPcvtxYOtW2ol9jNUHefCi6/yLz2LbBhk18FQCqn5x6bC4zS+
	x+6nAdip6iVfXA7K7XQjjiEuAcYBaqFdcet0rkGFMVXF5Dxj3LAD7bv4zuGmSe3FvkVAxzHsnTh
	M1M++7xDsx3QKq6J6+/khnz1YXAy/wLMYqdbTLTivs55DuJr84XuBd34w9/UIGKk664k=
X-Gm-Gg: ASbGnct7oHCA9K3lp35p8sudmW802RIVx76dVFarKc345GnmxSbX6KSIDtE1aq9e3eF
	C0htOCtWn7/oLw4xAn8QAUs5onlOoXMKDleb+AWdiwsyiXYEInbgrgBhdlJ9NoycXXiLxnEB1vU
	OMKi9gcvMgP/14p3/qveDO1znnQzkmgnkw9ZrLV56wB/wOuwEDyeuuRipIILNGsSK2WLwe9BQc7
	JmfIhxvoFjH+niDqGRmAbqMjWk1JpGYAXFVkFLWZvB3ojTQrfZedVTSc8hzbEw9xyU1+niIQNIq
	KdxvcmcSEmSW3u9PJbLzrxD8UY1aTS0hG4THYL5l2n4hH54PizehXfNwT9rgElvZS4PErok8lGh
	ei4qLEg==
X-Received: by 2002:a05:622a:1910:b0:4b0:77ae:17bb with SMTP id d75a77b69052e-4b0aed3134dmr164413231cf.14.1754865962219;
        Sun, 10 Aug 2025 15:46:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUie+6kdU1EHKp7zY7Gli2dqcxw3eGLN8zRdb828DF1xFrgrp8MAMR0KX4wPSSD6n4ZYgkPA==
X-Received: by 2002:a05:622a:1910:b0:4b0:77ae:17bb with SMTP id d75a77b69052e-4b0aed3134dmr164412901cf.14.1754865961731;
        Sun, 10 Aug 2025 15:46:01 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.45.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:46:00 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:29 -0400
Subject: [PATCH v2 1/9] phy: freescale: phy-fsl-samsung-hdmi: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-1-9162470bb9f2@redhat.com>
References: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
In-Reply-To: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=1978;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=a0rSL2H1S/HUaruR4lcZ7Ks+0rkYUs1GnZzD7mNCe3M=;
 b=/U1k55v3iKOX6MHHG4y2eGAMFrca8JkeVtSpJcoc1Z54FeYml6kJU2G+QOt1KduqEhi06mYeN
 FwMvRbQ0c3QASmeUiY3XU6Pm6Wwj0gFLroBs3uKkqqGAWHVZhKteVKw
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: llpVC3LqsR7VzMeurfu9oQEphl8M0zeWQoTvwp2t0Vg_1754865962
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234607_083971_676C8A04 
X-CRM114-Status: GOOD (  12.21  )
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
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 191c282246d96e3f6c5a8d17abe078892882bf44..d010fec15671d33cc363af79e9f1c3f26ecb3464 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -570,17 +570,20 @@ const struct phy_config *fsl_samsung_hdmi_phy_find_settings(struct fsl_samsung_h
 	return fract_div_phy;
 }
 
-static long fsl_samsung_hdmi_phy_clk_round_rate(struct clk_hw *hw,
-						unsigned long rate, unsigned long *parent_rate)
+static int fsl_samsung_hdmi_phy_clk_determine_rate(struct clk_hw *hw,
+						   struct clk_rate_request *req)
 {
 	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
-	const struct phy_config *target_settings = fsl_samsung_hdmi_phy_find_settings(phy, rate);
+	const struct phy_config *target_settings = fsl_samsung_hdmi_phy_find_settings(phy,
+										      req->rate);
 
 	if (target_settings == NULL)
 		return -EINVAL;
 
 	dev_dbg(phy->dev, "round_rate, closest rate = %u\n", target_settings->pixclk);
-	return target_settings->pixclk;
+	req->rate = target_settings->pixclk;
+
+	return 0;
 }
 
 static int fsl_samsung_hdmi_phy_clk_set_rate(struct clk_hw *hw,
@@ -599,7 +602,7 @@ static int fsl_samsung_hdmi_phy_clk_set_rate(struct clk_hw *hw,
 
 static const struct clk_ops phy_clk_ops = {
 	.recalc_rate = phy_clk_recalc_rate,
-	.round_rate = fsl_samsung_hdmi_phy_clk_round_rate,
+	.determine_rate = fsl_samsung_hdmi_phy_clk_determine_rate,
 	.set_rate = fsl_samsung_hdmi_phy_clk_set_rate,
 };
 

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
