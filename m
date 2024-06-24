Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EBEEC27C4F
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jun 2024 02:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dTeyJtL9K+saHGSijOjGMpd+9qf9gpHN/x7YCUrpbz8=; b=SUwcAZmjTJniJh
	Eg/AuycNj0DVzZuvubCF/+5vsqA9FcZlOHAehqRVDlrsQbG5VxppKrBzzpBFn//l8Bm9FT3/uRT1o
	SvNFAoFZ+mE3d+xdmXXhPo/PV6+PpjmQff+rtrLsZfQPZZv7eSAWDQNPgTtvukf9hpukU46y4HVwt
	3SARCP4G3+tPA7FG+gH0qVXFB4NNaTkdbmzFXZOuYFCTObish4eV9cXXBqKKsRWbPLTbzXaJbsSI+
	7y+BnmdJIcvchbi+ezRxfYxwRe2u6lFeJtEs3cjsm4OWsw7k5EmBundoMNN/eMgUzgtx8Xuy7droL
	2SPlCOA+MelSRfeWYJXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLZIy-0000000FHJv-2JeN;
	Mon, 24 Jun 2024 02:19:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLZIv-0000000FHJN-48cq
	for linux-phy@lists.infradead.org;
	Mon, 24 Jun 2024 02:19:39 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45NK02VO028034;
	Mon, 24 Jun 2024 02:19:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=TAka9rd39DBhv9dKnNLxvM
	PUR6xptv6Pi0xprJWs2es=; b=nv47qU4q5fDK2ngBEsh/Wb+2Vf6jm7h7wv8EDN
	6PjyS9Z2tKHllKYFRRxQBA3JS1j8KkSQlo+6UJ73kBjAMgAhW8BIu8xh4keBMche
	Jp3LDtHEgg4dv+yMjosvcofxXwkxZbCK+KS2AoJSC6kIchdy6GNzHfo9HDoYYyYk
	48EP4NZUKnTJiTrB6CnSJWxipEkQK17VyMYqq/L3rCdSf5rhq1BIMzbiYgJ4EbmX
	MP1hUGACA6Wp5GlR8zacgVRoEWGislMp9SCMx71pUa5jxpRgxuKOYKiNCAMYt3SF
	QWLVpPUUaQkHboC/TvFF14DfnLC0q1pU7lcGgAzQiGIE5chw==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ywmaetnjv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 24 Jun 2024 02:19:33 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 45O2JWpH020906
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 24 Jun 2024 02:19:32 GMT
Received: from yijiyang-gv.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Sun, 23 Jun 2024 19:19:24 -0700
From: YijieYang <quic_yijiyang@quicinc.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <quic_tengfan@quicinc.com>, <quic_aiquny@quicinc.com>,
        <quic_jiegan@quicinc.com>, <kernel@quicinc.com>,
        <quic_yijiyang@quicinc.com>, <stable@vger.kernel.org>
Subject: [PATCH v2] dt-bindings: phy: qcom,qmp-usb: fix spelling error
Date: Mon, 24 Jun 2024 10:19:16 +0800
Message-ID: <20240624021916.2033062-1-quic_yijiyang@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: k9_EWkq0bHgBIpT0TNBmaDfqmYboLvip
X-Proofpoint-GUID: k9_EWkq0bHgBIpT0TNBmaDfqmYboLvip
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-24_01,2024-06-21_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 clxscore=1011 mlxscore=0 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=691 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2406140001 definitions=main-2406240017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_191938_140449_7A752A6A 
X-CRM114-Status: GOOD (  10.23  )
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

Cc: stable@vger.kernel.org
Fixes: f75a4b3a6efc ("dt-bindings: phy: qcom,qmp-usb: Add QDU1000 USB3 PHY")
Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
---
v1 -> v2:
 - add 'Fixes' and 'Cc-stable' tags

previous discussion here:
[1] v1: https://lore.kernel.org/all/20240621061521.332567-1-quic_yijiyang@quicinc.com/
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
