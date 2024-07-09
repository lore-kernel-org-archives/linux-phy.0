Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A461C3DA41
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jul 2024 12:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:Message-ID:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YLdUFOmUxCcS3WBiRES3QGi9bYqxSyKR7LHpYHg1jpQ=; b=ePWKhy0u2LZSBg
	z8ujb/vyeuz7QeKJhuohhm5MNIYXX74qAdR8WtEDJovVwFpuhCqMBnj1cXnvebM+of2JveH1tnOik
	MHeThfmCDnTwm+GCZLJedBlAfa9kUERhQ34ZTwR831mD6iOGoTeprh020kpAOLndAUQPzwDe2F4TW
	3whrHJL8/iF4bhYfdrf64Sj/u8IbiXWYHyesj/ukogcGwfywhnGi1tAnfAW0ZjLUDe50Zxi1Je+N1
	yTjolFfeCGQbgt3dpCqTNvlb40A3vdPvBtlcZaGDiOSUZKor3Niqso9hcNJuuVaJMzgr42Ho/E84Y
	ROgIbXOokXiK19PL7L1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRAFA-00000007BgR-3cEX;
	Tue, 09 Jul 2024 12:46:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRAF0-00000007Bcd-2BXw
	for linux-phy@lists.infradead.org;
	Tue, 09 Jul 2024 12:46:43 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 469C1Sb8016208;
	Tue, 9 Jul 2024 12:46:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=B75fg+7MGETPksCZcZVLPi
	Vl5b+K7TaIT1sCh9FBYPo=; b=j/Sed078igS0+u1pqnRyuB5mDS3DIIw/kDhzd7
	LFU42yDurpcDzc3YIdxWBQkr3s6Qh4EJmdFO/mCs5F/znWfzGq7nNwxlVtY/0Ijk
	F7Kqfd3yDjbp2UGS7HoITcej+KhQlmnJyRspKgMyTqaOR4UNRNENXioOWdPfgnsX
	Qx/17uIj8IdddjZAE7SeVuLNUH0HV4Ad4tE0321IXJpatZgCHb6eDv7Ciz1vSbac
	yaCa9DFEL8IZGPx4Y8HnnYHVs6hhu3LcaDKt+uQBQG7tVvpmMzgb56iZJYgPGzgV
	MmRnqIGQteOekh2CGggFF3Bp1gmus/QP7fMAiF3V1y9hA59A==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 406x516kn9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jul 2024 12:46:39 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 469CkdZg011255
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 9 Jul 2024 12:46:39 GMT
Received: from tengfan-gv.ap.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 9 Jul 2024 05:46:33 -0700
From: Tengfei Fan <quic_tengfan@quicinc.com>
Date: Tue, 9 Jul 2024 20:46:19 +0800
Subject: [PATCH v2] dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings
 for QCS9100
MIME-Version: 1.0
Message-ID: <20240709-document_qcs9100_usb_hs_phy_compatible-v2-1-c84fbbafa9d6@quicinc.com>
X-B4-Tracking: v=1; b=H4sIABoxjWYC/5WOQQ6CMBBFr2K6tmQ6UAVX3sOYhpZRJtGCFIiEc
 HcLiQuXLt9fvPdnEahjCuK0m0VHIwdufATc74SrS38nyVVkgYAZHKGQVeOGJ/nevFwoFIAZgjV
 1MG09Gdc827Jn+yCZ29QWzh50mpOIsrajG7+30OUauebQN920dUdc128iBdS5hgTVEQFyqeRrY
 Gd68vdb6c8rsHdJbK3ef3+NGIUOldapzgpU8CO8LsvyAWCRRdETAQAA
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <kernel@quicinc.com>, Tengfei Fan <quic_tengfan@quicinc.com>
X-Mailer: b4 0.15-dev-a66ce
X-Developer-Signature: v=1; a=ed25519-sha256; t=1720529193; l=2460;
 i=quic_tengfan@quicinc.com; s=20240709; h=from:subject:message-id;
 bh=JGyPpjmrhsfqcLhBLrd1A38OzaoCKd0tq/wkHGWp57M=;
 b=7qjR3zuvGxwujGiBpy2UQ1NPZVX7GQG+Feb3Fouh9sZrsQTIjt6N3VxUam51jyDohkno6Tz1W
 6U3fwqwUCgXAzYFMYWPK/k0qIBw112eh02MYkYC587FWTaDVnbCA2Gy
X-Developer-Key: i=quic_tengfan@quicinc.com; a=ed25519;
 pk=4VjoTogHXJhZUM9XlxbCAcZ4zmrLeuep4dfOeKqQD0c=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 1RErOJMKbgO4QvJLX4zq1LZ7NA1vRNMu
X-Proofpoint-ORIG-GUID: 1RErOJMKbgO4QvJLX4zq1LZ7NA1vRNMu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-09_02,2024-07-09_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 suspectscore=0 impostorscore=0 mlxlogscore=837 mlxscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2406140001 definitions=main-2407090081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_054642_610057_96BF1809 
X-CRM114-Status: GOOD (  13.05  )
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

Document the compatible string for USB phy found in Qualcomm QCS9100
SoC.
QCS9100 is drived from SA8775p. Currently, both the QCS9100 and SA8775p
platform use non-SCMI resource. In the future, the SA8775p platform will
move to use SCMI resources and it will have new sa8775p-related device
tree. Consequently, introduce "qcom,qcs9100-usb-hs-phy" to describe
non-SCMI based USB phy.

Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
---
Introduce support for the QCS9100 SoC device tree (DTSI) and the
QCS9100 RIDE board DTS. The QCS9100 is a variant of the SA8775p.
While the QCS9100 platform is still in the early design stage, the
QCS9100 RIDE board is identical to the SA8775p RIDE board, except it
mounts the QCS9100 SoC instead of the SA8775p SoC.

The QCS9100 SoC DTSI is directly renamed from the SA8775p SoC DTSI, and
all the compatible strings will be updated from "SA8775p" to "QCS9100".
The QCS9100 device tree patches will be pushed after all the device tree
bindings and device driver patches are reviewed.

The final dtsi will like:
https://lore.kernel.org/linux-arm-msm/20240703025850.2172008-3-quic_tengfan@quicinc.com/

The detailed cover letter reference:
https://lore.kernel.org/linux-arm-msm/20240703025850.2172008-1-quic_tengfan@quicinc.com/
---
Changes in v2:
  - Split huge patch series into different patch series according to
    subsytems
  - Update patch commit message

prevous disscussion here:
[1] v1: https://lore.kernel.org/linux-arm-msm/20240703025850.2172008-1-quic_tengfan@quicinc.com/
---
 Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 519c2b403f66..cd0a723590f0 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -17,6 +17,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,qcs9100-usb-hs-phy
               - qcom,sa8775p-usb-hs-phy
               - qcom,sc8280xp-usb-hs-phy
           - const: qcom,usb-snps-hs-5nm-phy

---
base-commit: 0b58e108042b0ed28a71cd7edf5175999955b233
change-id: 20240709-document_qcs9100_usb_hs_phy_compatible-8b3b9cb6538e

Best regards,
-- 
Tengfei Fan <quic_tengfan@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
