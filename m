Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2D34CAC580
	for <linux-phy@archiver.kernel.org>; Fri,  5 Sep 2025 08:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKfr98RImO/G7rBJfRhfvbNNAfCwuGKgartl1kcySjI=; b=ZDbUVdtS6GRXtP
	bZiSZ84CNxAc6y8AuWE+5l/lC1QiPgVJaFBWyBeOFiVBZhxDdGA1A3Mhv9qRPLObk1hfr5uZom7nZ
	J7P/PHIxlDCPzzT7PKE1cQhwsPYB5xmxLMMm+2bE/9tVN2XTtM3IN2WP//QmINyPVSpv8wMOWwmm5
	yZ3fZ9e3oBX/DPjPjh+0cZKDQHo6JK2Cxsp9v3r/eMOK0ZIA42FquhC34LZHvpIFf/OyFRMFZrNZS
	Qb2IsBxONYppYuc9n9/pDHU3PybqTjrgWUOjzBW2NoNhiYFIozupiDOTF95heJdoQmxKmCdqELKNw
	ShGepwcboWiCjfwUeiQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuRg8-00000000Jj9-2V5f;
	Fri, 05 Sep 2025 08:20:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuQfG-0000000HWkE-2lSm
	for linux-phy@lists.infradead.org;
	Fri, 05 Sep 2025 07:15:20 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 584IiOJ5022986;
	Fri, 5 Sep 2025 07:14:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=y4wgLO5n0l+
	xPn/xq5BFhXb2g/GYdbS3kdN1iZtMq7M=; b=pUCBDTWi6qGW0UZt+NVmvjLqhgW
	IhA0HHB1WjhkohuAgQc9CLyH9Ez5O8AU6U8JeQJT2lR4O3CcMvW3wmShB1/h9K/o
	excttbKVenso5s7+WH8sQHSyqTvOBNs/cVrle1O8KCcPKoDdjVAwZfkUaR/fidN3
	/1ZOc7kG5qyMo1nfk3JqTM/fzi4wAaGPDtg+wG4wysZKyL9n1blvYcXtvLnGHa2+
	rtc45PvSkunGdWEui+GY7MVZ7yWHuFQydIQgx32M2+gCBexEtvC8Z56cf8fts3/y
	6MwhUZiv+MRh52BaW/PGeNESTD997ueCPJemGPHYLrxwxNq1S4cmkRLXt8A==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0etd5c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 05 Sep 2025 07:14:58 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5857Ethk020255;
	Fri, 5 Sep 2025 07:14:55 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 48utcmr611-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 05 Sep 2025 07:14:55 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5857EtV5020239;
	Fri, 5 Sep 2025 07:14:55 GMT
Received: from ziyuzhan-gv.ap.qualcomm.com (ziyuzhan-gv.qualcomm.com [10.64.66.102])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 5857Eslr020233
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 05 Sep 2025 07:14:55 +0000
Received: by ziyuzhan-gv.ap.qualcomm.com (Postfix, from userid 4438065)
	id AE210525; Fri,  5 Sep 2025 15:14:53 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v12 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings for qcs8300
Date: Fri,  5 Sep 2025 15:14:44 +0800
Message-ID: <20250905071448.2034594-2-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250905071448.2034594-1-ziyue.zhang@oss.qualcomm.com>
References: <20250905071448.2034594-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: gFcEm4YDd4Qdji8w3k-Tndxu_eLta9JV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX1QIxq5u6fXkd
 pTLv2QbhwUBzKvKn9klU/AFmOmw8OUFshst7qUZy1iUBkDWn1tRLlh9cAicC5TQsGfL27w+TXXw
 MmO7chvzHa87/0FNkC3Ds/NCgxIQbvFMoReJ/Xs9PCsNtBUAnzGX6pvf8HUBIab9S6hPmvL82Ra
 gD7dgvTfXXwMvyevlS2pJSAkk1N3sHcZUkvEefQHeIWM/ApjT7bDmwHgvZugs8G4yukWcoEvgwL
 3JAp58Jt1nRz2MP0ZYX/FTWWfAn8uCo1EBN6FGQ5jLJNvtkao9kaOrYsmmAcqzPsZm6HTeu6JGU
 +Q1qtVThVEFa5kyOx4b2b1XFo2dAjN0FCas9MG9MErxOM3FeFa609y3EIg9Rr05wQejdlgTeEKK
 41oCXmC1
X-Proofpoint-ORIG-GUID: gFcEm4YDd4Qdji8w3k-Tndxu_eLta9JV
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68ba8df2 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=pixhw7HmqKTquG-jXeMA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_02,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_001518_708862_27AA98B9 
X-CRM114-Status: GOOD (  11.48  )
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

The gcc_aux_clk is not required by the PCIe PHY on qcs8300 and is not
specified in the device tree node. Hence, move the qcs8300 phy
compatibility entry into the list of PHYs that require six clocks.

Removed the phy_aux clock from the PCIe PHY binding as it is no longer
used by any instance.

Fixes: e46e59b77a9e ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS8300 QMP PCIe PHY Gen4 x2")
Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml  | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index a1ae8c7988c8..8293a10b1324 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -54,7 +54,7 @@ properties:
 
   clocks:
     minItems: 5
-    maxItems: 7
+    maxItems: 6
 
   clock-names:
     minItems: 5
@@ -65,7 +65,6 @@ properties:
       - enum: [rchng, refgen]
       - const: pipe
       - const: pipediv2
-      - const: phy_aux
 
   power-domains:
     maxItems: 1
@@ -176,6 +175,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
@@ -196,7 +196,6 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
     then:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
