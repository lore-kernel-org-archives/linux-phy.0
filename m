Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F7D606A31F
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 10:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Rt/xBS99;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=AIcrj/Nk;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=QzpdXt0a
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hKbLYUQpD25etcT1/zeDwaRI298KCMiXEBVoSmGSKLw=; b=Rt/xBS99D7Y/sYd2PMJegUw/Nj
	B3DBJpuwNQZNUXrxiGkAb6LilDRCn4DDe1No7OiCzoD/AUeGw/4wvRL3V/LDMrlHH6Ts0ayCr6oG7
	ZyBTSzFvj5qAZVIpkjBi3qQ0Wsi/aB072sbj16dBaQvjtU8vmWT7LeOI6HZPh2rPW3PaN242v3nu8
	2bMWH2vHYX5FNDm7qSVVPc5GiQoFAeBa4XL26irnagzzsk8aE5GcACDLDiPTQZOMT0baETLnnc/qG
	ir9bAgmW86Skq/Eftq2DcXqAi3hAwTg4/lt+Paz+DvX0wydSU6uDW3kqNDU3cAwbqj1ZtwGDt6FuC
	8Ncca/JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13p-00000006mCa-3YO1;
	Wed, 28 Oct 2026 10:39:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13m-00000006mAz-3Igz
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 10:39:12 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SAZqaW872049
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:39:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sNXojJC4nCZB+gTOca4T46HaCi9pUQrIo0UYlRNSMU8=; b=AIcrj/NkWrOrdQUV
	BA7r+1MuzVf/Sk+n/s+gustt57fpFUTIBDWwKDz6h46dcq+RlQYsxECl1fmvSdwp
	osZMHYQLle0i/iilxcPmWZtm2lmRoxz1MxN9A2pemrCCql90MGaqDLDUA5jWipiK
	2krC1r16Qwi1J3v1e5PxlQpdYGJiUZO3+QFLtBkWnasjYUgbFjzU42ey6Ax/7TUu
	HYUoJ9e3ugIecVkThglSY0/czZCwYemUzlBNf7XsOHySXmwQ27WEP/5zl1mj6xft
	3gBR+h19Vqhh4VsJz06BQv1+QvSc+lvBKaHHKnzZBfZRZUwdfSjxZXm6LXzelIOk
	MU0vPw==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkfehg0bw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:39:09 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-193b5eb133eso1040698c88.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 03:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793183949; x=1793788749; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sNXojJC4nCZB+gTOca4T46HaCi9pUQrIo0UYlRNSMU8=;
        b=QzpdXt0atfrmE2LPpPyg+3jmTdl7f45SFaoT6Hpm/p1CyVytPYs45IS6rF4PEeIFMr
         80tUqHs/8Lo+1VpnhfAEqbrLQikvw5OfOZx8ad4Av5sCREO2CSNK9YWcFYNSsZidnQLu
         xnaoyWm5phJXUkXvWWo53eLAlJpGm7uQ/g9ePcKBB9t0Pe7bvPNUjYNFvnk7DVAbtZLG
         7WVVxJz79f9gueEGHA1qDm33jd6zgfDLXdNvcdrDRA66+Nep7duNL7L/uFOq/4v1Czjh
         ijywhmYktecfBKKBMbb3EyIrc+z+UYH0eO0dhVDJNqSlEJzG6n46R7l8mr0be1q5Bzbi
         dlCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793183949; x=1793788749;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sNXojJC4nCZB+gTOca4T46HaCi9pUQrIo0UYlRNSMU8=;
        b=QZ5uTfrKiLdUvsQiCnhzEmkzWI2sxJ2dm2rBD3ckVo1kE/yu+448WrsJNjmaGatp93
         dE2Kiet0FJypQtxJ/bwrBKzUAvptk4s0eaMqu4zj1er0UFW9sM1ARxdOGrdV6eTlKfc3
         n34lfaBLmrKiytY6YmvwMGPDXM3veuhdKR9iKZPX+A4vlxKSL0CtK+fwhbyH6iseWSnD
         TEr+6zFir7gw/dUhaPSwVSzQqmmkmXRDhHQxeoVwQSQdjHeZQAF9Y526UssdbdntxNkD
         Us4eFP/9S13ItiWZATo5y3kLnPAVehOnfo+O+aKUy2E/Dn/nCRDWUfH/i9AgOdPvOZfh
         J+jQ==
X-Forwarded-Encrypted: i=1; AKwUvByyUsIpLyRGccaBlzNGK3pqylDJCp5fG/UcRq0wpWOgPZjasd/ckyZISvSGJOiJ3osVa0VEXE+qMdc=@lists.infradead.org
X-Gm-Message-State: AFq9FYKHMfJAZS3U1lNowmKu+jXxlnEop4jGfaGVKx0O7kMC2kwmUl1x
	Eq31Rzq9hbj7e2Z0qAeEvLs7C9vuTptibVEdTSPaEf30cR//zNj9JD0i1yivjx4VFyPb6BdLdre
	7em1rBKhVgCxx7YNiKYdQ2HayV/ldIthiLsg3w79rb2ngzcCorFCMX+ik0UzHDo6373cM
