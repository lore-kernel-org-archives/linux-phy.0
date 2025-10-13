Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C76DFCCA476
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 10:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OL9Qyzcl02srIwMB6efWk99RyDJXGmB4Yc1wapV2shk=; b=vECdvWYMw7NwHq
	fzps/q01bPWELs5K8gaC8RhhMks4KrcLhfvEYMSHmlq76v01c9AlMbTRFW9IKkRYQaPll/oVst2zO
	yH/p555xyivXxCYNV1P3/HJBTcTqMVoux64tt2d3pTOfZcsQfR5o99r9SbeprY/Tet8aIR4Dcyo4F
	ML5XtyK8r5cn564Y7VVRmmA/z4Pn2XzAlcIgVhtuzYGixAT8Kcjjddy9r/l3g8GQM+0fkNuTtUYZE
	JoJWfgxzsCM1btODqjc3AVfvtb7JHnLs2XRNvLGnHNyyGzKJ+LLNSPdh1FMv+4pkDr1SL1LMIbQL3
	/otcZg3AyFTJak4FVMiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8G6N-0000000Cvr4-1p5F;
	Mon, 13 Oct 2025 10:48:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8G6K-0000000CvqG-2fyw
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 10:48:25 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DATR62000934;
	Mon, 13 Oct 2025 10:48:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:date:from:message-id:subject:to; s=qcppdkim1; bh=vDPTfyxieqvc
	/AcS0DUTQAuWJXBDoJ66K5hUrmRpGzE=; b=WVXHlpiOBJ2f/zDCowHOu0FHebrP
	/UFE5KMyVJ2txIpL9q3GWhvsgtcf3zAul9+M+42cP/3qD8Vs+kqbZYSOtvTHuGZZ
	AOPhfA/9Deit/NITYNpKye5tPBtRbqsIbuvpHsYkzF3B1e3sRsqoW8CqwV59pjBY
	6ZoMQ1OK4DIluImpmLkl/j2RnT4/9wdbKtpr+02CTGaeA9mJdiRztKGtjQMkXoUa
	jQHWtFsSxYOuh3FMdsCbZkK2bYGZ1fiaFtpm8OytepHLKAy8ADuNgblIk1YMNjG8
	Qhj+wShxvjwfAdu1aUp1TLImnX+l9S+tatjNQNOjrVggJR6jS+khtFX0ew==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd8va0e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Oct 2025 10:48:14 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 59DAmAx0008956;
	Mon, 13 Oct 2025 10:48:10 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 49qgakrrqw-1;
	Mon, 13 Oct 2025 10:48:10 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 59DAmAAX008936;
	Mon, 13 Oct 2025 10:48:10 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-riteshk-hyd.qualcomm.com [10.147.241.247])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 59DAm9x6008925;
	Mon, 13 Oct 2025 10:48:10 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2314801)
	id F008C5000DB; Mon, 13 Oct 2025 16:18:08 +0530 (+0530)
From: Ritesh Kumar <quic_riteshk@quicinc.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org
Cc: Ritesh Kumar <quic_riteshk@quicinc.com>, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: [PATCH v2 0/3] Add edp reference clock for lemans
Date: Mon, 13 Oct 2025 16:18:03 +0530
Message-Id: <20251013104806.6599-1-quic_riteshk@quicinc.com>
X-Mailer: git-send-email 2.17.1
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 93VKVXv74n-nMWCEQLg0Haq9_kvhptVl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX2VDEGTULV1PS
 Y4phWgbZ9o3G6xMH3/egc6asF0Zh04npeILixLxAv/K0BCKbVyk1hunl13+BwgABmsJY38UpbvV
 nUHmp8sOz5E2jRHkEzR1u8mxzMKKoiawuSNSf4nbn9fxdWzgC4tfRDfbRK6OyjziE2EIPkdgS0T
 BfXcO5ZQzvEYVOGFWqyb8eBbl9wOxI5DtChFR5F1WDJU17v+ZD3Sz/yRlsFdQDAZgih8dIYTS3h
 A4+EZgJdZvbzIdq6/tdD2MdjOvu8yzOY8eHYeGJLZrgrh9mjGHYWLterNV5Uq6XUXW82SYn3vXR
 P4i531YvGA8eWmFUc4CeVw1pMr/NXfwHD1Sug5jx2jzEZt350DnQk57bf8Rrohq9ItkIOVCCWCh
 iF6KAcv2x035kPEJL6vHuVyn8KSpIg==
X-Proofpoint-GUID: 93VKVXv74n-nMWCEQLg0Haq9_kvhptVl
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ecd8ef cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=oV43on6u2L5iXKtW-R4A:9 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
 a=nl4s5V0KI7Kw-pW0DWrs:22 a=pHzHmUro8NiASowvMSCR:22 a=xoEH_sTeL_Rfw54TyV31:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_034824_699925_9D38FA2A 
