Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 398C3CD4F2C
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 07:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNmmkhJuy04+xJ+cTPuLa/v3cRWLrqA20+flsiO8VLw=; b=hPIV3WsVPMd2OU
	bNwO06g8xBdYY0c9dtnO3dY/XtTdWu1x1+Kb5jXBanC6OsK+hwesK28L3FXD9KGcVJSbIllQ6BksC
	haXwPe2zSxPX6K97zxpDbXOCtoyjvH06VZzGcpQF0qri5ayYqEQwsVCWJ1ROk8GCOM4ezzJbpRtMo
	1tdsiiQXLSGfYxbfEy52suvRKOWK3duPphqXeD8CVPLbmRJX4yaNuYiw7OqStvj8+dMA/juwm+/od
	4JX0Jjpl70VOVKOjuD/jUyAqX4RqHPgK5E0eL1M4Of7CAx/8oGPoXQ/oQ7oFFWIxHp8vaJAQDMsb3
	VY0fw1rMaUXTlvJxv8PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwfl-0000000AV8F-42Xy;
	Fri, 12 Jun 2026 07:51:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwfj-0000000AV7G-3DXQ
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 07:51:25 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65C3CAVs2534828
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:51:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tppbXbWsysNemVYhWaI+rXyFxyZof2TTBVFVw+fck/s=; b=kGgXHEGZ2fkgH7Lm
	+gRviykhGICt8ncxgsw5CAa/oglrJsV1mcR/VrRpZPPLhTjudZPP1QARXP8Jm09a
	bSrEy2fPdkTjNklZeNsQgvJt1btTShLo23fS9u7mMqv9PAaACZU0/kSgyrx+u7Q4
	jknOyyuXz/xuwREkpNX/BdCEYD+5O1crchDdts/JvIaJqVWDjokQ5IZ+aYHqsHop
	aIu6LVb/z/Y3r6tPgPvkWQxgxWMUMBymwkwZMtIfVbMeMP6YjXHoiLF7/A2pEFUP
	8kb1mhvmoSb0QtM65aH6OAbIX6qhCPonccmQXAaEC4Q4ImifuKRsKzxDISU3ROU2
	jqdO/Q==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er76eh58b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:51:22 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c858e0cbca3so415290a12.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 00:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781250682; x=1781855482; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tppbXbWsysNemVYhWaI+rXyFxyZof2TTBVFVw+fck/s=;
        b=jc/zjqdTFqLwsrwEQtKhbj+BvF4t3GUzyVgK5g6sBNZF9SnrpaaGVgsVZnAAEjZ6dh
         lfTs23B17+9WyIXGw0aerRhaGDlxLBEnwq3QL260sVJR8Hn519/ZDuMsFeYRERnHau4A
         uy5o22I4tciumjFMak0AhPkh7aIZ1s5N6cFR6PaO0jSBlOK0Qc4qOBX+E5lpfleN3D53
         J3Gl1XApZlCaoBjsmto3fc7MOMJ/pkcbphqxkSO/KVWNWYFOojpXizX9KfjFEa2GoiMf
         eNvVXf2XZQ1MSjXnfsN3UixwXgrflfV+20b1SbMKOJ4YaWkcfg89JAGtJRSoJdoBWK2L
         OZgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781250682; x=1781855482;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tppbXbWsysNemVYhWaI+rXyFxyZof2TTBVFVw+fck/s=;
        b=SCYKVHmeabOQxJpaw6Xao1CLaLXrSrS0D8UqnlPaYwvLXVgoTu4HICahtgUhT5YwVq
         gdeWxj7mtPrq1fEG3zdcbbHv8AduunUOEz85r12T1wHrg4ZaFJ7bes5UgB2d9p+R41Jg
         OrG6OSch9k39l4Vu5d49MuUFyfad+dG5mV1sAUPD1djwZYWu+n/JJh9IknybG2AbcmoM
         DPeWLa0JPdjs2hgdoOxslo8A1deP4nS4j9Xk7GNR8v23Tx8eF/jEUNHx/5y1QvcmBAtJ
         AEV6D+YysdJAijgYOkOWV4DK2UHar8tZ1WpOOqrvImEg1L+pdYkmZ3Hsb8OtLqwRkXTY
         Df0A==
X-Forwarded-Encrypted: i=1; AFNElJ8LglPkul9Lt38aTZsHbLyBqYQRuwNXUJtxOOpGwu4BDNwHwLbGBhAUVlp++lOKgRJfw2M6AEwlACM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwmWjjWH95/gVOWt/1iqk49eGwBEk5lT0naWZiQMm3yC4rn2LSY
	qECaBpxCXcIGwLa2DQxX7Y3KkaIGC/cCpBizQZTcyo7Uu4WRJfhKzNOJldKptoPiNIe4/CdGCv4
	lF1I5rpuDNjG38HXKP4PrJeuhxRQeH/uyzPsV4lYPz7LqB7TiR9BUcR+wXkSh264kUpKTRdv99+
	aH
