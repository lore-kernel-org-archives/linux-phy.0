Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 000C8CD3421
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 16:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZYIjW14QGW/rpgvq/W1UB4IeDbLjoVg8U2Kru+T/ew=; b=FybubdBEKpojY5
	T3ueyD4ITubu3Nxh01DLpAKuUEbcWooE3lEvFunhw+lc/W17pMEe1qtvRTNaSemCMWik77iSXgFZ0
	DsNks9I8z8/xk580QJd3WYOftgYgy4c1tccW61++m///1LI+iocN3tGJARxGLzXArDLhNPC8tpGEA
	NxVnIy9pCHUeD7fye5NebVGeSy5TTFkxRzyBRBuclWvsYJeTgNysuXvD+qGH//8Q4Edk4O4bxeO3I
	j38M4NF/FQ/DGYpW7PGeJPYonV5D1aYkDSA8/GbJtIwyTWXc1VzL0wXBipplDe5nPUzKa8aQjsNYz
	ju/iWN78+4m13Pavddxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDgq-00000009B7U-365G;
	Wed, 12 Nov 2025 16:27:24 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDgl-00000009B3k-1fsR
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 16:27:20 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so8394825e9.3
        for <linux-phy@lists.infradead.org>; Wed, 12 Nov 2025 08:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762964837; x=1763569637; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3zf+/GCTzFTCgE5kx1XIhvvkdps3fbhzPkXxT6Wkygo=;
        b=D9rGyvha0584Dh4ulD9iU5raXJaG0EIg2N9tZ2W/oJvbBwwnV94ovc3x4aUd1su3JP
         mVhCgeeEweC4uAkqnbfYWWPbQWUJRYNgTzlQY7T62Aj02rii+Qtr18mxvCsV/FXgOosC
         MV67ey55/70BPQ7vrz9bM0tV6/UpzW4PJDAEoyrXla9IifDk9k39l4pNYqcfoXkyP1d3
         Fk2QKZvMtBREWKRb5VBEFNfFJT2WQc515tk6FxlDI9XtsK4KwdK4KaRCagySE/gu6egw
         d3UeNx/Hu16AkxiDWPpvni4sqhFXwhvO2xcHbkcEci4YjkTOIXQq4EjVRBP2ZegF+thF
         /c/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762964837; x=1763569637;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3zf+/GCTzFTCgE5kx1XIhvvkdps3fbhzPkXxT6Wkygo=;
        b=e7EwWo/URHeuNHRLGyF/IqyBmo52wKR0Jo2YH4qtQKDfLSFx034KvDiCxf/UUnDYPC
         zGDZ8RheT4DC6+Yt4Md6OIYeMIad5FgiZx4vMyYRFzDFDgFtW5gVA+ZerDq0JuhxI0+N
         WwOYAtwFVHzv0F6WBHXnAL14nNGFzlUMLoglGnDQR4vgpZjzmEbDrLTj7YcF+nVvYn6H
         XHKoGh57SrDMw5bjSq1O19LUi7pWymcSRx5jBRbb0GtnYa5EhH41sFrxXLB0eCdRLf71
         xyi8BaQkOBOpspjznXfa73LxG/gJD3zdYrMYVXYmScHUvgnpAWlMaejmZu2ehjj57cLo
         /4zQ==
X-Gm-Message-State: AOJu0YyFHUk+5Puu3dTHFGlcErQbaVhMB2giZmhFI0c09y7yXC/AKW0y
	5g8Ef6bAllzO4HrGigj+nkbM3OrAwstJKi/sR2LdLw0v/BgwRPJijurkg2W+XSf7YivHzcSPv7J
	ZNDR84Ns=
