Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B188CE7716B
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 10:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnYSiHkPwl7xxr8BuZpgK8u4A3/DUNBcSJV75/U8+zU=; b=M6qpiRe6fpfihe
	tyZETKmZkjGCTvTuJEfh3b1jkmTVBvEcGEC3a+QSxe79Le7cgxvJuUMCHFWz+NDvlsXzW0VsicSRs
	REdfRe4Zecj+6skwqFaNTWnncGYu9orlNWALAMg8CofZnutqSBu67LlFINhamDnLItCTYr7ulRTpo
	rWQ1ZBF1o1HR27xw5fRteFZZqlE8OKcn8XDc0YXPsUWAOQu/vTkr/QPw/IxZqJgR0PdtoJD25ZDZr
	hX0uCnUxUUYwdsI3IBsqnwZod/C8S6cYBAxaSUS/Hzj31oPfviEFppVwDffyy9tG46L1wZQqGaIQC
	PIKaWspmFKo0nvSHHcEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIn0A-0000000CHFa-20Af;
	Wed, 04 Dec 2024 10:53:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIn08-0000000CHF8-3ivh
	for linux-phy@lists.infradead.org;
	Wed, 04 Dec 2024 10:53:01 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B44BEQU020051;
	Wed, 4 Dec 2024 10:52:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=4A6Y9HvhCtq
	ouJ4cSCdLpXkCUHrUT28yTc4cC4sxQhs=; b=Gmfqu2N5zJ2gKryhJwvtIPLr9wN
	+u1wpvMlhc0EhIJ0UhRwXplTbZHyOr2VzLR7gUCMRuDD7HFvsU5etdZV3Sbqod4D
	XrOV2HUzgeQYwTU8T9xUQiJM4+WJnJA8yb1EdTLoeBmE8o87qz5J8PNLCIVMcc7M
	ASO6h42FMy3MxbGL0sGDqCNPPZWqVxS8ha0KH03AMrNGV/QURoomcSeSfxNNeDyN
	BI5EAhZz2N8Z0WX/fEqhVS9Tu38oyKLW0UQ2sdZSX6FgEy+0iVJtGGXCoYp2dBac
	+NDFCbf1dK1LFbkNSRNsotvvgmGqIhCABNjtixPAWQ4M61rWzgKCvHRx1Lw==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43a3exaw0f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Dec 2024 10:52:57 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 4B4Aqs1J008977;
	Wed, 4 Dec 2024 10:52:54 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 437uskmrth-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Dec 2024 10:52:54 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 4B4AqsSX008972;
	Wed, 4 Dec 2024 10:52:54 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 4B4AqrSO008893
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Dec 2024 10:52:54 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id E3D7419E4; Wed,  4 Dec 2024 18:52:52 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, dmitry.baryshkov@linaro.org,
        abel.vesa@linaro.org, neil.armstrong@linaro.org,
        manivannan.sadhasivam@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH 1/3] dt-bindings: phy: qcom,qmp-pcie: add optional current load properties
Date: Wed,  4 Dec 2024 18:52:47 +0800
Message-Id: <20241204105249.3544114-2-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
References: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 7MnpvqgsvsAYFISoTdlQfAIribvmbCgW
X-Proofpoint-GUID: 7MnpvqgsvsAYFISoTdlQfAIribvmbCgW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 mlxlogscore=999 clxscore=1011 phishscore=0 adultscore=0 suspectscore=0
 malwarescore=0 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412040085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_025300_927993_9AD2B0A4 
X-CRM114-Status: GOOD (  11.69  )
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

On some platforms, the power supply for PCIe PHY is not able to provide
enough current when it works in LPM mode. Hence, PCIe PHY driver needs to
set current load to vote the regulator to HPM mode.

Document the current load as properties for each power supply PCIe PHY
required, namely vdda-phy-max-microamp, vdda-pll-max-microamp and
vdda-qref-max-microamp, respectively.PCIe PHY driver should parse them to
set appropriate current load during PHY power on.

This three properties are optional and not mandatory for those platforms
that PCIe PHY can still work with power supply.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml          | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 34d977af9263..0e2715301c54 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -78,10 +78,16 @@ properties:
 
   vdda-phy-supply: true
 
+  vdda-phy-max-microamp: true
+
   vdda-pll-supply: true
 
+  vdda-pll-max-microamp: true
+
   vdda-qref-supply: true
 
+  vdda-qref-max-microamp: true
+
   qcom,4ln-config-sel:
     description: PCIe 4-lane configuration
     $ref: /schemas/types.yaml#/definitions/phandle-array
@@ -261,6 +267,7 @@ examples:
 
       vdda-phy-supply = <&vreg_l6d>;
       vdda-pll-supply = <&vreg_l4d>;
+      vdda-pll-max-microamp = <165000>;
 
       #clock-cells = <0>;
       clock-output-names = "pcie_2b_pipe_clk";
@@ -288,6 +295,7 @@ examples:
 
       vdda-phy-supply = <&vreg_l6d>;
       vdda-pll-supply = <&vreg_l4d>;
+      vdda-pll-max-microamp = <165000>;
 
       qcom,4ln-config-sel = <&tcsr 0xa044 0>;
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
