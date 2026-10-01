Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ED89CA5FB3
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 09:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mRRr+JAsd6gAa8+Ww7ygGKyC/tZibkqJanV5+pmwFcc=; b=VbvAXZEZhW8O8g
	TFXI/guDd8ujwHwCKK8oCeOlF6ElFUxhxb8znse10Q3c4T9XfCzjnvT45vulWoH1s6bxbpU6usDU3
	P8KMcLpmJcJ3yFYZQ5Kd6SOn9vBgq0fHM6TtA1UiP3yHJFsZGYc+90lpzTQGahm0P57yrr6Y20lH4
	MZDcUqAriopA02CD1rbrQQO8rgdOEytVRsaImJy6SsSskrX2U7M3TRV5lv7f8OP13lGDtOs4kPaAp
	tklPb8mqoBLEkPfdAuqFsv48OIsq5nKUf/kMUjVrtrB+mzHX2dj3o9+x73mLaHHI48WM2cywFFi5s
	Fa3xKGd40nCrrmOJT48w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDC1-00000008Nrz-1e6n;
	Thu, 01 Oct 2026 09:35:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDBy-00000008Nqd-2z1d
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 09:35:08 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6916xT5e2176849
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 09:35:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UUiTCbGa4/o7uTuYtC8HM1UaA+Bob73fzlka+64F/24=; b=jIYqJG8aN86BS/4H
	2z7TFy2kIWe85K35HFO5izQXlOeN2AALfzag9CKZD/gMCVRD5tH8GUjR6EIKfgLz
	mmaOd5w81bfxVOfE3GcGALcF0XIBD42by6b8iOLnm0ZlsZX6tLn6/oIomsuirYbo
	eKfJKzgEY5ehf84JYeRaF6YgnULCcgfTXjATyjIg715pTWVwwRiZslveadbAkNex
	94TSK/AXnkUqRvcXYfILMWA/dOtdSxnePytbO9n3VuiOPk0krA5MArRBEd+Qy4ws
	PQ8z9b0IUH+UiSx+lBg5iamZFQW3beWxVwtVcHQ60vb/LqyNlNHv7P3j07s7Zn97
	9yyXDw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h1h7ns1d5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 09:35:05 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cc7d2ff0087so1668363a12.0
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 02:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790847305; x=1791452105; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UUiTCbGa4/o7uTuYtC8HM1UaA+Bob73fzlka+64F/24=;
        b=fPTSkUFb2KAs7YW/tDbyvzoxwnJ6n1kf/RBtS+rpafo90JFG9ZJaLYu/Ix87951da6
         veTFAovy5rF8gmao864c74T+ICv2UZirwXE0lqlPlbZcjjFLkYeCzofSrHJm00HXZGrb
         PF1/ZpaiViE820GLdvIv7YWTxyro5CRPuSt1L4rUyKo2KKLsKcT3c++aeCVXv09SudDi
         dg/Xl+70XSKaW1K4wADr+TfwkLHrynVG5IiSiaW+/FdnI9IhgRAlR1uaKLRK9OoCcXwk
         lttonbmB1C+6Sy1sBpLiCRzAsK7LWC8mQGICw1S32oqK6enoKCaG8pfoQ/KexRucyjBm
         6XhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790847305; x=1791452105;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UUiTCbGa4/o7uTuYtC8HM1UaA+Bob73fzlka+64F/24=;
        b=XykAhXm06GfeGziVcx9zIGhGVzpkbEl3F+WRTTJ5TFC6hq9qvmDflmswUW4fzpLy5r
         Qlh99RebyVb51g6ysw5BLleezkD5L6CDrG1XIYvgZerbeBVUNaJR3mNvjLFc81g+THzJ
         7ejiZbAYjIe5zgPTBaRdz2djGWMyLE7oZ2HsSTc7cwh6JqxPmZqzQ2XPrfl8uqfXYsVP
         MYY7HPrh8W8PEi6ICULEhEB/zkQNvl1vDuMYYUDpbdr0JU9Jd4hGlzfHuJwapG6tZmYN
         k6hD8v/kbhl2mJDJKA2NTP42UTCvwaErYwB9d0YetNw9I1cUS7pbHbvAMdYoKvI+8YIV
         cHzw==
