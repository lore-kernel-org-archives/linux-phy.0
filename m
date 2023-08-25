Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90981C3DA66
	for <linux-phy@archiver.kernel.org>; Fri, 25 Aug 2023 09:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KhtcjPpasHGHuGvclDTwqcl8+Ms230L6sFSQMF1OhM=; b=n+938GZ4RTOphH
	oaKiigwnS1ULQJ+MLRgHIoQqI/s8pCWYJCGchFs84hrVmWcUlLZbrT1hCTKk/XZhK/vvZh24Ta4Tw
	Y//XR7ylTgAJdYlFYaH8pAAiNF3BY7g1hWMQf3qgWg0eTWB7GTqeMHbqGtAhuaZI5qEaJVB4yCV4+
	JN8+s6v3jJNWiMuqgaCm9JyAFIXEr+TmFzwMddEnA9l340diMsmet1W4P13d4WmlZUMGboMg6rtP6
	RxasdbAJJQ+A5LLKPc5tF6uWO4Y5bQIGroDxR3o1pDoItiz6oMB8D/QKsqMFbmgf2RrpVVgA5ZX2w
	m/WHMSHv97YUvcBMVnag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZTF7-004kV5-02;
	Fri, 25 Aug 2023 09:36:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZTF3-004kTK-0Y
	for linux-phy@lists.infradead.org;
	Fri, 25 Aug 2023 09:36:34 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37P69f0o021968;
	Fri, 25 Aug 2023 09:36:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=mIJoZHRqrEw01bIRFFulXrLw2/EHSvdvYAjYa2MVG3o=;
 b=Etdni2xHt8my32dnHqWAr8ysaIyZR6ZaXFNpbZ0bDa5gskqgB+wL46bqEEdA++L8nrxE
 BPCIasGhBJID8hSnkZ3OSdOfD0lEZA3q1K5O2EbV1YJJK+9TG6pBcOb1YKBnYhlCxW0a
 a+SOfX7yOkX66f9Nr2Ean5UW4zOsG/k5GZVozy/bWijfyr11xCrVCUM4uj8Zg4eNQhsf
 kQDT393LdFIrkTiDQEGEEr3GyVEemtJr+oL0lefhzfViaVT4lIBTqm1TfKMyQHq1vtaY
 qxND9b8LwOyqNo/HtRh6gcB0RFx3fL4ONP3U0pbGM8rSKIb0oDBjfahmHHiHcMo6mzbA cA== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3spmn60m39-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Aug 2023 09:36:19 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37P9aI8W009099
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Aug 2023 09:36:18 GMT
Received: from nsekar-linux.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Fri, 25 Aug 2023 02:36:12 -0700
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
CC: Nitheesh Sekar <quic_nsekar@quicinc.com>
Subject: [PATCH 2/5] dt-bindings: usb: dwc3: Add IPQ5018 compatible
Date: Fri, 25 Aug 2023 15:05:28 +0530
Message-ID: <20230825093531.7399-3-quic_nsekar@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230825093531.7399-1-quic_nsekar@quicinc.com>
References: <20230825093531.7399-1-quic_nsekar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: yEb53_NVaMNCFHO01gco7tmD9okyAebN
X-Proofpoint-ORIG-GUID: yEb53_NVaMNCFHO01gco7tmD9okyAebN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-25_07,2023-08-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=609
 priorityscore=1501 spamscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 impostorscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308250082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_023633_228590_EE6CC39C 
X-CRM114-Status: GOOD (  14.28  )
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

Document the IPQ5018 dwc3 compatible.

Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index 67591057f234..1ad62e55dfe2 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -14,6 +14,7 @@ properties:
     items:
       - enum:
           - qcom,ipq4019-dwc3
+          - qcom,ipq5018-dwc3
           - qcom,ipq5332-dwc3
           - qcom,ipq6018-dwc3
           - qcom,ipq8064-dwc3
@@ -238,6 +239,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,ipq5018-dwc3
               - qcom,ipq5332-dwc3
               - qcom,msm8994-dwc3
               - qcom,qcs404-dwc3
@@ -411,6 +413,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,ipq5018-dwc3
               - qcom,ipq5332-dwc3
               - qcom,sdm660-dwc3
     then:
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
