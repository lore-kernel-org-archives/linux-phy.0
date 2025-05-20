Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19187C54E92
	for <linux-phy@archiver.kernel.org>; Tue, 20 May 2025 20:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tKbv0I4srI+AjIBcsyXBywiyAwY8fKC+3+MGXn9ycsI=; b=rYslUCAcp16SHw
	dwIWbHtXNiacmfR6iOLQU8aMpWS4+1/JFEDelwq7pcR5M2C/MtshHNl2Md1dOToY+KtvrDqrBbUG/
	mEyOwN7u4A0y3G0r/E8DiTrYcNt9awrTNfB+3aPWEeIl0SPceMHhdYTDdwWZxRyslf3NyrZTX1bNN
	C29ODDMnw3lRHDZ5emuRGWaLhxYJrKRe6g1aSuBaevnB2NTSjyF8yYg/sn4wqwKKe2AHICf0Li3df
	tHx4ChgGtY9bjTdYcgGpgW9iicmsoMzMUlF0MD0IDBLjXPa7+u09/GmPPLR9ME07g9Jqaz7PGQxCz
	hpgZMe7VDZ2NmXxsNM9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHTqV-0000000E6zg-0qkY;
	Tue, 20 May 2025 20:45:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHTpe-0000000E6dd-1Xnb
	for linux-phy@lists.infradead.org;
	Tue, 20 May 2025 20:45:03 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KGdctB031959
	for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 20:45:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/Sf2sU8QXkUGxm3P0AkiZVGagcMsU33MoJLUJ+ohpOA=; b=C3dJNNARlXSOF45i
	H5f1Pc01AsAAyW9FnJBGQaa+Up3p+aBetbxEkgSKJDGrsyURtLg/4gB4qkSGoByC
	4dMaZWPNNMWc2mOw3sRPfbgiBIqJW4tehq2WT0U4crMb73sllQSp1jKJTCFEh/hD
	SgL2uvb+TpLv0SEBirrFnW7F2Lp1lVDm7sXThNAP20lRw3T3+cuSON9bAYceGGRn
	Gi4AZ4GWrSxUiWT/1hX3a3o7MFpr+wxPV6zBBOOQvEUyARhJN59gTcDU6rMwFlHm
	pmExE9Mh/h/LdJGyuMwlJ7K9hj5ZDs3vp6G0uH5ZGnf+0E2lx6RZX/1vnd/X2tkf
	8bFqYw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf18kqq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 20:45:01 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8d3f48f35so50385916d6.0
        for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 13:45:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747773900; x=1748378700;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Sf2sU8QXkUGxm3P0AkiZVGagcMsU33MoJLUJ+ohpOA=;
        b=xAOGeaImllgAa4ZNzdCGk9nL5y5yHp6X+IPK0/o/+MAFm+FVhKztORYDE4/LwAUcN2
         2xyfgcQcyChDfTARgRmr42dxfT+Hh9r9CNRYUwHZE+GMua+S7cA5UA/Jd+DIGjIktW9N
         qeuvQz6E0pGnxNWwxl9mx6N8tbNE0i876r4/ub1sfrEev8guCrJ1Ue0KMcgfSc7mUPaT
         +1ptLbryg94yIs8xmCQd0EqdapjiJirF4XlGpf8JwoCfRC/AnmUMqZxhUwazS2ulWnt2
         lqBB7wl0HP4d58K/IWZroDPmOq6Jc+m+ALukRwCKmMLi6ZsdzAviA/0x3/ANrd8Y/J+U
         KWKA==
X-Forwarded-Encrypted: i=1; AJvYcCXPbOPS90DGWbPjmSRNUaPfF/2gLTZyA2wLh2Ow9DxrfJi9xbaKhySyJfOcnHsq5nQyvHvKsTKEplE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx++HEu58+oxMVl1MX1EFuLF8XMzZf3Mqna0jMJtYbnA9k0o4TC
	pZQ5756OKtCeIcQr5F6Upu4LPNr5IXk7wKE5ynIbJb2olA8PmovySXJW+qciZuXMmYX3yB7tss6
	CAHs/uRVdq/7MrrvoIjUFHCfBkaIGUa0JkIGgJZzuH7J+pjSbEcT8XFGfDJOeQ6ait8Pg
