Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E6CAC982C2
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHgqiMbRZ1w/zX0AODKFHz44sd9DX9SGGTNG3dJhoPE=; b=ydootze2XGYTId
	SstDCkfDkxCApAEK2LUGvJqldYr233si9Z0KRogwoOak38/8nQ2s3c+GsDNJHziopO+hPMWmA1gSo
	gHiabZ88XtznRrJB2f7efTGzSoP2Th0PffCgPzwFStm2s6kL77oK5IRb5e9iqboC0C12PzdGhwUUR
	qW5yVpPcgsFOX3nJciFO/WCDMj4NUlIPygWX5Qs+n63GamXSY5lGxhIUXECrV2vVXJjXg1v8FZxHi
	BqJ7ewvwO6uIsGHLji2fBJo1Sau+SkqkQoDXpLFqSJNRXWGF9QMO9g0FxexPaPEoyN1wWhIUvGqXJ
	ofUX8J+N2AZd9Q5HpwVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Q7n-00000005rjV-40fF;
	Tue, 15 Sep 2026 10:10:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Q7U-00000005rQA-34t6
	for linux-phy@bombadil.infradead.org;
	Tue, 15 Sep 2026 10:10:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=I6QCH+KpZMCeQ/nhN4OpqnuGLUBU+Cuv1WCeHB4YY/s=; b=rGrLWzBW0kTT9wQx3d7C5wjIAn
	CQweDGLkHvD7WiQuvY4+IPNoYtkxQra2n9NuwSHHu0EyEkqcey1ZQUoey5Y07lsLLRYXeYBRwtPnU
	4+fxbIqxr5f6Q+e/cUaILZImJlxkWWmqxQLIqJPvZeJzP673hHzk9gGQ1IYKWxQ8PjnkvSA78h+ym
	oRPr495yhfnkxYwlMRNpRcKx7CaLtZ6GtlCf/0J+/hI2XYwVYYmRWhT1sz1pftWJnU+SJPt1AMcy+
	+UopMQfuBbxhmqKjsWzNrZCVj6XaLt/gQLpfrJ20a6st3LH/xyW+k3leV5RS2OdbKvUlQj5aFATjP
	m6bCMnMw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6Q7P-00000006X9c-0X8a
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:10:31 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68F9h1012086620
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 10:10:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I6QCH+KpZMCeQ/nhN4OpqnuGLUBU+Cuv1WCeHB4YY/s=; b=Xp++6qcC8Rh4hSV1
	TEra6U6r9Z5rtFLxYmoTYVHMN8r3FG8aFwEy+UOPKhB0hTsUm+iGB/K4d5XMaShL
	PinXg23ZBjrruU0K/Z/WLmJ5Oy6VjF0bYW8iPUFzcIouGwBQ5QdSi/7X125VlmNZ
	W009SG+V96Di1yItSHoyYjEnsK8r5iu533igKtgZ3xoLabPkHtM/jNkXHkuB8UlC
	eksSD1UNjo5X6XFxt+1bz7EGsjhfu8KAtDW/MkvOitBF0XJ2ZIU9q30uyICKzSMM
	OArAwtDWgQdicg9FBZlo01n1i/IaKCDTZOhk3wXDwzyn29Cg8+YZk9JSveFTd2Yl
	g2r9qw==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gq1qp8s8b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 10:10:25 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-4b28deb7ee3so6502118b6e.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 03:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789467024; x=1790071824; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=I6QCH+KpZMCeQ/nhN4OpqnuGLUBU+Cuv1WCeHB4YY/s=;
        b=RYPasqUhvTeXq3w6Z4Bvv5IDjs4wRke/wOPvefXfI45ZASJDBWZMBAEMjSaB3RcONy
         iyLsgHInPAJEi1IRPW2LAPAI2NYYLgcbt3i4zYC8YdXIAYf0vrq2YTPp4A9TZUOmqcPP
         TaxmuOJWSsVV5MoAA/BnNkrBFlgYu1Ei0XNcsEht7VHmVy5L8ejHDlvhh4/AwbH65VI2
         5RXVLJuxK+dbwyTKOExwS5VSSh9Sq3HoymBG2rIqv8eXnbjjBMDUkffJ2qARQpg7ajtq
         e3VDPAVQQA/A5JhxO7a3QSLUyJgvQE1HqiMWB9AcYLMUtmQl2DSqJM4kTTfGl2p3fTVM
         dtEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789467024; x=1790071824;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=I6QCH+KpZMCeQ/nhN4OpqnuGLUBU+Cuv1WCeHB4YY/s=;
        b=C6/ZXAdmTKFH7Y6gI7i259gtYdUCjSpEFW7AhZUJhai2oq3ti/86jaXZmXyZ8YkSBx
         gEOENPDmNv6Hf+yUs8slblyLCsHRmylbzi8iazjjEIJEcp9Z7wAbg27JhLX6fzwmeVGa
         xidkEo3ZaDUwwp0x1+FiOr0DENFEJGyL8qejPF+gn2QVf0At1BjsLGxMB9HY5KmTAa5Q
         8BTqR8RIiRjq87azwIID6dqEgNndp3Js5hd0FuyPkmOMLBolWueFBhMcjGqNkid2i1pY
         JnVuvY3uG+8fFwxPGghdGSjHVgrImNYcQ0LM5e7YXB1gvQ9/J4Y4xxMjuTC5s6OBOMni
         G9gg==
