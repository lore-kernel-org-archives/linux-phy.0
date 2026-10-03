Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A41F4CA5FEA
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kXMkm3ZOpIwkL0ZvK6fZG1irRiPp+RnjZEW52xHRxo=; b=CYYEZbrt8wXTIT
	OUHPKE9ZVd/Tz69KhotjOkHoY0GkKjMN1xAUG6EgJLKO84f0Lino/wcrIXnFv45UKC9VNrQpbx8IE
	EnMyAjtVWXOcZBUqS6+7PMtUrttewwhtmLGADugm0cxA/s/qmmSz9jxLA59wX7jYYpHp5m+bUZ3MW
	D+9sZHATRs/82Gw3x9u+b18A3jJUeA64WUoV/Q2Yf9TrKkqOkvOF77VRF5IUqF88RMyi63hjfygr6
	5GBa/xTQatfAvlSVyQzRZa1aWCvjDQ81tUUNFVmms6gnsl6/6GuoK3KHGl/4sd6czqG8FX3VovtJF
	suA/vO2peq/AVnBJfgHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvdf-0000000DEJK-1V6x;
	Sat, 03 Oct 2026 09:02:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvdc-0000000DEGj-40qY
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:02:38 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6933K9No3782631
	for <linux-phy@lists.infradead.org>; Sat, 3 Oct 2026 09:02:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zGGWlPUDb3bfeHhoicMWJRnksmpfuUxoNxOSlwcoEWE=; b=ouYizifQY+9BxdYy
	D35sLXnO9O7DWS7mmw5zMVKK7lWHnDM5nsotex3uuaSghvrW1T/RwuV28D02yJRY
	2I10MbiyUF5zsVMHXYmBe0yiidOPZtCCsM0NtYdKfIK+v6qc/nWrT7dwSrGNtrex
	WiqA/n22xd6BABrLWzkPLmEyaU80Anw6ms7Y5mdoJZ6shzCIXqdhKBtT3q29672/
	kL1yULrDA3GHuSweToRMaV+8mlJnGBesDxZaNWirlNx3R07FrnXJn1LwREieu9ti
	UGxoc7/kbJoCl3au+7CYhRWNn4zOSwg/XTaatmOp+t6L27LiPvMYj7KVJQ3aK4YJ
	fjJPcQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2sq8rhfk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 09:02:35 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-30bcb065bfdso170112eec.0
        for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 02:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791018154; x=1791622954; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zGGWlPUDb3bfeHhoicMWJRnksmpfuUxoNxOSlwcoEWE=;
        b=FylBULQTBpBWNHVks7PM6k6Rddq1ABT8afEQmpXJJkSRVYuNJsF1vYg8xC1+fhlRNE
         VqaTgSSERtqXBJg7k0i1oiC+yVg5cpU0dd6S54JogFLpK7b2kc509CXNhxteTk1Nms+k
         1XpExtEFCc8l2l+pwiLlL9RKsSWJ8qNkwWQJBxyRtoxDJi23ogfTnFFgV/iQXu5qa+uV
         20LN6MeplqrdRHbg7yu9ereA3RZNzHQxCT5MKGNiv9AC9kVjkxzrTE4PoqwChPw7AF3Y
         m69mtQwk/ToJ+frHkKJ4uWk9ieZc3T/IjKzflIC71oS91quqph9CkDPXR8Acd/WAg4q2
         jpHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791018154; x=1791622954;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zGGWlPUDb3bfeHhoicMWJRnksmpfuUxoNxOSlwcoEWE=;
        b=OEX+pXYptX5XoN0SYny5S+ebYMcyFpuL2J/gCUmsiWa95hjuihnBCXubRgnupcHsQR
         R/LgkuG3M4crMqDh+JQxEg0FjujuSCufKwX2yGpZtp/vBWouty0ytS4Yr9OoQHBcNgjO
         eHeW+Wy8mfI6245UjIbAZTkYkh2Td7/EmZMsfLvTuHSnP/fJPzbN2XoWv7ivvX4QkwRY
         SCIuRZ96vcpVK2cxHGjnCQcPaRfBePa8RlhwuE0WirTtv5Sr7GpI4wLuvBe6CQAsSZhK
         klTpi8meYzSlM3R7y4ox/foqsjZOK5SVgXxpYrGKZc86rDEiRb9w4Y0sDdKpDq7oAdV9
         yS2Q==
X-Gm-Message-State: AFq9FYI+J39KcyTCtkTFsE4B4+kCNOOnWKvHq64RwxX3pTxFrIAHWhi6
	JE8jSHQZU3cZpFWAA64L6M5vCMG8nof/YvQNCSIHuir/FMrbZJ6nVCojZZIujOuf3bvtbQiguyw
	MUy+nOQGuX6Jp9yht32KWwoIG8SJDHtzPun7u0+89KURtbYY+0NzqigBSBjhV5Z67ohM5