X-Gm-Gg: ASbGnctoT0Ts+SoVBg/7HzWjnK+hF/ZR6EW5eB+8gP9NkHuO8/nMjkWXZBWZ43s9hPL
	ecdxwbBShYi9aSDeSrZFGwtZEimUJb1HfEJR1KGgdupdnQZQpkLn96winlw/rkJ1HYN6MvUEBIF
	/SP/SiizJb6EgLBnEQo4c5AVdZ6XMid10c9p+TnaYhWsHODolD7km8TRcj+ES337xaEvU7RDHAh
	lNHj4l5Pfp8SyhcrcjCWinARlASbiq4S5TLAwMLzmGiQEWFgGfu3qyydvjdIwW5j9u1zhq3sJ/H
	PevFj6fgC+cHUvXX+yFO2tXexWox4gP8ODdyVgaXNzxPF0eaMAJuoYw9jXHUELzonHobdWLCJww
	ZeAU3IbVSLhAd4eBBl20gJjT4jyVrIROtpnUyHUtedHOlrQV+EwHCXJwmBvFmk2VMC6ZOnoBGom
	PMOZZsfdJPYiGqhy3zAsvKO5AVmR2tNQo=
X-Google-Smtp-Source: AGHT+IGbQBT6h9D+QiV3NZeclPrdWfHO3lE+CnYRzD/4ItKJuieqX8JUgxpLYyCA2DaWGs9ABKZfZA==
X-Received: by 2002:a05:600c:8b22:b0:477:63dc:be00 with SMTP id 5b1f17b1804b1-47787086655mr33058775e9.25.1762964837199;
        Wed, 12 Nov 2025 08:27:17 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([145.224.66.100])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47787e36ca3sm48534815e9.5.2025.11.12.08.27.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 08:27:16 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 12 Nov 2025 16:27:07 +0000
Subject: [PATCH v5 2/2] phy: samsung: gs101-ufs: Add .notify_phystate() &
 hibern8 enter/exit values
MIME-Version: 1.0
Message-Id: <20251112-phy-notify-pmstate-v5-2-39df622d8fcb@linaro.org>
References: <20251112-phy-notify-pmstate-v5-0-39df622d8fcb@linaro.org>
In-Reply-To: <20251112-phy-notify-pmstate-v5-0-39df622d8fcb@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 kernel-team@android.com, William Mcvicker <willmcvicker@google.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, neil.armstrong@linaro.org, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5855;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=ZkTyvzs3kiErZLDD09beyCa4zgS6txIDoNMnbc53+tY=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpFLVfwlZ5jst5dZK7+RF0jA51MBaOdzMVv/kjL
 xcH1R87WhSJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaRS1XwAKCRDO6LjWAjRy
 utY0D/4sWragFjlosVxmET+0kZGsxeZNRi/7KobzDWh8KPTwpWOjtFZ0jEYq7e/lCmyWaKbqRK3
 AopubMfgLd5aVJpavGeSQNki7Mclzw34Y013JC+5EK9+0fcQIZ+5XBY452ipzmXUqbILM51Psqw
 LxZwfTy5+KfWVNQtH1OjVmtBXZT4D4js5fAhw9svh7AHQefpQpOxxQd9Diq9ZVsNlivopmBxOwg
 tyq/Rk75SvyYCJVcwGNJIf8vkWRlzO0gL2UWAvElzvx1PckfqzsjscDntF1jvZC7zb//Cc7i/73
 MD7lm0YIpj9NTYMsrp/S57zXDEGsSkwuUfrinROfsDEt1GKVy0x5grhYLJlrikObGlgUPzVad3a
 s9VoVJAn1MMZzOlbY/TaHbzipsdBmzRS4Be1mnoVlmhVviBvZOdHQEwx1/E7R+tKQdB50jvnsEp
 QjDukapygIb9xPt9rSGE2eoRMbQWvG2wOm8LZHaQnsXS+oiXlf4AbuXMUE+TbwSReceSsD9Dufd
 szvDKlxO+kwk0oIvXhv0KrI/ffWkhL5xM+ehg98Xrl7rc49VCxo/6PqvRmkpdOc+J1zAMWdCm7a
 XrtXSrJbq4lJvzxooZA1CqBIMVtvY2GXgmTD40tnZj2RGiqg8Tk3hLMgvb/9kbC4g/3x0oDWXHl
 ysVzOtkmaxPD3Ag==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_082719_475457_3ADDB58E 
