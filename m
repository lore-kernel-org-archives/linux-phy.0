Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8640DCA600F
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 07:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ItACXLW4z2+eY/vbR7QuomuuaMfOARvJqaoYeuC+mnk=; b=PVhcCm5vnMkz0c
	XiJrdIu6sFJ5UWbhbgvv7bP7LA1ydOGRMT7bUhiegQBv7l2Vyi9Ay7Mye2tLfa8xFfjslbqKpg/BD
	gWFGZzmewJHJjMvufCUUKhc9jiQnm4A9Rebq6IPnpGHyVKEo1gR+m5Syi9iWQBmLXE0lOPOXagIWM
	yO7XMWT9TAj9vbBrtxa7hWOQWrgMlZ6299NjKuTBkdPitgs9n1FMLplR0tbe7I2SmAStWgNzdatrF
	tKld6m5ZbpAhkn/CFS9JDaMjli3X5CTYdDuKqkhnRBPqYrAPGifDMvC4Kk9AAJJrlfpARjA43Ojwr
	ez/ihX6VBs9kS9K9K6lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiKx-00000003iEe-0P8N;
	Thu, 08 Oct 2026 07:14:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiKu-00000003iCa-2Qoo
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 07:14:42 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6984BYmH1775411
	for <linux-phy@lists.infradead.org>; Thu, 8 Oct 2026 07:14:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c3gZeVKCPHlwEnEKLOrp/lO8ukYtVa7/GZxiBmiVQ3o=; b=mUMCKkcNXFL7fCeL
	RwhRLPeb8ZWNimL+zM3LrABwgEAip5t7eSL4/VuBrhrLsMs6twzO6Nv0tmT17YCi
	E7ykP19QCPX0G6GdG6ASoX9QdprqYtowU1Cv1MbK46SfqW7lay+/FnrnjhT9XdU8
	LjVqmcNloxOCDBfzPX4Brg9ue2/SkTMBzXwTuYe1OZvJER1dWWOosgOtxRjgeLZQ
	b1d6eCFunq5LuUBEE0olxs5Fsljl03RyMhO6QqebWXSyWUFEIdOvGskHmaofkHMF
	l/AU5RgxPGVAEGeJo0f4oGaqpRutathYdv9dhBn/6JR0Lb8c6ZJfuQiyOEI2Wuve
	LGBxug==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5xe39kx7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 07:14:40 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-34ef5fd7934so13375501eec.0
        for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 00:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791443679; x=1792048479; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=c3gZeVKCPHlwEnEKLOrp/lO8ukYtVa7/GZxiBmiVQ3o=;
        b=WbLSgkvo4Zayu00rTLphqJ6f5ogHi4QUlC3uLye41/2v48I8EPuHml1zzdOPaw2rKG
         +oilgLkgheHz0yqd9h9I2bQb+m+WQsCKgvGF7Lq6TZNRkKvfF3kapTGCk5e6juhhdlza
         65FQg6rhmjXoeoh+GUwJ+UrEH046wR2DCI+i+HhEsinEjLD5DsN9GXONDpk1nPUGs/sS
         MJLlcygg3eqIbPNRjuVpeQn5zgpfbZ+CiHNWOPyTnp6AAD+56b6+OvgOfDH4EaWxsUtQ
         tXEwmiJsN99r6qakZDf7R8i71ZJUeyoLS4ljAH2dnwXoCnHgTueM/7oZbvOk71YsH/yV
         bbrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791443679; x=1792048479;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=c3gZeVKCPHlwEnEKLOrp/lO8ukYtVa7/GZxiBmiVQ3o=;
        b=mtASLWM7h/E9nPWs6jjqK62NXUJP/rBL4RBKxELfEoVwAVE1OQ/UynVFMYqJh1tvAc
         d+u13HeEhWs+AdB/dkfC3lMO2/oAft8MCHacJbVJ1de+MiRg48DLQJUepFEh3Z8hHKSl
         oGdIPcBy9y/LCzLbQAdXVSwfl5+rcmORmUekYynN60nUt7AbASDXl250AVADGPcp+/L+
         OMebyQ3rb4rVFlbSuLLIFEZHopuWx8aIej4b+LGNRYiNSf0VGnvzraKZvOWa2tIroizN
         9EE5kG+mTrHB5Ba06qxvVCBdURBut6dMWrCajS+P27PC4S0zyuvAE04ZVhhN/bQWqSG4
         DP1g==