X-Gm-Gg: AYBFou0MU13Lm2JPOveGfxjjt3KVRhEeiN/fwhmiFByBguvgDDwq1CSJhw3o3/K33gm
	Njxn9TaCC70uVCiC1HF9uuWin1IQn6VRB6TAiK70+YwsgAX9xXefZb/YOcMbEDi0ER54TjR2UST
	3GYk7RjSIJLDFX4Iy8p852VHAIXGK2QRcpk7STp9n9t4MCgS2jex2SrDAdZEEDK9BP4i9V0LeJU
	CbyE8da/qxOkg/2qKfdD8zKfgJiPoKI4I2FNpdp4liSSb9xAbPK+82Rs1mJM30FfbhJbZoXnIyk
	Bxx+iRcJcPJslcCHW+G2VjB0RPGtlsTWcY5yLPd9S4dUTZsg9iwVlLynd2tx/Ot++K3x9Imb10z
	2B4CbMOSPmMVAUdtvxMgwdEn9rjIgVAcfMASJ1dEg3KmiNFowH4J0vFxexthNWb6AAdM7YU01p2
	k=
X-Received: by 2002:a05:7022:7e8a:b0:19a:ace1:793b with SMTP id a92af1059eb24-1a6cf72b429mr3330495c88.18.1793183948329;
        Wed, 28 Oct 2026 03:39:08 -0700 (PDT)
X-Received: by 2002:a05:7022:7e8a:b0:19a:ace1:793b with SMTP id a92af1059eb24-1a6cf72b429mr3330445c88.18.1793183947594;
        Wed, 28 Oct 2026 03:39:07 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1a75e5c6d4fsm8340186c88.14.2026.10.28.03.39.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 03:39:07 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 16:08:03 +0530
Subject: [PATCH v6 07/11] phy: qualcomm: qmp-combo: Extract common DP PHY
 init sequence
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-glymur-phy-v3-v6-7-1f1d2e565a66@oss.qualcomm.com>
References: <20261028-glymur-phy-v3-v6-0-1f1d2e565a66@oss.qualcomm.com>
In-Reply-To: <20261028-glymur-phy-v3-v6-0-1f1d2e565a66@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Jeff Roach <jeff.roach0@gmail.com>, Luke Macken <luke@phorex.org>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793183900; l=5180;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=wblh5fmtDpMniP2BS7MTdLS6SNV5M07FHzguiRFePYY=;
 b=IwVHhzHbm8Iqe2o8yj9TaclAQbujYMA4ird6TqW9OseIXu8kNIiJYKr+mZhxPNjVJvMhA1+iC
 CzBRHQI6GusCSjd3oJ5ALPqBkdRe9BYpHbFE2nLqZ30Iv7prePJulLP
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfXyl/R4AuRzCJm
 8pGYu6TXjPY0+1/S6vTPHJGIPLJPAPlLx7hsH/c6ZHCS1TDB+MLcrCJNVYpvuVeJfG2uA7HTH00
 LA5SAXMFOk84twK0duxZija4jU+HE5FAdnKbHEpWgz8yZM8BXeoOdiruyHZgLEbEaf3sibhSY+M
 cjyavGmagDFO5aA53uZlwQvngDwrphcel5NWAYtPn4WPv/fkSdqkz0JVDM+65dSJGvliWwPR+yR
 utzNCceslZIwLBz50Lf+PcJjkz5b0b7NIjnR6UQjZ9DAreN9sC/2X20+ZwKL5xA4SaiOHJSrBC8
 ZI+3mjh0A3VymB9b4uqubTp03IbFjwbBZ5onURuaenhyZuGQKLGSAKiyuft9B1ot/ZiDIZqaqDT
 08kz76pPhJq1LAMpR22WDNWEaOpj7jLoo1S/6tQwntnTJHdKNJ+MlrG9LsKjQFhrXgiqNSjLZ0S
 hb0+7e+Kiv4RsGnifeg==
X-Authority-Analysis: v=2.4 cv=A/T5rKWG c=1 sm=1 tr=0 ts=6ae1d0cd cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=mO8_gwkcAAAA:8 a=WQ39YxX6NF7xrdOXP0YA:9
 a=QEXdDO2ut3YA:10 a=vr4QvYf-bLy2KjpDp97w:22 a=InTEqNb8lIr1xazlwGwc:22