X-Forwarded-Encrypted: i=1; AKwUvBwcgyqiUsAh/aJuW4EThSS92x+yRFHDw9l7+Ml0Eb2nX8i2+e7mSNgOXIoLgK1lSMXFgEe0Bx+/Wgk=@lists.infradead.org
X-Gm-Message-State: AFuF++mAksAO0Lb8fCUZYH2BGC75g9agzGt8zwwHdQ0PVn6622t+wopB
	pL8jC2JajKVlPiudm8FZFfBFyyJ8ftOQCDa6pGF0s+rK78D+qHJSC3p7D6W+G4z2CJdk+o7ICBc
	9Js1izZsJMwwbVsQgaawvWx9CAeHxv5ce649C4fG0J7NVVc1q7JrhNZ4j4APfxsL2YEXtJ8LSrn
	TN
X-Gm-Gg: AYBFou2RkqO555OWs2VfPrDOasSZJxrniGqrBFHWo8/L8EI2N50sGvJ3Mx/qRfgs7i7
	glrbhTJBVS9GEMIfHLxOqXVHiATi+DD54saQ2O+7k8G1eLEX8NAFbaGgp6vmQgkasI8rckiAyDn
	YEkcZ9+9kX/eNJclHx6ep3LsjmiID3ITvwGVKOo/1dGn6k4iTkrnEPgmbUYt7aIJTUWVrmz41xY
	i7c66FvL0Rn/WIiMLQ8U4r/32tWR/m/c/M6/MUoHm6XrZxnd/sjzTFO4fdouyx/wGoUQSN3Xgwo
	XTpRJ2cw1rzIH4UXxc/46lZcGRh2ZdnKMhK1FoLqbp/pQT+0DTPBOxlK+P5cyfB7JfeKpsRZM7Z
	RM5+PWY8m4pKNgFtwzts4ByLmMNs=
X-Received: by 2002:a05:6a21:1f8d:b0:3dd:a196:9076 with SMTP id adf61e73a8af0-3de9e870be8mr4590618637.64.1790847304714;
        Thu, 01 Oct 2026 02:35:04 -0700 (PDT)
X-Received: by 2002:a05:6a21:1f8d:b0:3dd:a196:9076 with SMTP id adf61e73a8af0-3de9e870be8mr4590593637.64.1790847304166;
        Thu, 01 Oct 2026 02:35:04 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7e54bf4c4sm1152944a12.29.2026.10.01.02.34.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 02:35:03 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Thu, 01 Oct 2026 15:04:19 +0530
Subject: [PATCH v5 02/11] phy: qualcomm: qmp-combo: Update DP PHY common
 init tables
MIME-Version: 1.0
Message-Id: <20261001-glymur-phy-v3-v5-2-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
In-Reply-To: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790847286; l=4909;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=YlcdYvbpQO/rrkRq9CEqoTuD4BXSpKJcWXMyS8GFMlQ=;
 b=yVHbDaiVaBkBOM9VAzuVym5lu5pkSH+p08plNEHSXeE2kxCdwCZMpJlFLiubmy7DLM2fS7N8e
 0XNR0I7WBcGBe/VTQasbgmrAlZTTwDp5klr2RLmd9IDCSljzn6Nmg3h
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=OI6yTiaB c=1 sm=1 tr=0 ts=6abe2949 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=Whk6PM20rIcDluf30OkA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX/tUUS0tsaYau
 9GwTrm6cwcQuieE0Ytwetx3JSsrJ6YN0LoWyLua//+LvBKNmAKnPiiX6/RjpFoE6Azoz2txw0JK
 0EMX4KOKemwZVy8GRpjF6d67txndqZY=
