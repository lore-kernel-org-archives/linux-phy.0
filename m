Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64E04C44532
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 10:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xaf4CLnffkxDLCDr/mKW8v44Z5kmXSHvHgjAWYc97MI=; b=HJx8jmHDeObeEm
	uS1EcrjsQ/KD2miknipveUXJcuhxLPykXJrY2TE4EO+q/gFxkeuXRhrUL2E+jFjIQyxJR7HZG4tlA
	/WYtWN9BzcXSkeggL9cFVAwUzfjchQejO86oXTBh9qr84KPW08xQn0UJULxzJ55nybBjdfTFnGjqg
	bz5c49jCcWVIIFz7jdtm3MPQYnkQvUF0FOR68ZZ8up/tDlrUzZnSlJx/MG2fBQyyWO4pPOPl+Y+2K
	s7v+LBzNXqoBp9r+xJmGmpGXgDCuNfyers6pCtv8HnywGdthCSs+QafTmTy4QvJvB6bkm+XZrxzKa
	OyQPsr9VY5lQpJRAmlqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmUHu-0000000BZgx-0DSe;
	Wed, 22 Jul 2026 10:34:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmUHr-0000000BZfn-0wH8
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 10:34:52 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66M8xZYu269610
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 10:34:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=7NkBADy1Pg1SibTrDJ5CYU
	lOoTcfGgNE9kkzqQXswKs=; b=TPnx0s2exYEUQZRXAvqw51ejLhozw2pEYuY0HI
	RHiboITBZTDQ8F4ZkUNGFE6LfceiPpdsChci2am5BgTWl5WhWcu7IXSyxazi4Ezp
	gQrPPuMGMXX1JBasiMAN5dBONfLyFD9r+sAQCy770gwRDFmlwAEXzRTJOOH8rYIo
	63mioUMTMqT3UTDLumJLvx0pXoUHSJUitiJC00Je1SaVzx8kwrGKWTQmlcvKcuAU
	7XDmMiFto77kt1PHnLkbfuuCfUbZvOurWYI3evmDbBqBj2Svzbw0FqkhMAF3l+zw
	HhsdxVkynr8JdamqMImvgbm5obhrQduo40v06eaUskAo9tSg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjd6abj5d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 10:34:49 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51a8db414c7so215863291cf.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 03:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784716489; x=1785321289; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=7NkBADy1Pg1SibTrDJ5CYUlOoTcfGgNE9kkzqQXswKs=;
        b=c0GuHSSA803+mIUj8bnYIgMI671084pDpGrS9oODvLwxFaf7LyyB515yiwjbY5QXNG
         2cRzgCMcFKEiLgkSEFczUx1+nh0Jd8mnOjP5yU+THQpRKkAfct30TeS5TORdS2pCq6T9
         Wg3aHfH/4R4ZcbDvjOxcu7GJ7y/Ponh9yrrRVfMD9HLRmBgrR7oRGMYJ2t62Bp+vaI8K
         wcasufFllNIwa4OhUekvopHvUKoa/CWTpsDxgP4dL2kAxLKZl5l6NTkvhw5VivHBxiaB
         9ffwwApv2+IvjggMpVxECeQDyr3WdsdhfJovhcVyCii299dr1jbMb62CCDCOmBwcxu/p
         dkrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784716489; x=1785321289;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=7NkBADy1Pg1SibTrDJ5CYUlOoTcfGgNE9kkzqQXswKs=;
        b=KLEWoC2Eme1NvntgrCGh9h2x3qKD0phuIVqTuKGf8OvymcFL02PcOLejSqo14CTbCh
         A3O2Ho4cVB0AJ/v0/zsLVuDQ1K9IUD4FtZSVlm4Ru4jxt0CbvO3zr33bDxrEC2kRiN4A
         2UOsMcjFABksVcBLMuAADi1Om95kuJEm/NO9j2dif5tozpBbPT3LHlb5osDEfOHJKc1H
         3yJs0dQlsrjYf9KUv4LwyAFPwogax1D70UgnaY5lvf++xDpSDZGUc9TJlZeE2XLzEIJJ
         ipZ4ms0q7tSy3GsmQmFOYchuvStuT2ZZ07nhGZemqtF6lgwVbou9fnWRN6EUEeoAN0gG
         s4mA==
X-Forwarded-Encrypted: i=1; AHgh+RqVIysMVfPLPbbua8EqmFS5oCXgcmssMoJhp9mSnr9YufxTBymLq/TWvOD8vD9xDNY1obj21+UZlNU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKyo7i8GWn6vvLyyR+7J6unAHDDVAD3DT4X8fPlFejJzv2Sw0L
	aaz10FBjHqdthIOwRHrhnp042aRZDer7EjTNB1SN5jnbevVDBhIzFu8BosyjtEZ+UjN9qP7CFh2
	Tm19jubYzskxL52sokly10URyRx/pPXRaqQFIlQwboLBZhfs3qt5Faoziq0+dey2S0Dw/kGmwHi
	rP
