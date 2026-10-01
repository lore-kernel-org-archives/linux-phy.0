Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED4E3CA5FB3
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 09:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tak+YLndS7ADIkyiXC2V68asYcOktH0IRQ4N29oNPAg=; b=QjMwasWYCOEknc
	Fa/t0oA6GRuPI+zVlHAsdYuD4dM/FEgFiGAHonI1LcgEU+BisAhYat51+bMoVkkypLH5WSaMPnUeG
	pAM9bf5h/6plKrGu0z0F8w9u7uxi9e6ohirKB7LUvi2ver324MpIQSA0FL70teS4RgAoJ5/5XAeIe
	+3SlUs471E8psOguMvGp/k7mB3npC+Ns5iCEySc8Lu7X+SjiRGU4GuyI4ss7Tcnsf1f47KhpdkDrr
	huhsg1vyqjWleigIR9XPbEq0+zedcfmJ6O+/0hybHhtBUOEdVkfCpvW15n3POef2vMC5KfILzcluP
	VIyhDWS+MCT89QCeR28g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDCe-00000008O7k-1zLD;
	Thu, 01 Oct 2026 09:35:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDCc-00000008O6N-1Rws
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 09:35:47 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6916xRw91289124
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 09:35:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wyMNhz/1GK3TS0U7yd/IUSi8hDU2xudF2XWXP2QxBZg=; b=EGbTSRny7AM2TzWm
	mg825CpKA/N2WsmSZzpKvrjMJrAB5gsdce9Mu2U1oRlzcnw/9ipcga17Xfnk6IP3
	ifd3zl/1lRQ2MJbnWu1aP4qtUwBVndYCCzqsU+ZZ6rlfFjaOKLAwrU0R549d3LP5
	u5U32WL2tNcGyFS35hEhW1a8Ga41Z5f+Pbo+vOA/rbLF0NihgeewTEX/yvQn/eEi
	9TPdwo3QmMNR3RMjsI8jRLZKJSL+iRsmJZFpGuIwZgO4wQyJFmw2MoNg0p1X0B2+
	wsMXoRWcGhFUpqUUMsRPJ4RRLoqJQObwdorS2g9HIZR6hkg4QnOeEgKPteJ6uLGv
	2Suv1w==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h17pjb4kb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 09:35:45 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8872ada18d7so1459026b3a.1
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 02:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790847345; x=1791452145; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wyMNhz/1GK3TS0U7yd/IUSi8hDU2xudF2XWXP2QxBZg=;
        b=eTq4vFe99eUixmCfdYoHVk+xkNDVKfzz2pdiZ0OQdoDdQJfyIhdbKhWITryLD3Ellq
         0It3SKPpBzNX9Nfexaxnpz4jcfPhMsX3Z9xVTLc90bAqVg2gou2MDoWJ9s9n+Bz3PJ0w
         S9bq5QUYO9QoSX3d2gKTLrYKlzjxijyPU4FzBhil0ojFBcy5G+9F5fEh8BpoGcaUiAOP
         EqAmeTNTm6epaZZQZPSjjvNajgIf48x9k/bfuVX1WK/jNNtjgSpHyI9gu/SBBS7ze0Pz
         dUy0UfWC58F2MJyphu/auUDodwcFRTCZQa6+9nJBvqT90qlgVZv+8U+3G1P0o7jx+11h
         8HXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790847345; x=1791452145;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wyMNhz/1GK3TS0U7yd/IUSi8hDU2xudF2XWXP2QxBZg=;
        b=x6jtzJFb0qN6xU/rEIfHd2llceat80cRvzwUhE1s07Vwog+c/O//VCCX1+6gxdKTbe
         2yOspKvlFKVVmw2N/SL2Q0v946xO9Gg2omQRsiOkuotfgsUMV+GqLnb9TwYXD1HW0bIn
         B2U/shxnvJ50VtxwVAIWKcp08nS+l6uvK2E64sRQDJYAHtjaHwnwXyL8Qc1bqEav8KNq
         9nxnLyvRKIOCgL05ImXPUuIuDg15H8OyQoMTRCt6fzOGgNWuZ8z96x92cweC/n2L/95R
         xBg+28C4Nu5STnf3k4LYx5NRnFxyBAhro5nFAPlo3GjMSWGjB8vX1aeB2HXVEg3MZwX8
         UCZA==
X-Forwarded-Encrypted: i=1; AKwUvByLVtrCRbGVIwtkE12/x5DFWFXHPmYrn4HZYNxwjQZiydG1bTDnuwP3tUgJBmyoJNpNzWtSgYMYtC8=@lists.infradead.org
X-Gm-Message-State: AFuF++mb7VIjit/QkAq8GbgLGPBG5n4vlkov84GYpCzzGiMILzXqyt6R
	7zPiRyR0jWlqj0h4ZcqLyg9e4Zk6aYbXB4F6OZMuh9KlglOmyJ2YCCxrYmSda73CuGO9+TFJ5xX
	G2MK596TBt77VwlWeRWjtfLL5tjjL+UMjXAAgUNKAwDzL5b2kRIrCXSOHLT7nEwoq2DyuP08d1n
	+t
