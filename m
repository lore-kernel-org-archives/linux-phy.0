Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 109B9107BCF9
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 05:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDDCpsT1UpJ4GAEGT1mTuDAWPote3NsEFtDtbtj4AsA=; b=lFJBeIR8rCJ+wD
	RcNEeMCgOUAecOs3BXbpI1EUxuqSOu0HoX8pgiZ9zpng7gWJV3Z1Vg6DhfeXCr5hJfpSthADck3gq
	vOPGzEKWCrTYKyLz3oGaiM8DMQ6kSVrxo7wlJCK4rNxScH4B+I1t11rUb6a87dJ9cQyeAf+PaO3Si
	uuxkZYoSQ2Fujcy8Qaf2lZOgc1nSPV/wB9wiUOJB4ibAXdtikdf7rse4JFybYZq4/ZmH5k/j4hcyh
	JC1wqhJgLBbNtlJG1QrEjz8I5yenPsU8aFMHPOcfM2fF1nvztdwgiPY4/XJ3Uh+hhf2TKRua84ihd
	4z/qjb375Pe2evAq0v4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HKp-00000001W8Q-2bJQ;
	Sat, 14 Mar 2026 05:14:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HKg-00000001VzW-2Eym
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 05:14:45 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E4dnjD4128463
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:14:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=i0uq0SR6mwb
	bqC++gFl8h/nAq2mYNPEsdoUtMq3rJyM=; b=HHXIKG+IiE/lNxCNcGudSlwpH0q
	9HZRVJYn4mhEz58WvSBpE1yKxZM61kwu61EFYDDNP7MjLr9W8jB9QLlx8HP6ma7J
	0x963Nl9gWzQr4nUO5HvpEzpYbZFmYMIi7BZFlS1XFsk4JavwtMe1Dn4/iXO1JC0
	V5ZIpm+Fw9p+XoGepMjRzFFmknBvJ4Xj+pfnryIQn9zeYZYFbIGl682HXGGO82xf
	iQVQRnDwMWSU0zmtkx/3iAstYTSdOxfVwNjOtgaFeJWdCdaWO90ZS+eDy+erNGF6
	0ILn2ZMuqD+slFVFwssMCm5rVu9ND/R77TYuLPuLn9pggCBhiM8kwEMAGIg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw0udg1t7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:14:37 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2bea3b0d83bso44011743eec.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Mar 2026 22:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773465277; x=1774070077; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i0uq0SR6mwbbqC++gFl8h/nAq2mYNPEsdoUtMq3rJyM=;
        b=OAPE97mIUTgwy6Eh6nN9pq4S+kBK0OC3CmdQLu38CkSPuMc+P3TJQSHlQaQczkVf/9
         RpH70uxmzU8H0g8a++v2Y5eRsuspaFs4MQ6Db9Ixa5p+ZAczfun6S/+aQozn7d7JGjb6
         MmzEdD0rNVAx51T65/5OMASVz22mQCb9aPmVezpAbOVkEx+sMOb+wBpPA9CKxX+J2KLW
         ATM+TWNBznvjD+0AsLi07en+RNfyzb8e8Ay9F6+W8a2KSyVjs6JOi1T+Xk/4wxuRU4aj
         IKMfVyyS1HfARr3NCOijKULzLut6YVv5VR7wxZ3+coLLGyG/eJ1QVeHH31c0VpwLexuH
         b09Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773465277; x=1774070077;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i0uq0SR6mwbbqC++gFl8h/nAq2mYNPEsdoUtMq3rJyM=;
        b=eMpz3ivS7CekCFEaZcYe2z4DnVrATA0e3Ip+8YoZiXZ9NpR8guqrL0KRmKGt4dDAzU
         poyQO3AXhPp1LrsWuxHkYMPE/eBQHKI/cTp3IsJXSLiGfwBIRXTOdxxQaimJ0VyUPGxw
         QLH3EIbRIiYBIRMeshcBVNIUqJlNnT8AFtDfFuAVwbrmv484B1cyZCQqAFHEcv9/Rnol
         mze1WYCOJJlTZq6GOya3UFC9GzNGKfnDHOUfG63USVVCeDEWgDy00fjxBQb7XqOOqjRs
         HJkYrwvXjPW+XpuYEJ4TuuMjBG4CbadhMK3eZlSp1sRlaqVCXaNuxKj15lG64cMKIwCi
         fceA==
