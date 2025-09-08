Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8C2ECA1016
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 07:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezv6dL8owVt5CzODslj0PlUGVKXG6M5XGM7vT1dwNUk=; b=rksih6bX2yi3Gs
	/R19CfOF06I9jJCNITX9f66zQRRr6wOamRoBv6UzQJBJAx5m1onVzSplzY1WTX7PC33C88yTF6j1c
	qrVqxUcRlsbOIpAIsiI5L5v5heRuIxdZhkTwBHs6g9lf1cD+ew/z4ooVQlAnUxlygy4ot0TmPdL2u
	lrHS0/P+oyyspAvkHRwwVvRe4VnZGqfv1MrAuOE00qXfW35HRO2EJQ0u9aMpDJN5Z7IfDZIokXrNg
	4AocoEIQraGwj3X9SNQQsmSm/N2yaohQLGJD5LK0tWJM/YhpE1FMxow6BpQyR+jWjKeLecD95k7w0
	NdHytZA7jEVXKQgI1NTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvWn6-0000000FWZl-2im0;
	Mon, 08 Sep 2025 07:59:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvWSt-0000000FMR6-1S57
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 07:39:05 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5880U2v1014776;
	Mon, 8 Sep 2025 07:38:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=E+yteV4Orin
	PgcCHtwyAjSVh13EDITb3v6HeXfin9xk=; b=PkI1jnpM7TLlbKQIG1eZ5QJD0PL
	PrjNwjt6QsadE6GM5dIOIYY8RYwXNUvpbR4T/feKkB2H94aOEddyG3FxtJ1pHZxS
	a5mduGAUX6CAstv+IrZOAWmv1/V6Zi8IldqwdLsdJUIsVSkqJmdBsts0JupMbMRt
	htvRwkGb6F7WkelAJfzB9cJi8e7GhrihNHAz6ip1+zRQUKVCKP23BqODzHJeqNEZ
	Cj6edgp7a80EcnNX2u7FwgPBkPg6uD4boCq9jIkILkYfsAYf+L30ScAl04XomyMw
	CjJMKzrpoJsb4aGj1guXRUCCt5nsLJmhJh0GWRWGA+8WhJotZ+fhj9O44Ig==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bws3r54-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Sep 2025 07:38:54 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5887cqfu026230;
	Mon, 8 Sep 2025 07:38:52 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 490e1m83dd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Sep 2025 07:38:52 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5887cqui026214;
	Mon, 8 Sep 2025 07:38:52 GMT
Received: from ziyuzhan-gv.ap.qualcomm.com (ziyuzhan-gv.qualcomm.com [10.64.66.102])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 5887cpOR026209
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Sep 2025 07:38:52 +0000
Received: by ziyuzhan-gv.ap.qualcomm.com (Postfix, from userid 4438065)
	id 4CD72524; Mon,  8 Sep 2025 15:38:50 +0800 (CST)
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
Subject: [PATCH v13 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings for qcs8300
Date: Mon,  8 Sep 2025 15:38:43 +0800
Message-ID: <20250908073848.3045957-2-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250908073848.3045957-1-ziyue.zhang@oss.qualcomm.com>
References: <20250908073848.3045957-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: qT8XJsQUjWfwTzgYe5ByI8AiqJKjdNBU
X-Proofpoint-GUID: qT8XJsQUjWfwTzgYe5ByI8AiqJKjdNBU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX7aF0+fpzWcQM
 LNUKJ4688Maw5gSV+YzMtypgYBB+TKVMdi3kKxdt9jmm91s91vzUJozWyAACkGQ5c1mk8rL6DYC
 ahzB9K+HyyAJVd4ZNm1k5+PnYrfJ/djp80VM9s0g8I2A8hSgb+aYMQOzeiRqYcbwF8V5xXVhqFF
 z6kN4YReliwjHuOM0DoVJJkaWBlruMRPBWstgFi/aW6fmxG3rQPrd4RlBJGBv3bykEIwIE20wuM
 biOteIxgK2uJT237EWl0xtOg9pyKDr61+bE8DCM5PBghXTXp5eM4sloLQpomQ3PjqDYib5MrSKi
 hz2KMwjbN4CaTQxHCZ6BLupT4SIIhzuVQuOZJnFzvh0ohARJs39o/TF8BkBw1DI6YJeLIsohzPx
 PtXFkSNP
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68be880e cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=YhLpWKUAjgHs1wdaIGUA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_003903_465979_EAE42C82 
X-CRM114-Status: GOOD (  10.98  )
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
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 119b4ff36dbd..d94d08752cec 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -55,7 +55,7 @@ properties:
 
   clocks:
     minItems: 5
-    maxItems: 7
+    maxItems: 6
 
   clock-names:
     minItems: 5
@@ -66,7 +66,6 @@ properties:
       - enum: [rchng, refgen]
       - const: pipe
       - const: pipediv2
-      - const: phy_aux
 
   power-domains:
     maxItems: 1
@@ -178,6 +177,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
@@ -195,19 +195,6 @@ allOf:
         clock-names:
           minItems: 6
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,qcs8300-qmp-gen4x2-pcie-phy
-    then:
-      properties:
-        clocks:
-          minItems: 7
-        clock-names:
-          minItems: 7
-
   - if:
       properties:
         compatible:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
