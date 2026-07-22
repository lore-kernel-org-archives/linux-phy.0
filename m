Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB1B3C4453C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 13:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFPXONerHCg2yG5rRYow3ZhH2ijD7/Kura+Naqm0NEI=; b=zdLtu0/Cf6Qu5E
	UVX4OvOBhc20zCRqCBiE5FfjQ7GgIw/+e8LLvza8wIRefpMd1V0LFxrhME+nkYy/7oc4U788towOa
	GyPNoO5iitUIfO2N8C9rYTocvHMFCoRNfpiYy1b0nttEXz1Yhn3HOPosEMKre4POyTV0sEdgMwL+4
	bVI0iX0AQ6wlUH090wCI37aHAR7pVuRlQDP+Lw56VYJiA/IQsAucRVpK0YfYy3SfWFppMfydlRnkz
	TP5slaRsyeq7zfgzh0WLKb3tEOPCRmLX0TWzTQQiJ+wH1tsQHNuQBhsPcYysi9YXMGIK1MAID5aRX
	npNN+1L2hgbB/fA23gfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGH-0000000BwDF-0xAw;
	Wed, 22 Jul 2026 13:45:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGD-0000000BwBj-2sIg
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 13:45:23 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66MDWdIU891678
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hEC1L4E8qLd13ENLIAvmHH+W0DF9KXCKqgeEjB0jFPM=; b=jEFVTckZ9EEQg8V/
	a087+S+2n2EAwk7Q3uyGXrTxWnUqDS0FI3YHIOnbL8TYHOE98IijsZ6MGIHu6jjR
	FjfpznB5tOH2GaDP1K/o80l2Bq1vCswaatVjkHz+pfVQ7tUhwY81P5EqnHFCB9M7
	7t+QgZ2sO1EtMuBpTLspuywszkekHTsq45fRpOl0TRWIUjN4aQRibhUXLBzEpn2q
	hbBcvyZYKuZJ8PrWbct5wi7gFcyFXHasICrU/TyTTMsZ8+NrhbU7KEc0+4bphNmo
	Qu8n4DhuGvfjj+2xLOhBLDAxWZ1wbwjYaixMLVkrgAo2lawdD/cAnBTOfsNuVn4Y
	ii5oow==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjxm103ps-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:20 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c26012cd0so219396751cf.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 06:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784727920; x=1785332720; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hEC1L4E8qLd13ENLIAvmHH+W0DF9KXCKqgeEjB0jFPM=;
        b=Osf92FnOz1T3J1WIuGrHBW7vuhCJM1WAldkrUHvq2aln1xphW4VfUKC8EKj+iLA7b8
         mVlzVo8nVLog0E1iCuJUdyCgKqo5tOlpkPzLoXSrFTAt2PPWdH0TRleozAmPXKFNjhQd
         1YK2w7UnPvT68NBcRpS2PxpcQDBGHdJ5OX+aAShsa6ct2EYEjzJf6FoTeDduepHM1Fdv
         YzwY7uMt/3Y5E6ecFZsbXA49r7mi/u1YsC1vDMl9f+Ah0umV0A1nxU1sEJ3wPZrwL5Gs
         yt6QJ9gmxflz3I7NMcyPKNQMRCQ76DusdvVa2GvKv4qwVHyr8383WJ1pw5jldgtbLoha
         tvgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784727920; x=1785332720;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hEC1L4E8qLd13ENLIAvmHH+W0DF9KXCKqgeEjB0jFPM=;
        b=UNmvdcBj66Ub/aZ+pP54q5g349oNoVWmWGFZkyax6jbMvguojF3MzKckVjGGU/LL64
         ctCYz2w11h73dEIKPHITeAJsrpp12Qby+l03cuOxDqSKi/Jb+6XYIEBYIdYkF0o5AAja
         jDSCcIk1RKiXJJk9pWxkCLJW6Vj2cIGQp3OIAVSo+FGds4kwL5/Wfe1Cu/KBBoaUXeMC
         EqPx2j/cukMb9DLc8N64qUFZ5ek+ilCg3EoGbYiHaqaVHhYEpICzFHRVarHan5+9LzcG
         czESGMmskiR5s+j7XwLHLOPRCbjGNlheMMiTDryPTi/MV5UVm7bkcfZv6ew3wKW92Qv0
         vMjw==