X-Gm-Gg: AR+sD12Of6o28xYh9wJUJsr6NKy7mmAmwLyxShjY3AGl9qvoYVTQzlrsaQC7NdiHXTt
	VyU4moihV63uVtW6R7hBOl11hI8nfA34uumPYe2wB/AiYFeq3rhWPDebKkvvFEAT2rSuSwKt3aG
	qelTPInE+kc0601/KPuXBNdtq2yFsf1/BUJLM0OWPo90kOIG3q7pT7PnYaSEqu/izMvT3FOafvy
	PGJAGckuFecbj8nbCRvz0EkVeYJwAMwARnVEfOqLKpJYUhv+AcpSex+PhnOfBC6/fLxHnHwZkRG
	OGJeKk3W1gNu1SLfSUgdmLPiE0AWazNCDQI4wiwp8DbVi3m0oZ9MIh6LbBzHopdn7z9L/B8WMSq
	sQx010+ujTQ/9Y9l0tOSuaKjixJ9eA0rDmAx6/u82lwsUP/3nRE7Xp1nAqYjsjdY0l3kJiMphO1
	vaGHa50Me7fIkLuw==
X-Received: by 2002:a05:622a:11c8:b0:51a:8eca:78e3 with SMTP id d75a77b69052e-5213c8e2f60mr213432051cf.5.1784716489088;
        Wed, 22 Jul 2026 03:34:49 -0700 (PDT)
X-Received: by 2002:a05:622a:11c8:b0:51a:8eca:78e3 with SMTP id d75a77b69052e-5213c8e2f60mr213431791cf.5.1784716488535;
        Wed, 22 Jul 2026 03:34:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2a9e44b97sm399078e87.61.2026.07.22.03.34.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 03:34:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 13:34:42 +0300
Subject: [PATCH] phy: qcom-qmp: qserdes-com: drop duplicate v8 DP headers
MIME-Version: 1.0
Message-Id: <20260722-qmp-drop-duplicate-v8-v1-1-795eb7de0322@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAMGcYGoC/yXMwQ6CMBCE4Vche2YTLKCWVzEeShl0jUJpgZAQ3
 p2Cl0m+w/wrBXhBoCpZyWOWIH0XcUkTsm/TvcDSRJPK1DW7KcXDz3Hj+ziT+4o1I3i+c6kLnZe
 1hUZL8es8WlnO7uP5d5jqD+x4xGjbdtft24Z5AAAA
X-Change-ID: 20260722-qmp-drop-duplicate-v8-594935bce9ef
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3435;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=+JWVdgnRe/ckTZ65I6LekbXjhXASVlJvxXNCuHNml9M=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqYJzGpc8hB1AOb5S+NlGJzUF7VPuFTHID5+rev
 DyJnAQ158GJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCamCcxgAKCRCLPIo+Aiko
 1Xr5CACQ4O+tuHwoQH+YKjU8bulDtR2x1LwOIO3dvfm6W0xyJ8NaAhCqB70NHdGLsUIztXTYFle
 fs0q6syPR+BFYHj3OuPcTZppfLRYVd0cUvrLJRGeRIqS0u5Ng/eBGFU0NIi4yoVeVmHFVrjSb1n
 u3ry5sC+UALMdl4p8EFjKNuVLMSwXdUBAw8vFe15uIs3fTl3aTm13t9UXBvwyAZfwrxLRqv46Gp
 lpaGH72F/MRUYOj7+5fuhayHJCj8u0tz4x33wnR+4sCSVlKPQvKwC8UpEahXqB6couEMT1PN3p3
 muMHPsSSPtMHFydKUY16jklBnsjclYPdmXPQP/Gs1pEyNfL8
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDEwMSBTYWx0ZWRfX0y+Q09x+xy7D
 53DZUphmOWl7CBtMf//nJbIGuT4R/1P0MbKigsfhcOWL1j8RIgz3KmPx+gL/shhwGprXI7NKigE
 lbWJQYdKVc1qTM6SxqTdwOdAC/QiVZ+QQmR4HuqgGccnxieiLYC59gA/PKiFR3bbKnyRNSOZWYU
 XLuA9fKEelJRwRasuziAO8isRWc8pwJwWyk8c0sJ0rBSS/lcbiQVSxVQpuIm60HB3F8gqhluCHA
 peOPuoz2dsqFNSsT/9TsxhfCAwPEh7aTNqBRZcsdComwmutywN1NqfztJmPH08G5IOZEzFXydZ7
 hgsRuXhFRg+ett3qLL+RPWtnfVqlokQqQlxyo4eVk7z10lqGD4bpO6b4fmVzSpOw+mdA+X5JlPC
 R1vpSzw6QCYnHu9ELp6BEJm2SyhQKd5e5Mel6J2kgAHYKdv7NyUm1mlxqMqDHEYi5oVW8zDW6Zi
 WjOEA1y3ZGr8Eanfwyw==
