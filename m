Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48453C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 16:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mi0CRm0w/And4liL6U1Mjq+0Pw8n770q8aN1cj5mlhU=; b=JOpj5J76lC43jd
	6rtEkawMg9XBiYlHq4gG6Y+qxzNIUW2yYYOYBgDgBKbIZhLsnfEh2HqkDR+r2U5JE2l9xxddcbPeS
	NuZqmpVvWvEWTYHPiQM6RWFMbFrKUeUfJRgc6axTILCM/4CVQDB3ID+mb56Bo0xN7h/8rhcWLM3sU
	VVOdr8ayUSc0eMIAZIoEs2xPzKgB80Qv/PVm4ReXMxUZatACsZ9T5ECepEHzbb13SxglcMEP9lBf4
	BxNx5EGMUTjAcSzIQrg3Lu+2pkJsb/5v2wAjnYm27NK3P0bZVVlsbe2Vk97hoVKGnB971GQVmCpQP
	s4FJY4GNdqu6UY4dnUsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey9z-00000002aqS-018H;
	Wed, 01 Jul 2026 16:51:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey9w-00000002apl-0zTm
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 16:51:37 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 661Gmdhd1589841
	for <linux-phy@lists.infradead.org>; Wed, 1 Jul 2026 16:51:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DySryhhOCAk
	VsOqghjH6N3boVFZ/zvc1535VchMsR3A=; b=fiTukh4wumIPlge6T03oChYnj7c
	d0WpmggZ/4aSE8knBLoWRIKVBxrO0VyEoCBQKnpoll9yAhom7ANxhc5Q2tfHAkhq
	1wXBmCUIuHjmCMN6bfNc+0Lbpmm3+FLvPJ80bLjMjXuNXO+M0PFPGdrvoxaCAs/U
	0JLoTXOgLwS5zGzc4NvGCGCxPa5IX3sQHhg5SD6TCBulHbu1Esl3eVBFVIrw2eTV
	ak7TkmFl9vf7AA0585UQ4CmGev/E9FQTKGC870peffjMsZdHq6ogMkk4pDnbMFqG
	h3y4MgXBJqgKyA9mmiGmxjSzWvKyhvoiBXh1tWlOo0Mkx+lyhoiWyFhElmQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f53q08vnv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 16:51:35 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-37fe5d16d15so1292541a91.0
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 09:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782924695; x=1783529495; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DySryhhOCAkVsOqghjH6N3boVFZ/zvc1535VchMsR3A=;
        b=XQAO8o1cumIGbN7xSxsHUNo3YQpKyiUNcl9qs6zDCc1trzxwPoZOkWbyQq2Qj+t/zq
         WLulMfuuKMgXw535c3FeAS6PbNrstsnhdRO2u+feIKEmfh/AkCiOb0WgMoUU2oYa0ttG
         jjaYIMgA/FPCfSaCLT+NZQ2T9b92FB3TBiuKF3LGBKarbuQOHY7I/hMvQAUUZ7qk7Ixb
         EDr2lD9uXc/ZuTEw6eCdY6hH2FDrCvmWNB/ehruvhiX6urhJMeJ2FTNN0E+2WOvVXejB
         pDoFMqMmEKf6bfx5AfMftSOgKHf06ixiiHu+jU/3J2+DpBRUtvD/bXAJ8Tc2ZIZjf1eS
         p0lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782924695; x=1783529495;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DySryhhOCAkVsOqghjH6N3boVFZ/zvc1535VchMsR3A=;
        b=llKAOT3q+ysIgp43ZtvXgF6esGUEVnQkLla7WTWspWZroB+aqjFAXazON/b1wzpphG
         T3xz9gSm1JOY87Wllg6BjNdSeXV4KmTkFWaCoTrMkeahN8vDGXgRgfV+iCXStomeHRsP
         tk1hOa+r9qFBQVOv1LGlkOJOFDIRQs764/8qx9dlB7yvKADialzTEbmffpCegSV7ctsI
         0OKq/1m/eqjxDZYqZNXWlw1KN6SZ80/Q7XGnoJez8JGTYuLcHBR4BFjR30OEz77r/eOJ
         gkykH0Xwf6AZ2EbgU2CTSSiBk22AykDUM5bWusM2yUz0t/OLPkZo5sjdTVCBHfieUb4A
         x/ZQ==
