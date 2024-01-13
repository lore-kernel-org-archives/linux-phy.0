Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C351C4707C
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 05:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkpSd7lRc8I8sZ9dFyzAtuPIJCDPziRt+n29hfMcBzE=; b=058qfLYGjL7E4i
	4XKh1z7o8+LQXgA74HtS9avuYwMQB5YMu8wWob5pCgNKQTu/ykmaMfyKmIJVfzHtuPJ6pVhdd8whG
	ZkEKeJXqU6qNsNClQPhqZOc51TdhIdO6anRE8Zkij+6+FaiO5ibWAiZFmkq7BgOV6f6HBWuO0fpQW
	uhguZ4mL6ILzud9exq4+7OJh4wc045/bByML/esWBS8wEj+Ffazn6f3Qd43aczuuSFC3RGDCM/aYS
	mJ7iHFsccv+ySMYdu4m8m5yXzrt5aYqKymTm3nW4splQmMZ06vhgQ7+L+xr2WS07uk2XcC2nX5VNK
	7lLk1Ms49DKiPhjv8Ilw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnF-004Zgz-2F;
	Sat, 13 Jan 2024 05:42:53 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWn9-004Zcw-2l
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 05:42:51 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2cd46e7ae8fso80937051fa.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Jan 2024 21:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705124566; x=1705729366; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OLO3hIckekhrVY492U1qpaZe5WI7sdWmbM2jveYM9oA=;
        b=tCGjywC/gSQnVbCmNsxkAMdxMKz97CdRK2M6cSGlzx1zyTsuuhlTPIksGOjNw786Rp
         v76iIfDUGbXDIM2VigNTjf7xPnZhNcoWYLUjdSlLcVSrO4b/+qnRAC5yRLB9Mx/Hl4bd
         QODV/QRpI807BHBxFJ63XIrkvzkUV4EaDIqXZdkc2lE6AoVk5r6niaw0YB0F37qJ0gOm
         1rw49ifkCrnyeZwwLWeQoqQe1Sr4EQvlZiJXC+u8n2IqLjWwqcyvHL/wYlDWCqQhIoCT
         G6jUu0C9h7l4yyujB1rP5bw7NQYTi2Bwln4bpzxP8C2SaLk2ZzX9yLXvy+gyuSz4KQrW
         4HCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705124566; x=1705729366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OLO3hIckekhrVY492U1qpaZe5WI7sdWmbM2jveYM9oA=;
        b=M73wImdJXnKwXddjr3KKBANQ9qxhdS8G09HlC9dLaJlh4oOVACSkd+Dqbp6zgy+NCu
         uHY1Re+WjPOZwb11XIJNH0Je2WQKubZhz/ZuCZi6srqrILxTcPdEmRrq5/ef32chzxkH
         FdB0jX9CFQdNXQXBUwoVYDHjuYCGjCVMfwvtiToIrNVugMJe22vixEd4ZqoethJSNhqw
         vsSS3VvdP9hbp7x+j/8L6Hm1tgV4RtzPS5qavTFRX7JzBwkjhPdqiMcnlzuPJFYa/2jg
         vETeDDWuMScrbmSEurpYluehpZeeR5XSeb7BLaMeqG5rnHuNoygNrSBdhANDB2nj0KnY
         HDPw==
X-Gm-Message-State: AOJu0YwB27FWqp1KhZk0CCwLdTVFWU3WuAH160K5laGCXmK0/4BM8hmr
	1eKNm8ZVZEBop7gP/A5eRv+Xs93i+R0bzA==
X-Google-Smtp-Source: AGHT+IFr0zP01AhCy0vDrNPiQcO1JSJC53dXfrxp7e5La5DiermZWh+Q1IS04ZEEC4HJcBaREvjg5A==
X-Received: by 2002:a05:651c:c9b:b0:2cd:143b:4b55 with SMTP id bz27-20020a05651c0c9b00b002cd143b4b55mr964269ljb.0.1705124566500;
        Fri, 12 Jan 2024 21:42:46 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r22-20020a2eb616000000b002cc71e9168csm677719ljn.129.2024.01.12.21.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 21:42:46 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 07:42:42 +0200
