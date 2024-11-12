Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7C29D41D71
	for <linux-phy@archiver.kernel.org>; Tue, 12 Nov 2024 09:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fxXeR/whXTqLX/sNlsDmef0k7xHwkjU+JQsHwYeZGc=; b=WmyDNqvzOE0qK6
	b/y5QYaAK1IDFgobtldwYPMcm7+n1/yGaZZ+Fnw1bNzURNbMiQkSSAOOJWpmL4bQBOPhV8yije2B1
	50DufAWrpgEwDmSJvyBwIq4+pn4tSCUVwaP88wN64TgpX96MsmUCe/bVnWTmfBfuvqsvshG5s3YG/
	xIHfIC571u7H7sgbomxgMWcwnGKMOMjxaQjkri6vd5kd0PFR9VRykOayu6xBEedIK2UKmuFopmlGS
	YocDy3AkOfXiDNgF+p1cQDTMY9lxWgkD2vnGH2ByfOVbzzvRmdD+ZLq92RjucyZWzreOrdxQhly7q
	cQmPTg95zcXPvrlEdI0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAmyw-00000002mOs-1rjW;
	Tue, 12 Nov 2024 09:14:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAmyt-00000002mNg-20Rt
	for linux-phy@lists.infradead.org;
	Tue, 12 Nov 2024 09:14:41 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AC2etDi004968;
	Tue, 12 Nov 2024 09:14:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wDlWI3feWo6hDo/PEQadQmSwxZAsbgUThafKabAuJdg=; b=idlM5XEi05TSSgr8
	tkzYwPb1Sy6zfQH473e2TVlqD5VZrnK8qlB50tLFCArqGxM7Reby0S8vYcI09i2/
	8oYpEqu+1DYL8ygHqoDN8Tu+PI3LjVxdfwpaug/e3c4vx0n5PtxP7El8ndk8OVTz
	QpymYvdnug3LU0pYwtdWM2yZe0M2yp1GSoVQvv3AkUAc8koOwYBhB87Y9SRzTWti
	kV+T9EQRkxQwabBNorIE7PaSz8KY8EXc2aqYddFJWLM6q5Gbf84/JbOynsgreUoi
	fDgurxaxElHBCdN7D/QQQX7r5qHYUkS5GYjy35F83wi4v1OQOnTihNnAaf47Dwda
	G48IQQ==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42t1186ntj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Nov 2024 09:14:33 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AC9EXcI025457
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Nov 2024 09:14:33 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 12 Nov 2024 01:14:27 -0800
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <dmitry.baryshkov@linaro.org>,
        <mantas@8devices.com>, <quic_rohiagar@quicinc.com>,
        <johan+linaro@kernel.org>, <quic_kriskura@quicinc.com>,
        <abel.vesa@linaro.org>, <quic_kbajaj@quicinc.com>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v1 3/6] dt-bindings: phy: qcom,qmp-usb: Add IPQ5424 USB3 PHY
Date: Tue, 12 Nov 2024 14:43:52 +0530
Message-ID: <20241112091355.2028018-4-quic_varada@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112091355.2028018-1-quic_varada@quicinc.com>
References: <20241112091355.2028018-1-quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: EAAC8FRoO4frQwdzGCVCaDyzgA_QBwn2
X-Proofpoint-GUID: EAAC8FRoO4frQwdzGCVCaDyzgA_QBwn2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 bulkscore=0 mlxlogscore=869 lowpriorityscore=0 malwarescore=0
 clxscore=1015 priorityscore=1501 adultscore=0 suspectscore=0 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411120075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_011439_562791_FBEF0ADB 
X-CRM114-Status: UNSURE (   9.13  )
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

Add dt-bindings for USB3 PHY found on Qualcomm IPQ5424

Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index baf5134ea3d8..a1b55168e050 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,ipq5424-qmp-usb3-phy
       - qcom,ipq6018-qmp-usb3-phy
       - qcom,ipq8074-qmp-usb3-phy
       - qcom,ipq9574-qmp-usb3-phy
@@ -89,6 +90,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,ipq5424-qmp-usb3-phy
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,ipq9574-qmp-usb3-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
