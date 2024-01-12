Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB32AC47258
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jan 2024 15:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l5S/MT1yJNt+Vk94av7dU1t6RpYA22yXYIg7LWRSJqk=; b=UAy5i7DPqdCukU
	MtxOf/V7ahQUsO7DFhSC1OzFp/4Jd/jnYN0myyjWMbzCYuT9tckyePSOlO+QD9P5ftAEjdkUeKqXB
	eQoYVhF781/PNVdrYDSOyoEcAcGfluHKbPI6+HRXnK4PIJuY01Bo2ve8q4qSUSX8+2ePgxxJjrLGq
	QxN5EMCnQ1efVxZKQudnCOIPC4oXODuVBfZ92EsqJ1sboCLkBZPVXQL0Cj2hsUk91q4LRE9dH0+kL
	MKUpN81k8/vjVRp8gG4v6AAfX5dW04oFsvA9EOEIC5TnBZIPruzT3MF3cQz7dL43hl6vx1psVMyEw
	5Y3lS18Pnjp3qMCJJOlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOJXr-003ATu-1R;
	Fri, 12 Jan 2024 15:34:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOJXn-003ASH-2Q
	for linux-phy@lists.infradead.org;
	Fri, 12 Jan 2024 15:34:05 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40CFWKGF015577;
	Fri, 12 Jan 2024 15:33:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=qcppdkim1; bh=FWdpznD
	+WATV6lsd5Q7E3hTBYhD+waON5oTBHAuv19U=; b=bA3fTadFhnevYrB2ARh9IVC
	E2wcnuloeqJ8cBI9qRD0dhj2cokkIarcpYaVPwE/tgC11UK484njE2dLRgLfSf84
	IJTdvPoWstkv2dIQHyDAcYPYT8S5MYuxBL1On8x2IVia2Nm4UAnlQJbh8qF36vN+
	06ydk7LlSpJhXztvrEhVIUPe5/nbtnTvgABYDM37dCvk6gRuC/CTNYv+1HU2hNqC
	mwC4JKA8yuVZD71tFC7IozUAE3ckRHvRNcsrmB9Of580iqmWzeoIYYfdCnxZT4EO
	2bZHrSTXABdYB7NCNv8gcivO7y3bqgKSrrWgm+7jX6KDydx4EXUChtsk/gAsH7w=
	=
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3vk4vsrd5f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 12 Jan 2024 15:33:56 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 40CFXrQP032693;
	Fri, 12 Jan 2024 15:33:53 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 3veyxnj2yj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Fri, 12 Jan 2024 15:33:53 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 40CFXrj8032686;
	Fri, 12 Jan 2024 15:33:53 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 40CFXr1r032681;
	Fri, 12 Jan 2024 15:33:53 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 3B295572C41; Fri, 12 Jan 2024 21:03:52 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>,
        Can Guo <quic_cang@quicinc.com>,
        Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>
Subject: [PATCH V1 1/2] scsi: ufs: qcom : Refactor phy_power_on/off calls
Date: Fri, 12 Jan 2024 21:03:47 +0530
Message-ID: <20240112153348.2778-2-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240112153348.2778-1-quic_nitirawa@quicinc.com>
References: <20240112153348.2778-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: C7N-JZh34DGIwAaF3Xk_088i4JIBFbE1
X-Proofpoint-ORIG-GUID: C7N-JZh34DGIwAaF3Xk_088i4JIBFbE1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_02,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=999
 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 malwarescore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2401120121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_073403_926235_2B6252B1 
X-CRM114-Status: GOOD (  21.40  )
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

