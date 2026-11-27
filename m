Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E15606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 07:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MTy3vWCJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=J73yRkCA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2+agwmzvVfDVeTR5OmH97jdJroe2aCaNVGnitk5yn6k=; b=MTy3vWCJc5nK3ZXKPIUfUFVHWX
	rQeRnNrHiLS7x38WKtfxQ8rCgkpwXQQYQN5qvQbNUv7K1gBvsbkv3XzxpHFi/WXw0+MvkD7x9Eurm
	H9Hln/sms9itEs08cYILdRrLTtCYA/wk7JyNo5Ua2IuviNZUdEF8HLfU1ONdOkpwRbSkirfZTx+pw
	QBiHXvVrqXQ5W8wMWzQTMb896rVsgpMi+QuDrNpt44UE2nFw9lbGFPp+qupUuNUOf1UnkqrW2Ro1i
	DJ1X48usFgbFLFXCX8/kcYfu3acKf+3UluYlBbEyH6MJdKK5ouAqGxoNIB3IUXpOIMvs4x0lZ/0E/
	pFwkAnuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgs-0000000FBww-0Djh;
	Fri, 27 Nov 2026 07:48:18 +0000
Received: from mail-dy1-x132d.google.com ([2607:f8b0:4864:20::132d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgf-0000000FBgq-0TNQ
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 07:48:07 +0000
Received: by mail-dy1-x132d.google.com with SMTP id 5a478bee46e88-384d74c9dfdso1252943eec.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 23:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795765684; x=1796370484; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iHpEgxPbFinlelTShydiqMdXL6WmYaYuO85mjvtFPkY=;
        b=J73yRkCA0keCP9KWY1XSn7fOYY/yvT6ODres2n7Qbl2eJ3AR8UNCCZU1DNwjdpLutO
         0c1QOptrZUGHeOcryh4ccZt7PdiPH+LbhqhpNMIkIpgQjZAH2Tl912zuGDtVjFB0iWNr
         fKf8iQaXqzeZ+D9/8PfD3yUKRBPQK90MPuYPN14aEPvFyJp0mkLb8F4zWDYrQ6Z0GMe3
         N+or6ElTa+vDtdmi1kzGq41cbvFuJZ3CfVOO3GVQd4MpXUGAfCa0dfGxUUN7sVyjdVSJ
         fUwzr1fxsX2b90IunO+G8HM3LisL+LGrLB4epvFH2NwVE0d1Z9sE7zccn958AAyj2q0c
         9GpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795765684; x=1796370484;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iHpEgxPbFinlelTShydiqMdXL6WmYaYuO85mjvtFPkY=;
        b=2IMix3ZbuMhUiyFjngOlDXyFOCA0ZVU7/mpX2rBxgKJBbBNIINaTIqaA16KSKzyPGR
         vT8PHlFFqKc+J5r4hrMCer9X8CpnPbNkOVQKVlKmTjmMtjICplo/S8sxn2Ml9D/EARXt
         6cILER4HyQUpvEFvDkFb7UFqLDqQ/JJ0y6Df0PggZJHxGoSbcL2ON5rLkj9UiWqcCGMr
         YNFYqpfczsboNr1SlYiookdtHBmPTCO2zTwyjgLbsBVpvKA8j2FJcXR8oAppLkqOrGs/
         TUd8YPcfwXDWbjbPndyvAK71IofLIvTJS74Mj0tiMrjrxzAy7DbnjbuHCBS4/S6eDmOj
         N3uA==
X-Forwarded-Encrypted: i=1; AL+hErH4dIFBhH4uATUrFHI+KVm7VxyPFVQl/ejW/GkwrhYSYwPSd1UyCxA3Aj8LT83s3s74+Fssi2Cr7wg=@lists.infradead.org
X-Gm-Message-State: APuU4Z/Taq5eb/cKOw6NLR7USfaaVbSvUqfSRQs5qykMFWhGWDFXdD2h
	bEfCiYFDmy58zf+FOw5iQYlaxuJlLpv28KIQCsCCfd+FTUbPsQ2HVeu8
X-Gm-Gg: AZFdTZc3z2x1C3GtwqlRSec3fRXroT9mYM8Ezqg+z/HB2VJ8lGIAoy1zZGrgEKWLsms
	48LO1XvOsRcLr10Poo29/cV1zeQJpq2pYdmNbXc1eTn77D3F8XDIBX7Z2RR3zP+uDuQUJ1ChwWC
	qpNVj8RLyDJH+ppc/aRezj/11QjrHo0DS+gUl4+Jn3KOG2nh3P4QFZ22oMg/k1PoCpqdyC3yzxN
	hlvRvcXAcVUHVTX2l5xj/1YwNDtKJZdrMhoeRYk/Jps2ObDBjps+kDgmBk9a3UrAfCG3YiEs7x0
	9zJ80uanX0S/Ro3Wql+R9LKIUUjl55VDn2VMlk2Q4qkW5zBdV6njrDlTQIdxtBEKhmjRBXj6Nmj
	4IGBNZsRrwg/MxIACa41h3mtK28ji23+jZVJ5mrX0Py35DnZFHSDfG957gZ+YFdsh6/fTAqTJJV
	e35dhl3HACCZgUHGow0+imQ9G5MPuwUM4frJNck444lW+k3dETJYymcoM+XNFPfoZsXShFcFWlU
	+LgRTeEiNJ/lNKnErteCzg/Sj/Rb6a8Ss7XAcXa88EZZWtoDsBQ+3crsvNXhCouBIQBSfjkuGmL
	xn3YStaIxuTfvVNaC1LGRWmQd1m3QMBJnkI5kNPcUDGbWyoevIYRSmmNw4ByNvnRmshb2/F1d8z
	V7JDe0dYqsRmrzNpoKK/+qH/Px2X1Tt1x0/chqx5XRA==
X-Received: by 2002:a05:7300:16a3:b0:36d:5fbc:8c8d with SMTP id 5a478bee46e88-3856ef457b6mr33768253eec.2.1795765684101;
        Thu, 26 Nov 2026 23:48:04 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385672c6f31sm68098252eec.15.2026.11.26.23.48.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 23:48:03 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 27 Nov 2026 15:47:40 +0800
Subject: [PATCH v8 4/9] phy: rockchip-samsung-dcphy: Always write the
 rate-dependent registers
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-dcphy-rx-v1-v8-4-9ddfef99221d@gmail.com>
References: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
In-Reply-To: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Quentin Schulz <quentin.schulz@cherry.de>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795765664; l=2791;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=jOoW884/QWxzl0iQgg361AUaX2tfS/RGrsDEUvgeOSs=;
 b=hPBLNjjuOTIc3cBAJzDu1xkrkYERbeogg9sjLO6cYL/B/adWhR2voAT0ohi5o9AAmx4T2DAYQ
 BnLtae7WCVIAWy0E6nd+AST0xO5XR/T4q9VdBMPusYv2+uqF2hwOj7t
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_234805_338453_7D8F382B 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The lane timing init functions write DPHY_MC_ANA_CON1, the four data
lane ANA_CON1 registers and DPHY_MC_DESKEW_CON0 only above a data
rate threshold, and the registers have to be zero below it [1].

Today the APB reset at the start of every power_on provides the zero.

A later change moves that reset to runtime resume, so a power_on at a
lower rate after a higher one would keep the old values.

Write the registers on every power_on, with zero below the threshold.

[1] RK3588 TRM: sections 22.4.2 (reset values) and 22.4.3
    (DPHY_MC_ANA_CON1, DPHY_MC_DESKEW_CON0)

Signed-off-by: Jason Yang <jason98166@gmail.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
Tested-by: Quentin Schulz <quentin.schulz@cherry.de> # RK3588 Tiger CSI1 2-lane IMX219, CSI0 2-lane OV5675+DSI
---
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c | 24 +++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
index ce1bc62497c5..7a009d87a665 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -1228,7 +1228,10 @@ samsung_mipi_dphy_clk_lane_timing_init(struct samsung_mipi_dcphy *samsung)
 	regmap_write(samsung->regmap, DPHY_MC_ANA_CON0, val);
 
 	if (lane_hs_rate >= 4500)
-		regmap_write(samsung->regmap, DPHY_MC_ANA_CON1, 0x0001);
+		val = 0x0001;
+	else
+		val = 0;
+	regmap_write(samsung->regmap, DPHY_MC_ANA_CON1, val);
 
 	val = 0;
 	/*
@@ -1259,7 +1262,10 @@ samsung_mipi_dphy_clk_lane_timing_init(struct samsung_mipi_dcphy *samsung)
 	 * under 1.5Gbps or equal to 1.5Gbps.
 	 */
 	if (lane_hs_rate > 1500)
-		regmap_write(samsung->regmap, DPHY_MC_DESKEW_CON0, 0x9cb1);
+		val = 0x9cb1;
+	else
+		val = 0;
+	regmap_write(samsung->regmap, DPHY_MC_DESKEW_CON0, val);
 }
 
 static void
@@ -1284,12 +1290,14 @@ samsung_mipi_dphy_data_lane_timing_init(struct samsung_mipi_dcphy *samsung)
 	regmap_write(samsung->regmap, COMBO_MD2_ANA_CON0, val);
 	regmap_write(samsung->regmap, DPHY_MD3_ANA_CON0, val);
 
-	if (lane_hs_rate >= 4500) {
-		regmap_write(samsung->regmap, COMBO_MD0_ANA_CON1, 0x0001);
-		regmap_write(samsung->regmap, COMBO_MD1_ANA_CON1, 0x0001);
-		regmap_write(samsung->regmap, COMBO_MD2_ANA_CON1, 0x0001);
-		regmap_write(samsung->regmap, DPHY_MD3_ANA_CON1, 0x0001);
-	}
+	if (lane_hs_rate >= 4500)
+		val = 0x0001;
+	else
+		val = 0;
+	regmap_write(samsung->regmap, COMBO_MD0_ANA_CON1, val);
+	regmap_write(samsung->regmap, COMBO_MD1_ANA_CON1, val);
+	regmap_write(samsung->regmap, COMBO_MD2_ANA_CON1, val);
+	regmap_write(samsung->regmap, DPHY_MD3_ANA_CON1, val);
 
 	val = 0;
 	/*

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
