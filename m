Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27CBDC3DA6E
	for <linux-phy@archiver.kernel.org>; Sat, 23 Dec 2023 11:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUNjZTr5wDG5tGIscPKLjMi4XYAEb/zif+OSKbiSUMU=; b=pwc5hgMZasekgT
	qZcAJJFURS3aPRON2wDXf35UdfIOsAwcacVIz41K+35ThM7RKDHJGcPUKTpqyCCgrfCKdhMqHoYtF
	I/DonniaLsljdZSiK8LuQvA4psVEZmxr1gMRqSyxDoshLVnB34T4g0aiHqokKrVjyLkSsXmljmlOl
	gWKfpCtBjQHFX0m7NGCoi2FkXufCLd3N+HpnDsp79ZrTaY6oUBDe7rBu6cGfAx6dGu5ofL9Cf9ASS
	5h7uDUqPPP2UPq6GD/fH/odS+Lju6me8Jzrv3pccdHF6ESYi5nFXBxHF+G2eyBfkZWfSelMBfu8vh
	UNwapuxbOwA3fyqVxLHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rH0bd-007riE-2t;
	Sat, 23 Dec 2023 11:55:49 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rH0bZ-007rgq-1w
	for linux-phy@lists.infradead.org;
	Sat, 23 Dec 2023 11:55:46 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-33687627ad0so2239188f8f.2
        for <linux-phy@lists.infradead.org>; Sat, 23 Dec 2023 03:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703332543; x=1703937343; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xjW+JyAXSaCJAvexLw3wdIiNQdXbZqOYyV5y427gtuA=;
        b=iTsoHTIMNOnOH68eoF+ZrPX0rwie0fAvlDosRDItTXp6HSsQm0t02ZchFcXJEzvvfc
         EzxZi9qeYkG9rL3laIf/TvH1fP8fzoKKsSycq9O/xAXDxXpoXV0dq+Kun7JnG/YHyCzX
         +mDru27ryHeKSi9zget+gvPA1m98XXc0IFpN1erzlm+K+G/A6wggUM6jol7d9boeCK1y
         0Y509tx0dnjpEeN45UJI7YSB0eZOfZ/WHZfopnEnHCTg3p8lQ0csFIn18ehTZJvoSXRx
         wy+LEcDdOriwgwvoPd0kRepORSaw2NF2hIv9Ebvrck0fAXK9rKjhRz67sW7dtbcyMvln
         54jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703332543; x=1703937343;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xjW+JyAXSaCJAvexLw3wdIiNQdXbZqOYyV5y427gtuA=;
        b=a5TrRXm9EkP2Kxc9Et8ixz4OOLnDW9rDwXQ0XVwKyy2mIvSvEzk7zKoH8VF5vgvxmu
         ShYw5oqZF1nKWpxPme7uwhPPBdnGz05pP4/p9JhK+WYz3aBhmOH/krDUEDbFVYOBeTwB
         awvc14U7Kmufi3IKP5ikfN6hbToSde0BaNFjWSQfprE6clLpKM1yOl9J4p4wi+L/1xvL
         4ZZKKwuHtlVa1cHqhUl2AOuhP1GIncrTXFMb4a3bhUpUJKzEhhFqckAdUN+Kde02v1EC
         GyVwsdORABaeLXBA5nsQ8LxjumbokhBAGVcS43aYBwrcN4eCxg1iIEWhKnuA3x8aakN3
         vnsQ==
X-Gm-Message-State: AOJu0Yzo0AHk5yHRd8aoaljDMQhWTfS6vUlREPOQ3qbXCmB2P8csQNoW
	y2nDKJFEC08Ip/fCLkYDdSLQ20bM/tQ8kw==
X-Google-Smtp-Source: AGHT+IFswqcZX+bOO4IyaG5MEP+lhRL5syuRpxs5F9RE5GnUcyxKxHeOJLs01X9nDTMCxpRKVCgzKw==
X-Received: by 2002:adf:ee47:0:b0:336:8690:7488 with SMTP id w7-20020adfee47000000b0033686907488mr1292111wro.107.1703332543445;
        Sat, 23 Dec 2023 03:55:43 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id r10-20020adfce8a000000b00336781490dcsm6351525wrn.69.2023.12.23.03.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Dec 2023 03:55:43 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Sat, 23 Dec 2023 13:55:22 +0200
