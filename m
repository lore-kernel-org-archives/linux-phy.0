Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58D85CEDDB7
	for <linux-phy@archiver.kernel.org>; Thu, 10 Oct 2024 02:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMYNrRH0S5+8/wQUa83ShBIPyHnlrXlKPXODMYLTSMk=; b=fOfTeBwRQCQ5aJ
	AP9jLVDHZ0I0VAgPBKewmlGYk1aZbKLT53C7tEIoRvuzudH9v3uk3mpVNabZXXx+JKWphI1jvLsey
	P/7IBtCA0tQtigRC5Ax1K4h1UmsVbdU8BOinn9WljWFUOBFn33Lz5cHcS/FPLDcec93vL/CN2NXEI
	MzVHmB/6hKeCqV/sTjcYFsoPj9JwzCxkol7BWRocRUprq5qQw8i5wEIBYnTWf1zD3jAghjMgHkbnz
	RJnJh+PyO96AWm7izx5utwlzeVoK4BzRIzQKwnFWpTY3XlrbTd84B83CHaQb3DT+zJoTkdwn8HIAf
	OVH7Nvgvv4mEvKWEtT1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syiYn-0000000BGHm-0DuJ;
	Thu, 10 Oct 2024 02:05:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syiYi-0000000BGGS-3ZjG
	for linux-phy@lists.infradead.org;
	Thu, 10 Oct 2024 02:05:47 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49A1b5xs023566;
	Thu, 10 Oct 2024 02:05:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LjEj3pnbNp9XmsXKNGOZ5pIyxV2deSdkOE3pPjEChtk=; b=l11C3mXtSYFp9mfK
	Pt5ddXFyWXNdzOvLHdAihLcCwAdx35/5ZDm4on+2Kx32RQaYpG0sVrs9v6GgG3og
	OsEJDtQkleoBngvEr/62Q7gN7WhYFA5zumsW0eYLP1jz89kF6IO0877qZj2BiBCf
	oFVwgO3BsrX7NGfmxynrUqgt+ymV0DNczd3y2OSvrTHeVu7J03bbU0VIkonHldZO
	7vScpDM2EqJJuIiX1hADRU952NSLSAjMjHVvriFXy0f8grl25iPHMCc4l4yss2OP
	CeQV6nu0wWOpxBtayUTr3ys+QU/D5ptcN8G/M2HQmGjWi9cO0LhwKDBXjtB9Ep3R
	fkEW0w==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 424ndyfxaa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Oct 2024 02:05:37 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49A25ZCm000874
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Oct 2024 02:05:36 GMT
Received: from yijiyang-gv.ap.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 9 Oct 2024 19:05:29 -0700
From: Yijie Yang <quic_yijiyang@quicinc.com>
Date: Thu, 10 Oct 2024 10:03:44 +0800
Subject: [PATCH 2/3] dt-bindings: phy: describe the Qualcomm SGMII PHY
MIME-Version: 1.0
Message-ID: <20241010-schema-v1-2-98b2d0a2f7a2@quicinc.com>
References: <20241010-schema-v1-0-98b2d0a2f7a2@quicinc.com>
In-Reply-To: <20241010-schema-v1-0-98b2d0a2f7a2@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        "Paolo
 Abeni" <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bhupesh
 Sharma <bhupesh.sharma@linaro.org>,
        Kishon Vijay Abraham I
	<kishon@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
CC: <netdev@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_tingweiz@quicinc.com>,
        <quic_aiquny@quicinc.com>, Yijie Yang <quic_yijiyang@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1728525917; l=1044;
 i=quic_yijiyang@quicinc.com; s=20240408; h=from:subject:message-id;
 bh=+lmcbiWUBQR4Fi1H56e25DbQ4RQdd3mebYSIey3dDvk=;
 b=P9bR72wi9uIzcBhqtyrc1/mogF0rydcexjaeyJqDdwck92yilino/0c9v1KD0uRThKtZm0Lsz
 fuTgYX6i002Bzis8eSMDCrDjrw5FEzdNUMiyyszr1Rgr/tETo4Oc8P4
X-Developer-Key: i=quic_yijiyang@quicinc.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: I3uLhonur_2VkvQbmKXts-eS0_ybtxqG
X-Proofpoint-ORIG-GUID: I3uLhonur_2VkvQbmKXts-eS0_ybtxqG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxscore=0
 bulkscore=0 adultscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 mlxlogscore=900 spamscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410100012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_190545_042039_51AAACAC 
X-CRM114-Status: GOOD (  10.37  )
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

Describe the SGMII/SerDes PHY present on the qcs8300 platforms. Since
qcs8300 shares the same SerDes as sa8775p, so it fallback to the
compatible.

Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
---
 .../devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml      | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
index b9107759b2a5..90fc8c039219 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
@@ -15,7 +15,12 @@ description:
 
 properties:
   compatible:
-    const: qcom,sa8775p-dwmac-sgmii-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,qcs8300-dwmac-sgmii-phy
+          - const: qcom,sa8775p-dwmac-sgmii-phy
+      - const: qcom,sa8775p-dwmac-sgmii-phy
 
   reg:
     items:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
