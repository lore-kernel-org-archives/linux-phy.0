Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4728CC35FFB
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 14:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pC0fxT5kqJPDEAJZV2+la+QGPs1jxq42/qHxntjk1L4=; b=QmbBFv7hM/JVOx
	0ulHX3FIbMCBmfPq5p2uEWnJDN40jbPs1I8Cf3x+UsMJhqzxaEuR3zbOpSj+lO2swCe0WjHaRUyZw
	/F5Gw3fFcQJqf7xkTjSPyYm4cxgllQiFv5sKtGwNwa6rpQe92be7GahK+arYRxCzLbfmB1SV3nr7E
	jBpuWCHzG2hQmXqNvWJ7gzGcM85S8pb66Vw0pZJViNLaZBLS1WqlwlaJulJN2eYWMVhR6VV2Qnz36
	QYBM+qP+ns8LN1ZqK010mh7guuV2PV92SDYQ2vgu+Sf3Qbpw8nMMSZ69lUUFEaThHAy/tUaWRlSEL
	6Ro70S1hfhe5BjgrS7Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYGb-00000006F2X-0Cnt;
	Tue, 18 Mar 2025 14:50:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYGY-00000006F0J-2XY6
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 14:50:04 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52I8pHcP005608;
	Tue, 18 Mar 2025 14:49:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=4bNYjrybVRl
	RDBuG+fzQfTBGaozaDxuhECWkqz0hNe4=; b=R1Z0qkrmE1BnYbGFXJ6JDAdQno/
	UmMa2DVF789u7E3/bBYP2zmscZDlsKEi7YWBQiybh7xsJ5cwE4Xj03shbSHf2XlN
	MDO+zcTe6cdoe5X3iNrsNXJk3WwaiSE6DSIJITUapzenDyy0QEctqf0xq7qntCLA
	Dg1PYed3DHO/QOuTVninDI8iMbbOQEOHphFckHZssdFQ/PZ/jqcwc84bZ+KchQgg
	XdCGsBvpLAnLjMTM3tAhvYOs1gLMG/e2GU1DCyEBDuPB20XFZnf2/OLGT96wUTCA
	T55UkxjZ0mx18WwNtWR/050OFFULSqWRyQ79kBo4TK92lKUjJpSr2U6eIFw==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45etmbttdx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 18 Mar 2025 14:49:54 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 52IEnlVo004267;
	Tue, 18 Mar 2025 14:49:51 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 45dkgmfv9d-1;
	Tue, 18 Mar 2025 14:49:51 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 52IEnmWX004296;
	Tue, 18 Mar 2025 14:49:51 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 52IEnmLc004293;
	Tue, 18 Mar 2025 14:49:51 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 67007501582; Tue, 18 Mar 2025 20:19:50 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>,
        Can Guo <quic_cang@quicinc.com>
Subject: [PATCH V2 6/6] scsi: ufs: host : Introduce phy_power_on/off wrapper function
Date: Tue, 18 Mar 2025 20:19:44 +0530
Message-ID: <20250318144944.19749-7-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
References: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: QS5i6desbJK_NXXjAiLvF8OMGpN0-plh
X-Proofpoint-GUID: QS5i6desbJK_NXXjAiLvF8OMGpN0-plh
X-Authority-Analysis: v=2.4 cv=aMLwqa9m c=1 sm=1 tr=0 ts=67d98812 cx=c_pps a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=Dj_YmL__GzIFt5dFpcoA:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0 mlxscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_075002_772549_4838BDC2 
X-CRM114-Status: GOOD (  15.63  )
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

Introduce ufs_qcom_phy_power_on and ufs_qcom_phy_power_off wrapper
functions with mutex protection to ensure safe usage of is_phy_pwr_on
and prevent possible race conditions.

Co-developed-by: Can Guo <quic_cang@quicinc.com>
Signed-off-by: Can Guo <quic_cang@quicinc.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/ufs/host/ufs-qcom.c | 44 +++++++++++++++++++++++++++++++------
 drivers/ufs/host/ufs-qcom.h |  4 ++++
 2 files changed, 41 insertions(+), 7 deletions(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 5c7b6c75d669..8f80724e64b9 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -421,6 +421,38 @@ static u32 ufs_qcom_get_hs_gear(struct ufs_hba *hba)
 	return UFS_HS_G3;
 }

+static int ufs_qcom_phy_power_on(struct ufs_hba *hba)
+{
+	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
+	struct phy *phy = host->generic_phy;
+	int ret = 0;
+
+	guard(mutex)(&host->phy_mutex);
+	if (!host->is_phy_pwr_on) {
+		ret = phy_power_on(phy);
+		if (!ret)
+			host->is_phy_pwr_on = true;
+	}
+
+	return ret;
+}
+
+static int ufs_qcom_phy_power_off(struct ufs_hba *hba)
+{
+	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
+	struct phy *phy = host->generic_phy;
+	int ret = 0;
+
+	guard(mutex)(&host->phy_mutex);
+	if (host->is_phy_pwr_on) {
+		ret = phy_power_off(phy);
+		if (!ret)
+			host->is_phy_pwr_on = false;
+	}
+
+	return ret;
+}
+
 static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 {
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
@@ -449,7 +481,7 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 		return ret;

 	if (phy->power_count) {
-		phy_power_off(phy);
+		ufs_qcom_phy_power_off(hba);
 		phy_exit(phy);
 	}

@@ -466,7 +498,7 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 		goto out_disable_phy;

 	/* power on phy - start serdes and phy's power and clocks */
-	ret = phy_power_on(phy);
+	ret = ufs_qcom_phy_power_on(hba);
 	if (ret) {
 		dev_err(hba->dev, "%s: phy power on failed, ret = %d\n",
 			__func__, ret);
@@ -1017,7 +1049,6 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
 				 enum ufs_notify_change_status status)
 {
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
-	struct phy *phy = host->generic_phy;
 	int err;

 	/*
@@ -1037,7 +1068,7 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
 				/* disable device ref_clk */
 				ufs_qcom_dev_ref_clk_ctrl(host, false);
 			}
-			err = phy_power_off(phy);
+			err = ufs_qcom_phy_power_off(hba);
 			if (err) {
 				dev_err(hba->dev, "phy power off failed, ret=%d\n", err);
 					return err;
@@ -1046,7 +1077,7 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
 		break;
 	case POST_CHANGE:
 		if (on) {
-			err = phy_power_on(phy);
+			err = ufs_qcom_phy_power_on(hba);
 			if (err) {
 				dev_err(hba->dev, "phy power on failed, ret = %d\n", err);
 				return err;
@@ -1233,10 +1264,9 @@ static int ufs_qcom_init(struct ufs_hba *hba)
 static void ufs_qcom_exit(struct ufs_hba *hba)
 {
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
-	struct phy *phy = host->generic_phy;

 	ufs_qcom_disable_lane_clks(host);
-	phy_power_off(phy);
+	ufs_qcom_phy_power_off(hba);
 	phy_exit(host->generic_phy);
 }

diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
index d0e6ec9128e7..3db29fbcd40b 100644
--- a/drivers/ufs/host/ufs-qcom.h
+++ b/drivers/ufs/host/ufs-qcom.h
@@ -252,6 +252,10 @@ struct ufs_qcom_host {
 	u32 phy_gear;

 	bool esi_enabled;
+	/* flag to check if phy is powered on */
+	bool is_phy_pwr_on;
+	/* Protect the usage of is_phy_pwr_on against racing */
+	struct mutex phy_mutex;
 };

 struct ufs_qcom_drvdata {
--
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