X-Gm-Gg: ASbGnctYDf7FQb24XcKozUlPF5tCGsVv2if7VycNZMTZPMO0n0VmeckNRHZ3Q0+r0e7
	56JLkcZHoxuZ+nSV3Qyinop5qNgnd7n6Awu6IQnRFxRhcGiB+nEwpmwz4TuCnvMTphcWG2LV1Mr
	a+0EBbExCqSK5mUYlYmNut9g0Rdt+PFNtyZS9X5G1Jk2KhmNOXGlSoYQJ8VWhHutZ032HWNchfu
	g5DPMtyp961ogWM21P1JIabbS8ASGUXGGBoTmzT9xoeG/lFcyzDkMZff0bsfMcUBi63PhyawPRG
	IBVDL4aJAXE9Cj+83EoZCE785FxLKGcxPiP91dKsuk+nGa1dZCQ6SUnrEBIQd7V7VzUFFngAM4z
	MosCdU7Vj8+xS4xoLZCy2WHu7
X-Received: by 2002:a05:6214:c44:b0:6f4:cbcf:5d46 with SMTP id 6a1803df08f44-6f8b08abafamr270835956d6.20.1747773900293;
        Tue, 20 May 2025 13:45:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEkl3tYdKo+pWUTiMv0OZy1z1/H2i6Pu6K1fr3RwR2mOhW5QPjQAgjsg8qK75X0E913s7m2+A==
X-Received: by 2002:a05:6214:c44:b0:6f4:cbcf:5d46 with SMTP id 6a1803df08f44-6f8b08abafamr270835476d6.20.1747773899749;
        Tue, 20 May 2025 13:44:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f163ccsm2497950e87.39.2025.05.20.13.44.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 13:44:58 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 20 May 2025 23:44:46 +0300
Subject: [PATCH v4 4/5] phy: qualcomm: add MSM8974 HDMI PHY support
MIME-Version: 1.0
Message-Id: <20250520-fd-hdmi-phy-v4-4-fcbaa652ad75@oss.qualcomm.com>
References: <20250520-fd-hdmi-phy-v4-0-fcbaa652ad75@oss.qualcomm.com>
In-Reply-To: <20250520-fd-hdmi-phy-v4-0-fcbaa652ad75@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-phy@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=9501;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=OLeHIuWSpgzTAy71HK+ckC1M4XfY8GW2xAOao+NEl5g=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoLOnADZDprVDGwWXUwTqicXYzKiBiMS6cMbgwJ
 0tObEbYNeaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaCzpwAAKCRCLPIo+Aiko
 1VvnCACIHW4tm/rezTFxV5k0KC6tY8sIjJ7QP1EMNHSIUVA+jtHmBlgKw3r9wH5v5e02UVI+/ai
 SqiBYVgiFNbA3ntKgZAaT9VH8zB0mXG/VGhzGyLn6zjSQkxtggwlj7Z5VRV6XrTOCGUZXDri1vX
 wIkOC9Mq4QWADyueq0S0PN6i0DiaEDO5276irvv9z92cm4c5rEf/meJU1nZF1N2IMMdBjpCMsup
 jJ8299G1xEom+XFhhCQHYTxPTE+dW5E7v6sY8oJ8QAgBu20vR+O6OSLR1EI4IUAEbVm9szcGwyt
 dI+B3+gyYpCcbwhEuinCGbARHJCh0Qjdls1o08l1Rh0GJXPT
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: ojaKGlnbQd5oF8q98oxVPzXc-rsf_CRQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDE2OCBTYWx0ZWRfX/+YeZ8LBsyWn
 EsrvGOsYsvUKtUOFsqhQieNJ+H5TBmWG8GbyExng5NJ2Cp80khKvwSwM0xQy/StcPM8V9TngWiz
 uv4z+LmDzvawfNqSUmJf4v2KtqdWxMZoP+2/18L6/qJXxYN8/fk+AceLE1lPP6CcVRcUlmWpWyT
 t4IXBb7Fzvxex8AkVdDHm5HSo1WtoGXjpvUEt+uaEXerMTf1z6Bh5c22CtlOXuDqEvTY62doQpS
 1KVBLmwruzv7LI5F38D19yqGHZQBAjIbps3k9FOmyO/j6N0PKRSkbq+HXqPwcMBYqrFLFVsotWX
 2q0L+fP3DF+oRNTUTh197fULflaUTIpv6g+jNoeabAy8MD3nimh/VCvPn5L9xb6n9dcBeYxhAta
 wq2wv4jRZbeEcLfYW14rp5stfbZqdHgmihitpYuM2XV2/olOLGJCjpF6yADCd8KqSzgksKT0
