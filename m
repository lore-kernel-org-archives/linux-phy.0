Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BFEFE75448
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 10:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sB2bXA+oNnUVYGHdf7pfrJnRQfaLTtoxXTznqsCghIk=; b=aJUC68eY/oiBrY
	hkbAYuXYuAX3MhvUfr2Kn0HdQ2ov4isxiPnPy6LGjiVgaz+0tYpg+usIPFK3XUB3Xo0Ktrqer+gtF
	Q4Zh0q8hJgY/CPEGNMJ0ja2sQ9LIWOuRtQEas52YkHR63n/A6MZjREae5C5SaUaf4QT5ykupxIG9n
	eDV6goCgjLpIUFDCpjw9MQu3SewUHkJ+W6miXACZJQXe3kCUgT40u4n3gkvQfRKVajmXVIP0aES8+
	cjbbpUGRSUNlU5g5IILgHoTKxHocgo2En4jF9qhvEx32YQfRIN3IOhMazgYdhgeW1D7UcPx5FnlZW
	49nEsBGqvbE0h6t0uuFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMVB-0000000GiCb-3fgU;
	Wed, 24 Dec 2025 10:53:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMV6-0000000GiAV-1fdG
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 10:53:56 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO8Eh1p721977
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 10:53:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hr/7NsS1XQJHFC/38XgEfnNBmTNHIdsl1ejxyMyLWLE=; b=aFoXftVK8dqnB25s
	n3209ZWtG9xELZkESnJOgLQWwA4g9f6cbfQrD3tnQY5sYTKgl2yytQT2bd7YBVXP
	D3uh/jgu+Kq1hIwjvi4/QEH7dD7VR5F4tcO+KfXU8eNlwOnd9Mu1KJbXUXH7K6yr
	Jxae1zU9QIcPrgV2ajp1ODwvnChl29dhA2fnAkLBISUlQgM6dL3yK/pOZD5D+12o
	gfeV7qZDJrvFxHI2oWUP5kjiIjC1rCM9xA9podiRY5ySWPa0TJsaHQlpPpmE3pE9
	VZhxY4VPqm7WwofuF2GElOkDU2MKjB36caUOYOznCsxh4+07y41Ajx2sg60mXbKN
	2PdGag==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b81mta0eg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 10:53:51 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed74ab4172so136545611cf.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 02:53:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766573631; x=1767178431; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hr/7NsS1XQJHFC/38XgEfnNBmTNHIdsl1ejxyMyLWLE=;
        b=MJJBTiE9lVMJI/6utW6I34Wa9iyQOqWZ06q2rIDcy6kpfxHfUDQv8D9PpvxS8wFdq7
         OuPJdAFpS1j0PSieRurBiK/W/C1ofbllj7kUSbm1jluKUenVbsjODVfvn5TKiaRWU4X/
         3oKM2hAk8ZkE9Fx8XLx5BYbYZIsJ8VkpUJFajMbnKxsLIuK99Qke+1Cmv6yE5VJ8hr8k
         gAU+Mm7t3VFEDzmwtNYXQ9sSaB9l/JXsSCxFNJaOxwbXXzdzO1aqzZ8YTLxAZxnCWWa6
         d6782vXRPC8xQTnwfWw3eil2fGKYZzNYgtC4k6O/w8CXM1QrK4JQE1qsTevaFu2et7TA
         Dr9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766573631; x=1767178431;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hr/7NsS1XQJHFC/38XgEfnNBmTNHIdsl1ejxyMyLWLE=;
        b=BHTx0X3GegUTbvU6EqzusfNht6CHm+HHYiXH5727t6rFdHU+45SJwcGckRMZbeUAGx
         xhVewhltgwI4gVk6MudTx26u7awFCokrRqbm/k/36N5j60tagTDNo1CQAVemCBhBADu/
         MgGhJM2r4C8+QqgIBbVhSY8FyrMwwWm06xafjqq6UixDkg33q8YG+bUqSfB/t5Zlr4Bj
         wEZd4h8skzTaqpzbF13TIvJo1A2D6a/rl9xY5WASV1zLSbizC66MXXJt+N/2K5t8y2+V
         X9Ht4olb98yIlGS4802s/3AP6kHmQV/BW7dGo5UwMMVC/A8hJERGyypmqbtIurxFe1xq
         X7Fw==
