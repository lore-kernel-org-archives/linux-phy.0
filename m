Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97C07C43334
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 22:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUvO3faB6oGVF7d05OKOmi617dWFcLtysdY7jt34ZOU=; b=Cd0/+WYOTz69n/
	nAdf+sP0yHfNS2w7BBdpB2KRYUuJQ4yatzr8kxnoigIPt3p72kda9Xly8EV3wn02qhyVjuBsWrm5P
	gun0FTVPr+Qw7mjUsU9g/2tpKxwUmUUtHma/HmxgdXxSrhIR44sLkG+v+y8WypE/QVaGjQJYYre9Y
	ELkR5+RD5HQOZkuWf0aTVrXv6NWA3IDJ6irkq7hAbOe+lZ0Ou6Hn1JwEGL4iYqxjcniYLV5pJhJgx
	o8/di9LOx24wnEC6VTdDGXdut0CEq3bJrLpWdPj7PpZiT2aMsFEm0dOp0TTtmZmV9KbZHc724QsuZ
	zT74noHrVZFj8IGfSh7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyhwz-009vkI-7P; Tue, 07 Jun 2022 22:45:25 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygoP-009m6O-7I
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 21:32:31 +0000
Received: by mail-lj1-x22d.google.com with SMTP id y29so20655169ljd.7
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 14:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WSf6kg44qXuQj+CQC5HJh1OQY+Tq3sdQOaJl03/HK5Y=;
        b=d0xLtzezIKRtMkug9HBOeGZsfR3hCXjJlMUtmMM4wzXKDA3iueI2R6/5wMsh5lJK3J
         /3hJv3Y4JQk9Qb8L/5CzS7APUm3DPHjB/TnDR7TBXdW7SgIQQh04ue309/DUbGyNDqtY
         0B2hWJEMQKHSeIfVuZuQwTMl2ANXXhoLjlbu7r/X3MuflcaN0ZDCn37NjB6zbv0ljlDz
         Zti2/GnmW07AxXFKGcdGOTf+o3tYB/sgqSHlk/tFJIkJJcVVkGpzcGwZxWp1/kXmuDE8
         6ddWUx93YkS8xEE70s2i0pTQwI3bRkkoQi+YpctQhaQd9j0h2y7TYDdm4oHEphHnO8iC
         VQJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WSf6kg44qXuQj+CQC5HJh1OQY+Tq3sdQOaJl03/HK5Y=;
        b=Z9X+oYKctlGWYQwtIXQATZlHbWs25VVPFfZjOmWzbWWYuMNgqEExBwOrb7xtycq2dk
         B+Xq0AioI4iom00xOs8/9pzewiNGyK+KOrkkgozBWCaxLZHC5cGIZn2y8tJ1oLRm6c3H
         8YgbusyfJCLs40PnnYU9qndjPvsnOWn1z4n7Ja3vx1tu0fHn+0KUUd4nlwsG35sZ8A+M
         sql10+YtdHdc+OgKBu4MZif/9OGU/CAjy7WcI1mkzE84ABOx4xQT7Qr4tNimRck9lGuv
         bSpm9WjlFAQlj05mzwurWGEtneWuQop+dH3bsH9AWvWDG+BQsvWL0j5xDIfu30XSt7hs
         G11w==
X-Gm-Message-State: AOAM5302ek20ZLuWRvVgQ2ylONuylply5aC56DkIn6UVtn7ZF9G/jj+4
	19QL7c2glhqmYIlejIeQEPN2PQ==
X-Google-Smtp-Source: ABdhPJyzi66BjOVWTbdhn2gfL5ntzwDvEG85O7Zt5QhJRZTs2dmznnW8DuObtFTNjY8Uz0xpHon/3w==
X-Received: by 2002:a2e:8715:0:b0:255:a7e5:d50d with SMTP id m21-20020a2e8715000000b00255a7e5d50dmr4094160lji.26.1654637546705;
        Tue, 07 Jun 2022 14:32:26 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g23-20020ac24d97000000b0047255d21153sm3411343lfe.130.2022.06.07.14.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:32:26 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 14/30] phy: qcom-qmp-combo: drop support for PCIe,UFS PHY types
