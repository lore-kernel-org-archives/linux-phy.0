Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E37DCC3ABC9
	for <linux-phy@archiver.kernel.org>; Thu, 15 May 2025 16:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4NuO2I66OhXwP0zCDJgKgDK6txa2ptR3PoyXKDeeP8=; b=oFKZ2WuvsY0v0j
	3u2B6zN/ANDMFLDKrFwKny3I4NJ+EJJf1egWrCcveQiLh8rLWxkb1C6intMifCTcXUzQIeqB/91Q3
	Jn0AT2KaxSwQjYgm1wuAs3EJQYjQjjD5njAykxV01KJpAjr+tU392L2l5pkkj7ViREI6lWFYyyFmE
	On4tjF9z7Dqm4fRZ9CZe24sJO6yU1gIfcwHNiA2BhSjYItjW5o2TNOt/M5lBtFnpSBL6m6qb+DEeI
	4+FF51PSq502hC7PFBqcmB2rbX4XZTeaDobNoHNwK46zTk/dfM/fa71rgiVukw84BJXMBPEF1uZlT
	CUiqIh2f1+cM8aFqpyLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbR9-00000001G6Q-2pzB;
	Thu, 15 May 2025 16:27:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbR6-00000001G4j-451N
	for linux-phy@lists.infradead.org;
	Thu, 15 May 2025 16:27:58 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFCeq026156;
	Thu, 15 May 2025 16:27:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=V7ySCYnUYSX
	wwDN6/ExxYJpAp/ii2NAf3QEXQz/O89g=; b=POfM5/fqpxmNU0sg4u5hFQB+teg
	/Mn+591gLFKlyw7iBMAONPTKO+2wQNMaLIdw2PUuVoTiHA6ZErq+2isz2pGvIoXY
	fPZr3Xy/2DKhDjKwJ6u0U9EWkW1cXTz2CYs3tej9fyr+8AYbLRE2aeAU0x/NaOs9
	S1MwFGnLswFqy94CeiOEqrPOdIZcgwhm3H1w43Op72QJqQr8lICflIAZr+e6uhRG
	kQ+AxUXllmhm3lpAory1w7FijMbsfpHmgAP/XdOVNw0Qc5OikoiWt7NJ4E8eedMJ
	OgMdQhob5GCQcP22fBpvN9fRVgYEkgRXdO0AGBWjwHv9WqaPYtr098xkL2g==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcyq0y1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 May 2025 16:27:40 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54FGRSJ4023582;
	Thu, 15 May 2025 16:27:36 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 46hyvmvnq9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Thu, 15 May 2025 16:27:36 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54FGRPSj023527;
	Thu, 15 May 2025 16:27:36 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 54FGRaNc023683;
	Thu, 15 May 2025 16:27:36 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 863125015B0; Thu, 15 May 2025 21:57:35 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V5 11/11] scsi: ufs: qcom: Prevent calling phy_exit before phy_init
Date: Thu, 15 May 2025 21:57:22 +0530
Message-ID: <20250515162722.6933-12-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: uy0HNrdnQmsFY0AAlFqsFVPCcMMgPmYw
X-Proofpoint-ORIG-GUID: uy0HNrdnQmsFY0AAlFqsFVPCcMMgPmYw
X-Authority-Analysis: v=2.4 cv=JszxrN4C c=1 sm=1 tr=0 ts=682615fc cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=6qkdr0EpClcQ5iOZAa0A:9
 a=zZCYzV9kfG8A:10 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE2MyBTYWx0ZWRfX1qNr6HISpzIP
 YHtTMW8MdSxbrWhtjRRSwt15J3/Rp/Qn7TXJrK00klwfAkoYLoPddi8PrusoH2Y5qwHHB221U19
 rd5adwrimd0U0wsMSqLvFl5rDkhiwqWmb/RyJ5SSBCV5mAmYD/nFFrc+iMPk6Vo5ShCYWmU7UGJ
 DLZ9uAdQoQbGdTrO7a7mPrhN4lKqV1JS8rA/xeYVtjA6lNBO2WzxMLYQozkoIGyFrklSI+odKsB
 JelJI0KGuKfxSWXCcOamqcn60vMfRtATguHwuGYWrYZYvJ6VhAGkG8MC5fmHcTgcwR8Hz7UzCj4
 yRxi+EKDNZPBUCdGEb6PYED7gBrkyHenv9htvt0GmCQ6Zwe1RnPthPM2sXt/vyeTiRcGRfTZRmL
 +54tLpnE1w9/fWSgfY5Rgd6Wwj9o57Q2+nmP0MGxa8rh377T2FmKgDxtfjaxTK9HuNLSQxVV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_07,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=999 bulkscore=0
 malwarescore=0 mlxscore=0 adultscore=0 phishscore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505150163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_092757_017689_5F6F6F87 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
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

Prevent calling phy_exit before phy_init to avoid abnormal power
count and the following warning during boot up.

[5.146763] phy phy-1d80000.phy.0: phy_power_on was called before phy_init

Fixes: 7bac65687510 ("scsi: ufs: qcom: Power off the PHY if it was already powered on in ufs_qcom_power_up_sequence()")
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/ufs/host/ufs-qcom.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 583db910efd4..bd7f65500db7 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -540,7 +540,6 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 
 	if (phy->power_count) {
 		ufs_qcom_phy_power_off(hba);
-		phy_exit(phy);
 	}
 
 	/* phy initialization - calibrate the phy */
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