X-Forwarded-Encrypted: i=1; AHgh+RrTMSyNVbWTOiuL8wme14cTMDuyDmlruXUd5CJfFQNDnQ+e9ZoWGdbGG7GaSkcffJDgmj0DFO5r4rs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+1H3ZGc1sYkMOvB10DMinjsUDpm5Pfa/mH0K0lovf0EQr7CMC
	OsjG4kYzoPhxQUehhfljIj10vbMmlgtLtfEeBxmDgwNGQ7ldM8kWneal7vgb8+6kbJMj13bZi/V
	n+E4INcAmYUxPyH3hBfeZ9RhNoDQ0mhvx+x192/N4q4BhusL3qRZxQ+/agjox9sIA99GQ
X-Gm-Gg: AfdE7cl++GmjBTW3CdB16n/9Ebu1lo1GpCwh67WCXVE5EWLP2wybjTfsGf69HAKCWNX
	nLMAobj8CdV0ytNSjZeuLIQa+gCiCLNyUF4NqFAjw2PGPBe1sd+At2Tjpfof5G/0npSnn+dJOGO
	Az/xF8Q77vp0w0no2eosd4xzdtr9w5EP4zWFm1rUfjKLbzYZvuUz119jYAvaFcYIsBGWkRPTAsw
	oTJuCmsEGPOV2ba8G9TVngTXqcW8FwOTxd2FvBXKobhvGqK2+QJ0+9fjJfzlZ9XmnyG6q7sd6S0
	eh0Ti75XJ7vkoQEKAAASjwQ6fBLtq4WOgBkH3x3tYAXm2OmRAtgp5Xlg7AO7eztAK0ylnYNiMpo
	4lQFt3cGeReqldXrLB/kCT+XDkQTAkciOJXLriNMco24w5DQDqgPkUExB0KLEcH3U9gJ06S0h4v
	x8gGvL
X-Received: by 2002:a17:90b:548b:b0:37f:9ce1:cdab with SMTP id 98e67ed59e1d1-380baa971aemr1557094a91.33.1782924694834;
        Wed, 01 Jul 2026 09:51:34 -0700 (PDT)
X-Received: by 2002:a17:90b:548b:b0:37f:9ce1:cdab with SMTP id 98e67ed59e1d1-380baa971aemr1557050a91.33.1782924694380;
        Wed, 01 Jul 2026 09:51:34 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee317095dsm33038935eec.15.2026.07.01.09.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 09:51:33 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v4 4/4] phy: qcom: qmp-usbc: Add qmp configuration for Shikra
Date: Wed,  1 Jul 2026 22:20:51 +0530
Message-Id: <20260701165051.4122259-5-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
References: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=dtnrzVg4 c=1 sm=1 tr=0 ts=6a454597 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=BrUXx0GcgBZ9W2fV7PIA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: lqfGxCo60mxrdDxo-ZLeRLNYRCJCKfn3
X-Proofpoint-GUID: lqfGxCo60mxrdDxo-ZLeRLNYRCJCKfn3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDE3OCBTYWx0ZWRfX8W4WFqTiLxpq
 DEXV9vh0WPGBeO6rx9tiFmAxVVlg27ZyHsh6VC/HOQyb3LC5jDsuHDDtoB8v50Mz2Lt2iPZDMEg
 BnXDtdcJNqaUwCkKcADQZWL24uBc5YCdvMG5f3G3O1hIQFsSFvrasrUKeHNegRpBvSnCJ5tAcPH
 0VtvPwNGGBuER8VqR0+Rdkv8bdjsBenuA3AxiDOKLFiDi6pgrP+H/AeLNZdy+GUjPeJi7U7DkzO
 yPmiMTv/C9NUdj8i9q8Uq0ln3D5/wi3PMgjEXhWcgi/7qVMhyoFNMq5hdgMB1i7jW2XPX1xkyun
 8lsmUYZ2W/8uH+qjVWLXGysqOOIl6CibHkghbpAUWYLEncYg9L/ZR/1+QGYXOyJqXeHOpVQVt3f
 /MKHOcnJM7OxRyqUBUHpzEajLg5sE04aQPSL0Fs4AlnoqVW95g70ATRNvr69Xn9YhCIbJrKgHrL
 HRTR1k1BcM+UBAe85Tg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDE3OCBTYWx0ZWRfX2puzsblHKaA8
 VyF1I5EOzbT0t3N3r8kvIAP+nGrDmX6i587UAzqZZfQrgY6R6+iFlVtNLbF+BgNBOf2FlwcCcic
 FF4JQkwiFcnZ7fBUGBwiZGOcnInQanM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 spamscore=0
 lowpriorityscore=0 phishscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_095136_299102_BB3BD67D 