Date: Wed,  8 Jun 2022 00:31:47 +0300
Message-Id: <20220607213203.2819885-15-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
References: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_143229_336613_B69F3010 
X-CRM114-Status: GOOD (  17.27  )
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

Drop remaining support for unused PHY types (PCIe, UFS).

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org> # UFS, PCIe and USB on SC8180X
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 102 +++++++++-------------
 1 file changed, 41 insertions(+), 61 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 006c9eb80a4b..fa9565844d8c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1887,13 +1887,6 @@ static int qcom_qmp_phy_combo_power_on(struct phy *phy)
 		qcom_qmp_phy_combo_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl_sec,
 				       cfg->pcs_misc_tbl_num_sec);
 
-	/*
-	 * Pull out PHY from POWER DOWN state.
-	 * This is active low enable signal to power-down PHY.
-	 */
-	if(cfg->type == PHY_TYPE_PCIE)
-		qphy_setbits(pcs, QPHY_POWER_DOWN_CONTROL, cfg->pwrdn_ctrl);
-
 	if (cfg->has_pwrdn_delay)
 		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
 
@@ -1904,15 +1897,9 @@ static int qcom_qmp_phy_combo_power_on(struct phy *phy)
 		/* start SerDes and Phy-Coding-Sublayer */
 		qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
-		if (cfg->type == PHY_TYPE_UFS) {
-			status = pcs + cfg->regs[QPHY_PCS_READY_STATUS];
-			mask = PCS_READY;
-			ready = PCS_READY;
-		} else {
-			status = pcs + cfg->regs[QPHY_PCS_STATUS];
-			mask = cfg->phy_status;
-			ready = 0;
-		}
+		status = pcs + cfg->regs[QPHY_PCS_STATUS];
+		mask = cfg->phy_status;
+		ready = 0;
 
 		ret = readl_poll_timeout(status, val, (val & mask) == ready, 10,
 					 PHY_INIT_COMPLETE_TIMEOUT);
