Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3516ACA5FE2
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 06:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1bghEqXnbjsTvZMNAW9Uj5yXjVfJPsiFwzy6wvbsQs=; b=5Csin53r48zYEx
	UxRCi8yK4WBKUNrCg+UjLpcdVL9H5IZfkk8ZukV4uB5cjKCxD+NVBxCBjQlqnT23knlH8sJPfASi7
	2Q4DMlySvHcOn2QfHdMcgPRkNSiwH0eWdocaJAjEhFOD7bjgizDT1etEl/AlTk/j2+BX5tJ1FYePr
	x1g6l+6It+3WpInKv5fGfOZwtqLFkoH69diVSW0SNbbpggLTDuE1Lm1phDyMZPTGQlnid7I/Qen49
	PWZzn/GLSO0dpGEAucQ9f902FnxD5MGo8aif6H2rn36PbUfnOZyL6Zh3PPqrAUhtNbCUnAy8xiDwD
	hEuaHo0yFUyUhHd2KaqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDcKA-0000000Fjhc-3ap0;
	Mon, 05 Oct 2026 06:37:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDcK7-0000000Fjgs-04Tx
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 06:37:22 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 695101HW470483
	for <linux-phy@lists.infradead.org>; Mon, 5 Oct 2026 06:37:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	q/SOAsjHe5hqYBGWh3miLF3wtWExjjsETAua60XmAxE=; b=cg866J6jCHzHjEMV
	YdRoIpFhMl75ggy7IfkjC7OY4JIB9hTlUuwdqbcGrvqThcia6CyzmmjZ0owQZjuQ
	b10cTFneV2OsPJQs8cUoVjon/5lZnuj0UkTel/kIEPL+qHpoH/ENcvO828N2+jBt
	0Nc67lXTlnYrll1/DjSsYvRrwcI0hhcfdw7IzH4v1A744JVXdrrxVKFlDRphgk71
	26dlU8FXNgjswx4ioEfjbFDQUsyak+lx+afdCCY3pt5DAUdmLsZenF7pfBwx2IBJ
	G/TrLvWF9Berl7ff8kzhVDAVM8pedoTQzF+K74WgnVviD58JtI9xWOPDuoGHQbEH
	s2aGIQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2ssucrph-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 06:37:17 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-34ef5fd7934so4283704eec.0
        for <linux-phy@lists.infradead.org>; Sun, 04 Oct 2026 23:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791182237; x=1791787037; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=q/SOAsjHe5hqYBGWh3miLF3wtWExjjsETAua60XmAxE=;
        b=JxMr82dZOkWzkorDd/eXowQOPWpOXxodug1ka8LJtc0fYuVDjthZEkPwVlEaAr9jII
         Vn4lPB5usiyuo/VTjhzxV3Ut9MfypYGxaBWzC9ixnXNOvA/5F+zxAPk7uiOctTCtvv5r
         4kbt32SxgIppqlobQLzkrof/ojtNMcI+nu5Hes1s/gg3e7Evg7PiTMFLRj+oLyffSRDL
         hAizhwOyZSysChNPlKy17ru8l9wzz+ouE2XfmRAHdAA5F510sD4g5dXS/c2+iEkPOaPq
         v7NEh+WeBdLxQ2InO9T6yh1puofEoAOeK0i/IXTMyYrK4SJgrccU4loR0onjBijmpeA3
         T/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791182237; x=1791787037;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=q/SOAsjHe5hqYBGWh3miLF3wtWExjjsETAua60XmAxE=;
        b=sfYH2HeoS1Vs/KLMWxvq/xY/X/FuMhE2FzNyp71NszeHkzBizPQFh3Y5x4MFJOH149
         oA7FdGOncoJTfhTycSe6T+Cv3sgRHVQUGJTF5m2FRbFMVlRjPybDfG9omk06uiWoy0J1
         oTDhRCvvF5g9RapjMQepEffuIpweVceYPBRJNY3IyLWpcj2eJNluRON/19ckc6nH6NpN
         WJ/ndkoWQT3uxMDgYb2XCWBLtIFInsGcfFdOtag/37+nEQELGapmVwN+RDcc+aQFhQ3/
         fMP35ZV/cF/avJeyQ6sI+S6cuzS9m9YTpvGRuB2JitJjqtuZ4RIoOXNMspfR//VYrrOl
         6kRg==
