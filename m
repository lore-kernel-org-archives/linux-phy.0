Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5F4DCD5BAC
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 14:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WQ87OsszDYELasi/4KYEElqK8oRF9+pGSU7jpgEBb0I=; b=fEBw2BFr23hbg6
	kVi2EO4vvC8bZKwwZZTwB/xnWQgEDq0PQpvCsXtxqNvjEUF3iUKwV0bQBl4GHeGYMNgUAUzFEotL/
	aVZJpN7cMNN/WzsOuXVUZrzjSUR/w1XIVLNTN1luohfpW2CLPBgo/yUyskEBqQWi3aKojZ7r3s8cQ
	ekH9hwVaQKqywsp2v1lUlELk/LyM8ExEF1J0O70aYWADRxemAIlPlUElSFx/4lwiIm5pFFQGadFgf
	+8mYmeR2aGpKxT4F2msVxqgtRxu2NhfjjnEnLfU3c8k9qWncrMhZwBkhOkucqo4wG563oZgJ2NGj8
	1C8QZsvclSTk0O1H7/Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ42G-00000007zQi-2FTn;
	Thu, 21 May 2026 14:06:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ42D-00000007zP8-0oz0
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 14:06:03 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64L99jtf3343452
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 14:06:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Df604L3sWWkLbmZHp6DBBXkNhOeRLmVkLcoyM8ZbvGw=; b=LduzFP48KhPxhhYR
	p3BB5yZrTye7Vy8DUGII8U/n6F6ZI49/IzFy1MlPH3VAnd6SqoGU4Mgx4Rvct+T4
	CbpxewfWEE6DoRHitKS0dGQUqltDy0RgSYBDnhDkB5f9nGWjoIehdNQYJt4bJkMs
	DnoH643XDFF6pyI47aGlE8Ybkl0/Otp09o7+EFMeOhZk2QoQlmecCMlN3ySfImtP
	00KhFFp0jopp5+b0r8Vcm6jIFlKY5B9AUf6nmC4xmPcLUO2UvDedcGXFFsHqugwW
	/m0Qz9/Ek74NGONB8VcdgcNjMG0CsM1BhB3xuAn2zXaJ/xHVkO+AkuSs4hrh3G4a
	jw3Dog==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9wahsnud-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 14:06:00 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2babbeff9e4so66757685ad.0
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 07:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779372359; x=1779977159; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Df604L3sWWkLbmZHp6DBBXkNhOeRLmVkLcoyM8ZbvGw=;
        b=iSG80k1nnEcHJOan7PIubbw0bGLRVoqnRq5eawUuCmgKX9FNM0/NGSAY4XSr5SLxwh
         NfgbZ0/n6165OWKLJF/sH+lTXNFWmkdBtEPBZpAqk38y9euuXsUsO1HAzRhcIu3s0jKV
         RWn7VmZW4/e2O0SY/XS3SMRKk3eL4fn1lhwKJOy/lgMrlsdVps9vL6Hg2YkbdwcoSrlA
         nztp8fVPWrg07yE4hmH7S0alTPj4VNT/cDtZ4/cbCssVvtuIjfVt9bQ0UEElMtClHniN
         qI2euc4A2t3zaaTlt07k2I6Qze5B66X1j8lQTmIyjpB5x7Qet404DR9IngGqJmiDuoj6
         PIiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779372359; x=1779977159;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Df604L3sWWkLbmZHp6DBBXkNhOeRLmVkLcoyM8ZbvGw=;
        b=UangM2UV23xK0ZndC7FnXWQyOatRRKzwuG/pAMHGKFYoqX+ORvTHF5bg4lQr9coh3B
         Z73ZpoEs1IlFncD+ZGvwfc0FiVmfMe2ru7jCpHv7NHj3m4qwpet2Ky7mwTvmE35h+xLW
         lOFXRdoY8PAAKpYIRIZ9hjNX1t+WstztxQSZOt1rXF9IdG4p6u4HtOZZKkMFlWFC1/U5
         Z4Q07YHafbd71N3TtxAcYVQkqSuSblhHPPVh+IUX8D5Hhj5TN6RAVEiVdtIWmSqXnZ3n
         oncWHPRfZo75wXhajBGWvg93kafvHorzA1P7hq4rr0ptXDezif3fDggpdY3QGo79Dsl0
         nQTg==
