Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50E94CCD18E
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 13:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tknKZALKqiRHmlItWsvp6Muqbui4qeDKR5RO6pQ0X1k=; b=BVWNnFlOBF+9OU
	Fb+f+MYld28JNX0baeuEDhMolsr/hlFX08TRIFHJp3UBd4qUBem7VWI4KesrCXWzCkvpJ8AjS4SzV
	WtQYD04kfLriOuQLCTTCllRWvRpNwSa48UCF6CoZ4Uo3M1saTTYA71FwAY/RhYJufZhzuwGW8qkHp
	BnwiHxlR+R/AtB6/LbEKdovWUA7QUgs8MJ5tULeiInCM/XfxkESJsFP8orlV1lCQlItLzSTE0fquE
	icenM+92sjilg98oJ0SDenqOcZ3XHx3tY3McJ7MfNrR1EEI0zaDTUxE0d5fuQ682mBFh3E7ylfZoC
	1ii4zKhRs5SOtybwHFsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v91mu-00000001juQ-0Nmv;
	Wed, 15 Oct 2025 13:43:32 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v91mr-00000001jsj-3CzZ
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 13:43:31 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-421851bcb25so3114381f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 06:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760535808; x=1761140608; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cPOcqrHoAC0pIWNV4V+SfzH8kNwkAKjv45j4Ggbs9iE=;
        b=brUZwL4MdbKMFn1R5YFLGGyfx3T4KvkV03US5UUyyKdGF4nCUFr5t6RDVKfIE2rVv0
         k7ceynfja8MjjC5RA2Cg6UNmWiIChNNynosVtvUsHtfINC3tnziVW65T3esW2rtYov+o
         GEczkscyLYwZk+bdwkCbWzAbKFUZaXJbZPieqL5x55/EXH0rNByhOUyel46Kpc7ryRfZ
         q9AF9kV1v6OcdpzBH2jc2D7c09RhkQLE4gCLTm716r+Aszr6/9RulK2EITLqrQQge41u
         9gaQW/vARWCfwU7/iAdPCL5l0VJBMaKmhHCWHs5cmJ5krVSalIbWMbj/jHxwzC9GM5fS
         keoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760535808; x=1761140608;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cPOcqrHoAC0pIWNV4V+SfzH8kNwkAKjv45j4Ggbs9iE=;
        b=Iq+IvFUwNQp4W82TOfPh0XUepT9tPICSC4HxX+MK/y5pdHG9gJMhQAwMxb01RvPtiF
         jl+J0oBcDiX5o0i9ryeYJMK4bi7JrQAF0WxqbvjDAp6JgTbZQKm6UC3cqFoHsooNOxDH
         LRGJ3JfdLq50zvRTtsK+NHzY52LLmdCP6NpiFOuetWFpizRy44Xmj+kaet5Vr4zGXwM5
         Y3E7R4xg3XktFhzxtdiHlFUaZj6xPnywOd937kCbODqgfQsiuAupDXHj+iL4YiqbYO77
         ZGaDSkvkX6vKUQ4xpDqSpt1UXsWa/PkBjTxJHIH6iRNEd7GWg0xIpHhmrqP1FguJokq1
         i0vg==
X-Forwarded-Encrypted: i=1; AJvYcCWdO/ladvQSLyoO0X9hAy28hHE9OgBJOQKn3qsMo24aWYZwODgnfHfE1tp8M/iRlcizI+00boTtPi4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4ATR8VbE0z9UAFy0q0fVCdYofMGr6UD/whQY+M6Gg1EqSRwpl
	1t8mExPDP6b+hdUaImpfksj61mBRC535f7ncdmcWUAv3SiPK3CYN3Wtcp37GSTNzpe4=
X-Gm-Gg: ASbGncupAVfMGgu4wl8mAybSNrwyNgoT9ljW6hdYUmdDh2g+ezVjf9cXWeTpeii7vn2
	RLu8lz8TxFAdqI9Rqbe0BEWHMytbEYwhKkaEQFH8OGTMuBZd5U7Gs0EyBb0tnYfz+hNemIg3rNs
	MmtLnafOo3Y2fDE2vOo8ByTuNlt8GCbdkpvhft/4phuscZ7Zs/DdNk0BbcL3WXKDQtZggGmCAap
	idYcTwgzuGyt+YD16cIfhkN/iIjiCuIreNAQ+XPmJWGlooEnJkIPq+RRzJW1W1guHF7r+6PLrfz
	NRhTqwp3m2u4jo5IbkRPdFnLe8mmLQ9vrPjt80YZMpEqDsgGhpIj8W3cpcDlWulMkGE2TDaAxDy
	eWtHtHPotWFEK6fstNbEkiE3RD7nb1rMvQENGd1Bhvzc=
