Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73B28C43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 17:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L10XyLglo8sW8jSyeLUXo6uBMR6B2p85hcm5Y0i6mKU=; b=ja8Kf8LZP4jaUH
	ocnQC3uWiGg5LvJqwgW5Mf9+bvftW1X6RK8QExO1oDtKLFjTXeozXf/Iroeev3/h/YA8dJ2oXRtfO
	+MyAYssxIBZwgL+4hFU+YP/w/0qywHPxsHp//kya2gl2MieFS0lTgedV35uV33LPdcgrvab4ItzCH
	rdHuB4O0ByKU4+Z7t4EL4iQk9DNHlOuVwhkmusnWCtn2OpmSZxOC+VojnNrl/rK8c8QUIdh/fmSdG
	eBkyprBsLiy9onF24FB6PdtQ/BU17W7vGM9PRMCIQ2VerjzJAE1IpI4pNjHRF6OmKiuhvVWXv3gO7
	1fbPpy3jU8iPX9lNSIdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiFJc-00000005SrA-0l9k;
	Fri, 10 Jul 2026 17:47:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiFJZ-00000005SqU-1M74
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 17:47:06 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66AH3tmt1261397
	for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 17:47:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tjV/CkAxIWTyslaFZ2ocLePAkLaXs/ucx9oU2hGAhH0=; b=kjcD0EBieuvAOV31
	lQqVq3iyS4N7yy7bgNOqQEWiezBhyG2RwkKiKQlIXyGiwewK2ISz4etsEiFJSe6i
	PoWq06jY9angV9g9iHW3cTEGKXjM93VsoVdZ1/1rskgp33i5pyoTmXaU0ZTVFRWB
	Z+6AH4GqTOV8udrf+7xO0HZSn4MvR8bSej1oYoSsgRzUytzJCMUTVpyz8qMwt11w
	dHnKLKkWME2+oHMfPi/qFbXPhwimTGlyol0A+umcVL8NPEu3DX6mJ705pfAvm3lO
	M01spGG+GqKeAmdvVQR4g57nOMtrIjBKinaX9Us+INC0v+kF82R1KjSuoMdW810R
	Sg7luQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fb2txgp3y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 17:47:04 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-388cfc4848dso1420272a91.3
        for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 10:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783705623; x=1784310423; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tjV/CkAxIWTyslaFZ2ocLePAkLaXs/ucx9oU2hGAhH0=;
        b=X8ruqy6ORCvdobgfqoKyzNUGdxnTQoAD8xS4rY78zQKMcmIso56WrY/eeUENnTHwtO
         cyF/PmpUCU8ubSINdtCZ13rwmCK7ti6awcgsEoMTi1mIPChniE+wm6U472FRh6yDjLLH
         qeEHpsfJ+sZhIOT2kBCHSvHw46GPyVLAQCx5Qv0xLa72yx0hWpAIu78Jq0EKvhG0GaDX
         oqsQYiLKbOCrol6ptA8GOdUtOmHQGAFF5ugK8cA6VbM2eaVg7az9t7MDwj4PFSpVeQHe
         xfOsp7xb+yczapwcqS7kJ8ZIgcWcvbiedKzHPM18ZhCx2uESObaoxoY5rO07UZ73fmAZ
         OcGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783705623; x=1784310423;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tjV/CkAxIWTyslaFZ2ocLePAkLaXs/ucx9oU2hGAhH0=;
        b=b2Vm9fwHON4U2H2xt8zrHKz5VkIZVdsMh5CpQNI32RiaIH4GYwDiXWAeN687zRKiBW
         FwJuSuJEPe9BtTMF70tMg48uFaR11bECoDAMdc+q7QtuuqrbuF9fgtQKfBISpMxW9QSg
         99+F/xmGEXlSs5aK73Gu477cDIIMfy9Vew3/lW3hfGoStb+KpMQFLz81WQuKlFEBwghf
         J/RrezM1aepn5lRTmVYj3PKi+V0h5GUlgReeVeeqQPYOBQ/qtvGx58CxTUp+uNKiRuz2
         1gJB99AKO5GCDKyqpk56x/Be7KWPt8CibNcL7koMN0USiME8yIRPZlt+GFW8VRox+rdZ
         9k4Q==
