Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 208FAC47DA7
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 20:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=octv38QUVei185zo/glZur/MGktuxvpV5JIs5kijBRo=; b=ClQaTAKuC9RXWN
	vdurp3icK/Qf0DxBiRMZqb2zet4WjkimuFVHanpNdl2atEqVSxUHGqgEZq5Eg2IMeHpL5o9hKcPWp
	u9ud4ll6SXL7T9FM0CQdQtSfnIBYcRdeN1zlMWeeCkjQGy39SToAVoyOV+jDUReilMQKHeslpP2up
	fUWRnl5sR6D6wo3z6DQ8SrOG42szTGXld4dulCaCkOVLbIk8qg3BL7rpuG0savtmPupHW7D7kVBBp
	41TOVL/L92DhQjSEIMyPF+g1BhFDNaUOh2k438bU3WEJKn/MinKAYfjy7LNuaXfwwStlMTiLV+TI4
	kSuBFOrZouEL5pI2CwVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2z-005gkX-2K;
	Sat, 13 Jan 2024 20:56:05 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2w-005ghN-0M
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 20:56:04 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50ec948ad31so6828735e87.2
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 12:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705179361; x=1705784161; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z1wXM0UCXHFRyRAmNG2D0XvVhB3lyU99SL1XHxjNstg=;
        b=BisaLj4G2PMm3HHkm3xcX0JHOt0AL72R3VcEwFUS0AhdJZwqlLXp6sCfJI1miFvVSn
         6GG5jqwA6U5DJ1QJioFrJHwsvInfQ1F9u/+diUO1zGXLe1uGT98bg7D5PIOwzxWpQLRe
         jdxDHQksEsRypOyHt2H8XH1Ocx6TT/XH+RHBd1Ypf3UI0UjC1ZCNS+gwwBrLaKE+fJRY
         eNGFhlU9DkcgK0q7ubeUORNrzzOfoJHPhxhTvbtCMYCFYGNnBIlzkqRlG2857ekJBfGF
         kYkWM5yzumzYxCIh2rdeQvV4ClWfSoolbKWd1pm5xJR/CbR2Ri/oU/vd1uJMQOJSi9P3
         Cg+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705179361; x=1705784161;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z1wXM0UCXHFRyRAmNG2D0XvVhB3lyU99SL1XHxjNstg=;
        b=iUbNlRaBkcrSIfg4vdzBDaWwCoBvI0brrFQ8xqILR2XwKXrmZxJ6UYA/NIejy9vEk+
         Efki215xLlZXTCjXITQ402cJInQzP9Z64OW3p3N7M8zFd46cXnjipDj/gq55alpjQcOi
         Qek2P2QhbB+en2osDK0xTqcNPV5wRyHxiRSh0pPA7aAx9m7q9+Gp3xl19UJ4p9lenYcn
         0TtxWQJMZBkL8FpPDYSH4ZAZCOuKmv4YG6Yfu+4DgmHDOuDiZd+4U+55+m/9LQcSURoy
         EUryXRhxpiDeg4rHBlWjWVRPKb0fbHmOucI4JXRstRz/wEwQbn3DmV6YSC2XLVzd+ptZ
         OnUw==
X-Gm-Message-State: AOJu0YwBMQuMfY34q8cRBWILO1g4dKZSMEm9TzbSoTjqA3+Ux5jNt0s9
	8yi0hRlT9DlJT7ptbteGbDS0jP4KU/lqWQ==
X-Google-Smtp-Source: AGHT+IEviJCowdCpp+b8nqR3Klg+qX72sCf6sU+PUIZV7fSID3NpFUtI5yhkncUXvD5gk72+JTW0rQ==
X-Received: by 2002:a05:6512:318b:b0:50e:80ff:2d0f with SMTP id i11-20020a056512318b00b0050e80ff2d0fmr1498508lfe.98.1705179360768;
        Sat, 13 Jan 2024 12:56:00 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p14-20020a056512328e00b0050e9355d7eesm919802lfe.103.2024.01.13.12.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jan 2024 12:56:00 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 22:55:52 +0200
