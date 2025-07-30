Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 354FEC87FCB
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 07:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RFjiJh4rh5gRLFaNcY8UcyIrg5hEyEKMx1TgcRC1ExE=; b=sa2jLI+LD26jHi
	DlcEHn6A61i9W1nOJKaG+cg5M77mr9DxpWa4fnjFuRZxyKBRcwYhmfqySNKtSJkKbSsXJ9yvxxxDP
	hUk/Vqn2KBr30KCVLjPEG0drMsbsYv8dhD2rzK1AZP+K8krxTV0gPqFj542ZwBZUKPc4US+s+U7Xy
	IfSLR5hADv5QCnnkDSpN25MFY1+9Ag2uPfj68O5k/FjwQua7HQCClb6oz8EPwmC4H4aS6IDyqdp73
	m2Vxvjrn1tRT8PqJVfZebeambdm1mEVMBa4Bbfxg5TzqoNDkZxSVPcYXvTKyqWyDBcJXQnXWkKs1S
	eD8tziAO8AwgkVLfQaAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh1GP-00000000sjX-34F7;
	Wed, 30 Jul 2025 07:30:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh1FR-00000000sdV-2yAZ
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 07:29:15 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56U5ggDs017481;
	Wed, 30 Jul 2025 07:29:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=IY2gWL1+FPISpzXUYxlmfN
	YyXNSkWMy9ApA1vD9WqQc=; b=DW35AimMBLuIjN9lu4Yvbeinxnt553HVKoNwVz
	i9cRpxZ/EixDafxpGZKFN7P/8ZJ9rpYq1jpSaUJ6WJwS3rAq7147hMZdA2bYWO5s
	xSrL9WCyDpbEOe55rX6kUf5fvOH/EbZ6wMR/Qd10V4OJ1Na2KqTX3AHpmKTYkdxF
	kzsCje0tGdFXQ8WZD+jJeCBVDKCbWMIkKnm/0hsATT0vPW9rpYUGSYp74mzkat6C
	hFZCw9hwCr0zKiX8e7Mysnu8Axb7H1XkZ9acijYUAFwWxV72UZh3otNTtCK80N66
	gPJLs7qUztjWj+bwinYRZH4D5UMW/vH/3BGnIylUrHkCOCiA==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484p1ajrs4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Jul 2025 07:29:08 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 56U7T79x010408
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Jul 2025 07:29:07 GMT
Received: from cse-cd01-lnx.qualcomm.com (10.80.80.8) by
 nasanex01c.na.qualcomm.com (10.45.79.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Wed, 30 Jul 2025 00:29:03 -0700
From: Yongxing Mou <quic_yongmou@quicinc.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <andersson@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Yongxing Mou
	<quic_yongmou@quicinc.com>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND] dt-bindings: phy: Add eDP PHY compatible for QCS8300
Date: Wed, 30 Jul 2025 15:27:25 +0800
Message-ID: <20250730072725.1433360-1-quic_yongmou@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: NKrGXozUY7lmJ3T_S6uTyBS-dsbNDeU9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA1MCBTYWx0ZWRfXyfGu9lD0Q8xx
 LPbHY64ejBzwQmL8ZKwQG89XQw3j2LA8M451lKju0+Bh5IkzCGiNwbm4ipimRNRbatyFkvFE7+v
 /sSq7VJ6y6iDQefrwhrn7xNUwCe4ksrdiyk6uUJlti4y8+9jzeq3gdVdh6DdM4R6USgTSi2x16f
 h+OMybbjyG5VMPWfzChMF9QG6/N2R7vjKkXsQZiC++w7cYiJffRn3iAK082AzKSj+iDPkeRpUIu
 idk7A6vBG83dyXcuJ7jjBgPbVrNn8EybppmWuMuTZZNEI65NVy1xNGzh57yxI/w/TfHxa5Jhxsg
 KZ5IuyepmJYVrj+RRSmT5vRIo6Z0vObNFc4eL2tHkquUnSOzb0al4l9oKsufFEPDjm1ccCZbMGM
 Lk583oiTk2O+KSe1fJmx4Rfb0ATIPuM8dGQhuiymjB9fPav2m+hl3rpFOvZ9PLJrRJDiX55R
X-Proofpoint-GUID: NKrGXozUY7lmJ3T_S6uTyBS-dsbNDeU9
X-Authority-Analysis: v=2.4 cv=KtNN2XWN c=1 sm=1 tr=0 ts=6889c9c4 cx=c_pps
 a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=GEpy-HfZoHoA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=O5udsO39-F6e2CSdgGgA:9 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_03,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 adultscore=0 mlxlogscore=999 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_002913_862843_AC778EDB 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
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

Add compatible string for the supported eDP PHY on QCS8300 platform.
QCS8300 have the same eDP PHY with SA8775P.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
---
 .../devicetree/bindings/phy/qcom,edp-phy.yaml | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index 293fb6a9b1c3..eb97181cbb95 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -16,13 +16,18 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,sa8775p-edp-phy
-      - qcom,sc7280-edp-phy
-      - qcom,sc8180x-edp-phy
-      - qcom,sc8280xp-dp-phy
-      - qcom,sc8280xp-edp-phy
-      - qcom,x1e80100-dp-phy
+    oneOf:
+      - enum:
+          - qcom,sa8775p-edp-phy
+          - qcom,sc7280-edp-phy
+          - qcom,sc8180x-edp-phy
+          - qcom,sc8280xp-dp-phy
+          - qcom,sc8280xp-edp-phy
+          - qcom,x1e80100-dp-phy
+      - items:
+          - enum:
+              - qcom,qcs8300-edp-phy
+          - const: qcom,sa8775p-edp-phy
 
   reg:
     items:

base-commit: 54efec8782214652b331c50646013f8526570e8d
prerequisite-patch-id: 0000000000000000000000000000000000000000
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
