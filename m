Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80ABEECD985
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 16:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UlMeUkfecSaS2+Wv8PVsq+uISRiKte/bdh2qdpiWt8M=; b=HEe/UzjGrtfDd0
	9hzAHU8ZGrVUYge/6BKt1n3oSYS04SZ2ZVIu10rSktNMt6G52RPSHqNP4Ht5O+An6dO5RRT8CSuqL
	fefRiy/EESk7yHqChcHHjyG/fX5tru9wQVn9D1BzxggMIgzkk4UIcbpLPY4H/1QNhmAgVRJtlxUEr
	3aQbLRFsWwhKMa7/IxAS6oxrU1IWrDX100exC/KSFPHetSSr2gFyzusEp6AFvoxrZkpTbYjpZDplj
	AUuivA8Cba/da53amaQnxSTTbcH0q+6wVTgX2Iym+euT/mv3MYO3dof053buQWIe7iwMaglDuPa4n
	TBAmjtdzUevSugQF0jbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1ow-0000000ACgq-0rYd;
	Thu, 05 Feb 2026 16:03:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1ot-0000000ACf4-3V90
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 16:03:04 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615BjhJP4125660
	for <linux-phy@lists.infradead.org>; Thu, 5 Feb 2026 16:03:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=qHj45frK2CW
	TaWyU3a+r3SIT6ptBFPbjJMKlCBjfbww=; b=CnJid0gdrY+hXh9cv9WS4zfL71x
	YeS+spw3dn8kIgJdrU/LbUBcCdGTMOgm9SF+0dWpDAWCZwbHuMqBCDM9exaV9et7
	RtZYY8VZuX6Au3WG+VRwcudyjvsyHE5XNWS6BbS7170gQ68QuLBMnFnYDkj6RQvH
	Rel0HJG147wMoAawjzPc7A/whSriFBEsC4wjzjSSLsU+yzfiEcOKB2aUxqFNGXT5
	8wiAzGBFNB3vyxRy246mtYquVBy3AeDx7VuM2o4pDwYODNOG/0rZ/JK2uv7r0cAN
	U4/sbfne7cNgtPk7xg+ZKBIpeWLN9qi2DPzlexKEpDjs7kmFVOfxl3WzQfQ==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4tm8rsxx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 16:03:03 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7d14b9caf47so3994999a34.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 08:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770307382; x=1770912182; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qHj45frK2CWTaWyU3a+r3SIT6ptBFPbjJMKlCBjfbww=;
        b=a/0N/3uc+MQblW6YWb05eyh9PdX95afpR3m9/kxhy11I/BoKpWx7/K4QpHp/aOSpkS
         0nGu6/S+vftxJNfIKGQ0rzlkGt5P6/MWfMikctgG/Na3ZZbujE7pW+bhRf7gmGAiFHl2
         JMrmndt8Rx0LWiGEsrqhgR/Ol/P2daxv7uiZwVR7ntwRqywmCU3tKxJAvpst6+evx0TQ
         3+c+ZyzAqd6u06TvtGCboIRKJ4e9zcyVrNOzIL9nlJDLpMtSI2gpjsXJcayp1oHnXi4w
         45nMRTYlysrSW0gBd95OjCeDX4F90u42MvbH6o2hkApqowYXfo6cc4S36w2MeonG7/06
         MAdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770307382; x=1770912182;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qHj45frK2CWTaWyU3a+r3SIT6ptBFPbjJMKlCBjfbww=;
        b=rgayuOKwjRHoi01HX8WflEHmvFTz+WxYrs9zHIjaRBZVcJiMtY7pbAj1pcT4xwar45
         kS6+66U4DRx3kmnPVebbLKlZvmlRXf8JegUMt2/7eZ0sqOhi/sphebIAOd8N4jYcUcDP
         UF06X5xcii51RajEod/Y5El/cDDX/zwyfkd3vXCRjKeiCIcW6jijpztXFZDIVwrAv99H
         oYAvSknWaGpe57AlHD8hoQCfT5skvkfPHwc42kzSAm8RVUuXjUVV/OduVITa4z9i4MNw
         ZSbr8sQClq2WP01yNfvlIKIVcgC3wsj9sGnTunWadsfBA5SMcz1QsHEn4Vz0EoJ/oyyI
         5WAg==
X-Forwarded-Encrypted: i=1; AJvYcCVii0zbDRZYeAOoch7sP5GkcSw1d57ZjoXFfm/MLblCjrz/GuXl+cIvmi2vLRbbitIkEQQNzz/RpoE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8TtsqBnwMr8SiR2GV/qjg13AxGj5ssWXxZWjT1LrijUkb4PXH
	7jy4HfXGPTVkCmYHy6mlrUONSQUxudwai8S81z0Rz63/+waxsSAZIXZwupEv5rnTNb2eBhcL1HV
	aFjPfye6YUYopULbzWBkaC+Od1DZdg4mnk0BxKQIopeSQBwQK/HGC4MueRt7TQWLHxJe2
