Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC037D1D47D
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 15:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrjN0lUljNltLZpozepZYNtoZXBdUObEu490pb59vxo=; b=CP9rjJ+yEpok7F
	36cz7DOef64WyhCNIh7umAuaGfoVoTWWNSIrWmI39DXKoB6gZxy46efqZMU/yLEjJ+3q+vw7UuIbk
	ylXtPYP2zubkjTWK4RQ+354ngksy0NuK/Q7O/TP8pWhq7fknZVZLDgJj6lIZPAVosxfF35oxaFXQF
	r+LoadZFupR8S9IHBQZheIukkswopGnKI2q9O6u5vFIdGwxSerwqZAXTHjeWktuJV9MsX6ghMbQ1x
	eIuIqaqxm60yEh7kt70eKQe2UhZxBcVl+KtD8+HKf8yhnz1mVY+Y6ba9BWUY5d+lw6SWW80IvQSRK
	0TtwPlyQ9wBBRg4OT1QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsGt-0000000HaFc-2g8i;
	Thu, 08 Jan 2026 15:49:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsGr-0000000HaE1-0WTr
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 15:49:58 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608C2YGb3751414
	for <linux-phy@lists.infradead.org>; Thu, 8 Jan 2026 15:49:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=sslvioVRc5f
	6lALrQVFB/a6o3Iqkw7kTe14OBUMjs3o=; b=bxf9T7xtfKsax1z8Jy77iuCV3FC
	pN/5Te7oc1zVLs1SDwJu7U+bfu/n5JUbn1fNbQOBQqwzQR/Iw5U5s+E5XAq2A6sQ
	3ufOSOMN2NdyhJCwNrm8noV6yfRyq7S9CC6VcHuDe39Z/ATOaBfUwpKCPRDGeG58
	EDuR2HvFfKwUNdO7AreooHrs+fgUgNiUJVAQMV1FgergA97ZcMHRFjHDGnRf4I33
	OzNqeBdsR5DnUVdluCW7NDQnpD29ggpbBVxFzhvAMpZQUFReMriPtk0fV58Dc7Gh
	uMy8eWuASzp8GE1ehyBT+ZeOWv5bp7bLMHl85X0GUbd59zRgp4GjDj266JQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhuxcut9e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 15:49:56 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b8738fb141so604510185a.0
        for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 07:49:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767887395; x=1768492195; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sslvioVRc5f6lALrQVFB/a6o3Iqkw7kTe14OBUMjs3o=;
        b=MCSlg0RRykLNicfxpf5clc42aSUDxfJwNqG2m1tXoemKxuzO4TK1l6Iz00AF4xTY0p
         J5iuVNbvGT8Ik4XRoPiVGrANU0JNZD7EV89AJAWIPH+tj/Bf+eALvgzJLfVicQm0hr0j
         F9QZQXBkHnFyLK3L6cRJunQPGvqO2h2ndVryApn/7HFMhNSmsxc1NsnQ/aE/lQCIfAYU
         m7Rd4+yCQL61g4HejLDE+jtZQo2I3Zk4D3/i5nycAyx7swW7N54nXwEC32Yobk3j4kdW
         Z9rdrpoHgPP4CaqzYZFDQrxTPBSGvQTq54nHj8wmN16I9a4X/Ptqx4S4cRCfQuDs+Haq
         sRMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767887395; x=1768492195;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sslvioVRc5f6lALrQVFB/a6o3Iqkw7kTe14OBUMjs3o=;
        b=cK2+x59Yt+X4x+xnK41S/7z+1bXksUD/XOdsbNDA3DKZmMZhKWlEqoPgDro6s8ynVE
         NcwiT9Q7jFGEg1YaCRx9HaV7boWG7XRH+jx2UIFG5M4ujTPW2/xJFQIvBRO0hfphB/NI
         YxgDK23K+7KmK38iBw7dBX6PnXEQDT0BFpDMvOXxodDu9hBszSJgshpobtxAyKtHety/
         G8sO1yOM1+N0U+OFeOOzXzEAm+kiJHKkeulBcOo2l16Gy8igEMkY2MIh3G+Zsd98sA+I
         ah8PYc5CjJiSU9YH7Cm1LBFqMShZ2kyKtZp7bmBnf4oZv2JY5d1evXXeMgz7FPc9icvO
         0+aQ==