X-Gm-Gg: AYBFou0nb+A4KpUwUwbiH+uLBhhCWJKEfYophu6lj9wf3gIEMbiTeBGlWug+0q5Ovd1
	D0P52m0JRAJrP37V86ipfMp0xY1UVHmQhtQRNi1fnwdVbW0z03OtDTEl5qPugC65gcQFlqmeYmG
	sJOx2SyXHHzJgZCRBRuF4H5d7D3WMgPZK01iBODw9roTpqFPidKHYXQGpDSajWQhH8CGEAD9xo0
	CJ1vLdPYdfFBtr9T6zroHWxVHR5iD/3jeWwlRZmlhPtM5mDt7oUZCeHQpE48IiUmOV27E8lhAaO
	E0KpDKqzk5/4v0R3OKf7jMI5P202cDfQOXF6NwTiXr6sWgBcsYli9Q2TWVQ5w64PvKmgVK6mmHa
	FjA/2BCxHCGWQHIu34kdLlYe0eEU=
X-Received: by 2002:a05:6300:670b:b0:3de:46cc:b637 with SMTP id adf61e73a8af0-3de9e851a4bmr4502231637.64.1790847345003;
        Thu, 01 Oct 2026 02:35:45 -0700 (PDT)
X-Received: by 2002:a05:6300:670b:b0:3de:46cc:b637 with SMTP id adf61e73a8af0-3de9e851a4bmr4502203637.64.1790847344515;
        Thu, 01 Oct 2026 02:35:44 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7e54bf4c4sm1152944a12.29.2026.10.01.02.35.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 02:35:44 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Thu, 01 Oct 2026 15:04:27 +0530
Subject: [PATCH v5 10/11] phy: qualcomm: qmp-combo: Fix Glymur v8 DP PHY
 init and configure sequences
MIME-Version: 1.0
Message-Id: <20261001-glymur-phy-v3-v5-10-3848c2615d5a@oss.qualcomm.com>
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
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790847286; l=6089;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=NiCUJS1q+OAhCUfWyUVgKtc9YSGbF+jFYOHfmFgoBvE=;
 b=xQv/YVM3mxlLsKrbin/7FrrGVtCIooqan1EJERZfJLh17wUeV3YhOEEA/elA9dew9Eg15GNdB
 FtxowpLXItxDCF7+MxExRieAd47PVt5cKg+UavGE8BE+NduG6R8wOMF
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=eqpKXYpX c=1 sm=1 tr=0 ts=6abe2971 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=ShocUR_Qg8epsXyAbykA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: _J_fZl8iaJdj2rb_RWcFC7SjzrGGnxUb
X-Proofpoint-ORIG-GUID: _J_fZl8iaJdj2rb_RWcFC7SjzrGGnxUb
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX5eteXPYHmAeO
 pf4blGzAx5tuCU+pr8jf/K5a+rVhQIJ5UYA9wm3erf3O3FM+MlLYWt8EtJfrb41vwVJBfFUxnGh
 mDwDFZ0YiZcXe1WOm2BGE1Yizq6azTM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfXyJ8+GXfismZt
 H758OgI7LzmtNNEolj+IM9rZOP4gszjRz3HHrcOmmq4Xc+MnAxkIrzV7F3jSutOrFcPaAYLcuAO
 4Vkb2a07+OK3gW5vREo5+i79TZ64qDj2UAWcYru5eSlvVlUYn9Dswdv/Eg0as24KUJDLZAzfa6n
 AOwb5DeKtmQ9B1rMcbXxkT2liebtHJMoS3gwbm9XT2dg0YuPaSjtURkeSpYVKNMb2ud4vfjvjtk
 wBptgT6ObtD9lvDfrCBxwkVzjv3iZhFtQ3XJzYLI2Zla5zvVsYbuSCVwoJ8QQfVltmJdIrm8zyq
 YgoL80f3dfM64oiWQVhS06Cvj33p88Y34qp+R/tLnBR3MclnARIFHohmfCou8XQmdMws4NPjT/Q
 LX8rDrFIbK1vXXtXHFSNTZmlCrjgZPFixG+C07HvoDjMYN+TntKnyKdRojuY5QVkP4mruHTk66q
 mcMsrw5PhDv+TAOnadQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 malwarescore=0 adultscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610010038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_023546_408108_2A9F16BA 
X-CRM114-Status: GOOD (  17.21  )
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

Update qmp_v8_dp_aux_init():
- Add CLK_FWD_CONFIG_1 initialization (0x3f) before power-down control
- Replace PSR_PWRDN with LANE_0_1_PWRDN and LANE_2_3_PWRDN in PD_CTL
  to correctly power down the data lanes
- Correct BIAS_EN_CLKBUFLR_EN value from 0x1c to 0x17

Update qmp_v4_configure_dp_tx():
- Correct default TX_EMP_POST1_LVL value from 0x20 to 0x2b

Update qmp_v8_configure_dp_phy():
- Correct 2-lane and 4-lane driver enable values to 0x30 (was 0x10/0x34)
- Add CLKBUF_ENABLE (0x87) programming for both TX lanes before driver
  enable writes
