Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25003C44536
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 14:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WqMH7u0guaBizOFp6uCLXP6FqM+7Gb3CpWZjwf9C0bg=; b=AObfulqFBIA5uJ
	Ayk9LnoG6cI47aXV20WShz3LtCkANUJbFf5egko1Cg4FZlyv9G/Dg6tu0RhLqOveMVdxTGMN9Fael
	KYwT/dtwuhDcQVjfuRpV1fyTy9N/RNIsRziziQ/B37AhXTLRWGBZrZOzJ2Jkd7Jjze3WkRhsybPD1
	KDO+t60FyoolBsK8YC92MOhhFFtgPiJu3HmzJ/FlI22HG3UqF12XR2QyUIcLRef7UxKRNlwTH3PHj
	0ELYHAyDWn3v8WxtamTS+41+JQo0qPE+YrCy8CuVJ6ZVrsNNG363nCXB3mi77xV+Ruxmf/9uJChEt
	TA7+cnpes2M8Sys6d9Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZCQ-00000005ba6-3lGf;
	Wed, 21 Jan 2026 14:28:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZCK-00000005bWa-2LPs
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 14:28:45 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LAmoOS3315727
	for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:28:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=dLZIDtswwT/
	chM1OAjfGCiNb9WkQTQKqia9C4XzX8r4=; b=ao1CWFBgMJGVzNn/WMG7quJHkSv
	gZxE8nOmjDWgU1woE85Bjn1E9wSxoiPe0Ywor1EZFr6diop7j6qFY8mO6p3NZ9tw
	GO71hJRuPzFYNK46TMQoi8jaoHmtSM5On8n8Zlq33qgRe88MVHS0fZ0tc3/BoQzb
	G5qGcDKckDFLjX2CfywKmTddomhDDNQlmXDBpo1MtcglCQjl7vnWkfV+sgCyGDrB
	PA40ox/v7byInTJvWGMBet//U/Jvt7Spn1jVwtTFpVrNrP3yKV4EYSFEtOP+ph3P
	ZzopI/8OnhHcJNDnmBAPUlXg7OnO7MKXojX/7VOF/jT+bRD1iYLgKo4Flrg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btwcjgmun-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:28:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c277fe676eso1774854685a.0
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 06:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769005718; x=1769610518; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dLZIDtswwT/chM1OAjfGCiNb9WkQTQKqia9C4XzX8r4=;
        b=eZBRTp7ev6b16ZFKi88hGAwPREPOKin0rl6ecfIe0koiypu/KcuultHweu4FD11qqb
         qHVzR2m2PsXUHAaf3+0BFpx6nwKoMFDxrELGAOkMJT1uqNyR5A/p7JavT5kQMuEeSFJM
         6uQkUYCocF1/jHbgBYUesdQg8pgnr1N/feQZUQ6ai70Io7yEjRS+RE+6Pajptreg4DBL
         w8VXsblMz0gAwKgP76HcujfxNMLQ/eGYqrCPJ08Oy8GLW9fdXulUvRsWnXq0yYuW2deW
         z+yz29t40YxWPYtoea+8BIwxQm24Nu1Fd3RHQNCR2CC2zTpdPGEIRlr0eAQ5sxBB2Hc1
         PhWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769005718; x=1769610518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dLZIDtswwT/chM1OAjfGCiNb9WkQTQKqia9C4XzX8r4=;
        b=wU9lsfbBGxiX6MZZGnz+HjGGt3F56AILBKqHBorBJCGdeXDlzArLIdHfAMK0Q3OhzO
         Fg7FfKLcTLhtMPUAFlRNQjoVlEEPH0G6vSa9v+3ScjYafyEXgx7VFelzLxe9mD/tCBxM
         ny6joBVZgI+Owg9zqW4CeiNLhlTCROGziZGNBeMKvV5hZyrDOLa6W9Q5PMfIWrJAWEK9
         m/KCV0szE2IqvW4a3/y/++f7LtnKi6Y+t+bX9TtfxOFH/BKRiNsCZNpoihMu3LtJLGCT
         iaJOiJPGIfnAGUPpIPO/qpf6rkYf2dws4Rhb1/R0ACzdWZuw7Hb7Np7SQgNN5CQ0CX07
         m0Ag==
X-Forwarded-Encrypted: i=1; AJvYcCUXbOKrHu7FgljqBitTOaX7I02NwVpV+lfagKryy1Aq0kGOqQj2ufweFsjXjkRwYRt29J0ZVNM6wgY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwmyxegmPEa/RPO22h8Cqfgut7bZ2iW40miebZ8b/ni4qCwR/lh
	Lvns2ptg7fgyT6I2wu20FDs8dmQgtWe54NuTrOdyXDwNQRTAB6/0bDrF/VszfhRlgUW/aS6Mc7v
	FRLC5FXLfdBCR5OIpc+1ZeIIxtm+cQ6nmhwDhdARG4uvfCfxkKsVQcS8T2GifECsTwS6Y