X-Gm-Message-State: AFq9FYIcrF1aYxUM7IxKz86UyHkhicdYweBGbf/RIprZ8UFwnF9qYwxF
	kvIwCitAki5owwv0GmI8RJUzTBWBIRVJtT471n1PEKYmIfSFS3gwYCkhDdniOE/V7wJ/o/BpV+R
	AZZqlEF0GGOa2CMdIs6k/WxtxzsMnCNDPdn0JXWLVtgVF85/y8rp2FN+8gNuKEfK3G6MX
X-Gm-Gg: AYBFou2OeVk6SqNvHUM61Yw1cBJ/Zo6kmhs9wA1utYznAzsz6sDKDFg80Qej9hYLfA5
	7AZ3UntiMiO5ljB7JYkCju9/GomS/I5TuvTFKnFDVOktvp+pzm+VlAfwlAmCWnSntW78+CnMz6W
	8OZtUjSexfsE+a9tbEOGShr61C0nBEWNJfEEghkhCMZN4KKoNeeL4yrP3gsezb1Oc6Q1beXyayC
	k4OVAQugj5FB0SOPti/2prc1ouxKHC0PqXqX3kdsDXQqfLC4AA4RY3VZCR8srwWgbwfezyH3pV1
	ZZJD9RivEe1dX2kr/+URWdklRkzpIMsDvQKDTG9rwvMiJpVOMbMunDjwOg6H1HxYxGzbXIHuKcJ
	TA995jz6e7xh1+Wo3ZW4XjI3aJ20yE/2+vlJuIBmnqI4PP9MRllEkniae2/Av/zfPOw6/CxX4k8
	2krdHTW53Vcg==
X-Received: by 2002:a05:693c:20cc:10b0:351:7444:8bfd with SMTP id 5a478bee46e88-35174448cb7mr2791130eec.39.1791443679161;
        Thu, 08 Oct 2026 00:14:39 -0700 (PDT)
X-Received: by 2002:a05:693c:20cc:10b0:351:7444:8bfd with SMTP id 5a478bee46e88-35174448cb7mr2791111eec.39.1791443678651;
        Thu, 08 Oct 2026 00:14:38 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3515af155b5sm12251625eec.12.2026.10.08.00.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 00:14:38 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 08 Oct 2026 00:14:33 -0700
Subject: [PATCH v19 03/12] phy: qcom-mipi-csi2: Add Kaanapali support
MIME-Version: 1.0
Message-Id: <20261008-kaanapali-camss-v19-3-b2c583ef50e0@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=J4s/fwnS c=1 sm=1 tr=0 ts=6ac742e0 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=1e3Zegj4IIqRqDCgfwkA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA4MDAyOCBTYWx0ZWRfX28Kw+nunGyQ2
 s49sLYAE0Fhzl2GGI2U+EeWhB3+QvsA53sdO65nTuSuy+qzdPlfIioI0pUmv3x2VjTRLSRoP6Z5
 R8G63K4UBlIy3fpgImgsgOncfMk4h5s=
X-Proofpoint-GUID: n-OsWrul0hWqlX77E_e-Ips3OVG4Ty1h
X-Proofpoint-ORIG-GUID: n-OsWrul0hWqlX77E_e-Ips3OVG4Ty1h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA4MDAyOCBTYWx0ZWRfX9bKhHkA/xe5K
 88DsYSW09dn7MjcXGpIPnGvzckEKwEBQ1oMmDkXBb57u0MVdGfCCIZN7L8YhfsMR6z+auhvxXwD
 tu0L2iimlYXRQkiIGfd4e7DvHSgtsUFQSq3hU3X4kUFemcFgdYNuIRUus8OQ2Z6LApAXUG6Bj4q
 BdFAwDmEH1/WKa+0jdGqxa/GyzoSrJEoE2Yg+RMPE10g5xoYPCrQSo1rEBpiAb6irMf6Xa9mzJW
 OzKXHJe6KHN/amneuL4o5sUoAezY8BsHe49mE38Xop9sj+P1fQ1u3PaV6XgBP+CY5Su+krmwbqD
 h4HnVjymSLtI0xQbK+1h4sJSaunaR+eRiWdpimJZzMzaxMtf7P8QBRGEzyzoi/aKOKW83rsfbhn
 q8h736opiIkNCQ2gHsmIRMVVCWbhxjc+Asuv1ADwgaCv8ZsErvUKPMdyHfu8iTlJOreV1ff4v4D
 Z0OlRv8JFXbk+fTSpog==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-08_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610080028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_001440_634606_87B9B164 
X-CRM114-Status: GOOD (  15.04  )
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

Add the Kaanapali 3nm configuration for the standalone CSI2 DPHY
driver, including the Kaanapali common status offset and power domain.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |  1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
 3 files changed, 18 insertions(+)

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