X-Proofpoint-ORIG-GUID: JcdGTkkNBbjWr60nFKmQexqXR7SjCpb4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfXxWpV5r3oiI4Q
 Y0GhWAwUHNfo1cwsJ6bSzj9IlJFD0+UNRFI8HWzm/6+u6Yi2peMw6lHMfZAIxu3NPFFY6q0RwWV
 e6FLoPGbigBnx333G6q4Vtspn2QCHP/xW/c7WaFQ5MsRWdDi7YZyvYk7NkSzGHDTBmG3V9SEsPL
 uRrs5LkytES4zKYxRnVHQP4GlM3X0KvsfROkjMYb+ZrV8yRB64rg36OHAowlqkwGjiOhnc0lJVF
 2XUlASsM2RpY2aKWBWhVPqodeQuiBxPhG6O4pWsFBZoCELhphVp3bc9y1uR/mk4Ws15mdYs1fuX
 vhD9P8ltrCe1/23GBIbu4djZL8GFF8lFGdk6RBI5YwPEcUeb9JyNqVV+A+vINV329XhGvVqHgw/
 ZtQsg0n35DPs41y0CuNP+/wckzynxYy/hdd9gJMBxNb1NtkGeEYwkck+GIUeBk3LRQaL1EFjm1i
 3JUm7xYf3tJYvdTGE8Q==
X-Proofpoint-GUID: JcdGTkkNBbjWr60nFKmQexqXR7SjCpb4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0 clxscore=1015
 suspectscore=0 bulkscore=0 spamscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610010038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_023506_914283_389DDFFC 
X-CRM114-Status: GOOD (  11.27  )
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

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Update common DP PHY serdes and TX initialization tables with
corrected PLL control values (MODE0 instead of MODE1), updated
SSC step size, reset control, and various TX lane configuration
parameters including emphasis levels and driver enable settings.

Fixes: d10736db98d25 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index dc9c30737ac9..8ae8b4e531bc 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1502,10 +1502,10 @@ static const struct qmp_phy_init_tbl qmp_v6_n4_dp_serdes_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE2_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE2_MODE0, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CP_CTRL_MODE0, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_RCTRL_MODE1, 0x10),
-	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_CCTRL_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_CCTRL_MODE0, 0x36),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CORECLK_DIV_MODE0, 0x0a),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DIV_FRAC_START1_MODE0, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_INTEGLOOP_GAIN0_MODE0, 0x3f),
@@ -1520,12 +1520,13 @@ static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SYSCLK_BUF_ENABLE, 0x06),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_IVCO, 0x07),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SYSCLK_EN_SEL, 0x3b),
+	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_RESETSM_CNTRL, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_LOCK_CMP_EN, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_VCO_TUNE_CTRL, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_VCO_TUNE_MAP, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CLK_SELECT, 0x30),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CORE_CLK_EN, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_CONFIG_1, 0x56),
+	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_CONFIG_1, 0x16),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SVS_MODE_CLK_SEL, 0x15),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_MODE_CONTD1, 0x24),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DCC_CAL_1, 0x40),
@@ -1561,26 +1562,26 @@ static const struct qmp_phy_init_tbl qmp_v6_n4_dp_tx_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl qmp_v8_n3p_dp_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TRANSMITTER_EN_CTRL, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TRANSMITTER_EN_CTRL, 0x1a),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_VMODE_CTRL1, 0x40),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_ANA_INTERFACE_SELECT1, 0x07),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_ANA_INTERFACE_SELECT2, 0x18),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_PCS_INTERFACE_SELECT1, 0x50),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_LANE_MODE_1, 0x0d),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_CLKBUF_ENABLE, 0x07),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_CLKBUF_ENABLE, 0x87),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX_LVL_UPDATE_CTRL, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TRAN_DRVR_EMP_EN, 0x5f),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_EMP_POST1_LVL, 0x20),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_EMP_POST1_LVL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_EMP_POST1_LVL, 0x2b),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_EMP_POST1_LVL, 0x2b),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_PRE1_EMPH, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_PRE1_EMPH, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_DRV_LVL, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_DRV_LVL, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_HIGHZ_DRVR_EN, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_HIGHZ_DRVR_EN, 0x3f),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_LANE_MODE_2, 0x50),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_LANE_MODE_3, 0x51),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX_DCC_ANA_CTRL2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX_DCC_ANA_CTRL2, 0x0c),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_RESTRIM_CAL_CTRL, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_RESTRIM_CAL_CTRL, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_RESTRIM_POST_CAL_OFFSET, 0x10),

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