X-CRM114-Status: GOOD (  14.12  )
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

Add init sequence and phy configuration for the Super Speed port on Shikra
SoC. Also since Shikra uses 3 resets, add support for the third reset and
configure Shikra platform data to use 3 resets.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 53 ++++++++++++++++++++++--
 1 file changed, 50 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index ab3055bb5b0c..fa8492b487d7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -512,10 +512,14 @@ static const char * const usb3phy_reset_l[] = {
 	"phy_phy", "phy",
 };
 
-static const char * const usb3dpphy_reset_l[] = {
+static const char * const qcs615_usb3dpphy_reset_l[] = {
 	"phy_phy", "dp_phy",
 };
 
+static const char * const shikra_usb3dpphy_reset_l[] = {
+	"phy_phy", "dp_phy", "phy",
+};
+
 static const struct regulator_bulk_data qmp_phy_msm8998_vreg_l[] = {
 	{ .supply = "vdda-phy", .init_load_uA = 68600 },
 	{ .supply = "vdda-pll", .init_load_uA = 14200 },
@@ -680,8 +684,48 @@ static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
 	.configure_dp_phy	= qcs615_qmp_configure_dp_phy,
 	.calibrate_dp_phy	= qcs615_qmp_calibrate_dp_phy,
 
-	.reset_list		= usb3dpphy_reset_l,
-	.num_resets		= ARRAY_SIZE(usb3dpphy_reset_l),
+	.reset_list		= qcs615_usb3dpphy_reset_l,
+	.num_resets		= ARRAY_SIZE(qcs615_usb3dpphy_reset_l),
+	.vreg_list		= qmp_phy_qcs615_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
+};
+
+static const struct qmp_phy_cfg shikra_usb3dp_phy_cfg = {
+	.offsets		= &qmp_usbc_usb3dp_offsets_qcs615,
+
+	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
+	.tx_tbl			= qcm2290_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_tx_tbl),
+	.rx_tbl			= qcm2290_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
+	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+
+	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
+
+	.dp_serdes_tbl		= qcs615_dp_serdes_tbl,
+	.dp_serdes_tbl_num	= ARRAY_SIZE(qcs615_dp_serdes_tbl),
+	.dp_tx_tbl		= qcs615_dp_tx_tbl,
+	.dp_tx_tbl_num		= ARRAY_SIZE(qcs615_dp_tx_tbl),
+
+	.serdes_tbl_rbr		= qcs615_dp_serdes_tbl_rbr,
+	.serdes_tbl_rbr_num	= ARRAY_SIZE(qcs615_dp_serdes_tbl_rbr),
+	.serdes_tbl_hbr		= qcs615_dp_serdes_tbl_hbr,
+	.serdes_tbl_hbr_num	= ARRAY_SIZE(qcs615_dp_serdes_tbl_hbr),
+	.serdes_tbl_hbr2	= qcs615_dp_serdes_tbl_hbr2,
+	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qcs615_dp_serdes_tbl_hbr2),
+
+	.swing_tbl		= &qcs615_dp_voltage_swing_hbr2_rbr,
+	.pre_emphasis_tbl	= &qcs615_dp_pre_emphasis_hbr2_rbr,
+
+	.dp_aux_init		= qcs615_qmp_dp_aux_init,
+	.configure_dp_tx	= qcs615_qmp_configure_dp_tx,
+	.configure_dp_phy	= qcs615_qmp_configure_dp_phy,
+	.calibrate_dp_phy	= qcs615_qmp_calibrate_dp_phy,
+
+	.reset_list		= shikra_usb3dpphy_reset_l,
+	.num_resets		= ARRAY_SIZE(shikra_usb3dpphy_reset_l),
 	.vreg_list		= qmp_phy_qcs615_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 };
@@ -2019,6 +2063,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sdm660-qmp-usb3-phy",
 		.data = &sdm660_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,shikra-qmp-usb3-dp-phy",
+		.data =  &shikra_usb3dp_phy_cfg,
 	}, {
 		.compatible = "qcom,sm6115-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
