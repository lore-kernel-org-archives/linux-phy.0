Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 272B1D2F7DA
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 03:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P2Wk4WSvRoUdrvMZ+u+qEvGO4+Ff4lXc4epW/uy7k5E=; b=Hv/uONgtL1pxAJ
	esv9HmCe1OV5xnZ1cfg8cT0hUNdszZcEwHOsgul3AXdmpoPJiCjnl4e/gqPs0QgrdwkSNXfQ+ZpBt
	qiACxOR0lDZsN6uGh5ysMo61peQwUoWj2CIXOenBfHh16xInS3esZlQ3LRLCktBIfB4e2GelNSuLG
	+eZusYGp0xsnvLXw4qWvUiP4JUOqJ1LbwvQ8WdqqdpkdLFC3IFldQHiSvS3gMkjYjdmMX2kRGqduw
	h3AtBfdpAavN6A9UWuKbJB4h4jbk/zmAQY1HaykCBnuVaILRBE5eib/QuvOkbcbb8/g7JtCucclOv
	WIv/wFhAm6B74OhztEng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1GoU-0000000DcFv-3ZY5;
	Thu, 17 Oct 2024 03:04:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1GoO-0000000DcDZ-3KSt
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 03:04:33 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49GEUMYr010668;
	Thu, 17 Oct 2024 03:04:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=5zCwqDGoO029oq4bVy0qDiKknXSTNZp1igz
	JmA5BfWE=; b=HVqqccOgzd85rqpH+fc2TUsRSnNLNaoihQrXkxBqRmvAhWKdmsT
	gZ0heqaX/ly2krQ5+09daQAJDfibU57CxwX5FpoaEhZch5n+I+IyIrPSCM5bCVut
	X5oeDEqEF6uw1Qb55qbs8rq5R1Xf7efqYUqF/eeSDqZB9xHRRnmTcv1xBfiJqJeu
	MJO9DskV/XxaqGbYBQUKH6JuH8tr5I4w5KOZnmhwqH7S3dGysaRj2OJqLJxMXZSu
	kwH/EypnJeI127Z6bDZXn62v1hdm0f7luVtPxEsl/TDhHhFou+Fj67yCD0IY15x/
	JdUYytfLKE0VIkUN4gWOlHxnoZkIV28hgZw==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 429mh56p1c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Oct 2024 03:04:15 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA02.qualcomm.com [127.0.0.1])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 49H306tO005211;
	Thu, 17 Oct 2024 03:04:14 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA02.qualcomm.com (PPS) with ESMTPS id 42aj4huu3b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Oct 2024 03:04:14 +0000
