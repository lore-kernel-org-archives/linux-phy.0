Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23930CCA47B
	for <linux-phy@archiver.kernel.org>; Fri,  8 Jul 2022 13:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPEOgNdkWgHyvBlXpkEYA511fcakAQgYAbQ80RZFhH8=; b=OkQXrc8rcFmSC9
	/baKXu3kXbQ1wLqFFIcqap6bFaQ4ALLBHGN3Gu2GkZg7kRSN003/8Ikt65JcXD1p4fAzT59QEp+14
	pSzJS4E+UvBVR6ZeaxVZvIm9zY3KqOLTnaOdbHpfUY8yk1TwpZWLY9HNe6wUz2tCw6HlcU7Uvc2OJ
	5/kCSsC7/HVHiwqseOia+8l2KzXWkYQyQt617OL9MWvJKbwaU1yGVKV/yA40a6EoWCnWOQWAxZFKS
	OkD2W4GYaN9rFLmIsI5MTwDNGh6vtkshehZ97ir/hwaTdN07ftpHibO0mxnefIzVVcM1FF/+XGso4
	42rPapH8k5huuHjMX1yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9nnk-003smI-Jv; Fri, 08 Jul 2022 13:13:44 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9nng-003sji-F1
	for linux-phy@lists.infradead.org; Fri, 08 Jul 2022 13:13:43 +0000
Received: by mail-lf1-x135.google.com with SMTP id e20so7532504lfq.11
        for <linux-phy@lists.infradead.org>; Fri, 08 Jul 2022 06:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y8TSA2xKiR+ulbyqdsf+IyUQd58t84mxTi/hjRtwdLo=;
        b=QRrMtgZXoJzyqyLeF66dY/ZAudNIiXmwhJoWSLh1Aco6eJVyrtI1npkyShxIVyEMep
         LbndmaW2tbJUgMtXAGTyNQxR+MSH7RBtnn3frSqOveJ5iuCDatFLN8ZcNNZLkJRWrxQ6
         WPo4/qtqYAEcVfZDOU7YV4lF7br0ozkvyX+PAYNqt7+FV9i7EcFl/9fXKAf411G4hqV4
         +SgDtR+DQTIFozrTO6UiHg6/dFYzfbQK8jQXNxiH2YPEXfdqjSaO6fCTD4bWO7Vblm4N
         bskrnVSxW+//wgk3uMfSoEfwrU2EUENubtNCdc/vJvG9XVW4VGd9hxg7zFvGmnowerN7
         PiuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y8TSA2xKiR+ulbyqdsf+IyUQd58t84mxTi/hjRtwdLo=;
        b=oudoxPnFYaL6CLC/s0b8Z4t6Yxw8mGgPGzpoP5nHTrskT+RF5xLfFe+T5v+yWmnyId
         WHDXVqyAS8eC+THebRIhZr1D+JrfNc7FJdiyTgTra2MgG/NXGpHsdI2mk/vvK37TegHB
         kHLvnCMsrVEDKkOvbtjCMehm0KMadOlWv/bN7Wj+9gP9w+5OXabBEb7BJDUlSOD6JZ+B
         LVYPGpAbBh3D4871iv1kUGghmH4vlfGQVqKA2jeWc4oTAusUHzPp+7VMrcDUGVZKhwLh
         XhShggoZvZgsVPu+T6z2VGxodZZbzh6w8mwzX8eSWWbCmqcOHxd/Mfyb59rxT0bkbOWb
         khBw==
X-Gm-Message-State: AJIora+wKP+7ENPSRjq1A9wzmEyVLrcUp/5AbXaet59xTVB6BSdFjCll
	0GH2kESK3/YYnhDerAxlBBdFlg==
X-Google-Smtp-Source: AGRyM1tEvHOU0pcHFvUMweAbz0mzrQdkbOshaz9Gkqxty23oTKKIa2MeGFPDkrlWi/YlKEHT/hV2Lg==
X-Received: by 2002:a05:6512:3c96:b0:488:c36d:b336 with SMTP id h22-20020a0565123c9600b00488c36db336mr2347724lfv.410.1657286017563;
        Fri, 08 Jul 2022 06:13:37 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id bu35-20020a05651216a300b0047255d211b9sm7410844lfb.232.2022.07.08.06.13.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 06:13:37 -0700 (PDT)
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
Subject: [PATCH v2 3/3] phy: qcom-qmp-ufs: provide symbol clocks
Date: Fri,  8 Jul 2022 16:13:33 +0300
Message-Id: <20220708131333.2836900-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220708131333.2836900-1-dmitry.baryshkov@linaro.org>
References: <20220708131333.2836900-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_061340_523122_93A5CAC2 
X-CRM114-Status: GOOD (  13.15  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 56 +++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index a2526068232b..f206eb4042bf 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1167,6 +1167,55 @@ static int qcom_qmp_phy_ufs_clk_init(struct device *dev, const struct qmp_phy_cf
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
@@ -1358,6 +1407,13 @@ static int qcom_qmp_phy_ufs_probe(struct platform_device *pdev)
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