X-Gm-Gg: AZuq6aIMCf0RY8fcCSGb4YlhF4zUF4RXkznFaU263U93Hw4c0964rl0HYKQoSJb2SCh
	V1NGGH8R1DCHF/ulRyHI/sU9Wq7I6sc8VwkFAweNukCcjzkj9G5VXp/kUFII6ztQCk+6JMGTqY8
	PNt10Jyv5bWCCCF/IVDB9oSQnhI1l4LJE4CCMycBESB73ImJSD2SeEUlPPiiiFzp/Ij0bSaFfyg
	pWIeP9XaY6BasMb46jmknOsLzrrUYVEM39tUkaBZlDsCZnD2/D7jCueDYD5hlN3k4MMTB+Id5Mp
	aJaPLu5kfTORn4SBmLkvc9XKFirB0BwjxbDg5HVMU8s6P5gWs4QX++p+gmROPCB/a/YvVUJW1yJ
	YuhkiiJeXlq4QpHEbUEB8sELEZT9UpveFkvXmi2SDCFbB2ZRdQKUnMSuf+i9WKCkyfyBGfP9btl
	cY
X-Received: by 2002:a05:6830:6288:b0:7c7:266:392d with SMTP id 46e09a7af769-7d4489a722bmr4022762a34.13.1770307382344;
        Thu, 05 Feb 2026 08:03:02 -0800 (PST)
X-Received: by 2002:a05:6830:6288:b0:7c7:266:392d with SMTP id 46e09a7af769-7d4489a722bmr4022725a34.13.1770307381843;
        Thu, 05 Feb 2026 08:03:01 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:103a:9c65:ad2d:82fc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436180640e5sm13770002f8f.40.2026.02.05.08.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 08:03:00 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v3 5/5] phy: qcom: snps-femto-v2: Fix possible NULL-deref on early runtime suspend
Date: Thu,  5 Feb 2026 17:02:40 +0100
Message-Id: <20260205160240.748371-6-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=Vd76/Vp9 c=1 sm=1 tr=0 ts=6984bf37 cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=xqWC_Br6kY4A:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=GnikDSHSz1V4xWV9RsQA:9 a=Z1Yy7GAxqfX1iEi80vsk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDEyMCBTYWx0ZWRfX4e9d2Sfr86sF
 g2CFBcpC+7Ah6V99Wu3bNR7uG89XOWrfIBn71mdc/X8PBgFflQWQz72KYZPwUGO9B+XrnO0QPG/
 alNrKvunqWjBqV1I6cnFJOzoAQLdSlOZtHSvJvp2P4UAuzOFxEyMXNXMXP0TUbqIELGhq5GQUhL
 Xxsz/ufjSyOuioAJkMjiY5GVaoFtht7PyHkdT9jqMQ7hKd6exwdoVaLFc17FTDR/0XJlz5HWkRz
 JAxiZnqMPyqgS5UoH0HYSF3A7p823K8aMwhJNParC56q/VqqyWmLa4U6/yY1f7L0WNgeOGHWPuG
 tVl734H0shkpM85Xe/KOkL3cLN+Vgf1z57PpdO9anitBHDP+SPpgMd/t4O+M5+nTEmL7Hu9Dzar
 fP6KDocJpedWNrNrd2xyDFzqGHg/2BO4UlyfluuWDoWZuoMCUJLKGl+XDPwms3ZuvFIkFcGmz7/
 wJKfwaMes4Y4mMQxMrA==
X-Proofpoint-ORIG-GUID: 8sd_q_qPRSypB-ouEXZ6BOOz4z5MVXJc
X-Proofpoint-GUID: 8sd_q_qPRSypB-ouEXZ6BOOz4z5MVXJc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_03,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_080303_874937_1FCFF86E 
X-CRM114-Status: GOOD (  15.09  )
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

Enabling runtime PM before attaching the hsphy instance as driver data
can lead to a NULL pointer dereference in runtime PM callbacks that
expect valid driver data. There is a small window where the suspend
callback may run after PM runtime enabling and before runtime forbid.

Attach the hsphy instance as driver data before enabling runtime PM to
prevent NULL pointer dereference in runtime PM callbacks.

Reorder pm_runtime_enable() and pm_runtime_forbid() to prevent a
short window where an unnecessary runtime suspend can occur.

Use the devres-managed version to ensure PM runtime is symmetrically
disabled during driver removal for proper cleanup.

Fixes: 0d75f508a9d5 ("phy: qcom-snps: Add runtime suspend and resume handlers")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index eb0b0f61d98e..d1288a6c202e 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -599,13 +599,17 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, ret,
 				     "failed to get regulator supplies\n");
 
-	pm_runtime_set_active(dev);
-	pm_runtime_enable(dev);
+	dev_set_drvdata(dev, hsphy);
+
 	/*
-	 * Prevent runtime pm from being ON by default. Users can enable
-	 * it using power/control in sysfs.
+	 * Enable runtime PM support, but forbid it by default.
+	 * Users can allow it again via the power/control attribute in sysfs.
 	 */
+	pm_runtime_set_active(dev);
 	pm_runtime_forbid(dev);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
 
 	generic_phy = devm_phy_create(dev, NULL, &qcom_snps_hsphy_gen_ops);
 	if (IS_ERR(generic_phy)) {
@@ -615,15 +619,12 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 	}
 	hsphy->phy = generic_phy;
 
-	dev_set_drvdata(dev, hsphy);
 	phy_set_drvdata(generic_phy, hsphy);
 	qcom_snps_hsphy_read_override_param_seq(dev);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (!IS_ERR(phy_provider))
 		dev_dbg(dev, "Registered Qcom-SNPS HS phy\n");
-	else
-		pm_runtime_disable(dev);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
