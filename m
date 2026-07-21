Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12530C4451C
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 07:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+WYe4aUXiWzjE8sS1W1RjJnG8ZFayQguc5Fe/o7Eda0=; b=DFiyAapWEikmMn
	TfG8bhWFv6rAUQ73lofahMggSzqht8rSZCAM+YJyZGZ2yFQmtb9H8NoQTnUIdeCWL1e5VkkMFgz0Z
	+sU8g3Ac7etX8EIVFl2fkKli88LUi51Ycqrlu078Tybgz8nOW5EOrIAPM3qCvGMGeBhBnWM3y37OZ
	mCB5lsE8twiXizqaLI3BxBEC0YoJgSn2fFW7I3KYXb/iG0p4i6vYgR6hgXUqOnLbOb9EII77/LAu4
	dayPf1LsThJHWtNWispYxI60XROmxBloofrRaQKce8ARTEwMmRhyx37mTydPgmba4b9zFFqA7YEaU
	rp3N5S6FXhGQMgLffv6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm514-00000008fDA-1rLJ;
	Tue, 21 Jul 2026 07:35:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm512-00000008fBL-0ESV
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 07:35:49 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66L6ESCT4107138
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 07:35:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lPzGGWJt6OLARbXb79TXcUx+RHCnNMi3U0xcb+MgwK4=; b=dsjAn/elMnOLJoEI
	7oKBgJ4FKnr3aIWn4vJQ4ZSxPrXfIeoCaz1mLP0vjs0Fa9P4r68X6Bm+ziU3ke5w
	MwYu4g8CK1TpKNXEu8d+8MJrtAb0tfL9lYtu7/i2QmCyokzNeMOtlqJV9hPb6EFD
	5ENTsZdZ2koQcKLmp2VCX8pWKdEbBl1gZcYTAabpY1ee3ByOt2JmuyUzJFbBCa2b
	8pfEfDUt0mLo0tdJ5xFuy4ZhiTWNi9IoEIY2c5n+wJ8I2UEC8DjMoBmIPmYk2PJv
	GqZkJnT6DLcscQmmk0Yysj1eiVGjJABuIfWqZW7+vT0nQaXKKm9B5rKfJt0w2GB4
	eTBGng==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhvqn9s7p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 07:35:47 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ce7dff6253so39641465ad.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 00:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784619347; x=1785224147; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lPzGGWJt6OLARbXb79TXcUx+RHCnNMi3U0xcb+MgwK4=;
        b=V0MpA7bnLQYSpFNRyu0Fbk3AbDJatZG0P0nDbT2664UzvueBOo0dixweQrb5Q84lSm
         8whfZNmitns8NRDHcRodsCj61sPAmybMRbuGVPb3ZEXEEzYv21RpgIXfUDNb8JBsuclY
         Fh7lGXYq29FHoYbzv91eeGe0JDS3PWXupFiDb4TXuDnCqSDilorJEgF84MenH1V8rB3r
         DnAzJXavIENuP5fR7O+DaRAU52DtXsTD5b+M0wLjpEHIfjRXcuagft48Ty5P9Nkvbyzt
         eytzoldVAZur2C/9aenc9y7yTY6HQK/Tcj/UMPCPn8iS9LkCUJPvOrLX0J3n485dKni3
         h4KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784619347; x=1785224147;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lPzGGWJt6OLARbXb79TXcUx+RHCnNMi3U0xcb+MgwK4=;
        b=U2Vps/sbp8Oa4NRJ61f4gFspLGMeSR+BhCTsfQ2/6KtrptQqxCWQLBgNZ8w2lML8st
         uNFZg0E5eo4n1MJoWH/v86jvaJe/+RS/F8VAyV+5umYG7EQKo8xcrQdj43v9vvb4XPgg
         2ylHGVyrUk+5T+/LYIeKs8fTAao0oi80nr2RUyGkyF7F/GhhvJxwqgCzFhoDk3rof79t
         juIcByRHp5TAoKcHc/Kb2aau0KIudEy0pL3B/TfgCAJVVnwGkx+Lf5RMxeK7UjqrbJkx
         9nryeOPGrtkGpj7d4teN2eOf/dPPcMJV64PUAvWlxhZ0ZSD6Z6BCsx7hMzOBwCWs+6sU
         BCBw==
X-Forwarded-Encrypted: i=1; AHgh+RpZFQGQJonAIZeMNvp5Pff9wnzflhc23SACGF+4QHNdADgK0xcxeFuHiSLYToqZYT+7d6OeH0D3oog=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZebkMiTA6MRTkFSlhvJ+HBvvOCsbMaTytFwBjteTR6zk8rkWa
	wJ8zfLStMHw2pmvA9vWJi+Q7qWUeVO/QSQBSR0X/S/pl6XkG59ETUaD8kuVyo0MzMipTiAu3J7f
	8OaBuz12IMwPRS6BC2uK/Tta8FbqtqjB5ntItqy56ZVmg1aU7Omwnq9doNdRaNL2RB9GH
