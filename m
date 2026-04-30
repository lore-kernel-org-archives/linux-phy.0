Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 749E7CCFA13
	for <linux-phy@archiver.kernel.org>; Thu, 30 Apr 2026 11:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sEc8szItF74vZa3eJ4DfI7Kce4q+I7nSBklN0TwUYAk=; b=OA1SnnwMqhqRju
	/6Pxdr0Kh9gKPUjNVIrJTkhd7CL/Gn4oi+yPYxmTcPaDpw/p8ikfgpYjdTfWtcq9ytoXOnBtaxSP1
	qSnDquSWg4kdM0v4ALo8QnTb/pi9IIpIQqadEcWNgoVsxsGtl0MlUaSpz8gmzviFdgw/BgfxgHXdu
	R5KZm0wu6Dqx3xY5jQThOK3oizJs6t2hrddgAV6D7FQtAyb2q4q6aNPyzpxtYhCkNec7Zt+/3o2cL
	2gt16DWu5Go7OlFSzWMPiio8Q6GpIeu9OOO6vtdYhpm7pqs1yr8fpK1W3zdztEYybcFeDxVRXMK+a
	Xx/Nt8YNHwJXalRc20UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPxY-00000005PMn-0kyN;
	Thu, 30 Apr 2026 11:53:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPxV-00000005PLw-3r3F
	for linux-phy@lists.infradead.org;
	Thu, 30 Apr 2026 11:53:35 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63UADvNc007933
	for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 11:53:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ewPdVdGVbSeW7Omov7gTKOsihB0IfbTCUWiSfL4VRZo=; b=GC/yondofWN8U6v/
	D2WK522M1RGZBMQryzQHiq+q2tLJbedDjo7e4Xe6hIC8Vy/nehbIrqqQZ0XeGqAJ
	VThQ67CEzrqCPW5SitZ9os/f3/Iimi7Q92K+OmAFIFgnabwBOacR66U5pD4TrJpR
	pDReb74V0qWem/byDWH1KR3E2xXO/dYsiKgvguSwSRznqLplugA6qZysR9wvYuii
	w93IW6D/De6YXLpixlJed5FkYNf7lxkFpxqH0msa78nQddfsQSRzGtknnsdz2caV
	/EEINOOj+XMgT17o0kXXJIvFxWqTLQucyJ7sCYoR/NIxwOi4xRFmJ5yG6gIYxf57
	z8AIvg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dv54w8fgw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 11:53:32 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2b9a6af4bc2so10326595ad.3
        for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 04:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777550012; x=1778154812; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ewPdVdGVbSeW7Omov7gTKOsihB0IfbTCUWiSfL4VRZo=;
        b=N3cf7/bjq542e+PzkoEgQTyoR3JZQRRxZlwbS+AbEmXhCDEnkBvEJ2PDkhMXHZif0J
         G+3IaVUterEW3gJ8l7j6RM2vIGFBx+SEcImCbs8RIW74DwwYkBaDTBEMJhaOllS+/h5o
         ZbUHGKGlqJ2GlDvU57AWdgiP5R3k6ao8xKakwVeIih+iY22xDI3yCkns/pBicTwZurNb
         B2/X4uR86FdYlVxyy6ZawqfE6CAD0/qipYsw1v/qQWMNTrkBR8neIzHLl/bPqH1WL5bY
         JdvWxt7TUcRrNUJJV8d/aGVlvInjVcLzuHmxlwDM7lgPN97PjU3YZIxdp2jdWQatzNNe
         fEyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777550012; x=1778154812;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ewPdVdGVbSeW7Omov7gTKOsihB0IfbTCUWiSfL4VRZo=;
        b=rDF37rN4HVx8hbsU+LUIM7uMHYfPK4vSlmMiBDQxVFBUZGIR1Age4uCOBmDOFwobuo
         pYC8JHMXcDvDw/EN0Un5NOmXKAzyFNzy+AOoxDSzxuSDGbk55uZX7OCrn0aaRBIy9SZJ
         Bdfn9R4XOgtCcofhKT30JzqxVqK73kWibRgCeI97wEJyTAOf6z9URdKdEtB6LShJzNRS
         3KfRrIGTWeGiRU4TFM6roaBErbi938iyJd92t0btZwDTs2emRZ8TvuiSMVRymHOselO8
         H0bNb/2QBKcgnpbMhwp0HLt1vNsJT5i2MicSWbGOd1vAgiXtkZlefwkZBegb6tK9z+s+
         VWrA==
X-Forwarded-Encrypted: i=1; AFNElJ8r+ziVVj7RU928S/RrT/dJfPHjJ8xZZH7w65bcdn6gaJO8MMN87bRpNDF304E81i2o0V0tLQDk4I8=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywc+FtaX1S6OR+lIYjHvBV0yLBIEiimoVOcbEItO61Ihh/9O9Fn
	oJMWMKxaj5ahFsatVCp7M07L26hux8fOusUi8Jt2qYjawPqsZ2bgi6OB9cT0B8fESJMwX00V0Tw
	QeVpMLRCUvgFw3UKBT1XSa5kmm2dkw4Kba2YHVqpD/GRO7po9zPbRS5rSCJUzLcFR4U+o
