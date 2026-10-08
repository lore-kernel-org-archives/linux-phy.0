Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C571ACA6011
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 07:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIbB5kwZWqdoKwLcoBbVW7IFu+RvzqrOdquUNaJ8l9k=; b=aLTRc1HghhaqCX
	92KK9WTPp6RZbKAkDRicSBY9NAh6IoPyfiKgTrK4h7ORYjncHQm4cMwm9S6KOow5roT8d3KGwEcCZ
	XLya+rQb9R1SzfsVfcA/KcNGXdB5X2Xdb4spi1z8d6oe2HoQg5M8tVJ7vL1/KshUyE0J2afcinXSu
	en4m8MVOxTllQA2cOfc37wKB3JNXUsd43TCO2D35i2IGQtePs7cKgcgC7mwElO/vzFuJY7No6bq0H
	OHjVeYBBS9f6EC82X0OSTVKmRtIt1X4b27HWyZslWmmTuyZ0BID0WA60KgXjXCcQ2XI5vP2yu5Ven
	OmBNHLaFVK/pBrgWjqOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiKz-00000003iHD-2Btl;
	Thu, 08 Oct 2026 07:14:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiKw-00000003iDv-2e3o
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 07:14:43 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6984Bi8B1776068
	for <linux-phy@lists.infradead.org>; Thu, 8 Oct 2026 07:14:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RXUsa80x/1w7XU09zAB/IA5nFL6Qb4lFQWBwrWEvNZo=; b=Bq+mKVIZwpFHuCnT
	+aBkQ/R8PNFJUaPx4NolHICK7EMNc0FrDQ56yUQydSDyibu5ELTt78d5/jCMJuHO
	H8fyVIVZhkIpTwOXfPH+YuvjlDdfel9ckob9NLmrqjCZkP/nVn7o3uTOE7C0AXzi
	Re92LD1KDmi19Wo9ao4JPrxR+a3PrYwJAEABWik5+dglpyaq56MZ3FOW43x8nuMY
	MyajmYTSwAR66j+2LZ/+FCIBpE/2/2K5cEBpIjAlnwM2zqHsO2z4IgP7SANaEgbE
	a6yOxWy9Itm2JccFOUhGuQDQCEFB8+3OwvjmAx6wh/PvfjmLsTZYQ0oGfrcH4k1C
	wOzqPg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5xe39kxn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 07:14:42 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-34d62bb27a1so20848627eec.0
        for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 00:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791443681; x=1792048481; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RXUsa80x/1w7XU09zAB/IA5nFL6Qb4lFQWBwrWEvNZo=;
        b=Or1qx7ZVbZnVJtClkadiNyelxePbxyc4AcjTLAGUnTMv6nBrHl2K0Uwb9s0ZZme5hn
         W9hNPQIZ0G+ddL5G8HzM4DNVPNjR/QF1R+VGpR4HdF7PB+BpvvzLEwV7D2e/9ifE7M1F
         0f61To8YRCE4aiJfhx0UgGfDmD/OzuBgQtRCtmLrk3kLnvS89fMfgfG2NQqZCxbhOU2I
         vfoEE8gYxKLjo8DTzO9MwkrtFowblxfKNQAWhBpnbwewuBdak9z4pVP1p7zvasp250QN
         9WPeDWk0Dky1NZ/AVnmG77fhu1SvqASWqUVAZkCObuPScB4MoHKlFykSmiy0jIif1IX5
         ZNfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791443681; x=1792048481;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RXUsa80x/1w7XU09zAB/IA5nFL6Qb4lFQWBwrWEvNZo=;
        b=ZzwBBXzwB9tBEfN9YsmI2v7nDRJKPqIRM+Xrd99Hj+/2M3dvqG71o0RRiyUtWlwz2H
         h22KoYizVVGXB7R/fefS7wvNOp4fMNS0Bd3au5ca9qhlApAeMXLFZSm7JT9aCgKOJ568
         Wv6sryTMB0Gq219XLXn822WTEzVh0qoE4ELs9m3mgWB4G0g2FpD0R6igY6k7Wvh9mxo/
         tzUVF6OQiB0UU2PoWmOkULifTVRs1AVVR/6dK6a4w704HUdfZyoAywCh97GnMI5S4G7W
         mcQgKgG5yfIvoYqoKWbYG/VTjREKrFQ1jCYmFnwDh6qLjb1bVzcQKN9XPg3OhGarO39C
         /0sw==
X-Gm-Message-State: AFuF++l+eY0B1Fl7LEGYIFyLBt5L/Go8fxZ2ezczgIxnlr8tdDnEoYiD
	To3MAufCVQCrv7bMnkLstA6nnKZaLTi0AKGFzQcUDs7VXRI5vxMptrl3SW+44aMRnK0rjiZHPxo
	5PPXLGo59SZHkhHYWDY3tHwhqlQAhCnMl76bYZilsNzRmiSX61/eXdOVx772Gp3DI0E+f