@@ -2426,7 +2413,7 @@ static int phy_dp_clks_register(struct qcom_qmp *qmp, struct qmp_phy *qphy,
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
-static const struct phy_ops qcom_qmp_phy_combo_gen_ops = {
+static const struct phy_ops qcom_qmp_phy_combo_usb_ops = {
 	.init		= qcom_qmp_phy_combo_enable,
 	.exit		= qcom_qmp_phy_combo_disable,
 	.set_mode	= qcom_qmp_phy_combo_set_mode,
@@ -2444,13 +2431,6 @@ static const struct phy_ops qcom_qmp_phy_combo_dp_ops = {
 	.owner		= THIS_MODULE,
 };
 
-static const struct phy_ops qcom_qmp_pcie_ufs_ops = {
-	.power_on	= qcom_qmp_phy_combo_enable,
-	.power_off	= qcom_qmp_phy_combo_disable,
-	.set_mode	= qcom_qmp_phy_combo_set_mode,
-	.owner		= THIS_MODULE,
-};
-
 static void qcom_qmp_reset_control_put(void *data)
 {
 	reset_control_put(data);
@@ -2530,8 +2510,7 @@ int qcom_qmp_phy_combo_create(struct device *dev, struct device_node *np, int id
 	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
 	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
 	if (IS_ERR(qphy->pipe_clk)) {
-		if (cfg->type == PHY_TYPE_PCIE ||
-		    cfg->type == PHY_TYPE_USB3) {
+		if (cfg->type == PHY_TYPE_USB3) {
 			ret = PTR_ERR(qphy->pipe_clk);
 			if (ret != -EPROBE_DEFER)
 				dev_err(dev,
@@ -2556,12 +2535,10 @@ int qcom_qmp_phy_combo_create(struct device *dev, struct device_node *np, int id
 			return ret;
 	}
 
-	if (cfg->type == PHY_TYPE_UFS || cfg->type == PHY_TYPE_PCIE)
-		ops = &qcom_qmp_pcie_ufs_ops;
-	else if (cfg->type == PHY_TYPE_DP)
+	if (cfg->type == PHY_TYPE_DP)
 		ops = &qcom_qmp_phy_combo_dp_ops;
 	else
-		ops = &qcom_qmp_phy_combo_gen_ops;
+		ops = &qcom_qmp_phy_combo_usb_ops;
 
 	generic_phy = devm_phy_create(dev, np, ops);
 	if (IS_ERR(generic_phy)) {
@@ -2638,23 +2615,19 @@ static int qcom_qmp_phy_combo_probe(struct platform_device *pdev)
 		return PTR_ERR(serdes);
 
 	/* per PHY dp_com; if PHY has dp_com control block */
-	if (combo_cfg || cfg->has_phy_dp_com_ctrl) {
+	if (cfg->has_phy_dp_com_ctrl) {
 		qmp->dp_com = devm_platform_ioremap_resource(pdev, 1);
 		if (IS_ERR(qmp->dp_com))
 			return PTR_ERR(qmp->dp_com);
 	}
 
-	if (combo_cfg) {
-		/* Only two serdes for combo PHY */
-		dp_serdes = devm_platform_ioremap_resource(pdev, 2);
-		if (IS_ERR(dp_serdes))
-			return PTR_ERR(dp_serdes);
+	/* Only two serdes for combo PHY */
+	dp_serdes = devm_platform_ioremap_resource(pdev, 2);
+	if (IS_ERR(dp_serdes))
+		return PTR_ERR(dp_serdes);
 
-		dp_cfg = combo_cfg->dp_cfg;
-		expected_phys = 2;
-	} else {
-		expected_phys = cfg->nlanes;
-	}
+	dp_cfg = combo_cfg->dp_cfg;
+	expected_phys = 2;
 
 	mutex_init(&qmp->phy_mutex);
 
@@ -2696,38 +2669,45 @@ static int qcom_qmp_phy_combo_probe(struct platform_device *pdev)
 		if (of_node_name_eq(child, "dp-phy")) {
 			cfg = dp_cfg;
 			serdes = dp_serdes;
+
+			/* Create per-lane phy */
+			ret = qcom_qmp_phy_combo_create(dev, child, id, serdes, cfg);
+			if (ret) {
+				dev_err(dev, "failed to create lane%d phy, %d\n",
+					id, ret);
+				goto err_node_put;
+			}
+
+			ret = phy_dp_clks_register(qmp, qmp->phys[id], child);
+			if (ret) {
+				dev_err(qmp->dev,
+					"failed to register DP clock source\n");
+				goto err_node_put;
+			}
 		} else if (of_node_name_eq(child, "usb3-phy")) {
 			cfg = usb_cfg;
 			serdes = usb_serdes;
-		}
 
-		/* Create per-lane phy */
-		ret = qcom_qmp_phy_combo_create(dev, child, id, serdes, cfg);
-		if (ret) {
-			dev_err(dev, "failed to create lane%d phy, %d\n",
-				id, ret);
-			goto err_node_put;
-		}
-
-		/*
-		 * Register the pipe clock provided by phy.
-		 * See function description to see details of this pipe clock.
-		 */
-		if (cfg->type == PHY_TYPE_USB3 || cfg->type == PHY_TYPE_PCIE) {
-			ret = phy_pipe_clk_register(qmp, child);
+			/* Create per-lane phy */
+			ret = qcom_qmp_phy_combo_create(dev, child, id, serdes, cfg);
 			if (ret) {
-				dev_err(qmp->dev,
-					"failed to register pipe clock source\n");
+				dev_err(dev, "failed to create lane%d phy, %d\n",
+					id, ret);
 				goto err_node_put;
 			}
-		} else if (cfg->type == PHY_TYPE_DP) {
-			ret = phy_dp_clks_register(qmp, qmp->phys[id], child);
+
+			/*
+			 * Register the pipe clock provided by phy.
+			 * See function description to see details of this pipe clock.
+			 */
+			ret = phy_pipe_clk_register(qmp, child);
 			if (ret) {
 				dev_err(qmp->dev,
-					"failed to register DP clock source\n");
+					"failed to register pipe clock source\n");
 				goto err_node_put;
 			}
 		}
+
 		id++;
 	}
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
