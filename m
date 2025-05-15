Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FD44C2D0CD
	for <linux-phy@archiver.kernel.org>; Thu, 15 May 2025 16:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qd+5MFOR2mjuuzq5U14Sv265hP1YxmMDIN1bvXqi4zk=; b=hiIEBhN8F0gqDK
	9zTH7idCSrKYejHuGZ4GwhmRD0Gk/fYMABhPeRJqq/P39kPpeepUKjZVTXO+HP/FEbANlIHzCqtTt
	Rv9n+hJNLdF8O803lHMQhNEGWotvFWp9rZjAZAeleLNmwPeojiOIO1VRq+6sGUYtZRdROOtxNNJm+
	+Vvd9eMeuuQ8811L8wFj3TkzghgD69Ho9PZuF8A/kIBKjrf7PHDxhfSWURuPNFhJ9WcRjawfAibUP
	CjrbPOoZ0/+pwekkN5j0RFEL+inw152BH7DwLfQkSNj8uspni2tdhGx0pPHs/4Kuno/UPzznld/3W
	fgeJYEKFT4AT4Q8tWeIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbR0-00000001Fxa-0qyo;
	Thu, 15 May 2025 16:27:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbQx-00000001Fw5-2MnD
	for linux-phy@lists.infradead.org;
	Thu, 15 May 2025 16:27:48 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFCJH007843;
	Thu, 15 May 2025 16:27:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=IgDWW+Mz5cI
	QlJCaHgPvgdL6vfBP0EnLvWOEhSUxXzg=; b=LbM1pP7+3qjoXVb5RcMQtmClNnC
	Uq4JFKId0y4YjtFBUVmhiKkEmhq253SuTNHcyFCSOa4I2uucnllAFs7UCNaXsm2Y
	cQ/KnECnFLjcwVM5lJNfZn6gH/yOnZGtYTVmOzkVUuLyz+1kjBBdtlogFwmeFqk/
	/TrxYfJTj7vmA6ZErZnHFB6gDEZsZt1ihltmq3hIL/gh5Ti4X3yvd9nkBrJivWe5
	T7MxDL6gbxW2NlICQ/QQDHYydjbPewsVasURxhv1QSeuU0KGg1w5UhW2A9AEWTjd
	tA5pIy3qGrBsReWg2pj19fWaLtmGUPagsuQRJz3YTSLlAn2OWGTVnmxoJRw==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcpxuv4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 May 2025 16:27:29 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54FGRQMa023545;
	Thu, 15 May 2025 16:27:26 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 46hyvmvnn5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Thu, 15 May 2025 16:27:26 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54FGRQjp023540;
	Thu, 15 May 2025 16:27:26 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 54FGRPtD023537;
	Thu, 15 May 2025 16:27:26 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 681F25015B1; Thu, 15 May 2025 21:57:25 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V5 01/11] scsi: ufs: qcom: add a new phy calibrate API call
Date: Thu, 15 May 2025 21:57:12 +0530
Message-ID: <20250515162722.6933-2-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: aFlGPPMjhHrkYxKD2E3BB3X0AJWSaUDh
X-Proofpoint-ORIG-GUID: aFlGPPMjhHrkYxKD2E3BB3X0AJWSaUDh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE2MyBTYWx0ZWRfXz//8jwHEEef8
 8r9K6GeDLEVzayLS1M0kKe5yvUPYTTrvA3ljS5bTu+kCdhlJgZhc1ly4jA8vy65ENoEO+JPaAbT
 XL/48fcdaMhRZWX+HdKrr/VYUCgYEV4MIb8BHzAA5M9fcCExgKUSDD20QnanG0H+yZnbhQX/lyG
 BPAyX/UTjHVvUXPMuPaUj5KnBqXCR0Xfkn2K8KiUVsznZcO5MoUGfLNO+Om5U/buPOMdlWwHJAT
 QT7eT5rP1Z80JxMOfsQJw7WxRdkdEagx7XgN3yeq0QDbjaZqTygax3/8QEfqFkzYh5ZhwP/lVyU
 Rs3OmV5IIYJSjkgTd4FtNbPmzPL0H3Tdd8TnOtkI1vN0gkkhXbaXWyIl8pSoqaILZHb7XDfFnAU
 Z2nfWA1sCEcDQuFNZ3EtvaTS8u/zb4ISNnrMRrJxPHvm6kwxCdaRrxTH+5o1usSO9rOMedOj
X-Authority-Analysis: v=2.4 cv=KcvSsRYD c=1 sm=1 tr=0 ts=682615f1 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=jLEhXYc_IhqhhXrxegcA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_07,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=999 spamscore=0 malwarescore=0 impostorscore=0
 mlxscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505150163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_092747_716621_811893BB 
X-CRM114-Status: GOOD (  10.13  )
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

Introduce a new phy calibrate API call in the UFS Qualcomm driver to
separate phy calibration from phy power-on. This change is a precursor
to the next patchset in this series, which requires these two operations
to be distinct.

Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/ufs/host/ufs-qcom.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 37887ec68412..23b4fc84dc8c 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -531,6 +531,12 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 		goto out_disable_phy;
 	}
 
+	ret = phy_calibrate(phy);
+	if (ret) {
+		dev_err(hba->dev, "Failed to calibrate PHY: %d\n", ret);
+		goto out_disable_phy;
+	}
+
 	ufs_qcom_select_unipro_mode(host);
 
 	return 0;
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
