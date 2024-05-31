Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08BCCC27C4F
	for <linux-phy@archiver.kernel.org>; Fri, 31 May 2024 16:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztDPLjtTPfaHAiq5mLvJPRgK3twVodMG1gYeOJfZP/c=; b=3ySp4LOmK5TyI4
	TX2pu18Y6ffzi6NUQ3L+e2Vxh1caF1BghVn4g9HBIngtbrugJisSpDsEfzdIEWv6me4VbZk61vzCM
	1i1ba7rcQv+i3xIRMhkicXqSl9UWAPv03tPrXP6uEQlaVbFF6vKBv2AO/pcROYV3WJ27xADwRVS6u
	Ptki49KGyNTtTsgwtII9kIp32MVTPdFuOEo+UwB5T53flSNYGdSPnvYgWqj3jzMuufmnqxrqnxFDV
	mUks6DhFfUYhFoaW3rR+ttn4x7PwxZoEt4eZjM7DHYtnwniotpVQoLEABJuBrT5MNfGHYAd9Zf6Um
	cJRgEllRwonk/1LYvzng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD4mW-0000000Alnt-2Etc;
	Fri, 31 May 2024 16:07:04 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD4mR-0000000AlkS-1GCW
	for linux-phy@lists.infradead.org;
	Fri, 31 May 2024 16:07:00 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-52b80e5688aso2705298e87.0
        for <linux-phy@lists.infradead.org>; Fri, 31 May 2024 09:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717171616; x=1717776416; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G6//FEP7cApjoaJ6/xp+H/xK3TdzcTfbzf8Zzgf+lsQ=;
        b=rJjQ4GPcbK1fgtUqRBxj0hvE8tSErFu/yDxM+6OpibG59+hR8deZw2xdvZzOnRbXZ/
         k8mhEZUNRfdk5ZKGHpIuIZI4AReH9x+tgLtPXluMB1cJaa8QeDdJL2FLOb8gazGi6MTr
         GhZpb8OpveWc0rcRIqgdZxG02NXGx9UBMEzp2iJQ9e7kwzpIbDrsRRnV+DuIjRuI9YSs
         T8uborzAhuNPxM/XbscSAGY+Qzb5HddjXO/uwW8Axu+vL1FzZarmVjrF1sVqBFd4Kw6y
         B6pcdG/FhjSsfsergO2m9GUTirMSXlEH6lSSTEn639u6woJ1DJhXAQarJ5R3O2lazKG2
         sBAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717171616; x=1717776416;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G6//FEP7cApjoaJ6/xp+H/xK3TdzcTfbzf8Zzgf+lsQ=;
        b=gLCZ9vYE/X9MEAiaVZwEZM0sL3um8UyExRmVH6C1kYYP7eXAAnDAwq1Y8/Dgdd3P6f
         u5FnPBFfLqmUJII4LfPZW8YdWOHyGKEypNEvyg/n//rE0UGl3FDP/BFRlGeuvpH++I7V
         lu3DQw94Mmj8ZBaUDHgnXVQdXIXmTO0jnrYyqTwuTWcP8h7WH3UvJnT+vaFQZ3hVQpMH
         oEjABLxUCXYIeYUHZBmyVDcDcCdXkA4FX3/KaNiV4C6YY6J/5J5p6aevcG9cxVjSXP3f
         JeK0t5X7n++xoIdzbXM2ZYRwCiblHBmgxfmGler9E4+SrRykpb2nLyU09osXTfIhuYp5
         wUqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTPjciB8VXRYEdctN+g+t1HvkMuV1OvkhYM1OjaBgM0JJwMz/1uxU4vEgkBYqPbk3OrmSUKgr12DJtrC690lu6e+GKbhO60Y/NeiXBmQ==
X-Gm-Message-State: AOJu0Yz/r5LDeHTdUa5pAxVY6KhQwaD2pOUXK2jLd3HdSxRT9EaJQCKr
	KZuUCvqnWUwNkCEi+T4NUnoGK8Vg051OWMYFhK5Dt8whWfCY0l82Loal0RbX5Ls=
X-Google-Smtp-Source: AGHT+IEHWKpPL+jhfqZavVDoxTOPOV5YFGaBjgLYXJxMXGRrq6wSeFgdwO7LUe8FIhStMBVRPg7hJg==
X-Received: by 2002:a19:7501:0:b0:52a:7d01:84cd with SMTP id 2adb3069b0e04-52b89563555mr2122032e87.30.1717171616398;
        Fri, 31 May 2024 09:06:56 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a67e73fc1b3sm100802566b.74.2024.05.31.09.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 09:06:55 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 31 May 2024 19:06:45 +0300
