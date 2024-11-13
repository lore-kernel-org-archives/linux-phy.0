Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3CEAD41C0E
	for <linux-phy@archiver.kernel.org>; Wed, 13 Nov 2024 07:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqKrNw371D2IgQpvJWOz1tB8NSBcoXX3T61uoPVp6ec=; b=iFI/4yE0K8MGXs
	UhO78/qyfRbn6YVx9ExDKjQ7aXu0G8AIsZHnkUExUR4ueiYZjYbzVaFCeCnsQlQ1bFQ8VFa8s6U3p
	gb6IAXpbfivSNBRTT+gwO0TSAe4/m4wTB2IOBuvdhxL55bNmOhcqPsqwL0odDZOUvBe/jHOy4tyVM
	MDhTa7k5MmELYpq+tsq7FyJJftCGgn9WnErP43lzrdpTO85o4UCnjwl4aMmfOyvGzsj04JMvX0/9D
	YkBoIo1gMg2FcgOrAT2x7fqxQ+1xNfZoTMh/8aCucC1V+gKH4HhEVWgSG2i5dpB2xjSuY80MgcI2+
	Yg9bahwuEZFgAsyNOtoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB7jy-00000005z9j-0mPO;
	Wed, 13 Nov 2024 07:24:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB7jv-00000005z9I-1d6R
	for linux-phy@lists.infradead.org;
	Wed, 13 Nov 2024 07:24:36 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ACMRqWS003799;
	Wed, 13 Nov 2024 07:24:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sgXywXTXEiv18D5jxxPkfjXNoouy6DO/ATfUle8emnU=; b=E14R1s5jimpFJMii
	tizkWajCiFSZm9oNa7cRJWOys4HwtRiwSgsdO4CNvCaXYucRYgxHIt1ZU8PN0Nqx
	5E9+XzIGRWnLLSfjiEgzyLrAYm9qF6ShVhzUXZP/GEgJT0euZHXpcVSSsD9iOS8j
	lke30r61nih0GzDKNT96/F648+yqLNKFkzLSRjRIm7EwuiOXF+IJVMEJPSWLDCnq
	OFndVjrM4bFGPIR27n9nyNuNJtjrcqMDnPIhDIUpNCEi6YKcpv5kEoFesIlriXSe
	sJjzzK80cVSdfjd6//RzBjVw6nVpC9VpFlXCeSxcmtwPxugfacEobjrMq4DuFTOc
	0stfTw==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42t0gm1ujc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Nov 2024 07:24:30 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AD7OU2n003863
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Nov 2024 07:24:30 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 12 Nov 2024 23:24:23 -0800
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <dmitry.baryshkov@linaro.org>,
        <mantas@8devices.com>, <quic_rohiagar@quicinc.com>,
        <quic_kriskura@quicinc.com>, <manivannan.sadhasivam@linaro.org>,
        <abel.vesa@linaro.org>, <quic_kbajaj@quicinc.com>,
        <quic_varada@quicinc.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
CC: Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 5/6] dt-bindings: usb: qcom,dwc3: Add IPQ5424 to USB DWC3 bindings
Date: Wed, 13 Nov 2024 12:53:15 +0530
Message-ID: <20241113072316.2829050-6-quic_varada@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241113072316.2829050-1-quic_varada@quicinc.com>
References: <20241113072316.2829050-1-quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: pZXqVY4upz_9l08Hy7g8LC0xSrY6b45b
X-Proofpoint-GUID: pZXqVY4upz_9l08Hy7g8LC0xSrY6b45b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 spamscore=0 clxscore=1015 mlxscore=0 mlxlogscore=608 lowpriorityscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2411130064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_232435_456747_BE022A13 
X-CRM114-Status: UNSURE (   9.39  )
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

Update dt-bindings to add IPQ5424 to USB DWC3 controller list.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v2: Add 'Acked-by: Conor Dooley'
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index 935e204b607b..2622a1f3bcab 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -16,6 +16,7 @@ properties:
           - qcom,ipq4019-dwc3
           - qcom,ipq5018-dwc3
           - qcom,ipq5332-dwc3
+          - qcom,ipq5424-dwc3
           - qcom,ipq6018-dwc3
           - qcom,ipq8064-dwc3
           - qcom,ipq8074-dwc3
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
