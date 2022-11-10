Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8F83C43219
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 15:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nO/ACTAdupGvmGuUMSYH21ey8ukV2ZPsd8hTq0AQbEA=; b=Uyru1Xi5boJttP
	DREfVyzNr/tq4Cy/LNNmiYHf3kFOB7tHyMasCmUijFZGMUd3EpdAe5M/pbyE+H8F9nUasM12EdH4g
	3pTsE4ymxsIc7lHrpm3r44CYSZOINvdXSeqxWffzSeC/xUiehSlomSZPuZK3gsF+sGoolq0Noda4N
	9MhaCyKwAu7lwwI639bvbqqrMoXnEh3I0HhHqeEEAU/d3jiFFluzs9x/+0UYXQbP6pbUPbpvqifj3
	9lnBDT0a2o8PjEVTOIK8kFkULi9OjmLEvdoRQHeGGdJYlVMSbaA3vdWBkm9uMoVFN+AI8AcF8p5oW
	a5wZT1rqRBIhXLNhhIsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9JV-006gHK-5F; Thu, 10 Nov 2022 15:17:57 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9JQ-006gDO-3N
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 15:17:55 +0000
Received: by mail-lf1-x12f.google.com with SMTP id j4so3944887lfk.0
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 07:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y93JMbDS7TCZqUPnYPX61/7g1utQYXApLn3dq22TrxU=;
        b=wRWhes+i45FVWkaP2RbQOZfAtoSXGa+d4hSoAgTqHq++rLCP4AleTXnOs9rzRTcSEg
         9KTxfcVofTUJRlw4o9izwZlC43VmLxhzwz5J5PNPmk2lOwB54rsS5tF4N5D4mVBeCvwy
         muZlRGR/h9XRq+I8mysPxP0yufdne+8WePMhHUsNSUcMJwqy/WOyPimQB9xafZRc01A+
         r8gVRtifBPhbVGEvFFd6KZuxgbQRZzFciRwAyBWAz6zmwQzboXljkKTXS6ouLUNztdzk
         axbFUuuyuIjkvfYyBszJ6dI7zB4gSZ7NE6yJQSCc9z95ztuB7rZ2X5BGIfeIosSUNs5Z
         zqIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y93JMbDS7TCZqUPnYPX61/7g1utQYXApLn3dq22TrxU=;
        b=QSLdL2wNQYfMJKW0nNa0xBR/aO4rkm0NTzlErNut1/rJGBoaI/sJu35Owpo6aNVhnt
         68TbBMQZezbzWDv2e8c/9nEe+yXsXzjXFQDcAu81Kmc+3c5q3BuH1O1CstGNeG0GK4FC
         fZ9hyIYaqeNRhm5ebOh4YcRJWs/49ytkUsjpJ10QzH6vhgiJujnd+o2hZyVgcofGg5BV
         ualIQoMC+xXwSxNeCJYbPosXSNIfPGWFDp6AifAjZ6vMJ5xOXPTUQUVNgXFhuWHiBd+Y
         ucRlXzYswWtYehh/g0wQqDj/XpbjqUsPRxqtkNOYsJfUprAEFBrbp0opKbGLkQnhi5zS
         UOZg==
X-Gm-Message-State: ACrzQf3klPDh8DJfOiGT6EM/mLogyfG7UZ5BorvTEN6SAfupEoxOiFNr
	CpexHHiXHd6+1x/usVsTeJpt4w==
X-Google-Smtp-Source: AMsMyM51NCYdPzeJ0DVLsUbB7vzCw6INOY5T/UVzT15xYcYCb+lXPZgmdsCXgopNWuX/aWQ6uOQShw==
X-Received: by 2002:a05:6512:4021:b0:4a2:4f21:5070 with SMTP id br33-20020a056512402100b004a24f215070mr1651074lfb.270.1668093470375;
        Thu, 10 Nov 2022 07:17:50 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p22-20020a2eb7d6000000b002774e7267a7sm2719591ljo.25.2022.11.10.07.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 07:17:50 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v7 2/4] phy: qcom-qmp-ufs: provide symbol clocks
Date: Thu, 10 Nov 2022 18:17:46 +0300
Message-Id: <20221110151748.795767-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
References: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_071752_156849_19F1727C 
X-CRM114-Status: GOOD (  12.34  )
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

Register three UFS symbol clocks (ufs_rx_symbol_0_clk_src,
ufs_rx_symbol_1_clk_src ufs_tx_symbol_0_clk_src). Register OF clock
provider to let other devices link these clocks through the DT.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 64 +++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 189103d1bd18..78d7daf34667 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1023,6 +1023,66 @@ static int qmp_ufs_clk_init(struct qmp_ufs *qmp)
 	return devm_clk_bulk_get(dev, num, qmp->clks);
 }
 
+static void phy_clk_release_provider(void *res)
+{
+	of_clk_del_provider(res);
+}
+
+#define UFS_SYMBOL_CLOCKS 3
+
+static int phy_symbols_clk_register(struct qmp_ufs *qmp, struct device_node *np)
+{
+	struct clk_hw_onecell_data *clk_data;
+	struct clk_hw *hw;
+	char name[64];
+	int ret;
+
+	clk_data = devm_kzalloc(qmp->dev,
+				struct_size(clk_data, hws, UFS_SYMBOL_CLOCKS),
+				GFP_KERNEL);
+	if (!clk_data)
+		return -ENOMEM;
+
+	clk_data->num = UFS_SYMBOL_CLOCKS;
+
+	snprintf(name, sizeof(name), "%s::rx_symbol_0", dev_name(qmp->dev));
+	hw = devm_clk_hw_register_fixed_rate(qmp->dev, name, NULL, 0, 0);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+
+	clk_data->hws[0] = hw;
+
+	snprintf(name, sizeof(name), "%s::rx_symbol_1", dev_name(qmp->dev));
+	hw = devm_clk_hw_register_fixed_rate(qmp->dev, name, NULL, 0, 0);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+
+	clk_data->hws[1] = hw;
+
+	snprintf(name, sizeof(name), "%s::tx_symbol_0", dev_name(qmp->dev));
+	hw = devm_clk_hw_register_fixed_rate(qmp->dev, name, NULL, 0, 0);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+
+	clk_data->hws[2] = hw;
+
+	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
+	if (ret)
+		return ret;
+
+	/*
+	 * Roll a devm action because the clock provider is the child node, but
+	 * the child node is not actually a device.
+	 */
+	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
+}
+
+static const struct phy_ops qcom_qmp_ufs_ops = {
+	.power_on	= qmp_ufs_enable,
+	.power_off	= qmp_ufs_disable,
+	.owner		= THIS_MODULE,
+};
+
 static int qmp_ufs_parse_dt_legacy(struct qmp_ufs *qmp, struct device_node *np)
 {
 	struct platform_device *pdev = to_platform_device(qmp->dev);
@@ -1135,6 +1195,10 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	ret = phy_symbols_clk_register(qmp, np);
+	if (ret)
+		goto err_node_put;
+
 	qmp->phy = devm_phy_create(dev, np, &qcom_qmp_ufs_phy_ops);
 	if (IS_ERR(qmp->phy)) {
 		ret = PTR_ERR(qmp->phy);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
