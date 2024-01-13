Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF166C4707B
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1OazERnawLYwlhluEtb5YunT2Ue0iLrmBOJFGxVrnt8=; b=2tChl5jOoAlqnj
	VAN7M8al5GWvUlaRoXRC3c6OP+8ipTU98Cx1KxkzUq6BTSAtuM4kg43lG5SlgTo0vb/P+ShSlPSbQ
	wKlqYYvDYL/KWPomXIPo7AId0oMZaIPL0q6rPL5SOpOZ8eW2LA/aOs5Zgda+YX6baxpBOzL/ccKme
	+NIdqRSgEYh8QNVSAATPdKjPCuJ7cT1Q8ihn3u/BmakrfGI+SVJetYtjOT19OnK/AgHZSR3OSBoTZ
	TIaZZRxpMXpAu2eupo3o6CRShLnC5JuGToLFXWY0m6+NJCeBUo0Y2B15FjJxL1sLF6xMkPqkIsN+7
	Y60tf9uFUG4I0V7lPXLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnF-004Zgg-1K;
	Sat, 13 Jan 2024 05:42:53 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnB-004Zdm-2c
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 05:42:51 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2cd1a1c5addso82534981fa.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Jan 2024 21:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705124567; x=1705729367; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=afthoZjhzh3K9AbCitTKB1uGz763Kz/EKxNDfFNBZLQ=;
        b=frJ4l2MhR0xprcobKiOJCH2MDuwPjD8M3UNVgGpXQwd3L3CRo9EZofDebOmffS6oFZ
         JuCyjCr0sTMBMWSCIiIDgzGoal0wQBeWncxItlh9ZxpRlnG03Y1lDLJTyq4XFzXw3wwm
         IxMMLhQTX1qSJeXpwkrLk/RHbRLr8tiWqvADnke5prrDAlAoUs+jYsTzZWzQEgOB+eU2
         +PNHrg5vMnfe3Z/uwG8Jb/zo8FlkWGrBthJVvMoKlMZmqhK4f9yLSsuvpxz6iQJuBAJk
         38qQAmaKaA91P2wSLkqcQtVJTMbW2C2sBZ+jQySFpGXJgtKKyU/ENt4744Kml0IFjrQx
         SOBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705124567; x=1705729367;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=afthoZjhzh3K9AbCitTKB1uGz763Kz/EKxNDfFNBZLQ=;
        b=OAvajaEKjqUOds18u4u+san+0a6Uj9rVJ1hZWNvdkkBmNWkJxKAaC8G7JWYRg8eJIB
         sBO078rqUj/VkNlBxuYBsSXzDqSBhGNECguC1s1UW+qgIDxqyd93HCfM678rN2g/0NE+
         mmxHfnzAigMVBClqbc+bOOpV0ea7djy2JBB06iiGsPT3P3rtIsyXy8Fejufypvrtzszr
         jbtYy1/Zz353vPS6r0NonU9lEvjCsYQQKC9n4otlZmbEIJ60T16/REHanLGrADQ47zwn
         /vTyqeIBoCNRysCyYzMK7CPntXqKd3NTYuca5C8r03TnRJ00mlHs5p61icgnlmxY1kTZ
         49Dw==
X-Gm-Message-State: AOJu0YxzTmDwwtbhMUY5vyZjDC6E/xLOYNWGZAR3FjvWmbS+jSdZ59bY
	50HnZ5adjzn2wmdjDAu9AqGwlFxorOjNow==
X-Google-Smtp-Source: AGHT+IH3PfLNr+D6TkKH6t9wdOUphIkb/Lj8eH9xY9T/GuYJqqi6mkwiK+4c1IzDiTuXrlAf7y5XOA==
X-Received: by 2002:a05:651c:90:b0:2cd:1ae2:ba67 with SMTP id 16-20020a05651c009000b002cd1ae2ba67mr1145531ljq.32.1705124567458;
        Fri, 12 Jan 2024 21:42:47 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r22-20020a2eb616000000b002cc71e9168csm677719ljn.129.2024.01.12.21.42.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 21:42:46 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 07:42:43 +0200