Received: from NALASPPMTA02.qualcomm.com (NALASPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 49H2tTTs031378;
	Thu, 17 Oct 2024 03:04:14 GMT
Received: from hu-devc-lv-u22-c.qualcomm.com (hu-qianyu-lv.qualcomm.com [10.81.25.114])
	by NALASPPMTA02.qualcomm.com (PPS) with ESMTPS id 49H34ET4010801
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Oct 2024 03:04:14 +0000
Received: by hu-devc-lv-u22-c.qualcomm.com (Postfix, from userid 4098150)
	id ECAAE650; Wed, 16 Oct 2024 20:04:13 -0700 (PDT)
From: Qiang Yu <quic_qianyu@quicinc.com>
To: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
        quic_devipriy@quicinc.com
Cc: dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
        neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, johan+linaro@kernel.org,
        Qiang Yu <quic_qianyu@quicinc.com>
Subject: [PATCH v7 0/7] Add support for PCIe3 on x1e80100
Date: Wed, 16 Oct 2024 20:04:05 -0700
Message-Id: <20241017030412.265000-1-quic_qianyu@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 9CHZY2tiA-EdCXhq-OmFsaxUAxDzM6DP
X-Proofpoint-ORIG-GUID: 9CHZY2tiA-EdCXhq-OmFsaxUAxDzM6DP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 adultscore=0 mlxlogscore=999
 lowpriorityscore=0 mlxscore=0 phishscore=0 malwarescore=0 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410170020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_200428_972709_19839AC4 
X-CRM114-Status: GOOD (  13.95  )
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

This series add support for PCIe3 on x1e80100.

PCIe3 needs additional set of clocks, regulators and new set of PCIe QMP
PHY configuration compare other PCIe instances on x1e80100. Hence add
required resource configuration and usage for PCIe3.

v6->v7:
1. Add Acked-by and Reviewed-by tags
2. Use 70574511f3f ("PCI: qcom: Add support for SC8280XP") in Fixes tag
3. Keep minItem of interrupt as 8 in buindings
4. Reword commit msg 
5. Remove [PATCH v6 5/8] clk: qcom: gcc-x1e80100: Fix halt_check for
   pipediv2 clocks as it was applied
6. Link to v6: https://lore.kernel.org/linux-pci/20241011104142.1181773-1-quic_qianyu@quicinc.com/

v5->v6:
1. Add Fixes tag
2. Split [PATCH v5 6/7] into two patches
3. Reword commit msg
4. Link to v5: https://lore.kernel.org/linux-pci/20241009091540.1446-1-quic_qianyu@quicinc.com/

v4->v5:
1. Add Reviewed-by tag
2. Expand and clarify usage of txz/rxz in commit message
3. Add comments that txz/rxz must be programmed before tx/rx
4. Change the sort order for phy register tbls
5. Use the order defined in struct qmp_phy_cfg_tbls for phy register tbls
   presented in x1e80100_qmp_gen4x8_pciephy_cfg
6. Add Fixes and CC stable tag
7. Fix ops for SC8280X and X1E80100
8. Document global interrupt in bindings
9. Link to v4: https://lore.kernel.org/all/20240924101444.3933828-1-quic_qianyu@quicinc.com/

v3->v4:
1. Reword commit msg of [PATCH v3 5/6]
2. Drop opp-table property from qcom,pcie-sm8450.yaml
3. Add Reviewed-by tag
4. Link to v3: https://lore.kernel.org/all/20240923125713.3411487-1-quic_qianyu@quicinc.com/

v2->v3:
1. Use 'Gen 4 x8' in commit msg
2. Move opp-table property to qcom,pcie-common.yaml
3. Add Reviewed-by tag
4. Add global interrupt and use GIC_SPI for the parent interrupt specifier
5. Use 0x0 in reg property and use pcie@ for pcie3 device node
6. Show different IP version v6.30 in commit msg
7. Add logic in controller driver to have new ops for x1e80100
8. Link to v2: https://lore.kernel.org/all/20240913083724.1217691-1-quic_qianyu@quicinc.com/

v2->v1:
1. Squash [PATCH 1/8], [PATCH 2/8],[PATCH 3/8] into one patch and make the
   indentation consistent.
2. Put dts patch at the end of the patchset.
3. Put dt-binding patch at the first of the patchset.
4. Add a new patch where opp-table is added in dt-binding to avoid dtbs
   checking error.
5. Remove GCC_PCIE_3_AUX_CLK, RPMH_CXO_CLK, put in TCSR_PCIE_8L_CLKREF_EN
   as ref.
6. Remove lane_broadcasting.
7. Add 64 bit bar, Remove GCC_PCIE_3_PIPE_CLK_SRC, 
   GCC_CFG_NOC_PCIE_ANOC_SOUTH_AHB_CLK is changed to
   GCC_CFG_NOC_PCIE_ANOC_NORTH_AHB_CLK.
8. Add Reviewed-by tag.
9. Remove [PATCH 7/8], [PATCH 8/8].
10. Link to v1: https://lore.kernel.org/all/20240827063631.3932971-1-quic_qianyu@quicinc.com/ 

Qiang Yu (7):
  dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100
    QMP PCIe PHY Gen4 x8
  dt-bindings: PCI: qcom: Move OPP table to qcom,pcie-common.yaml
  dt-bindings: PCI: qcom,pcie-x1e80100: Add 'global' interrupt
  phy: qcom: qmp: Add phy register and clk setting for x1e80100 PCIe3
  PCI: qcom: Remove BDF2SID mapping config for SC8280X family SoC
  PCI: qcom: Disable ASPM L0s and remove BDF2SID mapping config for
    X1E80100 SoC
  arm64: dts: qcom: x1e80100: Add support for PCIe3 on x1e80100

 .../bindings/pci/qcom,pcie-common.yaml        |   4 +
 .../bindings/pci/qcom,pcie-sm8450.yaml        |   4 -
 .../bindings/pci/qcom,pcie-x1e80100.yaml      |   9 +-
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   3 +
 arch/arm64/boot/dts/qcom/x1e80100.dtsi        | 204 ++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c        |  14 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 214 ++++++++++++++++++
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h    |  25 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h |  19 ++
 9 files changed, 486 insertions(+), 10 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
