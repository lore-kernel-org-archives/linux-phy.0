Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5C8CC43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 20:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjspsY+CEJJ7CtP+/1RqhGsGunsPVuLxbKnLMVOyxWQ=; b=4Ok98DLd9DQBDq
	HLV42BoMaqHW2e5Yjsnc7i9hSiAH2Vmd4e/zpCnm0uYETi4syv7LnYR3hIChTT89pAdQK7peGhJzp
	xgnlj4l2o/8mFOkyguAhkwbDotz4FKoYodw1rXAeC0esuFOiKlNjXU/16bhmC9Z50I8ZT+RS1VAkV
	qRnp/BOKbknt2xLmsmfhzKTkprLAX4CyW4EU1V1VXsE2k/S+XfaUMuOveC6o4YN+8+UoUrq2BYd6T
	a/mn7Hg4Ol1MX19go/g4OooKfRKndAJ4wiTor8VFaS79LvCU8wRUEZvVG6Sv8w0mvULrTYi/LBzWX
	ocYvsdvd+rCOZUfOH33A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whCTt-0000000FrqT-2mi1;
	Tue, 07 Jul 2026 20:33:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whCTr-0000000FrpN-0XxI
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 20:33:24 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 667J5D7q495446
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 20:33:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BwZ54f3rAmY8tgJK2WNoCLDJhLOfDuSJyFr3rMr8eV4=; b=Ct1LV0VvNC0ID2xz
	TjyTXx9fd8PBi+4QXrlmMyAt4hCqBU5ybBzubznRDakHVZsL0UYIgIdgCl/6thZ+
	JGevV0m5HJ3/pMPvnVZa18Pi3fBDrf9+x/n28Ic8U0UKu4lk7WYvEHyjp+A7+EOd
	KnATA8Qy+hmMibSE+B86tB83Gc+4ceECIV4A3C+perWydn/DQgKo/qT39sZz3CWo
	0x4yIqpI3ZKK2gTqRiDd/2AQKcQ/K+pPd9rKeBnitAuUehTiWnH/o1e4NcXJQWI7
	Wnpyu7kUxrAhy6hJ0aaNPqubPotqbtRmMk/yLe/4F0zWk/vcn8ug2RKO3eNwmCn2
	pwBd5A==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8ye0jna1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 20:33:22 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c88e0d11a3fso3541293a12.0
        for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 13:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783456402; x=1784061202; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BwZ54f3rAmY8tgJK2WNoCLDJhLOfDuSJyFr3rMr8eV4=;
        b=FVjhUIWwDLUfQIWicJPIpblzPnSnpCjwop/gL3YFwbKEULNvPK6Sa7+/GXIWrNzaHG
         zrwsISK4u8PmVamHSjMjubs0Y8BZxKTLCa3MW9tYvfZ1ELGnKo69BgUbOZKT7h5qO9yt
         SRQnkQVE82CaBq0MhSoBM87VJ0Qpbwac82tRFlm/JxaLo/tEiLHp3yPd2j8l7a1OCptf
         DyP0xc3MabFoP4HP7mFnW0SkwPryCnOwTHXkMXkWCWlyevlBS72RWNnJQhL5DMADYq7R
         mFZVMWjSR8MS4yUDE7OdcS7nK/tJBVFSdr++ray8OPgkrn0wSe4Nk7tfhvI2Vinep47i
         O4Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783456402; x=1784061202;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BwZ54f3rAmY8tgJK2WNoCLDJhLOfDuSJyFr3rMr8eV4=;
        b=ksRwaTXcDLOx6ecD9fM4JabJta1AAAg316J4Yfzi/nX9TnZqbYmRs/c93IBx3rkwBa
         69O31aV2TTybxrBwdR4igPQRrAJwXwVveqzlohwdk+7vwxaipw4fvIJ0jlwIziHHs0ny
         Bl3sWv9SLkfW0FVkR1fG73GLdKVcXcEhLneNKfbfgZI4sh09DqwiElO68EVMo6fwZEI/
         7pgErH7Bmmt1RnYNHXou6ONIjJCwa7OykTo4ySs5+ocHIOqdBIQcrXrbUoyWk5vaM8qW
         FRr/cKje93HuFSAnzzg92cQ7YxG+ya6dYst3OrH4kj/2yFZzLwz6kpMZXTBzW7vEwRQ+
         0FUA==
