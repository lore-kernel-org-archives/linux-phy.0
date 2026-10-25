Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172F560A6F5A
	for <linux-phy@archiver.kernel.org>; Sun, 25 Oct 2026 03:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=F2pvxeyL;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=OZKWQNWT;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=HaLOstc5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qX1rnX5LSEFqQOTISXgqr2f03P9rRWYOjN+e/9v4irE=; b=F2pvxeyLpib1tv9/bghCq9mPCm
	nX7u37ZCUIAyi+ekq6TyY050K8xkJTIHmJHadrviwrg9yeN+ovj+XBf3qj3aBq4AED/kH4CnixDDX
	WW+UvkrPKzeuz/pPNnFHkNiAEDihjqNibFAmz60BpbLfK4fpHE0cy1iuD+N6Ooy1ka2tfFwFXysXb
	B7x6Fn82W4EaRX3zgUz9HPnbHJu2owIS/gPj/Vunwqdkor+VERho6gtptnXntXh1opmljmhrnKvTE
	kuH5DkNyNTKcTTJw/Ih59z8/ZNNLER64RM6x8sOFE5sdg1cOkrR1SYVzFhb3PdZ0B7Prv/SbnYgbv
	0oLEOHHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKojp-00000000gmH-3OqJ;
	Sun, 25 Oct 2026 03:17:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKojl-00000000gic-3GCO
	for linux-phy@lists.infradead.org;
	Sun, 25 Oct 2026 03:17:35 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69P16UMW2776197
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mtyicMFphg8NIVF2KmS0oSGWOULir4B5NzOfXYC1xoQ=; b=OZKWQNWT4TkvCQXu
	+v6UTayRUYUaMkXQmkbSbDWqK+TNtKBbvvsftYBZvd/c/CTbbzSxEDxo8ovKVgTw
	GQAUIjbvYpkRUdvhGanyv2HWgZyr/kihXxSzGKbAQEhY0y5k2o7FLs9gB4oEnhJw
	xgDx+Adf6Bzhs8D25EVRZmTlTPETsx0JGBpfEdv6Tf2rKEt/Tdp8a5cD35OyZusm
	hB3PXvaCOYxTGZKhHD1woYoV8NZ527iXj/r2xLFMH3U3ZZCcURSCXPh6W2cKzioY
	5A1Zvnu/dSBMN0HM9+tAtwD+nRTeJ0NpBN/mZMJXSzHQh0MLQ1IMCx5NcjZZlA7a
	1tu0rg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hgm0gjdhp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:32 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-30c0d568830so5507883eec.1
        for <linux-phy@lists.infradead.org>; Sat, 24 Oct 2026 20:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792898252; x=1793503052; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mtyicMFphg8NIVF2KmS0oSGWOULir4B5NzOfXYC1xoQ=;
        b=HaLOstc5K/6xfxP/Jq7biAVzJpQhI5BoJEIg3cMrfW/alSTg7wZQ5A570bkLNcuAOQ
         UAIO6BkR8kYtRN6ZWiT14K6zAcRQvYyyoZdy6vOHY0NRP437qURKiVFX/1QztJ0RjUxI
         /PWm+6GWp3sFEqQEK32B7dJiv4GXmpsMs5f9wSlFMm4TjIXHdksT1Hh4IlntJiktRH+1
         vCWoSNeJ08Xi3SfOr6iXwr+CwOiz5p9I718alfmCR5xxeqHD5j+6vMtuph0q7cpnhn2A
         TCU3+7Ag7XOK5EqXRhPqIAUuyI4jI7j2cWE+HSFhPl0cazF3NPbjO8SBkiQ/UP+WgiD/
         Todw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792898252; x=1793503052;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mtyicMFphg8NIVF2KmS0oSGWOULir4B5NzOfXYC1xoQ=;
        b=FIxu+VEtVH+rgCgOCkSBCxe0dzoT6iJs8v/poQFCSVNkgiljWGt1NoRJoCCUS7XD87
         HW0bSlffVVnEwRJ9cABjThAsRhfdEMTZ3d/W22HU8eHm9Bz2AXUks6y0gvHRQlIDJzx/
         bVSwLCvk9QEAbz6QBdcqgHq8gf4+OonE9/bQegwC8DorWXadY//OylKJlr/J1Da9LDH+
         IMkj7Rx0be2hc3Y6ECvSfpaSSju+XiUjd9vazeuIK7Qmc8dXgwhdOz5J/9G7K85U6DAu
         arh2l8nOAF9dqYg/B5Kh3dQI8LzB62Sh32wFejXqenpIzxtVyh+KH3Nb+QnLmrBSfk0r
         fOpg==