X-Forwarded-Encrypted: i=1; AHgh+Rqioi2oTWOEb0czhl0JMnUPTf45H5JH1Flc5ruAirJK0xuJCQRvg9B1jmjzyvuiVNG3ZSJya3WdfWg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4q6tAkX7DKCXj00pPgm9EfKD1VeIVsHZuuI7ymhFrbFY8ofxP
	HLMJEoLpoQasAu4b6iJC82VINDd5vObK0ttrw+wtGqTOIpFyT0jriIEPWcLUbgVjVxPBHV8vrW2
	FccGfqlwF1LEX1WLxAeYcgPpb9SGXDL8cJqcwmF93MW1mHJgLUqaznXWN5qriscw8bDXQ
X-Gm-Gg: AfdE7cl8sv+rEgtzXmIwZ43CqSSN6CtQPGvnvqpp89haZdIMw2HPT7dO+z8/6jD1MHB
	O1FXD0Flyh0R5xMMXgB/yGsEsUq9ayE33tniX1uUwsnWHBuIvyR/Ao4KSzJNEu3hWfOLJNAYawY
	4lEezQfdoWyiXqECzg+ntqa4CzBcLgXxwsXWvh//fnfXKw9+KnujSeud0wbsuAtp3ImbXpJ7Eex
	wFOyPLUC4M8ABtml7h/Z8AkgREe8QuOjvrj23vV9R5xhkYBKxszLoZoQ14Zw68QZQoiDrFPPC7v
	e1MdJ/xjIwPp0im9D4p07TEdAywICgXkyS0h2Q0Jf3z8P84CBKze78lQdHQG68rXZIsI70wOBIv
	BqgMWRNyKWkvEcl5PLkp/5/41Djj5sanm0aGxcLCtqshwb5f+bGeVR76wMHN3SNFjSrt4cd7rkK
	oeM8ovK1f7liSmUbRfBzd/kw3MfQ/VWp7dVfyzU3aFRmR7kg==
X-Received: by 2002:a17:90b:3b8a:b0:387:e0bb:57f3 with SMTP id 98e67ed59e1d1-38dc7792414mr394a91.36.1783705623059;
        Fri, 10 Jul 2026 10:47:03 -0700 (PDT)
X-Received: by 2002:a17:90b:3b8a:b0:387:e0bb:57f3 with SMTP id 98e67ed59e1d1-38dc7792414mr361a91.36.1783705622442;
        Fri, 10 Jul 2026 10:47:02 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31189cd8234sm33008273eec.9.2026.07.10.10.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 10:47:01 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Fri, 10 Jul 2026 23:16:41 +0530
Subject: [PATCH v3 2/2] phy: qcom: qmp-pcie: Add IPQ9650 PCIe PHY support
MIME-Version: 1.0
Message-Id: <20260710-ipq9650_pcie_phy-v3-2-ef6018818d33@oss.qualcomm.com>
References: <20260710-ipq9650_pcie_phy-v3-0-ef6018818d33@oss.qualcomm.com>
In-Reply-To: <20260710-ipq9650_pcie_phy-v3-0-ef6018818d33@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Authority-Analysis: v=2.4 cv=ELM2FVZC c=1 sm=1 tr=0 ts=6a513018 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=SzMj-Qgm2C8wWq0MGEoA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: YGWcoQXcHdEo14bq_RP4qDyrJIwe7yfX
X-Proofpoint-GUID: YGWcoQXcHdEo14bq_RP4qDyrJIwe7yfX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDE3NyBTYWx0ZWRfXz91c3GFSPsH2
 vHff2Ml6NxC5QNxJ2fQyExmOYUYnvQ8Y3eauiNF5lzQvPkVUHOx1vFW4mQnUCC6DLt7Xx7R0oRb
 PkpBxhYQX6Vpfm8efB8ZnYKGXGllqk/1LC+53oHMM0xfAMB4vs5M89ODAR5/zO5d3aNBLVYW4kC
 L0oMf0DyWVpJAzLMlvRAB6HMQ/O46XQK9IvgWHpacHgLAMMZYE4c3dM5mSUYG7pQ91nsIF4QNzm
 gGW7O4TpE7eZg1WHbCiPgmYLr+nlmDa/tDWhCtI8GzHzEyB9arNQa2+x6J5CbyL9Hnghim55TBU
 DKhvApDeAkqV/CaTIRba8ljTOsFBzu2T+4ojXC09FYWD9LTjGu+zlDWoMBNV4sm5Ag2BjzeOBQz
 /lupOcGW9AWPI/0JDMDP//j/8ZplvekGtwLgLZG6pSpxyS610GO33sscyXdR25FT24G3bhl8Twm
 Y5uYMlDwRNv8VFV1ThA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDE3NyBTYWx0ZWRfX3L+rrQMG37GN
 5ltzgYQWonMOuJgtVhVxMm4cYYCW83OtNciTQmksWSYQUjnCrIVKw61MDSfltGhtTv9dEPU7mHn
 Y9GS/U1lGEnxSHZHFLhOd+jb5zsWZy4=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-10_05,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607100177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_104705_491414_D118D7B1 
