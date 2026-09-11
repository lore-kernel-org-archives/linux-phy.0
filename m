Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8893BC88E5A
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PWAB9rxgOJyOf4bdHcwUy/dV1gmn17Ja0E0JzUARmgA=; b=CWliV/PeZkC08m
	euYKa8BlEQDPvqWgMLZgWM1nrzmxpLeB1D6G5JyKLdKi3fOCGWFxdv3fH2MMoYOA24MH7XSkS8FgW
	Eo6RAC0zV2cnBk6kRAhNAaJSBb8BL96GT2CjFc8slj8M5w5zwHi2+1hnp35AX9/EhmSAHwQafdsPn
	rFX/j1seP3VU9GnUHnfi+i/HM/RhJ37OvKtHYmseWtgzM7s3I6bz6T+pLpfJW+zrjl8hTCwoehlGk
	IB6MmB/pseBUdxP3rz0TQuGvLaju/sy6UMQWxbpvUgXHCpNH664MBgU7nfteqWhAX5xjWP50UfQ0+
	NytGwcUjNFVZe/GeGADw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Kj-0000000H5CT-17S7;
	Fri, 11 Sep 2026 15:38:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Kg-0000000H5Ab-0fr7
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:38:31 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BEmF1x798911
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:38:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+mNRMQrZ5y0e+hJEEvMCoWzyOuVlsmUuJyJuMBp/Tlo=; b=Egft1HCQxEjac6n5
	Kxz4sUj4Gq226o2oikunn4kHRSQlvlU2adMRjavco7lHKyDIqDFbjWQQZbSeKHSV
	XNbY2kcD2Q6dtzz64dLpQyj92wFF0mcfWCCB5O23G0D25u155iqaBP/f1Tls82ts
	uFqXwzBqU2NfpdX0V+FVV3sXI5DKWzeCYv62VA1LP/SZQ7g1ni//ZtIN+W/J3EB7
	f9aZ3VeR+vCjHVXKzgcHKlnxXJ9v7yj2hrqMdy6uZcp3xc1fy8XVhXdXSU1kZ8j1
	zzkwpy55xM+VNu2fQxLqulLa8dnEsc2YYvdYGVeaST24KNVrdI1LMxv5CgnwxX87
	j5/E2A==
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gm2q14a44-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:38:29 +0000 (GMT)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-4c467e19391so22239b6e.3
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141108; x=1789745908; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+mNRMQrZ5y0e+hJEEvMCoWzyOuVlsmUuJyJuMBp/Tlo=;
        b=I1xpP6mTxflHzDfpHBswUGbAiT+QBmidtLFtbvkTaFSyXm2yE5RCZYvaljAEY1AFAj
         dPiAvm2sslxzI2aILh49wTEcrrVbMQKT3jzF46NS4BUI7G4xlXArzroFiLw/rbZ30ww/
         /SSJMWPkKDwVK4zkcA0qJ69UOwYDt6UUK1Ih3Ylbeg/3kbW6np43uYEPgi0ZQVzPkh/G
         al+scV0wEF4W3TmsBA8K+14ATd1GF9cX4VNwtBKsFP/Y5ZqDabSGCuUHWE/AfqN+BQbQ
         n6rKVLLpq0GSKw7RWuOpdyW6weE2LpZlt9CV4x8A7BxQoeBi3C8+LGMKKYs33dDOEPBq
         +CmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141108; x=1789745908;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+mNRMQrZ5y0e+hJEEvMCoWzyOuVlsmUuJyJuMBp/Tlo=;
        b=lKmekxrtRkwKM8dvhW6CyqDj6TVUu4SPH9nohmAGuhw7Pu4i6lXRnK2UuVNY5jHBc1
         qiU16DABwd/4HC97Qbh9yGs+472L88KIwTv+utsA2UPPh3jOlPKK9DuWXjwL4lIQ/ARG
         IsIB6SkmyMlbijw6DLDoEbnazdUa1XPT/pibIzgy6hUbLt3JezTN4o84GzY5qNpX8PvW
         OiKxO/ABh82HP5UObAdYVdewpK9GtsI9mZ2uuDMPZiFl6jxYVhY7ySOcoTtjaQrXA238
         eV5IkK/vPEuIwz5nObwTq2F4YEqWnBgrUpwb70+6J2O5KRtauuKhcv9ZlVDkH1lBZ7ho
         mmOw==
X-Forwarded-Encrypted: i=1; AKwUvBxo+1hvnTiL0fhIX52Yc9kFjL2+6JY+1WzTmJVRur3cZag3Lk3sbI7rZcn/ts3MWcofZKHoyhp14r4=@lists.infradead.org
X-Gm-Message-State: AFuF++naAbWOk3Wz9d6whKAT4JZxIFqnwF3aauAjh8/PGWzBvSXh7inV
	JKHjg0p5HZHnL3an4fH+4tA7eqRI/8P+VzRWlDq/UtaAzVfcowGWskJz/HvtnbNhtlVJd/lHMh9
	/CKurmdgdfzWXEggdtbSzsI0JiXqaTgDaITgqbonaIE3/63VT+6AZJIxTwO/x/xkBIX+C
