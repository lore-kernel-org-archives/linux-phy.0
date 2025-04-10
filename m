Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08A8CC369AD
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 11:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0VNEbHi2HpNv1Wu4HG3Dxztqs8MAWlEwhONhsXFW6k=; b=07DSrgRxL6geo1
	jjoGrE7O8u8F9l2zJI+3mGyYVOqMXLkVuKlY1YRkZZa0qpjpTTBNmOzE212nfwaFjwFt6bT/y0bwf
	LtsTgVRSQ+DyqJKdYBixLqSrmIMEiORrVZ7cINb9fx/lvaKT69yn1D8XY6+nIeXlOiAQvNsLuIJe1
	ZIpGaoSs+mNL3ChREeEmsciLl9AIUnhhn9aWbbxjb+YDz9XLiui7by+3IDvtDndqwujUNlNarnji5
	ycKVmOTfphA8I5oO+rBSP++onRWmz/aE1MFz9tDHpuuROaxPELGg4dJJcemX7L2OSXgPBRvYPPd3C
	S4g4ynPe8QWojeEF9eAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2pso-0000000AB4H-3LEO;
	Thu, 10 Apr 2025 11:15:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nmy-00000009qyK-3RZY
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 09:01:38 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53A75IrX018659;
	Thu, 10 Apr 2025 09:01:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Dn/24B4cIBq
	10L5kztW4RYgnL33ZdGISxSya6A5uYmE=; b=haUDsiM6A5fkvsFPwsrljOfUynD
	lC0s2CCPrWFWRDqbpz5KWGGw140aSrBZtnLvfCUF74Rx68B3kdejPG+qAGmEOPUw
	TydFHyhZoev1puV7pDD1UwtWRRFufghXsIqRdC/5wuMFC0eNYRkxokWecCcXEyPj
	Pw5g3G7ZR2O3H1mdNS0l/9H8RjPntOHZ6Lp/GBTZ7BEdWIMfIw0/NjOJsmnAm5d/
	ENv+NwwebUPCuuTj20MskVRlJrk0XXTvIqEx3hNA0ktvWsxwDDTcU+p96zafoxXF
	udTEmENrxDKnK+yROegUXwlAu5P6QNmWsakyVK3K9lmtJdMR/a6b4yYy5pQ==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twdgpck6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Apr 2025 09:01:21 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 53A916Q4008757;
	Thu, 10 Apr 2025 09:01:18 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 45ue7g3rd5-1;
	Thu, 10 Apr 2025 09:01:18 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 53A91BUX008806;
	Thu, 10 Apr 2025 09:01:17 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 53A91HNt009326;
	Thu, 10 Apr 2025 09:01:17 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id F234750158F; Thu, 10 Apr 2025 14:31:16 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V3 9/9] scsi: ufs: qcom: Prevent calling phy_exit before phy_init
Date: Thu, 10 Apr 2025 14:31:02 +0530
Message-ID: <20250410090102.20781-10-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=PJgP+eqC c=1 sm=1 tr=0 ts=67f788e1 cx=c_pps a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=6qkdr0EpClcQ5iOZAa0A:9 a=zZCYzV9kfG8A:10 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: y6Xi02JbF52tNd_aus02laoLJen7gmNE
X-Proofpoint-GUID: y6Xi02JbF52tNd_aus02laoLJen7gmNE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_01,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 malwarescore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_020137_004669_FF2BC8C5 
X-CRM114-Status: UNSURE (   9.73  )
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
---
 drivers/ufs/host/ufs-qcom.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 6a7b51e0759c..2d7a4da3df55 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -482,7 +482,6 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)

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
