Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6545EC7EE33
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 09:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1NybgL0PdGGWKDWp+S3aMpc2SEBJ+4cNPPNi8+hO9Fc=; b=UMM1Hzt9f9oYFI
	gfk76Y3lOWCNmo3aFnWMEAeLZz6m4OPmldzWQERF9YvvUqO5Dmt+fGUbYX8XSPhXnLekfAScQ6K0O
	Zj51dkLI3ME8+SyRJxCEaKk2hU26QdDwivkcT1hHTd7fpIa3TFfN55tqTopjBwrCSwxt6cXJxbRnn
	O0p6DvgTtqQvqixjf2VSr24nxEyNIudTsBfkY7dMnjFjIYZej9JOQGcG3BUmxtBwC5eDSdRlQdsux
	VpTZO4mP0W3vnh6qkO+og8uhbNhEiLfz2ljO+OQMMMAQfV334iQ3i9rSN1vjoyPZQuv+54EDVy9lq
	7QDnnR7jR6xh72Q7ZPhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMqL-00000008DvX-0L66;
	Wed, 25 Jun 2025 09:55:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUM0M-000000083Zt-0w8j
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Jun 2025 09:01:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=VUygOxBJHK/NDzL4Dxb8pxQPxA92Z5RmjWqw+TNHM0M=; b=mk7rAtrPGFJjS78DWgvQQNeElK
	iti8AY386SANx/z9zjuZxuoumjnQex5QTABvlRa0+GkBHjOrmlmKqt8oYCmc7JjPp3K0QRWjX2sjn
	i4hcHg9bs7hRmqY/OTsjFmm6/4Bn4wjS8ntaZ1Itr4+VgrFO80XvNYSfjHEXd/ykoR8u6png8aIej
	YLai1ejkNbo2t8jH2s8bI+AUwzLgKKHsKtR6bLWTWtbUQ1o1T/jD86u0ekqjOUBkEwgZBHuK+ZKfa
	PWTWxOI+jVKDQjlbsYPiLWzT0tQdEP1zQpc3MrLtqSfHuTV1+bMU3IPhP6RRXXHT4H2RAYEcTvued
	Zme+q6ag==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUM0J-00000005iHz-1OJj
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 09:01:17 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P4KKf9015714;
	Wed, 25 Jun 2025 09:01:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=VUygOxBJHK/
	NDzL4Dxb8pxQPxA92Z5RmjWqw+TNHM0M=; b=ab8rJEaOMV/441ygzuoh/iFIZGy
	Cs1CZTud5BN1eqUgs7xbzVA7B8XaKWJurjIfGzpR4qZnivbYD4eia+Cg06gmIMO4
	1ipbJ6/+Eayg1BQA8HWNxQXS7ezADaG/TjoCstNyctNJoFce+cGcqe2JFKg0tARd
	M0m8nen4rJ5TDfPVISuRfw4S226Q6+AadNIeUUYNAQmcMIPPMaSJadIsEVWc1cq1
	UU3xK7ciZoYNF1QIbgRgjxNN6Sg2y8T0Q8Y2hAoU1gHmol/qWMO7gGHzb2mmPjWU
	FSZKn7IBovNOTaRRrVzCOvlfu2hFHJ2GiFvwfdoNnPm2WQaPsVQwHBCceAg==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc5r9ch-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 09:01:02 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 55P8w5C0016614;
	Wed, 25 Jun 2025 09:01:00 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 47dntmas9j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 09:01:00 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55P90xbK019589;
	Wed, 25 Jun 2025 09:00:59 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 55P90xRg019581
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 09:00:59 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 14B6B3832; Wed, 25 Jun 2025 17:00:58 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
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
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v3 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
Date: Wed, 25 Jun 2025 17:00:45 +0800
Message-Id: <20250625090048.624399-2-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
References: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: xv0abv4vbBCXzenI9ww500KkJ_TD9ng6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA2NyBTYWx0ZWRfX1OsFW4+hhhPb
 Pf9p9xKa8jLpsDIaytzBDRqwI+9AV1S3qxqbKkcM+7qjh/VCy0IFLX5GjECtiNXzeNwCMo1jSiJ
 U35F05CwkC01TP2IFx2PO6f64ZZ5broO6lChzRgFVjJMu8SEUZ7nRbwM+I6iIQql/l3B4F8WHxN
 FgWlHfRPixTxY7ufv51FXlPKclQVqB+XrPFnNBs/epxvn4Lxf1L8aBMw7TQtrFDf1d9ty6jKyQg
 JtmkGlJBoh8AAORdnUv7zti5xESQq0FEOlK4T3HSABubEQXWqiHVymGv7Ma7JXBQtoZnZwyr7uq
 StNON3fRjco4iypPbqzL0yfx41Na9IUNA9B4KMkYGxTstgHdYIbX8UUfk86As8xiovxMd4H686r
 V8T/6L3co9FExp1j4jZJzmS/hWGumAK6OLRqGjCHKyuzIth5C4p2MXb7S46HFIf/5tSc7OVF
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=685bbace cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=MFBqe-ynCY-DoL1lFewA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: xv0abv4vbBCXzenI9ww500KkJ_TD9ng6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=999 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_100115_935611_5DE387BC 
X-CRM114-Status: GOOD (  11.14  )
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

The gcc_aux_clk is required by the PCIe controller but not by the PCIe
PHY. In PCIe PHY, the source of aux_clk used in low-power mode should
be gcc_phy_aux_clk. Hence, remove gcc_aux_clk and replace it with
gcc_phy_aux_clk.

Removed the phy_aux clock from the PCIe PHY binding as it is no longer
used by any instance.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml           | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 2c6c9296e4c0..57b16444eb0e 100644
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
@@ -176,6 +175,8 @@ allOf:
           contains:
             enum:
               - qcom,qcs615-qmp-gen3x1-pcie-phy
+              - qcom,sa8775p-qmp-gen4x2-pcie-phy
+              - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
@@ -197,8 +198,6 @@ allOf:
           contains:
             enum:
               - qcom,qcs8300-qmp-gen4x2-pcie-phy
-              - qcom,sa8775p-qmp-gen4x2-pcie-phy
-              - qcom,sa8775p-qmp-gen4x4-pcie-phy
     then:
       properties:
         clocks:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
