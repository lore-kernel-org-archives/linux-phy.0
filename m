Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700D2606A339
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OzlVBx5M;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=DSE4Wxzh;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=cB2K7Ueb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=tfFTWqlcRTDh/iESKqLic/5WC6ios0i7HX8MfBlEqqE=; b=OzlVBx5MC2yoj5V2TmvLvouFkn
	y7YC4F/gwvCSirT9uDI/ukgcXycaTQvYONyB1+aV7De/kQm2DF0p3Q/LHYEwknWiRW6FV6X8UxW5A
	wYo2az7d1izfHYKQiiD5+OTYHkgmEoPIaCcgq8gEE1l9NlLSb30/jzOkW82CUmGIFVi1dPmo5SK9h
	V7ynG/bYEefnJfidCVB+1uGeybXv84iTHgeXaJsCutv3bmTnZN98sNwhWMoAQ3ksVau6jFekdInxC
	ycU533VL3V3BOrLVmPCEwNHu7twdfaL0hzAkb7n/mYOtLsNovtEfhZxQgARALtpnqPH5KT+pHkniH
	BIiLScWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBya-0000000FtuU-0jGR;
	Sat, 14 Nov 2026 11:31:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSByX-0000000Ftty-0nbp
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:31:18 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wHxj3650033
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:31:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KkhVwEhH33wC3ZOO6a629BRIAOgd3LXv0Es8WriisJc=; b=DSE4Wxzh0QCZ2+Ds
	t+0b4b6TurGewZu5xnSiTRRt8g51iVA8wbad9IxIzp9XtX0yRneH5Gw/CvZCwylG
	nlykDSnMMN2+Nb9uain01a4tvFYjm0xzFio4vYXbFLr6o5+5HSsT5sx7CEtNyW2+
	7BoWcmZ9gBzIl0AaBOPsSihSieoIry7OOcAIa+kh10Ib8vZY4ktatP/sWnWc5dvy
	CE/b5xD56bAHJAHClKv0KJCN6o6C2XF/Pe0WrGc0dvbwbSFKqDh0RVv0/JfN1b1w
	jEYMTNd90jVR2qw5KLWV0opnZPqtWQKIB1lvcL5vIMlsm4oP7uJ2pF4+9YcoHiqD
	KsNFFg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhhjrncm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:31:16 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-91e8b51c11dso31796156d6.2
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:31:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655876; x=1795260676; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KkhVwEhH33wC3ZOO6a629BRIAOgd3LXv0Es8WriisJc=;
        b=cB2K7UebA5gb84R3m6RbRvZx8wKy0MvI0n99wsCJbNOobN+YLZHlo8UYOICiFoFM+/
         B6B3fJ4w+nK2fWIog2x+xNpPXC4a5BWTJe5/D1TmBsFIOaTzD9QY3zm92Sv5UN+7K4T1
         wOr9qqBLtJfnF1DubsaytZajHlLqEHlens8aNPVXCkrYTGg8Jk2VA0KUm280zB0+j1AQ
         rJh/UqYnNaYKsLVWyHxVVOHmIaRhaWJ/S5OK2p2bOjRQAubQxE+O4INgiMzw11+/AEKz
         STdtPNp19u40LUlhqsrTeN3Vo8Av8OiOD7WDdUdABnrRYBeq/2U+j4u2rcRk5vbdehTV
         i6Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655876; x=1795260676;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KkhVwEhH33wC3ZOO6a629BRIAOgd3LXv0Es8WriisJc=;
        b=JMcUL7/1BnjBbr2mecM7qAbWivbeWZrpjSpWq0rFak3nc/rnS7k334xm+QBG9Jiyjc
         OOhRaVIiMyQcsQifZa1clrGGWy8565Exdvk9sJgAbKNO1BXpNbudipwVxaYz8VvKRSKs
         WysHvcvdZBWG/eMf/He2omFz1DvXGmPTAPODd/6HkcjwqifkMdAJ0vGJ1E09NZGjJPQH
         FXF1ziORtVgUwYY3/3MZ5JZwd8tIVGC6blvWzYyeVZB+qJjmukRjc7ReQWfE41Yol+eJ
         2I9isfoj+SSjYqwZ8VcHfwk1KIgqqU2fzcQnlJdyo86i5N3caweHmtJx9GZ8fczMIrC2
         P5+w==
