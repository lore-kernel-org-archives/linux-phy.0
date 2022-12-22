Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86D91C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odNGYSAgevGThZ6Ruk4fZk3bO0a7ZUfOnvnNksmRhxs=; b=1KI/PTJkDQ88vf
	e+zozF/b6jgSbeEVPwnazrWCX6LmbiBRAUwMSvf49+kr7EIUi/ehh3m5JwagwMWDZcb3Tl3oGvQTx
	+mBcPch46cYW3EOt3c9wDpbmzph0vaJKkr22picb8UkqWOUf03uwPPbNiBOqIxc6/uHMLeGx15T7h
	SJSkaU+dByzIk9utnSN+CYU7RdD4rAgfZn+Y/SEiAgY8LTuzCJMp9P9EhPAgBB5xIDYAu+cphNy1S
	KTLnHTvwVf+PyBQwBqWzP7gJrQOK/lT9GzC6qnaMtU1rtlEpWC4jfAZlPlIm3CIn+71BH3unq2pxt
	rIIkuT2nVN4gBJJ+5b4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MYU-00Cxdi-Tl; Thu, 22 Dec 2022 14:28:19 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MIX-00CoYZ-RE
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:11:52 +0000
Received: by mail-pl1-x630.google.com with SMTP id 17so2175998pll.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:11:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wk23XQcB7rWWaun21vg4rh/lMbr7XJx+tFtAaECKMIs=;
        b=efdVnc4a1fTjXMefZQ8O6qfQSWgPtr0YgTtbWmujBkgiHB/EmiMdEsMRZS6gTqhAbn
         N7ftNrg/LxFeeRdH5+0d9ZKrloHtco0KpHDUWXX1wHuyKTKsiXHOn1jCchyoL0lCkRie
         d+xfCaV4bCpoKPB90ZZ5vewCCOGWXOoI3JRrjpUVRD95+NqIED+ZWrXfm91xmACZb8ul
         wRtXFW2pdiXSY9Y5GqixUUIRmH0tdzxrD0iro0Rp89DuI6PmzQh29tvrCP5mP+ga1tAg
         FMcj5xAxKkTYf0Lp18YBj/cd5P23Rfed3JlW9vS42Ggq4tGzdMO5bLLuK8tnx7uccbPJ
         RgYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wk23XQcB7rWWaun21vg4rh/lMbr7XJx+tFtAaECKMIs=;
        b=gHh0WjLP2BJrgd8N2o/Fxq6LufcCPLSpvFvnrDpdwu8xOCkSndcryb5q9H1o0u6IF2
         tpQ0R/dU7mwYxRbbY5XO4qu0QsqfYBzIoJBlIzrmszXxlyPzaeSdKRQdIH+PrxvXeGrt
         qr1HwZJiQP1qU+WxBxtI8BOFgajCCNZUSNX/OPI8uTAepv4PMy4+TJ1j/emTu1GToMyN
         7A85bqke6K0WBJdPXJXaviRmwbRk+icSed5WXWsPV8gOnwiaYH+tgvOlqLIdczmrZ7TV
         kNeU6DQ3osV6zmWlPxlLy/pcawKMePGhyuDYBuCjVNqceYRLVdyy35aKc5N/M0Mz70Nk
         SOOw==
X-Gm-Message-State: AFqh2kodsh+Iefm+UKPJUdYOUyBpPLoNnW5O2uxhPcTHtXHCi9inG/oh
	Ijzdlea0rgInq3mAMGM3qxFq
X-Google-Smtp-Source: AMrXdXsxkQDnAnFP3IvqHANLji95yNzDSOs5sq+krGPRDyxbB2a4AzNx33D2wlOGSbwix+zTLRSmxg==
X-Received: by 2002:a17:902:7792:b0:189:d0f7:dfbe with SMTP id o18-20020a170902779200b00189d0f7dfbemr22457165pll.30.1671718306431;
        Thu, 22 Dec 2022 06:11:46 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.11.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:11:45 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org
Cc: quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v5 13/23] scsi: ufs: ufs-qcom: Remove un-necessary goto statements
Date: Thu, 22 Dec 2022 19:39:51 +0530
Message-Id: <20221222141001.54849-14-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061150_062864_54DFA59B 
X-CRM114-Status: GOOD (  21.34  )
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

goto in error path is useful if the function needs to do cleanup other
than returning the error code. But in this driver, goto statements are
used for just returning the error code in many places. This really
makes it hard to read the code.