X-Forwarded-Encrypted: i=1; AJvYcCWxcb9gld/SjYl2+kUT+yhG1NDGEj2tvi0xyfYMA8YTH0aP97cmZoEjB/zNx6i+QtIudYVc1PtSxhA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxBowIIQfusrQzYCBZA0taA9iSyDGrSH/ZrpCblNjkr5wrdMbN3
	TKKoEWARw4ssmp+q+nKON6Ylt2/WwSVaqe9nrSwtLU/pC2YPyTJGJVuK5JZ3FKytqx75/49f2Lc
	uojxWWRBdf8a5kuBiFXD/a/F9ZWfX3DO+F4Nx/rqw58SQUK9Qfpo6qKifpz7A+S66isd3
X-Gm-Gg: ATEYQzx+6mdLdQdV5QOoqhRQcZCI7Ue14rdHZTtuns+UxjsB5P2vlXtUecC5OMjKt+v
	6+10iWc6VnJcJR4R30vCF78Qvl+2c1jXfIC2ny3ELBVLGiO3XSsyL1nhOW99pg1Rnva4hh57DO+
	rMvP7s7rOB1zKrYIFeSVh/vNYjuHUHfMjDvIzp3GgG1D8bPbgT8lADwxnBOQXODUMcuczWkuCtK
	U0aKRQ+icxR5kJeNaeebxnlhL0BjnPoLfMn134XNZycy8wPgJp5YCiBxDThdDtpW3qaK/1+MwEt
	a1ABkg2ext7BDvh1JbpRddxOrs3HogVXeLSC6gF8HSU0j2xGMCTHPMyaMXZ0Sh9ozZi5V8ZuWo/
	2092q3xG0a2IXxRZxo0MbxbIeiIK7Iu6qT4U8tJuBg9r/umG9bT9t3fmBym0LEVke0HVIwnAd/T
	qLpSbqrw==
X-Received: by 2002:a05:7301:1f0e:b0:2ba:6458:b325 with SMTP id 5a478bee46e88-2bea5585cb6mr2947996eec.23.1773465277233;
        Fri, 13 Mar 2026 22:14:37 -0700 (PDT)
X-Received: by 2002:a05:7301:1f0e:b0:2ba:6458:b325 with SMTP id 5a478bee46e88-2bea5585cb6mr2947979eec.23.1773465276646;
        Fri, 13 Mar 2026 22:14:36 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c098cbd4dasm1784045eec.0.2026.03.13.22.14.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 22:14:36 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH 5/6] phy: qcom-qmp: Drop unused register headers
Date: Sat, 14 Mar 2026 13:13:24 +0800
Message-ID: <20260314051325.198137-6-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
References: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=BJ2+bVQG c=1 sm=1 tr=0 ts=69b4eebd cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=zYeDregsQ1GP4i_2LSEA:9 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: nadvVmOmDG9kTU-YYiUxBpRTA0xmhAoe
X-Proofpoint-ORIG-GUID: nadvVmOmDG9kTU-YYiUxBpRTA0xmhAoe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDAzOCBTYWx0ZWRfX4+KZ2zx68N/G
 Wc9QiU8dN8G7M9dGgcR05jpHLP6cCAhPT3VfGq0pBMHaKqRs7Ti5pS3HbGsqA+95fABYX+TDxG5
 cfqNMY58lZ0/Tv/DdqDAJGG3YaWrRAxT3I7LSw163p6INQu4M3b1yI/9kuxRVGYVKWj9uC0ouTS
 9gzBPf7rf2TAF5Pr8go3FBnKlc5WuqRTBJPQbWI0KU1MFc0OJ7kwr91ODK+fJzj/slO51uPAgtW
 fmOnm/YW7ubix+sDORNpiVYnk2PXhS+9Z3dWg/xsZYauoSKMNbRoiTTggY4YBLneoMg38EUTTzb
 /ALeJmAp5//ulqGRH1YKlJWvCSnDo1Qq4v/g9TfMi3NvkFOYJgQZqIMXiS7L6j9c3fPOw5COsWw
 G4+DkZiNKfpWu70AfrPGRVqpkxghnqPK+RDtwNgDRxr4p+UTp4xkQYxoTpaG5MywG19o1iGtLlQ
 +s+U4/poiLdZ5DGOhpQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_01,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 lowpriorityscore=0 adultscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_221443_015637_A4A7A2D5 
