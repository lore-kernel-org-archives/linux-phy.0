Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E36A4CEDDB7
	for <linux-phy@archiver.kernel.org>; Thu, 10 Oct 2024 02:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8HdhzLPbeXaJpEqdAd3ed5Dkb2B6oiflLxJvv1VaFCU=; b=XlFOEtHSqSrH7M
	ZE9hituW+ncYxOwYCHsOIB4Xu2luzfw+UZjh7N4FOepY+e/bkfhXnYJHXPqWmzAVcy2LLaINd/PZS
	EYJw45renvkssmoxA8d/wKeQe6xoOlXmlMKCXTxpKhPt41QB3QyY5u99F8LjACU5U9JlJcyjCiKzl
	15yjuPeBQT9f7wDMB+OHFOdrn805R4IFd4npEF00LKSjicZxr5iY+faUCR/+I9xAhZ8j1zSGH9Lha
	ldMd8ys9v5+cfE09pvp5YaXuRQyXGCFvdVZKKbXIVYpfRGX58Ul9kza2dEgA2JYi/chryVjJ5SIEg
	a7OeZQoKNBVGHPndlsSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syiYq-0000000BGJK-1mN0;
	Thu, 10 Oct 2024 02:05:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syiYn-0000000BGHk-11tP
	for linux-phy@lists.infradead.org;
	Thu, 10 Oct 2024 02:05:51 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49A1bFGg005694;
	Thu, 10 Oct 2024 02:05:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jMWB6PcATmbLPyC1cK3HP6Yj+b56f5C/ktZYBF11ToA=; b=IJ3N6W9dNP5sSNUP
	lzjfIgjIEQnn8GECnRxP1oygMQHdez13S5aJumqMaHr0iKoUO63A2VDr1r9JYNgl
	tMmlc7tM9gFsTMdRxW0rGZheSt1pRQJtVZc/ZWC84pq4du2LOsFt7//DvNEo+bCn
	AsH0x3Mdap0T1ewRrj+QjmYP8blwW1tv710+UnPWiPc+nL0+DNoIK2ohrT95a9p4
	sAWWRJsBrABZkWX0oG5JhyRTwyVLoJLKuFVs8GUPqA4LsaREmjcWG1M76greRVvQ
	nbSgYIHAOTZaASPFx9bMd8ckBoMU+m42IMWttovyimDk9gvVlo2ySp4n/XF8nqXP
	lTpOTw==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 424yj06tpy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Oct 2024 02:05:42 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49A25f68007438
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Oct 2024 02:05:41 GMT
Received: from yijiyang-gv.ap.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 9 Oct 2024 19:05:36 -0700
From: Yijie Yang <quic_yijiyang@quicinc.com>
Date: Thu, 10 Oct 2024 10:03:45 +0800
Subject: [PATCH 3/3] dt-bindings: net: qcom,ethqos: add description for
 qcs8300
MIME-Version: 1.0
Message-ID: <20241010-schema-v1-3-98b2d0a2f7a2@quicinc.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1728525917; l=942;
 i=quic_yijiyang@quicinc.com; s=20240408; h=from:subject:message-id;
 bh=xDOzq8vKFs/+SMggfeJ4oQ3ElEkJI5aj2UIzGLX2a1c=;
 b=1z1+gEQSdUNvVtWH1kgu0Wpf7p2NRFe4O2YM+HsztTu+HcMc2wDmNTYsfHcSS+5Eu0iJyRMHI
 SUuEsAMhH4iD7tvpvnA3onQ+/vnZO56Vkp7WCpF7rK0JNZwNMYlWypX
X-Developer-Key: i=quic_yijiyang@quicinc.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: J2urINyswDZo1cM6XNga2xnvPLfW8L3Q
X-Proofpoint-ORIG-GUID: J2urINyswDZo1cM6XNga2xnvPLfW8L3Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 bulkscore=0 mlxlogscore=747 mlxscore=0 adultscore=0 clxscore=1015
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 spamscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410100012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_190549_432676_95C6DCAF 
X-CRM114-Status: GOOD (  10.04  )
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

Add compatible for the MAC controller on qcs8300 platforms.
Since qcs8300 shares the same EMAC as sa8775p, so it fallback to the
compatible.

Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
---
 Documentation/devicetree/bindings/net/qcom,ethqos.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
index 8cf29493b822..3ee5367bdde1 100644
--- a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
@@ -23,6 +23,10 @@ properties:
           - enum:
               - qcom,qcs615-ethqos
           - const: qcom,sm8150-ethqos
+      - items:
+          - enum:
+              - qcom,qcs8300-ethqos
+          - const: qcom,sa8775p-ethqos
       - enum:
           - qcom,qcs404-ethqos
           - qcom,sa8775p-ethqos

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
