Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC3A6CA6007
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 07:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y5r8/J3AD3LCfbbkmugYi70pVUIAJIyP8auuphj4O1g=; b=tuZxjL2ES8TBmY
	oWNXqgwT4wQGwuSb32ac2EaSzDUt+hik4DSPjydkqWRPTNNocq9vJfeg8Irp/qdKqZVe27ouXde54
	5u36j1NkEhOoSSY6rTU0u994V1JPypjXS0JOs2YVxVFA6zcMk8UGMX42+C956NdX/7HnL/h+60CR9
	07h0dUhDLsm8IePcnC+XZp/XOkmvt0yMz5NmNywOD1ESHH9M8jT2UPJ9kYMIGro20Q/OykcClQInu
	1S9s28j0wLmvDjY4GJTY1MG/p3glFC09iMnQv/52VKDChlbbNjwzBe0X1PFwn1t5MlvqL2zRbpyLi
	NwGtdxuGof10xNGMOK7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiL0-00000003iIT-2Skm;
	Thu, 08 Oct 2026 07:14:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiKx-00000003iEW-0e7H
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 07:14:44 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6984BtQY1776297
	for <linux-phy@lists.infradead.org>; Thu, 8 Oct 2026 07:14:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CNL6a15I5wBe36MIfXOAoGfOtm+pc7vArSdX4fN0RvI=; b=EZJ+7ta9XGbk4vej
	GwDUd9M/5AKn1nKoAn1R9a2Uc+5h+Js8fGJyUodGD14MRRS5RYvfsTlOk83GL9Yi
	4IvH8jWZaei6HdvRg5KHCJ4jQhZD6b+2YbkCJWRlmkjNV+pi7ny1yBAyF1u9Lg00
	D9AF8kN/SOdC/b/w1HTy9/20SlFyOXVM7C8RLofUktL2IPs+C0ml0se8aPUOceUu
	31xpu4tR/8y+sjYoU54yWjnxVnTIlhAl0k4FL81hk74xSjwqrrvfSOWMgIgsuYw+
	uP/fRFJ6G9aNzd7SiIgsPvI4Ho2lTvXYjgMDkFZZVvAaOeLjLnQRMJu8sYKbtSRO
	oLdJ5A==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5xe39kxr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 07:14:42 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-30bcb065bfdso9640640eec.0
        for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 00:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791443682; x=1792048482; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CNL6a15I5wBe36MIfXOAoGfOtm+pc7vArSdX4fN0RvI=;
        b=iDafR39cSR/PgtLgXL/m8osmM+1mOu240wRvCuKjsDBJNAaZ2HeJ6PeRWleXCl8rBw
         T2f3VYPCZg90W1sALD1ZPNUBBZ/FJB6yOq+POpV+h9ozC5LP/pc2fwfgS0OF+2STQ6HL
         yiGkmWL7PlbBPmOa6sJG7H0Xq7rg143p6fi0EQe/T+WUqnqXVItP+aBDpt3SXdFfdu2Q
         H1PkOIRqMTOBvxsypR4oIBoU0108yik85MIOaY7Ck7kuBVlc7bd0yTdTB60hB7JmS85y
         3Hg71IuW2Zw25tMvY2gDNOKj7bgh6y+ikSBQnX5FUizERRNl70rwvtdh1ERytgdLq2bB
         Hgng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791443682; x=1792048482;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CNL6a15I5wBe36MIfXOAoGfOtm+pc7vArSdX4fN0RvI=;
        b=G3JiCxvAVSyIq8ZCvPSdS5WK9qCjYkB0RyNtopVFiNqbJilC/biFJWbkpOXumqr/BS
         UZNCXr6IeoJxVokzePXbWNm2k1moJpeHPK7s+jC7sU8sSy1ulYqBzSIPwlRu/POwz8Vg
         ooXsI5HJ/jvkDvFqmMh1NVz5sD8ZcMC0rTTt9j+Drqv7uZ5NNpSxFUrFwWy27wkRoXOs
         B90i4DGdA0Jw3G2L3ZJFtZmydUWMN6zhPezFbj97jbFNDEzxnjCgzqhmpYKEM6aI1Fez
         MNn0c5jnfrD8NsiQd4sq6bxr1h85n1yt2+UQWLj4SYBHVZ1I/QZH2LCIr1zWPp3mF4sy
         g94w==
X-Gm-Message-State: AFq9FYLWqZJWcVfmPHwc+s1nLNJ1O0oJKThDV5EJJm3UPq0A1yCfvBkO
	JLIBzUj80+vybeRyrf3zGFGqNeu0uRUVnD4/NMTV1Pn7uSzQxXQ0t79DObetzUt9O06k8hTIe2h
	xEoARgPav/2mxwxnOFsAr5PNVp7ZpvxZ2XMp2bgLtx9dd4LKc0asIX7CpOTXhF4lz5MeO
