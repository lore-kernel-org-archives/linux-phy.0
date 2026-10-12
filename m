Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90727CA9ED5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 06:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIbB5kwZWqdoKwLcoBbVW7IFu+RvzqrOdquUNaJ8l9k=; b=jEJ1Cmdp0W+6G+
	0zSzhsvoj71jUsNRTRInQhv0IAz14+edpsZZoD/mXCm8cIUYorUCbAua72OZpqrjJqZFMYDtZnWBw
	LL8DFr23yW/9wIHRzR9sZZS01Mpx2p4zomrg9gv7lP3KQMfvG0zov7Gt5IIAXx9bgSTjaCPUvJyYh
	OwkQLf0f9te2YQ4YihAuWy519qmJzgZ+/RY+90XaEJvFsiWiGfXPM1G4VZqQIhJaJrdo/d9JlPYCC
	xbAUX4lFGMle8Sxbbs7YphDx8E/jRa1orOngWGkwZUzPNCRFxJ+8LtPlTrj+T86HJ6mDeh+HmUcKs
	51uFVfFlH+oEuhhtABQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9n1-00000009leo-0RA0;
	Mon, 12 Oct 2026 06:45:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9mw-00000009lbv-1MPK
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 06:45:37 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69C55oBf1339397
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RXUsa80x/1w7XU09zAB/IA5nFL6Qb4lFQWBwrWEvNZo=; b=VJMxGqPQL3IttEW5
	XI0RDFQPEOoUU71wmv1IMV159kSFJvBoeKUJ3+Pj6lQ/VzNkb8NjK5YZ+di5GI/U
	pFSzYric7y41ITHWWUkvL5tSuQkcfsp+o9OT1EnnpRpTZ68E+B3g3992mHjZfHse
	gNW/ibhYpk87iKDm8WqdpJJY4XP+u5Yicf6KvAy3QBkDIOcBs1NxQObo5MnAy1qA
	50b1KW5K7we80rdhpvOVTxsDcj0kTAbR1EP55xdMeaQgpy2Kzs3ClE3+h6EDBAIy
	k8BHo8y8GU7/pft+l5nvUTZ14e878XnDRMr/wiJxVRhBkq/DwctdjEcCxFwLvHeS
	x2pIUA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7dk256xd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:33 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-88679c4f94cso947569b3a.0
        for <linux-phy@lists.infradead.org>; Sun, 11 Oct 2026 23:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791787533; x=1792392333; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RXUsa80x/1w7XU09zAB/IA5nFL6Qb4lFQWBwrWEvNZo=;
        b=HMOXZwgqwMkDv7vmYKkEvyAKv77IbULUGgaE1aay3JsYJlf1RVXIPNxNFSvAGHYKJc
         rJ/ddHM/6+PcFYuBTPczudjAQs0euah/6rRkXhKGOqPX0+qBlUKart9hOBW0IAChxBHB
         3DNulUtMNb6rZutuJZGfQUovdfNz/k9oEltavXBduVKR5sVWPuGaJtHAAdt6Zzjy787Z
         m/P1jJWltNYXiPHhv93EKI68QaHXw2LkWANVPMSILDfDCwiVQGYL5KcCsn41LUZsaaKJ
         8eH1RvUxkUVse2GE8g5VQagRI+NFdMlxFuhqYsYKjXaDOI2FRDIo8AgTQ8YqnfGB6Ur6
         YIwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791787533; x=1792392333;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RXUsa80x/1w7XU09zAB/IA5nFL6Qb4lFQWBwrWEvNZo=;
        b=LZCF/h4JsZo8Hfz831pgnv+kbzZjj/YGC7PEP4kgkiKSgWdev8JrabAAgwZcbastIh
         IZWZbRDprZTcxAVrfvWvtNlwleCOwR7G9E5ENP/6u/bS0okqDqYfR+EflJjcJmc+Ri64
         tZDqX/EQdkbAp57N1ZdKHu7noJq67GtcVoAOE5k+kP+h5SIZ9EYhFp9fX+fMmkAClNc7
         60rWUrSoCziMpS5su2IXrSjYFqTssjN+vjA6mg8WeSadj7sCSUyI72IJLzFk7ZJLSmbh
         Vj8iTaD8OuU+mjl+T4EWbohezCvmkHiE9UlNuusxCntwuMR7Gb326P8+seWJL888cIeS
         bdoA==
