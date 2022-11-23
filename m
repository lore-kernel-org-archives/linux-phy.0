Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 815FBC3A59F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 10:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nO/ACTAdupGvmGuUMSYH21ey8ukV2ZPsd8hTq0AQbEA=; b=tSigqZPdW+g9nS
	kU8rRtDlW+aBxYePuS2lXTykQbUf9cXR2i7EOvLKUtVaTECjUIXVd/e//2BWXQze78FfCX9K45RfA
	qs5tqoNmerwBEXeHcMdaeuqXvLoHZkwFuXMCh4anadRQyPV/0g4o+Jxis9sSxv3npdhT4T3zJ4WZl
	/8dfYW5rp3BgwDcSiBliGjd2ARkFxQIbT7b97oDFHW1A6NoqccZYvJqSIEKVdokknbfd4MrxN8DX4
	ZEwjme412Nm127fAMT0Gtni44q3wTWTTVQX89yH1XWLDh70zcyUqJNhXhlXlMRqNlw2+zG/e/FeSr
	StZfSF1odSwgYvO9+7mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxnCz-00GPtk-W8; Wed, 23 Nov 2022 10:42:26 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxnCw-00GPq6-Oh
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 10:42:24 +0000
Received: by mail-lf1-x12d.google.com with SMTP id g12so27579588lfh.3
        for <linux-phy@lists.infradead.org>; Wed, 23 Nov 2022 02:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y93JMbDS7TCZqUPnYPX61/7g1utQYXApLn3dq22TrxU=;
        b=GYYeZpi/JBdpolSjWg8MPg8EOJhxUlIoNFxzQLIoZmAdMr92nZhJ+C13nQHT9sgERX
         ZeOCh2GX1f19L417t8b3FCx54ygqTIeYkLvhHBKgayaGSULqeCCAgJd5b//6t+ox1EL/
         8ghnBmO+QZrOfjCuozwmmPv4T5qsFsb9VsixDMDyvGJtu+7hrv+lBLa7NTvb+nMOnbXA
         2lEoyFVEq0yQ698sIoQGpzuYFxa6nxGHwutUc5hkR6FcfTfPXqSa/dozSFA08EalKMXN
         GtonyBjXvaRNJXELetmV18iv25Cp0EFd6PAw/Scfex9o6/3IKuiVpoo5e6sYZ4jEdMBa
         rwog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y93JMbDS7TCZqUPnYPX61/7g1utQYXApLn3dq22TrxU=;
        b=vBadwqKPSQrnjSnxRTdazFaZ8yOyLuu/aqiDf4sVYSZ+7IqG1h6ASdv60QhRTPm+3e
         /v0mBIdTeRKmspw4k+NH2XAMXTOWdpadlPSW0XVUjbKegxFQE8dVyITi4UJ1A2aryvLK
         gVBganmw4rBch3OGjjcqLwoMeGJ8fl3isFP+aazZCM+7H9e9oypWva5lm3eRhi0WVw3H
         qaumoAkaqAfrDeb6Qo3WrqzQkWY+Q/jnmHVU19wgr3munHN5Q+3CWbzsDr/WyOB8PxCa
         krGUoqfoP0IKf3Dm1UngJgip1Ynaua0Lms37ev15lR4pcUQI4QrdfrgM+zMnzdAzoZUO
         HLOQ==
X-Gm-Message-State: ANoB5pnEw4KVO7KMOscgg0Q19XV5zuN4z4jYNyVyB1eWc7mPA6gxRrhR
	Nka9tbccxv9Q2KfRaeoKqe3xkQ==
X-Google-Smtp-Source: AA0mqf5rDVfpAq3LaO8lx02Cx7o/wDWgvx2Reqy56WpYBBRnJzGTTEMOSpNLLRfqFvu1sFxVu2DDAg==
X-Received: by 2002:a05:6512:2814:b0:4b1:b7a0:aa69 with SMTP id cf20-20020a056512281400b004b1b7a0aa69mr4435162lfb.239.1669200139324;
        Wed, 23 Nov 2022 02:42:19 -0800 (PST)
Received: from eriador.lumag.spb.ru (dzpbg0ftyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:5f12::1])
        by smtp.gmail.com with ESMTPSA id n5-20020a05651203e500b00498f570aef2sm2862908lfq.209.2022.11.23.02.42.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 02:42:18 -0800 (PST)
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
Subject: [PATCH v8 4/4] phy: qcom-qmp-ufs: provide symbol clocks
Date: Wed, 23 Nov 2022 12:42:15 +0200
Message-Id: <20221123104215.3414528-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221123104215.3414528-1-dmitry.baryshkov@linaro.org>
References: <20221123104215.3414528-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_024222_825648_F60474DD 
X-CRM114-Status: GOOD (  12.26  )
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