X-Google-Smtp-Source: AGHT+IH5nePTE53pHld2Sv5dcJlhv6pAzkVfdu25NMHubXSnvoEtpHJoJrj6fKK8sk5BAorl+dF75Q==
X-Received: by 2002:a05:6000:1863:b0:40e:604:8e29 with SMTP id ffacd0b85a97d-4266e7bf05dmr18232349f8f.15.1760535807748;
        Wed, 15 Oct 2025 06:43:27 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fab3d2d65sm174180795e9.2.2025.10.15.06.43.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 06:43:26 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 15 Oct 2025 16:42:55 +0300
Subject: [PATCH 2/2] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen4x2 PHY
MIME-Version: 1.0
Message-Id: <20251015-phy-qcom-pcie-add-glymur-v1-2-1af8fd14f033@linaro.org>
References: <20251015-phy-qcom-pcie-add-glymur-v1-0-1af8fd14f033@linaro.org>
In-Reply-To: <20251015-phy-qcom-pcie-add-glymur-v1-0-1af8fd14f033@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2674; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=hDyc9oMypUvZah5yy7M2nEL/OkN7nQfGT80oOv3HFeM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo76Tz246TVdgYwl7XyaA1hooKuk1gfiyCLjkrL
 veKksGRQV+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO+k8wAKCRAbX0TJAJUV
 VnE+EACgHF6z44JrMDOGOXuJHtM06s2ipBDBhaxlkkuI4rpJK+VE3FluKrAZOwaVdWOM14W+Iq1
 EYT5fytjGVAXUEG9L9xMkkR0PD3PnG3a3U9uy8vQptZmi21m/MoSbGAtLiL+3/eMu0cCNSOMlbF
 01vp7QwZM2m0C3yg7yO8G5qxfEhPjqtUXjlQ+YLRiaYajeGgdO0GcQ5Qa1s5MWLjDyB85c5fxUI
 37Dg3/cwtRxt2/L7+lxQEAojifm1NttjKoLn/BB6WFU8QYxYrba7xtQQiBBBvXfMeZpzqxAMp8/
 Rb85Bey0dYOIp++cvNI8QUXNQArDk1JJP6JNKMCFWAi02Ck7nNhfE94dDYpnw5vrY6wek916V8z
 5whKi/GEYt5eTfZZ67TF4vinSvmSfhusCOT3FIl+3bmJ2OT89Mlmh4pWa0TMKlncTcHvgRuu0f5
 Gd/Bdg4/yVG+r6H96DHp9o9TrerLPsmhnWMLHveahSU2kl7cyxzlwkByslbinC1E5zfySKjmhI0
 os8RO/xs4WqQDCb8i+j5dJLfcosb2UZP2PtmqPx+qWvnu8a3RY5azi0tiM9hiQSBOtCF1yaF5Am
 BsFBMNpSg/SIa0e/kkFBPmZnkZ6YleiZTOUr/r2opLqzErAvv3XfYO+cwzd+EBFH4F+X6ZCPPY/
 gYayPulvuUgPVuQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_064329_867748_9CE67A22 
X-CRM114-Status: GOOD (  10.65  )
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

Glymur platform has two Gen4 2-lanes controllers, the fourth and
sixth instances. Add support for their PHYs.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 34 ++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 86b1b7e2da86a8675e3e48e90b782afb21cafd77..5b53f03771d8fa54ac146e1832f70fdc69c762ff 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -100,6 +100,12 @@ static const unsigned int pciephy_v7_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V7_PCS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int pciephy_v8_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_START_CTRL]		= QPHY_V8_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V8_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V8_PCS_POWER_DOWN_CONTROL,
+};
+
 static const unsigned int pciephy_v8_50_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= QPHY_V8_50_PCS_START_CONTROL,
 	[QPHY_PCS_STATUS]		= QPHY_V8_50_PCS_STATUS1,
@@ -3363,6 +3369,15 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
 	.ln_shrd	= 0x8000,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v8 = {
+	.serdes		= 0x1000,
+	.pcs		= 0x1400,
+	.tx		= 0x0000,
+	.rx		= 0x0200,
+	.tx2		= 0x0800,
+	.rx2		= 0x0a00,
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
 	.serdes     = 0x8000,
 	.pcs        = 0x9000,
@@ -4441,6 +4456,22 @@ static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v8,
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+
+	.regs			= pciephy_v8_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5192,6 +5223,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_pcie_of_match_table[] = {
 	{
+		.compatible = "qcom,glymur-qmp-gen4x2-pcie-phy",
+		.data = &glymur_qmp_gen4x2_pciephy_cfg,
+	}, {
 		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
 		.data = &glymur_qmp_gen5x4_pciephy_cfg,
 	}, {

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