X-Forwarded-Encrypted: i=1; AHgh+RoWtiRR7i9OhprigmwMtZCdKf6OZqgND9N9NaDoN3FlP1wU6Macj9Zmw0L6kq+aRryA3iUYPrG+/dk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwuwOM7Yir89R3mTF1/8sguvz1waZcoojFlcgL57oQ4yB2t1IWL
	pkyFq+5GQM+B9cnZUWAsTtVPC254q/QtqheXaf13dcYZ0Mvt29sZlLjENifamQI50JlwiAtqDty
	GI0iaAKVdthIDb3IwgSgzEgCOI2h1GeaqzVzr7aWWds4tWUGfivvR/7UHCgdn9R3F1I98gG9wpt
	t4
X-Gm-Gg: AR+sD12xuIzA/BVdbWj2YMd3YE2+vka1qkdjLyXIQNwM3mI7h9Aw7hqrGyevfivy5Ht
	j355Z4zLrTTggZ2JmukoBfbrVpmdxu9D0Jo7EQdlZXOu+Okznxli1Qzb8NYEfu4Z0YO3fd2WEwT
	9kRUaryX5Zh5iif0P4muX2iBhUvW82lG4ERqd8B47hy2Esvkrx/T7SGFxOOLrIAKf/QaZB/dlCu
	rpWbwiymvyv4/5Enrl+FKrANxE1MlJUZ2bj74McdkzzzRIBfy5C5zphXAk7A3QbK4gjZDK4aKNt
	P1ctszvEDjfsgkBqId+GL8hLUioMg8epw4D1Cnx7Mv++oakpM7hanm2R4t36Xkp93wznESn0rAK
	XeWoYVIea9feAm9HahNISIF+w83158gjzHAv1mZzt/+zu6FTweLhJLYLR5uZyZIy2Ic9hswIh0B
	IoVmB7tMTq49iStfP3pi0F2gzriNssjF1vIg5Db9A0j1TP1iN1EQ==
X-Received: by 2002:a05:622a:598f:b0:51c:b900:5136 with SMTP id d75a77b69052e-521385d898fmr216651221cf.0.1784727919728;
        Wed, 22 Jul 2026 06:45:19 -0700 (PDT)
X-Received: by 2002:a05:622a:598f:b0:51c:b900:5136 with SMTP id d75a77b69052e-521385d898fmr216650591cf.0.1784727919076;
        Wed, 22 Jul 2026 06:45:19 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:48e:a2cc:6c4:c92a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32ac8c3esm111874366b.23.2026.07.22.06.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 06:45:18 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 15:45:14 +0200
Subject: [PATCH v6 1/7] phy: qcom: qmp-combo: Prevent unnecessary PM
 runtime suspend at boot
MIME-Version: 1.0
Message-Id: <20260722-qcom-usb-phy-fix-null-v6-1-534f7e61b9a6@oss.qualcomm.com>
References: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
In-Reply-To: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfXybwgH52H9mWP
 WLYVqd4ZDYHNr9OO1op0rX1tYo1LODdpo9TBB2lY7FsUiUrsdkBxrNRAdTV2dgRvR58RiBGyoPL
 WywfGGuad5dccRtZX/+gTVrWivNRAdg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfX4pTCS6CIwC3X
 8pHkEC/so9YXU45E2nMFeVTURPpnWauU+EzDmhu9bByI64BDrN92Yiywh1WHBtdKki8XWnifY5h
 sYYyYhof4Rqx6NMSKFcp67gh30luA9bdYMyfrLRm2036AbN1ywkaFlr9V02HcwqosFYqquskPbu
 B2Q2G4fHUtw6DycCBqqYwZKZiwbvasMm+tfmYhkwk7pJKI5RHwpsRICh1QTdPlg11U0G1dXa7QN
 3HEcKt67WXgn6FUwvZNNKb/RupG3qE2fWFhQmKoWK8x4C4cnnFMwKBnxN8mhic3mSvpteIGF+YT
 RkH9gEjQqe7VbHFtPmA38qoH2lrtSfnDWqmoSYcvbR6YNRbuxFOSUA6Y2kVJXNjmL/cLXUG1j3R
 T7oFQ8qqiOuwEl+ri8fZn+mjsnPqB7ySlcFbC+82h3HzI74vODhXKcjzrsbxdOhgTVCfGTcseKF
 L/Tulk4h7mBbxtkrc2g==
