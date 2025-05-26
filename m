Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD93EC54FB3
	for <linux-phy@archiver.kernel.org>; Mon, 26 May 2025 15:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gncevXH5LoAj3ukh2gKPJvItt6qwDNoQUHbpdeYGj1Y=; b=mqTHYeEwXkJ+h3
	1oeJggOtwDaAggOaPePB6jNXN2OdBNE+vut/yocdzLLnnnKFvqAJ5lvDAEsSnTMELe/HdAH1DA21+
	rWqn/ccVcU3MRj6VTVTdD8+6nHDra0UhDbgRyIq7vHp7NDj0taAKAjK7euNfoLipPkWo8t08Kr5hr
	DLM6d089KwFa5iLj2M8XOj6qBqF+Nudq3kwn32uc649OZ6PoSMyiM81cqyD3E2Z7xj2zTuURI4ikG
	lklmFunyIu9DLC7cBu9eeKYEeFBEi5PKNXyRCL1Eew59rf9lBnALU65iIP/wsyaTqYCEMaYUx62hh
	Wrb4friZPo85ZNHqKDhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJZui-000000098z2-2IHo;
	Mon, 26 May 2025 15:38:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJZuf-000000098vp-3mdT
	for linux-phy@lists.infradead.org;
	Mon, 26 May 2025 15:38:55 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54Q8dpW3003964;
	Mon, 26 May 2025 15:38:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=cMlp5Uuq7pY
	xno+xJbwnJC6yhCBdQIL7aWCca6SOgPw=; b=UiU5DK1Nn7RfPzjx8HWfxM1Ybp2
	V6wvwC1Wx0zGNPYY8+85trK3/yhu9LpjRmNrr1iuLFIsRaT73R0QXHx0uQv1ef/Z
	ncsqO9SJRAgW9zbh7rdwkQZhtA98HdIxIEfKp+QAnLCvgGI92vl7Qc5w/yLND3so
	JYbBYfcVqsaGz4w7ADBHjAXlq7m/1L1nXepR2Ks6n3LJ745ehBcjT8zER5ms+zlo
	ATakrkYd9G0jgqsYF+Cfi00x8N+E6IwncWEp0ATpCRwFiuIIpMFJqSOP4zgHhvpo
	07ug9dVz8M+YhWKWdfr7ViCah4VVvFqw9LCjCD/OtM8mUGLHgojrW8KHopg==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46vmyuh0m3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 May 2025 15:38:35 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54QFcWw5032545;
	Mon, 26 May 2025 15:38:32 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 46u76m73hy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 26 May 2025 15:38:32 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54QFcRQT032457;
	Mon, 26 May 2025 15:38:31 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 54QFcRBe032454;
	Mon, 26 May 2025 15:38:31 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id F08DD602733; Mon, 26 May 2025 21:08:30 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V6 10/10] scsi: ufs: qcom : Refactor phy_power_on/off calls
Date: Mon, 26 May 2025 21:08:21 +0530
Message-ID: <20250526153821.7918-11-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
References: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI2MDEzMiBTYWx0ZWRfX7vdOBqZdWA0u
 LBcYClEcpTAcQ3dgvRFOt5h9lkU7TY0vR53Fl3ejx8FEuPONqe9wpTsSnHADPiGZ9LCzf5CM9ZI
 lEUWH4EnM8AGBNv8iAqStHoutZ2m8tcBzJrW3Ev3UIbI9+Kf8XOSSEwCg/IT0IA8tEIPrWlpTab
 cGjrspCJHKdblc1PQXa92KBeMvcNlzY/XZ2IlXAvoamPTe2nNcdCCxzWw3D+BCu1L0MUygQGUM8
 lWvswqQ15e38kDJLjV+ZUlUV8T77SNEUfk5pDV0+MkFR/N7C3KTDeSWoEWXnrO5a4zOjVQwdmPs
 c3ILBMrSkq15/um9PozZtXN5E6VMAPoXXPGkmPIrwFcHwPJ/lM4WPUCLzQBbXxWBk4ysehr4F/r
 jnLmfcaCYHOvI/fJaWHdbAbuj0/jdr72yMQ5o3ZujTVQ4w0uQGKi+aX5Y/8c8byarwHVmZ7O
X-Authority-Analysis: v=2.4 cv=MsdS63ae c=1 sm=1 tr=0 ts=68348afb cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=ylzO3PbLlNu0Q4qtwUgA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: kmGDCnN9ZgMl9OCxb3pUWQauMpoLAwen
X-Proofpoint-ORIG-GUID: kmGDCnN9ZgMl9OCxb3pUWQauMpoLAwen
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-26_08,2025-05-26_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 impostorscore=0 priorityscore=1501 spamscore=0
 mlxscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 adultscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505260132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_083853_985827_EC47D038 
X-CRM114-Status: GOOD (  17.65  )
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
phy_poweron") moved the phy_power_on/off from ufs_qcom_setup_clocks
to suspend/resume func.

To have a better power saving, remove the phy_power_on/off calls from
resume/suspend path and put them back to ufs_qcom_setup_clocks, so that
PHY regulators & clks can be turned on/off along with UFS's clocks.

Since phy phy_power_on is separated out from phy calibrate, make
separate calls to phy_power_on calls from ufs qcom driver.

Co-developed-by: Can Guo <quic_cang@quicinc.com>
Signed-off-by: Can Guo <quic_cang@quicinc.com>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/ufs/host/ufs-qcom.c | 58 +++++++++++++++++--------------------
 1 file changed, 27 insertions(+), 31 deletions(-)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index dfe164da3668..1b313c1c530f 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -696,26 +696,17 @@ static int ufs_qcom_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op,
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
@@ -723,26 +714,11 @@ static int ufs_qcom_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op,
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
@@ -1132,12 +1108,20 @@ static void ufs_qcom_set_caps(struct ufs_hba *hba)
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
@@ -1156,10 +1140,22 @@ static int ufs_qcom_setup_clocks(struct ufs_hba *hba, bool on,
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
--
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
