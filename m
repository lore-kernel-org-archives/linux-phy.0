Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F21EAC83F14
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 13:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BrQI/lpLkrc0s7sDmoV0Y25CPO4Pj3eEa5Dh7F283BA=; b=a2ZgOdYBQWiJ8g
	xfatcf4o5sAkZFuq4GR+eh8OSMB6Y+QhofgPfsvEbaiI+dIBJNpvC0Yc9j3lHe9ThptdMRvTHfsRm
	bTUqjQfs7tQoc0j5o6t68FTHybmBGJRd2jvmSt/l3HBslvXCxHYGGP0WrcrhFVIjpKRqooDeJfP5C
	7bGudT88QpIZN1XZCph3Ox6u9IfhodCfa99jw0H/a6eohdPreLLqaYnuOt6Z/XDv52tJlYvdfIMJf
	ItSzEC9+9XHcq/vJx+HVVaKw+v6NR8qDj2KhUL6AzVgpEKLHIZ3C5vW3kzHKCMnlow/kK2dPt/8ui
	z4eY82AkiBLyDJArzVjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qazFF-00Beaj-2G;
	Tue, 29 Aug 2023 13:59:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qazFC-00BeZS-26;
	Tue, 29 Aug 2023 13:59:00 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37TDRvpE016081;
	Tue, 29 Aug 2023 13:58:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=3HgZxPAJblzo/qZMT7g5J9cAGY7s56PVzrFj7VikI9s=;
 b=Q7bRrSh57tYwu3T5hv1yVn1KpmMWrsJXlCPbsLCJN+JKO6sneDy04aMTKVcSXb/pu/p3
 fLjunPf/ubmuX+cA+/HJj5VZLmVdhFOsqH93XuwkC2aP5umLWD7rLDSjiIBCG7TLM3e8
 QaFOPDGiy9F+NO3ZIhin0TLsOAhEsbJsSGFQ9zciHl9mjjr1uPRLSncN/WgXn53RLvr8
 nKCiSALrSUJxRWNZYjUwcKmV8WiaCz0CWUOK1TfQ1WaKff38aos2lJUykFP05Ob5CAVU
 hDEwJaPKtOVWlXuGnVGOwZ5KYr1vINCs6Rcw1sDdbVgMaukXXUMTp+2SEvObJe/8Qjcx QA== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ss4g6hm78-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Aug 2023 13:58:46 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37TDwjh8012090
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Aug 2023 13:58:45 GMT
Received: from hu-ipkumar-blr.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Tue, 29 Aug 2023 06:58:37 -0700
From: Praveenkumar I <quic_ipkumar@quicinc.com>
To: <robert.marko@sartura.hr>, <luka.perkov@sartura.hr>,
        <quic_ipkumar@quicinc.com>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <quic_varada@quicinc.com>
Subject: [PATCH 1/9] dt-bindings: phy: qcom,uniphy: Rename ipq4019 usb PHY to UNIPHY
Date: Tue, 29 Aug 2023 19:28:10 +0530
Message-ID: <20230829135818.2219438-2-quic_ipkumar@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: wGzCsaMfpelEDBJx5F8UP2QxKaaASrLP
X-Proofpoint-GUID: wGzCsaMfpelEDBJx5F8UP2QxKaaASrLP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_11,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 mlxscore=0 mlxlogscore=999 malwarescore=0
 lowpriorityscore=0 phishscore=0 clxscore=1015 spamscore=0 bulkscore=0
 adultscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2308100000 definitions=main-2308290120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_065858_802793_6ACE5B42 
X-CRM114-Status: GOOD (  13.78  )
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

UNIPHY / Combo PHY used on various qualcomm SoC's are very similar to
ipq4019 PHY. Hence renaming this dt-binding to uniphy dt-binding and
can be used for other qualcomm SoCs which are having similar UNIPHY.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
---
 .../phy/{qcom-usb-ipq4019-phy.yaml => qcom,uniphy.yaml}  | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom-usb-ipq4019-phy.yaml => qcom,uniphy.yaml} (78%)

diff --git a/Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
similarity index 78%
rename from Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml
rename to Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
index 09c614952fea..cbe2cc820009 100644
--- a/Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
@@ -1,13 +1,18 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/phy/qcom-usb-ipq4019-phy.yaml#
+$id: http://devicetree.org/schemas/phy/qcom,uniphy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcom IPQ40xx Dakota HS/SS USB PHY
+title: Qualcomm UNIPHY
 
 maintainers:
   - Robert Marko <robert.marko@sartura.hr>
+  - Praveenkumar I <quic_ipkumar@quicinc.com>
+
+description:
+  UNIPHY / COMBO PHY supports physical layer functionality for USB and PCIe on
+  Qualcomm chipsets.
 
 properties:
   compatible:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
