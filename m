Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3257E7D0CC
	for <linux-phy@archiver.kernel.org>; Fri, 22 Sep 2023 05:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7aFdiGStjTfyz5L2VPmRAi+kDeQTBc0EbebJcfjPhc=; b=KHz0Z+Rx/j+AFG
	6AACMwtFODmaZttqHR2xGniFHiunFxMoMg/XeitTo+XJvpglQo7YYTKqL5WI0dj1IDWngBqdhHqUW
	wzc/17DBr5s1o2ia+h+h5p/bI+cwFNOHMzC8CwcMnHXkZNKZPhltkmqPuEXLHrdOrLe74fnNRSAo/
	hWKtg0iOMAFHgxXWUEvh91EOY5ekvlngZMuX4jAhmCJt6rF8RHvdhdA9WZJDdfHb3HwCrjet6aR8f
	ep5AEyFfLwxYRxlWNzhg3rSYv6CJdcif90ax+X/MNg/SSBdZwkzKt62NhMM/YbHxqdOrr/CDoGvYC
	d/NAE577WI9Pelc/NLNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjYSm-007tKD-1c;
	Fri, 22 Sep 2023 05:12:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjYSh-007tGA-34
	for linux-phy@lists.infradead.org;
	Fri, 22 Sep 2023 05:12:22 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38M4datl014966;
	Fri, 22 Sep 2023 05:12:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=vt4HQkzBRhpNc52cASEe6rG3/9p26Oq4MI20JoPy4ZY=;
 b=kZTfmkduYH/YAy7XtPFUygwCjkGkZFMIQaVV1BVeJV+yflCATP86ztGUvOPXvbxw3drz
 sNOsxsMiQhMmbSY0RmJ1yX9Q8fVvWGNVj/Mhy2aCZ+49NFxTk3g2HZk9mU/ctXq23r+j
 mwVUXbwSRnIb6tuQa0RwYGAOj3hBfUukd8WPLbtqj2QzDdh22zheRJijS/DwnsAFxuSx
 xXtm1J22h4Px2lqgt22l6WXsGDPki1/0uhyCyf+fyiWcvfPEydX7ef0a2p7o63QDbPee
 NghBwXtt5ViGnTxoatSoSQw+YZI/rguncCpHrtA3yBv5Vd5zxBsSr/s4HZmKehED7jqs NQ== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t8um1rxbx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Sep 2023 05:12:12 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 38M5C8RT018677;
	Fri, 22 Sep 2023 05:12:08 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3t55em90v3-1;
	Fri, 22 Sep 2023 05:12:08 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 38M57PMe012555;
	Fri, 22 Sep 2023 05:12:08 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 38M5C8J7018646;
	Fri, 22 Sep 2023 05:12:08 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id D8F781E4B; Fri, 22 Sep 2023 10:42:07 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, abel.vesa@linaro.org,
        quic_wcheng@quicinc.com, dmitry.baryshkov@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, kernel@quicinc.com,
        Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH v4 4/5] dt-bindings: usb: dwc3: Add SDX75 compatible
Date: Fri, 22 Sep 2023 10:42:04 +0530
Message-Id: <1695359525-4548-5-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1695359525-4548-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1695359525-4548-1-git-send-email-quic_rohiagar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: z0p45zdMSpIjFKpBoZ3A03RbU3dbemqD
X-Proofpoint-GUID: z0p45zdMSpIjFKpBoZ3A03RbU3dbemqD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-22_03,2023-09-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 mlxlogscore=567 spamscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2309220045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_221219_991480_317F4F02 
X-CRM114-Status: GOOD (  12.34  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Document the SDX75 dwc3 compatible.

Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index 018117b..d78b721 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -34,6 +34,7 @@ properties:
           - qcom,sdm845-dwc3
           - qcom,sdx55-dwc3
           - qcom,sdx65-dwc3
+          - qcom,sdx75-dwc3
           - qcom,sm4250-dwc3
           - qcom,sm6115-dwc3
           - qcom,sm6125-dwc3
@@ -181,6 +182,7 @@ allOf:
               - qcom,sdm845-dwc3
               - qcom,sdx55-dwc3
               - qcom,sdx65-dwc3
+              - qcom,sdx75-dwc3
               - qcom,sm6350-dwc3
     then:
       properties:
@@ -364,6 +366,7 @@ allOf:
               - qcom,sdm845-dwc3
               - qcom,sdx55-dwc3
               - qcom,sdx65-dwc3
+              - qcom,sdx75-dwc3
               - qcom,sm4250-dwc3
               - qcom,sm6125-dwc3
               - qcom,sm6350-dwc3
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