X-Gm-Gg: AZuq6aJxWLbMPnSnZ3KMSPTb7N3/Hzm8//RrCffYBqosok1dWf91KqqS+91tPdq5nMe
	Ob8G/VYUyyGOK/j0ZvRZ6C29pZCovlxB9ERyPiHR6kb613pTOXsPIpXyEAgIGVgAAUFKu6xD/Lr
	mEC7it7G98N6iizJoTxrFPTmRO+cvhLezJ7XEeH/Hl6A1HT+Dj6lIX4b69fWcT9Y3Qd9zn2Dsui
	OriMYxrpN/BYCOx5nOV8pwTGlk2YcodRmY/STe66xO06VmGU6oeILARBxCI6sXN6XZ1xUqGrRZh
	ddNUyF43ansVwocXLWfriV8iX9dxKXPFRcHjoK9+uoXlgEwDjcGnYNP5ataNEwEeYXnGfsDOk1F
	kDjPBqOpUARbcqtt2eKWp0BAQN+4+R1Bj6JQ2r0tzMyBN+HNEsQ03y+DW3gkrRdatxcsnlzIJfr
	oeAH25
X-Received: by 2002:a05:620a:178a:b0:8b2:f892:9136 with SMTP id af79cd13be357-8c6a675b001mr2368541385a.42.1769005718411;
        Wed, 21 Jan 2026 06:28:38 -0800 (PST)
X-Received: by 2002:a05:620a:178a:b0:8b2:f892:9136 with SMTP id af79cd13be357-8c6a675b001mr2368538585a.42.1769005717985;
        Wed, 21 Jan 2026 06:28:37 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a0d:3344:10b3:c488:b09f:b54c:1120:95f0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435996540cesm6098180f8f.43.2026.01.21.06.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 06:28:37 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v2 2/6] phy: qcom: qmp-usbc: Fix possible NULL-deref on early runtime suspend
Date: Wed, 21 Jan 2026 15:28:23 +0100
Message-Id: <20260121142827.2583-3-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: Tjfb83LzA0v8qpPV7kZKOWlzevRJjxtG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDEyMiBTYWx0ZWRfX8G4lpnsCKhFW
 mlc/P8f0aD5IPZyTqv3X8U3qwE0EpuFoWFY77rHE9+6IibULOAe+vc+mDbDWMSxBeZcI2iYd/AC
 RqUViHBoC2um5N+QjEbHCNaWvd2m/JB0Ud1zjg330qDdXy4dehG4GWPjRthb7HCr+MDkYYFVPwA
 bXjhN94Gn9bhB6r1MjyLUL9ILOOw348SdxQR5pwzvWvv8Sjtb38rvjsdZbqpTLPe2qbMS6FWyNq
 KjZdOda0jOjZGkCDT05TIcigOmJKy1XSTRjOLjV4WDS2mUGpjUDQsmrHzf2pqknF/1iObPgJVSd
 /mvTuVHHm+8i5/x0x/3vrDxAEEpYOwJnOEVgTwG98qR7pIhlHyUsUbCzgWsKu6iShjSm9eIFp2m
 fe0mocFPj6HTIpr/+3lWmFLOYz7gmKqyWyshXHPkG6ugZSL86fSTmLUnUlyrastAJpbtCSg1iC6
 sXngyS/cSQK4SKylGeg==
X-Proofpoint-ORIG-GUID: Tjfb83LzA0v8qpPV7kZKOWlzevRJjxtG
X-Authority-Analysis: v=2.4 cv=JpD8bc4C c=1 sm=1 tr=0 ts=6970e297 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=qE5JlSMSJaPhyfYheT0A:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_02,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_062840_713137_400BD09D 
X-CRM114-Status: GOOD (  15.17  )
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

This can also occur if user re-enables runtime-pm via the sysfs
attribute before qmp phy is initialized.

Use qmp->usb_init_count instead of qmp->phy->init_count to avoid
depending on the possibly uninitialized phy pointer.

Fixes: 19281571a4d5 ("phy: qcom: qmp-usb: split USB-C PHY driver")
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 5e7fcb26744a..edfaa14db967 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -690,7 +690,7 @@ static int __maybe_unused qmp_usbc_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->usb_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -710,7 +710,7 @@ static int __maybe_unused qmp_usbc_runtime_resume(struct device *dev)
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->usb_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