X-Forwarded-Encrypted: i=1; AFNElJ/1lLo1AbGV3apb4/Eg39N8AiqpeXXjJX3IQ2qc3Tzg6/O85vINl/iSgVJvTamEMZIRLN4KSSXcFw4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6hoVeFZ2NOffFl/2dxL1GWe6ZKSBPiPiKoXTlkWwnST/Ip7Ce
	GX6nBoVdzCF3cmsJsVjBmhFcmdJn4tijYNvPaUFkB9Jd0Ik10F8ewk1bRbYkvaqPTRBKxuP/Xnj
	WDEEvjsePS7UVuZhE1+LXwRZMci+Mkb7drgetryrH0glz+ajj5CVI+ucjAKrZs68G2Psd
X-Gm-Gg: Acq92OEoc7eXGDdaT5Mqi5g3+f7FpNv7Wep5dvo/MJTb2/ftpjsP/UF3A/Y0Vas8LGW
	Z/gt2r+SQDB8wLXUNg/smCThccSxJUXn+dV1bN/nlTK/Li7zhMpj+MClMQdBV6ntItkpp2C9jLA
	FuvmFyTjMpZQNCrGHb40VlCNVBgcvWVij1kf1dMGhCcNP+aYnutQoI6jmhQzIAyWEkaYW7iUxHa
	vONpS/uLMTJqOorDG5Yr5rKoEJwoN+5WziOKWWU+UilDyf3XfgNjIQghRnVRaHpp4uF2o8qbjDH
	EMoOksf10hGMGvZv5yFPgFGUuyJVFcr4JAcufkfwPqMUxg2Efd431j5kXvKRdz2T6sygttfi4Pu
	EZ+74JV9ZlnCwnAsEdACCuPZcb5xAYoVgV3NDNbhhl4fceeLf4ZqjNHGn
X-Received: by 2002:a17:902:da90:b0:2b0:ac1e:9730 with SMTP id d9443c01a7336-2bea229c2eamr34881615ad.14.1779372358842;
        Thu, 21 May 2026 07:05:58 -0700 (PDT)
X-Received: by 2002:a17:902:da90:b0:2b0:ac1e:9730 with SMTP id d9443c01a7336-2bea229c2eamr34881125ad.14.1779372358334;
        Thu, 21 May 2026 07:05:58 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bea9287997sm13189765ad.24.2026.05.21.07.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 07:05:57 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 21 May 2026 19:35:32 +0530
Subject: [PATCH 4/4] phy: qcom: qmp-pcie: Add QMP PCIe PHY support for
 Eliza