X-CRM114-Status: GOOD (  11.00  )
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

Add support for the IPQ9650 platform, which includes three Gen3 x2 PCIe
controllers and two Gen3 x1 PCIe controllers. The PHY instances require
the on-chip refgen supply.

Add the IPQ9650 Gen3 x1 and x2 QMP PCIe PHY configurations along with
the refgen regulator supply. Note that an on-chip LDO, driven by the SoC
CX, supplies the PHY voltages without requiring software control. Note
that IPQ9650 does not support CX power collapse or rail scaling.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 220 +++++++++++++++++++++++++++++++
 1 file changed, 220 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d3effad7a074..c832db6c8953 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -857,6 +857,152 @@ static const struct qmp_phy_init_tbl ipq9574_gen3x2_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
 };
 
+static const struct qmp_phy_init_tbl ipq9650_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIAS_EN_CTRL_BY_PSM, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_SELECT, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_MODE, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_CONFIG, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_EN, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_RESETSM_CNTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_MAP, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_TIMER1, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_TIMER2, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE0, 0x68),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START2_MODE0, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE0, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE0, 0xd4),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CP_CTRL_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN1_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN0_MODE0, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE2_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE1_MODE0, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SVS_MODE_CLK_SEL, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYS_CLK_CTRL, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_BUF_ENABLE, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BG_TIMER, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE1, 0x53),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START2_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE1, 0x29),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE1, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CP_CTRL_MODE1, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN1_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN0_MODE1, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE2_MODE1, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE1_MODE1, 0xb4),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SVS_MODE_CLK_SEL, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CORE_CLK_EN, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_PER2, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_PER1, 0x7d),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_STEP_SIZE2_MODE0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_STEP_SIZE1_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_STEP_SIZE2_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_STEP_SIZE1_MODE1, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CORECLK_DIV_MODE1, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_HSCLK_SEL, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0xa2),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x13),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xb5),
+};
+
+static const struct qmp_phy_init_tbl ipq9650_pcie_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_OFFSET_TX, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_OFFSET_RX, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_HIGHZ_DRVR_EN, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_LANE_MODE_1, 0xb5),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PI_QEC_CTRL, 0x00),
+};
+
+static const struct qmp_phy_init_tbl ipq9650_pcie_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_AUX_DATA_TCOARSE_TFINE, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_GM_CAL, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FO_GAIN, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_GAIN, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_CNTRL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_DEGLITCH_CNTRL, 0x1e),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_VGA_GAIN2_LSB, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_VGA_GAIN2_MSB, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_VGA_CAL_CNTRL1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_VGA_CAL_CNTRL2, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DCC_CTRL1, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DFE_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DFE_2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_TX_ADAPT_PRE_THRESH1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_TX_ADAPT_PRE_THRESH2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_TX_ADAPT_POST_THRESH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_TX_ADAPT_MAIN_THRESH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DFE_EN_TIMER, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CONTROLS, 0x70),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x17),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_LOW, 0xd4),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH, 0x54),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH2, 0xdb),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH3, 0x3b),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH4, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_LOW, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH, 0xe4),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH2, 0xec),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH3, 0x3b),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH4, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_LOW, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH2, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH3, 0x67),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH4, 0x3a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_HIGH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_LOW, 0xc0),
+};
+
+static const struct qmp_phy_init_tbl ipq9650_pcie_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_REFGEN_REQ_CONFIG1, 0x25),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_G12S1_TXDEEMPH_M3P5DB, 0x10),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RATE_SLEW_CNTRL1, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG2, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_P2U3_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_DCC_CAL_CONFIG, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_SIGDET_LVL, 0x77),
+};
+
+static const struct qmp_phy_init_tbl ipq9650_pcie_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_POWER_STATE_CONFIG2, 0x0d),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_POWER_STATE_CONFIG4, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_INT_AUX_CLK_CONFIG1, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_EQ_CONFIG1, 0x1c),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_EQ_CONFIG2, 0x0b),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_PRESET_P2_P3_POST, 0x34),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_PRESET_P6_P7_PRE, 0x33),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_PRESET_P6_P7_POST, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_PRESET_P10_PRE, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_PRESET_P10_POST, 0x58),
+};
+
 static const struct qmp_phy_init_tbl qcs615_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BIAS_EN_CLKBUFLR_EN, 0x18),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CLK_ENABLE1, 0x10),
