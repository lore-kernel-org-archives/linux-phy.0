Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CB80C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 16:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9MdgfbDS8NHXgcgeFKI50wFc1OMJdVWAT0xzysHyciE=; b=ijeHMtjnOHBDtg
	IQn8sJs+xpYgKPbgeX205cxxs3vsoKwRINu4x+72mzLij/69UBzHr/GdO5sidkDaXQpMLr2qzsLp2
	NCuFCKgSWgwDb0BCi9R8CgWtWwwro4IWbw7tnQYeS9a2KoVbIoAshWckr46mI111zbGdFo0s19t7F
	CB2ZG46loPC1QUvosuBsTf4LPQz1cqk/azdl4pekiZxiJw8da/y0D7Y9sgxjGmQ2E9OYu99EYmB58
	HOsPtaCWOtrSRjL41Jp9ab90xx5leXg+hIWYDGTkyrc5F4SzULDFBtLEFkOL9iJWyCHKMw6VeJHIF
	IxxMCgebTWVCXzbafHfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey9q-00000002aoq-3h3W;
	Wed, 01 Jul 2026 16:51:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey9o-00000002aoJ-3RMP
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 16:51:29 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 661Gmvrg1590185
	for <linux-phy@lists.infradead.org>; Wed, 1 Jul 2026 16:51:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=j56RPVoQs/E
	HqShchuuBXHfNfL9pTjlMbfxbxuh9Cys=; b=giOXUSKaJro+n24ejMoiOwvUF88
	DNqr+xgBKL0TYNnOoAO6RsB8hOBjGdZlCw8yjaOKD4OTSb35jfqnvpAYgVSgiTlZ
	5aoq3Fj42nrXd9sG1utSkYurlV1td1ymzgujUDp9eJcniq5liWTBZV3O2+CoGxnD
	dMW3eHzm1A/kabH0j4UDTEz7Pf4zHrO8lWM2qtPhJICbB4CuYxrV5Zy8s6yytk29
	r1/CQuZzhmtv8hlNacxlNLruOaiDqGGIkoX1aa7Pak+gZRCk4zCXE9IZgNavhPiT
	ibRjmhrfERv7qLu5966WIQUOggCBFIhhSI/dIv0l1fmzKchgOfcD/soD+sw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f53q08vn9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 16:51:28 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-37ca4367860so1613955a91.1
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 09:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782924688; x=1783529488; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j56RPVoQs/EHqShchuuBXHfNfL9pTjlMbfxbxuh9Cys=;
        b=M3gw+Kgm/FjN8r7NxBEdZVfXgwACXYQggRf6q4+AbcD/fNHTwifDDTiCbyvdYwM05i
         SsBdbrUeLIEY0xXgdq42J1bDF4YroUfc6epfgkmqWT5Dx4peN9jFVlIOmoQyrkz3TLic
         hdww/tnAvUH0VKwrFj1cCUSmzWFWlTJ5WIzsLPu3c7GqRuN0ZOQu2aRhfjZhvGN5hP9z
         P8oTR9waJUB78yWp0VqW4TeXR5/Mjalg7xitUVr/QuQJqCS/0fl8G++CihuOfRour0tL
         6WY3FSFH+Ni/wfA6AyKlasQcK4N/dtgFGDPoEpW4pgdy6QALz0HCUoR2SPQ73JPO3CrK
         zjLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782924688; x=1783529488;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j56RPVoQs/EHqShchuuBXHfNfL9pTjlMbfxbxuh9Cys=;
        b=SAIBi24Eaj3mbe+LqfEpmAV6XIA9MdOySsWBP8b99AilRsbnYDkDDl4fMiYEdw36xH
         XJIqQ9KyAvsFC+lfslf0GOONrF0Nixwb5h6HDgd0+pujrlaKd4Jsi+GsEIF7gfRgwczm
         wUjx+xEUeQ8NCG7iNRJR//x8fJ5TrYl6ZOf5NmtduMZB1EthRVNufEBwYdDfCLErRp8Y
         +P/YDQhNouos7UYTg3feLdFOg7Sd4DDrE98My7MOG48a9Q9gqm19LHtafe7DE9c78AxW
         hzijK+tDH+fToNzkoUbuYhaMj5tS6TnHJPbnI+jBjx8+ejUiTKB+uRgjaLGMcXZ9262p
         FSHg==
X-Forwarded-Encrypted: i=1; AHgh+RoJi2MIHiB5HamV7Yamlcx9LZB8C2KMkebXwHhzOIDxkFBx+OFT/szniGrkaT7okGbYyhN0izTBQzY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNhXdrlluZprkRbw38hTBR1sW5E3g04bhtw539hkkd+U6ENTjU
	92d/oU/3eirWXeXKh5ugccy0D3QJ+4DwnZJojqB7BEKBoYItiY2XS9x2V8lNh+CiTqxUyOFFs6I
	YyvsbTutsoc89sNJO19PRW+8LX69A8OnHe78I6zoU0oqIKyYp2ucCr4dwqSj8AEMSbjix
