Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0C5DC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 12:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=diFLZiHooQfjjORIZ0pVU1o9XvNla+dJQO53lR2HIfE=; b=oxxxurjy4L1YF6
	huk1jHiR04oCH/n7+ZRhmOs80iXBZzsoLrwpXeOp/sh7kI2mdM+fgcm0bxGFnjawd5eI/wuIRuzT8
	PI5v6flVmtI1f4sn4kYR+YC6N6l5iDhOVouy6unGqVYnf3BBmJl+JfqqLiXHE4sxY7/kWCatbPN2F
	Uz60Lf3/r+BQafFa5Fs4rl5YE5pRx+coUUYkyVCpEcw6m+IuzFAG2iceZ0Pl5/TjhLbWP5El3JhXF
	1TifrQhwlNxtevgqLEtdDYjuCLjjENAu2qN8/slmHWgX6Mrtc67ZBLVFXlXANlYGN4dAUK5BDtHEy
	UlIeYqArQkPlvXkgUcqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovH7T-003D1Q-31; Wed, 16 Nov 2022 12:02:19 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovH7O-003D0I-HC
	for linux-phy@lists.infradead.org; Wed, 16 Nov 2022 12:02:15 +0000
Received: by mail-wm1-x330.google.com with SMTP id l39-20020a05600c1d2700b003cf93c8156dso1292419wms.4
        for <linux-phy@lists.infradead.org>; Wed, 16 Nov 2022 04:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fUtf3C2ksBbvfzIaOIaKX58DNV9jeGzhpCM3Ny/zr3U=;
        b=e5n4nBklX5Iiqsx6kpUPhyZxhS00j53WfDrZBv2hrpk2TmMXA9iRGk5CDY8OV4Dcrg
         9l1ErAfJqCw4CO3OTt+T7CTu+wjKIRWpfnLq0WnaN8vm5OerwTjir0+Hc4FNMjZvh5oS
         hqIiQhzOGFUU9CqqncfVUbMJuXA12xf3aKcbRxufTlOmFgN38mqoGbqkQyiCplZoRt32
         EALfIC3ONCa4HUEm8B0BiY4OXBCesDymm3vJ0RaxKmQr1YduJHXgPgvUg8hzPm+xrYQq
         ofeQ6VZJJXrHD8ey36lF1gKUuRMGqbHOZAHNAYeiV2S/QSAayJMymSUB70d1fcogYDUb
         7Jvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fUtf3C2ksBbvfzIaOIaKX58DNV9jeGzhpCM3Ny/zr3U=;
        b=3TqKkbh0106RAIIdAHg85bsxG7VuJTPkkcS+k9dFJUTMIin/kCh7QBOag2FlyfTXK0
         3iTUUhivLvODu5E/EO7zKviQn+tlOPQQXnGB2s1+Y8A1JCgbXs0sZVT3rZcIHvsiQY+r
         aoxEKonsb5jUSIgUWyNnUqfeNETsV4E37HFWOlrNm4+momotqPCKAWB8xfK/L+9qLkTl
         JudPei0eyb4GBmVrnZ90J8wc59rAr+oQiTJso8ccWcjiZ1WX3Qt2Bdi/KeDZYdB8Xy5F
         +Ed+v+UnJ/gWqJN2fgvgxBwqOtn6iWuSWy10UccL9pViMjQ8XMX8CBHF9Tc3lx4DUrrs
         1XGw==
X-Gm-Message-State: ANoB5pm0D9k3sPNLnrHkagI6767qdSImvrGmtAzVwD2UANJUX0e0Y+9o
	s8sK/UAuX6PED5ac94rqSHcEgw==
X-Google-Smtp-Source: AA0mqf4meWqOJc601nNZH4xS8Bsb3vR2BsVZXEudb+jRGR88kf8EdA1OeUJzvCsCNOBn9lD3OBTv/w==
X-Received: by 2002:a05:600c:2e51:b0:3cf:6e9b:21f1 with SMTP id q17-20020a05600c2e5100b003cf6e9b21f1mr1893472wmf.90.1668600133083;
        Wed, 16 Nov 2022 04:02:13 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id r8-20020a056000014800b002206203ed3dsm15120109wrx.29.2022.11.16.04.02.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 04:02:12 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 10/10] phy: qualcomm: phy-qcom-snps-eusb2: Add support for eUSB2 repeater
Date: Wed, 16 Nov 2022 14:01:57 +0200
Message-Id: <20221116120157.2706810-11-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221116120157.2706810-1-abel.vesa@linaro.org>
References: <20221116120157.2706810-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_040214_592829_7965437E 
X-CRM114-Status: GOOD (  15.16  )
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
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 39 ++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
index 1bb42ec14703..921502ffc55b 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
@@ -16,6 +16,8 @@
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
+#include <linux/usb/repeater.h>
+
 
 #define USB_PHY_UTMI_CTRL0		(0x3c)
 #define SLEEPM				BIT(0)
@@ -135,6 +137,8 @@ struct qcom_snps_eusb2_hsphy {
 	struct regulator_bulk_data vregs[EUSB2_NUM_VREGS];
 
 	enum phy_mode mode;
+
+	struct usb_repeater *repeater;
 };
 
 static int qcom_snps_eusb2_hsphy_set_mode(struct phy *p, enum phy_mode mode, int submode)
@@ -231,6 +235,28 @@ static int qcom_eusb2_ref_clk_init(struct qcom_snps_eusb2_hsphy *phy)
 	return 0;
 }
 
+static int qcom_snps_eusb2_hsphy_repeater_reset_and_init(struct qcom_snps_eusb2_hsphy *phy)
+{
+	struct device *dev = &phy->phy->dev;
+	int ret;
+
+	/* TOFIX set mode, default to device */
+
+	ret = usb_repeater_power_on(phy->repeater);
+	if (ret)
+		dev_err(dev, "repeater power on failed.\n");
+
+	ret = usb_repeater_reset(phy->repeater, true);
+	if (ret)
+		dev_err(dev, "repeater reset failed.\n");
+
+	ret = usb_repeater_init(phy->repeater);
+	if (ret)
+		dev_err(dev, "repeater init failed.\n");
+
+	return ret;
+}
+
 static int qcom_snps_eusb2_hsphy_init(struct phy *p)
 {
 	struct qcom_snps_eusb2_hsphy *phy = phy_get_drvdata(p);
@@ -240,6 +266,11 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
 	if (ret)
 		return ret;
 
+	/* Bring eUSB2 repeater out of reset and initialized before eUSB2 PHY */
+	ret = qcom_snps_eusb2_hsphy_repeater_reset_and_init(phy);
+	if (ret)
+		goto disable_vreg;
+
 	ret = clk_prepare_enable(phy->ref_clk);
 	if (ret) {
 		dev_err(&p->dev, "failed to enable ref clock, %d\n", ret);
@@ -347,6 +378,8 @@ static int qcom_snps_eusb2_hsphy_exit(struct phy *p)
 
 	regulator_bulk_disable(ARRAY_SIZE(phy->vregs), phy->vregs);
 
+	usb_repeater_power_off(phy->repeater);
+
 	return 0;
 }
 
@@ -391,6 +424,12 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
 	if (ret)
 		return dev_err_probe(dev, ret,
 				     "failed to get regulator supplies\n");
+
+	phy->repeater = devm_usb_get_repeater_by_phandle(dev, "usb-repeater", 0);
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