X-Forwarded-Encrypted: i=1; AJvYcCW3JqtnDS/a18ZknocV0MFhts7+zOQxcOUEKxHBSvewH0CGssp0qmvToQ4x8O9WuCl6nb7KxQXwOH8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzPafEfUCLDlegAKtCM/q0ilzIjzavoP7fPdJXkaxuhZBWhBMHL
	GCragGmEuTviuKyLTs/TqBe5yW86G7Ty35S9cNZLrSTkU0y57zfeoDkObzNX6ADbrZCS/LvacS+
	hhfco+3rPIzw2KkvmzgDc0Zt0mRUDZGctSJpniTMfoRE+5/Qa2MpNVwLrRkvp+//g94E6
X-Gm-Gg: AY/fxX7PDmpAThiLsA1FgDW9urx9r7F/4swoiTnrRjm275FKhKSkpePymdKg4ePNmmu
	pHzLUWAmvTOMLrhLr+kRZvNlBdGM0C6Nf7STfVTR8gAhc+M6tlgbbJcuDhkhewDRyFpSc6f5VX1
	CQ1vWAlA2N+K0oxYf2Pfx/4XWFGfJY47pdRCruFC8ePid9zqPJEAsXuJKHoCoy8m5rRbi5AGz1c
	hh6pooBOZnXocOcERjcboGRpylCnzmrp2thxaCTkuvqphrVUM4VoPCbxwUSxGpxBCpUWaoZUHKN
	L+5G8AN5KYDFLOjhuKCX496pBzHTixLMM3eZKYmeBaZ1Osvz7XsQG1CpvWU3G/B4L8s9+JozQA6
	LPyK40ZjHgoQYGjCm4kMyz1/vCFB64WQocnhirHEkPKnabdTDs/6DAv3taa3oEvL6D/3EI+8cJg
	g4
X-Received: by 2002:a05:620a:394b:b0:891:7008:f2e0 with SMTP id af79cd13be357-8c37f4c2b42mr1385493885a.8.1767887395177;
        Thu, 08 Jan 2026 07:49:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGz+EkWaD/eIlEyBC1oPCnJs3ZfQillVtZ2tId/uzroLw0JvPOLsrgMfHa/XM4WhHdq/DNjkA==
X-Received: by 2002:a05:620a:394b:b0:891:7008:f2e0 with SMTP id af79cd13be357-8c37f4c2b42mr1385488785a.8.1767887394673;
        Thu, 08 Jan 2026 07:49:54 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:211d:6051:c853:ae97])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be655aesm8078121a12.17.2026.01.08.07.49.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 07:49:53 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 3/4] phy: qcom: qmp-usb-legacy: Fix possible NULL-deref on early runtime suspend
Date: Thu,  8 Jan 2026 16:49:43 +0100
Message-Id: <20260108154944.211886-4-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108154944.211886-1-loic.poulain@oss.qualcomm.com>
References: <20260108154944.211886-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDExNSBTYWx0ZWRfXzz0YN0XUHZjP
 gxl9DKG2JRRIT0JekFh5AJ4F6H7oPNw+apC4HqJnFniQclNZIyX/UnwjrH4gXzolAlvO4qMyXm1
 xLcJO0tH18kfL8jSXGv4wTZuwygsWQWKypQRBFLsHMu5ldnhA27ldCbFJF/lImEj78ry85nb1Wf
 A4wKHsm8kv30n94TvuBJbz/1Bwuc30zegad3gcfQNOpmSxEvWni5tq5fvxPPER+HF5DvHGTRgmt
 SrJm9CaOtxwWMbJie92aoNtcX5kazVIoQf41QqMz0GabkqEHw1QuNG+3yV6r6vlHjmh2Rouac1L
 iiKFXi3PpldssMStH9FVbvgHKQoC1kHTGXkLH+XjABtky2j09ZoVKd5zRcbgSDwwsnXm0MklTaO
 Z7UxXL118OlcSh6tqCKg3Z8IdCOkpMuL4LCfDujyfu3yAM00o96ERu7t2iXWvZoxeKiu2JUDecF
 C7BzZqWyoeFoAWK3r5w==
