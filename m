Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDC17C43334
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jun 2022 15:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5sYt80Z46ZKMFnHUDEJBip3P7IwxN1IeKiRBZ7gxtV8=; b=4MPgB14uP9BxCc
	Vyj3vo1cYYuSn5KQbMYpbyxBbttv14XJU0a2AROl9aq7lLzIL2XxBWNwJTenLD1fxcfOhg0Ii0UaL
	xiD3TJ6/6rtUVmHYfZDfoUK/lA6pkA51IoU1J8bup+ynSAYDGRjqFK0/F6/GvS3BfGVZWCZdbav1Y
	I3o9j9nyd8y7vEx98YvieL1xIyscxdzayEfdYO+mrGD3st4JCr/bKH6hMIK1rE9B6a3ZqUKejU7se
	5+RBGL7p55Yw1l2Pb4ZygSc6O0iveT8+WQTQnrGhRurl4U8/Bknf3fUDjP13AKXThRsGKCIBsndng
	nuW9VgcsStiBW1IvZw6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3JVX-001Ha9-Bc; Mon, 20 Jun 2022 15:40:07 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3JVU-001HQk-Ff
	for linux-phy@lists.infradead.org; Mon, 20 Jun 2022 15:40:05 +0000
Received: by mail-lf1-x12d.google.com with SMTP id t25so17874174lfg.7
        for <linux-phy@lists.infradead.org>; Mon, 20 Jun 2022 08:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=j8OxkVIDnDND/pv8hLioHXK4chnXUFokYge0wxIqKsg=;
        b=BlxtnFGAOjxdMrbWTGZkSjzaS/Pfez/NUkbmnFQi0GzI/8kqIPgORNxKKkxbmeImrj
         //6+tAbOb7D95UuOuC2x9IqESqPgEHBj5LmO/ANXwhdM/2tDN7qgwU7/1OYp/Aqcy/dR
         EhOehADSOHheFnHmfwf/1c/Zu1aIS0jla98Ab1cOjkLBJich3SVDD8IsBuKwQDhBHmof
         3GfxUXkeVgz97SMl3m3omk1w0okIKQZ5JdMDDXSs195hX5zCYstrsouHP/+4hyKhehi0
         f5yQHPphEo+w0H4C8XrR0ApvWHyrae5IDyiqx65wErFvMj1ZlCTdJ8vNt/4wE883ClCx
         FAlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=j8OxkVIDnDND/pv8hLioHXK4chnXUFokYge0wxIqKsg=;
        b=VRbJzH340W37SOhxS/jrNrhT3LqYmpc0oAk7nUhC3VHp0MOPj+HhdnhpdpZtX/wlDK
         VlIl4B5XoRSCZZ8k0yAWV+FcUWexnzXklwNyi7L6VrKWMiv0Xwrj6Dst8B3f/eHAI3zw
         iRABYoio2J98fk9Pqt+rGV7wH0D/7tGHc8jVnOhy09tqsnxV00kr6EEipqAY99vaf42o
         jCOOvl/0idmOv2YaItHuK/eoRox3CTxKOrNySL7Ff3U+T3yCBH3O2aJd+fwaVNYUyLaS
         warHqMpjcafB7YHwg4Dkv1dtYb3QrAUsDlgDQTps13IbK2NjxZY8gwERDaUM2R7Xsmgc
         X7Hg==
X-Gm-Message-State: AJIora8mTCJAMYdwdWw+ix3zw9FJRE2I+BfCXtgGwi2u5yzQ6nmhZ+VQ
	XVeF0DsIZt7+uskdJ0/f8ESm2w==
X-Google-Smtp-Source: AGRyM1scOf3NP8Q3N3AGDEllJszfo7xRssZ+gnDXjpA+AbzHUXpKb7XPjJ9wXhezMmOlDCGoA5W39Q==
X-Received: by 2002:a05:6512:1292:b0:479:6313:789e with SMTP id u18-20020a056512129200b004796313789emr14547845lfs.538.1655739600633;
        Mon, 20 Jun 2022 08:40:00 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b7-20020a056512070700b0047255d211fasm1801029lfs.297.2022.06.20.08.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 08:39:59 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Stephen Boyd <swboyd@chromium.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Taniya Das <quic_tdas@quicinc.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 2/2] phy: qcom-qmp-ufs: provide symbol clocks
Date: Mon, 20 Jun 2022 18:39:56 +0300
Message-Id: <20220620153956.1723269-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620153956.1723269-1-dmitry.baryshkov@linaro.org>
References: <20220620153956.1723269-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_084004_557957_5E853174 
X-CRM114-Status: GOOD (  12.21  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 55 +++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index a2526068232b..0f31d3255897 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1167,6 +1167,54 @@ static int qcom_qmp_phy_ufs_clk_init(struct device *dev, const struct qmp_phy_cf
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
+	int ret;
+
+	clk_data = devm_kzalloc(qmp->dev, struct_size(clk_data, hws, UFS_SYMBOL_CLOCKS), GFP_KERNEL);
+	clk_data->num = UFS_SYMBOL_CLOCKS;
+
+	hw = devm_clk_hw_register_fixed_rate(qmp->dev, "ufs_rx_symbol_0_clk_src",
+							   NULL, 0, 0);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+
+	clk_data->hws[0] = hw;
+
+	hw = devm_clk_hw_register_fixed_rate(qmp->dev, "ufs_rx_symbol_1_clk_src",
+							   NULL, 0, 0);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+
+	clk_data->hws[1] = hw;
+
+	hw = devm_clk_hw_register_fixed_rate(qmp->dev, "ufs_tx_symbol_0_clk_src",
+							   NULL, 0, 0);
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
@@ -1358,6 +1406,13 @@ static int qcom_qmp_phy_ufs_probe(struct platform_device *pdev)
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