Subject: [PATCH 2/2] phy: qcom: qmp-pcie: Add X1E80100 Gen4 4-lane mode
 support
MIME-Version: 1.0
Message-Id: <20240531-x1e80100-phy-add-gen4x4-v1-2-5c841dae7850@linaro.org>
References: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
In-Reply-To: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3148; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=JJsL5OqAlyz9O2TqvokIzCODnIdsn9g7a8asMj9Q3QI=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmWfWbZ+v0JzeD+G1ezXOkdmTUgYe7zkYCZUaJp
 AT4TPNHSUGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZln1mwAKCRAbX0TJAJUV
 Vl4JEACZlz6/FX72IPvoBV2KhG9rc7UqNay9v/AWlqtoOrFjkUGKYrtfWDzoLf3V72U2WR4b6Ae
 GgtBzkEufTBZgAzbfmRTCt9E1VT621Pu6y3hn7OMCrntVyvFtKfVETkJjEjx4AJwLIakN/AU4pU
 +JBmRNMQO/+ICih7/FEZFAF0u1rvMSs5ET+DBA6Jt15xr/iUKysZ8iRBNgKoWnKcjP1fyhW8sJG
 1c6DJt5A3h92cxz8nCDaPWX3f1JXlirD7VtvB3YsAo4fJOJQERAi080O5OelHN3sWK85GKQ9CnK
 vSIxq3pzAY8ncjabYrsnUWv+Cci6GNYl0r//kHSX2tMNyAIYoYBrkjxnEF1uyh7SKCfyU9ydEoY
 Ekih3Td7WE1OZjVnQoNXaLSDPTud+530/R1cqUs0DcYfyEDU0G7brmDhlkr9ay3bzRd8eLQp1HT
 u8ozVsQNXsXBJAkNHJXmEanYl0HX7DTn1oddemGnycsRiff/5Bgxowm2G6SX2LqbbJCMpbdibHb
 dZvzTtHB/ng8d3BysFfcyeL+wakfNnt8Zzn7hVd1wJ85A9Uqdv+uot1siNWybEwqMCxgrsyV+xI
 fTjL1qevRegswKsItjvnFuOSb1cEYyvkKrQFIaD+iVnfAivE9OK9iO+vz0HTdQXD8eb1Z9q9WZA
 jKpObCZO6iOhRig==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_090659_413383_990F978C 
X-CRM114-Status: UNSURE (   9.66  )
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

The PCIe 6th instance from X1E80100 can be used in both 4-lane mode or
2-lane mode. Add the configuration and compatible for the 4-lane mode.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 42 ++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 6c796723c8f5..4e0b28da69a7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1028,6 +1028,10 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH6_RATE3, 0x1f),
 };
 
+static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN, 0x1c),
+};
+
 static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_TX_RES_CODE_LANE_OFFSET_TX, 0x1d),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_TX_RES_CODE_LANE_OFFSET_RX, 0x03),
@@ -3342,6 +3346,41 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
 		.ln_shrd		= x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl,
 		.ln_shrd_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl),
 	},
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= sm8550_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
+	.regs			= pciephy_v6_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+	.has_nocsr_reset	= true,
+};
+
+static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
+	.lanes = 4,
+
+	.offsets		= &qmp_pcie_offsets_v6_20,
+
+	.tbls = {
+		.serdes			= x1e80100_qmp_gen4x2_pcie_serdes_tbl,
+		.serdes_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_serdes_tbl),
+		.tx			= x1e80100_qmp_gen4x2_pcie_tx_tbl,
+		.tx_num			= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_tx_tbl),
+		.rx			= x1e80100_qmp_gen4x2_pcie_rx_tbl,
+		.rx_num			= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_rx_tbl),
+		.pcs			= x1e80100_qmp_gen4x2_pcie_pcs_tbl,
+		.pcs_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_pcs_tbl),
+		.pcs_misc		= x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl),
+		.ln_shrd		= x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl,
+		.ln_shrd_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl),
+	},
+
+	.serdes_4ln_tbl		= x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl,
+	.serdes_4ln_num		= ARRAY_SIZE(x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl),
+
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= sm8550_qmp_phy_vreg_l,
@@ -4108,6 +4147,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,x1e80100-qmp-gen4x2-pcie-phy",
 		.data = &x1e80100_qmp_gen4x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,x1e80100-qmp-gen4x4-pcie-phy",
+		.data = &x1e80100_qmp_gen4x4_pciephy_cfg,
 	},
 	{ },
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