X-Gm-Gg: AYBFou3XYmVjnAJ1BHrFUGAbjHXNa3dI3rvLyN+EK0YH9jJVnJDBMcHY/v4SV2U76ci
	9nvt5m1VYsLJO9u0nH+oGoWqA6xXoueBY0ziVjChJgY8PLSerajKfTtaltDXEHuentfvasO8JvN
	eQu1HhESPJ9+CEiILMA04jhpFvo/+bqKOzNZrgoyf9ugNqWXmCHtSTiRVmhIQ0X7NIJlVe8cV12
	oz4Rm2scdvebSsOd/QQTpf4qW/02E8cs4WzdPn9EzIWffFgLtnyyczLKA+6onXO1kO4vYbPG61k
	WEHf2vo0MOxLowi84yd4+2/G8RYaf8W9MX3XUpAHdPbwGsGYS4DGVzF/0lK6pKDus+QApTMTlQa
	YnnafcQ4/DM8ntANk+84g3I73bJxuNUgytWUcrZSQcIdeIqksHplSqGsNrzKO0N+5YxxZ9CBtCg
	uNx59tpOHGpw==
X-Received: by 2002:a05:7301:7d16:b0:352:4f11:8118 with SMTP id 5a478bee46e88-3524f118159mr275080eec.40.1791443681318;
        Thu, 08 Oct 2026 00:14:41 -0700 (PDT)
X-Received: by 2002:a05:7301:7d16:b0:352:4f11:8118 with SMTP id 5a478bee46e88-3524f118159mr275030eec.40.1791443680585;
        Thu, 08 Oct 2026 00:14:40 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3515af155b5sm12251625eec.12.2026.10.08.00.14.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 00:14:40 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 08 Oct 2026 00:14:35 -0700
Subject: [PATCH v19 05/12] media: qcom: camss: Add Kaanapali compatible
MIME-Version: 1.0
Message-Id: <20261008-kaanapali-camss-v19-5-b2c583ef50e0@oss.qualcomm.com>
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
In-Reply-To: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=J4s/fwnS c=1 sm=1 tr=0 ts=6ac742e2 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Eph36bqoL6-XvbZcx_wA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA4MDAyOCBTYWx0ZWRfX78quvG2z5OOV
 GSFBLHdT3KK375AB/KX9OH2nFJt9mjL0ICocSkQNb0iL3KPiC8pMYRJ016mxFX6fCq+iT/ua6Vv
 AzrLp1SNwrX2+O47qX8ClRM+KwCdQlk=
X-Proofpoint-GUID: eKacbDlwu-O39ZkQV3oNS6swMj-yQXk7
X-Proofpoint-ORIG-GUID: eKacbDlwu-O39ZkQV3oNS6swMj-yQXk7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA4MDAyOCBTYWx0ZWRfX2wuG6J++syPB
 JL4cbobAo7gYfyDaPDS6f2766EE3VA5cA/GoYhZwXDDz7uSx6t2JvZ+vSJ20ofKwU3ngcvB9F94
 RpOqgxhtpbZsRcOJDgNNoTLDlCiIbnialcTwQkEs8u6j73s5GKAB8ij1/rH7qooMSb5a05lrBVT
 7idGdoNovvIbklT03PqXdZstJMyHjmJANfbjSXs30aYsjGcAz9SqeAxypjInChSoyi+VEnE+0pd
 Vpmjsr5uia0jhKSuEkWFzgWF/hhj9kLbD4oAe1xZHuPSeDrQkvAYEFXiqZ2tVIAJ5BwamTq38YZ
 dVItW15ViIAEYLCx0A17uGUfkf0V1zD8groyC9NAv4gMa9PRASkP83ncHfw4drjRKg8V2aQm/o2
 jw6MsZ3d8YGzAOys4Dn4jEikWsbC6ejoyj1lM7lAg1e669k7xyTukOjBnFoZIEN7yyVjpDi9e+S
 UJWoMdlgznaKDxZn1xA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-08_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610080028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_001442_705105_D36D15DF 
X-CRM114-Status: GOOD (  14.24  )
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

Add CAMSS_KAANAPALI enum, Kaanapali compatible and Kaanapali CAMSS driver
private data. The private data currently includes only basic information.
Later changes will add CSIPHY, TPG, CSID and VFE resources.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 22 ++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index c54185c93a8a..fca3de214a92 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -38,6 +38,20 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct resources_icc icc_res_kaanapali[] = {
+	{
+		.name = "ahb",
+		.icc_bw_tbl.avg = 150000,
+		.icc_bw_tbl.peak = 300000,
+	},
+	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
+	{
+		.name = "hf_mnoc",
+		.icc_bw_tbl.avg = 471860,
+		.icc_bw_tbl.peak = 925857,
+	}
+};
+
 static const struct camss_subdev_resources csiphy_res_8x16[] = {
 	/* CSIPHY0 */
 	{
@@ -5576,6 +5590,13 @@ static void camss_remove(struct platform_device *pdev)
 	camss_genpd_cleanup(camss);
 }
 
+static const struct camss_resources kaanapali_resources = {
+	.version = CAMSS_KAANAPALI,
+	.pd_name = "top",
+	.icc_res = icc_res_kaanapali,
+	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
+};
+
 static const struct camss_resources msm8916_resources = {
 	.version = CAMSS_8x16,
 	.csiphy_res = csiphy_res_8x16,
@@ -5810,6 +5831,7 @@ static const struct camss_resources x1e80100_resources = {
 };
 
 static const struct of_device_id camss_dt_match[] = {
+	{ .compatible = "qcom,kaanapali-camss", .data = &kaanapali_resources },
 	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
 	{ .compatible = "qcom,msm8939-camss", .data = &msm8939_resources },
 	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 7dc2fd9f03e0..0551211f7948 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -96,6 +96,7 @@ enum camss_version {
 	CAMSS_8550,
 	CAMSS_8650,
 	CAMSS_8775P,
+	CAMSS_KAANAPALI,
 	CAMSS_X1E80100,
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