X-Gm-Message-State: AFq9FYLd3lXPSJ/gpu2UItr2In7KTrNLrrpzpQS1Pfb2egMxrkb5lPua
	e1nO6wf10+1jOEnBy0OCu31XqA64rNSvCR5kU91z3p0hWV7Bgsqx20n1CPgU5K69W8AH600iRJ0
	CrEoj0+enmTZ3GpdZ7j0cAVWjC5rXpsIakxvymKfq0pHsszFG6ZazuRX3FBgyW+8wj9ae
X-Gm-Gg: AYBFou1Q99liKkTxgnqWMPc5H0su+fIAAcQzGsa4yKC5Y/Q2CadgWyT8gvPg2VY4IP9
	5OCQJkMnhRTcZhqh2FXmwRugMndeZAFZJ5r8eGHYIDcwwmimywyfGLxD1QmGnW0dRzn8+7noxXY
	xHtyoDfkO/tJGS8OH2mFkZUy3lkrrhwD60sPsCyJVtdn7yVQHrpxYUvQcQZARAfH+vSEhFXFDae
	7LJaBeN5w6CgceGZiSSYymDTiejlbAfAQLwSyle5E5TNdU7Xr8tO1MvOlkPabKHNte5+rZWESgm
	2m/wW1iXmvXPXjBtFRnOt94YgaF7O9HKPLe3hMiMvSYaBmKb22+ow77ATmvG7ETOgNyUjowHRAi
	I83N1ApedYZD4L1XYIDAtVJSp+aevmDQ49R0XWKCUjPvI+hkjip6BttIoFrw1Nk/rNLQd84uDY3
	otdSMaUAab5w==
X-Received: by 2002:a05:7300:cf94:b0:35c:99e1:c755 with SMTP id 5a478bee46e88-369e86128c1mr4734810eec.38.1792898251705;
        Sat, 24 Oct 2026 20:17:31 -0700 (PDT)
X-Received: by 2002:a05:7300:cf94:b0:35c:99e1:c755 with SMTP id 5a478bee46e88-369e86128c1mr4734782eec.38.1792898251122;
        Sat, 24 Oct 2026 20:17:31 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369e8ec50bcsm24133054eec.23.2026.10.24.20.17.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2026 20:17:30 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 24 Oct 2026 20:17:25 -0700
Subject: [PATCH v22 06/14] media: qcom: camss: Add Kaanapali compatible
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261024-kaanapali-camss-v22-6-7da3ea49c8a1@oss.qualcomm.com>
References: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
In-Reply-To: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: PZGTtfWPRC742QOyw3Hm0LrK9OMKU3-f
X-Authority-Analysis: v=2.4 cv=UfTE26SN c=1 sm=1 tr=0 ts=6add74cc cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Eph36bqoL6-XvbZcx_wA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: PZGTtfWPRC742QOyw3Hm0LrK9OMKU3-f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfXxGQVPKbxiSIA
 TPAdAhtZbDVzs+XCuoG7BijgjKumvcEiRz6IXFLE6UV4wa2/pOh1a20bedwfO6PDbvA02BiHLfk
 bgXTrPPkOa4N4UI81hxCJfwO7zDjaPafVEYBW9SEaUEQgiP2e53Ac9DWAFT0IjBg5PKBICO+DAm
 gGJxdxjbEsjx7Nj9OwQpuDlw5GM7nILD01wIHwCRF4/MfLhKT2oQLsjTz6YZDfLuFRdzdshkRS1
 fkrn4kMoJJoV2l83Y4hInzT9UKK9om5rLe4SyqJFR/oh+Bv4VWBkh8P51SC8L4xFVJVjqUGGOJv
 t6gKXoEHf6yXEEav42Pxn9lv4XniubdcH4nTrRWZCB6rx3HpwHsfpoMi4KuA/7UAkYbF/KjEp32
 sS7AHz/UfGAwz60uM2lP2Ec49acJWBkMmKxSgNthOCAjebqi1q1DMN52xs+h6L6Y8upW4DmhoDT
 PFwrs8HQ+Hut7FEL4aA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfX9HwWXMWJzxbC
 InVgjzVs95pVf/ilf/CsOJHDaEx0Q0VUWeod82cckRZiC3HddfuRytBt0Medvr7h6ioUWlaHiCV
 1q+MrSMVW8y7pJaf5VdKK2npaCIJz4Y=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-25_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 spamscore=0 bulkscore=0
 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610250012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_201733_936777_645C8496 
X-CRM114-Status: GOOD (  14.20  )
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

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
index be58a39f4a8b..98ec23c39fda 100644
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
@@ -5589,6 +5603,13 @@ static void camss_remove(struct platform_device *pdev)
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
@@ -5823,6 +5844,7 @@ static const struct camss_resources x1e80100_resources = {
 };
 
 static const struct of_device_id camss_dt_match[] = {
+	{ .compatible = "qcom,kaanapali-camss", .data = &kaanapali_resources },
 	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
 	{ .compatible = "qcom,msm8939-camss", .data = &msm8939_resources },
 	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 431afeb381aa..97fec24e6804 100644
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
