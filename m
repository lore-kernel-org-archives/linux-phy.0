Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AB10C87FCE
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 11:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQRyjSpQcC52+v3lrROO+sONea7nRYSwBcCy4RsQTv4=; b=k4hIoq8CtkO5Kv
	a07ykqDGVXCBqYn7F/6POmwoIRhC768W5vyMsXmC3+LnhiakVQ4RypGp/55k4uNi1TD2r9MtLjt9o
	OGjIkZHahNrJNVv/D7xOLDi9Z2sOQ4AZZlxvS95T7jNI8gDBZLedR3ER0q5+vEoYKzfWWEAXXbpEh
	f5PCWQy36bBQGn20SbWkls/tYnsRsfaAwjA7Wm0tX2dIR7UV2rGI6+vqg5g2Nj7nBOAogGExZCRN+
	6EVH2CiAH3Atdz2JC5H133uaFhkP4LF9PcJj96CCj0jNO+Er7TAi8qCfA8ZG32YUm/j7akwgpAptv
	g3C9JubKhydErLiy8pQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufGTM-00000009hEY-1aov;
	Fri, 25 Jul 2025 11:20:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufFr9-00000009cZg-1KTJ
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 10:40:52 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P9Ok7o004423;
	Fri, 25 Jul 2025 10:40:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=AjIuyibCMRD
	Lh6aTCToMaAPFDddr55WL594pQrVHxz4=; b=AxJ9tgpqKlliTPtNOwhFuicMYAg
	1j5DZ2aVTI2o3HZpicKNGHm8QVCyDpTgtOvVS1LpLOnPdONX83wBwVNhKMPf7mAl
	Kmy7TIEXsaJYYiX8Hzo7PJz/OFZu4CDKk5CscALiBdIu6pzq9p3pwlWEsSEFbF8z
	G0VTmW94ug2J4zZWb9msoQNfDTxu+phBFk6buOhZMroO3eBwRTSMywYekXC3aat2
	q1iW+YmfHs4vPW+jZa6+tEEkOs18+j1oB1hS4rtOfZFzQZyZMNw9HYGT5aScRHly
	ee/h4ynKCcldnlAju8qdzVVz28v+y0bzAvVdNLG/DRaUz5DJw768OfTqHaw==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2kssyb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Jul 2025 10:40:44 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 56PAeg7Q017159;
	Fri, 25 Jul 2025 10:40:42 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 4804emtgty-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Jul 2025 10:40:42 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 56PAegcL017148;
	Fri, 25 Jul 2025 10:40:42 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (cse-cd01-lnx.qualcomm.com [10.64.75.209])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 56PAeg17017144
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Jul 2025 10:40:42 +0000
Received: by cse-cd01-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id CB2F12112A; Fri, 25 Jul 2025 18:40:40 +0800 (CST)
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
Subject: [PATCH v9 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings for qcs8300
Date: Fri, 25 Jul 2025 18:40:33 +0800
Message-Id: <20250725104037.4054070-2-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250725104037.4054070-1-ziyue.zhang@oss.qualcomm.com>
References: <20250725104037.4054070-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: jJg36tIGD73ZUNNf7q49W4wWIE6tkD3J
X-Proofpoint-ORIG-GUID: jJg36tIGD73ZUNNf7q49W4wWIE6tkD3J
X-Authority-Analysis: v=2.4 cv=QNtoRhLL c=1 sm=1 tr=0 ts=68835f2d cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=pixhw7HmqKTquG-jXeMA:9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA5MCBTYWx0ZWRfX3C7CKG3YIT7Y
 04jiL1i63x6NZZZbAqYdbhUKMtDgol9xWFvRmbTEQZ3qbSP4rrVc/xdZt0DeZ8v65r78pNHxzr2
 pncD9TeKx5Gdp63zXRHbSRuLet4msuuvRF+MfB3lTKTGydCMRs/JeHKWZ0B8EifxuitFs/Ocx5w
 mgSuxd3X3wrcjhqH09UJp9kR8eMKUoc7L3ZISqXH6yrjHM/IxXMPJvfCfHP90q9n1//s5Jsl1kz
 1/1VK5UxhTS6LWtPnKNv6GXZW0TG9VPmtibb3NbKyFakMOIHHP+5qPp7qDOxUp8+LknEL0bMA9u
 0xJc38rS4X0YsLR6jYghp2xYdNZlWJvAqJjEwjDJ2mlxbh+gYDGomOY373Si5C1qXWY4Sz29W14
 yhhV1Ck4cNCvzmWwKgUs95b9C3D+VrDxzDYNn8eLI1q49t1XizWl78khi29DuC+aLLiwkL/y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0 suspectscore=0
 spamscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_034051_361028_0330C752 
X-CRM114-Status: GOOD (  10.69  )
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
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml  | 15 +--------------
 1 file changed, 1 insertion(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index b6f140bf5b3b..e04d5940a498 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
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
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
@@ -193,19 +193,6 @@ allOf:
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
