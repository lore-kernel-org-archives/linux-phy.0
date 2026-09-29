Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36472CA5FA7
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 06:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZYE3xL68f2jIavdJPbklcSam/8YczObAbb56yuBNQFE=; b=LY/BIfFKZs/Isu
	oUzje+MPcx03/+tqwbJfTsHKjy9OYQO/9Mf1rc7rK/O+wdiSzH54sD0iZ+Kj9KPWTmQvvMohEU0lD
	xbSB8XFf1CL8q7jaZAsYexwZlyaWhJKGYZWslQF4XXIV37l8UFK5NuAt8tHuMwBROxOSNRq+0HkQV
	fXhl6jjQgkisbFNocDfxRy1Gb5/KUw8YCtlgwDBHR66UNeFJb/LUmxGCiW2u5KrIPUxIrN8MzT3hE
	mX9pJtHxv16CFVi+DvaXsD4Iit19caoYOFXXxhwcZds7o2QrjPWJHBLS9SYosdMKjZSUgwd2/1d6U
	z+3017y494QDXJm+ohrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBQta-00000002Ow8-3eoR;
	Tue, 29 Sep 2026 06:00:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBQtY-00000002OuC-2Hy5
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 06:00:53 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68T475Pe3390852
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 06:00:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JgHuca7E3dyRGxmIFRYzs6C2ZPOXLeErCr2coZ41iRc=; b=dK1dJ0jwhsy+1muN
	y0Xt4wtRzHA/zHBtb/8MuXBsPi0F4on6BHtS6hQzt5tG2cGOdPc6dcLiNKGIiqlO
	x4AAu9GgiEeX8hW6UMOeMZ5KXZK4W8t5JnrJn/hl27Hd1abvRwSvRQHAiy4hmNSk
	lhD015DOKPBY5fBohpYXo/BSwdP5wCSZByNm/gPTM6J+dZf3VlCID6Tru6hS8fF0
	ShZyZeXdWaBzaiu85duSAt+UEm+QzMlhN8Yy3kYjnjOnfy1T+3vrp2oXsNzzHcfG
	EzJE25qa9zsNxqF91FoRT0dhcR1hrrTYd/bm8A5LFq8psR5SpPOwoLdUyNKcxw3i
	Jxa7bw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h01vkh6ke-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 06:00:51 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-39deb05ef51so4408323a91.3
        for <linux-phy@lists.infradead.org>; Mon, 28 Sep 2026 23:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790661651; x=1791266451; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JgHuca7E3dyRGxmIFRYzs6C2ZPOXLeErCr2coZ41iRc=;
        b=SS1wph1N8QU9XKNTADuEILaqhMmp2tNAMNlS0AVCFubA1/uzEPahfeXYoHG317NClV
         bnV+EQfHk/2I71t2035EhMsb5XrVDdVS0KaWY8hOnsBQJ5mJ+c5ELtXkp/YM9s0qf3gm
         2XVtkOnQU5k/UyZ9SkA50PKqQwgwCYdnp0E7AMzvva0KRvek+YUZdB3qdRlpwH4EMIE1
         n+tc9vA+GAhc0gNTla/lILW8CH9tbR3UO2IOBQRISzvK92GtMboZCi1H1Uq4aIkjgDMD
         iZgfT7APCYk2NUK7VPlK4QRPt7egagDyrup2DBk/e/9GyyOAPShhT+kZZjzWsfaWK/Cg
         54VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790661651; x=1791266451;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JgHuca7E3dyRGxmIFRYzs6C2ZPOXLeErCr2coZ41iRc=;
        b=V3MVwdwTvx3pESeCYEpT/LB+r7JkkFn25ictG3q3deFMoPZbOMDnh8aBU5PExmFEyq
         eXH/fqW9ob33ozjjHBRx0JFNCnnVSoxVZWWpB3HkNgZHMhcMFKst5VoEA6GneT+Ggwwn
         3vA3tQ8NhXWOEopOjjErNqlNqamsKu8MP1T5w7pySUsYIBrC800N+C3/2FopoWkl8mvJ
         tyPF/qmu6kel/KdvqigAxt8zW+sNrYPOgii/czAQXaHwzTqpTFH7ySdCKvDkKCGEXJYt
         7IMzIw8wjhSKQZdt+nnpQnvvVoWsj4vcGokMifVjOMCVyKYZYWyP9qaueeoq7lyhOrm5
         fi8w==