X-Forwarded-Encrypted: i=1; AKwUvBynLiMFD29PqUUDdGAaFxVNIxPJ/nZxme2Qlws/hPEivS++cdy2KVxvuOICVbBsPVke9WZrvINU30Y=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ8L7qF+uYfBgHtx8VHmhBy6dWJ/IqlAaCWcMHe4d45h4Z41YZO
	cbGOCHbwkceV/W+mQbWkBUgsAIJninGdWTaWCzxP6xzH6APX1Ahd+oT64bxRBDSRpuG17fcs9hd
	h37l9bsyM8QJDaLUDvrCi3lbyLcAqGwmxrq0o/L3l/SrPfandno9ypLBMfk/m5SMg6Y94
X-Gm-Gg: AYBFou3imicfUQoKAJvMfsN/BTBFwfsqMC937E5cTDONG5fjMUZw9PAUgJNTZYvHqUb
	D3mWRrdQiyDvLhpslc1OV/NNsY7Dm9Y7WC3mLhvzYQkdWnn6eVvEmLTmRCrw/GR2jdEfzIKGKqb
	ubTBW4IOedwayowGs+msEIpNH/tmnGEURPD7quS9kSERd5HOoRJZmDN9HNFx7OEnPZym7wTMx/O
	WHhDoh4zsTMFwGtCYy26ZsJ7gkBUtyUbh3EDB0nR0a2Fi/79LbrPDB74aZI3kdwSU72DSyOKLYI
	Yt7omCxxl83bjl0Z04AKcyo98wlRlaPnfnRx2/swyhfClsB2T0iTOVXM+s1736Co2BmufPqCUBN
	lJwU2YYC+dBJzO2YQk5zreTRT5PkijuVObV6VvQersy4OmJ+/enjW1FJRgnMh1xWq75Nn27mSBi
	x/rerTuAc93cCauu367i2CNLH01jDc
X-Received: by 2002:a05:7301:c005:b0:347:8d01:164f with SMTP id 5a478bee46e88-34f150a378amr12982998eec.19.1791182236909;
        Sun, 04 Oct 2026 23:37:16 -0700 (PDT)
X-Received: by 2002:a05:7301:c005:b0:347:8d01:164f with SMTP id 5a478bee46e88-34f150a378amr12982971eec.19.1791182236364;
        Sun, 04 Oct 2026 23:37:16 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3512718d9edsm11185821eec.19.2026.10.04.23.37.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2026 23:37:16 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Mon, 05 Oct 2026 12:06:30 +0530
Subject: [PATCH v4 5/6] phy: qcom: snps-femto-v2: Move PHY init registers
 to config tables
MIME-Version: 1.0
Message-Id: <20261005-phy-v4-5-b04c4123ecb3@oss.qualcomm.com>
References: <20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com>
In-Reply-To: <20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA1MDAyNiBTYWx0ZWRfX8WvZq6aNWEnn
 PpIIy/rtaB/PXVzAYT+GSh6eQCUvX7uYftPm4rAsAjGplIvYBfDiShcn9EqoDjXHKA/9QzpBowt
 CGo5w3es7Z5hYP1Luc6+yKIUnXe0ulc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA1MDAyNiBTYWx0ZWRfX9YxyKwra6Wvb
 hl/r/5ZW7zBVBDFm/6c23Yg/93m0qp2Leo1uxXcIhjw6wokk3HWzgQxqSK1zn2zoVSKwDzCaaJn
 9RRKxdBUBBOz3IySbiThqYpqvVKD41W8A9/UQ2cByGFP1cjPCioDBQeTkx3G0TfkzO+CHTuSIUc
 W7R5GXwA6ijqExfn8xW7XLArUQNSanLyGAN2J0szKYhgoXipB/iu46Hzf5WNFR/Mnf1oDrxDqN9
 CX6d3iKoA2m2Ljs8KK8Ixsb5aTIqU6XDVLWjtqLvGx9UAlhLHR2N/s5PbmkDHaHAtZUoCSdyQw+
 LzyAOaSzXuSCuxmiiD8VzzufKFqo1fs1oOPG28S27IRTNoiDf6ymBneyWb1Lri3QPAur/kaBQLJ
 c7Jrl1EHWbtgFRW6bBcuF+o9pzssjpWQVMJizsxOu6X6IBpIi8qm3kTPpAFKu4+IT7nBp2B1oZH
 0g3qN0jOzewRw09zBRA==
