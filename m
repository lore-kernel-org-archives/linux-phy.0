Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC290C35FF3
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 14:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u/Auq49hPbIXQCiOoAzrVzVjRzc7QMXfrXb2ap4vhVk=; b=tesxvvHwi38ilr
	r+XWIBwxXWG8KjSYHu3jlB2G2lbjvE3Az2DcXQXW90Hz6Qv2Zwq+5Ac23epl/iCuxjGGzOReeizO2
	NdFReiUU7nQtjOj7NuNUZLO21mrBysYC1GEkJfvz/xJVJDAko6JJ4ciacNugCVswb263lNZGvY/VB
	QSUNSozgfPJNqkN2Q4bj4xakEdHFNtrBp1i9GaYTDRJtGZrstY0ypLaVCu7Osnb2DwOXhtr5fDYDc
	L0HlgRlD6ncRA/CsyJY2vvSMLcSLdjb9xAWaDaZsYzj1zDeM3fYFT3Y47H2kmdUMnxBX6fRqkdK0o
	BtLSa/XrkaOhZbbSJ8cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYGY-00000006F0b-1qlx;
	Tue, 18 Mar 2025 14:50:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYGV-00000006Exa-2Rcq
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 14:50:01 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52I9KWQ3025504;
	Tue, 18 Mar 2025 14:49:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=10njL3lD/yON20tg7J1kRbyFtcoW9+l+SbB
	UuimWpa4=; b=NR3mQ3Cyh6fxLNfwGhs0rNjQzSyAaSeRMF8mcRS4ezcJv9QN8Rz
	0nmOxpo2xgaCoRrVaujOwwGUJyE9ybpKxnPzkOmObOHjNz6tTXFRq8oelEsU6qOS
	Al5+g2azZScHrWh2FZHvXR2fyedwe/HCLjnGaXqIe9QTHlpwgCJ10c6IO0NBX5Op
	pWUJh/85wsX9VJG5LAypw5GKKf9O9Kdg4DTU21Wsq56I3a7ffbjrzkpu90sTv732
	WGHFNQ4jt6pRSX0LTnmUKAo1DGL1uYR7+nlNOsQG7jeiVq4nxpsWPr1jp1Mzb+aO
	ppLIJL+FVPFeZLSGZl45XUrMCFrcDxESAbQ==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1tx8jmy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 18 Mar 2025 14:49:50 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 52IEnlVm004267;
	Tue, 18 Mar 2025 14:49:47 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 45dkgmfv85-1;
	Tue, 18 Mar 2025 14:49:47 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 52IEnkEV004259;
	Tue, 18 Mar 2025 14:49:46 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 52IEnkke004255;
	Tue, 18 Mar 2025 14:49:46 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id D2F92501582; Tue, 18 Mar 2025 20:19:45 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V2 0/6] Refactor phy powerup sequence
Date: Tue, 18 Mar 2025 20:19:38 +0530
Message-ID: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=W/I4VQWk c=1 sm=1 tr=0 ts=67d9880e cx=c_pps a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=E6LSWowjyhIgIrQ5V_0A:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: _uIPXnO38hNz-sGS245cFA1VJYz77Khq
X-Proofpoint-ORIG-GUID: _uIPXnO38hNz-sGS245cFA1VJYz77Khq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 impostorscore=0 adultscore=0 spamscore=0 mlxlogscore=724 mlxscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1011 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_074959_753659_B7DA7F83 
X-CRM114-Status: GOOD (  10.08  )
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

Refactor phy_power_on and phy_calibrate callbacks.

In Current code regulators enable, clks enable, calibrating UFS PHY,
start_serdes and polling PCS_ready_status are part of phy_power_on.

UFS PHY registers are retained after power collapse, meaning calibrating
UFS PHY, start_serdes and polling PCS_ready_status can be done only when
hba is powered_on, and not needed every time when phy_power_on is called
during resume. Hence keep the code which enables PHY's regulators & clks
in phy_power_on and move the rest steps into phy_calibrate function.

Since phy_power_on is separated out from phy calibrate, make separate calls
to phy_power_on and phy_calibrate calls from ufs qcom driver.

Also for better power saving, remove the phy_power_on/off calls from
resume/suspend path and put them to ufs_qcom_setup_clocks, so that
PHY's regulators & clks can be turned on/off along with UFS's clocks.

This patch series is tested on SM8550 QRD, SM8650 MTP , SM8750 MTP.

There is functional dependency between ufs-qcom and phy-qcom-qmp-ufs
and hence both the patches should be part of same merge window.

Changes in v2:
1. Addressed vinod koul and manivannan comment to split the phy patch
   into multiple patches.
2. Addressed vinod's comment to reuse SW_PWRDN instead of creating
   new macros SW_PWRUP in phy-qcom-qmp-ufs.c.
3. Addressed Konrad's comment to optimize mutex lock in ufs-qcom.c
4. Addressed konrad and Manivannan comment to clean debug print in
   ufs-qcom.c

Link to V1: https://lore.kernel.org/linux-kernel/20240112153348.2778-1-quic_nitirawa@quicinc.com/
---
Nitin Rawat (6):
  phy: qcom-qmp-ufs: Rename qmp_ufs_enable and qmp_ufs_power_on
  phy: qcom-qmp-ufs: Refactor phy_power_on and phy_calibrate callbacks
  phy: qcom-qmp-ufs: Refactor UFS PHY reset
  phy: qcom-qmp-ufs: Refactor qmp_ufs_exit callback.
  scsi: ufs: qcom : Refactor phy_power_on/off calls
  scsi: ufs: host : Introduce phy_power_on/off wrapper function

 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 141 ++++++++----------------
 drivers/ufs/host/ufs-qcom.c             |  92 ++++++++++------
 drivers/ufs/host/ufs-qcom.h             |   4 +
 3 files changed, 106 insertions(+), 131 deletions(-)

--
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
