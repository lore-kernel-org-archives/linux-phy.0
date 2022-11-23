Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 670D5C43219
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 10:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWQaDvuRfJOIHaQ6039VAGSzpTC8j/48PKhnTMgXwlM=; b=wKuaZQ1ZSSY+qb
	8ZeOCZGCAFg918++RDIbUXNI7/vXdWo3kCP5QqWkab6RuQxUWoWMLk6wOeEpWWUBhv2qrVcbTS/0z
	/quxrD0y2zzFfEXVk6gDqO+jfFBDmK0OTnFgIvBZZbXZJO0oglcmfxUkln8T6YL4SL6uCsMQLKL/X
	OlbwtDhfJJDFhRXtbqA+ROrr8rIU2vuTCbsPubiVgqmE36PjsICTJlyZNXG6Jwm9WUnOI9j3xu0yW
	vTKQBL+XZB0T7uaci1a5u2CF29n20ZMOSFW1KTxGwv/cSOQcNWNp7/0F+eFcbwMhgs/lI2simqoC2
	STpUMH91AMpXeRcTZ3TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxnFK-00GQZ0-QE; Wed, 23 Nov 2022 10:44:50 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxnFH-00GQXi-Nu
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 10:44:49 +0000
Received: by mail-lj1-x234.google.com with SMTP id z24so20930171ljn.4
        for <linux-phy@lists.infradead.org>; Wed, 23 Nov 2022 02:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hasDy1+t/B8Y/xArguog4wPmJmnVb9H5spMq9+2JDcg=;
        b=FD+6cjsM0AH2+2CDIxDnDJN4K8NqaRyiqqcM/QhJzUsxY5ItxzaThxQ5aaMxBEF20c
         LHAc5z1zBDjMTrBZCwKkjJxE341z4lVPte3ze5HMQETw+lZefvPWohfFpZlcxy4zB+Jb
         ynCs0BYVZZEKVT9NJ9Az9UibYeg/pQe5xq6nj2r4ExwQeFCbj1SY/bttqOwt4wBu9h1s
         I3VDMt9AfATc5/y7exOFBbzRtFvCM3zmh5kiC3rp6CzmEs6Wukoc0+/w3Kj6VlOjXBJa
         CFKTy+/VaAyhgdtXmXfGU0OJabrkRfxe8kEuSxUy1r119KIH+xyc1A9+qW3jtzzewR6X
         nvkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hasDy1+t/B8Y/xArguog4wPmJmnVb9H5spMq9+2JDcg=;
        b=oonlCIa3lleqxXdzDB/zTjq1weLGeIc1XCBWiK52owBgTipnktAulsSlRFOb/oTsTH
         p+FHhixT2gSxn8X1DxdCAWXwfQlNtvZMAgfrYCLp3DC2L+UPtexcuwaZ4kMWjpmmeHwj
         OmtU9z8RyEaYN4P3AVxrHK9auNpHSYDOjrCHgJwZfAGEXva2TcGYUQzn9sBxN/NTiRtr
         gB1TYaJgJIHND7GA8pW+vpOx3TbJl+pGeKvxKeLnOCEzpBQuuOEe71RjkL9Z/xe89YZe
         Ebu8FPC664lJCifk1AkjtJan1gHHWs11GEJdIG1+O3DKz/cMSAR9uhOZu+aGDIEghhUz
         AwKA==
X-Gm-Message-State: ANoB5pkICon983Epm09RLFBkQrTvywI3RbSJ6YKFv60i7Gyggby4wDV1
	KrnT1AJVJMAQb0tSP9Wx54gQ5Q==
X-Google-Smtp-Source: AA0mqf5scskv1XCelKbs7W3K6Z/9+gBIeesXfpBhpCcFHbuhgiPG+poOqIjARIJoBZTQeGFnnRF/iA==
X-Received: by 2002:a2e:9998:0:b0:279:7405:85d5 with SMTP id w24-20020a2e9998000000b00279740585d5mr1703820lji.31.1669200286436;
        Wed, 23 Nov 2022 02:44:46 -0800 (PST)
Received: from eriador.lumag.spb.ru (dzpbg0ftyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:5f12::1])
        by smtp.gmail.com with ESMTPSA id be34-20020a056512252200b0049e9122bd1bsm2869082lfb.164.2022.11.23.02.44.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 02:44:45 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Johan Hovold <johan@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v9 2/4] phy: qcom-qmp-ufs: provide symbol clocks
Date: Wed, 23 Nov 2022 12:44:41 +0200
Message-Id: <20221123104443.3415267-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
References: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_024447_813322_AF024C5F 
X-CRM114-Status: GOOD (  10.67  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 57 +++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 189103d1bd18..ce50eabccb9d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1023,6 +1023,59 @@ static int qmp_ufs_clk_init(struct qmp_ufs *qmp)
 	return devm_clk_bulk_get(dev, num, qmp->clks);
 }
 
+static void qmp_ufs_clk_release_provider(void *res)
+{
+	of_clk_del_provider(res);
+}
+
+#define UFS_SYMBOL_CLOCKS 3
+
+static int qmp_ufs_register_clocks(struct qmp_ufs *qmp, struct device_node *np)
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
+	 * Roll a devm action because the clock provider can be a child node.
+	 */
+	return devm_add_action_or_reset(qmp->dev, qmp_ufs_clk_release_provider, np);
+}
+
 static int qmp_ufs_parse_dt_legacy(struct qmp_ufs *qmp, struct device_node *np)
 {
 	struct platform_device *pdev = to_platform_device(qmp->dev);
@@ -1135,6 +1188,10 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	ret = qmp_ufs_register_clocks(qmp, np);
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
