Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42A06C6FA95
	for <linux-phy@archiver.kernel.org>; Fri, 16 Sep 2022 06:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyvoY+U6iyyWXjSdw2Id2J2DXmI374z038XSqofQTl0=; b=TKTtQcSTXsaCB/
	W32B74GPZYhcCwa9UqXv64rez8kcqlxbcarBi6rGdMrzvm/NACzCbQrWyEEXmp1kfcbfz43NgXzzg
	+vN2TTmuSw46hTj3GrhB0vMQj3zZx+Q7iIrIWF+A6vEBPKibFDKy+LAGyDpZZikiMej3IINCIySQR
	DyizxDmIT+w5wzKJqNGIvKXAk95XgYll+I697ixtY1sBx5yj4Fxy+nhd4cYvZB5rgHgel6UZfiQUD
	O/AxAYalNHiVsEBCqN5hjvNzog6ARutoqKb4jhhUavWw6OS/Yq6pVDWrbIJBx47/5Cai0r79PLT5m
	q1OW+DtwsdW3AIKeLmDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ4fe-0095zh-ND; Fri, 16 Sep 2022 06:17:50 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ4fb-0095lb-1H
	for linux-phy@lists.infradead.org; Fri, 16 Sep 2022 06:17:48 +0000
Received: by mail-lj1-x235.google.com with SMTP id a14so22682138ljj.8
        for <linux-phy@lists.infradead.org>; Thu, 15 Sep 2022 23:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=X090fBwR71n+Uf8mgcr+/g0ucFo6d8AXFrDt6zSz6Ec=;
        b=TXyDE1vIX/pUmargdORd3xFpvmwOh46CsjZ+1nHtoJMk3KdloYSY0X2O4AoRKy0bAL
         njmW4CdQmwFUako/i/5/2+x03bAQkbW/NX8YF7GREWZ+qrAwDtd++Ac6NHcFwM6U/coL
         YFjLs0FakQAOwKwjK3NiCT+dseTzHUzJmSkCZjhxbWvNDRG6BpEL/2TKuS7Z8Osh5ej6
         TtNghr81JT+Um9v8d56nFLgeXIrH0L5iFPJriyMCV89D86TLpr2LJROJN7Wja36tpoGz
         +A4yM0YHiicsuu+nVq/7DvNxmpuQ7EDlK/FldZEbNtl57/potVOFfXVJMakCpwJifLit
         LQjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=X090fBwR71n+Uf8mgcr+/g0ucFo6d8AXFrDt6zSz6Ec=;
        b=18KS3BWLuaSzeAWLpUelL7M3PdEQ+1GE3czC4UnZCmBtE9GCgqLiqP5N0yY8kjqZED
         Fmq02Lcb5igfcGAzhA8pp+hwPgTDNIXNHB9MsB02pHvqvTBXZOBcnfQsgBhtQp8No/Ua
         OjO2w514bEN6yzQ9gk9exaQd21nhQ21dpKTzPZPV8mC8hxxFpdVeBZXrBoLbE0IJChdH
         nIcpe1EV3BJSBtf8IQRsvq+vFkHEC+tnAfNaZ/Rl3eH6rf7AWA2cPXcZUdpf/ROb6Ihx
         BS4pHY6w+CAKrUbbE3ualTmboqH1RYoBGR9k1PnUwgIVy7SXBZzXKORAci6NkF0K5FAp
         5mQQ==
X-Gm-Message-State: ACrzQf14ZnUfgnOEEv03kW4LDvDPllXCnkvYtfhyPq/bMCNq/jc9/WmJ
	8zVv1C6ryavRU3IVejKevYlI4Q==
X-Google-Smtp-Source: AMsMyM7Tt8LC4oE3XmHM67TMsKEHVv7c00y2QbLczgwlX8yhXwUi6EBG90H2zEOh7ijcxoDf4Vk8SQ==
X-Received: by 2002:a2e:8881:0:b0:255:7790:25e6 with SMTP id k1-20020a2e8881000000b00255779025e6mr963720lji.525.1663309064195;
        Thu, 15 Sep 2022 23:17:44 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b15-20020a2eb90f000000b00261eaa819b7sm3529383ljb.30.2022.09.15.23.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 23:17:43 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Taniya Das <quic_tdas@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v4 3/3] phy: qcom-qmp-ufs: provide symbol clocks
Date: Fri, 16 Sep 2022 09:17:40 +0300
Message-Id: <20220916061740.87167-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220916061740.87167-1-dmitry.baryshkov@linaro.org>
References: <20220916061740.87167-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_231747_136098_63D770D9 
X-CRM114-Status: GOOD (  12.32  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 59 +++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 01a99a06fd4f..f6171645642d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1159,6 +1159,58 @@ static int qcom_qmp_phy_ufs_clk_init(struct device *dev, const struct qmp_phy_cf
 	return devm_clk_bulk_get(dev, num, qmp->clks);
 }
 
+static void phy_clk_release_provider(void *res)
+{
+	of_clk_del_provider(res);
+}
+
+#define UFS_SYMBOL_CLOCKS 3
+
+static int phy_symbols_clk_register(struct qcom_qmp *qmp, struct device_node *np)
+{
+	struct clk_hw_onecell_data *clk_data;
+	struct clk_hw *hw;
+	char name[64];
+	int ret;
+
+	clk_data = devm_kzalloc(qmp->dev, struct_size(clk_data, hws, UFS_SYMBOL_CLOCKS), GFP_KERNEL);
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
+        /*
+         * Roll a devm action because the clock provider is the child node, but
+         * the child node is not actually a device.
+         */
+        return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
+}
+
 static const struct phy_ops qcom_qmp_ufs_ops = {
 	.power_on	= qcom_qmp_phy_ufs_enable,
 	.power_off	= qcom_qmp_phy_ufs_disable,
@@ -1350,6 +1402,13 @@ static int qcom_qmp_phy_ufs_probe(struct platform_device *pdev)
 			goto err_node_put;
 		}
 
+		ret = phy_symbols_clk_register(qmp, child);
+		if (ret) {
+			dev_err(dev, "failed to create symbol clocks, %d\n",
+				ret);
+			goto err_node_put;
+		}
+
 		id++;
 	}
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
