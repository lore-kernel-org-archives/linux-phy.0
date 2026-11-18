Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8C4606A33E
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 05:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NCUFHx/+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=vduwhfPF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2+agwmzvVfDVeTR5OmH97jdJroe2aCaNVGnitk5yn6k=; b=NCUFHx/+nzsUsOpOGan0gJutHB
	dUJs1QxSPatZgDOFKYEL481j5KMEb+9+3IIJm4oouuufr6K8IIwR1y8UuQVaqr9oyr7A+U4SW2LOZ
	FQ85BCCO9uwJcsRySUxv3qhyqLFRbZ+5La9mpOB8+gkDdz5J972RcEUgVdroBCxI4bqY8Z28CF2tr
	Ztv/ktCuEtLerwd4xFGqwScgqC9zp/aIRioKcojYTxKYkhNmXhw+ZNFsAYCmMmbG0d++Mi5a2PMQt
	e1xhOanT3nhx7qm5k5TRoyssGbCeSV6zZIKSWLSWtadLPimaBy34FDrm21kEr4mkTEtVgbhYr4bmA
	4hIz8/Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYeV-00000007o60-1zEo;
	Wed, 18 Nov 2026 05:56:15 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYeG-00000007npX-489e
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 05:56:02 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-cd6b9a2735fso35809a12.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 21:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794981360; x=1795586160; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iHpEgxPbFinlelTShydiqMdXL6WmYaYuO85mjvtFPkY=;
        b=vduwhfPFQhauriY8fidDKqD5nU2KbQthVocO/XafqQKzyzazrSXi6Jy7qTRm1whn3r
         nTXj3Kd8h7nPlqPiOSi7/vfu41mDmMYl8MSnUnx/f1FR3ESr9xMgKbr9FTgh+R4lEHx1
         9D5Mbb7ZBHc330jNZH6Ykcw4HdiujJKhrbFn9XgdOFnJb/BpXxMnHfPsPS18ncsQlwVw
         jYDyAiLh/6jogoIuDQ7XNjoU67OX95sEZpKyYEbjS7RnEs7JJW7h4RMBHSx7MWoNCLL9
         tSWYWvbLuYgn5KhQ4/D67FvT77ra/Wti6HnLyIwTXzG+gfkuwTQFOrgzFZCtIKD7KaTF
         WCUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794981360; x=1795586160;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iHpEgxPbFinlelTShydiqMdXL6WmYaYuO85mjvtFPkY=;
        b=ZmIGskN0Oe1n7BJSqxQIH0fVP3EA8iNld4XrA+6VTrE0CtFe5LMkywbwy67FMcwfnG
         dBVpB+Pr72/sflsj4/tFGxz8wcleC2H4NbR1H9Zfopy9ifjRJA8OYNDGvpFIF2fCTB/k
         SCHnDda7VcEOQddiS5w+eWIdgV7ckK98BC1LjV5gejLp3lOyUyHtlkhCDoOoe9/Ioami
         W3EdyYtpYi9Y5xbXMuoE48gFK8+z2TQDD+IqiZiue20T+PuRCVmqf2n2WsOgAkFj/Q1O
         qQJak4MCz5toPdzdR/Hputy4w5cevGcHYx+9VBVJnED0jUpcwpbEYCsgnSdDJmBgoixV
         TdEg==
X-Forwarded-Encrypted: i=1; AL+hErGpjgyPmdb/XRgu6xa3NzPBixCeQtu12hcu059fV5UwNn5jtK1O6PxOGdo6yxXsz+0ffQ+z+6bDnus=@lists.infradead.org
X-Gm-Message-State: APuU4Z/bZzbW8W0O0t/7poLRAAHEhjK7tk828ziI5GKh+kRldPRHE2+7
	JEL8wR4pPLuU/AXVZ3E+wi0FTyFtRel5Ryrit9fsf6A/6gGAJb/rcggdxpVMIHDquxI=
X-Gm-Gg: AYBFou19ItYROwCHYvVPEvz4VHIOKWVyuuRisIJr12jlymLm1AHxUrW+caJrCRfUPCp
	Uj8DCuJZNztC/+0h9tp1OW5dgJ9NnE91HJYGFebNlXhjfkY7Bm/Y5APB64TUZZkPF9uVkvjpfqs
	e9dEIbbM1vJGPaFAy272O1B2lbyuZGKgRSV8Bh7yfX5qdRqp2v0ktVK76mXT79hPoW4eXZcqrwo
	OQFxlBR5/KnWs9lyLBKZq6g2lHf8T8hAE6aVe2D/J/n5l8KoIVHT2JMmYL98IFxZaWq86rUu3k1
	I30qK1sD2OI2VyKwteW0BpPCiDdMO/vCmtsofAc7WdHGMJ+gklSBzBNVvnhyOiedRlEyYh+bvln
	rXGEKoaZWurNN7PPTAMHyGWnGxuGM7H58JK53s+M/Sas1LU5Ac3RGEIOFPKL7+yim9hTKulS0cF
	PLp4aKwdeLFKSMzoZiCi0OIaIfAO5PFAUm0HNGCccDfg0QKTj+2MHOUOZX42LsWZbMPZedzdu65
	bpPQlUSU+jIg3AsjsHaKjmtCKREfEI9p6gqTAZsj4LFJ29b73DqxToZ7eJg57pY/MWOku0t0aGx
	/VWhGVFGqeUvij5W0qx0j3F5e5gj6q4JJh/x4ZkkUOwV7Hp9MbjuFBHszBbml7vszp5qh3fF4JA
	VGC7STFBMpvDfCJps60RX
X-Received: by 2002:a05:6300:6bc1:20b0:3ef:2f72:c7e5 with SMTP id adf61e73a8af0-3fe89100d9fmr1650543637.2.1794981359689;
        Tue, 17 Nov 2026 21:55:59 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c5ca5bf959sm569563b3a.20.2026.11.17.21.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 21:55:59 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Wed, 18 Nov 2026 13:55:17 +0800
Subject: [PATCH v7 4/9] phy: rockchip-samsung-dcphy: Always write the
 rate-dependent registers
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261118-dcphy-rx-v1-v7-4-8de1adac3a74@gmail.com>
References: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
In-Reply-To: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
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
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794981338; l=2791;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=jOoW884/QWxzl0iQgg361AUaX2tfS/RGrsDEUvgeOSs=;
 b=VkOIadDSCSCWfnuqRaor/8P7xZ2XT4u0wDDTi479M168RRkokCGNAss3oSGd4blzKFbElD6Bu
 whowWKt+GmhDXy0qQNwzix6IZpQLJ7M65vCrX2H2rmVHBAv8R8sC34y
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_215601_112359_0CB212C1 
X-CRM114-Status: GOOD (  11.23  )
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
