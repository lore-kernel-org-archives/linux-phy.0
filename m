Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91B88C369C2
	for <linux-phy@archiver.kernel.org>; Sat,  3 May 2025 16:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gBV9a/OviONUe1KNDhCcXzU+rxqsvFcDmD6ryjYpDO8=; b=R9ESB4ru38KAhM
	G++OYjwgHVKK90rZipTPrKTf0/fg50mzuOg0VkgFYpj9CAQQ5xfIn5DoHJd//28TUpDXFyv8BSbpP
	PH3bnWClC0dJanq9xXSywRRlAzrDrFWGoPJU9+VDqHVyO/zMzu0Ub2DMrDx5a8djdvsdm9Kty1iHz
	bbMU55gA/fSWdpeT7ZU0IS7GFaD+/aFC25omZ/DGXlMQs+xLc4hcdFv8t5hF3s9h18rMB4qT65Ov2
	YwbpEgMDeSB4HpT2SFy0f3ykfbKt6Hq9MXt4ymd8O3cbzR7jUPrKJU7V/oLHtOSXHHN8g7CHiFOvi
	FPAH31070mg2sC+wsqxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBFfz-00000004A7n-1Lz4;
	Sat, 03 May 2025 16:25:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBFfp-000000049zK-3kNT
	for linux-phy@lists.infradead.org;
	Sat, 03 May 2025 16:25:17 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 543Cqhtf018700;
	Sat, 3 May 2025 16:24:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=2CwVosHohxFjCseqRnNgqWdVUFg3aBCsIOE
	twGCjag4=; b=pjgr/rM9+9lbY/ScxB0kUxoEaOBNjNRnauIH4h/oUeIRH2VMwQ7
	9/u9Up6AxQyPF4SaNtv3bKD58h3htubLqHXpgvm8Gqx3AYIz6P1xZp9OCNaAwgYw
	+wMxX5mo7TEiGnhwAeyoAhfhTgGiGw7hIR1Uu0RRJeBUHuWo8A267BBcRQ4beCeQ
	3ti+gvVaiTJTUmV4z3IZQnTrDkYulWcqJR5gEhCI5wPStKhdaKcgwUp5fFIW3JVi
	9eXm4dVEm9ruBh0mkRxU8xCDGS/t6EYGQMHTX1ZkXlVXUTIfO73qo+OMka4W0Pkj
	c0YrMyvOTrXUx9LUXY+bAWgSPh5UDxNvWXA==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46d9ep0ya1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 03 May 2025 16:24:46 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 543GOhgK029753;
	Sat, 3 May 2025 16:24:43 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 46dc7kb1em-1;
	Sat, 03 May 2025 16:24:43 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 543GOgxR029746;
	Sat, 3 May 2025 16:24:42 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 543GOgI7029745;
	Sat, 03 May 2025 16:24:42 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id C891A5015A2; Sat,  3 May 2025 21:54:41 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V4 00/11] Refactor ufs phy powerup sequence
Date: Sat,  3 May 2025 21:54:29 +0530
Message-ID: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=EOUG00ZC c=1 sm=1 tr=0 ts=6816434e cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=D06968NiBJqSOUjID_UA:9
X-Proofpoint-ORIG-GUID: fn9y4-nIjHYEeWVSnRGtGxCDnNMKH3dC
X-Proofpoint-GUID: fn9y4-nIjHYEeWVSnRGtGxCDnNMKH3dC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAzMDE1MCBTYWx0ZWRfX2KojasTOcXk2
 /TyZdbE5D30Kfb4ns7nF5v5ZxGbiZI5WaTecTRiBJYbTK95bUWWGLaDKI8PGDKun3ZLUPANkIHK
 5r48QgRsGExVdmVplYy3aZmCkew+hmczIJJn6Ykpjw/6YHjWFxrU3SAi60OajHTTWrM28OVsir/
 0t4g0sZzwaIX1nYhG3EYJB7Qnb4uHHpgBZqbEu4VK/GYUlRG6120ZCygYQm/vdORyHufGkMyfBb
 sAIv5Qhzbc50BFYVC226j2INWMJN0ZHvgFVMw4IarDthUq7DmQYOrB6F5GczWSeB2PQCMWFjAVh
 QVygAoV8283LwDCjqFje3TDNoNlLqgJqIt4otSyIde9HlLx6lQNdh5OjXXfPRITkN54dPhusJ2P
 UxJGLGIYZKgWutnMCctoLSP9ahhNgRSuxOcTvkwUe6VlrexAuQFwY5uMKimy5F6Eeu8juuJ3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-03_07,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 suspectscore=0 mlxlogscore=999 mlxscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505030150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250503_092510_063991_7EC7BC1B 
X-CRM114-Status: GOOD (  11.44  )
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

Note: Patch 1 of this series is a requirement for the rest of the PHY
      patches for the functional dependency.

Changes in v4:
1. Addressed Dmitry's comment to update cover letter to mention patch1
   as a requirement for the rest of the PHY patches.
2. Addressed Dmitry's comment to move parsing UFS PHY reset handle logic
   to init from probe to avoid probe failure.
3. Addressed Dmitry's comment to update commit text to reflect reason
   to remove qmp_ufs_com_init() (Patch 7 of current series)
4. Addrssed Konrad's comment to return failure from power up sequence when
    phy_calibrate return failure and modify the debug print.

Changes in v3:
1. Addresed neil and bjorn comment to align the order of the patch to
   maintain the bisectability compliance within the patch.
2. Addressed neil comment to move qmp_ufs_get_phy_reset() in a separate
   patch, inline qmp_ufs_com_init() inline.

Changes in v2:
1. Addressed vinod koul and manivannan comment to split the phy patch
   into multiple patches.
2. Addressed vinod's comment to reuse SW_PWRDN instead of creating
   new macros SW_PWRUP in phy-qcom-qmp-ufs.c.
3. Addressed Konrad's comment to optimize mutex lock in ufs-qcom.c
4. Addressed konrad and Manivannan comment to clean debug print in
   ufs-qcom.c


Nitin Rawat (11):
  scsi: ufs: qcom: add a new phy calibrate API call
  phy: qcom-qmp-ufs: Rename qmp_ufs_enable and qmp_ufs_power_on
  phy: qcom-qmp-ufs: Refactor phy_power_on and phy_calibrate callbacks
  phy: qcom-qmp-ufs: Refactor UFS PHY reset
  phy: qcom-qmp-ufs: Remove qmp_ufs_com_init()
  phy: qcom-qmp-ufs: Rename qmp_ufs_power_off
  phy: qcom-qmp-ufs: Remove qmp_ufs_exit() and Inline qmp_ufs_com_exit()
  phy: qcom-qmp-ufs: refactor qmp_ufs_power_off
  scsi: ufs: qcom : Refactor phy_power_on/off calls
  scsi: ufs: qcom : Introduce phy_power_on/off wrapper function
  scsi: ufs: qcom: Prevent calling phy_exit before phy_init

 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 145 ++++++++----------------
 drivers/ufs/host/ufs-qcom.c             |  96 ++++++++++------
 drivers/ufs/host/ufs-qcom.h             |   4 +
 3 files changed, 111 insertions(+), 134 deletions(-)

--
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