X-Proofpoint-GUID: YL63t_UOYPtHzbMvK9UX0UR5HUHlpy6F
X-Proofpoint-ORIG-GUID: YL63t_UOYPtHzbMvK9UX0UR5HUHlpy6F
X-Authority-Analysis: v=2.4 cv=FryQbGrq c=1 sm=1 tr=0 ts=6ac3459e cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=dpbSYRCFOxhwq305YcMA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-05_01,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610050026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_233720_968631_B6ADE30C 
X-CRM114-Status: GOOD (  19.59  )
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

The driver currently programs the common PHY register sequence directly in
qcom_snps_hsphy_init(), with the fixed register writes split around the
override parameter handling. This makes it hard to support SoCs that need a
different sequence or different values.

Move the fixed pre- and post-override register programming into per-
compatible configuration tables, and keep the 7 nm override parameters in
the same match-data structure. This allows the driver to share the common
sequence while adding SoC-specific sequences for future platforms such as
IPQ9650.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 124 ++++++++++++++++----------
 1 file changed, 78 insertions(+), 46 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 0ead37c0dcfd..b6bbf2b570c7 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -104,6 +104,20 @@ struct phy_override_seq {
 	u8	mask;
 };
 
+struct phy_reg_config {
+	u32 offset;
+	u32 mask;
+	u32 val;
+};
+
+struct phy_config_data {
+	const struct phy_reg_config *pre_tuning;
+	const struct override_param_map *override;
+	const struct phy_reg_config *post_tuning;
+	const u32 num_pre_tuning;
+	const u32 num_post_tuning;
+};
+
 #define NUM_HSPHY_TUNING_PARAMS	(9)
 
 /**
@@ -383,13 +397,40 @@ static const struct override_param_map sc7280_snps_7nm_phy[] = {
 	{},
 };
 
+static const struct phy_reg_config hs_5nm_phy_pre_tuning[] = {
+	{ USB2_PHY_USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, UTMI_PHY_CMN_CTRL_OVERRIDE_EN },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL5, POR, POR },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, FSEL_MASK, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1, PLLBTUNE, PLLBTUNE },
+	{ USB2_PHY_USB_PHY_REFCLK_CTRL, REFCLK_SEL_MASK, REFCLK_SEL_DEFAULT },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1, VBUSVLDEXTSEL0, VBUSVLDEXTSEL0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL1, VBUSVLDEXT0, VBUSVLDEXT0 },
+};
+
+static const struct phy_reg_config hs_5nm_phy_post_tuning[] = {
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON2, VREGBYPASS, VREGBYPASS },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL2, USB2_SUSPEND_N_SEL | USB2_SUSPEND_N,
+					 USB2_SUSPEND_N_SEL | USB2_SUSPEND_N },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL0, SLEEPM, SLEEPM },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, SIDDQ, 0 },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL5, POR, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL2, USB2_SUSPEND_N_SEL, 0 },
+	{ USB2_PHY_USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 0 },
+};
+
 static int qcom_snps_hsphy_init(struct phy *phy)
 {
 	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
+	const struct phy_config_data *data;
+	const struct phy_reg_config *tmp;
 	int ret, i;
 
 	dev_vdbg(&phy->dev, "%s(): Initializing SNPS HS phy\n", __func__);
 
+	data = of_device_get_match_data(hsphy->dev);
+	if (!data)
+		return -ENODEV;
+
 	ret = regulator_bulk_enable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
 	if (ret)
 		return ret;
@@ -414,24 +455,8 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 		goto disable_clks;
 	}
 
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_CFG0,
-					UTMI_PHY_CMN_CTRL_OVERRIDE_EN,
-					UTMI_PHY_CMN_CTRL_OVERRIDE_EN);
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_UTMI_CTRL5,
-							POR, POR);
-	qcom_snps_hsphy_write_mask(hsphy->base,
-					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0,
-					FSEL_MASK, 0);
-	qcom_snps_hsphy_write_mask(hsphy->base,
-					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1,
-					PLLBTUNE, PLLBTUNE);
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_REFCLK_CTRL,
-					REFCLK_SEL_MASK, REFCLK_SEL_DEFAULT);
-	qcom_snps_hsphy_write_mask(hsphy->base,
-					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1,
-					VBUSVLDEXTSEL0, VBUSVLDEXTSEL0);
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_CTRL1,
-					VBUSVLDEXT0, VBUSVLDEXT0);
+	for (tmp = data->pre_tuning, i = 0; i < data->num_pre_tuning; i++, tmp++)
+		qcom_snps_hsphy_write_mask(hsphy->base, tmp->offset, tmp->mask, tmp->val);
 
 	for (i = 0; i < ARRAY_SIZE(hsphy->update_seq_cfg); i++) {
 		if (hsphy->update_seq_cfg[i].need_update)
@@ -441,28 +466,8 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 					hsphy->update_seq_cfg[i].value);
 	}
 
-	qcom_snps_hsphy_write_mask(hsphy->base,
-					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON2,
-					VREGBYPASS, VREGBYPASS);
-
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_CTRL2,
-					USB2_SUSPEND_N_SEL | USB2_SUSPEND_N,
-					USB2_SUSPEND_N_SEL | USB2_SUSPEND_N);
-
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_UTMI_CTRL0,
-					SLEEPM, SLEEPM);
-
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0,
-				   SIDDQ, 0);
-
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_UTMI_CTRL5,
-					POR, 0);
-
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_CTRL2,
-					USB2_SUSPEND_N_SEL, 0);
-
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_CFG0,
-					UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 0);
+	for (tmp = data->post_tuning, i = 0; i < data->num_post_tuning; i++, tmp++)
+		qcom_snps_hsphy_write_mask(hsphy->base, tmp->offset, tmp->mask, tmp->val);
 
 	hsphy->phy_initialized = true;
 
@@ -495,14 +500,38 @@ static const struct phy_ops qcom_snps_hsphy_gen_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static const struct phy_config_data hs_5nm_phy = {
+	.pre_tuning = hs_5nm_phy_pre_tuning,
+	.num_pre_tuning = ARRAY_SIZE(hs_5nm_phy_pre_tuning),
+	.post_tuning = hs_5nm_phy_post_tuning,
+	.num_post_tuning = ARRAY_SIZE(hs_5nm_phy_post_tuning),
+};
+
+static const struct phy_config_data hs_7nm_phy = {
+	.pre_tuning = hs_5nm_phy_pre_tuning,
+	.num_pre_tuning = ARRAY_SIZE(hs_5nm_phy_pre_tuning),
+	.override = sc7280_snps_7nm_phy,
+	.post_tuning = hs_5nm_phy_post_tuning,
+	.num_post_tuning = ARRAY_SIZE(hs_5nm_phy_post_tuning),
+};
+
 static const struct of_device_id qcom_snps_hsphy_of_match_table[] = {
-	{ .compatible	= "qcom,sm8150-usb-hs-phy", },
-	{ .compatible	= "qcom,usb-snps-hs-5nm-phy", },
+	{
+		.compatible	= "qcom,sm8150-usb-hs-phy",
+		.data		= &hs_5nm_phy,
+	},
+	{
+		.compatible	= "qcom,usb-snps-hs-5nm-phy",
+		.data		= &hs_5nm_phy,
+	},
 	{
 		.compatible	= "qcom,usb-snps-hs-7nm-phy",
-		.data		= &sc7280_snps_7nm_phy,
+		.data		= &hs_7nm_phy,
+	},
+	{
+		.compatible	= "qcom,usb-snps-femto-v2-phy",
+		.data		= &hs_5nm_phy,
 	},
-	{ .compatible	= "qcom,usb-snps-femto-v2-phy",	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_snps_hsphy_of_match_table);
@@ -541,11 +570,14 @@ static void qcom_snps_hsphy_read_override_param_seq(struct device *dev)
 	s32 val;
 	int ret, i;
 	struct qcom_snps_hsphy *hsphy;
-	const struct override_param_map *cfg = of_device_get_match_data(dev);
+	const struct phy_config_data *data = of_device_get_match_data(dev);
+	const struct override_param_map *cfg;
 
-	if (!cfg)
+	if (!data || !data->override)
 		return;
 
+	cfg = data->override;
+
 	hsphy = dev_get_drvdata(dev);
 
 	for (i = 0; cfg[i].prop_name != NULL; i++) {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