X-Gm-Message-State: AFq9FYIFoCBzjpBtHIDy8qlFIy+L7OYzMPIkQjP4aQchHpU/6FNKX4sh
	OdkloSryaKQVrGMInOOpJ4fgG62KQtlIHPwckVR3kg9AmxU2oINC2XQL7QYznpXkh8YOHL64gFH
	iRuGr0XLX8MSEEyuJ5sgYc3aB6f0VrF+gAyJVFX0LC8NRoKw/iqdDxhggB6JK0+p362sv
X-Gm-Gg: AYBFou2u994Ebp1SovKuXe6fWb5TtENyOYQpnCwR0g3kMQEQXRYBd+zTYV/M78XR0LT
	MKD8nDFfjmZseAU+rqFtpKfOvFj2pbENmrhdQEkcaCLyOG7X2pxFe8qJAmBvY/r1qukBa4T3tQs
	5J0s5EX0rgBjZviBmyQjJQPt7U+bY2PLBB1aZxMQaEVtI8h/SvgPQRPqJ7AUfUxVJeU4CL6Cn00
	hoF3NaRNMteJuwD9iyRH6SdAXu9jP2wdpacXAMgSEEwWN585GrXLRSUmlrHHVexxTGddIF2FcXc
	c6uM0PSyjV18SKsaPpf407ci/Uwip/ER/VGBbfgy5b4IKpDc9OlnI622WpNTt1g2YQS5icGsV3b
	T7bEreNFAUfBk9rYY3zB3M3M34+K15meq5sdny7DM4eB5QwnTGmmYOeNnwDd3MPtVtIv1oA0ydG
	p3yihs6tc+wlo+qX/MAk/K
X-Received: by 2002:a17:90b:2f8f:b0:3a4:6ff5:777 with SMTP id 98e67ed59e1d1-3a46ff510d8mr2069771a91.43.1790661650507;
        Mon, 28 Sep 2026 23:00:50 -0700 (PDT)
X-Received: by 2002:a17:90b:2f8f:b0:3a4:6ff5:777 with SMTP id 98e67ed59e1d1-3a46ff510d8mr2069754a91.43.1790661649997;
        Mon, 28 Sep 2026 23:00:49 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a4985ff0f2sm3383588a91.8.2026.09.28.23.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 23:00:49 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 28 Sep 2026 23:00:31 -0700
Subject: [PATCH v17 05/11] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
MIME-Version: 1.0
Message-Id: <20260928-kaanapali-camss-v17-5-dcf3fd37f76c@oss.qualcomm.com>
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
In-Reply-To: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI5MDAyMyBTYWx0ZWRfXw638BlCXU94A
 fcnryGsrdopZijg7rwCOntlsrFc7D9C3ApT0vBPkvY8aUZpfpqmgUi0Ma1Nyk2c9xSbUAXeLA3p
 2sLx25q7ZsI14NXIgVRDTYMZyS6KFoIVp7BB8/qFV4Glnk/ZDowh9IiW9D4rVil9kbOPBbrhw8m
 daqv/QtXl9/1KkC4QJH+H0OuuU+mj4vme5YBVDA0SH/5yZh1AFjT84UW1e4n9v6h/aqtuQgCsVE
 KfIZ06Zu1xLhbPVrVy4w9VT8NCyN9gPh6GJjSFcXbP5xi4Rrg8/JOEzPFG8pVn0CLNwtBwRml9w
 XhH1u/77Hl54jqW88ghCUrZ4nx4jY8ZNshZgUlCu1+0vd6W1Ii+AWy/VN1Pz3mZJdA73xcJ3Ari
 o6u2QDEuZ1KiyTZ2d3G06gDCthEV6vjYKxMturZWn5128csZcH9c9GZBGvVoWRH8vkXE7BxOIDi
 bn2WAGsX/r2TUuD6WmQ==