Subject: [PATCH v2 09/15] usb: typec: qcom-pmic-typec: add support for
 PMI632 PMIC
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v2-9-182d9aa0a5b3@linaro.org>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=6288;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=YAFW/4mrIAbAiMjNUbGgByzdIfRhqwoyh7K7k/Tq5n8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlovjXrRuRRhjKDD7Mp1LMhUW1DuaZiQLjxmErO
 gSqvmw6q7qJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaL41wAKCRCLPIo+Aiko
 1djlB/9DMtoyIYFdhyxr2oEoqXJI844mQEKqxTm+3VeOIh0Tf5r0hntWC3IURRpmhdqb6Vlvi3g
 whNMAiW/GWWfbs9P47eJcUerEzT8Ss9Lk3Y9f8KsHqrmCLuZU7yiLu8TWu+Pl5N0uNuMeohu6Zh
 Nd7QvuUzDaKJqXpi/HJ49MTl14Te+VaYamrdbVY65CcusfQ0Vu8c7BP+QXzUftXKXACj6NIm/XF
 ibKmpJ5FxMNpUb3SVBbAwsBTB8cyPhmLEoTZ58zRcDcZvz3gtgkCmcoxcbK2A2TO4cfMAa/xARi
 A5Cn8i4BAswX+aiWR7TRpoWSLlhI7tws2oxoatsn/WI4V3QD
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_125602_212294_0F004F72 
X-CRM114-Status: GOOD (  19.48  )
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

The PMI632 PMIC support Type-C port handling, but lacks USB
PowerDelivery support. The TCPM requires all callbacks to be provided
by the implementation. Implement a special, 'stub' Qcom PD PHY
implementation to enable the PMI632 support.

Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/usb/typec/tcpm/qcom/Makefile               |  3 +-
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c      | 30 ++++++--
 .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h    |  2 +
 .../typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c   | 80 ++++++++++++++++++++++
 4 files changed, 107 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/typec/tcpm/qcom/Makefile b/drivers/usb/typec/tcpm/qcom/Makefile
index dc1e8832e197..cc23042b9487 100644
--- a/drivers/usb/typec/tcpm/qcom/Makefile
+++ b/drivers/usb/typec/tcpm/qcom/Makefile
@@ -3,4 +3,5 @@
 obj-$(CONFIG_TYPEC_QCOM_PMIC)		+= qcom_pmic_tcpm.o
 qcom_pmic_tcpm-y			+= qcom_pmic_typec.o \
 					   qcom_pmic_typec_port.o \
-					   qcom_pmic_typec_pdphy.o
+					   qcom_pmic_typec_pdphy.o \
+					   qcom_pmic_typec_pdphy_stub.o \
diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
index 82e3f59ea471..e48412cdcb0f 100644
--- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
@@ -42,7 +42,7 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
 	const struct pmic_typec_resources *res;
 	struct regmap *regmap;
 	struct device *bridge_dev;
-	u32 base[2];
+	u32 base;
 	int ret;
 
 	res = of_device_get_match_data(dev);
@@ -62,19 +62,29 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
-	ret = of_property_read_u32_array(np, "reg", base, 2);
+	ret = of_property_read_u32_index(np, "reg", 0, &base);
 	if (ret)
 		return ret;
 
 	ret = qcom_pmic_typec_port_probe(pdev, tcpm,
-					 res->port_res, regmap, base[0]);
+					 res->port_res, regmap, base);
 	if (ret)
 		return ret;
 
-	ret = qcom_pmic_typec_pdphy_probe(pdev, tcpm,
-					  res->pdphy_res, regmap, base[1]);
-	if (ret)
-		return ret;
+	if (res->pdphy_res) {
+		ret = of_property_read_u32_index(np, "reg", 1, &base);
+		if (ret)
+			return ret;
+
+		ret = qcom_pmic_typec_pdphy_probe(pdev, tcpm,
+						  res->pdphy_res, regmap, base);
+		if (ret)
+			return ret;
+	} else {
+		ret = qcom_pmic_typec_pdphy_stub_probe(pdev, tcpm);
+		if (ret)
+			return ret;
+	}
 
 	platform_set_drvdata(pdev, tcpm);
 