So let's get rid of those goto statements and just return the error code
directly.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Asutosh Das <quic_asutoshd@quicinc.com>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/host/ufs-qcom.c | 100 +++++++++++++++---------------------
 1 file changed, 41 insertions(+), 59 deletions(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 8ad1415e10b6..7cd996ac180b 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -110,7 +110,7 @@ static void ufs_qcom_disable_lane_clks(struct ufs_qcom_host *host)
 
 static int ufs_qcom_enable_lane_clks(struct ufs_qcom_host *host)
 {
-	int err = 0;
+	int err;
 	struct device *dev = host->hba->dev;
 
 	if (host->is_lane_clks_enabled)
@@ -119,7 +119,7 @@ static int ufs_qcom_enable_lane_clks(struct ufs_qcom_host *host)
 	err = ufs_qcom_host_clk_enable(dev, "rx_lane0_sync_clk",
 		host->rx_l0_sync_clk);
 	if (err)
-		goto out;
+		return err;
 
 	err = ufs_qcom_host_clk_enable(dev, "tx_lane0_sync_clk",
 		host->tx_l0_sync_clk);
@@ -137,7 +137,8 @@ static int ufs_qcom_enable_lane_clks(struct ufs_qcom_host *host)
 		goto disable_rx_l1;
 
 	host->is_lane_clks_enabled = true;
-	goto out;
+
+	return 0;
 
 disable_rx_l1:
 	clk_disable_unprepare(host->rx_l1_sync_clk);
@@ -145,7 +146,7 @@ static int ufs_qcom_enable_lane_clks(struct ufs_qcom_host *host)
 	clk_disable_unprepare(host->tx_l0_sync_clk);
 disable_rx_l0:
 	clk_disable_unprepare(host->rx_l0_sync_clk);
-out:
+
 	return err;
 }
 
@@ -160,25 +161,25 @@ static int ufs_qcom_init_lane_clks(struct ufs_qcom_host *host)
 	err = ufs_qcom_host_clk_get(dev, "rx_lane0_sync_clk",
 					&host->rx_l0_sync_clk, false);
 	if (err)
-		goto out;
+		return err;
 
 	err = ufs_qcom_host_clk_get(dev, "tx_lane0_sync_clk",
 					&host->tx_l0_sync_clk, false);
 	if (err)
-		goto out;
+		return err;
 
 	/* In case of single lane per direction, don't read lane1 clocks */
 	if (host->hba->lanes_per_direction > 1) {
 		err = ufs_qcom_host_clk_get(dev, "rx_lane1_sync_clk",
 			&host->rx_l1_sync_clk, false);
 		if (err)
-			goto out;
+			return err;
 
 		err = ufs_qcom_host_clk_get(dev, "tx_lane1_sync_clk",
 			&host->tx_l1_sync_clk, true);
 	}
-out:
-	return err;
+
+	return 0;
 }
 
 static int ufs_qcom_check_hibern8(struct ufs_hba *hba)
@@ -241,7 +242,7 @@ static int ufs_qcom_host_reset(struct ufs_hba *hba)
 
 	if (!host->core_reset) {
 		dev_warn(hba->dev, "%s: reset control not set\n", __func__);
-		goto out;
+		return 0;
 	}
 
 	reenable_intr = hba->is_irq_enabled;
@@ -252,7 +253,7 @@ static int ufs_qcom_host_reset(struct ufs_hba *hba)
 	if (ret) {
 		dev_err(hba->dev, "%s: core_reset assert failed, err = %d\n",
 				 __func__, ret);
-		goto out;
+		return ret;
 	}
 
 	/*
@@ -274,15 +275,14 @@ static int ufs_qcom_host_reset(struct ufs_hba *hba)
 		hba->is_irq_enabled = true;
 	}
 
-out:
-	return ret;
+	return 0;
 }
 
 static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 {
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
 	struct phy *phy = host->generic_phy;
-	int ret = 0;
+	int ret;
 	bool is_rate_B = UFS_QCOM_LIMIT_HS_RATE == PA_HS_MODE_B;
 
 	/* Reset UFS Host Controller and PHY */
@@ -299,7 +299,7 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 	if (ret) {
 		dev_err(hba->dev, "%s: phy init failed, ret = %d\n",
 			__func__, ret);
-		goto out;
+		return ret;
 	}
 
 	/* power on phy - start serdes and phy's power and clocks */
@@ -316,7 +316,7 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 
 out_disable_phy:
 	phy_exit(phy);
-out:
+
 	return ret;
 }
 