X-Gm-Gg: AfdE7ckT5OfGf548qEUBYcs0Mvs4PhIRNgG+ydu2nQMTQu7JfXFPryYIXVE29sS+KKX
	O2CsFf9fVtQO3RTRNA0jowKzSpg2irqEu7ZwZVQMn1UznXolAgBnh2J9IHX6+LUGMldFzxjOMKi
	MACX2457YDKN8zI81nG6YrxcoROzZYSKTo7SC0X+nHyFc9CJLWXaujmU8jlgNlsSXfX3OFWR0Lq
	31J5/4PAZXW4bVegnirCKogtJ7W9KzGC0oMXgqzPcUlxdYAxe4RnjBh0Uav9Eus/fNYbGViuWt5
	pp+Ir353XAXULrOkKYgfScj+6KDLPwbwXY+o5DvxAP0UrcFnV9vyYJ6zjh8NCxeSiYIyvkpzvgG
	YSpFB/0K+r0wR1SYuhdYsfaLJAEj54R/ie651ZsDm8xVKW3HnBiau9p2/9VII4qNwrBJt3E2a9V
	JF3O6x
X-Received: by 2002:a17:90b:2d85:b0:36d:b12b:f57d with SMTP id 98e67ed59e1d1-380695869c3mr5471905a91.12.1782924687656;
        Wed, 01 Jul 2026 09:51:27 -0700 (PDT)
X-Received: by 2002:a17:90b:2d85:b0:36d:b12b:f57d with SMTP id 98e67ed59e1d1-380695869c3mr5471863a91.12.1782924687216;
        Wed, 01 Jul 2026 09:51:27 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee317095dsm33038935eec.15.2026.07.01.09.51.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 09:51:26 -0700 (PDT)
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
Subject: [PATCH v4 3/4] phy: qcom-qusb2: Add support for Shikra
Date: Wed,  1 Jul 2026 22:20:50 +0530
Message-Id: <20260701165051.4122259-4-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
References: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=dtnrzVg4 c=1 sm=1 tr=0 ts=6a454590 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=Fn7aRh_OGbpVAvsfffcA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: 61zVpseg_cRMDFEdnJ_1fPCEuJJHzpe0
X-Proofpoint-GUID: 61zVpseg_cRMDFEdnJ_1fPCEuJJHzpe0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDE3OCBTYWx0ZWRfX4BTiwnZEOQ57
 xNoUJb2CijRhfeKXqXr1nZzVY0UbM4qGegbychfSkzaUMxmmeNMS6KV7cJjob4KxtiIR9E7R2C5
 JqfAV0aNlk6E/bXsy00NJjmluS1kOxeK8hnidwbNn8XoH7BHIv5XQT7UuND7WRZ/Yr7EMIssPxX
 PSrnuWqU9Hx74O7euwh+KtktpB2X14IQFk4+SVyj5oFSXLJ3gyQi69f43W441iGHpi+q39UB/q3
 YOcrncnOLXCdcacxq/Xwdh7YtV3W5eZohbm2gmNeI4mqK5T9cKq+T6CL7rjodJJUfW7gRtCs8mQ
 kBkziHyO4gGx5f7nAcf0fxZyVVyWhd4hD4/JdRHHSAicZpMZmuwH7h10SLCKcaPgIC2BepnSLvE
 2hWIouuREPz6CpRCfCu40lbU+dahPk+elLFoazoKEr5AntYC3Q1+EH02LZOYQ9/mHxCHRkQhjIy
 WQOdTHFMNoAIhxwcvkQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDE3OCBTYWx0ZWRfXwezV1X8q7DA4
 rKcBHw5Le+OisL3/JphUgwy2PI5d/lZBdVwQ0EHRsQBc2rFfnA84qmYkxCH+AtIZMliZMfFAElS
 +5JghxMY1x403ALjIKAlk8S22sxaMpE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 spamscore=0
 lowpriorityscore=0 phishscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_095128_860014_13557AC9 
X-CRM114-Status: GOOD (  13.02  )
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

Add init sequence and phy configuration for Shikra.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index eb93015be841..ab7437e7b751 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -381,6 +381,19 @@ static const struct qusb2_phy_cfg sdm660_phy_cfg = {
 	.autoresume_en	 = BIT(3),
 };
 
+static const struct qusb2_phy_cfg shikra_phy_cfg = {
+	.tbl            = qcs615_init_tbl,
+	.tbl_num        = ARRAY_SIZE(qcs615_init_tbl),
+	.regs           = ipq6018_regs_layout,
+
+	.has_pll_test	= true,
+	.se_clk_scheme_default = true,
+	.disable_ctrl   = CLAMP_N_EN | FREEZIO_N | POWER_DOWN,
+	.mask_core_ready = PLL_LOCKED,
+	.autoresume_en   = BIT(3),
+	.update_tune1_with_efuse = false,
+};
+
 static const struct qusb2_phy_cfg sm6115_phy_cfg = {
 	.tbl		= sm6115_init_tbl,
 	.tbl_num	= ARRAY_SIZE(sm6115_init_tbl),
@@ -958,6 +971,9 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
 	}, {
 		.compatible	= "qcom,sdm660-qusb2-phy",
 		.data		= &sdm660_phy_cfg,
+	}, {
+		.compatible	= "qcom,shikra-qusb2-phy",
+		.data		= &shikra_phy_cfg,
 	}, {
 		.compatible	= "qcom,sm4250-qusb2-phy",
 		.data		= &sm6115_phy_cfg,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
