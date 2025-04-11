Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5EF8C369A8
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 11:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HItlogI2rpytrCNXbhakZot+ln3Gfx9ZpSPDv1IY5Mc=; b=uVqapgjsC3Zh/u
	no1ycZhpgJNlNi2uxQ2J8byZ/JtMAb3J7S4LErZKvorr//CmgGjLzL/2x3Aed5H/3wT7WjjQbQtZg
	6eymKOeobDW+gkU8QzKOQ/jbyrcIIISG4ZxwvxELFu0s7x1LBFsE7Zp7ZXfDe7IdxZ+K0NOSRqkup
	r+4EePDpc30Vcnbm49f3zsalDjmnJacPir62OhglAXXEAC3q/YPkYkNOHIEKijZtEk2pXHK/6yp/r
	7a1qSV1D36L7dGb32p6MpLKSEJ6fdF3JajSjFCH4VRRZGdpsr5GgO60GDX82M2j1qpIwO6MZdyg3E
	VeDbrMBFuxOgVMTJg4FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3Ckl-0000000Dbko-0cEh;
	Fri, 11 Apr 2025 11:40:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3Cbb-0000000DZWP-3vgn
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 11:31:33 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53B5jhKO028846;
	Fri, 11 Apr 2025 11:31:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=wtAFm4/u1v1FpQAtZ/vwHWKpL/Bes+JwYXZ
	S/ta0SXI=; b=CpsZVyzmvH3BNeIdCOxaNngy9WXAYhSKIswP3f+ymGz6JtQCM+e
	TfZRqqLDZ568CziHGOR8/Sad6q6E3mH3aqrzhpehuaJ5dqM6VC5qKh4ul7MzOfIp
	S1nvtwr+WJkXcI7k+qIg8NwaNjQOCOaf7s3VUB8sO5eaGd4j8xaJ26IzMwZblduF
	DzSZUe7nb9XwAXbptoMmRIuNn7WxiqzuzUhPC8Ia4sib9XqbNnONGLYxNnWn0859
	1vVVi2y9c7h8a2NtnFOrMduQhYl2Z2CFuI7VzNg0fosOOosTXhpIXfNcUlAfsUfh
	S7ZEXhQXGnlTtViG60Ahgv4fieHbgI5j5yw==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbut8m2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Apr 2025 11:31:27 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 53BBVP55004330;
	Fri, 11 Apr 2025 11:31:25 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 45ue3f20tw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Apr 2025 11:31:25 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 53BBVPXd004321;
	Fri, 11 Apr 2025 11:31:25 GMT
Received: from cbsp-sh-gv.ap.qualcomm.com (CBSP-SH-gv.ap.qualcomm.com [10.231.249.68])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 53BBVOYx004313
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Apr 2025 11:31:25 +0000
Received: by cbsp-sh-gv.ap.qualcomm.com (Postfix, from userid 4635958)
	id 871FE40C49; Fri, 11 Apr 2025 19:31:23 +0800 (CST)
From: Wenbin Yao <quic_wenbyao@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
        quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
        manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com, quic_cang@quicinc.com,
        quic_wenbyao@quicinc.com
Subject: [PATCH v7 0/2] phy: qcom: qmp-pcie: Add PCIe PHY no_csr reset support
Date: Fri, 11 Apr 2025 19:31:18 +0800
Message-Id: <20250411113120.651363-1-quic_wenbyao@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 0b0fRS1LSEQUiqm2R16C7HBdNhbT6oaz
X-Proofpoint-ORIG-GUID: 0b0fRS1LSEQUiqm2R16C7HBdNhbT6oaz
X-Authority-Analysis: v=2.4 cv=dbeA3WXe c=1 sm=1 tr=0 ts=67f8fd8f cx=c_pps a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=KSWhaOQsIW5CwuxG1jYA:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504110073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_043131_991722_500BA77C 
X-CRM114-Status: GOOD (  10.75  )
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

The series aims to skip phy register programming and drive PCIe PHY with
register setting programmed in bootloader by simply toggling no_csr reset,
which once togglled, PHY hardware will be reset while PHY registers are
retained.

First, determine whether PHY setting can be skipped by checking
QPHY_START_CTRL register and the existence of nocsr reset. If it is
programmed and no_csr reset is supported, do no_csr reset and skip BCR
reset which will reset entire PHY.

This series also remove has_nocsr_reset flag in qmp_phy_cfg structure and
decide whether the PHY supports nocsr reset by checking the existence of
nocsr reset in device tree.

The series are tested on X1E80100-QCP and HDK8550.

The commit messages of this patchset have been modified based on comments
and suggestions.

Changes in v7:
- Rebase on linux-phy/next branch.
- Link to v6: https://lore.kernel.org/all/20250319094544.3980357-1-quic_wenbyao@quicinc.com/

Changes in v6:
- Return -ENODATA instead of -EINVAL when init sequence is not available.
- Link to v5: https://lore.kernel.org/all/20250226103600.1923047-1-quic_wenbyao@quicinc.com/

Changes in v5:
- Add a check whether the init sequences are exist if the PHY needs to be
  initialized to Patch 2/2.
- Link to v4: https://lore.kernel.org/all/20250220102253.755116-1-quic_wenbyao@quicinc.com/

Changes in v4:
- Add Philipp's Reviewed-by tag to Patch 1/2.
- Use PHY instead of phy in comments in Patch 2/2.
- Use "if (qmp->nocsr_reset)" instead of "if (!qmp->nocsr_reset)" in
  function qmp_pcie_exit for readability in Patch 2/2.
- Use goto statements in function qmp_pcie_power_on and qmp_pcie_power_off
  for readability in Patch 2/2.
- Refine the comment of why not checking qmp->skip_init when reset PHY in
  function qmp_pcie_power_off in Patch 2/2.
- Link to v3: https://lore.kernel.org/all/20250214104539.281846-1-quic_wenbyao@quicinc.com/

Changes in v3:
- Replace devm_reset_control_get_exclusive with
  devm_reset_control_get_optional_exclusive when get phy_nocsr reset
  control in Patch 1/2.
- Do not ignore -EINVAL when get phy_nocsr reset control in Patch 1/2.
- Replace phy_initialized with skip_init in struct qmp_pcie in Patch 2/2.
- Add a comment to why not check qmp->skip_init in function
  qmp_pcie_power_off in Patch 2/2.
- Link to v2: https://lore.kernel.org/all/20250211094231.1813558-1-quic_wenbyao@quicinc.com/

Changes in v2:
- Add Abel's and Manivannan's Reviewed-by tag to Patch 1/2.
- Refine commit msg of Patch 2/2.
- Link to v1: https://lore.kernel.org/all/20250121094140.4006801-1-quic_wenbyao@quicinc.com/

Konrad Dybcio (1):
  phy: qcom: pcie: Determine has_nocsr_reset dynamically

Qiang Yu (1):
  phy: qcom: qmp-pcie: Add PHY register retention support

 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 86 +++++++++++++++++-------
 1 file changed, 63 insertions(+), 23 deletions(-)


base-commit: 0af2f6be1b4281385b618cb86ad946eded089ac8
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
