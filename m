Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE788C61DB9
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 09:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ha1jv5kXZyUDHFQh0dlnjMnvC/enGDriuNr5g7Pa7Yk=; b=GdPqNxbuGdI06h
	d9a5vrY5GwK04dn9gr94/ir+q44W0xa8LSydvVBVMDpWS9m220FOOpF/gDEn6cNtBQYPC75s6nIqO
	JhiwvFpcIYY79stMgWzbyOSgnTeH8Slfyvd35e6ufaVp6H8Qo7dbg8dfcA8AhXsLhCvWN39RrLAdW
	bOVlsWeb5L+0wNKhiAMTaYEuRml9ynzkPB9ue3zNDNlkW0C9XiOstwmF9qOeicWbFrqr7PQb5KcD5
	DKXNbrp7rD3jyZY7VXjAu9pGXLvwHhQvtgHI+iHORu5ZIS7WeYQ4VqR37XpkXclkmh/MaUpyEdVMY
	niK6SxG/agBKFR4tvWnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzt7W-00000005VB7-1jLW;
	Fri, 28 Aug 2026 09:43:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzt7S-00000005V8x-2svG
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 09:43:31 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67S66jak2045916
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 09:43:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/qRlFcmSygKgPY14wysfKaVSc27D8NeNUpgGaEDe8BE=; b=ExleYb/MbLDVEBHd
	WBAq+KZgDyhLu1OJ3zS12TWdaCVgOOVnVv9mw+lgIOBv5LSMqyYdQeh1Qe+fsD3K
	B1GeiYG23GlZZK3YdoJDgoCFbYt4jERAacS61ow+QCvkB7OK2hOAJ3It/FiKiqMR
	lkqsXhdHZObKyiIkSQwOQm/dXqF7Yjs9FUZbSL0+TGclGpZhtZysZmOArQEOXE8C
	nhnewWr3qWFUuELIy9lV0jgLu6izHfjJjPRM3go+W41gvJDQrxIFsZ28wnK9Lzr3
	mef++YY1O6PG2iAr3ouuDABwWWXLPQkLMyjNxRVp+dxaHd6XqPJoyWZN238kIzmu
	SWpiLw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb1v39j4h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 09:43:29 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2d7293f13c6so11482575ad.2
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 02:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787910209; x=1788515009; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/qRlFcmSygKgPY14wysfKaVSc27D8NeNUpgGaEDe8BE=;
        b=GHGZEDouQKln2tt/oCC3HLmQRu5/tlTm2QLWnZbVK7QY80LrpPaqYS3TwJrBfxgJaF
         /sND0zZtCdKpFgPAtACnZak1hhLgLSUv8uzx2FCmg5mGgap+qWRt6OcKpIN5zIblSVIg
         0EdpqA9lT3QkqIKKAnkDKjJjNgb9SN6vWxGA46jfvz1a3wL5KtS4InCC6Hdy0OcEHMyr
         KYE04oNHzZAAVbIBBQ/9Fy079/Gncw5DnJFRkSwrBN7QeEwvSIEkW7bN6QwlAKshq1mj
         xQaStbKKHavI92gIHh0C87FH4QSGtvUD5t2Px/q+aXs44HpUzdC0/p8jxiMYp7K5avS1
         9BEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787910209; x=1788515009;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/qRlFcmSygKgPY14wysfKaVSc27D8NeNUpgGaEDe8BE=;
        b=MYGRBeYZBvyT3Q1fwOi53IRWnDETtbAiG8mVmiN3fN/zwMmn/yYNpqY/bxs30XoSwe
         fsYuY6KW3Wv/e5Tc8o3Bv5XqPkWW29L821gXVJS09eJqTI7oJmlcwLkfHTx+9BiXNcrN
         s84f5Cf1LJEq+NF8ALYFGkT1CcCX3DQThz6vMl5PVY7e7/LzL6Qg9lG1x+iPUrIPl0pf
         +j0ka8JGP+CAtBSDnPy09daBT2u5JJiF+PYlits2taTlV8bsxxeh0MDnsIHCTK34vCfr
         m5QSTKQ7bYs4MlRkDNcks4yKEyqffTtYd7cBy9lk12qu7Z7UPchRoH07cIfX1bAuHZBp
         NxZw==
X-Forwarded-Encrypted: i=1; AHgh+Rp0e625E1viMkmGUTAu4TCZE4QLeLQzJA+s+B8fAARduhoimFz5RdgO5uDU8K24D6UydwQQy5Epenk=@lists.infradead.org
X-Gm-Message-State: AFuF++m3y97NZ+gzdSnWkwtZTdnMAhYyVKXeB3DYBuZZzfAvk4XQqMGt
	zQ4IbrDDqgnBjUqoWShgc9ochPrLcDicz09Tnc0rQ2dQhHU7jHOPHoOe3mTtYlJQFSQqixOC6ij
	lH5pBcKh6z1TSj+Cr149AEQ4/wow6zfWrO9/h329yhhmntZWkPggiTRAnVAc5s3aTCC2TvWMh/v
	kX
