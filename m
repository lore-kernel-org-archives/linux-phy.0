Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CF7DD37485
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 13:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4Ifo9/iCsakq8lgpAPhbD3kjQ25OaLwvsLDA0vpKRQ=; b=Si8vfc5g9ylcZ7
	docy7PDAY0Hp1EohGkzpUN0woeG3XDsQzJzlkFojqNe8FwxKUyjrF+p/d2GxykvJi9np1wCJ6KqYz
	OWXn3WgcjBEYgy2R9C2cdrCU4fB8pkSfJ23NS5iQ6haaRe04qj+pPkMMoldOQ9fw+tO7xlGBetyaz
	79maMewu0cVUTt60ZWRPIG1MWjyuWJF4utiGcKFJOoy4YMRwdqB0M/xlP2ei02sMMUoSkCSn+YrDw
	tVSCFP2vkaOF86pUsaz/7gKhm51cMqmSQJZhTmAn4bQTIgamMHCDljoZpZa0fh0M/spBHcdFiTUcw
	w2ygg/hP3WtEhdi4XvlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1QHq-0000000Et4z-1QZR;
	Thu, 17 Oct 2024 13:11:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1QE4-0000000EryR-1PCl
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 13:07:42 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49HBATiH010224;
	Thu, 17 Oct 2024 13:07:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1UAFcd3ZD4uQoF/6HAQ0Vrw1Sa1r3AOt4zxqXgD1Ueg=; b=Wxaar+cVZ4JUeBMw
	Rv8nSN/1N8oGhnzqB1faii1d5pV6H/nsd2jZ2ZIDNxlJ8ZdwKIH/XjjKMWm5oZmu
	axkq6ur5C53crW7L6GRf58jZq/tnzHEJlknIRlntWlZkSKyxIaIfuSMxefhDeTNg
	HxZLwMEnhtY6KjS+7QfPzLrjM/dsEJ2ZmGGEgzZI+ZFZPFiCurZ4p4on1V48jdKR
	dlF0wOX/QcUeJHwkd3avxR+B8x1so6DcEdpMLS6eFsaUMVfKVaJouDyLraPUNoLx
	MQvGshk4eape4OF5h9Ayc/+uAUE6vnk7azw2LZNel5Ewe4/P2UyqDUinRqv/zKFG
	FHaDDg==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ar051ut5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Oct 2024 13:07:27 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49HD7Pxo011575
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Oct 2024 13:07:25 GMT
Received: from hu-kriskura-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 17 Oct 2024 06:07:19 -0700
From: Krishna Kurapati <quic_kriskura@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Wesley Cheng
	<quic_wcheng@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        "Dmitry
 Baryshkov" <dmitry.baryshkov@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>
CC: <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_ppratap@quicinc.com>,
        <quic_jackp@quicinc.com>, Krishna Kurapati <quic_kriskura@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/5] dt-bindings: usb: qcom,dwc3: Add QCS615 to USB DWC3 bindings
Date: Thu, 17 Oct 2024 18:36:57 +0530
Message-ID: <20241017130701.3301785-2-quic_kriskura@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241017130701.3301785-1-quic_kriskura@quicinc.com>
References: <20241017130701.3301785-1-quic_kriskura@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: BN_IYxA2mIEWP4Yk7N4Gp7-f9KFAVBms
X-Proofpoint-ORIG-GUID: BN_IYxA2mIEWP4Yk7N4Gp7-f9KFAVBms
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=555
 clxscore=1015 spamscore=0 suspectscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 mlxscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410170090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_060736_414474_6897000B 
X-CRM114-Status: UNSURE (   9.18  )
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

Update dt-bindings to add primary controller of QCS615 to USB
DWC3 controller list.

Although this controller has a QUSB2 Phy, it belongs to a
generation of SoCs like SDM670/SDM845/SM6350 where DP/DM is
used for wakeup instead of qusb2_phy interrupt.

Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index f7be05641930..76f78ed6ac9b 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,msm8998-dwc3
           - qcom,qcm2290-dwc3
           - qcom,qcs404-dwc3
+          - qcom,qcs615-dwc3
           - qcom,qcs8300-dwc3
           - qcom,qdu1000-dwc3
           - qcom,sa8775p-dwc3
@@ -340,6 +341,7 @@ allOf:
           contains:
             enum:
               - qcom,qcm2290-dwc3
+              - qcom,qcs615-dwc3
               - qcom,sc8180x-dwc3
               - qcom,sc8180x-dwc3-mp
               - qcom,sm6115-dwc3
@@ -467,6 +469,7 @@ allOf:
               - qcom,ipq4019-dwc3
               - qcom,ipq8064-dwc3
               - qcom,msm8994-dwc3
+              - qcom,qcs615-dwc3
               - qcom,qcs8300-dwc3
               - qcom,qdu1000-dwc3
               - qcom,sa8775p-dwc3
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
