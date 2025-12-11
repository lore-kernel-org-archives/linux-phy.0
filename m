Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 642CDD4335F
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 23:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tqHfwLNkiJgEnw/YjpzrkKmg+bCpY4Y7M3PLBJh4wCQ=; b=yv1SfILTKEd5Dn
	nTrpITBjcXHVMtJLP9yV/LQMWXfuvytPJuDfp1EL8poxzt+rfsIDMiIPKioYygawpufkFjL06Rx+J
	ckH9TKNXb9oUap0VsvBxJ2pumSISJL/CXaLhP5WrF9EOi5juzz+LXRx07E8FIv4CDQghLkd7GDb7o
	fkxjtESp5FdKoVvcwSpc5GZZX0Ef3ibjB94z8vTocE9YQh1gyJ94RKnCSg3Go9fcFL/FZPy5sk7Wc
	HFo/SuW6elLVProBs7FbXR25FVUFP3rWbZValMfoSBHdKBPOD4TrWvDrFvz8wkzAPwJc5UTpnP9cv
	wh6LZiZTC0DarI2xVNuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpu4-0000000HORT-0Ykd;
	Thu, 11 Dec 2025 23:16:56 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpu0-0000000HOMz-1eAy
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 23:16:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495011;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=62m5HbFq/JRK/3hjm7asDbCu50y2AIWfiQ9w6RslKs4=;
	b=EBdADGQVuZNw5Rv7jRxKktxqGSaTLh/Y8nR0vNicc8xgarY3vfYxgs2r9UDsBuWWZDx1+q
	5h+45LwnWBViIvY0y79d4gRCv35jy+cddMkKTPdaRRhki4w0+ZRqNjN6C3yBl8KmNIs7rA
	vlcIGjgbw2+zfDFH8HEg5tCnl4rwOX4=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-662-8Qf1lvDgPkGiWMt5wAo57A-1; Thu, 11 Dec 2025 18:16:49 -0500
X-MC-Unique: 8Qf1lvDgPkGiWMt5wAo57A-1
X-Mimecast-MFC-AGG-ID: 8Qf1lvDgPkGiWMt5wAo57A_1765495009
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b1d8f56e24so147559285a.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 15:16:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495009; x=1766099809;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=62m5HbFq/JRK/3hjm7asDbCu50y2AIWfiQ9w6RslKs4=;
        b=mXprzuzvDuiQUGSzxuaMjm/ZrW+Uyk01aIZ5e5rqvAVv4cqOU5nFQcUBRDcHZ3kB9E
         J/GFUMj0ymlm8caU8qxpsaLdt2D4UL/RCSDRfcJOLUWRxHuSW5WcOv4ovfPlXR25X77n
         8FrzpQObUe54VGN44HzUaT5UPEO8Lmo3KsjvVwCl/ckTfzHuxpmLzVeJtM7WLpS47vOj
         PaDKeJf67abKDif2I067F6UCtiZShi7TcV1c9Qy88v1uW2SoYeYA7/DOCVGdihnEViN2
         4sdY618sPo0fJMB0o8qlPNwJ+UPRPWPkAsBcrsE65glzt67oAEKTwGlD+o+BQ5yJFbuT
         7gkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzkKeP/vhSWK8HAwdKc7bXUzVAbKhHQ1QEhupQRhowRIAgQvpm8o3Pse3oHNjqqpGcGJ/UujL/LAg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxssvkQUcNkhsEDv3idvJziUG2EA8NQLA/cFBXUL83Z36RQ0yL
	sYjsziICt37MROBropZME+eDBSwboS6kz204O3bUHGtneqfDYt3nL6Nhs51NtU2YX2JWaNCyyCc
	kA5HUTpFr4Bvs4yCEiymyMTIUUA5mwXtgEzFtTsnf+zK4a2HX5+nBiB0mVvqzFKFnjhU=
X-Gm-Gg: AY/fxX7297tXo7r6UrOxhkqH1oUFkVtcBuAIlg0YLEtGmTK1fNFMkymX0EmmHQj/1A/
	LPTtyo2BhKQDRcOQUcW70P2Vj2NV5UEAuzJ6cvlpZWGxnpTL2m8UthTJYqjB6M50dqPPeuHbtXs
	CdDfMJliZe6uo6BQX8jKyiSqu956GVCrNWl+jx2KKohyNEUCDJy8MI8eOeDw+LE1IhgbcnCYzB6
	k+ms9VHlIVkgsIdJQqmiB4jJO1dEd4Ca7mP5hZcxMfT5G80i3PEjR8Y5w5dlubHg32ZQwfTHMQ0
	xINyatqLuy3tPnHfpspwHRDIYEFZJn5e3ThLgOWFaKE3wvh+Qokb4M85yf/xctix8RlZC5l7Pbh
	xsuw9OkET2KvdI0qDA7QT2Y2Lauxx1syLKGrYCn0qHK+3o88eYxDzOA==
X-Received: by 2002:a05:620a:31a8:b0:8a9:be12:75cf with SMTP id af79cd13be357-8bb3a3888famr34766885a.61.1765495009123;
        Thu, 11 Dec 2025 15:16:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFzGfyg51QMkMX0nb0URo4omcvNBrodsNtcYzQ6shcsy/VZXilk5dO3Eb+B70Ty3ot1LOtMJA==
X-Received: by 2002:a05:620a:31a8:b0:8a9:be12:75cf with SMTP id af79cd13be357-8bb3a3888famr34762785a.61.1765495008710;
        Thu, 11 Dec 2025 15:16:48 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.16.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:16:48 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 12 Dec 2025 08:16:19 +0900
Subject: [PATCH v3 1/9] phy: freescale: phy-fsl-samsung-hdmi: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251212-phy-clk-round-rate-v3-1-beae3962f767@redhat.com>
References: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com>
In-Reply-To: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Stephen Boyd <sboyd@kernel.org>, 
 Maxime Ripard <mripard@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1978; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=uyarQyJgmaEeLScoBV74B9PZPRT2iTzM/dIYFjpbgc0=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy5OubvRVPFUzMfglqvZrm7+AqavlWs+rWrUvSgqu
 cN+ieikjlIWBjEuBlkxRZYluUYFEamrbO/d0WSBmcPKBDKEgYtTACYyTYKR4YrlqZuHA698WfRY
 zW9m18O8n8eYZ8/9E/SH62Giq+E3XgFGhj3SJ5lOVnSoTmeLZfR5ljSpR+/PukrH6l/eIWKHHy3
 JZAAA
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: olu7b2UivaiNDdISiSvFPHUOUPSlGP-NMpSN8Scm7uM_1765495009
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151652_496506_AC298A06 
X-CRM114-Status: GOOD (  12.64  )
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
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
