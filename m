Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2270660A2639
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 08:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bE8SGAVm;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=XbXXSqXh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HVxe8ayLDND7TLVUFo/27f59YBLtgQt3KWQtQ02dX30=; b=bE8SGAVmwIIFrcY+kfOHzMz/c/
	pY5RdJOChto/CaQtdlTowIhxprfDV7UvlXEXMPx9qYrGCzyzxZ26rCis401xv1ekzOS2YOyQPA7tD
	9Q8T27sEdTJeyd45WYBGEsV2vyf1yvm6GgDWNAy9WV8/VaRjBZn9Y6Li8xJPj5BzMOO3IDpcel4UF
	fdnzzH7sFAvfCk08dQLVEEk2Il9G0ICqnOk4bGlLlJOEONtkUWoHg1SR6t8UcpwPf8TO3V/t2WUGv
	elzfIf5ac9QcoDD4QzI429mtXuaePBVErxlLAFgfKSTQTqCQYbUHzkmXJAwAA///kNQyJzr4mSWu/
	v9rC93nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQh3u-000000034fF-2jlL;
	Tue, 10 Nov 2026 08:18:38 +0000
Received: from mail-dy1-x132a.google.com ([2607:f8b0:4864:20::132a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQh3r-000000034Zj-2Z2s
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 08:18:36 +0000
Received: by mail-dy1-x132a.google.com with SMTP id 5a478bee46e88-36d1b3b9974so150077eec.2
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 00:18:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794298715; x=1794903515; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Mp9IyFvT16+hX88RJrtjgklK+/LOWFoJEWqYM2GWuMQ=;
        b=XbXXSqXhp4n8eiwxn0x8r61PHyp0PDnN6f1lUXdwPWvuhcgcVZo23UrZNjqUmXxSJ1
         5e7fOuoVou08sGqptSuv8l8CFXpFw2mL6C4uPMdK2ad+v19ZGbqJTcQPy9bML4pDcC1m
         iC46vx9LJx4ob+SmP9ai8a5Vuee91WpSibTSuMbHU5pXfjrNSRRjrQQ/RdqV/zRFJXAC
         Zw76ldFQGZOTMSdLKlOOXr3Jy9hAUAPBSJlyMi3LsVSvReMIKGmJK11rHDv1HownyXdy
         dKjzlOXPsP1IBcNnruT7gCpWD2JA/3F/4RrkAf2J5D3Z/fswjhZtNdMfYGdDTyoWLV2O
         v4Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794298715; x=1794903515;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Mp9IyFvT16+hX88RJrtjgklK+/LOWFoJEWqYM2GWuMQ=;
        b=tw0Li/GB6+HatqeXIBrZB/msA4lkieE9LED7jENh+XdGT/ni9gogoXxZ1U1juhG5ky
         q/un7a9Xh2vPEqOAqX1rd3016meMVbqli+FCmez9aH3EolBrgSAORhLOMWxIVwNvi/ij
         vLVnoAVzoaPk/uGrbe/jfj+eoUzzxnNzBkUsOfrRyzmYIHsvrRFeF67N8cei5ii79An+
         rmRK+/sdM/L+y9PcGqGx4LeeuHlxIyLs5vGUESsq+leQBYliHQV76B8W9X/icGZ6ELDk
         /SBF46oiPz5HMTWBSdorSps0jRSsyNLKKOpxLTaxfN7yL7nWWyAzQ4DrSLQ9avvtWR6C
         ZFpQ==
X-Forwarded-Encrypted: i=1; AL+hErHuLNjpjh7hbbzeJklhHNiCBGmtSRWbtOVHv1jMkHpZh3U0+92kJCNCLv5+ypL6+plM8BKvwSJj0aY=@lists.infradead.org
X-Gm-Message-State: APuU4Z8prqamQil2I7K8w442cNa2ji9KFqSgrcyN6Z1bdR2+DPTO26K1
	Aysw7MYMYtpliFw/eCFfel3wnpmX0zYe6Z0eJkMKrmI1XHK7nZnShHpX
X-Gm-Gg: AYBFou1nm2tHijcinoWdm/5mIv9+msRI2f0Rik8kEfaS5aK3LvzNo1YwqUJgje9tXOi
	s+4Xshxig/d6H78Ju3bvrKcedvAekZgvBI6+UkETEm+2wOiMsO9ImKmoJ9/P6db85I4eSri34xH
	vVSo1kDc+CopCqSb3on5iSTS0KTY+qok9Bc+dybsKBINK43awGtKSDvsbRoD4F9P2IlnGy8ETnk
	0YgR+KAjAh8Fvq/LtCwzf+S+WgD9Ir1r+2Q6KNwYvflroKVhqfLulYFbY03QFKbucrNDwkXYpcd
	YjEkH2qbbKcIBU2MHSfLlL6RqIU+c+BrNdbfmSsgkFPfHvt/oSKCh12Y/kQySXPPyv8cSFPHwIC
	0ROpwlFRZi6a10aNz67Ff/aLytbqSvf1lam3sjY7QaVtoYyNBig66JTa190/3ecSBHo59fjcjrg
	/9q8+FQC5a+tDypNS1RtiEUrt3lqj0RSfvVjDyMqFexkW0dmGYwdqVQQGLaRszz1A5WMYEPTPmr
	+ZElSAWCmvEwkLnbz5N9NzutqwumE10Bbs+hBGv7Ej4gcW8QNA+eM2e/sCe+oycQywAc4pj4uzG
	GpZawHlvOhr0IiqwMXUj8grZhayQn3l3QEBRYvoG7HpkIH73nmNCocaZqMeAckQefKJdwErRZ0R
	kpyT1GA==
X-Received: by 2002:a05:701b:290a:b0:16b:4f52:a08 with SMTP id a92af1059eb24-1b3b5bc5b75mr3383821c88.0.1794298714350;
        Tue, 10 Nov 2026 00:18:34 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3b5b2fc14sm5236759c88.12.2026.11.10.00.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 00:18:32 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Tue, 10 Nov 2026 16:18:07 +0800
Subject: [PATCH v6 4/9] phy: rockchip-samsung-dcphy: Always write the
 rate-dependent registers
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261110-dcphy-rx-v1-v6-4-d681ba20b36a@gmail.com>
References: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
In-Reply-To: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
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
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794298691; l=2619;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=LIh1d9RdBI9/gBSpmLf2Ww3xecRtR289gfN7TNiw1rk=;
 b=vh7WtesJEslT9LQa1QgtXchs2lhrai6pBKF9E8aFtdAdpc8JEMUwWFHoiWRWDV5rnQJfNXII2
 CyvmkFGqTM0Cpv/XpwfG7MNyurBRtigfnqqPGRKy5yIICDDKwRT+Ojn
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_001835_665057_B41C489A 
X-CRM114-Status: GOOD (  11.58  )
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