X-Forwarded-Encrypted: i=1; AJvYcCU9FKGgmbL7stF4El5uQZYRdeqgwln+Qbs7gU9RHESX3FSuT2zArNxJaebDjKO7So+gLE6B9BMpEC0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwiBZob95HrYOtdeDALxm2U6VwEXe8YPSsplDksWdvQWUSE1fa/
	WmObsYvPflfGfidhn2VQ8xAY3+wptGlXtAZNptW5fK7BdMpP8Za9ylJd9Fo7L9fhf30GEL5hSmd
	r1Ch/H2pGsdyXEyVgbBsvAwtLewVj/ALPMC0pvmwc2kx3X+Fxh2xQWMER7ekn/cbXx3ba
X-Gm-Gg: AY/fxX7Gj8C+he+kWxt50+kPS09SRhx6tywEdLLUtLJkmFDXd3irnG3AV+P8P+XSLUo
	DMpjXaaDP8NIuhw76uK8cKQeknXmRfPta+t/VowxSxkWDcF8HNvdMsVuU4YixCSUqSu2YH27gmL
	NbGaIOa28e6tOORNvQ5NkZzJUjW9/FxpmNrf0BsrcRsss2JWlprBl9XudSVBD246ivpDD7KowS3
	CTFEoIIdJltzA2GFVBdL6as9qV6f7NC3G0uyjMa0JM3BMDCpzeTwWSgj56nBvRsK8tRH1zyloRX
	Pp8enlGkehWWBZjlyWSb4orPMLSk77AA3ai81b7IGyyZk3J0cGOs7iZXAx62Qo/L2D27AmucUoY
	0jzFoACf/vDbKNnE=
X-Received: by 2002:ac8:5dc8:0:b0:4ed:a611:2da2 with SMTP id d75a77b69052e-4f4abdbc5a8mr227117731cf.68.1766573630699;
        Wed, 24 Dec 2025 02:53:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEVBYCcLZ1f6Aw7cn/TjM2tmGLFQOnwpJLvg+fIhrlxkxbQOEzTY4C+8wmsA9u5pBmR/MOFSg==
X-Received: by 2002:ac8:5dc8:0:b0:4ed:a611:2da2 with SMTP id d75a77b69052e-4f4abdbc5a8mr227117561cf.68.1766573630096;
        Wed, 24 Dec 2025 02:53:50 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab86cesm1737562566b.19.2025.12.24.02.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 02:53:49 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 12:53:28 +0200
Subject: [PATCH RESEND v5 2/3] phy: qcom: edp: Make the number of clocks
 flexible