Subject: [PATCH 06/13] usb: typec: qcom-pmic-typec: add support for PMI632
 PMIC
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v1-6-de7dfd459353@linaro.org>
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
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
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=6056;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=4SLe62+NaGfoT/UTRKsT2LiSznrzsv8Lr8SkVVNecnk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBloiLQJx3OGAidNjNJ3PlwwgOumKJMlKCCJhuKL
 gQWuAlhe3SJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaIi0AAKCRCLPIo+Aiko
 1QXgB/9WmO/jT7EY3RcysBqe6lswcpJfIsy+G8Z7QUl1zBJsvYZDw6ojkXLGm83l8Kerlg4vJ7f
 r/2pqGgTLAT2PfQYdcWk7jB5oNUjAN138n3+PgrO944/9vPrd961Nufsvk9yQUSyILEZDwG4iyG
 8AGP48ZEAlnhyn78NKkZzgVoKH4lRCEMOhQUI87SN3v/ChWHjoD95Iv0knS9Z3i3FmBOzDX8zbw
 wSN/X4kd1ad23HCRfSGkSD/m5Sy4TnHpG8on/OY3kK65F0raBBi5Ufszb4oEXb3tJBhzqZ51pe3
 8Bi/SsGOitgs4w9ox1HFwZaQzx3Mn7UbrfiwpCMoUvIygHdF
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_214249_879395_EFA69E64 
X-CRM114-Status: GOOD (  19.57  )
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/usb/typec/tcpm/qcom/Makefile               |  3 +-
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c      | 30 +++++++---
 .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h    |  2 +
 .../typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c   | 67 ++++++++++++++++++++++
 4 files changed, 94 insertions(+), 8 deletions(-)

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
index 4f2dbf20da12..e2513549c58a 100644
--- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
@@ -118,7 +118,7 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
 	const struct pmic_typec_resources *res;
 	struct regmap *regmap;
 	struct device *bridge_dev;
-	u32 base[2];
+	u32 base;
 	int ret;
 
 	res = of_device_get_match_data(dev);
@@ -145,7 +145,7 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
-	ret = of_property_read_u32_array(np, "reg", base, 2);
+	ret = of_property_read_u32_index(np, "reg", 0, &base);
 	if (ret)
 		return ret;
 
@@ -154,14 +154,24 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
 		return PTR_ERR(tcpm->pmic_typec_port);
 
 	ret = qcom_pmic_typec_port_probe(pdev, tcpm->pmic_typec_port,
-					 res->port_res, regmap, base[0]);
+					 res->port_res, regmap, base);
 	if (ret)
 		return ret;
 
-	ret = res->pdphy_probe(pdev, tcpm,
-			       res->pdphy_res, regmap, base[1]);
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
 
 	mutex_init(&tcpm->lock);
 	platform_set_drvdata(pdev, tcpm);
@@ -253,8 +263,14 @@ static struct pmic_typec_resources pm8150b_typec_res = {
 	.port_res = &pm8150b_port_res,
 };
 
+static struct pmic_typec_resources pmi632_typec_res = {
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
index b94eccadb042..2a7dedeb3009 100644
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
index 000000000000..5d3b0e78d4d8
--- /dev/null
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c
@@ -0,0 +1,67 @@
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
+int qcom_pmic_typec_pdphy_stub_probe(struct platform_device *pdev,
+				     struct pmic_typec *tcpm)
+{
+	tcpm->tcpc.set_pd_rx = qcom_pmic_typec_pdphy_stub_set_pd_rx;
+	tcpm->tcpc.set_roles = qcom_pmic_typec_pdphy_stub_set_roles;
+	tcpm->tcpc.pd_transmit = qcom_pmic_typec_pdphy_stub_pd_transmit;
+
+	return 0;
+}

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