MIME-Version: 1.0
Message-Id: <20260521-eliza-v1-4-97cdbe88389d@oss.qualcomm.com>
References: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
In-Reply-To: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779372332; l=9259;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=+PUY8C86/AHR1LegGnosiTSO6JwUI6Tj/AlsSyr8c6Y=;
 b=aPZW//YhYcCrr1QKlAyQ94od/pi2MNnLNMd56R5pNCVvien8dtSTHtTh4lmeJfVTbJj8M5VKX
 5Qz+70rrA57BBw0JzCRnvfYK+j2ob9siPbuUpAG1AeW6SvtDT2OIcWz
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDE0MSBTYWx0ZWRfX1tCTzg+wtL81
 jfAoi4kFYeWrjY1y2X8fn1YbshY8Igr/DzIzkLeu1gZa+SZ6Wt78Uqz0XGmmdUTME0Tf0T/ANh6
 zQkQUVFH7t+9hjRPv5pAaBvGDtE6h0bU8qVAo/eH0XVuy0I6Tc6wWx9XT76/U1rjVC/HAkTSRVb
 scypAdEmQfGLArEfOZMTgR4Ntq7e6RxU0HXLmEy0LcobXaJwgaRa8NGjDMHx6qO9Mhqf1+H3u5s
 8XuVHn7+Ei1z4D5dt/bo3zarKIX+RmR6I8BfoQcP2x46kEti4be5EJFBQ9q4NvcfNtgyvDfpkKN
 Z18bS7n09qRgF3nyDCwE0ZBxpydrV3GfOrEW35uW1k7HlMCxeLFdfXWVsV6I/h9njckLzhomv4U
 lMdSEmnUw57UBQ6PkhqupTR2SJcphgT8FKRCbm06eJpB9uY/Fm1dx/bp5Pvjt8n5BoN5yoPWzkG
 2XI74ppbxMXe954mvYQ==
X-Proofpoint-ORIG-GUID: -Y62MWbBO69ZhGjw520xxku9T2syNLBr
X-Proofpoint-GUID: -Y62MWbBO69ZhGjw520xxku9T2syNLBr
X-Authority-Analysis: v=2.4 cv=H8LrBeYi c=1 sm=1 tr=0 ts=6a0f1148 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=BvlutTLlwcMiLWs3sTYA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-21_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605210141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_070601_746325_E4D103F0 
X-CRM114-Status: GOOD (  13.19  )
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

Add QMP PCIe PHY support for the Eliza SoC. Introduce a new Gen3x1 PHY
configuration with Eliza-specific initialization tables, and reuse the
existing sm8550 Gen3x2 configuration for the Gen3x2 PHY instance.

Also add the missing QPHY_PCIE_V6_PCS_PCIE_INT_AUX_CLK_CONFIG1 register
definition to the PCIe V6 PCS header.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c        | 139 ++++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h |   1 +
 2 files changed, 140 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index fed2fc9bb311..113c5f8f1dbc 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -198,6 +198,112 @@ static const struct qmp_phy_init_tbl msm8998_pcie_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_SIGDET_CNTRL, 0x03),
 };
 
+static const struct qmp_phy_init_tbl eliza_qmp_gen3x1_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE1, 0x93),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE1, 0xB4),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE2_MODE1, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE0, 0xf8),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE0, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE0, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER1, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYS_CLK_CTRL, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CLK_SELECT, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORE_CLK_EN, 0xA0),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_ADDITIONAL_MISC_3, 0x0F),
+};
+
+static const struct qmp_phy_init_tbl eliza_qmp_gen3x1_pcie_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_REFGEN_REQ_CONFIG1, 0x05),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_G3S2_PRE_GAIN, 0x2E),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_RX_SIGDET_LVL, 0x77),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_RATE_SLEW_CNTRL1, 0x0B),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_PCS_TX_RX_CONFIG, 0x0C),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_EQ_CONFIG2, 0x0F),
+};
+
+static const struct qmp_phy_init_tbl eliza_qmp_gen3x1_pcie_misc_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG2, 0x1D),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xC1),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_INT_AUX_CLK_CONFIG1, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_RXEQEVAL_TIME, 0x27),
+};
+
+static const struct qmp_phy_init_tbl eliza_qmp_gen3x1_pcie_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x17),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RES_CODE_LANE_OFFSET_RX, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_1, 0x15),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_4, 0x3F),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_PI_QEC_CTRL, 0x02),
+};
+
+static const struct qmp_phy_init_tbl eliza_qmp_gen3x1_pcie_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_FO_GAIN, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_SO_GAIN, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7F),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_PI_CONTROLS, 0xF0),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_SB2_THRESH1, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_SB2_THRESH2, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_AUX_DATA_TCOARSE_TFINE, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_TX_ADAPT_POST_THRESH, 0xF0),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_VGA_CAL_CNTRL1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_VGA_CAL_CNTRL2, 0x0F),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_GM_CAL, 0x0D),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0E),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4A),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0A),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_IDAC_TSETTLE_LOW, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_SIDGET_ENABLES, 0x0C),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_00_LOW, 0x3F),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_00_HIGH, 0xBF),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_00_HIGH2, 0xBF),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_00_HIGH3, 0xB7),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_00_HIGH4, 0xEA),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_01_LOW, 0xDC),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_01_HIGH, 0x5C),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_01_HIGH2, 0x9C),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_01_HIGH3, 0x1A),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_01_HIGH4, 0x89),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_10_HIGH, 0x94),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_10_HIGH2, 0x5B),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_10_HIGH3, 0x1A),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_10_HIGH4, 0x89),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V6_RX_SIGDET_CAL_TRIM, 0x08),
+};
+
 static const struct qmp_phy_init_tbl ipq6018_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_PLL_SSC_PER1, 0x7d),
 	QMP_PHY_INIT_CFG(QSERDES_PLL_SSC_PER2, 0x01),