X-Gm-Gg: AfdE7cm2OcgRmNbU8tmx0scqhWGNSsawEXcEJdFYh0ZkSivYpGoVzQVMU07fvwJB9aL
	QWV8C8cC/rVnpFujmcrAABS3+pni6pxAH5in0+/qsewiWOwP3JHFf5ShlCdXYQbeRqD3OUjy5gZ
	PO5CMoRZO+/k/G7+RMDfflaeGkcz1F9DCSuRKZT2s+cQfHQB+XL+lK5Tdk6/X2Z/OxT5P5pCVsr
	xFVo52gkLoFEVujVSPVekMm3HC7QxvVcmtYCOcFR/WpKv7l5a3qylV99t342pt0rCp5cqD7VqHq
	WnpZ7s7r29KG7bnHQvJJeH+woTnneFWLCyEhJqxFuI9sCIOUmP499kkG2HV2emmcvy/CmCKLHrD
	YBX6br/e9jnGmO/XbLWcBiF9gWzh8WjGlHTIr4COP52m7JMxEgCPbVFD+sahD8tZOXcQP+DlwMG
	xxjiLEIEjGx9ZaXrZddO7iA0fEfSbwkQ==
X-Received: by 2002:a05:6a21:710f:b0:3bd:1cfc:1b9b with SMTP id adf61e73a8af0-3c38d90b038mr23029022637.10.1784619346966;
        Tue, 21 Jul 2026 00:35:46 -0700 (PDT)
X-Received: by 2002:a05:6a21:710f:b0:3bd:1cfc:1b9b with SMTP id adf61e73a8af0-3c38d90b038mr23028998637.10.1784619346516;
        Tue, 21 Jul 2026 00:35:46 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3142a210571sm45224271eec.31.2026.07.21.00.35.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 00:35:45 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Tue, 21 Jul 2026 13:05:27 +0530
Subject: [PATCH v5 2/2] phy: qcom-qmp-pcie: Add support for ipq5210 PCIe
 phys
MIME-Version: 1.0
Message-Id: <20260721-pcie-phy-v5-2-8d403ef7e780@oss.qualcomm.com>
References: <20260721-pcie-phy-v5-0-8d403ef7e780@oss.qualcomm.com>
In-Reply-To: <20260721-pcie-phy-v5-0-8d403ef7e780@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDA3OCBTYWx0ZWRfX/y3FMfU7yib+
 w9jr7hfUSuWZbgXIp7y4v3vPqubDhPDR99mLotY+li2K/Zup4WpOdx2XL1fIzs6qXBTFksDyZzn
 budKV2jDwvPmjrTTxHvNsQcZK1I625ZgHVpEBks9LMA3UudSdw0UA4qyfLg4R0IKUFzVV+ptGzh
 fymRw7Bie3zZGxu2jB9XkGWF1Zyw8lYRyEEHjHW2qrVwT26tRKMHX0QE7vbiyn8gYpSrlkQELze
 6S5MXKaQLYvuMYSERZDbLuPsazCAfSfb5tRo6EQU1qLNjjI1R3lQb9VsCuKPLKbT2TnmSt8TEF8
 AvntkiPGB0/hcDzWvURVkNMriz4uwrbV5HozDqsAcKqW9ldxP9n/HHF6mqFrN7Dj9Ysnb7fHVsp
 j3TMfhKmA7NU+juOZia/d017b+p3aBsJwQyuymzF4spEJKb1DE2gBRswdPcmy8MQCN5wtzkA2Qx
 tImXzufVP4Bk1W5T0lQ==
X-Proofpoint-ORIG-GUID: vckDWOiBOHQtli-CrxoiP6yul_t8yKec
X-Proofpoint-GUID: vckDWOiBOHQtli-CrxoiP6yul_t8yKec
X-Authority-Analysis: v=2.4 cv=M5F97Sws c=1 sm=1 tr=0 ts=6a5f2153 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=lQuujfteSIboIXYB3dUA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDA3OCBTYWx0ZWRfX6MilE8JjkGT7
 41LzFMed8bF95ZT6gtN4lzQysYHFBFvoi3oyZckfuaY38LkybilAsp8JPQCOFrZKi60G9DwE/n1
 CZs1U4cSd+XCIG1ZbOdEUqHkpIP0CKo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_06,2026-07-20_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607210078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_003548_144740_942D0B28 
X-CRM114-Status: GOOD (  13.18  )
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

Add support for a PCIe phys found on Qualcomm ipq5210 platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 129 +++++++++++++++++++++++++++++++
 1 file changed, 129 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index f54f66429f37..f4b25a7b1604 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -636,6 +636,89 @@ static const struct qmp_phy_init_tbl ipq8074_pcie_gen3_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
 };
 
