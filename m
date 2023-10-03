Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45ADFE7544F
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 12:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVS+1m+Bnw6CEc173J50cPEhfvrctbtddMS6e3mmjHc=; b=lWj70tSbXOMYeg
	hz/Lbl976qagNN7OhOYLzKR2Qe27obvwTI6M3aAFb7TBH2I8I5zwJKs1/twHtXjJ+1or7H81RKGsc
	mZwc06ylap0Chb7kW1tCCkdn0Xwydz1TqrAGM/G+8e6gYi2gWO1i8yocWYRmCgboX4+YgfACN/KSZ
	ngO00KusJTRTkyMcFT//n5XOLl6LN6XGpfPa3N3fush6qKXAaybCFSe9z7MRy1vYrxuBJQ+R02h03
	bzkdLs//3un5IE/XQunanst7j4Ju5tzz1WiGAn82my49HA7tRg3/gLQitAcsg4ux/LmyLmU1eBZyA
	u8FSPXe4596aeYCv+fFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qneDV-00EaPu-00;
	Tue, 03 Oct 2023 12:09:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qneDS-00EaPT-1R
	for linux-phy@lists.infradead.org;
	Tue, 03 Oct 2023 12:09:32 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 393Bpc3Q028840;
	Tue, 3 Oct 2023 12:09:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=G/4MBPeLY200xZ+Yh371H2bTPqxcF6fXuaPEQTWK+Zo=;
 b=ApSnC89QsgGKgSSy4ffFDyWAcVWeqhmZ/6gQNc8tSKcVm1MX+KohP0myQllKHApqDexG
 ummOVsEscZKoopvD+mLmmCCcTfJFmVXWOJ/+Ud0gDSC3imBy+mf97y5xS8mStH+n2K4B
 kcWV1PS5F5dkrqDDmiHlVQ75dub3g55kalGtnx2Mw98gOB6O/3mlSmVlQy92nGFEHG+c
 c56Vu7QLDXskV0PjtmQufYfk9ufXZJpOFMRD99QxfAFcDvB+WX5JE019gLKV+IRisfZ+
 sJvxtPtUQbIVtrpjtEDcwzAVoapx+9wLcnsuIWglX3JWwWkj3fX6XJsG7ZZasrWRGmE1 IA== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tg77es8qn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Oct 2023 12:09:21 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 393C9KcR009523
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 3 Oct 2023 12:09:20 GMT
Received: from nsekar-linux.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Tue, 3 Oct 2023 05:09:12 -0700
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <mani@kernel.org>, <p.zabel@pengutronix.de>, <quic_nsekar@quicinc.com>,
        <quic_srichara@quicinc.com>, <quic_varada@quicinc.com>,
        <quic_ipkumar@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH 1/6] dt-bindings: phy: qcom,uniphy-pcie: Document PCIe uniphy
Date: Tue, 3 Oct 2023 17:38:41 +0530
Message-ID: <20231003120846.28626-2-quic_nsekar@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231003120846.28626-1-quic_nsekar@quicinc.com>
References: <20231003120846.28626-1-quic_nsekar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: bM1SnIuXePsfXGmQOGhIaIHDyPWzzQZ1
X-Proofpoint-GUID: bM1SnIuXePsfXGmQOGhIaIHDyPWzzQZ1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_08,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 mlxscore=0 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 spamscore=0 priorityscore=1501 mlxlogscore=999 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310030087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_050930_621841_22AAC2F9 
X-CRM114-Status: GOOD (  15.33  )
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

Document the Qualcomm UNIPHY PCIe 28LP present in IPQ5018.

Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
---
 .../bindings/phy/qcom,uniphy-pcie-28lp.yaml   | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,uniphy-pcie-28lp.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,uniphy-pcie-28lp.yaml b/Documentation/devicetree/bindings/phy/qcom,uniphy-pcie-28lp.yaml
new file mode 100644
index 000000000000..6b2574f9532e
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,uniphy-pcie-28lp.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,uniphy-pcie-28lp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm UNIPHY PCIe 28LP PHY driver
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
+      - const: pipe_clk
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: phy
+      - const: phy_phy
+
+  "#phy-cells":
+    const: 0
+
+  "#clock-cells":
+    const: 0
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - resets
+  - reset-names
+  - clocks
+  - clock-names
+  - "#phy-cells"
+  - "#clock-cells"
+  - clock-output-names
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
+        reg = <0x86000 0x800>;
+        #phy-cells = <0>;
+        #clock-cells = <0>;
+        clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
+        clock-names = "pipe_clk";
+        clock-output-names = "pcie0_pipe_clk";
+        assigned-clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
+        assigned-clock-rates = <125000000>;
+        resets = <&gcc GCC_PCIE0_PHY_BCR>,
+                 <&gcc GCC_PCIE0PHY_PHY_BCR>;
+        reset-names = "phy", "phy_phy";
+    };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
