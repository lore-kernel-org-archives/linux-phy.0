Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47EBACCA481
	for <linux-phy@archiver.kernel.org>; Fri,  8 Jul 2022 13:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2IqRZlotsQJf++qU8osu+vS5FW6zW4qhxJaFvUwooE=; b=FexhbkuvmElx6Y
	jmKjnGVqqK+QdVCwyBaQSJbLujQl5vgoHobdl+T2JjYe4hN8Wuje8D6bMXnEj/skhlO6/57Z91mZL
	MiWyMA+VQXNXIb/Xg5FjrqKpFZXum2WNTERNAR18i+kKTedrM9zJTe9431dOuvxBpjB//aWpbEljj
	nUlMxnJ7SllTrHQtJqcFKcqpXHsrKHuP0pFLUb11bIIiLI5stSi2sNaW/vNnmil7Q1Gvm7fcVz4XA
	6x+5DVsB0Cu5+nOr3rNeRaXdtsUnq0x2d71EwOnfxiGVoESceshMQOqHwsOIZ2qwvZD6QGwfmvvnF
	yiAy49cQ1L8kzf6A7egQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9oRf-0040qI-LS; Fri, 08 Jul 2022 13:54:59 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9oRc-0040my-DS
	for linux-phy@lists.infradead.org; Fri, 08 Jul 2022 13:54:57 +0000
Received: by mail-lf1-x135.google.com with SMTP id t19so35847203lfl.5
        for <linux-phy@lists.infradead.org>; Fri, 08 Jul 2022 06:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3F2kWbK89xXlF4GcpyJZ3T9LLi937X/DX8TG7c54mes=;
        b=YfhPmY1lxpfF3umqnpJhY5W/QvXwHHvo6+1tNvJN8m5obPzTPNmim4Ht/FVBHiwM+U
         X59wV7NXk1oq6jeBxerK+LiLIzXK4pKVehrIsPpiFp+vNtrSTYFUplgnR7Hu932Ake2Z
         vp/pxnKW7VUoupsZVPRCZDgo0om90eew6P8kB4JQFogUh8ohvj0DptZM+BC2btE2/8He
         8KMpTARypcWDymOZ2MtBF+tc1TpsyEocHb+BMShL1eDVHGw04rHKcj3sq4J9x6517ocX
         BDqvwSr9av+RipifIBuKxSXU9d3B0RhZ5f5bxmU2LhyElpsySaO7B6Kn9DBwdxvrKMRq
         r9+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3F2kWbK89xXlF4GcpyJZ3T9LLi937X/DX8TG7c54mes=;
        b=MXwyTleBf6Kan93e+MC1Gpf6DjauzVre4+e9BGQHTDrpXXbsZJYKivWqI+uZCPnoE0
         ZhWSaCuDUuCMU0IaIWQ225o04LMQLTn1DADFG2iXQPuzuLOysbmy2XQg8h9WI7cxiUbm
         oQpYLlkfjKw0mQzhXO98GFhSAOx14pUFx9lOa90URyZdfOXJ33f4IfpktUAyn97kIi7u
         7ZCw6cQCU95EkKGEoJN0K9wsvZrnNuwhhMC83NVUe+mkzcrwSuRJ73Aaq0yQbHqW+auP
         de9KsMNEncenl4Dd5jFDQBS1+l+ujfwBm4DCHnt6eV3mDj6LncuYhq81GnPNtCG319lA
         hrQQ==
X-Gm-Message-State: AJIora/5MWyoseGzT5DH3eOGIL+bCwxTmgnme8H3LSAvmw4szYDKbvhH
	FlLF8xgDM69GllEYSjuHs7fdjA==
X-Google-Smtp-Source: AGRyM1to0Q2VwX89QXXfoCAlbGDQZbPwbzrhHmX9Yjh4fb6sP+/QxuL/KswcYmJN1ub9aKqNi+cksg==
X-Received: by 2002:a05:6512:220c:b0:483:d9ad:b56c with SMTP id h12-20020a056512220c00b00483d9adb56cmr2542708lfu.150.1657288494842;
        Fri, 08 Jul 2022 06:54:54 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y9-20020ac24e69000000b0047f647414efsm7428352lfs.190.2022.07.08.06.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 06:54:54 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Taniya Das <quic_tdas@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v3 3/3] phy: qcom-qmp-ufs: provide symbol clocks
Date: Fri,  8 Jul 2022 16:54:50 +0300
Message-Id: <20220708135450.2845810-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220708135450.2845810-1-dmitry.baryshkov@linaro.org>
References: <20220708135450.2845810-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_065456_477134_B3245268 
X-CRM114-Status: GOOD (  12.93  )
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
index a2526068232b..e0a952591eb0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1167,6 +1167,58 @@ static int qcom_qmp_phy_ufs_clk_init(struct device *dev, const struct qmp_phy_cf
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
@@ -1358,6 +1410,13 @@ static int qcom_qmp_phy_ufs_probe(struct platform_device *pdev)
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