+static const struct qmp_phy_init_tbl ipq5210_gen3x1_pcie_ep_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_PLL_BG_TIMER, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_BIAS_EN_CLKBUFLR_EN, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SYSCLK_BUF_ENABLE, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP1_MODE0, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP2_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP1_MODE1, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP2_MODE1, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_BG_TRIM, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CP_CTRL_MODE0, 0x23),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CP_CTRL_MODE1, 0x23),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_RCTRL_MODE0, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_RCTRL_MODE1, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_CCTRL_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_PLL_CCTRL_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_BIAS_EN_CTRL_BY_PSM, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SYSCLK_EN_SEL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_RESETSM_CNTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_LOCK_CMP_EN, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DEC_START_MODE0, 0x19),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_DEC_START_MODE1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN0_MODE0, 0xfe),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN1_MODE0, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN0_MODE1, 0xfe),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_INTEGLOOP_GAIN1_MODE1, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE1_MODE0, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE2_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE1_MODE1, 0xb4),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_VCO_TUNE2_MODE1, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_HSCLK_SEL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CORE_CLK_EN, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CMN_CONFIG, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SVS_MODE_CLK_SEL, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_CORECLK_DIV_MODE1, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SYS_CLK_CTRL, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_PLL_SYSCLK_EN_SEL, 0x10),
+};
+
+static const struct qmp_phy_init_tbl ipq5210_gen3x1_pcie_ep_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FO_GAIN, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_GAIN, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CONTROLS, 0x70),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL2, 0x61),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL3, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL4, 0x1e),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_LOW, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_HIGH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x73),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_ENABLES, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_DEGLITCH_CNTRL, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_LOW, 0xf0),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH2, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH3, 0xd3),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH4, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_LOW, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH2, 0xc8),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH3, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH4, 0xb1),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_LOW, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH2, 0xc8),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH3, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH4, 0xb1),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DFE_EN_TIMER, 0x04),
+};
+
+static const struct qmp_phy_init_tbl ipq5210_gen3x1_pcie_ep_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_POWER_STATE_CONFIG2, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_POWER_STATE_CONFIG4, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_L, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_EQ_CONFIG1, 0x11),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_PRESET_P10_PRE, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_PRESET_P10_POST, 0x58),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_OSC_DTCT_CONFIG1, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCIE_OSC_DTCT_CONFIG4, 0xff),
+};
+
 static const struct qmp_phy_init_tbl ipq9574_gen3x1_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_PLL_BIAS_EN_CLKBUFLR_EN, 0x18),
 	QMP_PHY_INIT_CFG(QSERDES_PLL_BIAS_EN_CTRL_BY_PSM, 0x01),
@@ -4061,6 +4144,49 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 	.phy_status		= PHYSTATUS,
 };
 
+static const struct qmp_phy_cfg ipq5210_gen3x1_pciephy_cfg = {
+	.lanes			= 1,
+
+	.offsets		= &qmp_pcie_offsets_v4x1,
+
+	.tbls =  {
+		.serdes		= ipq9574_gen3x1_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(ipq9574_gen3x1_pcie_serdes_tbl),
+		.tx		= ipq8074_pcie_gen3_tx_tbl,
+		.tx_num		= ARRAY_SIZE(ipq8074_pcie_gen3_tx_tbl),
+		.rx		= ipq9574_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(ipq9574_pcie_rx_tbl),
+		.pcs		= ipq9574_gen3x1_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(ipq9574_gen3x1_pcie_pcs_tbl),
+		.pcs_misc	= ipq9574_gen3x1_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(ipq9574_gen3x1_pcie_pcs_misc_tbl),
+	},
+
+	.tbls_ep = &(const struct qmp_phy_cfg_tbls) {
+		.serdes		= ipq5210_gen3x1_pcie_ep_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(ipq5210_gen3x1_pcie_ep_serdes_tbl),
+		.tx		= ipq6018_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(ipq6018_pcie_tx_tbl),
+		.rx		= ipq5210_gen3x1_pcie_ep_rx_tbl,
+		.rx_num		= ARRAY_SIZE(ipq5210_gen3x1_pcie_ep_rx_tbl),
+		.pcs		= ipq6018_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(ipq6018_pcie_pcs_tbl),
+		.pcs_misc	= ipq5210_gen3x1_pcie_ep_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(ipq5210_gen3x1_pcie_ep_pcs_misc_tbl),
+	},
+
+	.reset_list		= ipq8074_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
+	.vreg_list		= NULL,
+	.num_vregs		= 0,
+	.regs			= pciephy_v4_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+
+	.pipe_clock_rate	= 250000000,
+};
+
 static const struct qmp_phy_cfg ipq9574_gen3x1_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -5929,6 +6055,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,hawi-qmp-gen4x1-pcie-phy",
 		.data = &hawi_qmp_gen4x1_pciephy_cfg,
+	}, {
+		.compatible = "qcom,ipq5210-qmp-gen3x1-pcie-phy",
+		.data = &ipq5210_gen3x1_pciephy_cfg,
 	}, {
 		.compatible = "qcom,ipq6018-qmp-pcie-phy",
 		.data = &ipq6018_pciephy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