X-Gm-Gg: AeBDiesQpPmt/9oknRMbGt28JxnpZgMBGMhRzfR3dGJJ86VJ0AArjo5ULQIAiTjCc6/
	Vr10+qtmL6B7VVyz/+XsSaO8R8T2+3esy1Szy5OUsz/uZDsZGHEER7T7/xkdcPUIdEksXleTHgT
	zXBHMKOzl8HuY+jVZQvdI99TGS+cTqcB+EOYtIUhnxn2DW7YH0Jtu8NhX2ax4fDmikWXGjYZuxz
	HdijSa4u/YTRDPMAzYtHaLPtulS8iEUnATwHhrYCYQxwaGLSIhdWs2hIVHiuEwvldYIHXjQZe+l
	t9yOVw4GsmT3cY33Ucguxh/tOHCOtyTOT4R9Q4epK6O7blryRVn1z/kUQV6Ae5clNdAQxhv2T5U
	1yai/rkDUGp4Zd//tSxnuFvl1T5xIp0nqocrdi2B6eu/bkWU=
X-Received: by 2002:a17:902:7586:b0:2b7:ade8:2407 with SMTP id d9443c01a7336-2b9a24c251fmr20368675ad.19.1777550011934;
        Thu, 30 Apr 2026 04:53:31 -0700 (PDT)
X-Received: by 2002:a17:902:7586:b0:2b7:ade8:2407 with SMTP id d9443c01a7336-2b9a24c251fmr20368345ad.19.1777550011519;
        Thu, 30 Apr 2026 04:53:31 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b988971138sm53834955ad.70.2026.04.30.04.53.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Apr 2026 04:53:31 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Thu, 30 Apr 2026 17:20:30 +0530
Subject: [PATCH 5/5] phy: qcom: qmp-usbc: Add qmp configuration for Shikra
MIME-Version: 1.0
Message-Id: <20260430-shikra-usb-v1-5-c9c108536fdc@oss.qualcomm.com>
References: <20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com>
In-Reply-To: <20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777549983; l=820;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=jQuNrTUKcaPoepDnjAwYPdTKMgqST49w7XDlCVKpo4E=;
 b=MFiwSPcZf5BJh3tr2zD+BrmLT3JEXABs2RnR09rePYO1HIaRBb8SKSbp/zbYg1ZuFm0DUtYZV
 lMvo5NtAzl2BNMnxdzznLq+zP6x8UnkcYfXHX6M7/vKfn5dNNxjQkfo
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-GUID: fa0XzaohX2MVJ1u_envP7HIPIIdVKCgY
X-Authority-Analysis: v=2.4 cv=Rrf16imK c=1 sm=1 tr=0 ts=69f342bc cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=K8LLhCEcKGHaonpVBxsA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: fa0XzaohX2MVJ1u_envP7HIPIIdVKCgY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDMwMDEyMCBTYWx0ZWRfXzj2gEMZXO7ep
 c2nl8N5c6jIhMOfPFYZ6CekJ76Z1ddP5Rl+brrN3JF0b75a2O7qvol56nHZ09mPCKJFAvafMh5J
 6tltDAyXryHAJ6QzXEvzT+Np489Tx+vcCvkPQCFfkG9sLc9HbzoQReIEir7Wqbaegx6NP1HgS56
 rQz/mCs+L02lNhYzjZiTzCFThfdL0snmlFqHyavJn+ggbU2Jp0VhdJPRwan63SHa6in+Dj5vdCV
 vIVmAKUs9oHz+Qf+OuHvPPaubN2izLtLaLIive6AE9bTwVXCPGvSpEODgHMR2RjgL0xDppvuccE
 X1FBGbN4BdbagKntOcR0qqSbXlamE3ejMfq46JX5JdwpuOYFaH9eA2EE3yhmXJh4FxUkSBlj7kn
 S1gdzkbehMvt7ZXpyK2Px8KNtPH/crh0kYjm3RUNJ+ARv65C+Hsb+wEwURX9epfLVGcSwq6y6Wu
 XPzSHCa2PgUB506pzog==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-30_04,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604300120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_045334_079342_AF90EA1B 
X-CRM114-Status: GOOD (  12.02  )
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

From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Provide PHY configuration for the USB QMP PHY for Shikra.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index c342479a3798..400dcebf8222 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -2019,6 +2019,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sdm660-qmp-usb3-phy",
 		.data = &sdm660_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,shikra-qmp-usb3-phy",
+		.data = &qcs615_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sm6115-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