X-Proofpoint-GUID: rk_UIvEyl9leFkDm3PSVoU5KzSb1euKu
X-Authority-Analysis: v=2.4 cv=VcVir1p9 c=1 sm=1 tr=0 ts=6abb5413 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=YI0lirVkik_cQ8OgtUwA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: rk_UIvEyl9leFkDm3PSVoU5KzSb1euKu
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI5MDAyMyBTYWx0ZWRfX+NLl32tE33dO
 WDNnMZvCK6EBj19UUsBJtLAbbkvUCSStN9o8Ydwbz4e19UJgn7AHCWBlleLzePp4mjrm/65f4PV
 BKKytNLos3MH8efdj/YcNQaIaXCoZoU=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-29_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 suspectscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 malwarescore=0 adultscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609290023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_230052_717690_A9BB1729 
X-CRM114-Status: GOOD (  18.33  )
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

Add support for the v2.4.0 two-phase CSIPHY found on Kaanapali, where
the PHY is driven by the standalone phy-qcom-mipi-csi2 DPHY driver
rather than by CAMSS. Add the mipi_csi2_dphy_3nm_kaanapali configuration,
which reuses the x1e80100 lane sequence, clocks and supplies but selects
the v2.4.0 common status offset, adding Kaanapali power domain and
register the "qcom,kaanapali-csi2-phy" compatible.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c          | 53 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 +++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |  1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
 4 files changed, 71 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index a528760487bd..a0cd839c9948 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -34,6 +34,57 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct camss_subdev_resources csiphy_res_kaanapali[] = {
+	/* CSIPHY0 */
+	{
+		.csiphy = {
+			.id = 0,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY1 */
+	{
+		.csiphy = {
+			.id = 1,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY2 */
+	{
+		.csiphy = {
+			.id = 2,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY3 */
+	{
+		.csiphy = {
+			.id = 3,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY4 */
+	{
+		.csiphy = {
+			.id = 4,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY5 */
+	{
+		.csiphy = {
+			.id = 5,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+};
+
 static const struct resources_icc icc_res_kaanapali[] = {
 	{
 		.name = "ahb",
@@ -5517,8 +5568,10 @@ static void camss_remove(struct platform_device *pdev)
 static const struct camss_resources kaanapali_resources = {
 	.version = CAMSS_KAANAPALI,
 	.pd_name = "top",
+	.csiphy_res = csiphy_res_kaanapali,
 	.icc_res = icc_res_kaanapali,
 	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
+	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
 };
 
 static const struct camss_resources msm8916_resources = {
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 8cd331cfb4b3..658a39463104 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -389,3 +389,19 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 	.genpds = x1e_genpds,
 	.num_genpds = ARRAY_SIZE(x1e_genpds),
 };
+
+const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_3nm_kaanapali = {
+	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
+	.reg_info = {
+		.init_seq = lane_regs_x1e80100,
+		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
+		.common_regs_offset = 0x1000,
+		.common_status_offset = 0x138,
+	},
+	.supply_names = (const char **)x1e_supplies,
+	.num_supplies = ARRAY_SIZE(x1e_supplies),
+	.clk_names = (const char **)x1e_clks,
+	.num_clk = ARRAY_SIZE(x1e_clks),
+	.genpds = x1e_genpds,
+	.num_genpds = ARRAY_SIZE(x1e_genpds),
+};
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index c0a4fa20eaf0..aff9e66f0352 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -444,6 +444,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 
 static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
 	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
+	{ .compatible	= "qcom,kaanapali-csi2-phy", .data = &mipi_csi2_dphy_3nm_kaanapali },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, phy_qcom_mipi_csi2_of_match_table);
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index d6366f809e51..2355a1db9b94 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -94,5 +94,6 @@ struct mipi_csi2phy_device {
 };
 
 extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e;
+extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_3nm_kaanapali;
 
 #endif /* __PHY_QCOM_MIPI_CSI2_H__ */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