X-CRM114-Status: GOOD (  14.95  )
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

Implement the .notify_phystate() callback and provide the gs101 specific
phy values that need to be programmed when entering and exiting the hibern8
state.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes in v4
 - Resolve Intel 0-day warning
---
 drivers/phy/samsung/phy-gs101-ufs.c   | 28 ++++++++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.c | 40 +++++++++++++++++++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.h |  7 ++++++
 3 files changed, 75 insertions(+)

diff --git a/drivers/phy/samsung/phy-gs101-ufs.c b/drivers/phy/samsung/phy-gs101-ufs.c
index 17b798da5b5761f8e367599517d2d97bf0bb6b74..a15e1f453f7f3cecd6d3aa75217633ac4b6085d0 100644
--- a/drivers/phy/samsung/phy-gs101-ufs.c
+++ b/drivers/phy/samsung/phy-gs101-ufs.c
@@ -108,12 +108,39 @@ static const struct samsung_ufs_phy_cfg tensor_gs101_post_pwr_hs_config[] = {
 	END_UFS_PHY_CFG,
 };
 
+static const struct samsung_ufs_phy_cfg tensor_gs101_post_h8_enter[] = {
+	PHY_TRSV_REG_CFG_GS101(0x262, 0x08, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x265, 0x0A, PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x1, 0x8,  PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x0, 0x86,  PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x8, 0x60,  PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x222, 0x08, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x246, 0x01, PWR_MODE_HS_ANY),
+	END_UFS_PHY_CFG,
+};
+
+static const struct samsung_ufs_phy_cfg tensor_gs101_pre_h8_exit[] = {
+	PHY_COMN_REG_CFG(0x0, 0xC6,  PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x1, 0x0C,  PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x262, 0x00, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x265, 0x00, PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x8, 0xE0,  PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x246, 0x03, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG_GS101(0x222, 0x18, PWR_MODE_HS_ANY),
+	END_UFS_PHY_CFG,
+};
+
 static const struct samsung_ufs_phy_cfg *tensor_gs101_ufs_phy_cfgs[CFG_TAG_MAX] = {
 	[CFG_PRE_INIT]		= tensor_gs101_pre_init_cfg,
 	[CFG_PRE_PWR_HS]	= tensor_gs101_pre_pwr_hs_config,
 	[CFG_POST_PWR_HS]	= tensor_gs101_post_pwr_hs_config,
 };
 
+static const struct samsung_ufs_phy_cfg *tensor_gs101_hibern8_cfgs[] = {
+	[CFG_POST_HIBERN8_ENTER]	= tensor_gs101_post_h8_enter,
+	[CFG_PRE_HIBERN8_EXIT]		= tensor_gs101_pre_h8_exit,
+};
+
 static const char * const tensor_gs101_ufs_phy_clks[] = {
 	"ref_clk",
 };
@@ -170,6 +197,7 @@ static int gs101_phy_wait_for_cdr_lock(struct phy *phy, u8 lane)
 
 const struct samsung_ufs_phy_drvdata tensor_gs101_ufs_phy = {
 	.cfgs = tensor_gs101_ufs_phy_cfgs,
+	.cfgs_hibern8 = tensor_gs101_hibern8_cfgs,
 	.isol = {
 		.offset = TENSOR_GS101_PHY_CTRL,
 		.mask = TENSOR_GS101_PHY_CTRL_MASK,
diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
index f3cbe6b17b235bb181b3fae628d75822f0c9183a..ee665f26c2361ff9c3933b10ac713bbd9085b459 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.c
+++ b/drivers/phy/samsung/phy-samsung-ufs.c
@@ -217,6 +217,44 @@ static int samsung_ufs_phy_set_mode(struct phy *generic_phy,
 	return 0;
 }
 
+static int samsung_ufs_phy_notify_state(struct phy *phy,
+					union phy_notify state)
+{
+	struct samsung_ufs_phy *ufs_phy = get_samsung_ufs_phy(phy);
+	const struct samsung_ufs_phy_cfg *cfg;
+	int i, err = -EINVAL;
+
+	if (!ufs_phy->cfgs_hibern8)
+		return 0;
+
+	if (state.ufs_state == PHY_UFS_HIBERN8_ENTER)
+		cfg = ufs_phy->cfgs_hibern8[CFG_POST_HIBERN8_ENTER];
+	else if (state.ufs_state == PHY_UFS_HIBERN8_EXIT)
+		cfg = ufs_phy->cfgs_hibern8[CFG_PRE_HIBERN8_EXIT];
+	else
+		goto err_out;
+
+	for_each_phy_cfg(cfg) {
+		for_each_phy_lane(ufs_phy, i) {
+			samsung_ufs_phy_config(ufs_phy, cfg, i);
+		}
+	}
+
+	if (state.ufs_state == PHY_UFS_HIBERN8_EXIT) {
+		for_each_phy_lane(ufs_phy, i) {
+			if (ufs_phy->drvdata->wait_for_cdr) {
+				err = ufs_phy->drvdata->wait_for_cdr(phy, i);
+				if (err)
+					goto err_out;
+			}
+		}
+	}
+
+	return 0;
+err_out:
+	return err;
+}
+
 static int samsung_ufs_phy_exit(struct phy *phy)
 {
 	struct samsung_ufs_phy *ss_phy = get_samsung_ufs_phy(phy);
@@ -233,6 +271,7 @@ static const struct phy_ops samsung_ufs_phy_ops = {
 	.power_off	= samsung_ufs_phy_power_off,
 	.calibrate	= samsung_ufs_phy_calibrate,
 	.set_mode	= samsung_ufs_phy_set_mode,
+	.notify_phystate = samsung_ufs_phy_notify_state,
 	.owner          = THIS_MODULE,
 };
 
@@ -287,6 +326,7 @@ static int samsung_ufs_phy_probe(struct platform_device *pdev)
 	phy->dev = dev;
 	phy->drvdata = drvdata;
 	phy->cfgs = drvdata->cfgs;
+	phy->cfgs_hibern8 = drvdata->cfgs_hibern8;
 	memcpy(&phy->isol, &drvdata->isol, sizeof(phy->isol));
 
 	if (!of_property_read_u32_index(dev->of_node, "samsung,pmu-syscon", 1,
diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
index a28f148081d168344b47f2798b00cb098f0a8574..f2c2e744e5bae87c9cfcaa17f4a09456f134966a 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.h
+++ b/drivers/phy/samsung/phy-samsung-ufs.h
@@ -92,6 +92,11 @@ enum {
 	CFG_TAG_MAX,
 };
 
+enum {
+	CFG_POST_HIBERN8_ENTER,
+	CFG_PRE_HIBERN8_EXIT,
+};
+
 struct samsung_ufs_phy_cfg {
 	u32 off_0;
 	u32 off_1;
@@ -108,6 +113,7 @@ struct samsung_ufs_phy_pmu_isol {
 
 struct samsung_ufs_phy_drvdata {
 	const struct samsung_ufs_phy_cfg **cfgs;
+	const struct samsung_ufs_phy_cfg **cfgs_hibern8;
 	struct samsung_ufs_phy_pmu_isol isol;
 	const char * const *clk_list;
 	int num_clks;
@@ -124,6 +130,7 @@ struct samsung_ufs_phy {
 	struct clk_bulk_data *clks;
 	const struct samsung_ufs_phy_drvdata *drvdata;
 	const struct samsung_ufs_phy_cfg * const *cfgs;
+	const struct samsung_ufs_phy_cfg * const *cfgs_hibern8;
 	struct samsung_ufs_phy_pmu_isol isol;
 	u8 lane_cnt;
 	int ufs_phy_state;

-- 
2.51.2.1041.gc1ab5b90ca-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