X-Gm-Message-State: AFuF++m7Nfw9MA5oo8zP8TRss140+NERj84SatOy7D+p/R8yaRPMepnM
	bQZEWdxVquzxEMzTkOy0ta16uEQ6vDWW0/qcoDFszfNS7pEwZXyarmogIvf/i1UzslWk7WYCtZ1
	++tqL2qcz1FwNqjAcSlWicmyvrd87X099qhXg3VJJsjmLp7Uouc0IKgGUJcv5PprACWaB
X-Gm-Gg: AYBFou3M/hhp5wAbCeyUwmwO5jy4VtR4D0RrLAbYl25aak8tzrT+E1TLY33OjyEqt2i
	plFoIRA4YCn+qjWC02cuA7f71m5BYOIsokB8Xcz0ImAdczK94pdUVYFxz25UkbZFQmmhdBJiplC
	O2wov3JZ1LLOaP78hcE7nW7AIJ/+WjywsKBxsnypzl+DyF0UiPJof1Ha1RXdME2bOsYdiySJgLw
	XJ+BLn87DKGzovnatuFWxph8sYqCFEzea+3YNmCHLn8PvEObkHwwade0XVkgOPUzpDj2FFfv0th
	aa4WF9j9kdmijD50i/abPWAo1VZ08ieP0RRxV1MzJ7VLe0f6L9nX+RK557qpAlR6/Xej6x2hXcp
	YICFxIRtM+Ad+BYjToxQ512YyoxdvfvVIGYJLKx/86gu1AuzXHr6puoYVtsi3wuRZ4ky+8YO391
	AnMB5IlNB2iJw=
X-Received: by 2002:a05:6820:2909:b0:6b0:be69:d3cd with SMTP id 006d021491bc7-6c53f9793eemr3779627eaf.17.1789467024215;
        Tue, 15 Sep 2026 03:10:24 -0700 (PDT)
X-Received: by 2002:a05:6820:2909:b0:6b0:be69:d3cd with SMTP id 006d021491bc7-6c53f9793eemr3779357eaf.17.1789467018975;
        Tue, 15 Sep 2026 03:10:18 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-14382741839sm14244091c88.6.2026.09.15.03.10.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:10:18 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Tue, 15 Sep 2026 03:10:00 -0700
Subject: [PATCH v16 05/11] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
MIME-Version: 1.0
Message-Id: <20260915-kaanapali-camss-v16-5-c9f3f6f4180c@oss.qualcomm.com>
References: <20260915-kaanapali-camss-v16-0-c9f3f6f4180c@oss.qualcomm.com>
In-Reply-To: <20260915-kaanapali-camss-v16-0-c9f3f6f4180c@oss.qualcomm.com>
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
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE1MDE0NiBTYWx0ZWRfX3Xoizqqz1zkE
 mrgqz6LBaWcnNJh7NshHpHiQY+HG5bxB2Z02Hr7nyZYt0ihJt38jQXGcUjrS8yEq0bYEriYGIk3
 M18XgFqMC6eQWIQXFYV6kZDntNA88d8=
X-Authority-Analysis: v=2.4 cv=I4Xw19gg c=1 sm=1 tr=0 ts=6aa91991 cx=c_pps
 a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=YI0lirVkik_cQ8OgtUwA:9 a=QEXdDO2ut3YA:10
 a=efpaJB4zofY2dbm2aIRb:22
X-Proofpoint-ORIG-GUID: CmNCoMBizRsKv4Fl2r3NkRPtQDz1-HMJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE1MDE0NiBTYWx0ZWRfX9TadoIcBuDqz
 7P2Yj1nwiQQV/pO9urliyx5egcmlptj0K5t2uKkR4cCIKaKdKdBjLph54icU6GwVs6wx8iKElDj
 yj/jk1v9XjHhwKeoEr2kUUAUJOF2+3+RJODFz8MhNkvlqkTqCW5qXBZ3PTkIKlbV6izrdb0Y8iU
 jRoci1CH9eQh6SyEbKV1aQuiP28B53NrbnTTn3XykKv+sX4apBvWz5mV+mWWFT0YUpk88dLvi63
 NON3yOj0hSMf4uKo52KGKtchfkOn+CqkGtjK6jzrnL9y0c1ZpEvwyTlMTA6MjNoJYV9hnOMOZw+
 IqJXHv1nIgvscApcBlm4I2I6bWkR2pqPo+ScujcPOr46Rphew6AYnObVjss/rC4VEXM7D5opLDb
 12uRzNKPM2X8ZGuvQ1uboBd97CqF4jxGO4iDRxfCkxAlpd2x6YORBpA9U1nPa390GcCTGvKW1yf
 e1m4P4pi9Q+09U/yuKg==
X-Proofpoint-GUID: CmNCoMBizRsKv4Fl2r3NkRPtQDz1-HMJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_03,2026-09-14_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 malwarescore=0 impostorscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609150146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_111027_679967_0558991C 
X-CRM114-Status: GOOD (  18.87  )
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
index 2c9f02bca809..0a79484ea1fe 100644
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
@@ -5613,8 +5664,10 @@ static void camss_remove(struct platform_device *pdev)
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
index 4227f29ad1f6..b766e1ece660 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -441,6 +441,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 
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
