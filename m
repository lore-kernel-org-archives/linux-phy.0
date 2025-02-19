Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 762CAC021B4
	for <linux-phy@archiver.kernel.org>; Wed, 19 Feb 2025 16:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ufBpuu8fNkJy0zu6KR7UI1wmPo0JDFxL55v8Xr+u3I=; b=TBy8VkxDln5JeU
	PXkviNtwUX+aiK9OZr306EY7cijkvym3q0yKE/iASO3Sc3Jwaq9rgd1JmM8BiBwghUSOdHjCkERkq
	k23ldvcCQLqkPq2jP4Sk2xd+c5BdxmbzQboAs6GJQn1d5E/ndW9XcMhRrBdq1dzUdxY3H5TdpcWLP
	7xc7GLDk9eM71vVPfJtXWC3enQ4hR/QqmjFrXUPX5fbBqQtp0rzbyLcP899wLu3b2aezQH+Z79fd4
	uL2tI7xUUwUzythUT5OPSaSIIOYvzqCUOMbIT4Xwa1bYhyF1szpe7g54D8QAk6Z/cIlXnmlmMSy9f
	tRI+koInjI2DhYYvPNOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkmfL-0000000DjlH-0Rzu;
	Wed, 19 Feb 2025 16:11:15 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkmcH-0000000DijI-1Mpd
	for linux-phy@lists.infradead.org;
	Wed, 19 Feb 2025 16:08:07 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-ab7483b9bf7so912114866b.3
        for <linux-phy@lists.infradead.org>; Wed, 19 Feb 2025 08:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739981284; x=1740586084; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fQx5Obkxi7fOoCAjVu48dboJVNwAQ7ZZpMFYowfx0L4=;
        b=KfFEe7BzzSaxfCKuqNIAsK7kg/nub1IKv3MmZuhJzBXgDhvpV3yOJQdKrbTxfH+oG+
         NryOzectynDKz8p4oF1eyQYFKoYiVd1l/UYc/2Di6P+B4tjez27RKtaA+dawGUDBeH8x
         8jFhQc7/E6Q9eRlA9aKX2YkVfqQHDJV/CnpCUNbpQiv3GJYdC2gDjT31LF9wOmYeQEQI
         4JUnwFtE2d9z3jIFdbMx3db9NCBZTXnTpTlds5KKbB20yotx+QfjqyKO+Kz8m0rtUe7s
         xlaXWJb5YQdbEhvoP4FlsDF5L4qTqAcG14NGBJWb1h9NjFsBy9p5m3KTUtKtwp5hrAYa
         Sh0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739981284; x=1740586084;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fQx5Obkxi7fOoCAjVu48dboJVNwAQ7ZZpMFYowfx0L4=;
        b=Pnmw7wGBjAXxfZdMTCSqiF3NOI1/9VJvyVxU39GzFjqpZlfCjWjFCYwfmHc20HcrNy
         QaugX6AkA7UsPhiMmeaLM7IKOIYvRAciQ6Kn72/6tMhe2hTY2R1s4B0zbHHUc5SDEMXe
         ArWEF9SvG6IqGP5g2bH1E6//MhEe0u6AyBkLDHhwe1i0mnHYEnr1kNo1BjCGNq3P07iu
         KpqbcTVs0SLFcn4r4tAydpnUE1IxYElTFRm5rkAjuYHpC/hQWB5j3zp7EB3azVB2sVXY
         IsqvJC/PxzHFvkFM7KYTox8OMEeTrJX3Ko3oD1FsgN+kR9tdE57zLW5iwWobawDiE638
         zIIg==
X-Forwarded-Encrypted: i=1; AJvYcCX25KWYKuCxQVoLBHFHmEdGPYnFWWvYs+xsNEBxsElT9jaLAkypiVJdxmNWhecKjs5MAIaoy3Mdp6k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1Jt0j8yr2urPtaEU5C155Kh4GUlrfYSAOOhzLWCsOoF5/eIea
	7/dCa3elZL1YLtSG+Lw+puEmOvSJDcY8wZdMzjTgoDM1vKhCImPnFZ42E9X7q0k=
X-Gm-Gg: ASbGncv9JSayLNrNjoecMFd+9CFg5bGLT0KLEFKjUmjDLhaT5v+IgqMfDLbqc8RiYyZ
	ueKpR6XrIF3HtxhSQwekhFFeXNPLW8p7dFCG7J5ybfY8/gFQyoAPwx3dHYuSKD4FUQPEoabO2M2
	9irKRSETO+5vV1S7IL6Zxb9IEW93Ssgo4u9RvhBZeFLTFscQmLCKGL9bMtLddcBaJMDl70vm66Y
	MPC9KcvRZWqa04V5HJyh9Nd/AQlon424u1yrWg29CnVGgShzCCIJrpWIze9kzfWmz9Jkat94E4w
	2GCORkKmUvxJuYml6CRK8oGF5zzxjMch31zRow0K7S/A
X-Google-Smtp-Source: AGHT+IEyYVLE9+celNxGo86663B2wzUsZfpExbxct9DCQIl++bGSTCDjXotnzuNdpB6wYwo2U02c/A==
X-Received: by 2002:a17:907:34c7:b0:abb:cdca:1c08 with SMTP id a640c23a62f3a-abbcdca498fmr312301666b.16.1739981283761;
        Wed, 19 Feb 2025 08:08:03 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbc0d0b882sm327791066b.109.2025.02.19.08.08.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 08:08:03 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	horms+renesas@verge.net.au,
	fabrizio.castro@bp.renesas.com,
	robh@kernel.org
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	stable@vger.kernel.org
Subject: [PATCH RFT 4/5] phy: renesas: rcar-gen3-usb2: Assert PLL reset on PHY power off
Date: Wed, 19 Feb 2025 18:07:47 +0200
Message-ID: <20250219160749.1750797-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250219160749.1750797-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250219160749.1750797-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_080805_367430_76D6857C 
X-CRM114-Status: UNSURE (   9.32  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Assert PLL reset on PHY power off. This saves power.

Fixes: f3b5a8d9b50d ("phy: rcar-gen3-usb2: Add R-Car Gen3 USB2 PHY driver")
Cc: stable@vger.kernel.org
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 5c0ceba09b67..087937407b0b 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -537,9 +537,16 @@ static int rcar_gen3_phy_usb2_power_off(struct phy *p)
 	struct rcar_gen3_chan *channel = rphy->ch;
 	int ret = 0;
 
-	scoped_guard(spinlock_irqsave, &channel->lock)
+	scoped_guard(spinlock_irqsave, &channel->lock) {
 		rphy->powered = false;
 
+		if (rcar_gen3_are_all_rphys_power_off(channel)) {
+			u32 val = readl(channel->base + USB2_USBCTR);
+			val |= USB2_USBCTR_PLL_RST;
+			writel(val, channel->base + USB2_USBCTR);
+		}
+	}
+
 	if (channel->vbus)
 		ret = regulator_disable(channel->vbus);
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