X-Gm-Gg: AYBFou0yxIjiwvDxK82KZGCxk4LP5oDSwESLoEQBoS2gUqIBdoSER3eFx6iwPHpN5vy
	v1Ly+vvj2m11B3iKOrUz08URnsWf1d1r/96mD9wvpIpl96TrzAtuQipxjOPW6PRXr3Is7jgoY6u
	kXj9vhWmtjmZ1AtNBir5OvkDRGczETLHQasSJcdQCBc70xWp+VzZiz8/k1pDGEGngtVakbik1TT
	0Jy1xcI/Ydt56NjSJ/3IlXoigQrZeJGCfaxsjMI9rxU4a9Mcs2nr720KYmaTbp1ba1dqrWxtlk8
	9+QdKJJotVPfa6/iQRONtGqlzA+mHstTmoEcPYPAqzpVetVqHoUFOsf2XVLuVUVsNlhLiqUXtZp
	mKBjCuUJhQYQ3OoJfc69Bzjw8+WpgppbPrGFY2BDl1vpKXn7fLrOLD3XQoUPr36zaZkBWLMDEvz
	4RghKJJS30+Q==
X-Received: by 2002:a05:7301:7a0a:b0:351:1230:5087 with SMTP id 5a478bee46e88-3515dd3322amr5642772eec.12.1791443682022;
        Thu, 08 Oct 2026 00:14:42 -0700 (PDT)
X-Received: by 2002:a05:7301:7a0a:b0:351:1230:5087 with SMTP id 5a478bee46e88-3515dd3322amr5642734eec.12.1791443681480;
        Thu, 08 Oct 2026 00:14:41 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3515af155b5sm12251625eec.12.2026.10.08.00.14.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 00:14:41 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 08 Oct 2026 00:14:36 -0700
Subject: [PATCH v19 06/12] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
MIME-Version: 1.0
Message-Id: <20261008-kaanapali-camss-v19-6-b2c583ef50e0@oss.qualcomm.com>
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
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=JczS9Y7s0yypmJa40voA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA4MDAyOCBTYWx0ZWRfX9uCnp82hhN2S
 1k+8Ft1haPXxXJ9oy+phFN3d9P8etMwHW+HRaENPhFAIsxZ4TvgU+YIUzmvlvAHN95kUfQuVBoa
 dmFoXCXDZhapSwprfWZgw0NJlZ3pit4=
X-Proofpoint-GUID: UZ3Uh_ikBwYqIdzFJk8glXkE2X-j6cLE
X-Proofpoint-ORIG-GUID: UZ3Uh_ikBwYqIdzFJk8glXkE2X-j6cLE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA4MDAyOCBTYWx0ZWRfX3r25S38WU5LE
 xl/mzfxOjRqfRTWhqGLAjdvtYin7l92dq411r4ahqo8FUsB/i1AH19vnGKbkEKcGii8ksy3dyJs
 K+OnZJOYbp7chHpwvjjBJW/HNKic/dzYkdZvlaaUY7rLj29dNnR6z/D0XGkqhm84mopVOxrJQCd
 Iau8s4luVB7r+kTzK6IAGzFhgefxuYebWn1UOjLpJE2L2h+z7qKEvgxofdAgyIny0ig72onE9QS
 ugCeLHuom63vjhvEow1uoGDsnstl9oinOmfBboaLyiF87P6ejWxOT1K0Ks0htQsVau+w/fRpzlC
 r/guSJFq69UQpec9yx/pmbDhQNlIrGy5CQ8+CcNbXLUkZVtHStrVO6/9oHOrW8wd4PHgJOeLHrl
 zoUzCxNkV8bKZjEbHtodaD/GR04YjZthytdR9IPDsx8vipooxMhmW/inT3VgAagPvdTMBq12hKf
 sQm/wSOd2cmW1VciHtA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-08_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610080028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_001443_238259_3902F019 
X-CRM114-Status: GOOD (  14.35  )
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
 drivers/media/platform/qcom/camss/camss.c | 47 +++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index fca3de214a92..eeceb79c1e86 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -38,6 +38,51 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct camss_subdev_resources csiphy_res_kaanapali[] = {
+	/* CSIPHY0 */
+	{
+		.csiphy = {
+			.id = 0,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY1 */
+	{
+		.csiphy = {
+			.id = 1,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY2 */
+	{
+		.csiphy = {
+			.id = 2,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY3 */
+	{
+		.csiphy = {
+			.id = 3,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY4 */
+	{
+		.csiphy = {
+			.id = 4,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY5 */
+	{
+		.csiphy = {
+			.id = 5,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+};
+
 static const struct resources_icc icc_res_kaanapali[] = {
 	{
 		.name = "ahb",
@@ -5593,8 +5638,10 @@ static void camss_remove(struct platform_device *pdev)
 static const struct camss_resources kaanapali_resources = {
 	.version = CAMSS_KAANAPALI,
 	.pd_name = "top",
+	.csiphy_res = csiphy_res_kaanapali,
 	.icc_res = icc_res_kaanapali,
 	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
+	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
 };
 
 static const struct camss_resources msm8916_resources = {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