Subject: [PATCH v2 2/3] phy: qcom: qmp-pcie: Add QMP v6 registers layout
MIME-Version: 1.0
Message-Id: <20231223-x1e80100-phy-pcie-v2-2-223c0556908a@linaro.org>
References: <20231223-x1e80100-phy-pcie-v2-0-223c0556908a@linaro.org>
In-Reply-To: <20231223-x1e80100-phy-pcie-v2-0-223c0556908a@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2434; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=aQTJdCbIPDB/z7LFSFKZkLMGwHpEIeQuU+oxAP8tlJE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlhsq4LM1fJC70vKYIm9i0vEjT4NhgnQDYs6vLr
 REEP8JuS3OJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZYbKuAAKCRAbX0TJAJUV
 Vmx4D/9Mx4NgoddlhLOFINCkZvKJb8WYWsdHlrx/J8FwU9RZX6p1qGJXdz6OFTKqENY+zr5zixN
 LACRcushLS7dlIzUgbCFN7Y+78S2zYkhDZMQU8CTbQm78jPTw8q1ovvOFWP3fKL2vc0sUh+tKcO
 i+PWKK1aeuY30k7h4VH+UbEEI8viSWs0w2anWl5SHRWFmcK6UVk8xcvOx83dwHm1SH6TdfyvoFR
 5O2J1OmAzkK8Tees9HSPGNPs8kucTiwiFoeeyvWPQJSnEttrqLtMVw6OsHbUUEeVRBRlm+OAcvF
 qbTcAaxMoM2KOX8x0AmfirEKyCcNxCuPROZXXIX71PkeX8PJuSC1N7RsfhuE+HTHnesRWmSM1VV
 j+sWhBIgbAVqesDFVb2zDEB/FyI0XC6kmaeGiD9nRLySViRR0qbZTpv0MjrLLJLhP+/W9VN2CeF
 XuoEeiDWa0JuY2JM38yAQwGiR5rX4UuGaKhhGSj3H0mdAxkENER5TTU/xQBgWHuyK0oW4UJW6Ee
 zilLsAyBUQF2Y04qoHtw/pLAUGLZHbfwBPQOgUpNGqF+8s6MxBsMs0bYqr3K/VzUWH4HxfcJjtv
 SjTyVHymAG99fkY5G/d9Bj+jODSPre+qXUGbkfYnWLR7KnvZwaHknwRL/CjZzNGgBeThn9/vbHr
 THDqvxmL2v4sO/A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_035545_637519_76B870A7 
X-CRM114-Status: UNSURE (   9.09  )
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

For consistency, add the QMP v6 registers layout even though
they are the same as v5. Also switch all QMP v6 PHYs to use this
new layout.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 2af7115ef968..03a4898a7e6f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -116,6 +116,13 @@ static const unsigned int pciephy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V5_PCS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int pciephy_v6_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= QPHY_V6_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V6_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V6_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_POWER_DOWN_CONTROL,
+};
+
 static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -2936,7 +2943,7 @@ static const struct qmp_phy_cfg sdx65_qmp_pciephy_cfg = {
 	.num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list              = qmp_phy_vreg_l,
 	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs                   = pciephy_v5_regs_layout,
+	.regs                   = pciephy_v6_regs_layout,
 
 	.pwrdn_ctrl             = SW_PWRDN,
 	.phy_status             = PHYSTATUS_4_20,
@@ -3069,7 +3076,7 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= sm8550_qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
-	.regs			= pciephy_v5_regs_layout,
+	.regs			= pciephy_v6_regs_layout,
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
@@ -3099,7 +3106,7 @@ static const struct qmp_phy_cfg sm8650_qmp_gen4x2_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= sm8550_qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
-	.regs			= pciephy_v5_regs_layout,
+	.regs			= pciephy_v6_regs_layout,
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
