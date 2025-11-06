Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B20C1CCFA19
	for <linux-phy@archiver.kernel.org>; Thu,  6 Nov 2025 23:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7MP/76BUE+v+S0O36yGLbSE7ZO2cfb8zx9Xp9nSOn8=; b=DDWC1Ql7wU8fb6
	tSrwoDFpB6mSJfPPobwxHPOEnTcDD6McYTvGcEwu2Q1SLzTQtZn5hOHTXdogGYfrRXu9KN50fPvHF
	xctrR3ynr22XzSzwfNeTBmc0CZ0ApR8QKnTMjKL+9OrfavRqN71EUEikcMZ4P7upaW2WP3kxFBHrL
	htq3eBEvGTEApa0TD2IHInqpq3cAYvsYIy85AUtKWS0Va3ephuUVyHmvEQTzc604kqsx/7I5Fda6W
	/wnLiPnqzreR1thoew0rqX+0srYbbi1OSZoCw1MDfyrf0f71wAe7HGG42b19AZNNh6K/2hWFoXz8w
	IjenHZMRi63VavUO/ReA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9No-0000000GNYR-3xjo;
	Thu, 06 Nov 2025 23:27:12 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9Nk-0000000GNS9-456q
	for linux-phy@lists.infradead.org;
	Thu, 06 Nov 2025 23:27:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762471628;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bcn3zMZ53AoVHBM0SU+ff4cP6ID7GbGsImYTlghLRvo=;
	b=RIrWru6kywONlL9XBLNuAw0K1Bah3O5BudCPQlV4bCxBQYY4goqk7KJ8Pcih4MHEO6iCth
	i7yjOoRpZS3+/IGV06RKFBktdcCaAhglSsL0zvwycGzlcuIJjcNgVYRKCScxAUbODZC191
	WxyBi9E6EVk+np6wYYooklZyf4FOF2c=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-607-_MtvT4sfOM--TGvZ5MiEoA-1; Thu, 06 Nov 2025 18:27:07 -0500
X-MC-Unique: _MtvT4sfOM--TGvZ5MiEoA-1
X-Mimecast-MFC-AGG-ID: _MtvT4sfOM--TGvZ5MiEoA_1762471626
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-78efb3e2738so4206926d6.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Nov 2025 15:27:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762471626; x=1763076426;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bcn3zMZ53AoVHBM0SU+ff4cP6ID7GbGsImYTlghLRvo=;
        b=Pu+77MDcyQOCKz7BOILtIt9CV6WYfg40C30T6RLFlz/ekSSUdWpSHcAFiqjRvEoX/b
         0UghTILuzsXrr872HxRoTu7z6v1Xbhv4T3dapNunP4iysQRmkIelzeNNjzJOaiJQu6U7
         jD46721pezVyivHePOPcrUsxxZB+h2BGge+eicc7RF4ktIsA0eLfRaBFOZHpDftts5zK
         wo8PLe2fW3V7pnlRFXrmXUIBDrkJj3VtnfQF3NoU/IlzNYhHPKJzrGRIp2IPB11z41Fz
         xp16ndf1+M8z584MIi1mUn+sQd1WotRPFzo3R7g62KUSgG9qkOwX7uaIE/bq4WwrztjN
         KR9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXoPH/SMDoMQWeYAlSkUmzfIsKTkzNRBuaxKM2jfblQDKNXvjykJ5Npx0MkJ4iFDWEOMJc31jLP1bU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzcX1DOB42R1sWfx3qqCGZaJlMsBM2KaUkuQmciV/Yko6tkxttF
	eqhBqpRDXkEQtZPb1v3p9irngwgnkLrfB7vE8xZWlg0y4rubh/UJXsr+scDlcTAYKVv9/Q9OJpM
	6ONTU8Vts0jfE7kXy06jf6ukpdkxye54eH1HYPpFUsfJLCq2qexmdV+FBD2vRW+Aw5eg=
X-Gm-Gg: ASbGncu1OWhzgSgKIATBrgPZ2aCvcAwURLrhvbyZ9uk7+MY5mvffeHWXi5JXiCNxLN+
	GLhDUxYseB1NsifRL2ajn3+Wpokx7xjRt8JUnDqz+kIo/9RPES9dEe9R4Zb3lhubeCc2CG7NgCZ
	vSet1A88VhDlhLd7xbm0M3X7vrOfo9evAZc3G0POT+f448p9bhBIlj+72m+D9d2rZSgQrBJMD1K
	e2EzB8qbBTfaOYRVd/02rrhX+dLXqOL+9e8FCWa1U3kK5BOccEdV8gVCAnl+lCU2dYUOcl/kh8C
	LPH+o8/VYQx1g0kj7IoJo/DPuXlz/qcNNatSzt2ILvi8UjYBSmaJArtY6WaLp91RqbeA5yMtgLP
	jCHN2Z+WH+yaIBS63CzqVn3ZMmknQsDmSMElSrBvSEA==
X-Received: by 2002:ad4:5e8c:0:b0:87c:fbf:108a with SMTP id 6a1803df08f44-88167afbb01mr19476806d6.10.1762471626537;
        Thu, 06 Nov 2025 15:27:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFAKV5Z7B7KevWNhDrMQhaFFBe79yFfIMSER6+SS9G7GG9yGBlDbjxgm5e37vbwHrzd8zri1w==
