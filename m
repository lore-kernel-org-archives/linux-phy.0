Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0E07C2D0CD
	for <linux-phy@archiver.kernel.org>; Thu, 15 May 2025 16:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+WydLN2Xm/zWQTn8i+yUUq/inHNY8kGVVB5NKZbn5M=; b=YFZ4DmhGwaHKlq
	VktvXyQsIWSmr+BXqtIU+AQ1BURfaAfHW1wumfXvuEaieuWx02W/waHop/ilS2Wc9jTqPk1M4Wo8x
	QdzDUt0kloWsyaUTxG5qN55tjTPJT33i5A1yy66oEeABNHgI0c2CIq8WeQuDs7Rc6C5TBK/iUXl44
	akcZdjv+snm8PTwwLkimBXJvNb1+QcrVrUQ+trVKUkzERnjWb3YaEEfRG/eJh5dIW5Rqby+utj+Nr
	imjVRA42YrncuR6GATNOza3bFxRXEDLej0oizWq3GXmLdcFZ5GL64XduvPm1bLDujjJ9pSLd5mM5Z
	i2pYAnaImiDceX+8kUZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbR9-00000001G6B-1fjR;
	Thu, 15 May 2025 16:27:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbR5-00000001G3K-2Bdb
	for linux-phy@lists.infradead.org;
	Thu, 15 May 2025 16:27:56 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFE5m016722;
	Thu, 15 May 2025 16:27:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Hdcg5qsZDm0
	Bb7cNNlxWWdFvaLQn7XF3mFXHX0KzKh4=; b=YOIjngLgmAZ3Mz3FjYere1WEkeI
	QV/mXgPZmhasDuc29V6K/WhLinHcOUqV8+5Ok/fo/wJGBVg5mz4CHkgRUwr3ofFb
	zYIpMvXpsC5+kJQmcNLjkK1WZDSQKzyMxwYoBUzQdmtGbOPCYmXH396mc4LaYldb
	XrlB8cFjqKycNei04FcEOF8SfF6q0nkhdNcp1f7Emrz6qFrDcDa+laQkfhp0Y0IV
	P1scisjgGjfKgX0vPk//kOBKkQZxDYqk97ZPGZ1FlyX6sey42zJfx+I6cVE7QXLB
	HcLjBuVFKC1H2FHhwDHwXeZEaiUZyuOVdYAHoTBoNiFFiw8RPTNQT749Uyw==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcmq0jk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 May 2025 16:27:37 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54FGRT6L023598;
	Thu, 15 May 2025 16:27:34 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 46hyvmvnpy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Thu, 15 May 2025 16:27:34 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54FGRXgH023658;
	Thu, 15 May 2025 16:27:33 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 54FGRXiN023655;
	Thu, 15 May 2025 16:27:33 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 22AA15015B1; Thu, 15 May 2025 21:57:33 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V5 09/11] scsi: ufs: qcom : Refactor phy_power_on/off calls
Date: Thu, 15 May 2025 21:57:20 +0530
Message-ID: <20250515162722.6933-10-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE2MiBTYWx0ZWRfX5nxZOBpYAuF8
 JMpi5OPtR6JgOuj4I1KQ0m9KJaMP6CWBZDAqFTBjAqixx9I1PCYnbbv6hRPURNTF7ZwfX7F8B99
 Gg+XIwJHa1IK22cxrJS/qj5uQCnKrFEpJ+5DRMBSVGWz9gRZbFvaC9zvIMlCUN/Gyin+V78t/QE
 RJ8wWqH8eNf5oXjD/iqEjAlLGK9zNddTELzvTkjJVn3fjq3LwmLVVAIR2OdzeeZQNFlK7pAZTey
 zHmLfwUva6PIv2VisoNWXk4VAF4Okj7BYr+EbfkBr587TCfWRT7JHVdErixkmf3Y0VOO2S5EBxG
 M1TA4DtNM3MP0g3bAMJ2sMwEXf/Uky8HKBCWw6hHVrxekH3gstPz5zpuhFnbzQ0GBCEkThB9zyr
 TKeHYnuKbyKDcdzFZCY2Koh9QchD+uHZecI9Aa5Iqb2f7kZ8J/vsYxTOO8wHeUHKUY4bf2Du
X-Authority-Analysis: v=2.4 cv=G5scE8k5 c=1 sm=1 tr=0 ts=682615f9 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=ylzO3PbLlNu0Q4qtwUgA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: va8ZlpkUkxKZwIvHRw-ot5mxEwNygFQx
X-Proofpoint-ORIG-GUID: va8ZlpkUkxKZwIvHRw-ot5mxEwNygFQx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_07,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=999 clxscore=1015 phishscore=0 bulkscore=0
 suspectscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 mlxscore=0
 malwarescore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505150162
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_092755_564740_A955F2DC 
X-CRM114-Status: GOOD (  17.30  )
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
PHY regulators & clks can be turned on/off along with UFS's clocks.

Since phy phy_power_on is separated out from phy calibrate, make
separate calls to phy_power_on and phy_calibrate calls from ufs qcom
driver.

Co-developed-by: Can Guo <quic_cang@quicinc.com>
Signed-off-by: Can Guo <quic_cang@quicinc.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/ufs/host/ufs-qcom.c | 61 ++++++++++++++++++-------------------
 1 file changed, 29 insertions(+), 32 deletions(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 23b4fc84dc8c..3ee4ab90dfba 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -697,26 +697,17 @@ static int ufs_qcom_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op,
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
@@ -724,26 +715,11 @@ static int ufs_qcom_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op,
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
@@ -1133,12 +1109,20 @@ static void ufs_qcom_set_caps(struct ufs_hba *hba)
  * @on: If true, enable clocks else disable them.
  * @status: PRE_CHANGE or POST_CHANGE notify
  *
+ * There are certain clocks which comes from the PHY so it needs
+ * to be managed together along with controller clocks which also
+ * provides a better power saving. Hence keep phy_power_off/on calls
+ * in ufs_qcom_setup_clocks, so that PHY's regulators & clks can be
+ * turned on/off along with UFS's clocks.
+ *
  * Return: 0 on success, non-zero on failure.
  */
 static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
 				 enum ufs_notify_change_status status)
 {
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
+	struct phy *phy = host->generic_phy;
+	int err;
 
 	/*
 	 * In case ufs_qcom_init() is not yet done, simply ignore.
@@ -1157,10 +1141,22 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
 				/* disable device ref_clk */
 				ufs_qcom_dev_ref_clk_ctrl(host, false);
 			}
+
+			err = phy_power_off(phy);
+			if (err) {
+				dev_err(hba->dev, "phy power off failed, ret=%d\n", err);
+				return err;
+			}
 		}
 		break;
 	case POST_CHANGE:
 		if (on) {
+			err = phy_power_on(phy);
+			if (err) {
+				dev_err(hba->dev, "phy power on failed, ret = %d\n", err);
+				return err;
+			}
+
 			/* enable the device ref clock for HS mode*/
 			if (ufshcd_is_hs_mode(&hba->pwr_info))
 				ufs_qcom_dev_ref_clk_ctrl(host, true);
@@ -1343,9 +1339,10 @@ static int ufs_qcom_init(struct ufs_hba *hba)
 static void ufs_qcom_exit(struct ufs_hba *hba)
 {
 	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
+	struct phy *phy = host->generic_phy;
 
 	ufs_qcom_disable_lane_clks(host);
-	phy_power_off(host->generic_phy);
+	phy_power_off(phy);
 	phy_exit(host->generic_phy);
 }
 
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