X-Authority-Analysis: v=2.4 cv=Rsv16imK c=1 sm=1 tr=0 ts=6a60c970 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=yoX6jHX73kXkGH752t0A:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: _ef_oWVxiKvl_XFPxw3fzNlPOcf95yvq
X-Proofpoint-ORIG-GUID: _ef_oWVxiKvl_XFPxw3fzNlPOcf95yvq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_04,2026-07-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 phishscore=0 spamscore=0 impostorscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_064521_847987_D9526C96 
X-CRM114-Status: GOOD (  19.64  )
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

Runtime PM has to be enabled before creating the PHYs, since phy_create()
only enables runtime PM on the PHY devices if it is already enabled on
this parent device. This opens a small window where the device can be
runtime suspended after pm_runtime_enable() and before the later
pm_runtime_forbid(), causing an unnecessary suspend/resume cycle while
the PHYs are not yet registered.

Take a runtime PM usage reference with pm_runtime_get_noresume() before
enabling runtime PM and release it once the PHYs have been created to
prevent the device from being runtime suspended during that window.

This also makes the probe path safe independently of pm_runtime_forbid(),
which is a good preparation for potentially dropping the forbid() call in
the future and letting runtime PM be enabled by default.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 26 ++++++++++++++++++++------
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index cdcfad2e86b1d37650c4d7b0433319837ee9c9d4..2cbe1d90662eebd5baf426dd9620cb5cc5d9256f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4934,10 +4934,16 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	/*
+	 * Enable runtime PM before creating the PHYs, phy_create() only enables
+	 * it on the PHY devices if already enabled on the parent. Hold a usage
+	 * reference so callbacks cannot run until the PHY is ready.
+	 */
+	pm_runtime_get_noresume(dev);
 	pm_runtime_set_active(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
-		goto err_node_put;
+		goto err_pm_put;
 	/*
 	 * Prevent runtime pm from being ON by default. Users can enable
 	 * it using power/control in sysfs.
@@ -4946,14 +4952,13 @@ static int qmp_combo_probe(struct platform_device *pdev)
 
 	ret = qmp_combo_register_clocks(qmp, usb_np, dp_np);
 	if (ret)
-		goto err_node_put;
-
+		goto err_pm_put;
 
 	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
 	if (IS_ERR(qmp->usb_phy)) {
 		ret = PTR_ERR(qmp->usb_phy);
 		dev_err(dev, "failed to create USB PHY: %d\n", ret);
-		goto err_node_put;
+		goto err_pm_put;
 	}
 
 	phy_set_drvdata(qmp->usb_phy, qmp);
@@ -4962,7 +4967,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (IS_ERR(qmp->dp_phy)) {
 		ret = PTR_ERR(qmp->dp_phy);
 		dev_err(dev, "failed to create DP PHY: %d\n", ret);
-		goto err_node_put;
+		goto err_pm_put;
 	}
 
 	phy_set_drvdata(qmp->dp_phy, qmp);
@@ -4972,11 +4977,20 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	else
 		phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 
+	if (IS_ERR(phy_provider)) {
+		ret = PTR_ERR(phy_provider);
+		goto err_pm_put;
+	}
+
 	of_node_put(usb_np);
 	of_node_put(dp_np);
 
-	return PTR_ERR_OR_ZERO(phy_provider);
+	pm_runtime_put(dev);
+
+	return 0;
 
+err_pm_put:
+	pm_runtime_put_noidle(dev);
 err_node_put:
 	of_node_put(usb_np);
 	of_node_put(dp_np);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
