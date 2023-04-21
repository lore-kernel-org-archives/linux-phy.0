Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66182C7EE20
	for <linux-phy@archiver.kernel.org>; Fri, 21 Apr 2023 15:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLlb3tZqOC9olhuPvQOtr5lRlBdI+eqkW6JrO/JPoYg=; b=WrQ689bjF2rY+X
	ov7YgBljMqiJor2sPRAAOiCCMMS2QCujiVh8aEb/v0yFmBG9iQjutkxbx3XnfQzdCuvYn8MtM66Mf
	drVeX8/eFpwyBcaZTnFIKHcginrfa/1hueBGghsnuxWnmk+eMvkcw6XgxOKAvuaDyPwyLqCu9JaIi
	qqfRh437Fd+RkOIHTYNy/S/s7YMKC5ajV2a7oEuIRA6rDTBrofK3M0UGzlr5cWGiBl9VQ9gWDFw7C
	HC1GTorwsf3HuUJodxhdoelAF2InGP5w65d2okrBlb2AbHxzTaKXJy7tFJeMjSym2Ye7YKS2J93sE
	96oNrs6+Sj1p5ovLsEGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppt8P-00BKL0-3A;
	Fri, 21 Apr 2023 15:57:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppt8O-00BKKT-04
	for linux-phy@lists.infradead.org;
	Fri, 21 Apr 2023 15:57:17 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33LErO0e029437;
	Fri, 21 Apr 2023 15:57:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=z3tqPuoZ/RuFARsjGTf5SmGdbLXmh/h8cED9Fbel4Vg=;
 b=JZN2DdwLBsT3TMMcglRAl1pbszYjWYtNv1/uTIR0yf6DODJIdCjxnUBkZr0Jetbjt2/p
 0Mq1Og1flRfQqSzFsyUgnmGMLxGHypLQ0a0vZ3UHMcdBpnWEJ4lCB+nQvFnGavI/1TQn
 YUZ6cjYfbYCL27jbu/dU4YSeWotpeUhCfSpx8QGu/OgnIEGPYf5FzwBrcfmRIdAez8l5
 XOZStPHlwTfSaDLoU1KCvdeEp1kQBmgKDloNx8lMQRQ584s3+uQEWz59k6gBPvFqc3er
 57MfV2r8LgBnh6w5pqLpHdlBNTM7h95QPhahFgsa6hoH82wNqAG2+DNwuJ0OUHiovPJO bA== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q3tmqrffx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Apr 2023 15:57:12 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33LFvBx5002419
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Apr 2023 15:57:11 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Fri, 21 Apr 2023 08:57:06 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v9 3/8] dt-bindings: usb: dwc3: Add IPQ9574 compatible
Date: Fri, 21 Apr 2023 21:24:45 +0530
Message-ID: <f9ba5b4f3dfd299ec7cefd038bc1d9ed5a817b8d.1682092324.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1682092324.git.quic_varada@quicinc.com>
References: <cover.1682092324.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: fvzqznHvTqCFIeJBfjt_jhdiQX0PA-VI
X-Proofpoint-ORIG-GUID: fvzqznHvTqCFIeJBfjt_jhdiQX0PA-VI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-21_08,2023-04-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=783 spamscore=0 adultscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 malwarescore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304210140
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_085716_064778_9DCE8A95 
X-CRM114-Status: GOOD (  14.19  )
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

* Document the IPQ9574 dwc3 compatible.

* Make power-domains as optional since IPQ9574 doesn't have GDSCs

Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

---
 Changes in v9:
	- Place ipq9574 alongwith similar SoCs instead of new entry
	- Make power-domains as optional since IPQ9574 doesn't have GDSCs
 Changes in v6:
	- Made power-domains as optional
	- Resolved all 'make dtbs_check' messages

 Changes in v5:
	- Restore removed constraints

 Changes in v4:
	- Update other relevant sections
	- Remove constraints not applicable to IPQ9574
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index d842819..5c13229 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -17,6 +17,7 @@ properties:
           - qcom,ipq6018-dwc3
           - qcom,ipq8064-dwc3
           - qcom,ipq8074-dwc3
+          - qcom,ipq9574-dwc3
           - qcom,msm8953-dwc3
           - qcom,msm8994-dwc3
           - qcom,msm8996-dwc3
@@ -133,7 +134,6 @@ required:
   - "#address-cells"
   - "#size-cells"
   - ranges
-  - power-domains
   - clocks
   - clock-names
   - interrupts
@@ -177,6 +177,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,ipq9574-dwc3
               - qcom,msm8953-dwc3
               - qcom,msm8996-dwc3
               - qcom,msm8998-dwc3
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