@@ -3484,6 +3630,10 @@ static const char * const qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll",
 };
 
+static const char * const ipq9650_qmp_phy_vreg_l[] = {
+	"refgen",
+};
+
 static const char * const sm8550_qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll", "vdda-qref",
 };
@@ -3527,6 +3677,14 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x1 = {
 	.rx		= 0x0400,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_9650_v4x1 = {
+	.serdes		= 0,
+	.pcs		= 0x0600,
+	.pcs_misc	= 0x0a00,
+	.tx		= 0x0200,
+	.rx		= 0x0400,
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x2 = {
 	.serdes		= 0,
 	.pcs		= 0x0a00,
@@ -3802,6 +3960,62 @@ static const struct qmp_phy_cfg ipq9574_gen3x2_pciephy_cfg = {
 	.pipe_clock_rate	= 250000000,
 };
 
+static const struct qmp_phy_cfg ipq9650_gen3x1_pciephy_cfg = {
+	.lanes			= 1,
+
+	.offsets		= &qmp_pcie_offsets_9650_v4x1,
+
+	.tbls = {
+		.serdes		= ipq9650_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(ipq9650_pcie_serdes_tbl),
+		.tx		= ipq9650_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(ipq9650_pcie_tx_tbl),
+		.rx		= ipq9650_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(ipq9650_pcie_rx_tbl),
+		.pcs		= ipq9650_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(ipq9650_pcie_pcs_tbl),
+		.pcs_misc	= ipq9650_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(ipq9650_pcie_pcs_misc_tbl),
+	},
+	.reset_list		= ipq8074_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
+	.vreg_list		= ipq9650_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(ipq9650_qmp_phy_vreg_l),
+	.regs			= pciephy_v4_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+	.pipe_clock_rate	= 250000000,
+};
+
+static const struct qmp_phy_cfg ipq9650_gen3x2_pciephy_cfg = {
+	.lanes			= 2,
+
+	.offsets		= &qmp_pcie_offsets_v4x2,
+
+	.tbls = {
+		.serdes		= ipq9650_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(ipq9650_pcie_serdes_tbl),
+		.tx		= ipq9650_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(ipq9650_pcie_tx_tbl),
+		.rx		= ipq9650_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(ipq9650_pcie_rx_tbl),
+		.pcs		= ipq9650_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(ipq9650_pcie_pcs_tbl),
+		.pcs_misc	= ipq9650_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(ipq9650_pcie_pcs_misc_tbl),
+	},
+	.reset_list		= ipq8074_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
+	.vreg_list		= ipq9650_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(ipq9650_qmp_phy_vreg_l),
+	.regs			= pciephy_v4_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+	.pipe_clock_rate	= 250000000,
+};
+
 static const struct qmp_phy_cfg qcs615_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -5558,6 +5772,12 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy",
 		.data = &ipq9574_gen3x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,ipq9650-qmp-gen3x1-pcie-phy",
+		.data = &ipq9650_gen3x1_pciephy_cfg,
+	}, {
+		.compatible = "qcom,ipq9650-qmp-gen3x2-pcie-phy",
+		.data = &ipq9650_gen3x2_pciephy_cfg,
 	}, {
 		.compatible = "qcom,kaanapali-qmp-gen3x2-pcie-phy",
 		.data = &qmp_v8_gen3x2_pciephy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