@@ -3532,6 +3638,33 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
 	.txrxz      = 0xd000,
 };
 
+static const struct qmp_phy_cfg eliza_qmp_gen3x1_pciephy_cfg = {
+	.lanes = 1,
+
+	.offsets		= &qmp_pcie_offsets_v5,
+
+	.tbls = {
+		.serdes			= eliza_qmp_gen3x1_pcie_serdes_tbl,
+		.serdes_num		= ARRAY_SIZE(eliza_qmp_gen3x1_pcie_serdes_tbl),
+		.tx			= eliza_qmp_gen3x1_pcie_tx_tbl,
+		.tx_num			= ARRAY_SIZE(eliza_qmp_gen3x1_pcie_tx_tbl),
+		.rx			= eliza_qmp_gen3x1_pcie_rx_tbl,
+		.rx_num			= ARRAY_SIZE(eliza_qmp_gen3x1_pcie_rx_tbl),
+		.pcs			= eliza_qmp_gen3x1_pcie_pcs_tbl,
+		.pcs_num		= ARRAY_SIZE(eliza_qmp_gen3x1_pcie_pcs_tbl),
+		.pcs_misc		= eliza_qmp_gen3x1_pcie_misc_pcs_tbl,
+		.pcs_misc_num		= ARRAY_SIZE(eliza_qmp_gen3x1_pcie_misc_pcs_tbl),
+	},
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v6_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+};
+
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -5399,6 +5532,12 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_pcie_of_match_table[] = {
 	{
+		.compatible = "qcom,eliza-qmp-gen3x1-pcie-phy",
+		.data = &eliza_qmp_gen3x1_pciephy_cfg,
+	}, {
+		.compatible = "qcom,eliza-qmp-gen3x2-pcie-phy",
+		.data = &sm8550_qmp_gen3x2_pciephy_cfg,
+	}, {
 		.compatible = "qcom,glymur-qmp-gen4x2-pcie-phy",
 		.data = &glymur_qmp_gen4x2_pciephy_cfg,
 	}, {
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
index 45397cb3c0c6..17a0f9d18acf 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
@@ -12,6 +12,7 @@
 #define QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG2	0x0c
 #define QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG4	0x14
 #define QPHY_PCIE_V6_PCS_PCIE_ENDPOINT_REFCLK_DRIVE	0x20
+#define QPHY_PCIE_V6_PCS_PCIE_INT_AUX_CLK_CONFIG1	0x54
 #define QPHY_PCIE_V6_PCS_PCIE_OSC_DTCT_ACTIONS		0x94
 
 #define QPHY_PCIE_V6_PCS_LANE1_INSIG_SW_CTRL2		0x024

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