X-Received: by 2002:ad4:5e8c:0:b0:87c:fbf:108a with SMTP id 6a1803df08f44-88167afbb01mr19476536d6.10.1762471626163;
        Thu, 06 Nov 2025 15:27:06 -0800 (PST)
Received: from [10.197.115.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88082a3aa91sm27389196d6.56.2025.11.06.15.27.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:27:04 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 06 Nov 2025 18:25:53 -0500
Subject: [PATCH v2 RESEND 7/9] phy: rockchip: phy-rockchip-inno-hdmi:
 convert from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251106-phy-clk-route-rate-v2-resend-v1-7-e2058963bfb1@redhat.com>
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
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3256; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=B3cRh6p3LgoB2SM5XPxaNOqjVUw8A6Swuk8MPDVITuM=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ59Raa525zMnJS/r9qwT+FG4FH7p/2ecBceX+1fMSF5
 feuhew/3VHKwiDGxSArpsiyJNeoICJ1le29O5osMHNYmUCGMHBxCsBEAv8xMjSUXVyxZ7uixJnX
 YgUTf0if+PYmbwaXxuFNHqoeua3y8fkM/2M+/Ld89F1Hxzyt1aThga0O43ShJKVrPI/Xnd1dkHL
 +EAMA
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: GEGLZ-MsL-ps4UElefDb93TW-OWa8XKvCxgKXaqVviI_1762471626
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_152709_129432_52BF3EC1 
X-CRM114-Status: GOOD (  13.25  )
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

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 30 ++++++++++++++-------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 8dcc2bb777b5455d21a10f06c5ad842b2ddbc834..1483907413faa5ce1dc8614db05e6e929410404d 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -749,22 +749,23 @@ unsigned long inno_hdmi_phy_rk3228_clk_recalc_rate(struct clk_hw *hw,
 	return vco;
 }
 
-static long inno_hdmi_phy_rk3228_clk_round_rate(struct clk_hw *hw,
-						unsigned long rate,
-						unsigned long *parent_rate)
+static int inno_hdmi_phy_rk3228_clk_determine_rate(struct clk_hw *hw,
+						   struct clk_rate_request *req)
 {
 	const struct pre_pll_config *cfg = pre_pll_cfg_table;
 
-	rate = (rate / 1000) * 1000;
+	req->rate = (req->rate / 1000) * 1000;
 
 	for (; cfg->pixclock != 0; cfg++)
-		if (cfg->pixclock == rate && !cfg->fracdiv)
+		if (cfg->pixclock == req->rate && !cfg->fracdiv)
 			break;
 
 	if (cfg->pixclock == 0)
 		return -EINVAL;
 
-	return cfg->pixclock;
+	req->rate = cfg->pixclock;
+
+	return 0;
 }
 
 static int inno_hdmi_phy_rk3228_clk_set_rate(struct clk_hw *hw,
@@ -835,7 +836,7 @@ static const struct clk_ops inno_hdmi_phy_rk3228_clk_ops = {
 	.unprepare = inno_hdmi_phy_rk3228_clk_unprepare,
 	.is_prepared = inno_hdmi_phy_rk3228_clk_is_prepared,
 	.recalc_rate = inno_hdmi_phy_rk3228_clk_recalc_rate,
-	.round_rate = inno_hdmi_phy_rk3228_clk_round_rate,
+	.determine_rate = inno_hdmi_phy_rk3228_clk_determine_rate,
 	.set_rate = inno_hdmi_phy_rk3228_clk_set_rate,
 };
 
@@ -906,22 +907,23 @@ unsigned long inno_hdmi_phy_rk3328_clk_recalc_rate(struct clk_hw *hw,
 	return inno->pixclock;
 }
 
-static long inno_hdmi_phy_rk3328_clk_round_rate(struct clk_hw *hw,
-						unsigned long rate,
-						unsigned long *parent_rate)
+static int inno_hdmi_phy_rk3328_clk_determine_rate(struct clk_hw *hw,
+						   struct clk_rate_request *req)
 {
 	const struct pre_pll_config *cfg = pre_pll_cfg_table;
 
-	rate = (rate / 1000) * 1000;
+	req->rate = (req->rate / 1000) * 1000;
 
 	for (; cfg->pixclock != 0; cfg++)
-		if (cfg->pixclock == rate)
+		if (cfg->pixclock == req->rate)
 			break;
 
 	if (cfg->pixclock == 0)
 		return -EINVAL;
 
-	return cfg->pixclock;
+	req->rate = cfg->pixclock;
+
+	return 0;
 }
 
 static int inno_hdmi_phy_rk3328_clk_set_rate(struct clk_hw *hw,
@@ -989,7 +991,7 @@ static const struct clk_ops inno_hdmi_phy_rk3328_clk_ops = {
 	.unprepare = inno_hdmi_phy_rk3328_clk_unprepare,
 	.is_prepared = inno_hdmi_phy_rk3328_clk_is_prepared,
 	.recalc_rate = inno_hdmi_phy_rk3328_clk_recalc_rate,
-	.round_rate = inno_hdmi_phy_rk3328_clk_round_rate,
+	.determine_rate = inno_hdmi_phy_rk3328_clk_determine_rate,
 	.set_rate = inno_hdmi_phy_rk3328_clk_set_rate,
 };
 

-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
