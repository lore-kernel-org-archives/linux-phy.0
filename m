Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E969D3C528
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 06:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:Message-ID:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i2CSuVQah20/IkkS98Zq3Z0f2MyqBS5MOOIbjkV0MSY=; b=yfw9boYmEjEBZw
	bF9DU3D88rt34XFSyq1gDR2JwS61b0cbrIILBeaDTXxkRIyaAuBDwEh7xgpydP33jmgLMnXCzWdEX
	i8OJkHXkjoXhUCurR0QMrtcnzXpf0CgooDOsrX9i4xRm8xvx4UPBf9GmHrb14HJWoDO6tVEgDbFDq
	AUhrqUqc9VtYxRVvlhEh1ES45xCE3bEnhVEuDASdyyEU/0kesFRh4tR7L8cU20U1Ttqjqb0amEXxX
	VOZr32LfXYzOyjnWdckUGudIzBPB8sPIvZM76dfM1MFrItHZFx0+CFmFIWvsmJiW6e/6j1y0xEjW9
	6+EyT0M0epVPUsBzCzJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1g1x-0000000H4Ja-3xLh;
	Fri, 18 Oct 2024 06:00:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1g03-0000000H3ft-3Tjt
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 05:58:13 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49I5EMkk029274;
	Fri, 18 Oct 2024 05:58:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=p/JHAqoSPPM2jV7PdOuSa/
	5iBcBdFdh3+wTD2LiVbeU=; b=dW7QnvPAKDVFcqF8OvSjFwVuwm+dZR8oPu956t
	qSPs7e61eK8bwaw4F9GHZHHzOyieni3VfXAogFXen0t53XI1vP+TMbhM/FuZ9Iu8
	mVMGEgEG5XzcxpuJAdpomuegfH1ovSnK2qgkxtvxpR5wzFEbju/d/3Lb177bPrpV
	BbGN7jvx5eI8sFDvVxwPVn85bS6LCq+/8uSLaPqTjDR0x5ObisfpWOmUZDLW/EZp
	+WKmqJEuL2oi78TfFIEkUdqEVpv6Ou54jh2SQLNBNtanhl2FANAi2YyAL7heQoot
	ZazCd8TGIRDG8bczIPs/+gcWpWYBG9/OJ6KTbgvi4rXQUIPA==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42bhbq83e8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Oct 2024 05:58:08 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49I5w8di030884
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Oct 2024 05:58:08 GMT
Received: from jingyw-gv.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 17 Oct 2024 22:58:04 -0700
From: Jingyi Wang <quic_jingyw@quicinc.com>
Date: Fri, 18 Oct 2024 13:57:50 +0800
Subject: [PATCH v4] dt-bindings: phy: Add QMP UFS PHY compatible for
 QCS8300
MIME-Version: 1.0
Message-ID: <20241018-qcs8300_ufs_phy_binding-v4-1-261c7c5fb8ff@quicinc.com>
X-B4-Tracking: v=1; b=H4sIAN34EWcC/3XOzWrDMAzA8VcpPs9Dsl1i79T3GCP4K41gc9I4N
 Q0h794kh9FSevwL9JNmluNAMbOvw8yGWChTl9ZQHwfmW5vOkVNYmwkQCgE1v/isJUB9bXLdt1P
 tKAVKZ26dVFJXRlbOsnW7H2JDt13+/lm7pTx2w7QfKrhNdxMMqH+TEo1kf+swZuIFOfAA0RrbB
 A9QnS5X8pT8p+/+2EYW8cAgvn2tCI7ca0ArgqisVq+SfJDE8b0kNwmjO3pppAPzLC3LcgeZ8vN
 aUQEAAA==
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <quic_tengfan@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Xin Liu <quic_liuxin@quicinc.com>,
        "Krzysztof
 Kozlowski" <krzk@kernel.org>,
        Jingyi Wang <quic_jingyw@quicinc.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729231084; l=1925;
 i=quic_jingyw@quicinc.com; s=20240910; h=from:subject:message-id;
 bh=cIzsS7WtAgG8RrKLAxp0haNwd4XREYe1ge3YjdcH9XA=;
 b=c7Uik0Z95t6IvSIP83Hw8odE2Dd07OVzfMe3IMRCwCIKIojOhFGlQ6iq+mxGIH04QCYdwuUyT
 To71V+deLaNCGHk0SZsaIGfsB2tIo6vIzbzsm6YxMog5A9fPPTkjsoL
X-Developer-Key: i=quic_jingyw@quicinc.com; a=ed25519;
 pk=ZRP1KgWMhlXXWlSYLoO7TSfwKgt6ke8hw5xWcSY+wLQ=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: GuLA74vhDjOqofX165Tgo8Wj6vEB9Dyl
X-Proofpoint-GUID: GuLA74vhDjOqofX165Tgo8Wj6vEB9Dyl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 mlxscore=0 bulkscore=0
 clxscore=1011 suspectscore=0 mlxlogscore=990 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410180035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_225811_988074_6C1B6AE9 
X-CRM114-Status: GOOD (  11.08  )
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

From: Xin Liu <quic_liuxin@quicinc.com>

Document the QMP UFS PHY compatible for Qualcomm QCS8300 to support
physical layer functionality for UFS found on the SoC. Use fallback to
indicate the compatibility of the QMP UFS PHY on the QCS8300 with that
on the SA8775P.

Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
---
Changes in v4:
- rebase on phy/next
- Link to v3: https://lore.kernel.org/r/20240925-qcs8300_ufs_phy_binding-v3-1-c1eb5c393b09@quicinc.com

Changes in v3:
- remove redundant compatible.
- Link to v2: https://lore.kernel.org/r/20240911-qcs8300_ufs_phy_binding-v2-1-c801a2d27a84@quicinc.com

Changes in v2:
- decoupled from the original series.
- Use fallback to indicate compatibility with SA8775P.
- typo fixup
- Link to v1: https://lore.kernel.org/r/20240904-qcs8300_initial_dtsi-v1-0-d0ea9afdc007@quicinc.com
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index a93d64d1c55b..72bed2933b03 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -20,6 +20,10 @@ properties:
           - enum:
               - qcom,qcs615-qmp-ufs-phy
           - const: qcom,sm6115-qmp-ufs-phy
+      - items:
+          - enum:
+              - qcom,qcs8300-qmp-ufs-phy
+          - const: qcom,sa8775p-qmp-ufs-phy
       - enum:
           - qcom,msm8996-qmp-ufs-phy
           - qcom,msm8998-qmp-ufs-phy

---
base-commit: 26ac85e3adb4775df42d94b310276b06c0898d3d
change-id: 20241018-qcs8300_ufs_phy_binding-ab34387937ba

Best regards,
-- 
Jingyi Wang <quic_jingyw@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