X-Proofpoint-ORIG-GUID: lbZ2utd-XCMGXiPYtbGaC24YyjmmUzLN
X-Authority-Analysis: v=2.4 cv=SPdPlevH c=1 sm=1 tr=0 ts=695fd224 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=yEucIi0xZ8PcM-TVcisA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: lbZ2utd-XCMGXiPYtbGaC24YyjmmUzLN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_074957_179371_CD27CC20 
X-CRM114-Status: GOOD (  17.95  )
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

There is a small window where the runtime suspend callback may run
after pm_runtime_enable() and before pm_runtime_forbid(). In this
case, a crash occurs because runtime suspend/resume dereferences
qmp->phy pointer, which is not yet initialized:
        `if (!qmp->phy->init_count) {`

Similarly to other qcom phy drivers, introduce a qmp->phy_initialized
variable that can be used to avoid relying on the possibly uninitialized
phy pointer.

Reorder pm_runtime_enable() and pm_runtime_forbid() to prevent the window
where an unnecessary runtime suspend can occur.

Fixes: e464a3180a43 ("phy: qcom-qmp-usb: split off the legacy USB+dp_com support")
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-qmp-usb-legacy.c    | 21 ++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
index 8bf951b0490c..73439d223f1d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
@@ -541,6 +541,7 @@ struct qmp_usb {
 	struct regulator_bulk_data *vregs;
 
 	enum phy_mode mode;
+	bool phy_initialized;
 
 	struct phy *phy;
 
@@ -895,6 +896,7 @@ static int qmp_usb_legacy_power_off(struct phy *phy)
 
 static int qmp_usb_legacy_enable(struct phy *phy)
 {
+	struct qmp_usb *qmp = phy_get_drvdata(phy);
 	int ret;
 
 	ret = qmp_usb_legacy_init(phy);
@@ -904,14 +906,19 @@ static int qmp_usb_legacy_enable(struct phy *phy)
 	ret = qmp_usb_legacy_power_on(phy);
 	if (ret)
 		qmp_usb_legacy_exit(phy);
+	else
+		qmp->phy_initialized = true;
 
 	return ret;
 }
 
 static int qmp_usb_legacy_disable(struct phy *phy)
 {
+	struct qmp_usb *qmp = phy_get_drvdata(phy);
 	int ret;
 
+	qmp->phy_initialized = false;
+
 	ret = qmp_usb_legacy_power_off(phy);
 	if (ret)
 		return ret;
@@ -988,7 +995,7 @@ static int __maybe_unused qmp_usb_legacy_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->phy_initialized) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -1009,7 +1016,7 @@ static int __maybe_unused qmp_usb_legacy_runtime_resume(struct device *dev)
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->phy_initialized) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -1277,15 +1284,15 @@ static int qmp_usb_legacy_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	/*
+	 * Enable runtime PM support, but forbid it by default.
+	 * Users can allow it again via the power/control attribute in sysfs.
+	 */
 	pm_runtime_set_active(dev);
+	pm_runtime_forbid(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
 		goto err_node_put;
-	/*
-	 * Prevent runtime pm from being ON by default. Users can enable
-	 * it using power/control in sysfs.
-	 */
-	pm_runtime_forbid(dev);
 
 	ret = phy_pipe_clk_register(qmp, np);
 	if (ret)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