X-Gm-Gg: AR+sD10wS/tGvyKIjDIimYrubptPi2fJmJjIhR5SP7doHA74TKePgRlrROTgQ/to1yr
	MaHQSE629gIANYmTu84eBWoiEaDSX/5lzaGOPrr9DWYEsB4u3GQznfOZrCdSnVOZlmUSeUPW2vj
	HkUiPKEA58z0pCe7cHOmIILVl3YHlVj74A6mfiYZpN8oM4xp7QlMfuf4vdbn4++tkRKwYYQxLet
	Gk2wK4+LPrP+RUxw4I7AKEEIeFgJkrDEWKbuhu7nd6sU9/46Si6BKH7t+BIN2gSVj7VPJl16iz1
	6Qz7wqLBxNM5eN1wVn5FxucrWhZ32wrhQnvHDm4YwXwVhDMP6voQle9e32P1i9wHwd+I/rcf20F
	64/By5gefusw+fnWVB1tt26uv9UY=
X-Received: by 2002:a17:90b:4a42:b0:37f:e326:6557 with SMTP id 98e67ed59e1d1-396d0e7c071mr10409586a91.4.1787910208687;
        Fri, 28 Aug 2026 02:43:28 -0700 (PDT)
X-Received: by 2002:a17:90b:4a42:b0:37f:e326:6557 with SMTP id 98e67ed59e1d1-396d0e7c071mr10409518a91.4.1787910208235;
        Fri, 28 Aug 2026 02:43:28 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286f995e60sm4166331eec.22.2026.08.28.02.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 02:43:27 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 15:13:14 +0530
Subject: [PATCH v3 2/4] phy: qualcomm: qmp-combo: Update DP PHY common init
 tables
MIME-Version: 1.0
Message-Id: <20260828-glymur-phy-v3-v3-2-8e73ce7c4636@oss.qualcomm.com>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
In-Reply-To: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787910197; l=4620;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=XbPxVSk6L0oRrRG/BJlHisKaCA2cnH0nHYc6kchbpjY=;
 b=8jSBWj2dYaoHn5RI78oFoNzv8mWQ7E3LX2u/i4n1o8f3HFxtFhNJ0rzsbMAt64Rteg2pSS8zo
 +ObiUws6aCwBv8205IXxYV097d0obQBghGbL0EKaSuPSr2U3Aa+hrF9
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDA4MiBTYWx0ZWRfX9opADCsoF+bo
 6ZL69JTZ3IvJGj80zpQWFBg0e5/W9LcRl0l48gXBUuCQl4xzE+GQkyDeVRqiA8oAJD5JvrRjVGA
 SxpFFB0g/VkdOJi5n0PIlDzKREz72YzLlrOIDhnF0BDdPWynpmVW1Ypx5m/T6/u3u45hoI8vsHR
 t/4rYImrYH7YClLtiNfuoiCr85n+CR6115xxpOHouMuCoEkVzv00ONC/hRycf3Vze7Bfqo42BU1
 kWVo0NZ0ipQFZpeaKj0p28cttaLBR7gaaUHUVz3TZeCOkiNt6FWc+ObfxYbRQMAQa8DEq1dkCB3
 E1Wr3zt7Hjh2i4xOIYrsKBygZr5ovK9acxZELLo0AWy7wpCYBCnrwQbGIQfVk5AzIcoX3UCJTRK
 BaBuUJfzlusbycFkuaePLrAXpwDoC4EU43+XkI4VJpiOQ2Jpp91It3bPBEB0645X/6rxWEzQ1yu
 +V8/XoTBN8v5stEq0xQ==
X-Proofpoint-ORIG-GUID: 8_3wqI7k7WJ-eHhG1FNSFxiyuNUCHFbC
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDA4MiBTYWx0ZWRfX+bsE2FVsUK0Z
 5PTD/HYIFqI/46qEtZWaQQh+xP1BW4wE2/kR+KDG+5GSIFzwF6tve1rHicN7f7A9fJgPTKRY8Eh
 QGGiHMHtNNm9tXsKO+7Ovz4oWB6fPD4=
X-Authority-Analysis: v=2.4 cv=faedDUQF c=1 sm=1 tr=0 ts=6a915841 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=hi1czDCzuCcYxUEklLsA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: 8_3wqI7k7WJ-eHhG1FNSFxiyuNUCHFbC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_02,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_024330_858763_22013918 
X-CRM114-Status: GOOD (  10.65  )
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

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 4d31637f1dce..b2ffc20e8f6a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1494,10 +1494,10 @@ static const struct qmp_phy_init_tbl qmp_v6_n4_dp_serdes_tbl[] = {
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
@@ -1512,12 +1512,13 @@ static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl[] = {
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
@@ -1553,26 +1554,26 @@ static const struct qmp_phy_init_tbl qmp_v6_n4_dp_tx_tbl[] = {
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