X-Gm-Gg: Acq92OGEyN/P3TjkNAn2HUmdGHVgCN6PGeXcEBbmuSZtk5DxrSYtyNBuA7m9SPc7oMA
	Tr/lO8h+yhbCkiWTfj5X8dV7LLHB4ylGWkQTM83zugCdaEGOvnY+Qn3uuSH1mBZQvNcrDARMyhQ
	2RP9PLpmtSLFcD8aGpPmBYz1IWX2I9jeZ6rZpL99bRxdbae/OMHGyP0nRwxQOuiwBwWCDslYyzr
	olaEik/8J3v9w4GNFa/OTBFgji6b3ONWBWuTSHiE5Ix+EM9cxqH4TNCEIz2KcLS0M56tZpwRmCt
	/lBtVMO23ibhjeizj9j/ONHX5OFkbXlSThcYHkmk2UslQLcQLdYfUSOvGTZtnpkPDlbMcaDSZXQ
	pxHIy7iYlqfI8AJPeCnUBUYoGUEQmdP7/SX0HNnYgH29aCMDoY2962Te/urEPMK/ByI+3lGGK4U
	pBVvOT8J6euMN5gBbKO48XayPG+zHazQE9WSLF
X-Received: by 2002:a05:6a20:d492:b0:3b2:86a4:b01a with SMTP id adf61e73a8af0-3b783fca1damr2366965637.30.1781250681733;
        Fri, 12 Jun 2026 00:51:21 -0700 (PDT)
X-Received: by 2002:a05:6a20:d492:b0:3b2:86a4:b01a with SMTP id adf61e73a8af0-3b783fca1damr2366920637.30.1781250681103;
        Fri, 12 Jun 2026 00:51:21 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c8661b5ab99sm1307544a12.6.2026.06.12.00.51.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 00:51:20 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Google-Original-From: Kathiravan Thirumoorthy <kathirav@qti.qualcomm.com>
Date: Fri, 12 Jun 2026 13:21:02 +0530
Subject: [PATCH v2 2/2] phy: qcom: qmp-pcie: Add IPQ9650 PCIe PHY support
MIME-Version: 1.0
Message-Id: <20260612-ipq9650_pcie_phy-v2-2-b938cc2fc267@qti.qualcomm.com>
References: <20260612-ipq9650_pcie_phy-v2-0-b938cc2fc267@qti.qualcomm.com>
In-Reply-To: <20260612-ipq9650_pcie_phy-v2-0-b938cc2fc267@qti.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Authority-Analysis: v=2.4 cv=O94Jeh9W c=1 sm=1 tr=0 ts=6a2bba7a cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=SzMj-Qgm2C8wWq0MGEoA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: YtbppfSfSuCguzo6hSbWpbm0FjIcVwdW
X-Proofpoint-GUID: YtbppfSfSuCguzo6hSbWpbm0FjIcVwdW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDA2OSBTYWx0ZWRfX6OxwNsr0vN2n
 7Y5V/fA+1Z0X3xW9ZraMXRRdPlMYHwOpSskqfRu6K0DJreinamfw8/HLuOPUmAdTgEjXa2T8xcr
 5yVb7WTMyS9MbYKs1iOegYul83JFIQI2/ey6Jl4mKbQt9tQxQDjd8y0odUPl4C6qdthMPMjn8BC
 u+atJCw+piKlyFMgrYTtrTLoU7p8WmZ5WQaNei79qc7waxw2m9KMiGUufAz2W3UrKVrZyCnQVjp
 ULb479wedv0FU2QL3apW8LKuhAfetwXX4ZOuwnmTqm6rEfLYJwdu5yidlm8OcZQqiw1e8aSN6O6
 iqQOeXRuUvOO2Dw601vX64WCokW1QI5dDCzuu0FIW0XEQB784wXxL5FxdY35qN/Vo7kJ86veZi+
 usm4iuQ+HMyKa6PBEw2PUU61FncUSsf1VLw/nvQnPripwY2M5w15XSr0diPkU9VTHW13r0Bundj
 O3abjnnwI3v5akBxD0g==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDA2OSBTYWx0ZWRfX8l+bKMS24+t9
 CuXfLQ4GTHjd8SQGpHJ70gLk4U//cmg6cgtjkWz0nfWbc/xIMsT5ka5DPIb0CrPJm+FByhfawt6
 ZA2xztZxMUq4g73lwzJrhxlT278zDVM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_01,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1015 bulkscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606120069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_005123_933789_F91C4323 
X-CRM114-Status: GOOD (  10.75  )
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

From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>

Add support for the IPQ9650 platform, which includes three Gen3 x2 PCIe
controllers and two Gen3 x1 PCIe controllers. The PHY instances require
the on-chip refgen supply.

Add the IPQ9650 Gen3 x1 and x2 QMP PCIe PHY configurations along with
the refgen regulator supply. Note that an on-chip LDO, driven by the SoC
CX, supplies the PHY voltages without requiring software control. Note
that IPQ9650 does not support CX power collapse or rail scaling.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 220 +++++++++++++++++++++++++++++++
 1 file changed, 220 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d3effad7a074..1b94c411321a 100644
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
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH4, 0x35),
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
