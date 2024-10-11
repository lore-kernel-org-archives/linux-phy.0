Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 475F3CFD342
	for <linux-phy@archiver.kernel.org>; Fri, 11 Oct 2024 10:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KHAAi5dx7hYt9bmFRYcicq31PwK172unMTPzwPgTbwE=; b=rTA+raRV/u8hmr
	Yu6aLNjym9Mb8vZhAYCE+3TgObgXLoc2acJ8yU/3htOh18DDhLX4HT6SQdHdP+Sz+nLMt0DQvrIAf
	qMW/N0dGjj65lumR9PTzaVYHVdnT/cWLCaLuQ1UDJmzcj0dCTeabjl1K/cJRz8vz1Nd9UG6BymXfo
	F0yzekSlKV+alElEyKnz4hpePqQ4uiVTAuN4u1FFmDfBkwopbp0rhKBap1VLV44ppgk3aprW58hdl
	2gC/sVFp4359ei+o6zBybYWq8DluX6z8qt+/WqZJnMpRR4EBBKqFz2HNcX0Rag+wvrRHX6dpRUrBv
	NxHP9niEtZnphEcdHWHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szD8B-0000000G2XP-46zp;
	Fri, 11 Oct 2024 10:44:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szD5z-0000000G1DG-1faL
	for linux-phy@lists.infradead.org;
	Fri, 11 Oct 2024 10:42:09 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49B6rq6t008687;
	Fri, 11 Oct 2024 10:41:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=ybrOZq/DzO08E/ZlkydFS6rDS+YVNMaS2lL
	ythUytUA=; b=KdjXxgepWDUhYKUb5iy7PGVgbTjizvysD8ZvfJLjFD0enaVcxGl
	IjYKjrT+/g9zt2fMOB3BqSgyT6N3pAVS6M3kVrfe3rTfRFfoltumK6c2QYspEc/H
	97fqsmWfnjAtee3ZcRG/KoXV2NbE+EJP+FDleb8Ndx1SxqnR84tt4cpw5nc5G06S
	8ghJ1ZTedf0x0lj+y+UjnyuqtBRNZKCkV4UMtIYDlAZj0DLaiqJs/GiT2cWqZAji
	sGJ73uBZDsUw3fKKGOtCS96JPEdTZsNnnKQ4hKbBQxPnPw67i6ufoQ3W7LsHHmzZ
	leqEdRmZt4inzjV4yBMkHrAjIPz0YyWRMKA==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 426y5c0rex-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Oct 2024 10:41:45 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA02.qualcomm.com [127.0.0.1])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 49BAfidk000478;
	Fri, 11 Oct 2024 10:41:44 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA02.qualcomm.com (PPS) with ESMTPS id 426uxek3xx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Oct 2024 10:41:44 +0000
Received: from NALASPPMTA02.qualcomm.com (NALASPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 49BAbWr2025831;
	Fri, 11 Oct 2024 10:41:44 GMT
Received: from hu-devc-lv-u22-c.qualcomm.com (hu-qianyu-lv.qualcomm.com [10.81.25.114])
	by NALASPPMTA02.qualcomm.com (PPS) with ESMTPS id 49BAfhsJ000465
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Oct 2024 10:41:44 +0000
Received: by hu-devc-lv-u22-c.qualcomm.com (Postfix, from userid 4098150)
	id B72D0651; Fri, 11 Oct 2024 03:41:43 -0700 (PDT)
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
        linux-clk@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>
Subject: [PATCH v6 0/8] Add support for PCIe3 on x1e80100
Date: Fri, 11 Oct 2024 03:41:34 -0700
Message-Id: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: V0ubLE-u0cSPeN6QtQa6IzpSLI2cOwaA
X-Proofpoint-GUID: V0ubLE-u0cSPeN6QtQa6IzpSLI2cOwaA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 lowpriorityscore=0 mlxlogscore=999 adultscore=0 impostorscore=0
 suspectscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 phishscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410110073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_034207_580027_CF74CB7B 
X-CRM114-Status: GOOD (  13.67  )
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

Qiang Yu (8):
  dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100
    QMP PCIe PHY Gen4 x8
  dt-bindings: PCI: qcom: Move OPP table to qcom,pcie-common.yaml
  dt-bindings: PCI: qcom,pcie-x1e80100: Add 'global' interrupt
  phy: qcom: qmp: Add phy register and clk setting for x1e80100 PCIe3
  clk: qcom: gcc-x1e80100: Fix halt_check for pipediv2 clocks
  PCI: qcom: Fix the ops for SC8280X family SoC
  PCI: qcom: Fix the cfg for X1E80100 SoC
  arm64: dts: qcom: x1e80100: Add support for PCIe3 on x1e80100

 .../bindings/pci/qcom,pcie-common.yaml        |   4 +
 .../bindings/pci/qcom,pcie-sm8450.yaml        |   4 -
 .../bindings/pci/qcom,pcie-x1e80100.yaml      |  10 +-
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   3 +
 arch/arm64/boot/dts/qcom/x1e80100.dtsi        | 204 ++++++++++++++++-
 drivers/clk/qcom/gcc-x1e80100.c               |  10 +-
 drivers/pci/controller/dwc/pcie-qcom.c        |  14 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 214 ++++++++++++++++++
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h    |  25 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h |  19 ++
 10 files changed, 491 insertions(+), 16 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
