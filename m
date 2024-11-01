Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 472AAE6749A
	for <linux-phy@archiver.kernel.org>; Fri,  1 Nov 2024 03:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aQyFQv6xnpBOVafccpH9HegZXoBgklex8F9Pv10SJPg=; b=LlkJpBgHkWcVBf
	GyB0Y8dI+zxJc0JCNHjyFwiy12rOsodN7IhjwT4W42gnsaoX7rJXu1gSbweKIDOzIzKoWPWnNqFlB
	WOzCpDIn9jayPGs6d4CD0BlJU0UsmN7XrmRO7VicWCjt2XiEt/eFfX4Js+KDZ3nHyhpOLO9zCcIVH
	nrGodgl0KGnrvP5NKeHMV1BApT0zOMdO3ieYVSd/p23Sbbx/neHxALdPurfgFYPqJrH8URoMxgfOk
	8PHOAexIjJVUGS5Eot+oAIxLCJ9lFfwY+U5dpirP+3z6eNEIitBdBSnpIj6UStX/kvWCJRwg0gn0z
	O0AhUMUlzZGNedmlHbLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6i2J-00000005cOO-2xpt;
	Fri, 01 Nov 2024 03:09:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6i2G-00000005cLv-0Fmn
	for linux-phy@lists.infradead.org;
	Fri, 01 Nov 2024 03:09:18 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A11h0ZV009582;
	Fri, 1 Nov 2024 03:09:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=1t5Vw4D11RFv2UJphxxylQgWXk9PBbdkbH+
	Ov4onbvw=; b=Y7CPeVHTJ8VU/qq7T3ePU/e6Jbp+dcnBMNHUhxPL0A8LDGMmYyW
	aGmmQn9UJbSpONSV0+b3gskI3zgSuTU1APr018oVAJCdwbzFrI/6jFsXBhqOM+ZS
	O+IldNeyWCBkiWMSzKcIp1DiUgRzj69ZO5V/1jxTmOCysC/n+7M+saTOe90wX8VC
	UN4w4lbnRZ66sKIPuPU5COBY5kvypV8kcAvUHpMx2rmsaaM+YuyfpAV43paB6kX3
	rO62p37TrFz2TRXkiFYe+h2P6JkIqHBFMvnkhrswBit9QaXfkPSS2GVMKuh07AQZ
	4AA8TmDkiAUIC6wD3vejo0818WRARacZ9bw==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42kjm1dyqx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 01 Nov 2024 03:09:07 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA05.qualcomm.com [127.0.0.1])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 4A13967d007979;
	Fri, 1 Nov 2024 03:09:06 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA05.qualcomm.com (PPS) with ESMTPS id 42khwpyumj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 01 Nov 2024 03:09:06 +0000
Received: from NALASPPMTA05.qualcomm.com (NALASPPMTA05.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 4A137UOe005970;
	Fri, 1 Nov 2024 03:09:05 GMT
Received: from hu-devc-lv-u22-c.qualcomm.com (hu-qianyu-lv.qualcomm.com [10.81.25.114])
	by NALASPPMTA05.qualcomm.com (PPS) with ESMTPS id 4A1395r5007961
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 01 Nov 2024 03:09:05 +0000
Received: by hu-devc-lv-u22-c.qualcomm.com (Postfix, from userid 4098150)
	id 1633765D; Thu, 31 Oct 2024 20:09:05 -0700 (PDT)
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
Subject: [PATCH v8 0/5] Add support for PCIe3 on x1e80100
Date: Thu, 31 Oct 2024 20:08:57 -0700
Message-Id: <20241101030902.579789-1-quic_qianyu@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 9mRq5dBWInlCED2qd9g3EoKZVPRIRGhH
X-Proofpoint-ORIG-GUID: 9mRq5dBWInlCED2qd9g3EoKZVPRIRGhH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 adultscore=0
 mlxscore=0 mlxlogscore=999 spamscore=0 suspectscore=0 clxscore=1015
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411010021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_200916_554310_5FD73E4E 
X-CRM114-Status: GOOD (  13.12  )
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

v7->v8:
1. Add Reviewed-by tags
2. Rephrase commit message and remove Fix tags
3. Add Synopsis IP revision and put ops_1_21_0 after ops_1_9_0.
4. Remove  [PATCH v7 1/7] and [PATCH v7 4/7] as they were applied
5. Link to v7: https://lore.kernel.org/all/20241017030412.265000-1-quic_qianyu@quicinc.com/

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

Qiang Yu (5):
  dt-bindings: PCI: qcom: Move OPP table to qcom,pcie-common.yaml
  dt-bindings: PCI: qcom,pcie-x1e80100: Add 'global' interrupt
  PCI: qcom: Remove BDF2SID mapping config for SC8280X family SoC
  PCI: qcom: Disable ASPM L0s for X1E80100
  arm64: dts: qcom: x1e80100: Add support for PCIe3 on x1e80100

 .../bindings/pci/qcom,pcie-common.yaml        |   4 +
 .../bindings/pci/qcom,pcie-sm8450.yaml        |   4 -
 .../bindings/pci/qcom,pcie-x1e80100.yaml      |   9 +-
 arch/arm64/boot/dts/qcom/x1e80100.dtsi        | 204 +++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c        |  14 +-
 5 files changed, 225 insertions(+), 10 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