X-Forwarded-Encrypted: i=1; AHgh+Rqb/ObokRiI81jwJWusum4kO0AUwZUGQ7jJbG68S6x5iYLMKR3fEonSutfgPHnrgY86Xt+5Zs1dHvo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJ05w+nO6BafGtWDEi0Y+/+691NkC3xZOHyeECec1+E7eKnvmg
	hZn4psm9+fJ8M6gLapme/03zoWcQmZnTKTZpvOj23gL48UGk3yZNgNP8HBnukzdo2jX593EKdhD
	6ZbO3fYCj2j5JMFVYb5LuTzcwdpOEAIK0bwBywEsSZ0a4DErHoICHwOC7if8+6499EqfK
X-Gm-Gg: AfdE7cmt33K3246Q8eR1wGCJ/uhDPIvI8BxYYHUUFe3Gr6DyAx6Eiu1/DUNvgLxJFFA
	L0rtggdOfgpf/LEjXzTSDswAKjwj0UB6LiXmF9Pt2dClpA2Culdq55Uv3FwOyhjKxiDWfzD0Xh9
	tMMoyLV/jPYcXJCZo2M4sBsz3d4K/tZueLDqesTolyCl1CbZvlfJGnIIEW1bpcm5UjIKfe/HiVX
	hBoBltxgn+3Djm8XTWO2SPVONDx+TGXJ6bJD5cId/uPKJRa+OSLWrSDzT3chavIPoTjSxVfVDT3
	3DLyoMp+mSARtiuwUtMZ2gx5841RyQN66zFQeXxyaYOgrR7LFtv29IfgW2VUgFxOdN1DxOxpq4U
	GkhD5aGKLzPSEm6pDMJEEYEZqfeQolOPe7kCtxiOqpXDNQbws
X-Received: by 2002:a05:6a20:b787:b0:3c0:9c19:b275 with SMTP id adf61e73a8af0-3c09c19b2eemr5009783637.67.1783456401768;
        Tue, 07 Jul 2026 13:33:21 -0700 (PDT)
X-Received: by 2002:a05:6a20:b787:b0:3c0:9c19:b275 with SMTP id adf61e73a8af0-3c09c19b2eemr5009759637.67.1783456401233;
        Tue, 07 Jul 2026 13:33:21 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31174839f89sm11975804eec.10.2026.07.07.13.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 13:33:20 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Tue, 07 Jul 2026 20:32:49 +0000
Subject: [PATCH v4 4/4] phy: qcom: qmp-pcie: Add QMP PCIe PHY support for
 Hawi
MIME-Version: 1.0
Message-Id: <20260707-hawi-phy-pcie-v4-4-8d9cc6324947@oss.qualcomm.com>
References: <20260707-hawi-phy-pcie-v4-0-8d9cc6324947@oss.qualcomm.com>
In-Reply-To: <20260707-hawi-phy-pcie-v4-0-8d9cc6324947@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783456392; l=21807;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=9CYEMhKLPo46dI0iYlJd1shNfiIAcIcvJxi18vbNGHw=;
 b=MMJEuJTWAIQ1LUdsv7QMvMnl+A0L+j07cZvaTPZoL0j0QrGu1Q44/Jg0Uk0GrG0D4eRtzfVXx
 TIqYxlOmfYFCVbCdU+x6SBfoAm7t9f7O3kGj3qsOsXiEsn7DwtCwgUm
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-ORIG-GUID: 83loX_VeNygEfTjOQfrVb6TZ2B4mzVL-
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDIwMSBTYWx0ZWRfX7jQna9ZdHrZs
 srf9ZFt4gW/5JMcSDWyV9acjNpz0WXibvm2KDUSjzovNt9ti+iSTU1+mw0NzEabr2xO6tSWoJQT
 e+QQ3Mc/rZ5igQp5G3f435vD8HwEV3A=
X-Authority-Analysis: v=2.4 cv=SZfHsPRu c=1 sm=1 tr=0 ts=6a4d6292 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=0NEZ95bNQYYi-I2mXMoA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: 83loX_VeNygEfTjOQfrVb6TZ2B4mzVL-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDIwMSBTYWx0ZWRfX3XTAsLC3WDsi
 k8l9ZxxwSAe2+Qfnu+2CyWMQPhR6mMOWoBk33mjBdN1UzA250TdwyFz8L6lbKoEb0RCH3Os86gn
 a/CJ+c4OIwmaunJfLgFaxeHJL3qDmXYPVTWeXQYR6PKPEujJy7e1bYKyIH2Wf2qmgL9DHgJ3r0L
 HzU2BJ6hyml7otYSylv1pcPXF/nMVJe1kgOXOVEIAlsX9LiJ8MYAEq45chnp6xchESYCRuDFmcq
 4c+Eh6nutPGlJwCLNIz3vfJsX/YvnPbMorbzBh8LwZiPEfIqEGqjlY9WlZ4rU29EGNf81+ECbXs
 1RKwxabF6Efgt+dYmauPnELsc90foZ8y3dgNQhwIZK421jDQn13OowXX5Knlf/WIkR5E7fX15vX
 rZIgh6R26GQM90U7lyIOEA4Sh2BeA7hhBH3NhPfJ0SQb+B6CmFqMKsIAMkAHxWhcRSSEcft33XI
 slZ7HEPXKPpFer9c9PQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_05,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0 spamscore=0
 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_133323_200841_10ECC365 