@@ -123,8 +133,14 @@ static const struct pmic_typec_resources pm8150b_typec_res = {
 	.port_res = &pm8150b_port_res,
 };
 
+static const struct pmic_typec_resources pmi632_typec_res = {
+	/* PD PHY not present */
+	.port_res = &pm8150b_port_res,
+};
+
 static const struct of_device_id qcom_pmic_typec_table[] = {
 	{ .compatible = "qcom,pm8150b-typec", .data = &pm8150b_typec_res },
+	{ .compatible = "qcom,pmi632-typec", .data = &pmi632_typec_res },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_pmic_typec_table);
diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
index 5f428e67ccfe..04dee20293cf 100644
--- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
@@ -31,5 +31,7 @@ int qcom_pmic_typec_pdphy_probe(struct platform_device *pdev,
 				const struct pmic_typec_pdphy_resources *res,
 				struct regmap *regmap,
 				u32 base);
+int qcom_pmic_typec_pdphy_stub_probe(struct platform_device *pdev,
+				     struct pmic_typec *tcpm);
 
 #endif /* __QCOM_PMIC_TYPEC_PDPHY_H__ */
diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c
new file mode 100644
index 000000000000..df79059cda67
--- /dev/null
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2024, Linaro Ltd. All rights reserved.
+ */
+
+#include <linux/err.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+#include <linux/slab.h>
+#include <linux/usb/pd.h>
+#include <linux/usb/tcpm.h>
+#include "qcom_pmic_typec.h"
+#include "qcom_pmic_typec_pdphy.h"
+
+static int qcom_pmic_typec_pdphy_stub_pd_transmit(struct tcpc_dev *tcpc,
+						  enum tcpm_transmit_type type,
+						  const struct pd_message *msg,
+						  unsigned int negotiated_rev)
+{
+	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
+	struct device *dev = tcpm->dev;
+
+	dev_dbg(dev, "pdphy_transmit: type=%d\n", type);
+
+	tcpm_pd_transmit_complete(tcpm->tcpm_port,
+				  TCPC_TX_SUCCESS);
+
+	return 0;
+}
+
+static int qcom_pmic_typec_pdphy_stub_set_pd_rx(struct tcpc_dev *tcpc, bool on)
+{
+	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
+	struct device *dev = tcpm->dev;
+
+	dev_dbg(dev, "set_pd_rx: %s\n", on ? "on" : "off");
+
+	return 0;
+}
+
+static int qcom_pmic_typec_pdphy_stub_set_roles(struct tcpc_dev *tcpc, bool attached,
+						enum typec_role power_role,
+						enum typec_data_role data_role)
+{
+	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
+	struct device *dev = tcpm->dev;
+
+	dev_dbg(dev, "pdphy_set_roles: data_role_host=%d power_role_src=%d\n",
+		data_role, power_role);
+
+	return 0;
+}
+
+static int qcom_pmic_typec_pdphy_stub_start(struct pmic_typec *tcpm,
+					    struct tcpm_port *tcpm_port)
+{
+	return 0;
+}
+
+static void qcom_pmic_typec_pdphy_stub_stop(struct pmic_typec *tcpm)
+{
+}
+
+int qcom_pmic_typec_pdphy_stub_probe(struct platform_device *pdev,
+				     struct pmic_typec *tcpm)
+{
+	tcpm->tcpc.set_pd_rx = qcom_pmic_typec_pdphy_stub_set_pd_rx;
+	tcpm->tcpc.set_roles = qcom_pmic_typec_pdphy_stub_set_roles;
+	tcpm->tcpc.pd_transmit = qcom_pmic_typec_pdphy_stub_pd_transmit;
+
+	tcpm->pdphy_start = qcom_pmic_typec_pdphy_stub_start;
+	tcpm->pdphy_stop = qcom_pmic_typec_pdphy_stub_stop;
+
+	return 0;
+}

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