MIME-Version: 1.0
Message-Id: <20251224-phy-qcom-edp-add-missing-refclk-v5-2-3f45d349b5ac@oss.qualcomm.com>
References: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        stable@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2595;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=D+lMLFKk1nDEVMn0lCuyYl8tvMI1zx20USHxDDW0D1w=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8Y2tXYcDJK+hlLQR8UhnVojF4Lx+oV75nFVM
 ggGkCenkj2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvGNgAKCRAbX0TJAJUV
 VkvUD/9vgZ5HFTV15ARXUJwDwnYBufZFHDSEdOlpvZOun72nqHtJyASuAcjDz3rRb4ffCwExYY7
 utfqH0wVImOIg3MojYcAiC16GRnMSTY20hsYKtxLmoVbbbPef68GFwK4ig+xyw8x4l4/vx2dxyy
 YE/btlFfO2nh6ZnDm2zuO+xd5MHL6vtRx/L7ivrtZGEXzeJWoApFIOAqsHG2rpxop141muB6KUq
 ELt2flyJFeIipvDJaYwhHDGfcgP46r148BGb9UvbrqQovGHPeAIkcJA1PhFgxD4jtpGXnQLrnO2
 VuYw4+g3lIcHpAA/yUZsVqHa0RDQ9sldDAp0kYr8T5LtmrI09whniNQAAlvFspDvCHdAnjgo9YT
 CvIDRYaCTh6cZz1xPMQ3A4j4obynNWZxoLCBdyBIqhv4hHeCQLhYN9rvPj8poXwudjZ47J3cZcw
 WFP+ED6HitXGRcg+7GyflPWfsPdG6hJwBEsyW7EysM05toy5tPFeXgcuOizPXU7gNgt1XtAZ1Wz
 S3F0GUzfsM4QvV4lwtNslRhga1g9pDp17X8L46oUHRgLQ8ZdysvebOjbFFNae1QIh4yUD7kDTjb
 5pPAjQrmwTI8scnutRFX35ZjdL6FHLAAwArk6yYrrcgosk8B/202ztSCkowk4a+o0GyRZbHlR7d
 lWDqS+wE0ggWOeA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=e/ILiKp/ c=1 sm=1 tr=0 ts=694bc63f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=J-Zs_ZfDLmX6yROVY6YA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: hMJ7FpWG5V_uxfZR3HWNPsccT67U9MLG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NCBTYWx0ZWRfX2IMk8S7Le4DH
 dEzqKZ6xjXPNZGSn6HyYquQkB7amIrB0eUrsjN/uL0VhbuYwkdZiXCQriu/cMxrMYYTBSd2sUpL
 o/nL/XRERA6ujss/0cNhCOPgZczvwIMWEq49biuwD3ocVRbC2XRZTydCdDz/NGulHL2cvsDOdsY
 UnGL+rwpix0sJpPNOwYlBaAvmU5R8N13MYsCC2+Y9owhVpbj+aPgM++wB6RXrb0Qej+WhS01YQb
 xjNgEmkMl04AW2Bmwxk8ZekSZxpr4yXgliSPi2qZ7EC2U3k9SF9fFp/VRHIUBsJJRTE5nbfIqMu
 GlZrP38ebYd1EvIG/srA+KoIpb14nEVY5K7L5XkcL8kobxMwLOHFsW5Ktq1J1UJ6V+X/edlr3OY
 WgBlqMJjmN1m/MVSo0NC7eCaPcQSg7YD31tVtqitQzDOkKXdhlV5Mo0I6QBmBuw6DXyJ7LIPISy
 nSi6ngsq57VSpWQCpIQ==
X-Proofpoint-ORIG-GUID: hMJ7FpWG5V_uxfZR3HWNPsccT67U9MLG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_025352_562796_EF88B511 
X-CRM114-Status: GOOD (  18.66  )
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

From: Abel Vesa <abel.vesa@linaro.org>

On X Elite, the DP PHY needs another clock called ref, while all other
platforms do not.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So in order to handle these clocks on different platforms, make the driver
get all the clocks regardless of how many there are provided.

Cc: stable@vger.kernel.org # v6.10
Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index f1b51018683d..06a08c9ea0f7 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -103,7 +103,9 @@ struct qcom_edp {
 
 	struct phy_configure_opts_dp dp_opts;
 
-	struct clk_bulk_data clks[2];
+	struct clk_bulk_data *clks;
+	int num_clks;
+
 	struct regulator_bulk_data supplies[2];
 
 	bool is_edp;
@@ -218,7 +220,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 	if (ret)
 		return ret;
 
-	ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
+	ret = clk_bulk_prepare_enable(edp->num_clks, edp->clks);
 	if (ret)
 		goto out_disable_supplies;
 
@@ -885,7 +887,7 @@ static int qcom_edp_phy_exit(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
 
-	clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
+	clk_bulk_disable_unprepare(edp->num_clks, edp->clks);
 	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
 
 	return 0;
@@ -1092,11 +1094,9 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(edp->pll))
 		return PTR_ERR(edp->pll);
 
-	edp->clks[0].id = "aux";
-	edp->clks[1].id = "cfg_ahb";
-	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(edp->clks), edp->clks);
-	if (ret)
-		return ret;
+	edp->num_clks = devm_clk_bulk_get_all(dev, &edp->clks);
+	if (edp->num_clks < 0)
+		return dev_err_probe(dev, edp->num_clks, "failed to get clocks\n");
 
 	edp->supplies[0].supply = "vdda-phy";
 	edp->supplies[1].supply = "vdda-pll";

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
