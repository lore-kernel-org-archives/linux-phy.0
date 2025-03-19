Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5279C36000
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 09:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ABPBMOPD6AUEMnVQJdjE6sZd3psThTP4PC4+YQwOEYI=; b=QAY2fkOo4HKAKs
	ZNLP2VtszwVAoVno56FOAcMKsgx3/qPIVWXJN9g57AcZOp2Rghx/bOLPDBM76+KiIz9qHwfxRJvaf
	EqvRyPL4x0wzg1JQ+jJub76hvnsYSR5UUkpV3z1JQhbxqfU0sGrsLpjIdZsEL4fe3mtW6ZcKqPhcW
	huWyPcGw6au/hnecqXFGAycd+z20phvto+xeqkfZMvdykInhvXpDLwVF2jyJ/bR9sAQCYjCqKh9fr
	fb9FKtQKYjnHQHMLfcGGJ0AN4N2HDDsI7yFEURsaaNkaiZt6V55vbPv3oqCSE2yVWjFDPkIm5XxoF
	ezCWmL3EVrjgA3lp2y7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuq9U-00000008aRx-2lBQ;
	Wed, 19 Mar 2025 09:55:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tupzs-00000008YIH-24jF
	for linux-phy@lists.infradead.org;
	Wed, 19 Mar 2025 09:46:02 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52J4m0Wt016560;
	Wed, 19 Mar 2025 09:45:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=TEc3yUOpCOi44ra36ZHjdQxhXbtB2IO+K71
	vtg2pfoY=; b=I0RmNpwrKyvkipranbvto7gspCR3taxzk8A1Tq/lX9AYngwaqnO
	yhu7nqmmb6nnR4lF/f/ZvSUWjFgq655IatDLq3m06u1z4Eu233W5CWjQMwQqz6g5
	tW6g6Kl8k4EIbqYFQzsVJ/b3MYS+L3EtM7qXfQeCG+NDsc/uLWN6s26ScuRgftc6
	M4DWThiJVcIdYMwVhV5mRHF7hTeiAkbX8rXUbv9iiHrDjYhpbl7fyvuB3TDLKbzc
	UnmuNkhjPJ6RcpEV7xkilteLgBNGdXATyPGhpAIC+ce5QJuvumoJNRWg0vNB5mzk
	HFMqZyF448a/vRMaLCfZ0lqnZWtD5VRiRgQ==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45fd1dj4cj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 19 Mar 2025 09:45:53 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 52J9jon3009806;
	Wed, 19 Mar 2025 09:45:50 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 45dk522xks-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 19 Mar 2025 09:45:50 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 52J9jnom009797;
	Wed, 19 Mar 2025 09:45:49 GMT
Received: from cbsp-sh-gv.ap.qualcomm.com (CBSP-SH-gv.ap.qualcomm.com [10.231.249.68])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 52J9jn5M009796
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 19 Mar 2025 09:45:49 +0000
Received: by cbsp-sh-gv.ap.qualcomm.com (Postfix, from userid 4635958)
	id 403DE410A5; Wed, 19 Mar 2025 17:45:48 +0800 (CST)
From: Wenbin Yao <quic_wenbyao@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
        quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
        manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: quic_wenbyao@quicinc.com
Subject: [PATCH v6 0/2] phy: qcom: qmp-pcie: Add PCIe PHY no_csr reset support
Date: Wed, 19 Mar 2025 17:45:42 +0800
Message-Id: <20250319094544.3980357-1-quic_wenbyao@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: vU1kfpHD6hAvTDM2BBznxCSwBnaFnr8e
X-Proofpoint-GUID: vU1kfpHD6hAvTDM2BBznxCSwBnaFnr8e
X-Authority-Analysis: v=2.4 cv=T52MT+KQ c=1 sm=1 tr=0 ts=67da9251 cx=c_pps a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=KSWhaOQsIW5CwuxG1jYA:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_03,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 mlxscore=0 clxscore=1015
 mlxlogscore=995 lowpriorityscore=0 phishscore=0 spamscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503190067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_024600_652926_EE5E4A31 
X-CRM114-Status: GOOD (  11.31  )
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


base-commit: b18ac9a805efdbc2e2720dded42b1ed26acadb24
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
