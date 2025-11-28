Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7494D116F8
	for <linux-phy@archiver.kernel.org>; Fri, 28 Nov 2025 10:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTfLlrSbkzyhP4efdpA4ri2yQGP8QyliLa+py9EXBD8=; b=SpyzTPomQuks70
	TCgNGhk28WeLQlXmnqqE5tyGBlnlnyAL1ZBtXmD4HwOygCYPSPVZluLjYiY3Jh7n2nJWI/ZvgW80K
	eYrJUV76xVxhnS25tzrHqjnpw19FHP9lAEYWLbD2uqI0FRzu70q0WEZl9qcGXKF0PuUG2eHGTrdyC
	TL9Lp47yFuoD2ODG7j0DaCPx2pwCDnbqpRri6MfiUZmY9o8Lzk8Rvt+Gu2h4ndh3qx+OEvd9k8YL9
	UDNFEIIv0fCYru++y0GgN6wnSRagbIFcGi01925y2gBDqfWsE/FhrTYzAEPXEaSI3XFCf/KlWng/Z
	JFiAgmg4aUhprt/yCKDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOw2w-00000000Jt0-1lED;
	Fri, 28 Nov 2025 10:49:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOw2r-00000000Jp6-3Z5e
	for linux-phy@lists.infradead.org;
	Fri, 28 Nov 2025 10:49:48 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8OpfS3621167;
	Fri, 28 Nov 2025 10:49:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=VElLRbxklZO
	vS8HJ233/GcrnQyZcNK5/ihR1WIk5nZw=; b=fiZ/dvOo1b+1fi6BKctS05Zh1J5
	dC6UlsoXPPXfevMiUIMwEQrcspSHBYxAg7OESxdsPW15Q0313C3ufRccaHKAC3jR
	SXp/XmSFTym2UEd4J1niS2ZWxcAj/oZgW3/pRxAIJf+sJKe8MVpB7pVIW70vywZr
	HOoc03nZDJPk4zgeshflm6d1suuIqKcfR3clZQna6UK5YuE6M/vwOQqnfVip0u/Z
	HOun9KJEw0uo3EljphiR7Sq/u+mvAcBd9d+NTT3yuXkUINFfbKiG/7d9Jry8Rlqb
	dPDrc3phW62/fuEQH2VuPMA5+Q5jBkEcquLImprHdHZP13CCUiXCK6XW66A==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apmjdb4b7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Nov 2025 10:49:37 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5ASAnYqm000879;
	Fri, 28 Nov 2025 10:49:34 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 4ak68mvqhk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Nov 2025 10:49:34 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5ASAnXug000859;
	Fri, 28 Nov 2025 10:49:33 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 5ASAnXMn000851
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Nov 2025 10:49:33 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 1BC32520; Fri, 28 Nov 2025 18:49:32 +0800 (CST)
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
Subject: [PATCH v15 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings for qcs8300
Date: Fri, 28 Nov 2025 18:49:23 +0800
Message-Id: <20251128104928.4070050-2-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251128104928.4070050-1-ziyue.zhang@oss.qualcomm.com>
References: <20251128104928.4070050-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: nsGnfulsiCnUYQfKbhuCmDG1mufg-V4I
X-Proofpoint-ORIG-GUID: nsGnfulsiCnUYQfKbhuCmDG1mufg-V4I
X-Authority-Analysis: v=2.4 cv=OPcqHCaB c=1 sm=1 tr=0 ts=69297e41 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=YhLpWKUAjgHs1wdaIGUA:9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA3OCBTYWx0ZWRfXydQOugb3lUZU
 JWv4eoNvkxg7JqDs2f5jfOunvR16hpmUWMumjbg8yoTun37okvMVIDaqqj/CAuujHbAYJ2prTyR
 dyEt4t1znFKUt7gj3ENEPyfLO30ygri+5DfErNNofX5NeAkZoDZCMnWS2bqF3qiD9+KtHKAcNnV
 pzPuEU71nXrokw2SaMPwXO2lRqqrQ8S5xAM15PFtwE5RnvmXOXjVgaPblmhVPlamqVNDcxcD8e4
 vcWu0mkAGOg141Msz5VXmxm0emsShPzWFw6oHeQjCXTZGYyactu7IUdtyZ0UsrT8SjQ4MfbfjhO
 valeoJ/z+RronySSORZ1bZgG/sU/cLOd+Q9exJrYnz7wLtnJYspoiM63ikYO9oykGiOI4fMdpKT
 x5vRFAk9kLltd8HetdEsLY5bI6QFtw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_024945_893583_BC84C5D2 
X-CRM114-Status: GOOD (  10.32  )
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
Acked-by: Manivannan Sadhasivam <mani@kernel.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 48bd11410e8c..f5068df20cfe 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -56,7 +56,7 @@ properties:
 
   clocks:
     minItems: 5
-    maxItems: 7
+    maxItems: 6
 
   clock-names:
     minItems: 5
@@ -67,7 +67,6 @@ properties:
       - enum: [rchng, refgen]
       - const: pipe
       - const: pipediv2
-      - const: phy_aux
 
   power-domains:
     maxItems: 1
@@ -180,6 +179,7 @@ allOf:
           contains:
             enum:
               - qcom,glymur-qmp-gen5x4-pcie-phy
+              - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
@@ -197,19 +197,6 @@ allOf:
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
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
