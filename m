Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B245CC25B6B
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 07:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzpUU+eG7vaNje7yMszid7HevUr7fjsHuN95VpsrfKo=; b=nd7gl9GKQSNb7f
	1A+iX8lTEK7g/HVuBWjYeDkB2trwJ3txUfgGQxFVanl3aINUPHwp+vUcF1wNt7HlGUalh7bwpkrCq
	IxH93f2K0WJ+I6ibc3WAPP7SieYAw7r8FKQH1xwqLYSFZb91L8UdKnShKLtXfFGG9wicyvix4SNbk
	4KMCq6a2E3uhEaL/Eu0mRpD2AE/T4xdPso7ah9AUb7k0ZY21nf7QgrlJhSAcoOqnQFcxvmHx47tYa
	cZ9sieaA7YiexgGuW88VSpmTzJtB+uwNmBDBFysnm5ec5OJTkFCZaqpylGPhuayBW9WsRb+EUKUo3
	5gt/Le8pDY+Qkq1WgNxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPY-00BaaU-1Q;
	Wed, 25 Oct 2023 07:34:40 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPV-00BaX9-0N
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 07:34:38 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-507a3b8b113so7984223e87.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Oct 2023 00:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219274; x=1698824074; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5rNOL2ucB9IS0lQHZLbiMkqBp11HjQ48xvh+yKXlN7s=;
        b=FX6zVQVsPeM4JG20pP6ZF1b+q2Q/JSp5HNODMAQxMFBdMUZW3SRvFTCfwe9oCdlgbq
         mf18unQ/ZLF+XmzPVtzN5r8cO3Cv2R+s986K60HK5/sh46rm6xiWob7KXKj3IkRaMaBi
         jrOJRg/gqjZ2n6OwBeHdj+Uyas6dDl0Fz41aHd9vGd7IzpP59rqmSUt4dO78jlCH/g+i
         jysCXpp50iQyDQtmuoIo6d5crRiOhf3qrk6tTsHuOjxKkuZVYDAytBsNfEKyprRYwi2a
         LiN/gL7O4QwewuiO1FqwPX2MOjZmV3w4wHJUyVG02HKYvt7XD/J2BSK6JuHAT9S43gm1
         DRnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219274; x=1698824074;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5rNOL2ucB9IS0lQHZLbiMkqBp11HjQ48xvh+yKXlN7s=;
        b=YqMDR0Ska1x42QAz/HuGq9P7fBpk6o4IeykxQ/c7MGnPcSjC6gUNW9N85J6utt/OkP
         2K0kAgepp3fkTJNaZzx0t/sUM894QmmUh4avA1XguSE+PShU6FBzayqR2nFZR9It5bSj
         x4xxGnJRK+5ThoNhEQad8klaRe/b6nBHMolBDnJlS6HCqcwCqIOfGg5X7O5gzlJESMol
         soZPZ1m70EDq02aN8qZIFCXpDcRXlXZXdR0RVoUC5g7Afj9vNqHm0JyvqP1Q9e5dLI8O
         WSkX4lg+e0+PatvXkuMhJKlSFDnld8GDfNeuocFwT/TV6KfyScLTJygytUKHaYXR9IHo
         Xx4w==
X-Gm-Message-State: AOJu0YxPyqq7EZXU5sgjSE5FD8z+e7h+ClRh6vnyuesWsvyeJYwKqA9K
	g4Ev4CeZp3oxpOKBa5CSIIg8lA==
X-Google-Smtp-Source: AGHT+IE3PHVGQaASOXYYJITFAFiBQqeHX9F08+SQYc6GXKCIaJOFZ0DcpWdgcTBde+DML+AZPjQiFA==
X-Received: by 2002:a19:e01b:0:b0:504:c83e:322b with SMTP id x27-20020a19e01b000000b00504c83e322bmr10249394lfg.38.1698219274694;
        Wed, 25 Oct 2023 00:34:34 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y7-20020a5d4ac7000000b0032dde679398sm11431392wrs.8.2023.10.25.00.34.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:34:34 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:34:27 +0200