X-Proofpoint-ORIG-GUID: -TcT5-fQfquZMA5HbnLXzOMCQ_Dkd2rO
X-Proofpoint-GUID: -TcT5-fQfquZMA5HbnLXzOMCQ_Dkd2rO
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX5uICB3mU4wDL
 CoWSjzVUlwh3RDZFCqxbPM1egiYtIfI/5EMCgi71A67kUdxVksXaQzff1zP2wsbAp6ImA3HoL30
 ekDlAauXwDOXGDRB5OH/ji3YjxbR9iE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_033910_951292_1379D1D7 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Extract the common DP PHY initialization sequence shared between
qmp_v456_configure_dp_phy() and qmp_v8_configure_dp_phy() into a new
qmp_combo_configure_dp_phy_common() function.

The common sequence covers:
- Validation that dp_aux_cfg2 is configured for the platform
- Writing dp_phy_cfg1 and dp_aux_cfg2 hardware-specific register values
- Calling configure_dp_mode() for TypeC lane orientation
- Programming AUX_CFG1, TX lane control registers
- Invoking configure_dp_clocks() callback
- PHY_CFG reset/enable sequence
- Polling COM_C_READY_STATUS and COM_CMN_STATUS for PLL lock

Refactor qmp_v456_configure_dp_phy() to call the common function,
removing the duplicated initialization code. Update
qmp_v8_configure_dp_phy() to call qmp_combo_configure_dp_phy_common()
directly instead of going through qmp_v456_configure_dp_phy().

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)
Tested-by: Luke Macken <luke@phorex.org>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 98 ++++++++++++++++++-------------
 1 file changed, 58 insertions(+), 40 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 2ca67c70b17a..ff7f0293638d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3844,6 +3844,62 @@ static void qmp_v4_dp_aux_init(struct qmp_combo *qmp)
 	       qmp->dp_dp_phy + QSERDES_V4_DP_PHY_AUX_INTERRUPT_MASK);
 }
 
+static int qmp_combo_configure_dp_phy_common(struct qmp_combo *qmp)
+{
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	u32 status;
+	int ret;
+
+	if (!cfg->dp_aux_cfg2) {
+		dev_err(qmp->dev, "DP AUX CFG2 value not configured\n");
+		return -EINVAL;
+	}
+
+	writel(cfg->dp_phy_cfg1, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG_1);
+
+	qmp_combo_configure_dp_mode(qmp);
+
+	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
+	writel(cfg->dp_aux_cfg2, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG2);
+
+	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX0_TX1_LANE_CTL);
+	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX2_TX3_LANE_CTL);
+
+	ret = qmp->cfg->configure_dp_clocks(qmp);
+	if (ret)
+		return ret;
+
+	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
+	writel(0x05, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
+	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
+	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
+
+	writel(0x20, qmp->dp_serdes + cfg->regs[QPHY_COM_RESETSM_CNTRL]);
+
+	ret = readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_C_READY_STATUS],
+			status,
+			((status & BIT(0)) > 0),
+			500,
+			10000);
+	if (ret)
+		return ret;
+
+	ret = readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
+			status,
+			((status & BIT(0)) > 0),
+			500,
+			10000);
+	if (ret)
+		return ret;
+
+	ret = readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
+			status,
+			((status & BIT(1)) > 0),
+			500,
+			10000);
+	return ret;
+}
+
 static void qmp_v8_dp_aux_init(struct qmp_combo *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -3944,48 +4000,10 @@ static int qmp_v456_configure_dp_phy(struct qmp_combo *qmp)
 	u32 status;
 	int ret;
 
-	writel(0x0f, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG_1);
-
-	qmp_combo_configure_dp_mode(qmp);
-
-	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
-	writel(0xa4, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG2);
-
-	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX0_TX1_LANE_CTL);
-	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX2_TX3_LANE_CTL);
-
-	ret = qmp->cfg->configure_dp_clocks(qmp);
+	ret = qmp_combo_configure_dp_phy_common(qmp);
 	if (ret)
 		return ret;
 
-	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
-	writel(0x05, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
-	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
-	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
-
-	writel(0x20, qmp->dp_serdes + cfg->regs[QPHY_COM_RESETSM_CNTRL]);
-
-	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_C_READY_STATUS],
-			status,
-			((status & BIT(0)) > 0),
-			500,
-			10000))
-		return -ETIMEDOUT;
-
-	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
-			status,
-			((status & BIT(0)) > 0),
-			500,
-			10000))
-		return -ETIMEDOUT;
-
-	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
-			status,
-			((status & BIT(1)) > 0),
-			500,
-			10000))
-		return -ETIMEDOUT;
-
 	writel(0x19, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 
 	if (readl_poll_timeout(qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_STATUS],
@@ -4014,7 +4032,7 @@ static int qmp_v4_configure_dp_phy(struct qmp_combo *qmp)
 	u32 status;
 	int ret;
 
-	ret = qmp_v456_configure_dp_phy(qmp);
+	ret = qmp_combo_configure_dp_phy_common(qmp);
 	if (ret < 0)
 		return ret;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
