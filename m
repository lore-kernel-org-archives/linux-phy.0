Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 162BBC4167B
	for <linux-phy@archiver.kernel.org>; Fri,  3 Nov 2023 23:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/Du2ADCZ+ssB/83QexyxHCAfGVXrmujKBw6UNe+36WE=; b=F9APCTeCAiylzN
	QXln7o6PZW0pAdh1m01jFpWQuSIVrmZQ22S/iyzt5BM3nMNdCKzdtVYcKEbx5j4c15kt2a9UGcwV3
	aZCA9Y/Qhj1ebk21GcgM+URxyQnI0QlwrM33B24jg8VRZ98FX7CCTKgbwJNBoE1h2CE4kot1z2SnM
	bol7CYOdGSNgg5558hzuHnWTScQc5jB6BjHaRyD7QUdPvsdcIRvU/a0mD5nHVklIV8fCNZNvavdqP
	4Mp70R5zzRTRHD/IBYnIRcleUYAaqh8k6Ou0xwUvIBNByVZfsgbRXDiJShr0aWTm8aBdP4AFAtpY5
	wZ1r8PCxl9Dli4ev8OWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qz3DM-00CITn-2a;
	Fri, 03 Nov 2023 23:04:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qz3DJ-00CIOb-2u
	for linux-phy@lists.infradead.org;
	Fri, 03 Nov 2023 23:04:31 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A3MbHOt023566;
	Fri, 3 Nov 2023 23:04:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=qcppdkim1;
 bh=s8knxBMKPMNJo7nmqH7ZsdW49wpVdAq1zGXBk0t/Zdc=;
 b=bdMPKHKhLzFqiFqts9um4XlXPnh13tR/ScY467LYC7NLxn4kdNCHZ5A29uZq2RRAfXcy
 Isk9vc8tVH7BT3yldRy6PmKMc2SaxvKJFgOBn2DMNexscDeWlq0QomBCyxUWV1mSX5E3
 G8l9oUBYDA7Eom2pr4im5C7CxnZqeTN4gMlX5k0V2EZSdDJihYqY1PJULZeDteHEpT9E
 UMrd/hXPJRE8rr5yhqcDrD1XWtE1UOBxD8ZjTI23wrOna+KgKlM1SnptsA0TbDwCnkV7
 PgIqNxhCQ8RzDVH/mmljf+A6EjtEsl2i61RTE9NuOYn1NWutJP0VaG9i72ozURFLC+Dm wg== 
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u4ss9a4nt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 Nov 2023 23:04:17 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A3N42nZ031186
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 3 Nov 2023 23:04:02 GMT
Received: from hu-eberman-lv.qualcomm.com (10.49.16.6) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Fri, 3 Nov 2023 16:04:01 -0700
From: Elliot Berman <quic_eberman@quicinc.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Elliot Berman <quic_eberman@quicinc.com>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] dt-bindings: phy: Document sm8450 pcie phys as having 4 clocks
Date: Fri, 3 Nov 2023 16:03:38 -0700
Message-ID: <20231103230339.966792-1-quic_eberman@quicinc.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: JOQdTbWey_jJ5HM3MDQENUNPr4Hi7Bye
X-Proofpoint-GUID: JOQdTbWey_jJ5HM3MDQENUNPr4Hi7Bye
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-03_21,2023-11-02_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0 clxscore=1011
 mlxscore=0 mlxlogscore=815 suspectscore=0 spamscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311030196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231103_160429_947380_B9739B78 
X-CRM114-Status: GOOD (  15.01  )
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

I noticed while running make dtbs_check that
qcom,sm8450-qmp-gen3x1-pcie-phy and qcom,sm8450-qmp-gen4x2-pcie-phy have
4 clocks, not 5. There was also a typo for the 8450 bindings:
s/gen3x2/gen4x2/.

Update the bindings to reflect the correct number of required clocks.

Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Fixes: 505fb2541678 ("dt-bindings: phy: migrate QMP PCIe PHY bindings to qcom,sc8280xp-qmp-pcie-phy.yaml")
Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 2c3d6553a7ba..1768f2016a9f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -128,6 +128,20 @@ allOf:
         reg:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8450-qmp-gen3x1-pcie-phy
+              - qcom,sm8450-qmp-gen4x2-pcie-phy
+    then:
+      properties:
+        clocks:
+          minItems: 4
+        clock-names:
+          minItems: 4
+
   - if:
       properties:
         compatible:
@@ -143,8 +157,6 @@ allOf:
               - qcom,sm8250-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-modem-pcie-phy
               - qcom,sm8350-qmp-gen3x1-pcie-phy
-              - qcom,sm8450-qmp-gen3x1-pcie-phy
-              - qcom,sm8450-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
     then:
-- 
2.41.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