X-CRM114-Status: GOOD (  10.60  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On lemans chipset, edp reference clock is being voted by ufs mem phy
(ufs_mem_phy: phy@1d87000). But after commit 77d2fa54a9457
("scsi: ufs: qcom : Refactor phy_power_on/off calls") edp reference
clock is getting turned off, leading to below phy poweron failure on
lemans edp phy.

[   19.830220] phy phy-aec2a00.phy.10: phy poweron failed --> -110
[   19.842112] mdss_0_disp_cc_mdss_dptx0_link_clk status stuck at 'off'
[   19.842131] WARNING: CPU: 2 PID: 371 at drivers/clk/qcom/clk-branch.c:87 clk_branch_toggle+0x174/0x18c
[   19.984356] Hardware name: Qualcomm QCS9100 Ride (DT)
[   19.989548] pstate: 604000c5 (nZCv daIF +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
[   19.996697] pc : clk_branch_toggle+0x174/0x18c
[   20.001267] lr : clk_branch_toggle+0x174/0x18c
[   20.005833] sp : ffff8000863ebbc0
[   20.009251] x29: ffff8000863ebbd0 x28: 0000000000000000 x27: 0000000000000000
[   20.016579] x26: 0000000000000000 x25: 0000000000000000 x24: 0000000000000001
[   20.023915] x23: ffff0000c53de980 x22: 0000000000000001 x21: ffffb4b57fd8d710
[   20.031245] x20: ffffb4b5bb238b88 x19: 0000000000000000 x18: ffffffffffff7198
[   20.038584] x17: 0000000000000014 x16: ffffb4b5bb1e2330 x15: 0000000000000048
[   20.045926] x14: 0000000000000000 x13: ffffb4b5bd386a48 x12: 0000000000000dfb
[   20.053263] x11: 00000000000004a9 x10: ffffb4b5bd3e5a20 x9 : ffffb4b5bd386a48
[   20.060600] x8 : 00000000ffffefff x7 : ffffb4b5bd3dea48 x6 : 00000000000004a9
[   20.067934] x5 : ffff000eb7d38408 x4 : 40000000fffff4a9 x3 : ffff4b58fb2b7000
[   20.075269] x2 : 0000000000000000 x1 : 0000000000000000 x0 : ffff000ec4fc3480
[   20.082601] Call trace:
[   20.085127]  clk_branch_toggle+0x174/0x18c (P)
[   20.089705]  clk_branch2_enable+0x1c/0x28
[   20.093829]  clk_core_enable+0x6c/0xac
[   20.097687]  clk_enable+0x2c/0x4c
[   20.101104]  clk_bulk_enable+0x4c/0xd8
[   20.104964]  msm_dp_ctrl_enable_mainlink_clocks+0x184/0x24c [msm]
[   20.111294]  msm_dp_ctrl_on_link+0xb0/0x400 [msm]
[   20.116178]  msm_dp_display_process_hpd_high+0x110/0x190 [msm]
[   20.122209]  msm_dp_hpd_plug_handle.isra.0+0xac/0x1c4 [msm]
[   20.127983]  hpd_event_thread+0x320/0x5cc [msm]
[   20.132680]  kthread+0x12c/0x204
[   20.136011]  ret_from_fork+0x10/0x20
[   20.139699] ---[ end trace 0000000000000000 ]---
[   20.144489] Failed to enable clk 'ctrl_link': -16
[   20.149340] [drm:msm_dp_ctrl_enable_mainlink_clocks [msm]] *ERROR* Unable to start link clocks. ret=-16

This series adds support for voting the clock from lemans edp phy driver.

---
This series is dependent on below series:
https://lore.kernel.org/all/20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org/

Change in v2:
- Rebase on top of above series. [Krzysztof]
- Remove duplicate patches and make changes limited to lemans.
- Link to v1: https://lore.kernel.org/all/20251009071127.26026-1-quic_riteshk@quicinc.com/

---
Ritesh Kumar (3):
  dt-bindings: phy: qcom-edp: Add missing clock for sa8775p
  dt-bindings: display/msm: qcom,sa8775p-mdss: update edp phy example
  arm64: dts: qcom: lemans: Add edp reference clock for edp phy

 .../bindings/display/msm/qcom,sa8775p-mdss.yaml      |  6 ++++--
 .../devicetree/bindings/phy/qcom,edp-phy.yaml        |  1 +
 arch/arm64/boot/dts/qcom/lemans.dtsi                 | 12 ++++++++----
 3 files changed, 13 insertions(+), 6 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
