Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0F5DC83F17
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 18:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETK0JH3F/L/7igU4uTujKbxWC7Wr6uQXwtDDbYpgUDI=; b=bOOUBddWYENG2r
	KUTOb7ungiK8lBUGA0dFsAOm4X7fkCful8ckrHaWQY1Ls2YVEGYgRLEWIICad9psZWdGMTX/8Rsuf
	mOnqmJUF/RbThyGGyyFjMCu83Xv5B3Wroy5Sbx6R79YUNzy/iHYhaCuaVhpJtbzxJlnbpZbUC+6Me
	SINFRo602MRKapkcV2N5ZgoNr2HXoELP7o+quhR4K7N3Ve/0UR0M0sZM1BV4aRu6DJ8HuNNXq0hTd
	PWBiQ7Yj1cJ6rtdvicP4wlXyG+DTC8XFO2GS91ZjuHmrIlVbEWsts46GbL9zDScnea/wMcV+6Hiuy
	3oCbN3VkdRs8NzsRoHpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw3q-0000000CiOU-2IJj;
	Thu, 10 Jul 2025 18:31:58 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtqQ-0000000CMhA-1W2G
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 16:09:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163797;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qNMz/xyi0Wuf6bpUroOTdzgXVTFsqzyhX4e3vihgsBg=;
	b=gag1MdYWG6LULAPsLfsgyRpK0ALS26QCoUvWuJpcuQqRmGzEZa2VhsyK5bGy83ePFmDPyq
	Ao1TKGrbtaiftkp8dVvFVEon76l3oBtDGj+ha8LjUa/J8EuKlZjfXVnHfyyAoBNKNJajIH
	vJYr9cflSXD2l9YUMKRJRAV1yekFjAE=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-481-v_57PbPwOW6vetJuHD1D8g-1; Thu, 10 Jul 2025 12:08:27 -0400
X-MC-Unique: v_57PbPwOW6vetJuHD1D8g-1
X-Mimecast-MFC-AGG-ID: v_57PbPwOW6vetJuHD1D8g_1752163707
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a6ef72a544so25872831cf.1
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 09:08:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163706; x=1752768506;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qNMz/xyi0Wuf6bpUroOTdzgXVTFsqzyhX4e3vihgsBg=;
        b=VLNUPC7oGnIwLu2PYaSn6XnML34Qiz7DMAvdgjufy9jg8jOzoPzEeDQWUSuOi3MISN
         p7xsVPkk3zn7MHi6PRD2JSlYabeXYFq2DFxHE0NXieKfjvr0noo4meBuE32WzYLQqEv5
         5JK/HPS1Wq74tYDgSSGVfYQvW8K6XuX2MBgqcDNnfwQpJwopmDsHtmLYw7LKqCGPYvd8
         NlNnFBuIa1pBHwUR0xRDk+BJ85yQhyMRjtkfgJRsi/DWIwnz6Ldv5yVrP6qeQVJtAEeS
         pZFiNJpNuiJFo2DAqdNGIEMy3R9x/bwiHRUDblIDIJQT2Jws+rcSk8+HxHMWrw3IJdn/
         UbnA==
X-Forwarded-Encrypted: i=1; AJvYcCXcCHn7wlWb8sPO5DNP3t+0ILEtLhoTwhZIICHaJ7uHIc+JDXzAZcdKcdUmMyNocdaj8/fXiqNcaHw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQIk3fJi1CpdYyLwFKo4yYwJiMEL3AX2gVaS6utTWIWOTr4iYx
	E7DQnuoLmVIS4PHUqo8bFLwM5KNv83LPSROvam3svJ3bmCRxsJ5Z3XUXiHL0/tIHqwm5clcm4cE
	QRkxG2izB2QSemfDLANtZQLsKZ3GTNhKzfvfcziRUT7tbDkQhE4KJ5+yQP5c9YSzZrXiiAnhtN0
	IYtEQsjFFXl/ygkqSSqhfbGIkE5GQlR53JNQ/s4HUVPLD7B+af2w==
X-Gm-Gg: ASbGnctTFKq2+vYlf8LPAnGhnhqacI7b/44Vg3aH1R6dBo0ZBJMrWee8+L0Qy6c65tw
	ifLSag7i9SCzgpozSzMrYLSTov3Ym/UT1Gj+9lVLKbHsXc2K39/yqGwYx6VpDaUMibdWPcjTsBT
	6XWx57L/mvCh+F8Jm5738kyQufWUU1HZU6aBQbCl0OUX8DBtozlfpLOZRYxjbdtPobec6h60mZW
	kQGxDQdaxNIxQI/e9xvQZElTW4VIbuExUEyCcQnVfhCJ3p/+K3zPnQ0zGUBy/zLqFVxNLqVWHwm
	fMIkzsRkFZ6E3DofUai+ujIh/siiCeCpZLMdwn251noP4WjWPwGJnGhN+9tf
X-Received: by 2002:ad4:5bce:0:b0:6fa:fea5:4da0 with SMTP id 6a1803df08f44-70498064944mr50151606d6.10.1752163706429;
        Thu, 10 Jul 2025 09:08:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFYhZa76cHQRjJPw3H7mkaAzOvkiyujQRGMNOmHLyrMH7YSa97wvn3nU7BthDnNKd7pp0944g==
X-Received: by 2002:ad4:5bce:0:b0:6fa:fea5:4da0 with SMTP id 6a1803df08f44-70498064944mr50150786d6.10.1752163705661;
        Thu, 10 Jul 2025 09:08:25 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:24 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:17 -0400
Subject: [PATCH 7/9] phy: rockchip: phy-rockchip-inno-hdmi: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-7-0ff274055e42@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=3209;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=NHf2WrVpFvBK9rcSwwdfI+z+ewWwe162I0ZQpinGzTg=;
 b=iJFp8tAaWU+wHaHcUB7nA5t7RfDvvhf4kk9dD1nEljg5ScIgHcdVuYZrpCfyQ1GumV9HBW7D3
 o5sEUuXM1iaDquqPWph1RO6DawQwo5Fhz2pFk4nTpsSuuAzjb7NEMsz
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: YASYhOLoOZsVE5bTK0vnx0n4_uH0An2_I-Dd56fXEFQ_1752163707
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090958_466728_FDE96B51 
X-CRM114-Status: GOOD (  12.44  )
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
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
