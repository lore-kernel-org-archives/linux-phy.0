Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF218E7717D
	for <linux-phy@archiver.kernel.org>; Fri, 13 Dec 2024 13:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=waGoRmg6KE6sWTmIYLNQYVK/k12elBL0VqjOcHwnX2M=; b=Ir2EbPOseB8B8p
	RktY1QuBvhm0YteU65ZI7VgJoWqYahezDVkCwbFT2TXw2db7p6PRnQcr9R2JvKYt9bAt1vt5BlPUR
	l2POHRH5QVnzFEL7P6rNl92v4L+KmGN6xR4lQJUESiJaZx5k932QonJJ1uUEQ5gUDn7Ql0AvdrU6t
	TjRCGEl0Ki4EEgDEQqUrfvJ2RrzFMmIWfbf/kuVL0EGTkM/VqHyB/DlbHoq6uZdk2VhWrjhjGJSoY
	2SFGEa8xUwXb8VnybtE4fH/O2g6urAkL/QoDkwQ4BOK5niwxoSZkYe9lKimDmXajm4xjJt7v4sddV
	0glLMa0iDu6TtqwlrgNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM66y-00000003u6h-1sLK;
	Fri, 13 Dec 2024 13:53:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM64S-00000003tGh-25Y2
	for linux-phy@lists.infradead.org;
	Fri, 13 Dec 2024 13:51:09 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD9Zpj1006041;
	Fri, 13 Dec 2024 13:51:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tPxQLS6L9qg4PnYBRfZP6c11YFbfwHkjvedsJyuKDtk=; b=AjB2TWVtbq4Wi6yS
	DXr232mx1W3zMm+inV9lI4wOSp4hQsPR+VADeE0LKseMCB9AUg+AUWvfpwG72J24
	eDO2aitGTyWOQqFH+hb2RZaSrfAWPV+DQML7Su8ydHUR1tuALesjFxC5kzy3N9XV
	NHK1nYJ07HVjBE3q8T+bx0Nd+mwxcNbePdeaSvqKp38PbEe1eRzgdh1Tw0Sjamir
	n+ridMYugHSUOvzbOhNotEJDFUHIKlW6vNUvCXgr+xoBOw1JuEAdAH+mBMMs8hU+
	NCQsvH90vl3fYnIF+FmrgSpZxc+4LUfdoRf7WAQNQvhUZyMLhRKVCKtLk0qGJrRt
	gRgHEg==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43g6xutawa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Dec 2024 13:51:01 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BDDp0F1014645
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Dec 2024 13:51:00 GMT
Received: from hu-mmanikan-blr.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Fri, 13 Dec 2024 05:50:55 -0800
From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
To: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>
CC: <quic_srichara@quicinc.com>, <quic_varada@quicinc.com>
Subject: [PATCH 2/4] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document the IPQ5424 QMP PCIe PHYs
Date: Fri, 13 Dec 2024 19:19:48 +0530
Message-ID: <20241213134950.234946-3-quic_mmanikan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
References: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 8K-98vrUQl7pTPSfJ339j17zbYxGDDlz
X-Proofpoint-GUID: 8K-98vrUQl7pTPSfJ339j17zbYxGDDlz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 clxscore=1015 malwarescore=0 adultscore=0 mlxlogscore=999
 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_055108_648927_F4D8B8A2 
X-CRM114-Status: GOOD (  10.72  )
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

Document the PCIe phy on the IPQ5424 platform using the
IPQ9574 bindings as a fallback, since the PCIe phy on the
IPQ5424 is similar to IPQ9574.

Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
---
 .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 21 +++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index 58ce2d91d28c..f60804687412 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -15,12 +15,21 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,ipq6018-qmp-pcie-phy
-      - qcom,ipq8074-qmp-gen3-pcie-phy
-      - qcom,ipq8074-qmp-pcie-phy
-      - qcom,ipq9574-qmp-gen3x1-pcie-phy
-      - qcom,ipq9574-qmp-gen3x2-pcie-phy
+    oneOf:
+      - enum:
+          - qcom,ipq6018-qmp-pcie-phy
+          - qcom,ipq8074-qmp-gen3-pcie-phy
+          - qcom,ipq8074-qmp-pcie-phy
+          - qcom,ipq9574-qmp-gen3x1-pcie-phy
+          - qcom,ipq9574-qmp-gen3x2-pcie-phy
+      - items:
+          - enum:
+              - qcom,ipq5424-qmp-gen3x1-pcie-phy
+          - const: qcom,ipq9574-qmp-gen3x1-pcie-phy
+      - items:
+          - enum:
+              - qcom,ipq5424-qmp-gen3x2-pcie-phy
+          - const: qcom,ipq9574-qmp-gen3x2-pcie-phy
 
   reg:
     items:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