Subject: [PATCH 05/13] usb: typec: qcom-pmic-typec: allow different
 implementations for the PD PHY
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v1-5-de7dfd459353@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=19142;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=kUzaQWksyzHWp2IejEzTRH2rXL3k54r5C6xGKOqQHF0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBloiLQTxGD1riTtNbFAJQ8ZcgGNjiuGAfEDQydu
 B6ggUqwURCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaIi0AAKCRCLPIo+Aiko
 1UIYB/4wZC6owNpZs/g+AbhvHICPhqsGjDBrHG55L7jDs7HgbMizH6JcNrgWKnSpxZT3KTdkl2H
 5OshUJ3giAbQYjM4cYlUDSV7qAn5FKuiGvzwb2mvYLlbRkeEqBw8VdRDtLluaPD+lWpvvSjbz4e
 8vgVjJuka12qiPsz7rx/TUn6b6cAxodUTU5e7LC2maMaQmetvpmo3DI8lP3nyxsvCChC7VpTkRA
 iZBRVGrSfE+1ZseibRSU8xNn4yn0lAcWeBrpcLcna5BzTdg0v8MYHqNnqJi0rY+QJtnlPtwsllc
 bFg2j6tY6XjG1duHrcRui/H9/vXQ/+iPgcW3WmBi2b8eKdFJ
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_214248_084091_38202FF9 
X-CRM114-Status: GOOD (  23.12  )
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

Rework Qualcomm PMIC TCPM driver to allow different platform-specific
implementations of the PD PHY interface. While majority of platforms
has the same of register for the PD PHY, some obscure ones (PMI632) do
not have real PD PHY support. Add proper interface between the main
module and the PD PHY backend to allow switching the PD PHY
implementation.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c      | 100 ++-----------
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.h      |  25 ++++
 .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c    | 155 ++++++++++++++++++---
 .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h    |  90 +-----------
 drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.h |   4 +-
 5 files changed, 178 insertions(+), 196 deletions(-)

diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
index 1a2b4bddaa97..4f2dbf20da12 100644
--- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
@@ -20,26 +20,15 @@
 
 #include <drm/bridge/aux-bridge.h>
 
+#include "qcom_pmic_typec.h"
 #include "qcom_pmic_typec_pdphy.h"
 #include "qcom_pmic_typec_port.h"
 
 struct pmic_typec_resources {
-	struct pmic_typec_pdphy_resources	*pdphy_res;
+	const struct pmic_typec_pdphy_resources	*pdphy_res;
 	struct pmic_typec_port_resources	*port_res;
 };
 
-struct pmic_typec {
-	struct device		*dev;
-	struct tcpm_port	*tcpm_port;
-	struct tcpc_dev		tcpc;
-	struct pmic_typec_pdphy	*pmic_typec_pdphy;
-	struct pmic_typec_port	*pmic_typec_port;
-	bool			vbus_enabled;
-	struct mutex		lock;		/* VBUS state serialization */
-};
-
-#define tcpc_to_tcpm(_tcpc_) container_of(_tcpc_, struct pmic_typec, tcpc)
-
 static int qcom_pmic_typec_get_vbus(struct tcpc_dev *tcpc)
 {
 	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
@@ -116,34 +105,6 @@ static int qcom_pmic_typec_start_toggling(struct tcpc_dev *tcpc,
 						   port_type, cc);
 }
 