X-Gm-Message-State: APuU4Z9kCR96vA0qXvDvzfaCCAirzcz11gff5cpeK6lau6YJcr9biczq
	H7Ap07rF8Qj5YsswQk3bIoHVHBsZzwI0DXlL4Oc6Z3rZBGvZp1lJboQc5DjplYMKk9Az3bPeLny
	pgE3rjARopwQJIdPPq4uklzll9Y1C8nxXmKjeV/Ty+4jwNtusrf4A0bJ/ti/xjtTQVAO/
X-Gm-Gg: AYBFou04xILzyPWxBxPDIX1CbutLbguQ+23inB+ZHMcgMQuU9Aj+7tZt+FwcjXPLzzG
	ucyjzWcSYYL/Jm1jg/yw5jMtoS6r/ib1Ffw3QUSdbKLtw6T9ikl3yDap/YN0lC2cE518PHYkoUc
	EXOoaDlzxW0+IaM0JogAvy4OhMi393lYXRB/P29ZWMuSYYydVii2bN1r/y4F9JuvwsRNrgKH2Li
	axc/WPmyFDJ0X0sV4X1XBr+/8sH3l5qQ0cpPXEuy1CqJIVF+KQKz6giThHU4HE5Jv2K2YcpWywO
	HAW7HvXtWZ+NBKhK5KIe5W8d3xwDDAsX5E8sToILW/viYQ0jQN5RaWER7X57zIISwJx8Gq5Pv54
	mq9KttS7+3KH7Za5Gbg33fWG+3sqGtDX/Jdbf00qp/ZohyobYkvX0sM2ihsO+fyjxp0tfd7Y2lr
	FcjNlHYl2FW1UInxNsk3YWU+1vjqQocZ/7D6WAfexV
X-Received: by 2002:a05:6214:2524:b0:91b:5d3b:4aca with SMTP id 6a1803df08f44-91f2426a4c3mr83971376d6.51.1794655875284;
        Sat, 14 Nov 2026 03:31:15 -0800 (PST)
X-Received: by 2002:a05:6214:2524:b0:91b:5d3b:4aca with SMTP id 6a1803df08f44-91f2426a4c3mr83970836d6.51.1794655874617;
        Sat, 14 Nov 2026 03:31:14 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.31.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:31:13 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:27 +0800
Subject: [PATCH v7 10/23] media: qcom: camss: csid: Add support for CSID
 980
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-10-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=20097;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=VfkrvjhkfBOGN3MnL9KSdquiGlipD0hF6MqyWAo0ERg=;
 b=HF8CG+a0J/t+QepwOZMk1W+sxFcFiReqPybEbvn8Ia6TFUbrPJvCHhLBoYf1DmrCeBwsENGzg
 pAE34DnzWftCRHeTb/CEER2g75lRFA8L0w3xlyAhVtKjGZFU4zoOdX1
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX6e/MiabvKlF6
 UA47iJqjEWFp8lSjlVTHVcbpbFaTIWps614oQ/zTU93dXg3gaLb+0YjphWDNoOEQoEr9r7eJwUz
 tAq7piAsP+Um9PMZJvS8uCA18Z/ssCDwG3hT+DrsHsne2skjppjyS3Lf1PP0wsVEkecxkeJr6dS
 VH0FObmU0mKQuf2K9pZTh9cFQttskBzsJAdJ4ZsqAvNWtuDD7hRKI/WHZ3NSSwb0VmULV16IRw1
 WhjVumJGX1h304c/iov+2PDQv8wbIlMx0PDLlItIX5mrBV9DzbkO9CNtQxE8OfEw6vfF1zBmEVm
 uidwrz//J71ysfA0MULy1cQOYuxREQu0Eg8FuPwSFWtZB1Xdj29U5RS5U+c5NA5phsfpzZ8H0ZZ
 N0Rx8iMgya7GEw6cNcgw7nwjL5oZcjITNC9/H+mS1/C+wQ2gqwtP/FGfDRYjth2uC5rJxpdxTb5
 dzGUNJ92eMAb8Op17Xw==
X-Proofpoint-ORIG-GUID: wGPkZbN9jvgFkvb5pnQA_z2xQnhm32Bc
X-Proofpoint-GUID: wGPkZbN9jvgFkvb5pnQA_z2xQnhm32Bc
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX4szXc9oWWHT5
 fPDoTSB2eI39mn4aIaaGSyDSaG0vKjIUH9pkHM+OZjIxsfSFkFsUK1AVgXLJSkoYmJqt8i4RFdO
 zUQR+LliW2HFZ9PDb5eG3agjwQOkIyM=
X-Authority-Analysis: v=2.4 cv=X9rHu2Te c=1 sm=1 tr=0 ts=6af84684 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=iSYLME5DmbEMGSkuob0A:9 a=20kRSjUfBu3rvqth:21
 a=QEXdDO2ut3YA:10 a=O8hF6Hzn-FEA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033117_274851_2805695A 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Add resource information for CSID devices and the driver for CSID 980,