X-Gm-Gg: AYBFou0nNjordiF1uStimMqng1AxQ3MWzae1bH7ZHJhOjddp08/DAK/cGOfMYS08rhc
	5hWoYKMTdxm4u1qHUXzHaaHUW1Zft4UodG0Mmd52UrbX8LDdUsEa2vzu3draI4fNDXy0oVXdfEx
	YkHVTNI/TcMv+AQlOsHC6XDKltRBuwEnfaeX350f7k5Jb9CQlKe6UhTKeTlhUxN/9ePthFgZWq1
	RHgDH48+p5E2ZUG3kA7ZMhS1ZCV3etczG3kkzayetaRBquO5HNznVw7uCb0FbNO1ZMQ6lcxipTr
	q0LB1P/dD96bCaEnwg7syATXxEpQoyi8nPapF3jDLAWbNsODYAbAWfQMOWO2eU0Ma5XVx6jqpqX
	QOOshTink/bLEJyyVpIPDQdQT620DcSKWyzuMoLOAtvYmU5dXAqyBe8WIA54bGsOwQyxdZzvxDm
	iqq5wrbAM1KQ==
X-Received: by 2002:a05:7301:1885:b0:339:7572:7b2b with SMTP id 5a478bee46e88-34f150eeca0mr4897674eec.24.1791018154289;
        Sat, 03 Oct 2026 02:02:34 -0700 (PDT)
X-Received: by 2002:a05:7301:1885:b0:339:7572:7b2b with SMTP id 5a478bee46e88-34f150eeca0mr4897648eec.24.1791018153703;
        Sat, 03 Oct 2026 02:02:33 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-34f14f9f2afsm29278695eec.18.2026.10.03.02.02.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2026 02:02:33 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 03 Oct 2026 02:02:16 -0700
Subject: [PATCH v18 05/11] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
MIME-Version: 1.0
Message-Id: <20261003-kaanapali-camss-v18-5-87ba4ebe0db1@oss.qualcomm.com>
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
In-Reply-To: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
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
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-GUID: IYjQp2_HqBAhngk13Myqhc012_FEQnKQ
X-Proofpoint-ORIG-GUID: IYjQp2_HqBAhngk13Myqhc012_FEQnKQ
X-Authority-Analysis: v=2.4 cv=TKzQ2Fla c=1 sm=1 tr=0 ts=6ac0c4ab cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=YI0lirVkik_cQ8OgtUwA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAzMDAzNSBTYWx0ZWRfX9okjkUah8cB+
 ben5jm/q/O6Rta8sYploF69cjR5HDs408o6OVfLYYKtdcHqstiNaOsunbcA3aLgA1y9yGLD4RB5
 YJgbV5ddotHLlbkIkMWSBF8bvHGyHTjbMFV7nwrvkD/bAjZ5T1Ei7liCyBm3c4XcjeNH/XTvL2b
 BAD5xrWGlkQ3WEr/2U+stqHvzrX4RmtGhtfXIJEvtAiHfUokNQ0tf0bpfhEmZMEUsRDUdWJvB7S
 /JyXtqBnAh4ZiYcLeAyVW6RcFUZr4bHH/xwdQgTdGQh/+19rtKaZkCRebXKNzMtVgZ656JI5erK
 BnslDl83CMteIRfUPXqMu8tsVctQkUEmVGPDQGHCOqErlizAb88faKQFJj1CkKun3+3ocR51Nsm
 eYASKFHWftV4yaEYhe6FwUNB2FHbHuGUykVh47bvTfcdQOBkaqFKmcsuJ5AFWVbY92/9mNK2Ler
 nQZM2XnUMZPSIC5O4pg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAzMDAzNSBTYWx0ZWRfX5YrCm2HgcHJ7
 Sq4QxAWZamZiTbTXmE4sVKNMbgD20raE73YVjwJpVfdQyQv2B1eJYlSBdl8d6Vgihe3xC7rAk2O
 1SKR9cpRMqG6mIlRBzpppDJf70SSs3I=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-02_07,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 suspectscore=0 phishscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610030035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_020237_128829_F9F05239 
X-CRM114-Status: GOOD (  16.63  )
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
the v2.4.0 common status offset, adds Kaanapali power domain and register
the "qcom,kaanapali-csi2-phy" compatible.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c          | 53 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 +++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |  1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
 4 files changed, 71 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index fca3de214a92..9bd0dc7a7f9e 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -38,6 +38,57 @@
 
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
@@ -5593,8 +5644,10 @@ static void camss_remove(struct platform_device *pdev)
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