@@ -374,7 +374,6 @@ static int ufs_qcom_hce_enable_notify(struct ufs_hba *hba,
 static int ufs_qcom_cfg_timers(struct ufs_hba *hba, u32 gear,
 			       u32 hs, u32 rate, bool update_link_startup_timer)
 {
-	int ret = 0;
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
 	struct ufs_clk_info *clki;
 	u32 core_clk_period_in_ns;
@@ -409,11 +408,11 @@ static int ufs_qcom_cfg_timers(struct ufs_hba *hba, u32 gear,
 	 * Aggregation logic.
 	*/
 	if (ufs_qcom_cap_qunipro(host) && !ufshcd_is_intr_aggr_allowed(hba))
-		goto out;
+		return 0;
 
 	if (gear == 0) {
 		dev_err(hba->dev, "%s: invalid gear = %d\n", __func__, gear);
-		goto out_error;
+		return -EINVAL;
 	}
 
 	list_for_each_entry(clki, &hba->clk_list_head, list) {
@@ -436,7 +435,7 @@ static int ufs_qcom_cfg_timers(struct ufs_hba *hba, u32 gear,
 	}
 
 	if (ufs_qcom_cap_qunipro(host))
-		goto out;
+		return 0;
 
 	core_clk_period_in_ns = NSEC_PER_SEC / core_clk_rate;
 	core_clk_period_in_ns <<= OFFSET_CLK_NS_REG;
@@ -451,7 +450,7 @@ static int ufs_qcom_cfg_timers(struct ufs_hba *hba, u32 gear,
 					"%s: index %d exceeds table size %zu\n",
 					__func__, gear,
 					ARRAY_SIZE(hs_fr_table_rA));
-				goto out_error;
+				return -EINVAL;
 			}
 			tx_clk_cycles_per_us = hs_fr_table_rA[gear-1][1];
 		} else if (rate == PA_HS_MODE_B) {
@@ -460,13 +459,13 @@ static int ufs_qcom_cfg_timers(struct ufs_hba *hba, u32 gear,
 					"%s: index %d exceeds table size %zu\n",
 					__func__, gear,
 					ARRAY_SIZE(hs_fr_table_rB));
-				goto out_error;
+				return -EINVAL;
 			}
 			tx_clk_cycles_per_us = hs_fr_table_rB[gear-1][1];
 		} else {
 			dev_err(hba->dev, "%s: invalid rate = %d\n",
 				__func__, rate);
-			goto out_error;
+			return -EINVAL;
 		}
 		break;
 	case SLOWAUTO_MODE:
@@ -476,14 +475,14 @@ static int ufs_qcom_cfg_timers(struct ufs_hba *hba, u32 gear,
 					"%s: index %d exceeds table size %zu\n",
 					__func__, gear,
 					ARRAY_SIZE(pwm_fr_table));
-			goto out_error;
+			return -EINVAL;
 		}
 		tx_clk_cycles_per_us = pwm_fr_table[gear-1][1];
 		break;
 	case UNCHANGED:
 	default:
 		dev_err(hba->dev, "%s: invalid mode = %d\n", __func__, hs);
-		goto out_error;
+		return -EINVAL;
 	}
 
 	if (ufshcd_readl(hba, REG_UFS_TX_SYMBOL_CLK_NS_US) !=
@@ -507,12 +506,8 @@ static int ufs_qcom_cfg_timers(struct ufs_hba *hba, u32 gear,
 		 */
 		mb();
 	}
-	goto out;
 
-out_error:
-	ret = -EINVAL;
-out:
-	return ret;
+	return 0;
 }
 
 static int ufs_qcom_link_startup_notify(struct ufs_hba *hba,
@@ -527,8 +522,7 @@ static int ufs_qcom_link_startup_notify(struct ufs_hba *hba,
 					0, true)) {
 			dev_err(hba->dev, "%s: ufs_qcom_cfg_timers() failed\n",
 				__func__);
-			err = -EINVAL;
-			goto out;
+			return -EINVAL;
 		}
 
 		if (ufs_qcom_cap_qunipro(host))
@@ -554,7 +548,6 @@ static int ufs_qcom_link_startup_notify(struct ufs_hba *hba,
 		break;
 	}
 
-out:
 	return err;
 }
 
