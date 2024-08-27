Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61A2DC5320E
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 04:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIB5DNkZ3yncLBqjJ13AudyUW62RkL8VsofkwNO8DC0=; b=aypWzr+5Y4Rj5P
	GYddSf/ltZk+1RnaRsQvzKnKdkcCXmmt1ngsrfDXPw5KF2IteVINPXNfv7h1+nvogoduapgbm0kYS
	oI3bxDRKChi3sC/4Dx1cukoJRu4piL897z/J6ooT6fRwslYuJJ1tGABYbelufs23noI992OsNaoVf
	rxHNQYM1nhVqHuMq5TRJ0OLYUEcIdF7xu7IPFtMOAr3ucoWdJ2ofaCQeCecO7DqJ7IVpDv2ARvLmA
	+PnOZW12ay2VG9iZoy/BhHIgQS+kdhtqsXfFMpCVq3zwSEU3sC++lI+NWyR6rwn5rziH98mXnLPIU
	GcBJChEmBM+4OiZagMqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sioI4-00000009moq-01Ix;
	Tue, 27 Aug 2024 04:58:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sioI0-00000009mmq-3Cnu
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 04:58:46 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47QJH50O007713;
	Tue, 27 Aug 2024 04:58:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GiiTVNEcMX7+WRonoFPdel6UH0oPW1K2doSrjNxFSwk=; b=o7d3dPcYz6Jq6S5y
	j7IEuxLX/kJ4XmDj9OJJaEKVIlVruasUQ4VlZ/1l22RySUttSgQ4f+P5mjHJsDzq
	AVpZq60rwM88Fniz8yyRqtb1pcmCfhfRu6sPvrItO1i2MilyLMB2lNkfTt0PVmkj
	TODFL0KStCeCl+Qepu9lhKRdctIr19X+xFC6bmauj7YLxkUea5nNz/lEs6foTO8L
	Lob/ralwOINlH+eT1S62c2DnEZXpA8ydRoEW3fPpma+u+7ekRGLOqFbqpYDsOlCv
	THG/dregcJ55DNcgoPplEoF/qsuSAMENAmH1Mqk7K7wR80JHf/nj71OzR8RPwEDP
	w2JXNA==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41796kwn47-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 04:58:27 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 47R4wPh1004654
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 04:58:25 GMT
Received: from hu-srichara-blr.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 26 Aug 2024 21:58:19 -0700
From: Sricharan R <quic_srichara@quicinc.com>
To: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <p.zabel@pengutronix.de>, <dmitry.baryshkov@linaro.org>,
        <quic_nsekar@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <robimarko@gmail.com>, <quic_srichara@quicinc.com>
Subject: [PATCH V2 1/6] dt-bindings: phy: qcom,uniphy-pcie: Document PCIe uniphy
Date: Tue, 27 Aug 2024 10:27:52 +0530
Message-ID: <20240827045757.1101194-2-quic_srichara@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240827045757.1101194-1-quic_srichara@quicinc.com>
References: <20240827045757.1101194-1-quic_srichara@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Qvi5GgEC4mZSD-lQdibVbanKB30QzvxR
X-Proofpoint-ORIG-GUID: Qvi5GgEC4mZSD-lQdibVbanKB30QzvxR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-27_03,2024-08-26_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 malwarescore=0 impostorscore=0 phishscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 bulkscore=0
 spamscore=0 clxscore=1015 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2407110000 definitions=main-2408270034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_215844_970050_BA93EBB3 
X-CRM114-Status: GOOD (  12.57  )
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

From: Nitheesh Sekar <quic_nsekar@quicinc.com>

Document the Qualcomm UNIPHY PCIe 28LP present in IPQ5018.

Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
---
[v2]  Fixed filename, title, fixed clock-name, reset-names

 .../phy/qcom,ipq5018-uniphy-pcie.yaml         | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5018-uniphy-pcie.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5018-uniphy-pcie.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5018-uniphy-pcie.yaml
new file mode 100644
index 000000000000..c04dd179eb8b
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq5018-uniphy-pcie.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,ipq5018-uniphy-pcie.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm UNIPHY PCIe 28LP PHY controller for genx1, genx2
+
+maintainers:
+  - Nitheesh Sekar <quic_nsekar@quicinc.com>
+  - Sricharan Ramabadhran <quic_srichara@quicinc.com>
+
+properties:
+  compatible:
+    enum:
+      - qcom,ipq5018-uniphy-pcie-gen2x1
+      - qcom,ipq5018-uniphy-pcie-gen2x2
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: pipe
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: phy
+      - const: common
+
+  "#phy-cells":
+    const: 0
+
+  "#clock-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - "#phy-cells"
+  - "#clock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-ipq5018.h>
+    #include <dt-bindings/reset/qcom,gcc-ipq5018.h>
+
+    phy@86000 {
+        compatible = "qcom,ipq5018-uniphy-pcie-gen2x2";
+        reg = <0x86000 0x1000>;
+        clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
+        clock-names = "pipe";
+        resets = <&gcc GCC_PCIE0_PHY_BCR>,
+                 <&gcc GCC_PCIE0PHY_PHY_BCR>;
+        reset-names = "phy", "common";
+        #phy-cells = <0>;
+        #clock-cells = <0>;
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