which handles CSID register configuration, module reset and IRQ handling
for BUF_DONE events.

In SM8750, the RUP and AUP updates of the Full CSIDs are split into two
registers with a SET register, while Lite CSIDs still use a single
register. The driver handles these differences.

Also define the SOF and EOF event bits for the CSI2 input and CAMIF, and
the RDIn IRQ mask register. These are definitions only; frame event IRQs
are not handled yet.

Co-developed-by: Atiya Kailany <atiya.kailany@oss.qualcomm.com>
Signed-off-by: Atiya Kailany <atiya.kailany@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/Makefile         |   1 +
 drivers/media/platform/qcom/camss/camss-csid-980.c | 466 +++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss-csid.h     |   1 +
 drivers/media/platform/qcom/camss/camss.c          |  72 ++++
 4 files changed, 540 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/Makefile b/drivers/media/platform/qcom/camss/Makefile
index 42a14e8fe1b7f28ba5ffcbe59769093b08db4d6b..1aef4267543dfa1c25dbbf351252862bf94a847d 100644
--- a/drivers/media/platform/qcom/camss/Makefile
+++ b/drivers/media/platform/qcom/camss/Makefile
@@ -8,6 +8,7 @@ qcom-camss-objs += \
 		camss-csid-4-7.o \
 		camss-csid-340.o \
 		camss-csid-680.o \
+		camss-csid-980.o \
 		camss-csid-1080.o \
 		camss-csid-gen2.o \
 		camss-csid-gen3.o \