X-Gm-Message-State: AFq9FYIBhFqNVW/GYLRKFR2Ak0J+jI5HEoyYJ6r+7GbKOA58A6rwF1QH
	ItuV6Kbp+Gb4TkvZYwM3FBhCqV6Iuv5bdjQ2TytxRmRvjjHD3393DV2kZeW/yhGkQAK7YEpf5bj
	CBM7fj+A4sYWMA3/hzq9mv86sg0LkCsGslS1Eql/utk9tE7bJ9xo9iPBDZzmd45PmDotd
X-Gm-Gg: AYBFou2Xft74i94y7FG5m+fMyfqr7nGwPD6gb0zN/mDkkobzYB34jxLwrbQ3XWAa3Bm
	2BP8g/Vc4i9w+jSzak+k+gJZWdNrfPP1KPFP0id90xbjaNnejvsWDV3XHDBvIQMKNzyO07hQTed
	c/TCN9I2heNM3Bn/3T1tOeRgagFOPCpmV6t8dlw3IppI/OgkIwdI4vvtczUxOI1VP2Rw2kl9kkj
	/lsfSiFQdmGigFiCKix47lDs50IXrgU1E57h78t3QDN+F/yq53ps+z7/0FK/gw0sELcznAZEVVi
	+kFfyyt6o9LQqrn2ifGXEQ4y+nEM5b1hNSvSNE8Y6wwMddw7mT0JdaBpMnLbp9xJJXMXFA2VOiI
	ceuHjod4hmMG6mIOXRYGqoW7exZUeFqjxup+TRXzl2/l5viaxM0vDXFT7PPhBt0JAB9CkYeXxug
	lEYDBnRn4JDw==
X-Received: by 2002:a05:6a00:9504:b0:878:6ee:671c with SMTP id d2e1a72fcca58-897c700e769mr7277378b3a.30.1791787533062;
        Sun, 11 Oct 2026 23:45:33 -0700 (PDT)
X-Received: by 2002:a05:6a00:9504:b0:878:6ee:671c with SMTP id d2e1a72fcca58-897c700e769mr7277364b3a.30.1791787532600;
        Sun, 11 Oct 2026 23:45:32 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-896c3dc6c93sm3534420b3a.33.2026.10.11.23.45.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2026 23:45:32 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sun, 11 Oct 2026 23:45:08 -0700
Subject: [PATCH v21 06/14] media: qcom: camss: Add Kaanapali compatible
MIME-Version: 1.0
Message-Id: <20261011-kaanapali-camss-v21-6-04fd28d815c6@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
In-Reply-To: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: b0GPkI3cELdy2EDfg6h8Jw3cTf8hmJ5-
X-Proofpoint-GUID: b0GPkI3cELdy2EDfg6h8Jw3cTf8hmJ5-
X-Authority-Analysis: v=2.4 cv=E6hYNqdl c=1 sm=1 tr=0 ts=6acc820d cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Eph36bqoL6-XvbZcx_wA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX0pp+R2Egumam
 fcJA7gcGbCAFo8RbnQM5Zo7Amrej2Nvk+FK4tD1VWfi1VF/iC8uiuFCriEkcG15V4aWnM0cw4lc
 bAtDj7IilN1h6BPz8CnTzw3C0jvaWgenfcnOjNA0RQ4aRa/ju3G7LOi5xKb/1l09aTi9uxIJQrW
 41oK7sK/K5nG17cXnJPppzEUjZ4Lf0DayqCvUOj9wgFKyCkQXXHNV9ViG5q/kDPuiNRSt3Tx7pe
 2Wy93pQJ9JuNI+Ccrvo9WC2gp+pw8Eqg31YX8d024hhi/KvnTKjb1f/M1IgdsA6lntYAWxMAoP7
 +OAEFPXTmTMLjkxMnw2iHZ5h4g0ZL3W+PXL1g5ny78aycs70uMbvemW3FG4eeJMIv0K6Vmgy2sG
 qxpvm6TvHHSgWrZjqhE9yG5MBdihKTYZgk2OYhuqPVUFA7/nw8KtRhW7prcirWwOn0CWEFWKaKx
 ya3CK26oV6OZ8m4MPcw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX81id/VfM8s6g
 fQBFPpEoesBhjOnEUpAMHTvQ4Dje65Ifijs/vgeDqnTOn6pRsl8rXLgkEJ3CsWtIXGIoCbCuG5j
 hFySqc/WQuWNrfQBtBwF0TAljbMDz40=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_02,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 impostorscore=0 phishscore=0
 bulkscore=0 spamscore=0 adultscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_234534_364652_9D5BD3CB 
X-CRM114-Status: GOOD (  14.32  )
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