X-Proofpoint-GUID: 17EKp5ZvmRGBT2WPBeCSYO8mO6MqO28w
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDEwMSBTYWx0ZWRfX+n6p+MLw7jcc
 PRLLJFrxC+q+Pi6s1vdOyjGdn9bQbhExlYT9BnvjHuI+UP2vSqJf2XK7VPNwYUWpIHnNGpwMPAW
 rHpMUjUAvqONFl4nknMG2rqDStHM+EY=
X-Authority-Analysis: v=2.4 cv=HvJG3UTS c=1 sm=1 tr=0 ts=6a609cc9 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=swegQpMVOkZOyYi_guoA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: 17EKp5ZvmRGBT2WPBeCSYO8mO6MqO28w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_03,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 impostorscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_033451_390479_A16E8383 
X-CRM114-Status: GOOD (  10.31  )
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

Commit 212cdedcac11 ("phy: qcom-qmp: qserdes-com: Add v8
DP-specific qserdes register offsets") and commit d10736db98d2 ("phy:
qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
added identical header files for DisplayPort-specific registers on V8
PHYs, having different names. Get rid of one of the copies, reverting
commit d10736db98d2 ("phy: qualcomm: qmp-combo: Add DP offsets and
settings for Glymur platforms")

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  | 52 ----------------------
 1 file changed, 52 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
deleted file mode 100644
index 2bef1eecdc56..000000000000
--- a/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
+++ /dev/null
@@ -1,52 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Copyright (C) 2025 Linaro Ltd.
- */
-
-#ifndef QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
-#define QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
-
-/* Only for DP QMP V8 PHY - QSERDES COM registers */
-#define DP_QSERDES_V8_COM_HSCLK_SEL_1			0x03c
-#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x058
-#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x05c
-#define DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0		0x060
-#define DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0		0x064
-#define DP_QSERDES_V8_COM_CP_CTRL_MODE0			0x070
-#define DP_QSERDES_V8_COM_PLL_RCTRL_MODE0		0x074
-#define DP_QSERDES_V8_COM_PLL_CCTRL_MODE0		0x078
-#define DP_QSERDES_V8_COM_CORECLK_DIV_MODE0		0x07c
-#define DP_QSERDES_V8_COM_LOCK_CMP1_MODE0		0x080
-#define DP_QSERDES_V8_COM_LOCK_CMP2_MODE0		0x084
-#define DP_QSERDES_V8_COM_DEC_START_MODE0		0x088
-#define DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
-#define DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
-#define DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
-#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0		0x0a0
-#define DP_QSERDES_V8_COM_VCO_TUNE1_MODE0		0x0a8
-#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0		0x0a4
-#define DP_QSERDES_V8_COM_VCO_TUNE2_MODE0		0x0ac
-#define DP_QSERDES_V8_COM_BG_TIMER			0x0bc
-#define DP_QSERDES_V8_COM_SSC_EN_CENTER			0x0c0
-#define DP_QSERDES_V8_COM_SSC_ADJ_PER1			0x0c4
-#define DP_QSERDES_V8_COM_SSC_PER1			0x0cc
-#define DP_QSERDES_V8_COM_SSC_PER2			0x0d0
-#define DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
-#define DP_QSERDES_V8_COM_CLK_ENABLE1			0x0e0
-#define DP_QSERDES_V8_COM_SYS_CLK_CTRL			0x0e4
-#define DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
-#define DP_QSERDES_V8_COM_PLL_IVCO			0x0f4
-#define DP_QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
-#define DP_QSERDES_V8_COM_RESETSM_CNTRL			0x118
-#define DP_QSERDES_V8_COM_LOCK_CMP_EN			0x120
-#define DP_QSERDES_V8_COM_VCO_TUNE_CTRL			0x13c
-#define DP_QSERDES_V8_COM_VCO_TUNE_MAP			0x140
-#define DP_QSERDES_V8_COM_CLK_SELECT			0x164
-#define DP_QSERDES_V8_COM_CORE_CLK_EN			0x170
-#define DP_QSERDES_V8_COM_CMN_CONFIG_1			0x174
-#define DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL		0x180
-#define DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1		0x2f4
-#define DP_QSERDES_V8_COM_CMN_STATUS			0x314
-#define DP_QSERDES_V8_COM_C_READY_STATUS		0x33c
-
-#endif

---
base-commit: b9810cd75b9fb56a3425d391cba3f608502bd474
change-id: 20260722-qmp-drop-duplicate-v8-594935bce9ef

Best regards,
--  
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