X-Authority-Analysis: v=2.4 cv=F6JXdrhN c=1 sm=1 tr=0 ts=682ce9cd cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=wq9x00DRF7jIeu_RijoA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: ojaKGlnbQd5oF8q98oxVPzXc-rsf_CRQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_09,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 spamscore=0 phishscore=0 bulkscore=0
 clxscore=1015 adultscore=0 mlxlogscore=884 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505200168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_134502_427951_C06CA641 
X-CRM114-Status: GOOD (  20.06  )
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

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Add support for HDMI PHY on Qualcomm MSM8974 / APQ8074 platforms.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-hdmi-28hpm.c | 259 +++++++++++++++++++++++++++++
 1 file changed, 259 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-hdmi-28hpm.c b/drivers/phy/qualcomm/phy-qcom-hdmi-28hpm.c
index db7fa2df1a369d3889daab922c21ed8b71d733be..059afe5504639e65ef4e0c5f09eee9615f1413c1 100644
--- a/drivers/phy/qualcomm/phy-qcom-hdmi-28hpm.c
+++ b/drivers/phy/qualcomm/phy-qcom-hdmi-28hpm.c
@@ -10,6 +10,7 @@
 #include <linux/iopoll.h>
 
 #include "phy-qcom-hdmi-preqmp.h"
+#include "phy-qcom-uniphy.h"
 
 #define REG_HDMI_8x74_ANA_CFG0					0x00000000
 #define REG_HDMI_8x74_ANA_CFG1					0x00000004
@@ -31,8 +32,261 @@
 #define REG_HDMI_8x74_BIST_PATN3				0x00000048
 #define REG_HDMI_8x74_STATUS					0x0000005c
 
