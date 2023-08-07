Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08017C07E8A
	for <linux-phy@archiver.kernel.org>; Mon,  7 Aug 2023 12:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvDrCGHs6g5m206DQYSAJhn7uEopfzId4Sgx2emPIYM=; b=oJBT7F9696n5RT
	KMPw3p0RTCVfOHY9EiwnevKxGAGfGCTE1bwQUOIws0MBMP6b/RT+HXUE8aCTDheZn7IX/g9C7PUR0
	ZKuyPmMVGkndYS6ToAbkrPJ81S2tNM2iBL/36nBxs1+3KEA33Wc3sm3BSRwv3zTGpdya7oY4VeI//
	Jm6VFFaRGrLF+eL+g/cFZ5BfC+KKB/ItVDPeZAgJ9+96ghdgsv1Nm0FOt/TQzTtlUnyo9xxHT8CnY
	5cOQRqPqfJcvyVg9XF5uhvDjo6VH4DeVZwj98WfU0hkPr+e9fZw3xD7bXT+lasuidEVMZ5qAG//0y
	WJPFF8jHjmdcMalQbNWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzC8-00HB8P-2O;
	Mon, 07 Aug 2023 12:18:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzC4-00HB4g-1i
	for linux-phy@lists.infradead.org;
	Mon, 07 Aug 2023 12:18:42 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 377AQPWn020696;
	Mon, 7 Aug 2023 12:18:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=1WKIsD/eJg5fiuHGjIcWmZRY1SddvlM4s+FONxtz9CI=;
 b=JC7MCgTOhv4FHaopErNoMvVYDk02eeAIHI75s/OgXpQlqI9VrEEsjqlnv10GXNNr/AN7
 XFmPboIeWikhcV/OxTaaTPlZcmFPfm78O4bPhkzwVMZ1LE2bL3o7kP7LZ7UIRrvOtmwT
 +323pB3+hXxnks3YL93kXLFPu5VOq+4HRUOjqOwQlaxmZJkrdqTZFMHZHoOM8ea4ljj2
 FFMbnEh3omj/ubnt6Rasxwo86CFrO9bZoVpu76uJmBOTHm0B4jgQClchZq2udDA2VDZH
 nXgf5FR3XSD5AqPLMHUTvSt3+o3BnSt303iWmxg6alQKKF9sJ4OxrQlXvtCExqduviBw CA== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3s9fkuk9hj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 07 Aug 2023 12:18:31 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 377CIRhT027963;
	Mon, 7 Aug 2023 12:18:28 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 3s9fgk7kkm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 07 Aug 2023 12:18:28 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 377CIRPl027968;
	Mon, 7 Aug 2023 12:18:27 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 377CIRAx027948;
	Mon, 07 Aug 2023 12:18:27 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id 335B61B64; Mon,  7 Aug 2023 17:48:27 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        abel.vesa@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        quic_pkondeti@quicinc.com, Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH v2 5/9] arm64: dts: qcom: Add pmx75 PMIC dtsi
Date: Mon,  7 Aug 2023 17:48:14 +0530
Message-Id: <1691410698-25180-6-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1691410698-25180-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1691410698-25180-1-git-send-email-quic_rohiagar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: rLqd-zgw8zHBgFZXwvON4GqmK3sl-EmT
X-Proofpoint-GUID: rLqd-zgw8zHBgFZXwvON4GqmK3sl-EmT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-07_12,2023-08-03_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 priorityscore=1501 phishscore=0 mlxlogscore=568 clxscore=1015
 impostorscore=0 adultscore=0 malwarescore=0 bulkscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308070113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_051840_574900_25DBC90E 
X-CRM114-Status: GOOD (  16.16  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add dtsi for pmx75 PMIC found in Qualcomm platforms.

Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
---
 arch/arm64/boot/dts/qcom/pmx75.dtsi | 64 +++++++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/pmx75.dtsi

diff --git a/arch/arm64/boot/dts/qcom/pmx75.dtsi b/arch/arm64/boot/dts/qcom/pmx75.dtsi
new file mode 100644
index 0000000..cd02206
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/pmx75.dtsi
@@ -0,0 +1,64 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/spmi/spmi.h>
+
+/ {
+	thermal-zones {
+		pmx75-thermal {
+			polling-delay-passive = <100>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&pmx75_temp>;
+
+			trips {
+				trip0 {
+					temperature = <95000>;
+					hysteresis = <0>;
+					type = "passive";
+				};
+
+				trip1 {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "hot";
+				};
+
+				trip2 {
+					temperature = <145000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+	};
+};
+
+&spmi_bus {
+	pmx75: pmic@1 {
+		compatible = "qcom,pmx75", "qcom,spmi-pmic";
+		reg = <1 SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pmx75_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <0x1 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmx75_gpios: gpio@8800 {
+			compatible = "qcom,pmx75-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmx75_gpios 0 0 16>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+};
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