Commit 3f6d1767b1a0 ("phy: ufs-qcom: Refactor all init steps into
phy_poweron") removes the phy_power_on/off from ufs_qcom_setup_clocks
to suspend/resume func.

To have a better power saving, remove the phy_power_on/off calls from
resume/suspend path and put them back to ufs_qcom_setup_clocks, so that
PHY's regulators & clks can be turned on/off along with UFS's clocks.

Since phy phy_power_on is separated out from phy calibrate, make
separate calls to phy_power_on and phy_calibrate calls from ufs qcom
driver.

Also add a mutex lock to protect the usage of is_phy_pwr_on against
possible racing.

Co-developed-by: Can Guo <quic_cang@quicinc.com>
Signed-off-by: Can Guo <quic_cang@quicinc.com>
Co-developed-by: Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>
Signed-off-by: Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/ufs/host/ufs-qcom.c | 104 +++++++++++++++++++++++-------------
 drivers/ufs/host/ufs-qcom.h |   4 ++
 2 files changed, 72 insertions(+), 36 deletions(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 39eef470f8fa..2721a30f0db8 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -338,6 +338,46 @@ static u32 ufs_qcom_get_hs_gear(struct ufs_hba *hba)
 	return UFS_HS_G3;
 }

+static int ufs_qcom_phy_power_on(struct ufs_hba *hba)
+{
+	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
+	struct phy *phy = host->generic_phy;
+	int ret = 0;
+
+	mutex_lock(&host->phy_mutex);
+	if (!host->is_phy_pwr_on) {
+		ret = phy_power_on(phy);
+		if (ret) {
+			mutex_unlock(&host->phy_mutex);
+			return ret;
+		}
+		host->is_phy_pwr_on = true;
+	}
+	mutex_unlock(&host->phy_mutex);
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
+	mutex_lock(&host->phy_mutex);
+	if (host->is_phy_pwr_on) {
+		ret = phy_power_off(phy);
+		if (ret) {
+			mutex_unlock(&host->phy_mutex);
+			return ret;
+		}
+		host->is_phy_pwr_on = false;
+	}
+	mutex_unlock(&host->phy_mutex);
+
+	return ret;
+}
+
 static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 {
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
@@ -378,13 +418,18 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
 		goto out_disable_phy;

 	/* power on phy - start serdes and phy's power and clocks */
-	ret = phy_power_on(phy);
+	ret = ufs_qcom_phy_power_on(hba);
 	if (ret) {
 		dev_err(hba->dev, "%s: phy power on failed, ret = %d\n",
 			__func__, ret);
 		goto out_disable_phy;
 	}

+	ret = phy_calibrate(phy);
+	if (ret) {
+		dev_err(hba->dev, "%s: Failed to calibrate PHY %d\n",
+				  __func__, ret);
+	}
 	ufs_qcom_select_unipro_mode(host);

 	return 0;
@@ -557,26 +602,17 @@ static int ufs_qcom_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op,
 	enum ufs_notify_change_status status)
 {
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
-	struct phy *phy = host->generic_phy;

 	if (status == PRE_CHANGE)
 		return 0;

-	if (ufs_qcom_is_link_off(hba)) {
-		/*
-		 * Disable the tx/rx lane symbol clocks before PHY is
-		 * powered down as the PLL source should be disabled
-		 * after downstream clocks are disabled.
-		 */
+	if (!ufs_qcom_is_link_active(hba))
 		ufs_qcom_disable_lane_clks(host);
-		phy_power_off(phy);

-		/* reset the connected UFS device during power down */
-		ufs_qcom_device_reset_ctrl(hba, true);

-	} else if (!ufs_qcom_is_link_active(hba)) {
-		ufs_qcom_disable_lane_clks(host);
-	}
+	/* reset the connected UFS device during power down */
+	if (ufs_qcom_is_link_off(hba) && host->device_reset)
+		ufs_qcom_device_reset_ctrl(hba, true);

 	return ufs_qcom_ice_suspend(host);
 }
@@ -584,26 +620,11 @@ static int ufs_qcom_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op,
 static int ufs_qcom_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 {
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
-	struct phy *phy = host->generic_phy;
 	int err;

-	if (ufs_qcom_is_link_off(hba)) {
-		err = phy_power_on(phy);
-		if (err) {
-			dev_err(hba->dev, "%s: failed PHY power on: %d\n",
-				__func__, err);
-			return err;
-		}
-
-		err = ufs_qcom_enable_lane_clks(host);
-		if (err)
-			return err;
-
-	} else if (!ufs_qcom_is_link_active(hba)) {
-		err = ufs_qcom_enable_lane_clks(host);
-		if (err)
-			return err;
-	}
+	err = ufs_qcom_enable_lane_clks(host);
+	if (err)
+		return err;

 	return ufs_qcom_ice_resume(host);
 }
@@ -908,6 +929,7 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
 				 enum ufs_notify_change_status status)
 {
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
+	int err;

 	/*
 	 * In case ufs_qcom_init() is not yet done, simply ignore.
@@ -926,10 +948,22 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
 				/* disable device ref_clk */
 				ufs_qcom_dev_ref_clk_ctrl(host, false);
 			}
+			err = ufs_qcom_phy_power_off(hba);
+			if (err) {
+				dev_err(hba->dev, "%s: phy power off failed, ret=%d\n",
+						__func__, err);
+					return err;
+			}
 		}
 		break;
 	case POST_CHANGE:
 		if (on) {
+			err = ufs_qcom_phy_power_on(hba);
+			if (err) {
+				dev_err(hba->dev, "%s: phy power on failed, ret = %d\n",
+						__func__, err);
+				return err;
+			}
 			/* enable the device ref clock for HS mode*/
 			if (ufshcd_is_hs_mode(&hba->pwr_info))
 				ufs_qcom_dev_ref_clk_ctrl(host, true);
@@ -1110,7 +1144,7 @@ static void ufs_qcom_exit(struct ufs_hba *hba)
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);

 	ufs_qcom_disable_lane_clks(host);
-	phy_power_off(host->generic_phy);
+	ufs_qcom_phy_power_off(hba);
 	phy_exit(host->generic_phy);
 }

@@ -1536,9 +1570,7 @@ static void ufs_qcom_config_scaling_param(struct ufs_hba *hba,

 static void ufs_qcom_reinit_notify(struct ufs_hba *hba)
 {
-	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
-
-	phy_power_off(host->generic_phy);
+	ufs_qcom_phy_power_off(hba);
 }

 /* Resources */
diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
index 9dd9a391ebb7..241dba01672e 100644
--- a/drivers/ufs/host/ufs-qcom.h
+++ b/drivers/ufs/host/ufs-qcom.h
@@ -215,6 +215,10 @@ struct ufs_qcom_host {
 	u32 phy_gear;

 	bool esi_enabled;
+	/* flag to check if phy is powered on */
+	bool is_phy_pwr_on;
+	/* Protect the usage of is_phy_pwr_on against racing */
+	struct mutex phy_mutex;
 };

 static inline u32
--
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