@@ -691,8 +684,7 @@ static int ufs_qcom_pwr_change_notify(struct ufs_hba *hba,
 
 	if (!dev_req_params) {
 		pr_err("%s: incoming dev_req_params is NULL\n", __func__);
-		ret = -EINVAL;
-		goto out;
+		return -EINVAL;
 	}
 
 	switch (status) {
@@ -720,7 +712,7 @@ static int ufs_qcom_pwr_change_notify(struct ufs_hba *hba,
 		if (ret) {
 			pr_err("%s: failed to determine capabilities\n",
 					__func__);
-			goto out;
+			return ret;
 		}
 
 		/* enable the device ref clock before changing to HS mode */
@@ -761,7 +753,7 @@ static int ufs_qcom_pwr_change_notify(struct ufs_hba *hba,
 		ret = -EINVAL;
 		break;
 	}
-out:
+
 	return ret;
 }
 
@@ -773,14 +765,11 @@ static int ufs_qcom_quirk_host_pa_saveconfigtime(struct ufs_hba *hba)
 	err = ufshcd_dme_get(hba, UIC_ARG_MIB(PA_VS_CONFIG_REG1),
 			     &pa_vs_config_reg1);
 	if (err)
-		goto out;
+		return err;
 
 	/* Allow extension of MSB bits of PA_SaveConfigTime attribute */
-	err = ufshcd_dme_set(hba, UIC_ARG_MIB(PA_VS_CONFIG_REG1),
+	return ufshcd_dme_set(hba, UIC_ARG_MIB(PA_VS_CONFIG_REG1),
 			    (pa_vs_config_reg1 | (1 << 12)));
-
-out:
-	return err;
 }
 
 static int ufs_qcom_apply_dev_quirks(struct ufs_hba *hba)
@@ -957,9 +946,8 @@ static int ufs_qcom_init(struct ufs_hba *hba)
 
 	host = devm_kzalloc(dev, sizeof(*host), GFP_KERNEL);
 	if (!host) {
-		err = -ENOMEM;
 		dev_err(dev, "%s: no memory for qcom ufs host\n", __func__);
-		goto out;
+		return -ENOMEM;
 	}
 
 	/* Make a two way bind between the qcom host and the hba */
@@ -980,10 +968,8 @@ static int ufs_qcom_init(struct ufs_hba *hba)
 	host->rcdev.owner = dev->driver->owner;
 	host->rcdev.nr_resets = 1;
 	err = devm_reset_controller_register(dev, &host->rcdev);
-	if (err) {
+	if (err)
 		dev_warn(dev, "Failed to register reset controller\n");
-		err = 0;
-	}
 
 	if (!has_acpi_companion(dev)) {
 		host->generic_phy = devm_phy_get(dev, "ufsphy");
@@ -1049,17 +1035,16 @@ static int ufs_qcom_init(struct ufs_hba *hba)
 	host->dbg_print_en |= UFS_QCOM_DEFAULT_DBG_PRINT_EN;
 	ufs_qcom_get_default_testbus_cfg(host);
 	err = ufs_qcom_testbus_config(host);
-	if (err) {
+	if (err)
+		/* Failure is non-fatal */
 		dev_warn(dev, "%s: failed to configure the testbus %d\n",
 				__func__, err);
-		err = 0;
-	}
 
-	goto out;
+	return 0;
 
 out_variant_clear:
 	ufshcd_set_variant(hba, NULL);
-out:
+
 	return err;
 }
 
@@ -1085,7 +1070,7 @@ static int ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div(struct ufs_hba *hba,
 			    UIC_ARG_MIB(DME_VS_CORE_CLK_CTRL),
 			    &core_clk_ctrl_reg);
 	if (err)
-		goto out;
+		return err;
 
 	core_clk_ctrl_reg &= ~DME_VS_CORE_CLK_CTRL_MAX_CORE_CLK_1US_CYCLES_MASK;
 	core_clk_ctrl_reg |= clk_cycles;
@@ -1093,11 +1078,9 @@ static int ufs_qcom_set_dme_vs_core_clk_ctrl_clear_div(struct ufs_hba *hba,
 	/* Clear CORE_CLK_DIV_EN */
 	core_clk_ctrl_reg &= ~DME_VS_CORE_CLK_CTRL_CORE_CLK_DIV_EN_BIT;
 
-	err = ufshcd_dme_set(hba,
+	return ufshcd_dme_set(hba,
 			    UIC_ARG_MIB(DME_VS_CORE_CLK_CTRL),
 			    core_clk_ctrl_reg);
-out:
-	return err;
 }
 
 static int ufs_qcom_clk_scale_up_pre_change(struct ufs_hba *hba)
@@ -1180,7 +1163,7 @@ static int ufs_qcom_clk_scale_notify(struct ufs_hba *hba,
 
 		if (err || !dev_req_params) {
 			ufshcd_uic_hibern8_exit(hba);
-			goto out;
+			return err;
 		}
 
 		ufs_qcom_cfg_timers(hba,
@@ -1191,8 +1174,7 @@ static int ufs_qcom_clk_scale_notify(struct ufs_hba *hba,
 		ufshcd_uic_hibern8_exit(hba);
 	}
 
-out:
-	return err;
+	return 0;
 }
 
 static void ufs_qcom_print_hw_debug_reg_all(struct ufs_hba *hba,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