X-Gm-Gg: AYBFou14s84M/o8HMfre9ns5alSmIS52wFuLNZNUacjg3GGR7mFx99uUqef5OY5EHnV
	h7GOeRjszqK9BqtF0lnu0YKKKAfeGp0T5jkpO5nstxYID9UmMdmdq9n0L2JzAt+5UXq9BJgEsn1
	jVTgwJUDBUOOwPYbC6+jtaSzHiG7eEUzHqTfbGm+HadgIb5YELI2LrBiDbdmBsRLrgQOln78S/z
	2wXuB5C6EiF3dEsr8W4m4uR/rJb5ACZZs7qX5u11BbJQ/ixmDDf0vwlt3NQv1PD3uoDFG7LRIWA
	Jbv+utqoShgW3G8of8QkIJ2mOXQ9yyh697JSRa33CnxnQ1fewfji9DBKItGYtruW9tvCDF2o5GD
	lso+9sGJpj2n7H3ViQcFIqcoJZ1k=
X-Received: by 2002:a05:6808:1452:b0:4b9:e6ab:d085 with SMTP id 5614622812f47-4c3200d5179mr3580124b6e.37.1789141108338;
        Fri, 11 Sep 2026 08:38:28 -0700 (PDT)
X-Received: by 2002:a05:6808:1452:b0:4b9:e6ab:d085 with SMTP id 5614622812f47-4c3200d5179mr3580066b6e.37.1789141107848;
        Fri, 11 Sep 2026 08:38:27 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.38.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:38:26 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 21:06:40 +0530
Subject: [PATCH 09/17] phy: qcom: edp: Add Nord AUX channel and VCO divider
 configuration tables
MIME-Version: 1.0
Message-Id: <20260911-nord-drv-dt-v1-9-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
In-Reply-To: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=1610;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=BecAQlq3TaHMxBVo38m4lxEAqYxStsb1bM863V68CZw=;
 b=f1//ctHCbi4gWmftu37Crl+H2W96k9QXUGf1z4eqL0/hZ77TEn1HIzExaxlaKiarHv4/sqaZG
 seJoInzNAJpBtQqw4GdKwEPGZ10iN99MUzD/l9kF0WDuoqk6ABNPG9X
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=d6lgWhjE c=1 sm=1 tr=0 ts=6aa42075 cx=c_pps
 a=AKZTfHrQPB8q3CcvmcIuDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=1Vbz-4btua6vGiN1ejwA:9 a=QEXdDO2ut3YA:10
 a=pF_qn-MSjDawc0seGVz6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX5K59fSxT+JBY
 RFtnbm6BMgkOU+k1NrxRlk9LaJcXDhrGLjzbH/zgJxhmE++UTISOsQE+YNQ9LmYkV2gyYjkL6F6
 K9VFtvebqzI2BBihQv0Qu0i8lxADjsDCjij3YylmEvOZFV0V+0hJptJhPqsULwIzXVrHshih1Bh
 AXQWFVPDBMtDDee7VAx9Q/NvM/kGM9i2gd4g1q0BXg96z6RGxIfpRiqnsj0vS+UZ3e8P7eHtseJ
 BoDgrJ5D//XVqaPpmXgiT7geywzoT5Mt0DFBO+u3eNRCK7Vw9zEGezYBxGscuOtdmTXoGosaGPa
 H+FutTGE6GCS2e2jgcjnruoLTCYOese6lqz2uiB9zXPj1OvRJqFbVkNhQ8/yVvbeHm7ar1aqhN5
 23HlAq0hqvijvEkbhOFqKARGzgIqNaF1aFklCM7s+5wTfVGQUTwqfFICWaPvxUjwb0zrlPdvQFG
 5AEDa0k4ZKGVIxLBrKg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfXxydRN1SrOdXE
 LeezacJ9vIEiQae6Z0tmt5xrl4eHnjnR9w8RYjhT0a7cF73kMJfo8zBwu1KnZ6H6XuXBhmpnkHI
 nPRbT10WGJfrBdnH14whLAemLefcP94=
X-Proofpoint-GUID: rvEZNK1F9Ymv07bha2G95KoSy_uleUJv
X-Proofpoint-ORIG-GUID: rvEZNK1F9Ymv07bha2G95KoSy_uleUJv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_083830_346885_12060409 
X-CRM114-Status: GOOD (  12.33  )
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

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Nord requires different AUX channel and VCO divider settings compared
to existing SoCs.  Add edp_phy_aux_cfg_nord and edp_phy_vco_div_cfg_nord
with values sourced from HPG Tables 2-1-a and 2-1-b respectively.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 373f13b3d6d5..ee0d7f1a90fe 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -1508,6 +1508,25 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
+/*
+ * nord AUX config (eDP mode).
+ * From HPG Table 2-1-a: edp_phy_aux_bist.csv
+ * Index:  0     1     2     3     4     5     6     7     8     9    10    11    12
+ */
+static const u8 edp_phy_aux_cfg_nord[DP_AUX_CFG_SIZE] = {
+	0x00, 0x13, 0xa4, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x04,
+};
+
+/*
+ * nord VCO_DIV config for eDP mode.
+ * From HPG Table 2-1-b AUX Clock Settings (eDP mode) - Nominal/Turbo column.
+ * Indices: [0]=1620, [1]=2700, [2]=5400, [3]=8100
+ */
+static const u8 edp_phy_vco_div_cfg_nord[4] = {
+	0x00, 0x00, 0x02, 0x01,
+};
+
+
 static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
 	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
