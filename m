Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F3B0CCFA05
	for <linux-phy@archiver.kernel.org>; Thu,  6 Nov 2025 23:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYCpzch6H+R3+zFXH0sP1HGiVObN7vraYaGKuoHOnjU=; b=JiZsBVzTg5zp8A
	YmTGmtWxv0U5L6o6T3xTigY+3RXIOYcIhYbnt2C2Cf1+XagXk6ppp+k9rtg2wHxF8mpHIQ2G5zWq6
	tgLTT8lX5kfOwyTM5XwQM/SpUmH14D5wP5apqiPYOBXVbZXKJdHnWqdHtr953/Vb8PTgE0+qcB1jF
	rI1EGuq5Nkcvwrwziq6aIilwAsM5hBAsV7PYQZsjjo85WJhreSrXA2QUD1bU3JqUNUsWdJmqS4QCO
	mhIh6I98Og+OgjfZXzlGIRPHAd/PuscLt1KO6FaGi58Ea+noJlwfD/r9nQ2AMiXDM03tnTCgcLgZ6
	RJ6wk3wj4mFFTcmcboJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9NM-0000000GMtk-054O;
	Thu, 06 Nov 2025 23:26:44 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9NI-0000000GMpq-40qT
	for linux-phy@lists.infradead.org;
	Thu, 06 Nov 2025 23:26:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762471600;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OIXhuN2h868r2lVLARvPty5kJy7WhDgZbJDR4n+1yHA=;
	b=B2nakg1GtKDI8ncOoUiiceBgc3jBoGQsi+GKZnheipnKFd7Hn9IPZ3RUJ+ujQ9k3/UngfQ
	G1qLi1djh7nFtlv/1gFpd9IN2UFQeqv7AZi3pJtBvzKzmL4jhPbHobqLfRkv/C3G6xYCdO
	SooQpiRPCGZJ5sxBx7TNjXmBcD3TT5k=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-571-JpKnDn_sODqCwB-RjRUbTg-1; Thu, 06 Nov 2025 18:26:36 -0500
X-MC-Unique: JpKnDn_sODqCwB-RjRUbTg-1
X-Mimecast-MFC-AGG-ID: JpKnDn_sODqCwB-RjRUbTg_1762471596
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-78f28554393so3945786d6.0
        for <linux-phy@lists.infradead.org>; Thu, 06 Nov 2025 15:26:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762471596; x=1763076396;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OIXhuN2h868r2lVLARvPty5kJy7WhDgZbJDR4n+1yHA=;
        b=H8vp6bvHYXWe4kPS8AUDO/Atp+4G0htNhY3mKbZyy7fUG9EfJzevGfQUJd73UKkeYm
         WG5lHZfH6urnvUUj8er1gSNHH6VsPH7889CdAKYeYF6Ec2NeypsOkCWVXOP2EDgq0Emb
         Xia55qJ8pAFfxum4nFSccPzBfLE1PAwAv6GWnLI5X9PwV+QT6BTfAp+ngmG3bVW68ilX
         e4HRtjLfmv91SQVkBLiTf1yzZMhh0uJpqgVrqiHKjsdZa3sDL/g7TN0iVvX6b0/HvWCV
         iZWLCEVulws4QcgKv2qvGUQYcapLGl/K+8Sm4NB3w8asrYRR+v3OSOAhUzep5YC6D7ly
         Rotw==
X-Forwarded-Encrypted: i=1; AJvYcCVO3E+iX5mLToGwAWtgaGXXlNnjYJ3RT8kxmAFOIvo/0WWTnTF4i6allkKTfafg/AY/1HEnWX3c75Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7Mgyk34/Y38BadRudLwaubhTUA3c3IK3UDkjpKbSbdBEEx8Xq
	HZvuiGvGZQKrmIlWRzopfhuM59VkKT32OYE/CUCi1NSm8sf2ApdP4ruxXxoMNpS8IhNDYn3vG0w
	HVJea+bBnGEk7nRlFGqdWq1CSFGqkM2Hzh6NY1qn8RyvVNdn62LvXQPpRkh+SusnVYR4=
X-Gm-Gg: ASbGncsq1jKpiyquYJ+j9rwkWdV4nR3P2M9JFsNFMfhaFKZfkXMIL1KASA7G1YgeQDN
	oFa6BbsUZ3TmBncftGM1ZujFs+GDodU3HtwXB4LwUYxKYV7Eb4BpvdbbMtlZuzNFLnyS/f039C5
	2ovnbiZ5jK1J3TfYyv781+lu4zaG8/MeS3/OIHptBspo0uDb3uXk3qZTqFDBciHosf4dQPfVdju
	mVZd3QOk5ImkDVW+tMVGP1qPZjJYmF0pQc1CI/SB9ZCPsXDuZ3OjojESdgd4wuOPOUDNJjItiix
	gqYMLuCV19HYHuy39ja+EyzAXPlL7EPSMP1VQwnToZkiVK4DpY0IwREr9cEjoXgRe7YKf5cZdCO
	Xx2AtgCRnpDNeLhQYHijzn4LudD575aUHCP05IN5RGQ==
X-Received: by 2002:a05:6214:1c84:b0:880:5382:ff0a with SMTP id 6a1803df08f44-88167b1b487mr14732266d6.27.1762471596124;
        Thu, 06 Nov 2025 15:26:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEwsDTQJb9qqBYb9v62fMP1IlTO5wvFmMfSLsEpd/QskmRbsWz9CRa2AbIiAewvIcXXmKGXjw==
X-Received: by 2002:a05:6214:1c84:b0:880:5382:ff0a with SMTP id 6a1803df08f44-88167b1b487mr14732096d6.27.1762471595757;
        Thu, 06 Nov 2025 15:26:35 -0800 (PST)
Received: from [10.197.115.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88082a3aa91sm27389196d6.56.2025.11.06.15.26.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:26:35 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 06 Nov 2025 18:25:47 -0500
Subject: [PATCH v2 RESEND 1/9] phy: freescale: phy-fsl-samsung-hdmi:
 convert from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251106-phy-clk-route-rate-v2-resend-v1-1-e2058963bfb1@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1978; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=tPB5NIPC9Tahtwhg+nx3O+ru7wuSB+giCQQ8ld+ZnPc=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ59RZ8qZ1y68Ds1+V38qKsPZ31ou/Hv9tT5Oq986XlN
 sMCmfTQjlIWBjEuBlkxRZYluUYFEamrbO/d0WSBmcPKBDKEgYtTACZir8XI8K3jqEHi251Sx7c/
 Yjraoi5f92KzyTYZ7+2Xkg/s6jMsmcHwP/jWullLg5MdIhTUAyNY/z+5IpspNzcipfx2v2sub7g
 DAwA=
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: uVmg4Ai-aOFWtz5_30NEZEIUrkIs4DWO_qUnAFI_Keg_1762471596
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_152641_083412_DF8523E3 
X-CRM114-Status: GOOD (  13.47  )
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
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