diff --git a/drivers/media/platform/qcom/camss/camss-csid-980.c b/drivers/media/platform/qcom/camss/camss-csid-980.c
new file mode 100644
index 0000000000000000000000000000000000000000..713db25cd8c65ed7e991bffbb8b19d66c662e708
--- /dev/null
+++ b/drivers/media/platform/qcom/camss/camss-csid-980.c
@@ -0,0 +1,466 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * camss-csid-980.c
+ *
+ * Qualcomm MSM Camera Subsystem - CSID (CSI Decoder) Module
+ *
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+#include <linux/completion.h>
+#include <linux/delay.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/of.h>
+#include "camss.h"
+#include "camss-csid.h"
+#include "camss-csid-gen3.h"
+
+/* Reset and Command Registers */
+#define CSID_RST_CFG				0xC
+#define		RST_MODE				BIT(0)
+#define		RST_LOCATION				BIT(4)
+
+/* Reset and Command Registers */
+#define CSID_RST_CMD				0x10
+#define		SELECT_HW_RST				BIT(0)
+#define		SELECT_IRQ_RST				BIT(2)
+#define CSID_IRQ_CMD				0x14
+#define		IRQ_CMD_CLEAR				BIT(0)
+
+/* Register Update Commands, RUP/AUP */
+#define CSID_RUP_CMD				0x18
+#define CSID_AUP_CMD				0x1C
+#define		CSID_RUP_AUP_RDI(rdi)			(BIT(8) << (rdi))
+#define CSID_RUP_AUP_CMD			0x20
+#define		RUP_SET					BIT(0)
+#define		MUP					BIT(4)
+
+#define CSID_LITE_RUP_AUP_CMD			0x18
+#define		CSID_LITE_RUP_RDI(rdi)		(BIT(4) << (rdi))
+#define		CSID_LITE_AUP_RDI(rdi)		(BIT(20) << (rdi))
+
+/* Top level interrupt registers */
+#define CSID_TOP_IRQ_STATUS			(csid_is_lite(csid) ? 0x7C : 0x84)
+#define CSID_TOP_IRQ_MASK			(csid_is_lite(csid) ? 0x80 : 0x88)
+#define CSID_TOP_IRQ_CLEAR			(csid_is_lite(csid) ? 0x84 : 0x8C)
+#define CSID_TOP_IRQ_SET			(csid_is_lite(csid) ? 0x88 : 0x90)
+#define		INFO_RST_DONE				BIT(0)
+#define		CSI2_RX_IRQ_STATUS			BIT(2)
+#define		BUF_DONE_IRQ_STATUS			BIT(csid_is_lite(csid) ? 13 : 3)
+
+/* Buffer done interrupt registers */
+#define CSID_BUF_DONE_IRQ_STATUS		(csid_is_lite(csid) ? 0x8C : 0xA4)
+#define		BUF_DONE_IRQ_STATUS_RDI_OFFSET		(csid_is_lite(csid) ? 1 : 16)
+#define CSID_BUF_DONE_IRQ_MASK			(csid_is_lite(csid) ? 0x90 : 0xA8)
+#define CSID_BUF_DONE_IRQ_CLEAR			(csid_is_lite(csid) ? 0x94 : 0xAC)
+#define CSID_BUF_DONE_IRQ_SET			(csid_is_lite(csid) ? 0x98 : 0xB0)
+
+/* CSI2 RX interrupt registers */
+#define CSID_CSI2_RX_IRQ_STATUS			(csid_is_lite(csid) ? 0x9C : 0xB4)
+#define CSID_CSI2_RX_IRQ_MASK			(csid_is_lite(csid) ? 0xA0 : 0xB8)
+#define CSID_CSI2_RX_IRQ_CLEAR			(csid_is_lite(csid) ? 0xA4 : 0xBC)
+#define CSID_CSI2_RX_IRQ_SET			(csid_is_lite(csid) ? 0xA8 : 0xC0)
+
+/* CSI2 RX Configuration */
+#define CSID_CSI2_RX_CFG0			(csid_is_lite(csid) ? 0x200 : 0x400)
+#define		CSI2_RX_CFG0_NUM_ACTIVE_LANES		0
+#define		CSI2_RX_CFG0_DL0_INPUT_SEL		4
+#define		CSI2_RX_CFG0_PHY_NUM_SEL		20
+#define		CSI2_RX_CFG0_PHY_SEL_BASE_IDX		1
+#define CSID_CSI2_RX_CFG1			(csid_is_lite(csid) ? 0x204 : 0x404)
+#define		CSI2_RX_CFG1_ECC_CORRECTION_EN		BIT(0)
+#define		CSI2_RX_CFG1_VC_MODE			BIT(2)
+
+#define MSM_CSID_MAX_SRC_STREAMS_980		(csid_is_lite(csid) ? 4 : 5)
+
+#define CSID_RDI_CFG0(rdi)                                  \
+	({                                                  \
+		__typeof__(rdi) _rdi = (rdi);               \
+		csid_is_lite(csid) ? 0x500 + 0x100 * _rdi : \
+				     0xE00 + 0x200 * _rdi;  \
+	})
+#define		RDI_CFG0_RETIME_BS			BIT(5)
+#define		RDI_CFG0_TIMESTAMP_EN			BIT(6)
+#define		RDI_CFG0_TIMESTAMP_STB_SEL		BIT(8)
+#define		RDI_CFG0_DECODE_FORMAT			12
+#define		RDI_CFG0_DT				16
+#define		RDI_CFG0_VC				22
+#define		RDI_CFG0_DT_ID				27
+#define		RDI_CFG0_EN				BIT(31)
+
+/* RDI Control and Configuration */
+#define CSID_RDI_CTRL(rdi)                                  \
+	({                                                  \
+		__typeof__(rdi) _rdi = (rdi);               \
+		csid_is_lite(csid) ? 0x504 + 0x100 * _rdi : \
+				     0xE04 + 0x200 * _rdi;  \
+	})
+#define		RDI_CTRL_START_CMD			BIT(0)
+
+#define CSID_RDI_CFG1(rdi)                                  \
+	({                                                  \
+		__typeof__(rdi) _rdi = (rdi);               \
+		csid_is_lite(csid) ? 0x510 + 0x100 * _rdi : \
+				     0xE10 + 0x200 * _rdi;  \
+	})
+#define		RDI_CFG1_DROP_H_EN			BIT(5)
+#define		RDI_CFG1_DROP_V_EN			BIT(6)
+#define		RDI_CFG1_CROP_H_EN			BIT(7)
+#define		RDI_CFG1_CROP_V_EN			BIT(8)
+#define		RDI_CFG1_PACKING_FORMAT_MIPI		BIT(15)
+
+/* RDI Pixel Store Configuration */
+#define CSID_RDI_PIX_STORE_CFG0(rdi)		(0xE14 + 0x200 * (rdi))
+#define		RDI_PIX_STORE_CFG0_EN			BIT(0)
+#define		RDI_PIX_STORE_CFG0_MIN_HBI		1
+
+/* RDI IRQ Status in wrapper */
+#define CSID_CSI2_RDIN_IRQ_STATUS(rdi) \
+	((csid_is_lite(csid) ? 0xEC : 0x114) + 0x10 * (rdi))
+#define CSID_CSI2_RDIN_IRQ_CLEAR(rdi) \
+	((csid_is_lite(csid) ? 0xF4 : 0x11C) + 0x10 * (rdi))
+#define CSID_CSI2_RDIN_IRQ_MASK(rdi) \
+	((csid_is_lite(csid) ? 0xF0 : 0x118) + 0x10 * (rdi))
+#define		INFO_RUP_DONE				BIT(23)
+#define		INFO_INPUT_SOF				BIT(12)
+#define		INFO_INPUT_EOF				BIT(9)
+#define		INFO_CAMIF_SOF				BIT(4)
+#define		INFO_CAMIF_EOF				BIT(3)
+
+static void __csid_full_aup_rup_trigger(struct csid_device *csid)
+{
+	/* trigger SET in combined register */
+	writel(RUP_SET, csid->base + CSID_RUP_AUP_CMD);
+}
+
+static void __csid_addr_update(struct csid_device *csid, int port_id)
+{
+	if (csid_is_lite(csid)) {
+		/* CSID Lites in v980 follow the legacy way of a combined RUP
+		 * and AUP commands without an explicit SET register.
+		 */
+		csid->reg_update |= CSID_LITE_AUP_RDI(port_id);
+		writel(csid->reg_update, csid->base + CSID_LITE_RUP_AUP_CMD);
+	} else {
+		csid->addr_update |= CSID_RUP_AUP_RDI(port_id);
+		writel(csid->addr_update, csid->base + CSID_AUP_CMD);
+
+		/* CSID Fulls in v980 split AUP and RUP commands, which requires
+		 * additional SET operation to make registers modification take
+		 * effect.
+		 */
+		__csid_full_aup_rup_trigger(csid);
+	}
+}
+
+static void __csid_reg_update(struct csid_device *csid, int port_id)
+{
+	if (csid_is_lite(csid)) {
+		/* CSID Lites in v980 follow the legacy way of a combined RUP
+		 * and AUP commands without an explicit SET register.
+		 */
+		csid->reg_update |= CSID_LITE_RUP_RDI(port_id);
+		writel(csid->reg_update, csid->base + CSID_LITE_RUP_AUP_CMD);
+	} else {
+		csid->reg_update |= CSID_RUP_AUP_RDI(port_id);
+		writel(csid->reg_update, csid->base + CSID_RUP_CMD);
+
+		/* CSID Fulls in v980 split AUP and RUP commands, which requires
+		 * additional SET operation to make registers modification take
+		 * effect.
+		 */
+		__csid_full_aup_rup_trigger(csid);
+	}
+}
+
+static void __csid_addr_update_clear(struct csid_device *csid, int port_id)
+{
+	/* Hardware clears the registers upon consuming the settings */
+	if (csid_is_lite(csid))
+		csid->reg_update &= ~CSID_LITE_AUP_RDI(port_id);
+	else
+		csid->addr_update &= ~CSID_RUP_AUP_RDI(port_id);
+}
+
+static void __csid_reg_update_clear(struct csid_device *csid, int port_id)
+{
+	/* Hardware clears the registers upon consuming the settings */
+	if (csid_is_lite(csid))
+		csid->reg_update &= ~CSID_LITE_RUP_RDI(port_id);
+	else
+		csid->reg_update &= ~CSID_RUP_AUP_RDI(port_id);
+}
+
+static void __csid_configure_rx(struct csid_device *csid,
+				struct csid_phy_config *phy)
+{
+	int val;
+
+	val = (phy->lane_cnt - 1) << CSI2_RX_CFG0_NUM_ACTIVE_LANES;
+	val |= phy->lane_assign << CSI2_RX_CFG0_DL0_INPUT_SEL;
+	val |= (phy->csiphy_id + CSI2_RX_CFG0_PHY_SEL_BASE_IDX)
+	       << CSI2_RX_CFG0_PHY_NUM_SEL;
+	writel(val, csid->base + CSID_CSI2_RX_CFG0);
+
+	val = CSI2_RX_CFG1_ECC_CORRECTION_EN;
+	writel(val, csid->base + CSID_CSI2_RX_CFG1);
+}
+
+static void __csid_configure_rx_vc(struct csid_device *csid, int vc)
+{
+	int val;
+
+	if (vc > 3) {
+		val = readl(csid->base + CSID_CSI2_RX_CFG1);
+		val |= CSI2_RX_CFG1_VC_MODE;
+		writel(val, csid->base + CSID_CSI2_RX_CFG1);
+	}
+}
+
+static void __csid_ctrl_rdi(struct csid_device *csid, int enable, u8 rdi)
+{
+	u32 rdi_ctrl_offset = CSID_RDI_CTRL(rdi);
+	int val = 0;
+
+	if (enable)
+		val = RDI_CTRL_START_CMD;
+
+	writel(val, csid->base + rdi_ctrl_offset);
+}
+
+static void __csid_configure_rdi_pix_store(struct csid_device *csid, u8 rdi)
+{
+	u32 val;
+
+	/*
+	 * Configure pixel store to allow absorption of hblanking or idle time.
+	 * This helps with horizontal crop and prevents line buffer conflicts.
+	 * Reset state is 0x8 which has MIN_HBI=4, we keep the default MIN_HBI
+	 * and just enable the pixel store functionality.
+	 */
+	val = (4 << RDI_PIX_STORE_CFG0_MIN_HBI) | RDI_PIX_STORE_CFG0_EN;
+	writel(val, csid->base + CSID_RDI_PIX_STORE_CFG0(rdi));
+}
+
+static void __csid_configure_rdi_stream(struct csid_device *csid, u8 enable, u8 port, u8 vc)
+{
+	u8 lane_cnt = csid->phy.lane_cnt;
+	u32 val;
+
+	/* Source pads matching RDI channels on hardware.
+	 * E.g. Pad 1 -> RDI0, Pad 2 -> RDI1, etc.
+	 */
+	struct v4l2_mbus_framefmt *input_format = &csid->fmt[MSM_CSID_PAD_FIRST_SRC + port];
+	const struct csid_format_info *format = csid_get_fmt_entry(csid->res->formats->formats,
+								   csid->res->formats->nformats,
+								   input_format->code);
+
+	if (!lane_cnt)
+		lane_cnt = 4;
+
+	/*
+	 * DT_ID is a two bit bitfield that is concatenated with
+	 * the four least significant bits of the five bit VC
+	 * bitfield to generate an internal CID value.
+	 *
+	 * CSID_RDI_CFG0(vc)
+	 * DT_ID : 28:27
+	 * VC    : 26:22
+	 * DT    : 21:16
+	 *
+	 * CID   : VC 3:0 << 2 | DT_ID 1:0
+	 */
+	u8 dt_id = vc & 0x03;
+	u32 rdi_cfg0_offset = CSID_RDI_CFG0(port);
+	u32 rdi_cfg1_offset = CSID_RDI_CFG1(port);
+	u32 rdi_ctrl_offset = CSID_RDI_CTRL(port);
+
+	val = RDI_CFG0_TIMESTAMP_EN;
+	val |= RDI_CFG0_TIMESTAMP_STB_SEL;
+	val |= RDI_CFG0_RETIME_BS;
+
+	/* note: for non-RDI path, this should be format->decode_format */
+	val |= DECODE_FORMAT_PAYLOAD_ONLY << RDI_CFG0_DECODE_FORMAT;
+	val |= vc << RDI_CFG0_VC;
+	val |= format->data_type << RDI_CFG0_DT;
+	val |= dt_id << RDI_CFG0_DT_ID;
+	writel(val, csid->base + rdi_cfg0_offset);
+
+	val = RDI_CFG1_PACKING_FORMAT_MIPI;
+	writel(val, csid->base + rdi_cfg1_offset);
+
+	/* Configure pixel store using dedicated register in 980 */
+	if (!csid_is_lite(csid))
+		__csid_configure_rdi_pix_store(csid, port);
+
+	val = 0;
+	writel(val, csid->base + rdi_ctrl_offset);
+
+	val = readl(csid->base + rdi_cfg0_offset);
+
+	if (enable)
+		val |= RDI_CFG0_EN;
+
+	writel(val, csid->base + rdi_cfg0_offset);
+}
+
+static void csid_configure_stream(struct csid_device *csid, u8 enable)
+{
+	u8 i, k;
+
+	__csid_configure_rx(csid, &csid->phy);
+
+	for (i = 0; i < MSM_CSID_MAX_SRC_STREAMS_980; i++) {
+		if (csid->phy.en_vc & BIT(i)) {
+			__csid_configure_rdi_stream(csid, enable, i, 0);
+			__csid_configure_rx_vc(csid, 0);
+
+			for (k = 0; k < CAMSS_INIT_BUF_COUNT; k++) {
+				__csid_addr_update(csid, i);
+				__csid_reg_update(csid, i);
+			}
+
+			__csid_ctrl_rdi(csid, enable, i);
+		}
+	}
+}
+
+static int csid_configure_testgen_pattern(struct csid_device *csid, s32 val)
+{
+	return 0;
+}
+
+static void csid_subdev_reg_update(struct csid_device *csid, int port_id,
+				   bool clear)
+{
+	if (clear)
+		__csid_reg_update_clear(csid, port_id);
+	else
+		__csid_reg_update(csid, port_id);
+}
+
+static void csid_subdev_addr_update(struct csid_device *csid, int port_id,
+				    bool clear)
+{
+	if (clear)
+		__csid_addr_update_clear(csid, port_id);
+	else
+		__csid_addr_update(csid, port_id);
+}
+
+/**
+ * csid_isr - CSID module interrupt service routine
+ * @irq: Interrupt line
+ * @dev: CSID device
+ *
+ * Return IRQ_HANDLED on success
+ */
+static irqreturn_t csid_isr(int irq, void *dev)
+{
+	struct csid_device *csid = dev;
+	u32 val, buf_done_val;
+	u8 reset_done;
+	int i;
+
+	val = readl(csid->base + CSID_TOP_IRQ_STATUS);
+	writel(val, csid->base + CSID_TOP_IRQ_CLEAR);
+
+	reset_done = val & INFO_RST_DONE;
+
+	buf_done_val = readl(csid->base + CSID_BUF_DONE_IRQ_STATUS);
+	writel(buf_done_val, csid->base + CSID_BUF_DONE_IRQ_CLEAR);
+
+	for (i = 0; i < MSM_CSID_MAX_SRC_STREAMS_980; i++) {
+		if (csid->phy.en_vc & BIT(i)) {
+			val = readl(csid->base + CSID_CSI2_RDIN_IRQ_STATUS(i));
+			writel(val, csid->base + CSID_CSI2_RDIN_IRQ_CLEAR(i));
+
+			if (val & INFO_RUP_DONE) {
+				__csid_addr_update_clear(csid, i);
+				__csid_reg_update_clear(csid, i);
+			}
+
+			if (buf_done_val & BIT(BUF_DONE_IRQ_STATUS_RDI_OFFSET + i))
+				camss_buf_done(csid->camss, csid->id, i);
+		}
+	}
+
+	val = IRQ_CMD_CLEAR;
+	writel(val, csid->base + CSID_IRQ_CMD);
+
+	if (reset_done)
+		complete(&csid->reset_complete);
+
+	return IRQ_HANDLED;
+}
+
+/**
+ * csid_reset - Trigger reset on CSID module and wait to complete
+ * @csid: CSID device
+ *
+ * Return 0 on success or a negative error code otherwise
+ */
+static int csid_reset(struct csid_device *csid)
+{
+	unsigned long time;
+	u32 val;
+	int i;
+
+	reinit_completion(&csid->reset_complete);
+
+	val = INFO_RST_DONE | BUF_DONE_IRQ_STATUS;
+	writel(val, csid->base + CSID_TOP_IRQ_CLEAR);
+	writel(val, csid->base + CSID_TOP_IRQ_MASK);
+
+	val = 0;
+	for (i = 0; i < MSM_CSID_MAX_SRC_STREAMS_980; i++) {
+		if (csid->phy.en_vc & BIT(i)) {
+			/*
+			 * Only need to clear buf done IRQ status here,
+			 * RUP done IRQ status will be cleared once isr
+			 * strobe generated by CSID_RST_CMD
+			 */
+			val |= BIT(BUF_DONE_IRQ_STATUS_RDI_OFFSET + i);
+		}
+	}
+	writel(val, csid->base + CSID_BUF_DONE_IRQ_CLEAR);
+	writel(val, csid->base + CSID_BUF_DONE_IRQ_MASK);
+
+	/* Clear all IRQ status with CLEAR bits set */
+	val = IRQ_CMD_CLEAR;
+	writel(val, csid->base + CSID_IRQ_CMD);
+
+	val = RST_LOCATION | RST_MODE;
+	writel(val, csid->base + CSID_RST_CFG);
+
+	val = SELECT_HW_RST | SELECT_IRQ_RST;
+	writel(val, csid->base + CSID_RST_CMD);
+
+	time = wait_for_completion_timeout(&csid->reset_complete,
+					   msecs_to_jiffies(CSID_RESET_TIMEOUT_MS));
+
+	if (!time) {
+		dev_err(csid->camss->dev, "CSID reset timeout\n");
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+static void csid_subdev_init(struct csid_device *csid)
+{
+	csid->testgen.nmodes = CSID_PAYLOAD_MODE_DISABLED;
+}
+
+const struct csid_hw_ops csid_ops_980 = {
+	.configure_stream = csid_configure_stream,
+	.configure_testgen_pattern = csid_configure_testgen_pattern,
+	.hw_version = csid_hw_version,
+	.isr = csid_isr,
+	.reset = csid_reset,
+	.src_pad_code = csid_src_pad_code,
+	.subdev_init = csid_subdev_init,
+	.reg_update = csid_subdev_reg_update,
+	.addr_update = csid_subdev_addr_update,
+};
diff --git a/drivers/media/platform/qcom/camss/camss-csid.h b/drivers/media/platform/qcom/camss/camss-csid.h
index a3ab2a384bb49ac24955e86c8452a8ce36ce71b2..c0aa3ef054588a1a434932ce8e38ad0d84690858 100644
--- a/drivers/media/platform/qcom/camss/camss-csid.h
+++ b/drivers/media/platform/qcom/camss/camss-csid.h
@@ -225,6 +225,7 @@ extern const struct csid_hw_ops csid_ops_4_1;
 extern const struct csid_hw_ops csid_ops_4_7;
 extern const struct csid_hw_ops csid_ops_340;
 extern const struct csid_hw_ops csid_ops_680;
+extern const struct csid_hw_ops csid_ops_980;
 extern const struct csid_hw_ops csid_ops_1080;
 extern const struct csid_hw_ops csid_ops_gen2;
 extern const struct csid_hw_ops csid_ops_gen3;
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 196eebc2d7d118040319bcf967b91c4ca98a4833..9f7b2948b3aa4d9d401aa5ad76b6133101c95278 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -4308,6 +4308,76 @@ static const struct resources_icc icc_res_sa8775p[] = {
 	},
 };
 
+static const struct camss_subdev_resources csid_res_sm8750[] = {
+	/* CSID0 */
+	{
+		.clock = { "csid", "csiphy_rx" },
+		.clock_rate = { { 266666667, 400000000, 480000000 },
+				{ 266666667, 400000000, 480000000 } },
+		.reg = { "csid0" },
+		.interrupt = { "csid0" },
+		.csid = {
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.hw_ops = &csid_ops_980,
+			.formats = &csid_formats_gen2
+		}
+	},
+	/* CSID1 */
+	{
+		.clock = { "csid", "csiphy_rx" },
+		.clock_rate = { { 266666667, 400000000, 480000000 },
+				{ 266666667, 400000000, 480000000 } },
+		.reg = { "csid1" },
+		.interrupt = { "csid1" },
+		.csid = {
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.hw_ops = &csid_ops_980,
+			.formats = &csid_formats_gen2
+		}
+	},
+	/* CSID2 */
+	{
+		.clock = { "csid", "csiphy_rx" },
+		.clock_rate = { { 266666667, 400000000, 480000000 },
+				{ 266666667, 400000000, 480000000 } },
+		.reg = { "csid2" },
+		.interrupt = { "csid2" },
+		.csid = {
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.hw_ops = &csid_ops_980,
+			.formats = &csid_formats_gen2
+		}
+	},
+	/* CSID_LITE0 */
+	{
+		.clock = { "vfe_lite_csid", "vfe_lite_cphy_rx" },
+		.clock_rate = { { 266666667, 400000000, 480000000 },
+				{ 266666667, 400000000, 480000000 } },
+		.reg = { "csid_lite0" },
+		.interrupt = { "csid_lite0" },
+		.csid = {
+			.is_lite = true,
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.hw_ops = &csid_ops_980,
+			.formats = &csid_formats_gen2
+		}
+	},
+	/* CSID_LITE1 */
+	{
+		.clock = { "vfe_lite_csid", "vfe_lite_cphy_rx" },
+		.clock_rate = { { 266666667, 400000000, 480000000 },
+				{ 266666667, 400000000, 480000000 } },
+		.reg = { "csid_lite1" },
+		.interrupt = { "csid_lite1" },
+		.csid = {
+			.is_lite = true,
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.hw_ops = &csid_ops_980,
+			.formats = &csid_formats_gen2
+		}
+	}
+};
+
 static const struct resources_icc icc_res_sm8750[] = {
 	{
 		.name = "ahb",
@@ -6044,9 +6114,11 @@ static const struct camss_resources sm8750_resources = {
 	.version = CAMSS_8750,
 	.pd_name = "top",
 	.pm_clks = { "cpas_fast_ahb", "cpas_ahb", "gcc_axi_hf" },
+	.csid_res = csid_res_sm8750,
 	.icc_res = icc_res_sm8750,
 	.icc_path_num = ARRAY_SIZE(icc_res_sm8750),
 	.csiphy_num = 6,
+	.csid_num = ARRAY_SIZE(csid_res_sm8750),
 };
 
 static const struct camss_resources x1e80100_resources = {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
