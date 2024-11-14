Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41B24D65C59
	for <linux-phy@archiver.kernel.org>; Thu, 14 Nov 2024 07:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U60ZR3ikRZsTiI2w8l9+wfTS4lujWRO/15YAYYDQSqE=; b=IF+Itpykb40ozL
	dRz+m2PX53zi5hZABqDQaM+yipg9JOMLMCmbSozwtxI0n3u9MiVqAMyLgnqGE+fWXjW3j4xj7N/B9
	v6Yzr1VxSobjuEPY2GwblGz7HenvsrPrFqCT9EgKupKvWhHeyOiPK8T1r61UEl9qzzZNXzRek4tB4
	fPCy8ZAdZbfn1IYAludOoUAsS52/oElWxKUoKCHp6B1noT2zxLYUao1bp6St7JRwh7jS15ibl0rId
	NzrMhOivasy9OpXupLI5Vmzc9khaupnwNpVTq5EnDuPVvpi9WOHts+xMrJWkB5aP3zMT1/9objYm6
	fZeyGMw04iuDNOXw66Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBUbb-000000097c5-3FJr;
	Thu, 14 Nov 2024 07:49:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBUa7-000000097Ji-3XY1
	for linux-phy@lists.infradead.org;
	Thu, 14 Nov 2024 07:48:01 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AE400AU021224;
	Thu, 14 Nov 2024 07:47:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	d9aqH3ZHtHo6ncM5PRqX9vBWoHYWCXaY3qMLq4glgGE=; b=puv+RldvbeNS/KFg
	1/mc9GWnKv3H1rHbKTJaTVUssrLn99u67g8fCASxAqasQnCO65hHM69AXb06tWG2
	yM+Z2ZHe/UFng1CzXN1EvWhlKsE/oMuzV39UDB97c3ugQU71jEjjomVjCltMk3B6
	wp+cfix6Sy7R4ADbnk5pYZ8koDKDseYNL6xh5UK3Kl+xCYbjCqX7Dj6kKF5R1r53
	EClo7HbC7BYULFH4UvgDeBX6Hp5tIr+IyqTfLCqCGxgNi/OrJ7k4j3SuLK6MJtU1
	NqkPopMWdZOE/Vn1Cp8SLoOlcjx4LPd2TCo07RNInxkSt1jzFrCna9dEcYsUD8WQ
	OMFDFQ==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42w9sv168p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Nov 2024 07:47:54 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AE7lsCU027995
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Nov 2024 07:47:54 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 13 Nov 2024 23:47:47 -0800
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <dmitry.baryshkov@linaro.org>,
        <mantas@8devices.com>, <quic_kbajaj@quicinc.com>,
        <quic_kriskura@quicinc.com>, <quic_rohiagar@quicinc.com>,
        <abel.vesa@linaro.org>, <quic_varada@quicinc.com>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>
CC: Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 1/6] dt-bindings: phy: qcom,qusb2: Document IPQ5424 compatible
Date: Thu, 14 Nov 2024 13:17:17 +0530
Message-ID: <20241114074722.4085319-2-quic_varada@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241114074722.4085319-1-quic_varada@quicinc.com>
References: <20241114074722.4085319-1-quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: RbMKgF9-EykaSqNgBbVuVw-3M4veROR-
X-Proofpoint-GUID: RbMKgF9-EykaSqNgBbVuVw-3M4veROR-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 bulkscore=0 clxscore=1015
 mlxlogscore=973 priorityscore=1501 phishscore=0 malwarescore=0
 suspectscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411140058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_234759_893082_052CC5C9 
X-CRM114-Status: UNSURE (   9.49  )
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

Document the compatible string used for the qusb2 phy in IPQ5424.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v2: Add 'Acked-by: Conor Dooley'
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 4aed4b5d65ec..39851ba9de43 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -18,6 +18,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,ipq5424-qusb2-phy
               - qcom,ipq6018-qusb2-phy
               - qcom,ipq8074-qusb2-phy
               - qcom,ipq9574-qusb2-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