- Add TSYNC_OVRD sequence (0x03 -> 0x23 -> 0x22 -> 0x3e) and
  LALB_RESET_TSYNC_EN_CTRL (0x0a) programming for proper TSYNC handling
- Fix QPHY_DP_PHY_STATUS poll to check BIT(0) instead of BIT(1)
- Replace post-lock TX_DRV_LVL/TX_EMP writes with two COM_CMN_STATUS
  polls (BIT(0) and BIT(1)) to properly verify PLL lock completion

without this fixes following can occur:
- Link training failures or instability at higher rates (HBR2/HBR3)
- Incorrect LFPS signaling timing, potentially breaking USB3+DP combo
mode entry/exit

[   34.109482] [drm:msm_dp_ctrl_link_train_1_2 [msm]] *ERROR* link training #2 on phy 1 failed. ret=-110
[   34.111460] [drm:msm_dp_ctrl_setup_main_link [msm]] *ERROR* link training of LTTPR(s) failed. ret=-110
[   34.118118] [drm:msm_dp_display_atomic_enable [msm]] *ERROR* Failed link training (rc=-104)
[   34.118156] [drm:msm_dp_aux_isr [msm]] *ERROR* Unexpected DP AUX IRQ 0x01000000 when not busy

Fixes: d10736db98d25 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 62 +++++++++++++++++++++----------
 1 file changed, 43 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index fcbd7b974be0..5bbb2b5f8c74 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3856,12 +3856,15 @@ static void qmp_v8_dp_aux_init(struct qmp_combo *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_PSR_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
-	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
-	       qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
+	writel(0x3f, qmp->dp_serdes + QSERDES_V8_USB43_COM_CLK_FWD_CONFIG_1);
+
+	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+			DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
+			DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
+			qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
 
 	/* Turn on BIAS current for PHY/PLL */
-	writel(0x1c, qmp->dp_serdes + cfg->regs[QPHY_COM_BIAS_EN_CLKBUFLR_EN]);
+	writel(0x17, qmp->dp_serdes + cfg->regs[QPHY_COM_BIAS_EN_CLKBUFLR_EN]);
 
 	writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG0);
 	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
@@ -3888,8 +3891,8 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
 	writel(0x27, qmp->dp_tx + cfg->regs[QPHY_TX_TX_DRV_LVL]);
 	writel(0x27, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_DRV_LVL]);
 
-	writel(0x20, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
-	writel(0x20, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
+	writel(0x2b, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
+	writel(0x2b, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
 
 	qmp_combo_configure_dp_swing(qmp);
 }
@@ -4078,39 +4081,60 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
 	} else if (dp_opts->lanes == 2) {
 		bias0_en = reverse ? 0x3f : 0x15;
 		bias1_en = reverse ? 0x15 : 0x3f;
-		drvr0_en = 0x10;
-		drvr1_en = 0x10;
+		drvr0_en = reverse ? 0x30 : 0x10;
+		drvr1_en = reverse ? 0x10 : 0x30;
 	} else {
 		bias0_en = 0x3f;
 		bias1_en = 0x3f;
-		drvr0_en = 0x34;
-		drvr1_en = 0x34;
+		drvr0_en = 0x30;
+		drvr1_en = 0x30;
 	}
 
+	writel(0x87, qmp->dp_tx + QSERDES_V8_LALB_CLKBUF_ENABLE);
+	writel(0x87, qmp->dp_tx2 + QSERDES_V8_LALB_CLKBUF_ENABLE);
 	writel(drvr0_en, qmp->dp_tx + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
 	writel(bias0_en, qmp->dp_tx + cfg->regs[QPHY_TX_TRANSCEIVER_BIAS_EN]);
 	writel(drvr1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
 	writel(bias1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_TRANSCEIVER_BIAS_EN]);
 
+	writel(0x03, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
+	writel(0x23, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
+	writel(0x22, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
+
+	writel(0x0a, qmp->dp_tx + QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL);
+	writel(0x0a, qmp->dp_tx2 + QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL);
+
+	writel(0x3e, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
+
 	writel(0x08, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 	udelay(100);
 	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 	udelay(500);
 
-	if (readl_poll_timeout(qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_STATUS],
+	ret = readl_poll_timeout(qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_STATUS],
 			status,
-			((status & BIT(1)) > 0),
+			((status & BIT(0)) > 0),
 			500,
-			10000))
-		return -ETIMEDOUT;
+			10000);
+	if (ret)
+		return ret;
 
-	writel(0x00, qmp->dp_tx + cfg->regs[QPHY_TX_TX_DRV_LVL]);
-	writel(0x00, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_DRV_LVL]);
 
-	writel(0x2b, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
-	writel(0x2b, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
+	ret = readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
+			status,
+			((status & BIT(0)) > 0),
+			500,
+			10000);
+	if (ret)
+		return ret;
 
-	return 0;
+	ret = readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
+			status,
+			((status & BIT(1)) > 0),
+			500,
+			10000);
+
+	return ret;
 }
 
 static int qmp_combo_dp_configure(struct phy *phy, union phy_configure_opts *opts)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