X-CRM114-Status: GOOD (  10.81  )
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

None of qcom-qmp drivers uses header qserdes-com or qserdes-txrx-v2.
Drop them.

Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com.h   | 140 ------------------
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h   |  68 ---------
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   2 -
 3 files changed, 210 deletions(-)
 delete mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
 delete mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
deleted file mode 100644
index 7fa5363feeb9..000000000000
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
+++ /dev/null
@@ -1,140 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Copyright (c) 2017, The Linux Foundation. All rights reserved.
- */
-
-#ifndef QCOM_PHY_QMP_QSERDES_COM_H_
-#define QCOM_PHY_QMP_QSERDES_COM_H_
-
-/* Only for QMP V2 PHY - QSERDES COM registers */
-#define QSERDES_COM_ATB_SEL1				0x000
-#define QSERDES_COM_ATB_SEL2				0x004
-#define QSERDES_COM_FREQ_UPDATE				0x008
-#define QSERDES_COM_BG_TIMER				0x00c
-#define QSERDES_COM_SSC_EN_CENTER			0x010
-#define QSERDES_COM_SSC_ADJ_PER1			0x014
-#define QSERDES_COM_SSC_ADJ_PER2			0x018
-#define QSERDES_COM_SSC_PER1				0x01c
-#define QSERDES_COM_SSC_PER2				0x020
-#define QSERDES_COM_SSC_STEP_SIZE1			0x024
-#define QSERDES_COM_SSC_STEP_SIZE2			0x028
-#define QSERDES_COM_POST_DIV				0x02c
-#define QSERDES_COM_POST_DIV_MUX			0x030
-#define QSERDES_COM_BIAS_EN_CLKBUFLR_EN			0x034
-#define QSERDES_COM_CLK_ENABLE1				0x038
-#define QSERDES_COM_SYS_CLK_CTRL			0x03c
-#define QSERDES_COM_SYSCLK_BUF_ENABLE			0x040
-#define QSERDES_COM_PLL_EN				0x044
-#define QSERDES_COM_PLL_IVCO				0x048
-#define QSERDES_COM_LOCK_CMP1_MODE0			0x04c
-#define QSERDES_COM_LOCK_CMP2_MODE0			0x050
-#define QSERDES_COM_LOCK_CMP3_MODE0			0x054
-#define QSERDES_COM_LOCK_CMP1_MODE1			0x058
-#define QSERDES_COM_LOCK_CMP2_MODE1			0x05c
-#define QSERDES_COM_LOCK_CMP3_MODE1			0x060
-#define QSERDES_COM_LOCK_CMP1_MODE2			0x064
-#define QSERDES_COM_CMN_RSVD0				0x064
-#define QSERDES_COM_LOCK_CMP2_MODE2			0x068
-#define QSERDES_COM_EP_CLOCK_DETECT_CTRL		0x068
-#define QSERDES_COM_LOCK_CMP3_MODE2			0x06c
-#define QSERDES_COM_SYSCLK_DET_COMP_STATUS		0x06c
-#define QSERDES_COM_BG_TRIM				0x070
-#define QSERDES_COM_CLK_EP_DIV				0x074
-#define QSERDES_COM_CP_CTRL_MODE0			0x078
-#define QSERDES_COM_CP_CTRL_MODE1			0x07c
-#define QSERDES_COM_CP_CTRL_MODE2			0x080
-#define QSERDES_COM_CMN_RSVD1				0x080
-#define QSERDES_COM_PLL_RCTRL_MODE0			0x084
-#define QSERDES_COM_PLL_RCTRL_MODE1			0x088
-#define QSERDES_COM_PLL_RCTRL_MODE2			0x08c
-#define QSERDES_COM_CMN_RSVD2				0x08c
-#define QSERDES_COM_PLL_CCTRL_MODE0			0x090
-#define QSERDES_COM_PLL_CCTRL_MODE1			0x094
-#define QSERDES_COM_PLL_CCTRL_MODE2			0x098
-#define QSERDES_COM_CMN_RSVD3				0x098
-#define QSERDES_COM_PLL_CNTRL				0x09c
-#define QSERDES_COM_PHASE_SEL_CTRL			0x0a0
-#define QSERDES_COM_PHASE_SEL_DC			0x0a4
-#define QSERDES_COM_CORE_CLK_IN_SYNC_SEL		0x0a8
-#define QSERDES_COM_BIAS_EN_CTRL_BY_PSM			0x0a8
-#define QSERDES_COM_SYSCLK_EN_SEL			0x0ac
-#define QSERDES_COM_CML_SYSCLK_SEL			0x0b0
-#define QSERDES_COM_RESETSM_CNTRL			0x0b4
-#define QSERDES_COM_RESETSM_CNTRL2			0x0b8
-#define QSERDES_COM_RESTRIM_CTRL			0x0bc
-#define QSERDES_COM_RESTRIM_CTRL2			0x0c0
-#define QSERDES_COM_RESCODE_DIV_NUM			0x0c4
-#define QSERDES_COM_LOCK_CMP_EN				0x0c8
-#define QSERDES_COM_LOCK_CMP_CFG			0x0cc
-#define QSERDES_COM_DEC_START_MODE0			0x0d0
-#define QSERDES_COM_DEC_START_MODE1			0x0d4
-#define QSERDES_COM_DEC_START_MODE2			0x0d8
-#define QSERDES_COM_VCOCAL_DEADMAN_CTRL			0x0d8
-#define QSERDES_COM_DIV_FRAC_START1_MODE0		0x0dc
-#define QSERDES_COM_DIV_FRAC_START2_MODE0		0x0e0
-#define QSERDES_COM_DIV_FRAC_START3_MODE0		0x0e4
-#define QSERDES_COM_DIV_FRAC_START1_MODE1		0x0e8
-#define QSERDES_COM_DIV_FRAC_START2_MODE1		0x0ec
-#define QSERDES_COM_DIV_FRAC_START3_MODE1		0x0f0
-#define QSERDES_COM_DIV_FRAC_START1_MODE2		0x0f4
-#define QSERDES_COM_VCO_TUNE_MINVAL1			0x0f4
-#define QSERDES_COM_DIV_FRAC_START2_MODE2		0x0f8
-#define QSERDES_COM_VCO_TUNE_MINVAL2			0x0f8
-#define QSERDES_COM_DIV_FRAC_START3_MODE2		0x0fc
-#define QSERDES_COM_CMN_RSVD4				0x0fc
-#define QSERDES_COM_INTEGLOOP_INITVAL			0x100
-#define QSERDES_COM_INTEGLOOP_EN			0x104
-#define QSERDES_COM_INTEGLOOP_GAIN0_MODE0		0x108
-#define QSERDES_COM_INTEGLOOP_GAIN1_MODE0		0x10c
-#define QSERDES_COM_INTEGLOOP_GAIN0_MODE1		0x110
-#define QSERDES_COM_INTEGLOOP_GAIN1_MODE1		0x114
-#define QSERDES_COM_INTEGLOOP_GAIN0_MODE2		0x118
-#define QSERDES_COM_VCO_TUNE_MAXVAL1			0x118
-#define QSERDES_COM_INTEGLOOP_GAIN1_MODE2		0x11c
-#define QSERDES_COM_VCO_TUNE_MAXVAL2			0x11c
-#define QSERDES_COM_RES_TRIM_CONTROL2			0x120
-#define QSERDES_COM_VCO_TUNE_CTRL			0x124
-#define QSERDES_COM_VCO_TUNE_MAP			0x128
-#define QSERDES_COM_VCO_TUNE1_MODE0			0x12c
-#define QSERDES_COM_VCO_TUNE2_MODE0			0x130
-#define QSERDES_COM_VCO_TUNE1_MODE1			0x134
-#define QSERDES_COM_VCO_TUNE2_MODE1			0x138
-#define QSERDES_COM_VCO_TUNE1_MODE2			0x13c
-#define QSERDES_COM_VCO_TUNE_INITVAL1			0x13c
-#define QSERDES_COM_VCO_TUNE2_MODE2			0x140
-#define QSERDES_COM_VCO_TUNE_INITVAL2			0x140
-#define QSERDES_COM_VCO_TUNE_TIMER1			0x144
-#define QSERDES_COM_VCO_TUNE_TIMER2			0x148
-#define QSERDES_COM_SAR					0x14c
-#define QSERDES_COM_SAR_CLK				0x150
-#define QSERDES_COM_SAR_CODE_OUT_STATUS			0x154
-#define QSERDES_COM_SAR_CODE_READY_STATUS		0x158
-#define QSERDES_COM_CMN_STATUS				0x15c
-#define QSERDES_COM_RESET_SM_STATUS			0x160
-#define QSERDES_COM_RESTRIM_CODE_STATUS			0x164
-#define QSERDES_COM_PLLCAL_CODE1_STATUS			0x168
-#define QSERDES_COM_PLLCAL_CODE2_STATUS			0x16c
-#define QSERDES_COM_BG_CTRL				0x170
-#define QSERDES_COM_CLK_SELECT				0x174
-#define QSERDES_COM_HSCLK_SEL				0x178
-#define QSERDES_COM_INTEGLOOP_BINCODE_STATUS		0x17c
-#define QSERDES_COM_PLL_ANALOG				0x180
-#define QSERDES_COM_CORECLK_DIV				0x184
-#define QSERDES_COM_SW_RESET				0x188
-#define QSERDES_COM_CORE_CLK_EN				0x18c
-#define QSERDES_COM_C_READY_STATUS			0x190
-#define QSERDES_COM_CMN_CONFIG				0x194
-#define QSERDES_COM_CMN_RATE_OVERRIDE			0x198
-#define QSERDES_COM_SVS_MODE_CLK_SEL			0x19c
-#define QSERDES_COM_DEBUG_BUS0				0x1a0
-#define QSERDES_COM_DEBUG_BUS1				0x1a4
-#define QSERDES_COM_DEBUG_BUS2				0x1a8
-#define QSERDES_COM_DEBUG_BUS3				0x1ac
-#define QSERDES_COM_DEBUG_BUS_SEL			0x1b0
-#define QSERDES_COM_CMN_MISC1				0x1b4
-#define QSERDES_COM_CMN_MISC2				0x1b8
-#define QSERDES_COM_CORECLK_DIV_MODE1			0x1bc
-#define QSERDES_COM_CORECLK_DIV_MODE2			0x1c0
-#define QSERDES_COM_CMN_RSVD5				0x1c4
-
-#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h
deleted file mode 100644
index 34919720b7bc..000000000000
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h
+++ /dev/null
@@ -1,68 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Copyright (c) 2017, The Linux Foundation. All rights reserved.
- */
-
-#ifndef QCOM_PHY_QMP_QSERDES_TXRX_V2_H_
-#define QCOM_PHY_QMP_QSERDES_TXRX_V2_H_
-
-/* Only for QMP V2 PHY - TX registers */
-#define QSERDES_V2_TX_BIST_MODE_LANENO			0x000
-#define QSERDES_V2_TX_CLKBUF_ENABLE			0x008
-#define QSERDES_V2_TX_TX_EMP_POST1_LVL			0x00c
-#define QSERDES_V2_TX_TX_DRV_LVL			0x01c
-#define QSERDES_V2_TX_RESET_TSYNC_EN			0x024
-#define QSERDES_V2_TX_PRE_STALL_LDO_BOOST_EN		0x028
-#define QSERDES_V2_TX_TX_BAND				0x02c
-#define QSERDES_V2_TX_SLEW_CNTL				0x030
-#define QSERDES_V2_TX_INTERFACE_SELECT			0x034
-#define QSERDES_V2_TX_RES_CODE_LANE_TX			0x03c
-#define QSERDES_V2_TX_RES_CODE_LANE_RX			0x040
-#define QSERDES_V2_TX_RES_CODE_LANE_OFFSET_TX		0x044
-#define QSERDES_V2_TX_RES_CODE_LANE_OFFSET_RX		0x048
-#define QSERDES_V2_TX_DEBUG_BUS_SEL			0x058
-#define QSERDES_V2_TX_TRANSCEIVER_BIAS_EN		0x05c
-#define QSERDES_V2_TX_HIGHZ_DRVR_EN			0x060
-#define QSERDES_V2_TX_TX_POL_INV			0x064
-#define QSERDES_V2_TX_PARRATE_REC_DETECT_IDLE_EN	0x068
-#define QSERDES_V2_TX_LANE_MODE_1			0x08c
-#define QSERDES_V2_TX_LANE_MODE_2			0x090
-#define QSERDES_V2_TX_LANE_MODE_3			0x094
-#define QSERDES_V2_TX_RCV_DETECT_LVL_2			0x0a4
-#define QSERDES_V2_TX_TRAN_DRVR_EMP_EN			0x0c0
-#define QSERDES_V2_TX_TX_INTERFACE_MODE			0x0c4
-#define QSERDES_V2_TX_VMODE_CTRL1			0x0f0
-
-/* Only for QMP V2 PHY - RX registers */
-#define QSERDES_V2_RX_UCDR_FO_GAIN			0x008
-#define QSERDES_V2_RX_UCDR_SO_GAIN_HALF			0x00c
-#define QSERDES_V2_RX_UCDR_SO_GAIN			0x014
-#define QSERDES_V2_RX_UCDR_SVS_SO_GAIN_HALF		0x024
-#define QSERDES_V2_RX_UCDR_SVS_SO_GAIN_QUARTER		0x028
-#define QSERDES_V2_RX_UCDR_SVS_SO_GAIN			0x02c
-#define QSERDES_V2_RX_UCDR_FASTLOCK_FO_GAIN		0x030
-#define QSERDES_V2_RX_UCDR_SO_SATURATION_AND_ENABLE	0x034
-#define QSERDES_V2_RX_UCDR_FASTLOCK_COUNT_LOW		0x03c
-#define QSERDES_V2_RX_UCDR_FASTLOCK_COUNT_HIGH		0x040
-#define QSERDES_V2_RX_UCDR_PI_CONTROLS			0x044
-#define QSERDES_V2_RX_RX_TERM_BW			0x07c
-#define QSERDES_V2_RX_VGA_CAL_CNTRL1			0x0bc
-#define QSERDES_V2_RX_VGA_CAL_CNTRL2			0x0c0
-#define QSERDES_V2_RX_RX_EQ_GAIN2_LSB			0x0c8
-#define QSERDES_V2_RX_RX_EQ_GAIN2_MSB			0x0cc
-#define QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL1		0x0d0
-#define QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL2		0x0d4
-#define QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL3		0x0d8
-#define QSERDES_V2_RX_RX_EQU_ADAPTOR_CNTRL4		0x0dc
-#define QSERDES_V2_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1	0x0f8
-#define QSERDES_V2_RX_RX_OFFSET_ADAPTOR_CNTRL2		0x0fc
-#define QSERDES_V2_RX_SIGDET_ENABLES			0x100
-#define QSERDES_V2_RX_SIGDET_CNTRL			0x104
-#define QSERDES_V2_RX_SIGDET_LVL			0x108
-#define QSERDES_V2_RX_SIGDET_DEGLITCH_CNTRL		0x10c
-#define QSERDES_V2_RX_RX_BAND				0x110
-#define QSERDES_V2_RX_RX_INTERFACE_MODE			0x11c
-#define QSERDES_V2_RX_RX_MODE_00			0x164
-#define QSERDES_V2_RX_RX_MODE_01			0x168
-
-#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index a873bdd7bffe..19e91f44e84e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -6,11 +6,9 @@
 #ifndef QCOM_PHY_QMP_H_
 #define QCOM_PHY_QMP_H_
 
-#include "phy-qcom-qmp-qserdes-com.h"
 #include "phy-qcom-qmp-qserdes-txrx.h"
 
 #include "phy-qcom-qmp-qserdes-com-v2.h"
-#include "phy-qcom-qmp-qserdes-txrx-v2.h"
 
 #include "phy-qcom-qmp-qserdes-com-v3.h"
 #include "phy-qcom-qmp-qserdes-txrx-v3.h"
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
