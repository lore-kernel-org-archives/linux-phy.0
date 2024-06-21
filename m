Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBEA3C2BA1A
	for <linux-phy@archiver.kernel.org>; Fri, 21 Jun 2024 06:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EVIRuxNLncauWxyno+YyWTrpRbVJY0p6UAIpaYgBC0M=; b=C9V1jHHNadOSwB
	dDKCVbwX4+wrHMb1sfwwiaPDAxZET8IKAcvm3CMHNWJNfKM5YzsxZT+Om2/WrXwUR6Wu8uL8TbAkE
	TrCZAb1YHpPXB3k8ix2WUICD60OBLUqwHq8nm9yNDF+FO5JkzVpVZ8uuJeb1CyF0g9+HmIlRdq0VE
	D9SoFQAfWPKKR2STCEiDjVweCX5jAWyeP5C410aixcR95fi8nxiOzJxyHg4xBrbkJGY2Nj/P7Oz7Y
	bHXL60zZl5fGW7EM7dEfzvePJ9e9bxZqfscch1A4XMXzBYVHqYQuxPlYepmPCpqgZ8qiEMfVuvVU8
	JwYQA0UJ/Ky4tdxaLl0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKXYn-00000007twC-0v4L;
	Fri, 21 Jun 2024 06:15:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKXYk-00000007tuz-1Jsj
	for linux-phy@lists.infradead.org;
	Fri, 21 Jun 2024 06:15:44 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45L6AF1A017939;
	Fri, 21 Jun 2024 06:15:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=ubTw/SGh4Hd1iy6B/oYlG5
	X2s+gU3U2DrGQmpFCywno=; b=DdFuMzNandpwFEa1hCH184xLj2+yJ0aVyY7SxI
	HxYbct6oOVaGI1givPnXp2q1r2Qh+PY6vxtoCi0bpY3xsrPsoqUrDwnwFrX+hEdD
	P1zYmjdbOAbnDoUT+cA43pDPCJA2vevUdlIhfWdxEBQYSZZMyE284Yx3OSV//id/
	70Ct+pAunA+TPETqTtTR5Ws3mZw5bIx3BLnJjfG3Sl4vT7cXy1WDV443VSHbHwqm
	3Rwwbg0c8ibWahkuxd6JS8XoHKAJDrKviAMhF7ONOTblvyBGAEWWk8AYc1HtWolG
	yr6SlMugo3oTKVXSmz+L1fa7fDfwam5OoJMarlnqAl74zMZA==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3yvrm09jqb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Jun 2024 06:15:37 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 45L6FaNc019800
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Jun 2024 06:15:36 GMT
Received: from yijiyang-gv.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 20 Jun 2024 23:15:29 -0700
From: YijieYang <quic_yijiyang@quicinc.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <quic_tengfan@quicinc.com>, <quic_aiquny@quicinc.com>,
        <quic_jiegan@quicinc.com>
CC: <kernel@quicinc.com>, <quic_yijiyang@quicinc.com>
Subject: [PATCH] dt-bindings: phy: qcom,qmp-usb: fix spelling error
Date: Fri, 21 Jun 2024 14:15:21 +0800
Message-ID: <20240621061521.332567-1-quic_yijiyang@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: yw65nC8FemhvEFmxEkjssmvn7FEc2_QL
X-Proofpoint-GUID: yw65nC8FemhvEFmxEkjssmvn7FEc2_QL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-20_12,2024-06-20_04,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=846 adultscore=0 impostorscore=0 clxscore=1011
 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2406140001 definitions=main-2406210044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_231542_690505_28569870 
X-CRM114-Status: GOOD (  10.63  )
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

From: Yijie Yang <quic_yijiyang@quicinc.com>

Correct the spelling error, changing 'com' to 'qcom'.

Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 5755245ecfd6..0e0b6cae07bc 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -20,7 +20,7 @@ properties:
       - qcom,ipq8074-qmp-usb3-phy
       - qcom,ipq9574-qmp-usb3-phy
       - qcom,msm8996-qmp-usb3-phy
-      - com,qdu1000-qmp-usb3-uni-phy
+      - qcom,qdu1000-qmp-usb3-uni-phy
       - qcom,sa8775p-qmp-usb3-uni-phy
       - qcom,sc8180x-qmp-usb3-uni-phy
       - qcom,sc8280xp-qmp-usb3-uni-phy

base-commit: b992b79ca8bc336fa8e2c80990b5af80ed8f36fd
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