X-CRM114-Status: GOOD (  11.99  )
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

Add the QMP PCIe PHY support for the Gen3 x2 and Gen4 x1 PHY found on
the Hawi platform.

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 373 +++++++++++++++++++++++++++++++
 1 file changed, 373 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 9f933eff3f12..357a2e2f8ff6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -118,6 +118,20 @@ static const unsigned int pciephy_v8_50_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V8_50_PCS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int pciephy_v10_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= QPHY_V10_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V10_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V10_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V10_PCS_POWER_DOWN_CONTROL,
+};
+
+static const unsigned int pciephy_v10_60_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= QPHY_V10_60_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V10_60_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V10_60_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V10_60_PCS_POWER_DOWN_CONTROL,
+};
+
 static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -3328,6 +3342,287 @@ static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl[] =
 	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG6, 0x1f),
 };
 
+static const struct qmp_phy_init_tbl hawi_qmp_gen3x2_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_PER1, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_PER2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_STEP_SIZE1_MODE0, 0xf8),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_STEP_SIZE2_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_STEP_SIZE1_MODE1, 0x93),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_STEP_SIZE2_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SYS_CLK_CTRL, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_PLL_IVCO, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CP_CTRL_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CP_CTRL_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_LOCK_CMP_EN, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_LOCK_CMP1_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_LOCK_CMP2_MODE0, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_LOCK_CMP1_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_LOCK_CMP2_MODE1, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DEC_START_MODE1, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START2_MODE0, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START3_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START2_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START3_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_VCO_TUNE_MAP, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CLK_SELECT, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_HSCLK_SEL_1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_ADDITIONAL_MISC_3, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CORE_CLK_EN, 0xa0),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen3x2_pcie_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_GM_CAL, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_00_HIGH, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_00_HIGH2, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_00_HIGH3, 0xb7),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_00_HIGH4, 0xec),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_00_LOW, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_01_HIGH, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_01_HIGH2, 0x49),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_01_HIGH3, 0x1b),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_01_HIGH4, 0x9c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_01_LOW, 0xd1),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_10_HIGH, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_10_HIGH2, 0x49),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_10_HIGH3, 0x1b),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_10_HIGH4, 0x9c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_10_LOW, 0xd1),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_TX_ADAPT_PRE_THRESH1, 0x3e),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_TX_ADAPT_PRE_THRESH2, 0x1e),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_TX_ADAPT_POST_THRESH, 0xd2),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_FO_GAIN, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_SO_GAIN, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_SB2_THRESH1, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_SB2_THRESH2, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_VGA_CAL_CNTRL2, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_SIGDET_CNTRL, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_IDAC_TSETTLE_LOW, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_SIGDET_CAL_TRIM, 0x08),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen3x2_pcie_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_LANE_MODE_1, 0x25),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_LANE_MODE_3, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_LANE_MODE_4, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_LANE_MODE_5, 0x7d),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_PI_QEC_CTRL, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_RES_CODE_LANE_OFFSET_RX, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_RES_CODE_LANE_OFFSET_TX, 0x14),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen3x2_pcie_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_REFGEN_REQ_CONFIG1, 0x05),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_RX_SIGDET_LVL, 0x77),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_RATE_SLEW_CNTRL1, 0x0b),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_EQ_CONFIG2, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_PCS_TX_RX_CONFIG, 0x8c),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_G12S1_TXDEEMPH_M6DB, 0x17),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_G3S2_PRE_GAIN, 0x2e),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen3x2_pcie_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_PCS_EQ_CONFIG1, 0x1e),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_PCS_RXEQEVAL_TIME, 0x27),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_PCS_POWER_STATE_CONFIG2, 0x1d),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_PCS_POWER_STATE_CONFIG4, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_PCS_POWER_STATE_CONFIG6, 0x1f),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_PCS_ENDPOINT_REFCLK_DRIVE, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_PCS_OSC_DTCT_ACTIONS, 0x00),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen4x1_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SSC_STEP_SIZE1_MODE1, 0x93),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SSC_STEP_SIZE2_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CP_CTRL_MODE1, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_LOCK_CMP1_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_LOCK_CMP2_MODE1, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DEC_START_MODE1, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DIV_FRAC_START2_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DIV_FRAC_START3_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_HSCLK_SEL_1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SSC_STEP_SIZE1_MODE0, 0xf8),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SSC_STEP_SIZE2_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CP_CTRL_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CORECLK_DIV_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_LOCK_CMP1_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_LOCK_CMP2_MODE0, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DIV_FRAC_START2_MODE0, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_DIV_FRAC_START3_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SSC_PER1, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SSC_PER2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SYS_CLK_CTRL, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_LOCK_CMP_EN, 0x46),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_LOCK_CMP_CFG, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_VCO_TUNE_MAP, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CLK_SELECT, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CORE_CLK_EN, 0xa0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CMN_MISC1, 0x88),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_CMN_MODE, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_VCO_DC_LEVEL_CTRL, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_COM_PLL_SPARE_FOR_ECO, 0x02),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen4x1_pcie_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RES_CODE_LANE_OFFSET_TX, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RES_CODE_LANE_OFFSET_RX, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SIGDET_CAL_CTRL1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SIGDET_CAL_CTRL2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SIGDET_CAL_TRIM, 0x66),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_TX_BAND0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_TX_BAND1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SEL_10B_8B, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SEL_20B_10B, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_EQ_RCF_CTRL_RATE3, 0x22),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_EQ_RCF_CTRL_RATE4, 0x22),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_PHPRE_CTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_FO_GAIN_RATE1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_FO_GAIN_RATE2, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_FO_GAIN_RATE3, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_FO_GAIN_RATE4, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_SO_GAIN_RATE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_SO_GAIN_RATE2, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_SO_GAIN_RATE3, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FASTLOCK_SO_GAIN_RATE4, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_PI_CTRL1, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_PI_CTRL2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_PI_CTRL3, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_PI_CTRL4, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SVS_MODE_CTRL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RXCLK_DIV2_CTRL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_BAND_CTRL0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_TERM_BW_CTRL0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_TERM_BW_CTRL1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FO_GAIN_RATE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FO_GAIN_RATE2, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FO_GAIN_RATE3, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_FO_GAIN_RATE4, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_SO_GAIN_RATE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_SO_GAIN_RATE2, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_SO_GAIN_RATE3, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_SO_GAIN_RATE4, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_UCDR_PI_CONTROLS, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_AUXDATA_BIN_RATE3, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_AUXDATA_BIN_RATE4, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_EOM_MAX_ERR_LIMIT_LSB, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_EOM_MAX_ERR_LIMIT_MSB, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_VGA_CAL_CNTRL1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_VGA_CAL_MAN_VAL, 0x8e),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_GM_CAL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_EQU_ADAPTOR_CNTRL6, 0xca),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SIGDET_CNTRL, 0x6f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SIGDET_LVL, 0x84),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_SIGDET_DEGLITCH_CNTRL, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_Q_PI_INTRINSIC_BIAS_RATE32, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_Q_PI_INTRINSIC_BIAS_RATE45, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B0, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B1, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B2, 0xd8),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B3, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B4, 0x98),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B5, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B6, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B7, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B8, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B9, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B10, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B2, 0xd8),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B3, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B4, 0x98),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B5, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B6, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B7, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B8, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B9, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE2_B10, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B0, 0x13),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B1, 0xd3),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B2, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B3, 0x13),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B4, 0x13),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B5, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B6, 0x4c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B7, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B8, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B9, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE3_B10, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B0, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B1, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B2, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B3, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B4, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B5, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B6, 0x2c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B7, 0x86),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B8, 0x83),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B9, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B10, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_LANE_MODE_1, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_LANE_MODE_2, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_60_TXRX_LANE_MODE_3, 0x00),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen4x1_pcie_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_G12S1_TXDEEMPH_M6DB, 0x17),
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_G3S2_PRE_GAIN, 0x2e),
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_RX_SIGDET_LVL, 0xcc),
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_ELECIDLE_DLY_SEL, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_PCS_TX_RX_CONFIG1, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_PCS_TX_RX_CONFIG2, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_EQ_CONFIG4, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V10_60_PCS_EQ_CONFIG5, 0x22),
+};
+
+static const struct qmp_phy_init_tbl hawi_qmp_gen4x1_pcie_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_POWER_STATE_CONFIG2, 0x1d),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_TX_RX_CONFIG, 0xc0),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_ENDPOINT_REFCLK_DRIVE, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_OSC_DTCT_ACTIONS, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_EQ_CONFIG1, 0x16),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_G3_RXEQEVAL_TIME, 0x27),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_G4_RXEQEVAL_TIME, 0x27),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_G4_EQ_CONFIG5, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_G4_PRE_GAIN, 0x2e),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_RX_MARGINING_CONFIG1, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_RX_MARGINING_CONFIG3, 0x28),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_RX_MARGINING_CONFIG5, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_G3_FOM_EQ_CONFIG5, 0xf2),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_G4_FOM_EQ_CONFIG5, 0xf2),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V10_60_PCS_POWER_STATE_CONFIG6, 0x1f),
+};
+
 struct qmp_pcie_offsets {
 	u16 serdes;
 	u16 pcs;
@@ -3640,6 +3935,24 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
 	.txrxz      = 0xd000,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v10_0 = {
+	.serdes		= 0x0000,
+	.pcs		= 0x0400,
+	.pcs_misc	= 0x0800,
+	.tx		= 0x1000,
+	.rx		= 0x1200,
+	.tx2		= 0x1800,
+	.rx2		= 0x1a00,
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v10_60 = {
+	.tx		= 0x0000,
+	/* no .rx; tx and rx share the same register block */
+	.serdes		= 0x1000,
+	.pcs		= 0x1400,
+	.pcs_misc	= 0x1800,
+};
+
 static const struct qmp_phy_cfg eliza_qmp_gen3x1_pciephy_cfg = {
 	.lanes = 1,
 
@@ -4783,6 +5096,60 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg hawi_qmp_gen3x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v10_0,
+
+	.tbls = {
+		.serdes			= hawi_qmp_gen3x2_pcie_serdes_tbl,
+		.serdes_num		= ARRAY_SIZE(hawi_qmp_gen3x2_pcie_serdes_tbl),
+		.tx			= hawi_qmp_gen3x2_pcie_tx_tbl,
+		.tx_num			= ARRAY_SIZE(hawi_qmp_gen3x2_pcie_tx_tbl),
+		.rx			= hawi_qmp_gen3x2_pcie_rx_tbl,
+		.rx_num			= ARRAY_SIZE(hawi_qmp_gen3x2_pcie_rx_tbl),
+		.pcs			= hawi_qmp_gen3x2_pcie_pcs_tbl,
+		.pcs_num		= ARRAY_SIZE(hawi_qmp_gen3x2_pcie_pcs_tbl),
+		.pcs_misc		= hawi_qmp_gen3x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num		= ARRAY_SIZE(hawi_qmp_gen3x2_pcie_pcs_misc_tbl),
+	},
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v10_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+};
+
+static const struct qmp_phy_cfg hawi_qmp_gen4x1_pciephy_cfg = {
+	.lanes = 1,
+
+	.offsets		= &qmp_pcie_offsets_v10_60,
+
+	.tbls = {
+		.serdes			= hawi_qmp_gen4x1_pcie_serdes_tbl,
+		.serdes_num		= ARRAY_SIZE(hawi_qmp_gen4x1_pcie_serdes_tbl),
+		.tx			= hawi_qmp_gen4x1_pcie_tx_tbl,
+		.tx_num			= ARRAY_SIZE(hawi_qmp_gen4x1_pcie_tx_tbl),
+		.pcs			= hawi_qmp_gen4x1_pcie_pcs_tbl,
+		.pcs_num		= ARRAY_SIZE(hawi_qmp_gen4x1_pcie_pcs_tbl),
+		.pcs_misc		= hawi_qmp_gen4x1_pcie_pcs_misc_tbl,
+		.pcs_misc_num		= ARRAY_SIZE(hawi_qmp_gen4x1_pcie_pcs_misc_tbl),
+	},
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v10_60_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5545,6 +5912,12 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
 		.data = &glymur_qmp_gen5x4_pciephy_cfg,
+	}, {
+		.compatible = "qcom,hawi-qmp-gen3x2-pcie-phy",
+		.data = &hawi_qmp_gen3x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,hawi-qmp-gen4x1-pcie-phy",
+		.data = &hawi_qmp_gen4x1_pciephy_cfg,
 	}, {
 		.compatible = "qcom,ipq6018-qmp-pcie-phy",
 		.data = &ipq6018_pciephy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