Subject: [PATCH 5/7] phy: qcom: qmp-ufs: add QMP UFS PHY tables for SM8650
MIME-Version: 1.0
Message-Id: <20231025-topic-sm8650-upstream-phy-v1-5-6137101520c4@linaro.org>
References: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=7034;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=QFYf1x/lxIv5aXYWa5Er6If25Zp3kDF9k+9svJJWXZE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUD1NeVMp4HcgjifiKzTOrabO8/FNtfDcXBXZcP
 PmmbZNmJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFAwAKCRB33NvayMhJ0RFfD/
 9HXOgBQ+x3qeaZUUIuh4oqCJx/EMWDaBQqDOQGqLFJTrCelpIjkCcDM4nsdF7DorHjKIVBE8HBqP3E
 48/84Mlg9Sk4gmj7+ygq/HRQ/UBVEHf/DYzyOHHpq3WoBqkt0k9Ztb9STzVlm4iF1z+zEzUpaHQotj
 KZyHYEh+MPKJD1fe2HEhH3jA2gMmyNRWmIKQTVdOo/U6082yWU3Sfl6NMyQpi2ZfbNdcg0pMCRObcZ
 0GliJz/PdN2J+2JXhuLzVxD9uA1A3JYW1i/g6o7hunewa/+gMoGBzLroV5m9BZVSkiP3SaqTvG/Of6
 GNmtr0aeyQbLeLNQqbIvMsxwqjVH590FRT3t0SCdM+uaGyDI84sNxqGKz/DMQ+pbhFrLj4ALRYUPcq
 sG+s1gQgYvH/R1xIRpN775WJzIGIVA4CH4671SibnD+YFIbl9egcvHCIpuP4KBvRHWuj2D796v0/Fg
 tWu68o6pM4ya375k1cKsmjDg4VoGIzhdz/GmGTUKYdxIcrTEXdQFKdV2qF/y7neElaI3p7+O9Lml38
 mVqUw7vubQGOTTiIbWIBBwMN7CXBLH2l7PBJ09QTsQcdnlSAj6xGtKqkRR9KPA3DY5SJzdR1+Wf/Q5
 PQMHxu4Iqt4gEcLM6Rc1dohUkCHy0EFcGMcLk8dCsR1sQDXQQPu5XEgxMWgw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_003437_157060_D41BA2A6 
X-CRM114-Status: GOOD (  10.83  )
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

Add QMP UFS PHY support for the SM8650 platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |  1 +
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |  7 ++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 86 ++++++++++++++++++++++
 3 files changed, 94 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
index c23d5e41e25b..fe6c450f6123 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
@@ -12,6 +12,7 @@
 #define QPHY_V6_PCS_UFS_SW_RESET			0x008
 #define QPHY_V6_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB	0x00c
 #define QPHY_V6_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB	0x010
+#define QPHY_V6_PCS_UFS_PCS_CTRL1			0x020
 #define QPHY_V6_PCS_UFS_PLL_CNTL			0x02c
 #define QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL		0x030
 #define QPHY_V6_PCS_UFS_TX_SMALL_AMP_DRV_LVL		0x038
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
index 15bcb4ba9139..ae220fd04d10 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
@@ -10,10 +10,17 @@
 #define QSERDES_UFS_V6_TX_RES_CODE_LANE_RX			0x2c
 #define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX		0x30
 #define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_RX		0x34
+#define QSERDES_UFS_V6_TX_LANE_MODE_1				0x7c
 
 #define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE2		0x08
 #define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE4		0x10
+#define QSERDES_UFS_V6_RX_UCDR_SO_SATURATION			0x28
+#define QSERDES_UFS_V6_RX_UCDR_PI_CTRL1				0x58
+#define QSERDES_UFS_V6_RX_RX_TERM_BW_CTRL0			0xc4
+#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2			0xd4
+#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4			0xdc
 #define QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL			0x178
+#define QSERDES_UFS_V6_RX_INTERFACE_MODE			0x1e0
 #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0			0x208
 #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1			0x20c
 #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3			0x214
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 514fa14df634..5f79d188b435 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -803,6 +803,67 @@ static const struct qmp_phy_init_tbl sm8550_ufsphy_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
 };
 
+static const struct qmp_phy_init_tbl sm8650_ufsphy_serdes[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xd9),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x44),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_INITVAL2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x4c),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x07),
+};
+
+static const struct qmp_phy_init_tbl sm8650_ufsphy_tx[] = {
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_LANE_MODE_1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
+};
+
+static const struct qmp_phy_init_tbl sm8650_ufsphy_rx[] = {
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B6, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B3, 0x9e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B6, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B3, 0x9e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B4, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B5, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B8, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B3, 0xb9),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B6, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_SO_SATURATION, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_PI_CTRL1, 0x94),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_RX_TERM_BW_CTRL0, 0xfa),
+};
+
+static const struct qmp_phy_init_tbl sm8650_ufsphy_pcs[] = {
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PCS_CTRL1, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x33),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x69),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
+};
+
 struct qmp_ufs_offsets {
 	u16 serdes;
 	u16 pcs;
@@ -1303,6 +1364,28 @@ static const struct qmp_phy_cfg sm8550_ufsphy_cfg = {
 	.regs			= ufsphy_v6_regs_layout,
 };
 
+static const struct qmp_phy_cfg sm8650_ufsphy_cfg = {
+	.lanes			= 2,
+
+	.offsets		= &qmp_ufs_offsets_v6,
+
+	.tbls = {
+		.serdes		= sm8650_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8650_ufsphy_serdes),
+		.tx		= sm8650_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(sm8650_ufsphy_tx),
+		.rx		= sm8650_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(sm8650_ufsphy_rx),
+		.pcs		= sm8650_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8650_ufsphy_pcs),
+	},
+	.clk_list		= sdm845_ufs_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= ufsphy_v6_regs_layout,
+};
+
 static void qmp_ufs_configure_lane(void __iomem *base,
 					const struct qmp_phy_init_tbl tbl[],
 					int num,
@@ -1826,6 +1909,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8550-qmp-ufs-phy",
 		.data = &sm8550_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm8650-qmp-ufs-phy",
+		.data = &sm8650_ufsphy_cfg,
 	},
 	{ },
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
