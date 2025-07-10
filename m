Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64FE9C83F21
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 18:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+aYTNBMt8+7g7u0uKZvxuOR3L+0rX8Fdl0Xpgm3qu/U=; b=L19/n9hV0cDmvh
	q3S8I5BFTDr0MWY7Zjvoge7T8/LImDJkpV3YWDtkJPKGvEy6ovtfX0vjoJxCCGc2WrQPFJx208bfr
	HydClYXSAOnDgIK0bpIC9LIXIQUIr8lAFjRXu6WQ4wavvCyA9GwZIcsRCQZ4KbzsycSTTzejvcqSL
	2xLD9K4OIgVQGA20u6u2cEwRvk8KrURWNk+gI7SZRantpKiLmUIjyIAyaXIvu+Z+fMeK844lR9uJ4
	+TWkEcTDWV4lsUSj5iudqx61zLbfhZBAFzsGulkKxramM4XgDw+BMYPLP6ckudE8u2YvFyo2N5iih
	UXI6QyWddyzQRSMJLiPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw13-0000000Ci0U-0ibT;
	Thu, 10 Jul 2025 18:29:05 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtqL-0000000CMfG-0OyR
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 16:09:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163792;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dBVtIjzgSdM7j9vfNKuudokyDuXNQpoH5us+QUAZFLc=;
	b=hqKD/gXDQtheq+5x/YOxwyD6XD4wO/MIbMYEHOeRICTWVuJHs5wnZkdmj1w+9HkDMVWL2i
	zH2TA8taJz6r4qB6F1aFXUyKKwuKqoGiiKZdY+/pmkrVBQohQVAeoeZDqdL6KxUGcE6DW1
	RLRp/x/njJWrUCj92HDyLzN1St8+9Xk=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-593-ShKTf3JSM6629YL0pQJa5A-1; Thu, 10 Jul 2025 12:08:13 -0400
X-MC-Unique: ShKTf3JSM6629YL0pQJa5A-1
X-Mimecast-MFC-AGG-ID: ShKTf3JSM6629YL0pQJa5A_1752163692
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fd0a3f15daso35562636d6.2
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 09:08:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163692; x=1752768492;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dBVtIjzgSdM7j9vfNKuudokyDuXNQpoH5us+QUAZFLc=;
        b=vv4Hkvr+zAMEFq5AVzStHoz1mPMzFd2p234L3zuy5kP+viPJvtDWy9M4ch3+CBhELx
         SqcPelIjH7C23jjUNxc49kH2Q78Qi91DEpo8n4HVJoteuEzJ5XAhHFJwI4Mfpf5qTt4Z
         D4neUGDHMGGxuqEKbl+QnNT41CW6uIhRfVDLrfaMPkXTmfC6i6+3DUyfjEHMMN6tntTb
         oHMTAOxfmtecfZ1TXmXQEh1GqGlTXYprqRR1NN506JGjm4LIlmDfM3r23qpwYPeJ3m/Z
         p9zjrq9/3qtmZFMamsf1MYk8GFEfZ59doYC3CUr+xdeZKN6nOkY1Lkb/morKqt6A+l8x
         XqQg==
X-Forwarded-Encrypted: i=1; AJvYcCXwso+gWw0otMp/pIWizLPE4mUrLT3YkzSm8uwv3+t3/n5/ct17xjxAg0OBkvLYfU7XL/h8sE0AK6w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yya2LPsDwGqyhgymxwRRhPZF4THEsAfhwPAzLPnDSLyVbE3cONu
	QRmU/jMTU0ZWqvWQeKDpSTOpbE7p7DVg4/ocTRo5txTG6bqeWJeCpb8rlFPzYMBDX9dkrOXN927
	2qiApSkbUrj794WVf0rIZooOKKt0w3clUIO7TuTMJO2w9tF8V1qrXGQbLrG3XXQFuF+efNEGYFl
	2fFeGQn3fC7802ThXndVCnZ+qkb2Z8h6ebBmF/WJIT6pdxHRS8wA==
X-Gm-Gg: ASbGncsqGbNMUt8vW3jVY12hc5+ORklGX8vZQUSuiXmxEs1v4k+vDj4fEXVfZ9DFO/T
	QpjwcKa7H/5TLGGuuOCMBmTtG0u1H0WvvDoDmNJBJ+3qgq08/Yvbq4X3ftoAeSOAFwu+QWlbb9c
	qm56IeZC9JTgJieQacMT+W47Un9zEAsBT7lpmgC1Xfo86KGbiWJpMUrfIFnGo7n+w7pKSVNPgWu
	T2FSsJ2EJLq2mf65MawfPq1hh6YkkgOqtUQWhJY8d8CGMUxmg0B8TQY1U3ImVI09mE5Ui3lGK12
	HB8xorcRSc/Gmib+iN26/AmuRfUZHSSprF4D66W+/44nxf7RINOrr6I8iCEu
X-Received: by 2002:a05:6214:29ee:b0:702:d7e2:88b7 with SMTP id 6a1803df08f44-70494e7190bmr52729426d6.6.1752163691513;
        Thu, 10 Jul 2025 09:08:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6DKE/B6Jz/oJiRJgLwGjr9+CDT2KUQYMq69PGQL2Cpo9Zo4B0GowYF0QAn7rhBvA9uVWDKQ==
X-Received: by 2002:a05:6214:29ee:b0:702:d7e2:88b7 with SMTP id 6a1803df08f44-70494e7190bmr52728706d6.6.1752163690776;
        Thu, 10 Jul 2025 09:08:10 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:09 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:11 -0400
Subject: [PATCH 1/9] phy: freescale: phy-fsl-samsung-hdmi: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-1-0ff274055e42@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=1978;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=fKrbnjnqlbXKGKlsruK+qB8Kg9daZJZ+BBb5bsrBbyI=;
 b=KjDWEK+2W/Nntn7kgVA1LXI5UW998Hy2QzJ7T12w24jbptJPTQ20Hu1na1UrDrlq2m/ybtKHR
 1nSX6rsyHP1DjtYMF4VJcw2r9wmw7SB7c7PmH5QSepXY2pM+05ltjYv
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: dwWNLTKFJcqrN-sQ0hFHPhQyYN66hlAGvA8hOVR5H7w_1752163692
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090953_391323_5FD7A293 
X-CRM114-Status: GOOD (  12.68  )
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
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