+#define HDMI_8974_VCO_MAX_FREQ 1800000000UL
+#define HDMI_8974_VCO_MIN_FREQ  600000000UL
+
+#define HDMI_8974_COMMON_DIV 5
+
+static void qcom_uniphy_setup(void __iomem *base, unsigned int ref_freq,
+			      bool sdm_mode,
+			      bool ref_freq_mult_2,
+			      bool dither,
+			      unsigned int refclk_div,
+			      unsigned int vco_freq)
+{
+	unsigned int int_ref_freq = ref_freq * (ref_freq_mult_2 ? 2 : 1);
+	unsigned int div_in_freq = vco_freq / refclk_div;
+	unsigned int dc_offset = div_in_freq / int_ref_freq - 1;
+	unsigned int sdm_freq_seed;
+	unsigned int val;
+	unsigned int remain = div_in_freq - (dc_offset + 1) * int_ref_freq;
+
+	sdm_freq_seed = mult_frac(remain, 0x10000, int_ref_freq);
+
+	val = (ref_freq_mult_2 ? BIT(0) : 0) |
+		((refclk_div - 1) << 2);
+	writel(val, base + UNIPHY_PLL_REFCLK_CFG);
+
+	writel(sdm_mode ? 0 : 0x40 + dc_offset, base + UNIPHY_PLL_SDM_CFG0);
+
+	writel(dither ? 0x40 + dc_offset : 0, base + UNIPHY_PLL_SDM_CFG1);
+
+	writel(sdm_freq_seed & 0xff, base + UNIPHY_PLL_SDM_CFG2);
+
+	writel((sdm_freq_seed >> 8) & 0xff, base + UNIPHY_PLL_SDM_CFG3);
+
+	writel(sdm_freq_seed >> 16, base + UNIPHY_PLL_SDM_CFG4);
+
+	ref_freq = ref_freq * 5 / 1000;
+	writel(ref_freq & 0xff, base + UNIPHY_PLL_CAL_CFG8);
+
+	writel(ref_freq >> 8, base + UNIPHY_PLL_CAL_CFG9);
+
+	vco_freq /= 1000;
+	writel(vco_freq & 0xff, base + UNIPHY_PLL_CAL_CFG10);
+
+	writel(vco_freq >> 8, base + UNIPHY_PLL_CAL_CFG11);
+}
+
+static unsigned long qcom_uniphy_recalc(void __iomem *base, unsigned long parent_rate)
+{
+	unsigned long rate;
+	u32 refclk_cfg;
+	u32 dc_offset;
+	u64 fraq_n;
+	u32 val;
+
+	refclk_cfg = readl(base + UNIPHY_PLL_REFCLK_CFG);
+	if (refclk_cfg & BIT(0))
+		parent_rate *= 2;
+
+	val = readl(base + UNIPHY_PLL_SDM_CFG0);
+	if (val & 0x40) {
+		dc_offset = val & 0x3f;
+		fraq_n = 0;
+	} else {
+		dc_offset = readl(base + UNIPHY_PLL_SDM_CFG1) & 0x3f;
+		fraq_n = readl(base + UNIPHY_PLL_SDM_CFG2) |
+			(readl(base + UNIPHY_PLL_SDM_CFG3) << 8);
+	}
+
+	rate = (dc_offset + 1) * parent_rate;
+	rate += mult_frac(fraq_n, parent_rate, 0x10000);
+
+	rate *= (refclk_cfg >> 2) * 0x3 + 1;
+
+	return rate;
+}
+
+static const unsigned int qcom_hdmi_8974_divs[] = {1, 2, 4, 6};
+
+static unsigned long qcom_hdmi_8974_pll_recalc_rate(struct clk_hw *hw,
+						    unsigned long parent_rate)
+{
+	struct qcom_hdmi_preqmp_phy *hdmi_phy = hw_clk_to_phy(hw);
+	u32 div_idx = hdmi_pll_read(hdmi_phy, UNIPHY_PLL_POSTDIV1_CFG);
+	unsigned long rate = qcom_uniphy_recalc(hdmi_phy->pll_reg, parent_rate);
+
+	return  rate / HDMI_8974_COMMON_DIV / qcom_hdmi_8974_divs[div_idx & 0x3];
+}
+
+static long qcom_hdmi_8974_pll_round_rate(struct clk_hw *hw, unsigned long rate,
+					  unsigned long *parent_rate)
+{
+	return clamp(rate,
+		     HDMI_8974_VCO_MIN_FREQ / HDMI_8974_COMMON_DIV / 6,
+		     HDMI_8974_VCO_MAX_FREQ / HDMI_8974_COMMON_DIV / 1);
+}
+
+static const struct clk_ops qcom_hdmi_8974_pll_ops = {
+	.recalc_rate = qcom_hdmi_8974_pll_recalc_rate,
+	.round_rate = qcom_hdmi_8974_pll_round_rate,
+};
+
+static int qcom_hdmi_msm8974_phy_find_div(unsigned long long pixclk)
+{
+	int i;
+	unsigned long long min_freq = HDMI_8974_VCO_MIN_FREQ / HDMI_8974_COMMON_DIV;
+
+	if (pixclk > HDMI_8974_VCO_MAX_FREQ / HDMI_8974_COMMON_DIV)
+		return -E2BIG;
+
+	for (i = 0; i < ARRAY_SIZE(qcom_hdmi_8974_divs); i++) {
+		if (pixclk >= min_freq / qcom_hdmi_8974_divs[i])
+			return i;
+	}
+
+	return -EINVAL;
+}
+
+static int qcom_hdmi_msm8974_phy_pll_set_rate(struct qcom_hdmi_preqmp_phy *hdmi_phy)
+{
+	unsigned long long pixclk = hdmi_phy->hdmi_opts.tmds_char_rate;
+	unsigned long vco_rate;
+	unsigned int div;
+	int div_idx = 0;
+
+	div_idx = qcom_hdmi_msm8974_phy_find_div(pixclk);
+	if (WARN_ON(div_idx < 0))
+		return div_idx;
+
+	div = qcom_hdmi_8974_divs[div_idx];
+	vco_rate = pixclk * HDMI_8974_COMMON_DIV * div;
+
+	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_GLB_CFG, 0x81);
+
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_GLB_CFG, 0x01);
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_VCOLPF_CFG, 0x19);
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_LPFR_CFG, 0x0e);
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_LPFC1_CFG, 0x20);
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_LPFC2_CFG, 0x0d);
+
+	qcom_uniphy_setup(hdmi_phy->pll_reg, 19200000, true, true, true, 1, vco_rate);
+
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_LKDET_CFG0, 0x10);
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_LKDET_CFG1, 0x1a);
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_LKDET_CFG2, 0x05);
+
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_POSTDIV1_CFG, div_idx);
+
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_POSTDIV2_CFG, 0x00);
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_POSTDIV3_CFG, 0x00);
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_CAL_CFG2, 0x01);
+
+	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_PD_CTRL0, 0x1f);
+	udelay(50);
+
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_GLB_CFG, 0x0f);
+
+	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_PD_CTRL1, 0x00);
+	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_ANA_CFG2, 0x10);
+	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_ANA_CFG0, 0xdb);
+	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_ANA_CFG1, 0x43);
+	if (pixclk == 297000) {
+		hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_ANA_CFG2, 0x06);
+		hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_ANA_CFG3, 0x03);
+	} else if (pixclk == 268500) {
+		hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_ANA_CFG2, 0x05);
+		hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_ANA_CFG3, 0x00);
+	} else {
+		hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_ANA_CFG2, 0x02);
+		hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_ANA_CFG3, 0x00);
+	}
+
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_VREG_CFG, 0x04);
+
+	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_DCC_CFG0, 0xd0);
+	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_DCC_CFG1, 0x1a);
+	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_TXCAL_CFG0, 0x00);
+	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_TXCAL_CFG1, 0x00);
+
+	if (pixclk == 268500)
+		hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_TXCAL_CFG2, 0x11);
+	else
+		hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_TXCAL_CFG2, 0x02);
+
+	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_TXCAL_CFG3, 0x05);
+	udelay(200);
+
+	return 0;
+}
+
+static int qcom_hdmi_msm8974_phy_pll_enable(struct qcom_hdmi_preqmp_phy *hdmi_phy)
+{
+	int ret;
+	unsigned long status;
+
+	/* Global enable */
+	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_GLB_CFG, 0x81);
+
+	/* Power up power gen */
+	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_PD_CTRL0, 0x00);
+	udelay(350);
+
+	/* PLL power up */
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_GLB_CFG, 0x01);
+	udelay(5);
+
+	/* Power up PLL LDO */
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_GLB_CFG, 0x03);
+	udelay(350);
+
+	/* PLL power up */
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_GLB_CFG, 0x0f);
+	udelay(350);
+
+	/* Poll for PLL ready status */
+	ret = readl_poll_timeout(hdmi_phy->pll_reg + UNIPHY_PLL_STATUS,
+				 status, status & BIT(0),
+				 100, 2000);
+	if (ret) {
+		dev_warn(hdmi_phy->dev, "HDMI PLL not ready\n");
+		goto err;
+	}
+
+	udelay(350);
+
+	/* Poll for PHY ready status */
+	ret = readl_poll_timeout(hdmi_phy->phy_reg + REG_HDMI_8x74_STATUS,
+				 status, status & BIT(0),
+				 100, 2000);
+	if (ret) {
+		dev_warn(hdmi_phy->dev, "HDMI PHY not ready\n");
+		goto err;
+	}
+
+	return 0;
+
+err:
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_GLB_CFG, 0);
+	udelay(5);
+	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_GLB_CFG, 0);
+
+	return ret;
+}
+
 static int qcom_hdmi_msm8974_phy_power_on(struct qcom_hdmi_preqmp_phy *hdmi_phy)
 {
+	int ret;
+
+	ret = qcom_hdmi_msm8974_phy_pll_set_rate(hdmi_phy);
+	if (ret)
+		return ret;
+
+	ret = qcom_hdmi_msm8974_phy_pll_enable(hdmi_phy);
+	if (ret)
+		return ret;
+
 	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_ANA_CFG0,   0x1b);
 	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_ANA_CFG1,   0xf2);
 	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_BIST_CFG0,  0x0);
@@ -49,6 +303,10 @@ static int qcom_hdmi_msm8974_phy_power_off(struct qcom_hdmi_preqmp_phy *hdmi_phy
 {
 	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_PD_CTRL0, 0x7f);
 
+	hdmi_pll_write(hdmi_phy, UNIPHY_PLL_GLB_CFG, 0);
+	udelay(5);
+	hdmi_phy_write(hdmi_phy, REG_HDMI_8x74_GLB_CFG, 0);
+
 	return 0;
 }
 
@@ -67,5 +325,6 @@ const struct qcom_hdmi_preqmp_cfg msm8974_hdmi_phy_cfg = {
 	.power_on = qcom_hdmi_msm8974_phy_power_on,
 	.power_off = qcom_hdmi_msm8974_phy_power_off,
 
+	.pll_ops = &qcom_hdmi_8974_pll_ops,
 	.pll_parent = &msm8974_hdmi_pll_parent,
 };

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