-static int qcom_pmic_typec_set_roles(struct tcpc_dev *tcpc, bool attached,
-				     enum typec_role power_role,
-				     enum typec_data_role data_role)
-{
-	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
-
-	return qcom_pmic_typec_pdphy_set_roles(tcpm->pmic_typec_pdphy,
-					       data_role, power_role);
-}
-
-static int qcom_pmic_typec_set_pd_rx(struct tcpc_dev *tcpc, bool on)
-{
-	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
-
-	return qcom_pmic_typec_pdphy_set_pd_rx(tcpm->pmic_typec_pdphy, on);
-}
-
-static int qcom_pmic_typec_pd_transmit(struct tcpc_dev *tcpc,
-				       enum tcpm_transmit_type type,
-				       const struct pd_message *msg,
-				       unsigned int negotiated_rev)
-{
-	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
-
-	return qcom_pmic_typec_pdphy_pd_transmit(tcpm->pmic_typec_pdphy, type,
-						 msg, negotiated_rev);
-}
-
 static int qcom_pmic_typec_init(struct tcpc_dev *tcpc)
 {
 	return 0;
@@ -177,9 +138,6 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
 	tcpm->tcpc.set_polarity = qcom_pmic_typec_set_polarity;
 	tcpm->tcpc.set_vconn = qcom_pmic_typec_set_vconn;
 	tcpm->tcpc.start_toggling = qcom_pmic_typec_start_toggling;
-	tcpm->tcpc.set_pd_rx = qcom_pmic_typec_set_pd_rx;
-	tcpm->tcpc.set_roles = qcom_pmic_typec_set_roles;
-	tcpm->tcpc.pd_transmit = qcom_pmic_typec_pd_transmit;
 
 	regmap = dev_get_regmap(dev->parent, NULL);
 	if (!regmap) {
@@ -195,17 +153,13 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
 	if (IS_ERR(tcpm->pmic_typec_port))
 		return PTR_ERR(tcpm->pmic_typec_port);
 
-	tcpm->pmic_typec_pdphy = qcom_pmic_typec_pdphy_alloc(dev);
-	if (IS_ERR(tcpm->pmic_typec_pdphy))
-		return PTR_ERR(tcpm->pmic_typec_pdphy);
-
 	ret = qcom_pmic_typec_port_probe(pdev, tcpm->pmic_typec_port,
 					 res->port_res, regmap, base[0]);
 	if (ret)
 		return ret;
 
-	ret = qcom_pmic_typec_pdphy_probe(pdev, tcpm->pmic_typec_pdphy,
-					  res->pdphy_res, regmap, base[1]);
+	ret = res->pdphy_probe(pdev, tcpm,
+			       res->pdphy_res, regmap, base[1]);
 	if (ret)
 		return ret;
 
@@ -231,10 +185,11 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
 	if (ret)
 		goto fwnode_remove;
 
-	ret = qcom_pmic_typec_pdphy_start(tcpm->pmic_typec_pdphy,
-					  tcpm->tcpm_port);
-	if (ret)
-		goto fwnode_remove;
+	if (tcpm->pdphy_start) {
+		ret = tcpm->pdphy_start(tcpm, tcpm->tcpm_port);
+		if (ret)
+			goto fwnode_remove;
+	}
 
 	return 0;
 
@@ -248,46 +203,13 @@ static void qcom_pmic_typec_remove(struct platform_device *pdev)
 {
 	struct pmic_typec *tcpm = platform_get_drvdata(pdev);
 
-	qcom_pmic_typec_pdphy_stop(tcpm->pmic_typec_pdphy);
+	if (tcpm->pdphy_stop)
+		tcpm->pdphy_stop(tcpm);
 	qcom_pmic_typec_port_stop(tcpm->pmic_typec_port);
 	tcpm_unregister_port(tcpm->tcpm_port);
 	fwnode_remove_software_node(tcpm->tcpc.fwnode);
 }
 
-static struct pmic_typec_pdphy_resources pm8150b_pdphy_res = {
-	.irq_params = {
-		{
-			.virq = PMIC_PDPHY_SIG_TX_IRQ,
-			.irq_name = "sig-tx",
-		},
-		{
-			.virq = PMIC_PDPHY_SIG_RX_IRQ,
-			.irq_name = "sig-rx",
-		},
-		{
-			.virq = PMIC_PDPHY_MSG_TX_IRQ,
-			.irq_name = "msg-tx",
-		},
-		{
-			.virq = PMIC_PDPHY_MSG_RX_IRQ,
-			.irq_name = "msg-rx",
-		},
-		{
-			.virq = PMIC_PDPHY_MSG_TX_FAIL_IRQ,
-			.irq_name = "msg-tx-failed",
-		},
-		{
-			.virq = PMIC_PDPHY_MSG_TX_DISCARD_IRQ,
-			.irq_name = "msg-tx-discarded",
-		},
-		{
-			.virq = PMIC_PDPHY_MSG_RX_DISCARD_IRQ,
-			.irq_name = "msg-rx-discarded",
-		},
-	},
-	.nr_irqs = 7,
-};
-
 static struct pmic_typec_port_resources pm8150b_port_res = {
 	.irq_params = {
 		{
diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.h b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.h
new file mode 100644
index 000000000000..da035916c12a
--- /dev/null
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.h
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023, Linaro Ltd. All rights reserved.
+ */
+
+#ifndef __QCOM_PMIC_TYPEC_H__
+#define __QCOM_PMIC_TYPEC_H__
+
+struct pmic_typec {
+	struct device		*dev;
+	struct tcpm_port	*tcpm_port;
+	struct tcpc_dev		tcpc;
+	struct pmic_typec_pdphy	*pmic_typec_pdphy;
+	struct pmic_typec_port	*pmic_typec_port;
+	bool			vbus_enabled;
+	struct mutex		lock;		/* VBUS state serialization */
+
+	int (*pdphy_start)(struct pmic_typec *tcpm,
+			   struct tcpm_port *tcpm_port);
+	void (*pdphy_stop)(struct pmic_typec *tcpm);
+};
+
+#define tcpc_to_tcpm(_tcpc_) container_of(_tcpc_, struct pmic_typec, tcpc)
+
+#endif
diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
index 52c81378e36e..40511ce86a34 100644
--- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.c
@@ -14,8 +14,74 @@
 #include <linux/slab.h>
 #include <linux/usb/pd.h>
 #include <linux/usb/tcpm.h>
+#include "qcom_pmic_typec.h"
 #include "qcom_pmic_typec_pdphy.h"
 
+/* PD PHY register offsets and bit fields */
+#define USB_PDPHY_MSG_CONFIG_REG	0x40
+#define MSG_CONFIG_PORT_DATA_ROLE	BIT(3)
+#define MSG_CONFIG_PORT_POWER_ROLE	BIT(2)
+#define MSG_CONFIG_SPEC_REV_MASK	(BIT(1) | BIT(0))
+
+#define USB_PDPHY_EN_CONTROL_REG	0x46
+#define CONTROL_ENABLE			BIT(0)
+
+#define USB_PDPHY_RX_STATUS_REG		0x4A
+#define RX_FRAME_TYPE			(BIT(0) | BIT(1) | BIT(2))
+
+#define USB_PDPHY_FRAME_FILTER_REG	0x4C
+#define FRAME_FILTER_EN_HARD_RESET	BIT(5)
+#define FRAME_FILTER_EN_SOP		BIT(0)
+
+#define USB_PDPHY_TX_SIZE_REG		0x42
+#define TX_SIZE_MASK			0xF
+
+#define USB_PDPHY_TX_CONTROL_REG	0x44
+#define TX_CONTROL_RETRY_COUNT(n)	(((n) & 0x3) << 5)
+#define TX_CONTROL_FRAME_TYPE(n)        (((n) & 0x7) << 2)
+#define TX_CONTROL_FRAME_TYPE_CABLE_RESET	(0x1 << 2)
+#define TX_CONTROL_SEND_SIGNAL		BIT(1)
+#define TX_CONTROL_SEND_MSG		BIT(0)
+
+#define USB_PDPHY_RX_SIZE_REG		0x48
+
+#define USB_PDPHY_RX_ACKNOWLEDGE_REG	0x4B
+#define RX_BUFFER_TOKEN			BIT(0)
+
+#define USB_PDPHY_BIST_MODE_REG		0x4E
+#define BIST_MODE_MASK			0xF
+#define BIST_ENABLE			BIT(7)
+#define PD_MSG_BIST			0x3
+#define PD_BIST_TEST_DATA_MODE		0x8
+
+#define USB_PDPHY_TX_BUFFER_HDR_REG	0x60
+#define USB_PDPHY_TX_BUFFER_DATA_REG	0x62
+
+#define USB_PDPHY_RX_BUFFER_REG		0x80
+
+/* VDD regulator */
+#define VDD_PDPHY_VOL_MIN		2800000	/* uV */
+#define VDD_PDPHY_VOL_MAX		3300000	/* uV */
+#define VDD_PDPHY_HPM_LOAD		3000	/* uA */
+
+/* Message Spec Rev field */
+#define PD_MSG_HDR_REV(hdr)		(((hdr) >> 6) & 3)
+
+/* timers */
+#define RECEIVER_RESPONSE_TIME		15	/* tReceiverResponse */
+#define HARD_RESET_COMPLETE_TIME	5	/* tHardResetComplete */
+
+/* Interrupt numbers */
+#define PMIC_PDPHY_SIG_TX_IRQ		0x0
+#define PMIC_PDPHY_SIG_RX_IRQ		0x1
+#define PMIC_PDPHY_MSG_TX_IRQ		0x2
+#define PMIC_PDPHY_MSG_RX_IRQ		0x3
+#define PMIC_PDPHY_MSG_TX_FAIL_IRQ	0x4
+#define PMIC_PDPHY_MSG_TX_DISCARD_IRQ	0x5
+#define PMIC_PDPHY_MSG_RX_DISCARD_IRQ	0x6
+#define PMIC_PDPHY_FR_SWAP_IRQ		0x7
+
+
 struct pmic_typec_pdphy_irq_data {
 	int				virq;
 	int				irq;
@@ -231,11 +297,13 @@ qcom_pmic_typec_pdphy_pd_transmit_payload(struct pmic_typec_pdphy *pmic_typec_pd
 	return ret;
 }
 
-int qcom_pmic_typec_pdphy_pd_transmit(struct pmic_typec_pdphy *pmic_typec_pdphy,
-				      enum tcpm_transmit_type type,
-				      const struct pd_message *msg,
-				      unsigned int negotiated_rev)
+static int qcom_pmic_typec_pdphy_pd_transmit(struct tcpc_dev *tcpc,
+					     enum tcpm_transmit_type type,
+					     const struct pd_message *msg,
+					     unsigned int negotiated_rev)
 {
+	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
+	struct pmic_typec_pdphy *pmic_typec_pdphy = tcpm->pmic_typec_pdphy;
 	struct device *dev = pmic_typec_pdphy->dev;
 	int ret;
 
@@ -336,8 +404,10 @@ static irqreturn_t qcom_pmic_typec_pdphy_isr(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-int qcom_pmic_typec_pdphy_set_pd_rx(struct pmic_typec_pdphy *pmic_typec_pdphy, bool on)
+static int qcom_pmic_typec_pdphy_set_pd_rx(struct tcpc_dev *tcpc, bool on)
 {
+	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
+	struct pmic_typec_pdphy *pmic_typec_pdphy = tcpm->pmic_typec_pdphy;
 	unsigned long flags;
 	int ret;
 
@@ -353,9 +423,12 @@ int qcom_pmic_typec_pdphy_set_pd_rx(struct pmic_typec_pdphy *pmic_typec_pdphy, b
 	return ret;
 }
 
-int qcom_pmic_typec_pdphy_set_roles(struct pmic_typec_pdphy *pmic_typec_pdphy,
-				    bool data_role_host, bool power_role_src)
+static int qcom_pmic_typec_pdphy_set_roles(struct tcpc_dev *tcpc, bool attached,
+					   enum typec_role power_role,
+					   enum typec_data_role data_role)
 {
+	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
+	struct pmic_typec_pdphy *pmic_typec_pdphy = tcpm->pmic_typec_pdphy;
 	struct device *dev = pmic_typec_pdphy->dev;
 	unsigned long flags;
 	int ret;
@@ -366,12 +439,13 @@ int qcom_pmic_typec_pdphy_set_roles(struct pmic_typec_pdphy *pmic_typec_pdphy,
 				 pmic_typec_pdphy->base + USB_PDPHY_MSG_CONFIG_REG,
 				 MSG_CONFIG_PORT_DATA_ROLE |
 				 MSG_CONFIG_PORT_POWER_ROLE,
-				 data_role_host << 3 | power_role_src << 2);
+				 (data_role == TYPEC_HOST ? MSG_CONFIG_PORT_DATA_ROLE : 0) |
+				 (power_role == TYPEC_SOURCE ? MSG_CONFIG_PORT_POWER_ROLE : 0));
 
 	spin_unlock_irqrestore(&pmic_typec_pdphy->lock, flags);
 
 	dev_dbg(dev, "pdphy_set_roles: data_role_host=%d power_role_src=%d\n",
-		data_role_host, power_role_src);
+		data_role, power_role);
 
 	return ret;
 }
@@ -435,9 +509,10 @@ static int pmic_typec_pdphy_reset(struct pmic_typec_pdphy *pmic_typec_pdphy)
 	return ret;
 }
 
-int qcom_pmic_typec_pdphy_start(struct pmic_typec_pdphy *pmic_typec_pdphy,
-				struct tcpm_port *tcpm_port)
+static int qcom_pmic_typec_pdphy_start(struct pmic_typec *tcpm,
+				       struct tcpm_port *tcpm_port)
 {
+	struct pmic_typec_pdphy *pmic_typec_pdphy = tcpm->pmic_typec_pdphy;
 	int i;
 	int ret;
 
@@ -457,8 +532,9 @@ int qcom_pmic_typec_pdphy_start(struct pmic_typec_pdphy *pmic_typec_pdphy,
 	return 0;
 }
 
-void qcom_pmic_typec_pdphy_stop(struct pmic_typec_pdphy *pmic_typec_pdphy)
+static void qcom_pmic_typec_pdphy_stop(struct pmic_typec *tcpm)
 {
+	struct pmic_typec_pdphy *pmic_typec_pdphy = tcpm->pmic_typec_pdphy;
 	int i;
 
 	for (i = 0; i < pmic_typec_pdphy->nr_irqs; i++)
@@ -469,21 +545,55 @@ void qcom_pmic_typec_pdphy_stop(struct pmic_typec_pdphy *pmic_typec_pdphy)
 	regulator_disable(pmic_typec_pdphy->vdd_pdphy);
 }
 
-struct pmic_typec_pdphy *qcom_pmic_typec_pdphy_alloc(struct device *dev)
-{
-	return devm_kzalloc(dev, sizeof(struct pmic_typec_pdphy), GFP_KERNEL);
-}
+const struct pmic_typec_pdphy_resources pm8150b_pdphy_res = {
+	.irq_params = {
+		{
+			.virq = PMIC_PDPHY_SIG_TX_IRQ,
+			.irq_name = "sig-tx",
+		},
+		{
+			.virq = PMIC_PDPHY_SIG_RX_IRQ,
+			.irq_name = "sig-rx",
+		},
+		{
+			.virq = PMIC_PDPHY_MSG_TX_IRQ,
+			.irq_name = "msg-tx",
+		},
+		{
+			.virq = PMIC_PDPHY_MSG_RX_IRQ,
+			.irq_name = "msg-rx",
+		},
+		{
+			.virq = PMIC_PDPHY_MSG_TX_FAIL_IRQ,
+			.irq_name = "msg-tx-failed",
+		},
+		{
+			.virq = PMIC_PDPHY_MSG_TX_DISCARD_IRQ,
+			.irq_name = "msg-tx-discarded",
+		},
+		{
+			.virq = PMIC_PDPHY_MSG_RX_DISCARD_IRQ,
+			.irq_name = "msg-rx-discarded",
+		},
+	},
+	.nr_irqs = 7,
+};
 
 int qcom_pmic_typec_pdphy_probe(struct platform_device *pdev,
-				struct pmic_typec_pdphy *pmic_typec_pdphy,
-				struct pmic_typec_pdphy_resources *res,
+				struct pmic_typec *tcpm,
+				const struct pmic_typec_pdphy_resources *res,
 				struct regmap *regmap,
 				u32 base)
 {
+	struct pmic_typec_pdphy *pmic_typec_pdphy;
 	struct device *dev = &pdev->dev;
 	struct pmic_typec_pdphy_irq_data *irq_data;
 	int i, ret, irq;
 
+	pmic_typec_pdphy = devm_kzalloc(dev, sizeof(struct pmic_typec_pdphy), GFP_KERNEL);
+	if (!pmic_typec_pdphy)
+		return -ENOMEM;
+
 	if (!res->nr_irqs || res->nr_irqs > PMIC_PDPHY_MAX_IRQS)
 		return -EINVAL;
 
@@ -522,5 +632,14 @@ int qcom_pmic_typec_pdphy_probe(struct platform_device *pdev,
 			return ret;
 	}
 
+	tcpm->pmic_typec_pdphy = pmic_typec_pdphy;
+
+	tcpm->tcpc.set_pd_rx = qcom_pmic_typec_pdphy_set_pd_rx;
+	tcpm->tcpc.set_roles = qcom_pmic_typec_pdphy_set_roles;
+	tcpm->tcpc.pd_transmit = qcom_pmic_typec_pdphy_pd_transmit;
+
+	tcpm->pdphy_start = qcom_pmic_typec_pdphy_start;
+	tcpm->pdphy_stop = qcom_pmic_typec_pdphy_stop;
+
 	return 0;
 }
diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
index e67954e31b14..b94eccadb042 100644
--- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
@@ -8,74 +8,6 @@
 
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
-#include <linux/usb/tcpm.h>
-
-#define USB_PDPHY_MAX_DATA_OBJ_LEN	28
-#define USB_PDPHY_MSG_HDR_LEN		2
-
-/* PD PHY register offsets and bit fields */
-#define USB_PDPHY_MSG_CONFIG_REG	0x40
-#define MSG_CONFIG_PORT_DATA_ROLE	BIT(3)
-#define MSG_CONFIG_PORT_POWER_ROLE	BIT(2)
-#define MSG_CONFIG_SPEC_REV_MASK	(BIT(1) | BIT(0))
-
-#define USB_PDPHY_EN_CONTROL_REG	0x46
-#define CONTROL_ENABLE			BIT(0)
-
-#define USB_PDPHY_RX_STATUS_REG		0x4A
-#define RX_FRAME_TYPE			(BIT(0) | BIT(1) | BIT(2))
-
-#define USB_PDPHY_FRAME_FILTER_REG	0x4C
-#define FRAME_FILTER_EN_HARD_RESET	BIT(5)
-#define FRAME_FILTER_EN_SOP		BIT(0)
-
-#define USB_PDPHY_TX_SIZE_REG		0x42
-#define TX_SIZE_MASK			0xF
-
-#define USB_PDPHY_TX_CONTROL_REG	0x44
-#define TX_CONTROL_RETRY_COUNT(n)	(((n) & 0x3) << 5)
-#define TX_CONTROL_FRAME_TYPE(n)        (((n) & 0x7) << 2)
-#define TX_CONTROL_FRAME_TYPE_CABLE_RESET	(0x1 << 2)
-#define TX_CONTROL_SEND_SIGNAL		BIT(1)
-#define TX_CONTROL_SEND_MSG		BIT(0)
-
-#define USB_PDPHY_RX_SIZE_REG		0x48
-
-#define USB_PDPHY_RX_ACKNOWLEDGE_REG	0x4B
-#define RX_BUFFER_TOKEN			BIT(0)
-
-#define USB_PDPHY_BIST_MODE_REG		0x4E
-#define BIST_MODE_MASK			0xF
-#define BIST_ENABLE			BIT(7)
-#define PD_MSG_BIST			0x3
-#define PD_BIST_TEST_DATA_MODE		0x8
-
-#define USB_PDPHY_TX_BUFFER_HDR_REG	0x60
-#define USB_PDPHY_TX_BUFFER_DATA_REG	0x62
-
-#define USB_PDPHY_RX_BUFFER_REG		0x80
-
-/* VDD regulator */
-#define VDD_PDPHY_VOL_MIN		2800000	/* uV */
-#define VDD_PDPHY_VOL_MAX		3300000	/* uV */
-#define VDD_PDPHY_HPM_LOAD		3000	/* uA */
-
-/* Message Spec Rev field */
-#define PD_MSG_HDR_REV(hdr)		(((hdr) >> 6) & 3)
-
-/* timers */
-#define RECEIVER_RESPONSE_TIME		15	/* tReceiverResponse */
-#define HARD_RESET_COMPLETE_TIME	5	/* tHardResetComplete */
-
-/* Interrupt numbers */
-#define PMIC_PDPHY_SIG_TX_IRQ		0x0
-#define PMIC_PDPHY_SIG_RX_IRQ		0x1
-#define PMIC_PDPHY_MSG_TX_IRQ		0x2
-#define PMIC_PDPHY_MSG_RX_IRQ		0x3
-#define PMIC_PDPHY_MSG_TX_FAIL_IRQ	0x4
-#define PMIC_PDPHY_MSG_TX_DISCARD_IRQ	0x5
-#define PMIC_PDPHY_MSG_RX_DISCARD_IRQ	0x6
-#define PMIC_PDPHY_FR_SWAP_IRQ		0x7
 
 /* Resources */
 #define PMIC_PDPHY_MAX_IRQS		0x08
@@ -93,27 +25,11 @@ struct pmic_typec_pdphy_resources {
 /* API */
 struct pmic_typec_pdphy;
 
-struct pmic_typec_pdphy *qcom_pmic_typec_pdphy_alloc(struct device *dev);
-
+extern const struct pmic_typec_pdphy_resources pm8150b_pdphy_res;
 int qcom_pmic_typec_pdphy_probe(struct platform_device *pdev,
-				struct pmic_typec_pdphy *pmic_typec_pdphy,
-				struct pmic_typec_pdphy_resources *res,
+				struct pmic_typec *tcpm,
+				const struct pmic_typec_pdphy_resources *res,
 				struct regmap *regmap,
 				u32 base);
 
-int qcom_pmic_typec_pdphy_start(struct pmic_typec_pdphy *pmic_typec_pdphy,
-				struct tcpm_port *tcpm_port);
-
-void qcom_pmic_typec_pdphy_stop(struct pmic_typec_pdphy *pmic_typec_pdphy);
-
-int qcom_pmic_typec_pdphy_set_roles(struct pmic_typec_pdphy *pmic_typec_pdphy,
-				    bool power_role_src, bool data_role_host);
-
-int qcom_pmic_typec_pdphy_set_pd_rx(struct pmic_typec_pdphy *pmic_typec_pdphy, bool on);
-
-int qcom_pmic_typec_pdphy_pd_transmit(struct pmic_typec_pdphy *pmic_typec_pdphy,
-				      enum tcpm_transmit_type type,
-				      const struct pd_message *msg,
-				      unsigned int negotiated_rev);
-
 #endif /* __QCOM_PMIC_TYPEC_PDPHY_H__ */
diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.h b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.h
index d4d358c680b6..4a892048908e 100644
--- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.h
+++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_port.h
@@ -3,8 +3,8 @@
  * Copyright (c) 2018-2019 The Linux Foundation. All rights reserved.
  * Copyright (c) 2023, Linaro Ltd. All rights reserved.
  */
-#ifndef __QCOM_PMIC_TYPEC_H__
-#define __QCOM_PMIC_TYPEC_H__
+#ifndef __QCOM_PMIC_TYPEC_PORT_H__
+#define __QCOM_PMIC_TYPEC_PORT_H__
 
 #include <linux/platform_device.h>
 #include <linux/usb/tcpm.h>

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
