Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 266F7C61DA2
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 13:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ybMbkQ4+51cD2HxAV/L0Z/nR5gKsZDp3rxNKWh0voc=; b=R7E5umMFKV6/Ni
	qDEkHCN7E9sa578xEenUfxHrUIAa0T0Pn5B4eCujTdHOfn3AFoyzp/msthztX5uaadFDR35Ci6fLA
	3J9aTlGTFX0I3gwMnSDh2SYE8RnsrVEGkdaGSSxnDj9j7ZdpBd8Pe1mAS0ec+PZrnWmGLINCQCNx+
	rlD9ULdLt0xmR8V2DtpHnUcIWSGYKD/45l6ZR5FWsfr/Uq3l52RV89RjY+q031S//97jp/nlnxjQq
	wBElKgPqZxHuWru1MdcBbWmTpBbsjQ/p/K3uQK2I+d2ZWKt52wxvDbSz0FJOkQrsylpxBmbwiiUs5
	Xl+zqLt20om6rd641Qew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2mo-00B5XD-9m; Thu, 26 Jan 2023 13:59:30 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2mh-00B5R7-JY
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 13:59:25 +0000
Received: by mail-wr1-x434.google.com with SMTP id t18so1882281wro.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 05:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rTaA87QpYj0Hccvxw80KUesxovjmXPfEg7HwgSeaScQ=;
        b=URsaELjRqEhjOAT1FJa/ev1zxpWeAFF8XGv+QH2Omde1U5u3d4vXDMCQcOkl3afX1S
         +y838hu79IPBHSYzd8oYvhppnGfnE40U5d3ly7HE/ujSO5A+JTEzly80QOprh5mcODhx
         ms6IDzjP/bdYGZEycOQlgWBekeYLx967USblvU3nwWtpOLb6b6Yt+yeFKV5J12GQk2Gh
         BJjXL+nn9zeIyx1saHxgXAdhQdglTqx/AGsgj5KDa5I4lnpFqcjH7EOzJrfgO3fd1/01
         5UlFEQgAQCKtib8VBFHmXoRSybzdA9TcMtzgbBq6qpuBysi8btKaV8eruVwAJroMzZWt
         FdzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rTaA87QpYj0Hccvxw80KUesxovjmXPfEg7HwgSeaScQ=;
        b=xUkMiaL4t7ItOgG4L6w/wAUVgSs7ndhhQ3pziTFFBiBszRtvWIZ0l50FnnRZFUOta+
         WrAuopSI9zkEVDGqQ3nGzvtRk4FRecTy1Ptl4KAaOrzysgFC5wK3O/0g7QzDMSyspWl5
         FUY7FuVx6sWpwz3syOyZOg4Iuny3i+53ZXXo53lMsGB+PQjLu0/6M2Dspu1noKe1y8uB
         ISfIYiNUzCJ4nvuQlCpNxGqfvKZrO2hQrmGy2miYmo39jROXVJ+OgADAB81/3jBMC3qv
         y8ReYb2U4wIoFOivNbfAMFVsg+Ku8gKuNE0RBOvOBno0TpMdLBsAdDO5tt3xOfCZfK81
         +bHQ==
X-Gm-Message-State: AO0yUKUV6IPxHa38/5iO9khG9z5b9nHLAnbn/CWzilHRt6chg/hGX8ee
	Uz8YIuWyoY+kpDNnsCrdGfL7+Q==
X-Google-Smtp-Source: AK7set8Am1+9D/pcuex9EPBOMEbVgzlQMxAh1INAQnKRH5D6aDJJdlB99zj7mjez3xtFhiDUQIOVtQ==
X-Received: by 2002:a05:6000:1b0a:b0:2bf:c968:d181 with SMTP id f10-20020a0560001b0a00b002bfc968d181mr1440833wrz.27.1674741560387;
        Thu, 26 Jan 2023 05:59:20 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id l15-20020a5d6d8f000000b002bfb37497a8sm1594067wrs.31.2023.01.26.05.59.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:59:19 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [RFC v2 5/7] phy: qcom: phy-qcom-snps-eusb2: Add support for eUSB2 repeater
Date: Thu, 26 Jan 2023 15:59:07 +0200
Message-Id: <20230126135909.1624890-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126135909.1624890-1-abel.vesa@linaro.org>
References: <20230126135909.1624890-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055923_684274_083AB94C 
X-CRM114-Status: GOOD (  14.49  )
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

From: Neil Armstrong <neil.armstrong@linaro.org>

For USB 2.0 compliance, eUSB2 needs a repeater. The PHY needs to
initialize and reset it. So add repeater support

Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
index 23ec162cc3bd..dd53880d5b0e 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
@@ -128,6 +128,8 @@ struct qcom_snps_eusb2_hsphy {
 	struct regulator_bulk_data vregs[EUSB2_NUM_VREGS];
 
 	enum phy_mode mode;
+
+	struct phy *repeater;
 };
 
 static int qcom_snps_eusb2_hsphy_set_mode(struct phy *p, enum phy_mode mode, int submode)
@@ -136,7 +138,7 @@ static int qcom_snps_eusb2_hsphy_set_mode(struct phy *p, enum phy_mode mode, int
 
 	phy->mode = mode;
 
-	return 0;
+	return phy_set_mode_ext(phy->repeater, mode, submode);
 }
 
 static void qcom_snps_eusb2_hsphy_write_mask(void __iomem *base, u32 offset,
@@ -235,6 +237,11 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
 	if (ret)
 		return ret;
 
+	ret = phy_init(phy->repeater);
+	if (ret)
+		dev_err(&p->dev, "repeater init failed. %d\n", ret);
+		goto disable_vreg;
+
 	ret = clk_prepare_enable(phy->ref_clk);
 	if (ret) {
 		dev_err(&p->dev, "failed to enable ref clock, %d\n", ret);
@@ -342,6 +349,8 @@ static int qcom_snps_eusb2_hsphy_exit(struct phy *p)
 
 	regulator_bulk_disable(ARRAY_SIZE(phy->vregs), phy->vregs);
 
+	phy_exit(phy->repeater);
+
 	return 0;
 }
 
@@ -386,6 +395,12 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
 	if (ret)
 		return dev_err_probe(dev, ret,
 				     "failed to get regulator supplies\n");
+
+	phy->repeater = devm_phy_get(dev, "eusb2-repeater");
+	if (IS_ERR(phy->repeater))
+		return dev_err_probe(dev, PTR_ERR(phy->repeater),
+				     "failed to get repeater\n");
+
 	generic_phy = devm_phy_create(dev, NULL, &qcom_snps_eusb2_hsphy_ops);
 	if (IS_ERR(generic_phy)) {
 		dev_err(dev, "failed to create phy %d\n", ret);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
