Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4198AC982C3
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xR0iPQwj584Kh+CHm4uMaBHCP/JnRXjEDRpG41n6r5s=; b=Jn08xHuPLRg4xo
	owBmNaZPPlAlxZ7XkMVg5lxqKS/nNN+vmd9wkm2R7jL9N6SuIQZhU4WBOeYEERp0KL7CEwbJuiXv3
	m7GFD4efTgFbeAwKVs/+p+jmh47RNCtIz/3paQ7aKDnQDVd//KqkVPw5bAEWOdDuQaTQ8NhUXz6gr
	ncBNYS4QQMzgn4OcBx4O2Exicc23I2bpqZCrFdVmzoiW98htAPTrSIxqV7eu6qEH63N+c6MQ5rTA+
	4yYOa3ugNRjqqwj3iP7VyQhTVvBQuW5mJFmKWwh96gV0TlmLoY7IeAgrCcsdwUAKsxmpOXuRT8CDc
	rKEHaIoWDfBMEZ4OKO1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Q7P-00000005rKN-3IOG;
	Tue, 15 Sep 2026 10:10:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Q7L-00000005rH2-3k4T
	for linux-phy@bombadil.infradead.org;
	Tue, 15 Sep 2026 10:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=5GiwkvjajNGX92lSUpJTym7q9yh7Ym/IU4uxosaT5X8=; b=Rw/8vvBtc9D1+MESSJ280RlhE9
	CYprbEum9YBtM59mdGEcmRZUIUYuHRmyOnShGut7KPInkcYmWICbkIntpW501I+tfKuFYDZGxHG2N
	u68lagd3uLCsgcUv+ppJPENm0oeiEd9V8y2wlnUzYcgRRvaReqbRMt9km/+pfusRkq+wjZrMhGWnT
	GYoIWd5nDDAry6oHQ7KffHMGv/NsChAA5pXULQajNnCOm606GkQOxQJEgzmD4aadN0jU0MOM4FOjD
	vuc/bNWy8F7VsukUFVwMIuXw3E1y3xTVaGnnZ9B/r2FWt70jcDnvUb0cm45rRpF5vg5jij+bfn/XO
	KXwQPwaQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6Q7H-00000006X6G-1MU4
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:10:22 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68F9gvdS275492
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 10:10:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5GiwkvjajNGX92lSUpJTym7q9yh7Ym/IU4uxosaT5X8=; b=ey/6/I1KJRr5nRH3
	ofcBcPjAExJKN0w/KvHeUddOUXf9Fo8AX2kxuk3pdKsSW6dmPbX5NfvnaMuUuynh
	HUca1gmIVGrCO15PLYwnmtAB+92qYjyyApja3Rju/+d61xwocYiubwAo7fJEHqVk
	Yyd1RQWDqhFvS8Kzh8aH6HXrVGjIFbx8GxQAD+h/9YeHueSCwMkfcUSGCvtNuDU7
	zewbei+3Mrc4dAKX/48/RAp2yXHi3Z1gL1DEfKUDPWNDYyR/lyVEbhTUWpqEFiO8
	8Wi+S/YI+Qj0Bh97f6SmIms/K8e0LOHPXZjbwG660IDyHWkKJmEGMu+Fo0UGZjky
	w1r6ig==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gpyea17e1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 10:10:17 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc44d708055so7380999a12.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 03:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789467017; x=1790071817; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5GiwkvjajNGX92lSUpJTym7q9yh7Ym/IU4uxosaT5X8=;
        b=BiHOd9yY6qS27vnWdhGgjvxAQFkQM6HkNYo73Xa8Bm51gVRJi6Le9ts+1QdCtBO/vg
         f+ZjsFMSVnXiEHhbx9dCR7nT4kjz4Mxvm7E4djnPzNZiyb4oy1Khod1Z77YEYPOVHvhN
         t+6bynTcShqgIA4ETMlblKkNZ+oCjODvIMyUkRBbV6zK2dOx+e0YEZ3Qh1/htNJwVYeG
         YS8RzM1AAmZU9xNTNRGc0yi8fE8DjNVM5NMQ+EAvIcXWYMufYshYV9nliQJvTWOsz8h0
         3fYh6jDaeSdd+9Ub8fhWnIcz6X81h1BWeJYzWiyiWThDoih43oHpmCEz/YWOc8sKbTRf
         tYGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789467017; x=1790071817;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5GiwkvjajNGX92lSUpJTym7q9yh7Ym/IU4uxosaT5X8=;
        b=ER565Vtt6MSmZxyFUWHEUMLtpb4ZwjBthGlsIU3aoc0/QD4ftl7x9ks3SOlu4iBTgT
         MxxxrtDZhlvcTDH8Pu7LGPTG7ARUBw85e4cOAXPdkxGiEhUa6Tk63YiD6mCAiGYQ+Sof
         PCYRaLiZ2qHp0nSUzWGfcDcaRpr4dKEySqIMFlu63o74qzGh1RVRRiGx9elflu1CL5UE
         /FzAAU7gPG/s20WIr+z2dfWhgZH7K/aNnjjqW7e/Cib8hjZnCQUNPNb6FTm4gnotQuzU
         ImV274SHnzYlWLyP20X67F9LjBbsgmHcLRBb9NieH6tJQwuU0BpXKn1a2wfHW+FuFowb
         HGJg==
