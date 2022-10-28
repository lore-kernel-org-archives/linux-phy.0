Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BE01ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 12:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NP+jc0REgYnq8ClzzqEEFglMi6pdaClvD6Lusg3zx6s=; b=MQZ10bPDNljDu3
	OOjAyNCNQDelPLCUElQO0UFs5KRuaMoxTf3LP/TS37KxDgKU1O5bGkaiNHtJqAV59e6iTTJtQoNPq
	5iL3czv9o0Qw0Axjo/RZHW/mWi5sdH82ivzueOh6hgjzvLp4t8UqrG9wXBhsC+sdcEVJiLiLv9VeB
	hgDZtFu5IGWdyZfWMrMr4g+qhzHCyE/ygP3qZeTp+Pj1c0ulBbeCji9ROo+fJEArRN/PjHopGeCFA
	zh8106zsaPy4Uxry27q/kfeufz3gT36DhLbTVGE7DXHwXbs63+q99ui7FmvDRTQm10mnm9X1N4D7a
	A+MJlf+A7sY8FOrzAOMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOq4-00HA3L-NV; Fri, 28 Oct 2022 12:51:56 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOq2-00HA0b-Cx
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 12:51:55 +0000
Received: by mail-lj1-x22a.google.com with SMTP id k19so7885846lji.2
        for <linux-phy@lists.infradead.org>; Fri, 28 Oct 2022 05:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N4yejd7hCm6L/7UQWt47bF5s1fSbQQBMnEMAqr/wOfs=;
        b=OznOGXfk1a62Xd45KumTdn+feJCAZijj701z6+MajfB8IukYN+GNtnR98UUUuozVlP
         nW5cnwHSp9rGiWgKsat3ccYe7Npx9oi5PP6c1FkZFLbUv0PJaNaagkzkqgyYugffBimm
         ejWakYk9DuxZZeikEpODkGrA4Fyi9NOGeVrPVy6MgxrmklIqoQ4EwD7v4AU0ODkJZjNm
         f04Y8pK0+SFv1Ivzw7RmIFSMjliH2eRI9ipoft/7u7yCCxDV2lhmgNgpXdEKerMfXDgu
         RSlMPGPoUMVmMWK2X/ZOPRW32wd4UV2y4szqmrvn3Qhma0WJddBxphxFnfkshW1IBsYs
         VNbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N4yejd7hCm6L/7UQWt47bF5s1fSbQQBMnEMAqr/wOfs=;
        b=FlTxbZnuOvfz2RG/xkcrGQpsY7ynQPw8X9j/wAFzCCYBLuzSdj0Hx2yLwpfCDeANET
         r5ywHHGZclfUPtzTqUbNHMOgrR59vYVuhR9gvxDA4S/Gzgtb+ieCrrhdqevtOrLleLcR
         b4xoLo/YNEZfZAdUINBTIPk/AtoIRowWlr/Tz+LltzcKEwFRQTWOIvjqUrZcohBaixju
         qDyiXfvVgUU7gtxzWGMKpI2+nHlVDHxwqZ1DgfEcOkrgJ5vWS3wx/R3LYcMcSU1PrC4B
         YeXDFDvPo5ZEtP8cA94Kj9in4U9Y+Qlqr8QWdFHaAj8NG6n1sk9U7Un4ns6l2Sat6Q2C
         Ankw==
X-Gm-Message-State: ACrzQf0ppOc1HHp4CHHeQXQYkHWllfC00+0qxqkYCMuay9BKrkiiYNl9
	ZKN0g3HH5Xgqwnk+jHrfzsBJOd2r1l+Izg==
X-Google-Smtp-Source: AMsMyM6YXVudMOaD8SRSJQokXs8uViHdoE0R/wMtloNxDoyO4a54kqymSsAydCIB00jeAmNunUWwnA==
X-Received: by 2002:a2e:509:0:b0:277:44d:569c with SMTP id 9-20020a2e0509000000b00277044d569cmr12674648ljf.88.1666961510008;
        Fri, 28 Oct 2022 05:51:50 -0700 (PDT)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z15-20020a056512370f00b004a45ed1ae21sm552569lfr.224.2022.10.28.05.51.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 05:51:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v5] phy: qcom-qmp-ufs: provide symbol clocks
Date: Fri, 28 Oct 2022 15:51:48 +0300
Message-Id: <20221028125148.264833-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_055154_491046_C177A4BD 
X-CRM114-Status: GOOD (  11.91  )
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

Changes since v4:
- Rebased, dropping merged clk patches
- Fix whitespace errors
- Add linebreaks to fit into 100 chars limit

---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 61 +++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index e28c45ab74ea..f60e29c68c26 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1067,6 +1067,60 @@ static int qmp_ufs_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
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
 static const struct phy_ops qcom_qmp_ufs_ops = {
 	.power_on	= qmp_ufs_enable,
 	.power_off	= qmp_ufs_disable,
@@ -1232,6 +1286,13 @@ static int qmp_ufs_probe(struct platform_device *pdev)
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
