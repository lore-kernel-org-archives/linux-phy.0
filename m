Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19084C3ABB9
	for <linux-phy@archiver.kernel.org>; Sat,  3 May 2025 16:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YdXW4WfSI+Qx7awIQUIM7qeIVFdjLvb+Ln3on3+F30=; b=Ze2hBK49ihZxdL
	WP10wTkG4NICXcDed/v+Ut16TiZ1Kp0ftfYGq7Sgh3gjBZWX75DEtKfcofsNXYDlLvVTn17l6LEWg
	9vBcBtqnKb9miVxzhrPByeAE+uqgdMuqDbbRSgFMPsi05GDngbCtaIYZ3X7SuppTndq1UcqoXYz/4
	h6RZ0vStBNh9MtP0dbqeq43o8XcVQ8TwPF4+5dOVFdapZ8JGhPZ0875VlukQBORJ6HuYV+CJnhSOU
	aZe82v4MRzRGrj5FTpe48NBWBNzas7lIDZTVZfbqcbUXfFR/3w+ty9f1lr4tXz9fG+v2Xh04aU+2I
	xZqQNgAuu7J6i78ge8dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBFfz-00000004A8P-3Yzx;
	Sat, 03 May 2025 16:25:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBFfw-00000004A5L-2ER3
	for linux-phy@lists.infradead.org;
	Sat, 03 May 2025 16:25:17 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 543Dfv9h018687;
	Sat, 3 May 2025 16:24:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=1ZrYWpYIFOX
	E4lncYahCirXdfyZ/wh/BZaUTmCDzCIU=; b=MSzuyLahw0NMiasQrkYpjOqECph
	cz9Ge4YXYs3Bgjw7xzrc4Mowa4x11yY8TyEsxDRf3wGfOaD32znXX3von54b4Djp
	t7qr7LfhYGTN9/o14SQWlsCL4vksSeD07P3Itvwl70cBOiSoHQZFAfprBbKgqf5V
	foftZygBO99cxXLAtcpjn9wmmIjweYtjvr8YL5MOn8K4PJAGlOYeMvo1UWFsielz
	Vqr8V6qp/el2corf2Tlzf9SvQvelTuddFsLuFdG+46GARKSo38IUt2Fziy3Y6QL/
	eA2rDHi8dxcByZU5PzAfIwhUUPf3H1PUCUUei0DnbNcoyp1Dz2auK70ezvA==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbc58ua5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 03 May 2025 16:24:59 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 543GOjrm029804;
	Sat, 3 May 2025 16:24:56 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 46dc7kb1gt-1;
	Sat, 03 May 2025 16:24:56 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 543GOtDN029948;
	Sat, 3 May 2025 16:24:55 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 543GOt95029947;
	Sat, 03 May 2025 16:24:55 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 129265015A2; Sat,  3 May 2025 21:54:55 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V4 10/11] scsi: ufs: qcom : Introduce phy_power_on/off wrapper function
Date: Sat,  3 May 2025 21:54:39 +0530
Message-ID: <20250503162440.2954-11-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: XESIZspFT_M1wiU7xEmhe8Xqd60VLH6H
X-Authority-Analysis: v=2.4 cv=O7Y5vA9W c=1 sm=1 tr=0 ts=6816435b cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=fCbX77z8Gh-i-5kHVyEA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: XESIZspFT_M1wiU7xEmhe8Xqd60VLH6H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAzMDE1MCBTYWx0ZWRfXxEkBtkd/FEWd
 9Z2gi1P5g1CUO/s4o8rUEyA4pQbTHMDwFO9jEj025yqYnNav8hfks0FQ1yjjTLTkm5b0udE5BVa
 aFhh4l1XbHM7l6A8FMgiV7h1e7VNFO5AqzjcJJPhQRzc/2TKrcXZByAnDQ5E///5wtPKjH76PfJ
 M0kewx6tS+J7SRK1IjHZfLCkHj3RDD1uW/ilTshS6X0MMJqJKrp1n8wORFNGckWG2VYUyTUCZN8
 Y6weFkNXaid2jbnHbY6gTsLw+yjth2q34mdi1gUHTkEbcuQrT16wSYjBdoeMxRKwVXm78Baf0GV
 1LOh/hMTEXB9y2oeOmA4pYye3+BYnkMXyLKvdqlqExQ3cEpHVvziTs2DPn84lrBgF4TE/y7zTpk
 5+LHUjTQ2vMGYeJcAbTVNDG5+cD3c357kRXXQPaHTb0niw5ZdgkBJji89JVZQd34ifxBPlDD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-03_07,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505030150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250503_092516_582852_85A502A2 
X-CRM114-Status: GOOD (  15.48  )
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
index ff35cd15c72f..a7e9e06847f8 100644
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
@@ -1018,7 +1050,6 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
 				 enum ufs_notify_change_status status)
 {
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
-	struct phy *phy = host->generic_phy;
 	int err;
 
 	/*
@@ -1038,7 +1069,7 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
 				/* disable device ref_clk */
 				ufs_qcom_dev_ref_clk_ctrl(host, false);
 			}
-			err = phy_power_off(phy);
+			err = ufs_qcom_phy_power_off(hba);
 			if (err) {
 				dev_err(hba->dev, "%s: phy power off failed, ret=%d\n",
 					__func__, err);
@@ -1048,7 +1079,7 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
 		break;
 	case POST_CHANGE:
 		if (on) {
-			err = phy_power_on(phy);
+			err = ufs_qcom_phy_power_on(hba);
 			if (err) {
 				dev_err(hba->dev, "%s: phy power on failed, ret = %d\n",
 					__func__, err);
@@ -1236,10 +1267,9 @@ static int ufs_qcom_init(struct ufs_hba *hba)
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