X-Gm-Message-State: AFuF++kJ0nz8IdteJFkD8PwdIZeEFdKOJR/5PO1TIY8C2F6DILE22O44
	VVtPfY4qPligUwyIjyzR2+rffdByj1vdVjA4aJtngZBhKD+7T8ifQKz6BNBn4pWSsAkJNBVNaDU
	eG/7hyIGioIYtTj1L6DFgJUP84wqZRm3sYMUyfNzI6RPXPMbNBhcFPp4swPf5icjfMZ86
X-Gm-Gg: AYBFou0K/fL0/dp/CpQIMTf2rQZbr2+abbmQ0k4sb/3yKhXS8Tj6My8xSDsyP7+iy9N
	vRANHKlVBbjxm0vfK6TOZSUI5VGoQxA5hPy7bYx4WZRsdichPBfCedjyLb5l0Y5OUuejE7y+2m2
	E8v4R8wwmzoXnnuq89q2Vzj/iTudUIkMtGjvv5Nh1ktdKJJcGJwdiIUaVQP4PHkkvyHtz8KVNHA
	7nGr30C/+xLSSdCtEIx2znAaaZmx/vayfFF/gFVm3iHRNKaLY18fPfI2phkS/nuGY8fg/S/A5/z
	KTgvwmW6lQkqWTQL3ATb6owzfnjhyzrAged+h3A1kKvyvv46FNCk6UQZlYUsaVHowWF4e8+gqcd
	ROJdQOEeF61DVmWQyDHimTBRLm4vkjpfSiB5j4pV6b8X5pom1NEnNmvJlhEdsMNYnbqsAMu81m5
	ByzhJ88bTPIO0=
X-Received: by 2002:a05:6a21:400d:b0:3d3:ae50:97c8 with SMTP id adf61e73a8af0-3dd52a1f617mr1026241637.21.1789467016954;
        Tue, 15 Sep 2026 03:10:16 -0700 (PDT)
X-Received: by 2002:a05:6a21:400d:b0:3d3:ae50:97c8 with SMTP id adf61e73a8af0-3dd52a1f617mr1026185637.21.1789467016629;
        Tue, 15 Sep 2026 03:10:16 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-14382741839sm14244091c88.6.2026.09.15.03.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:10:16 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Tue, 15 Sep 2026 03:09:58 -0700
Subject: [PATCH v16 03/11] media: qcom: camss: Add Kaanapali compatible
MIME-Version: 1.0
Message-Id: <20260915-kaanapali-camss-v16-3-c9f3f6f4180c@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: DNzmmzFQe4mrUp89V2vv2jPdMRnGskpn
X-Authority-Analysis: v=2.4 cv=cehHPXDM c=1 sm=1 tr=0 ts=6aa91989 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Eph36bqoL6-XvbZcx_wA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: DNzmmzFQe4mrUp89V2vv2jPdMRnGskpn
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE1MDE0NiBTYWx0ZWRfX6R2OWQrHlO0g
 kHdBOW4M/Fh8VbzckZGMyxq0V5Kaugh9e6Nb3KJRr5klMMrSwlnWtd8nUBtN8PrGv9SaPfVjphB
 hs6sK4hijzpK2MlcDp8jdE9ovPzrGCI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE1MDE0NiBTYWx0ZWRfX6KGtKRRDTeHh
 z/+VhvNauxcfcNrorGSlgluGlIvzCCX+I5vcSY4ste7K7aBVzM5vPCXeBzE8/OKT5J8t7MYEq3l
 3UlwUKTOu94ZUMc0g9HeaaW7k/1wlYRt8cSmz6x9+w8fvUg9V/eH+tBNzRgcgGowAVtausihZT6
 4G4QZJzy7A1ffCBxa1LyUgbKBGZ3TOG/thwZI5jQLFUuJ9go8xpxPLY2SsLUywxWWTN1C+gUCez
 v9fOrXXF3x07giGu3nrPDujUUIjFJF9tjDQIJt5PMwBN8+AZmIJXy+M10TqlmIQEmQ6MfZC5mYH
 AP4NKrEBh92atYYtRmvLKHl1Ib9EjnaayDzremVo6s3L8XOxwp2TY1UPm+WGibtA4dxXESGx9tS
 IOYM+nwI7e9ytl/mVick8BfhgdyPEaLVFii4dhTU6JR0c6nNsKHjLR+0EmsZGnuDSyuf44l6QIV
 z97+ondvX7w6v6+TWsw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_03,2026-09-14_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609150146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_111019_852801_88FDD4CC 
X-CRM114-Status: GOOD (  15.14  )
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
private data, the private data just include some basic information
now, later changes will enumerate with CSIPHY, TPG, CSID and VFE
resources.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 22 ++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 07b3cddca584..2c9f02bca809 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -34,6 +34,20 @@
 
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
@@ -5596,6 +5610,13 @@ static void camss_remove(struct platform_device *pdev)
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
@@ -5829,6 +5850,7 @@ static const struct camss_resources x1e80100_resources = {
 };
 
 static const struct of_device_id camss_dt_match[] = {
+	{ .compatible = "qcom,kaanapali-camss", .data = &kaanapali_resources },
 	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
 	{ .compatible = "qcom,msm8939-camss", .data = &msm8939_resources },
 	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index ba3d51d9c0bf..fadba57c5efa 100644
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
