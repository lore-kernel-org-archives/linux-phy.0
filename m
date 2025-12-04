Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8F78D1CDDD
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 04:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R71abhwEEu+y3I6TV9hzR9t7MfLbp/UZNpttfDg99iQ=; b=vTIF5OOge9EA/l
	w4i5lftzdRyROYn5pxLkOEIE5nWC4PrBt/j+IuCEdzp0+u82Io2uJBIjw/hYpsUffwWu04oQ3dAUV
	FaHZ7hk4vyW01+Psl3wWpo0ej2zJUH+3bF7InLQsw2GHosomdbmeGLrqabCaPbP3bNryZ9U5R07VI
	kaybSF1pzPU+9SeZ+MD72gfeZtr5IQR5nK0af8UJDyH5u671P0QdW0Sb9uMLB4hWA6M+Tz/53SKu4
	bx7LrmuOdyiCLWlJyynVC177XJRUDLuJugj2KZuBNB60j8aqILGg+viannI8Wl6bRIxR3GV9av+V8
	RhV/P8NtLhLKIRw5smtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR1FJ-00000007TQW-23Rn;
	Thu, 04 Dec 2025 04:47:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR1FG-00000007TQ1-3N6U
	for linux-phy@lists.infradead.org;
	Thu, 04 Dec 2025 04:47:11 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B42LtK5122727
	for <linux-phy@lists.infradead.org>; Thu, 4 Dec 2025 04:47:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+HoP4zgJI2H
	QvPd0VfVnVmAlTXxAtZwgmAa2Xf4qdeI=; b=fBfmc1fuO8EfWwxbseSep7cOqiQ
	pq4+cMNJllkiUBN/oxbYqyRYAJOH84sv7YTff9iKa4jMwt6FfTJjuCuzqzdsPK8W
	xoYsKkn/p5/uwkvf+4hv4VGP3s0laQExLTfU96d6M5JacGCQcMcA7rU1Zl113Q+4
	JQJJjyDFIjT+p8B/lbVIv+TrXdbmo7ZoHIDJ/t4E7q35NXMwyFIZTfOrTRzKmtzN
	eZnRO+/W0q2alBa69wDZNIPiLcPnORU3rv2/wK8VKTNUf+N0Z/hjXHSNqS6g49rB
	OPibajkR+4zdtRFy0zkXTheYXvhezysEmYI7cTMTbRY4lgRZeuu6u5qfuYQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au1f00aet-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Dec 2025 04:47:09 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297dfae179bso11451125ad.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 20:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764823629; x=1765428429; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+HoP4zgJI2HQvPd0VfVnVmAlTXxAtZwgmAa2Xf4qdeI=;
        b=Vqjk8rw3xvs5dojXIEs0SLImHS6GlHR0IE4Roso14mKmbTYEEF7nNPJK2sIu0Ig3pg
         rboBS/2/7bYZLgq3C8HLafrRhHNQhSQgl15vUTkiGf7VRJHMvFSzesMcbXmMp1DtpBSr
         6CLFOwxTQlGZnyrjegLvgncrjENDntyKJDefJs2q/xhiPrXD8QZAsbynGeNusDhN8mCG
         OhWXfoa0P9gYxJ3NHyKLSjNnzzYVBupZoLUsxB3RmGemy2fHLiCgwumX9gIXGbS7PcVH
         9ln+hs8y7FYCEGcr736aMX1Jv7y+GVnC8taj8c4jnBZrF7RjSNDIrmgjWj1k5ldqwkXq
         Itnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764823629; x=1765428429;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+HoP4zgJI2HQvPd0VfVnVmAlTXxAtZwgmAa2Xf4qdeI=;
        b=ByxJCToDa1NHbArXK44twnKfuE40ZnD6SVfqpjFmOiNY8K6yeSi7xm9agaeviMXhmf
         r29bSpG8Kkm/LHkW4hTCCxXUhIOp4zQGDndvKrglKV6hvvUm6FEKsEiuI5RtxmkDahwd
         U4KP9t7G0xUhEZOIDqDhSgVrqCfJPardmhIvfyJBv21FGRTouskwA3HQgmd7Z4jhpzxy
         CGeIutbWMGA8OvZD1n0ZI+3nzW/3kPgbyTp2RjetFweIH8ZHT0UzIfeRhEtp5O/Zvrw9
         mqcYtOqd+ivi/ocCv276CKzPDKEDPxH0oAOZs1TPMHaAM5p96nzG2QoRDJLI/oGrA13M
         Hwcw==
X-Forwarded-Encrypted: i=1; AJvYcCUVQUer4gb4pVne3z0cPxpaCT1WJuV4jKgTGcqowbZhi47LGIWqLJ3Om+vbxV2PCWKt1skWzLo9w0I=@lists.infradead.org
X-Gm-Message-State: AOJu0YzprG63Buy8B0Jl0aqrSmh1tKQDAux9b41Qp/aqzJpy5D5Xaita
	YvB7IIGwhDjWcM1MjZrEDUvUaf7Ho9oLF56a41h2pVglh2uJK7yT26Be+X6CR680XILpOEmA7Bv
	bTPshg/wUKWp8TDcjwCVJAddsuPYzMb8Ky1QqfKZypcYwHT2RycyyBsWjtOujKzXvvOw9
X-Gm-Gg: ASbGncvNGm8MEaGEAhbs8p6m/w37bknNBBm0iFOS7Yz0TThVCspbVTJsNhhmb2qWF5R
	d3M37Oikp5PjicMJBSmI+IEz7utBWNUHplJjl0/AvveXtHx/E+541QqFZg2ykuNGnHJ+K1TBIU6
	LqnzqxJ7DWmVuDuI8oH6boTW98xZS67qD89UPukOn6VfNUpTGblWHou0VTlIc1WPt9Kcd/dlfUn
	OPYDPRHhQASw23eyTaeuMmD/3NOCUq/e8l1hkFQWU3RCSDTxRjCq0hDiZc3k2hq8voiKk5nNlWr
	iG/B3nwTfgQihGz/RRoLb8nSoPJkptxjQQB+RTjPAi3R5X9sha0oBRKnhYKnSUIiodpwbGyi+tS
	sBX0ZgZmPDrPIDIsb/xH+QCRZZ7UxPXoX6LEifu0jhZYFHcQ=
X-Received: by 2002:a17:903:124d:b0:295:2cb6:f498 with SMTP id d9443c01a7336-29d6833a7fbmr55257525ad.7.1764823628661;
        Wed, 03 Dec 2025 20:47:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETGLnb1iDQCbTM6tMEhFnqWAxsg6IO/V1mPZJ0Exekg2zjCbhMpVfCa29EcI7JRiOtCkVhkQ==
X-Received: by 2002:a17:903:124d:b0:295:2cb6:f498 with SMTP id d9443c01a7336-29d6833a7fbmr55257285ad.7.1764823628201;
        Wed, 03 Dec 2025 20:47:08 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4cf97fsm5217995ad.25.2025.12.03.20.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 20:47:07 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch detect param update
Date: Thu,  4 Dec 2025 10:16:43 +0530
Message-Id: <20251204044644.3072086-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: mGuf7mwYonH-a-gc7jP5gnATaD-Basp7
X-Proofpoint-ORIG-GUID: mGuf7mwYonH-a-gc7jP5gnATaD-Basp7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDAzNiBTYWx0ZWRfX2ypA+2RkSbP3
 uShwVRhS73PWeWl/zXyNSWS0zOjCDGfIcjPHPvTRCITFNV3C6EKvQXq8xaSDzbBa9jXYEEhoLGa
 LGGfr+U7bwDHuQuTf9zADAIahcNw5GOl2MG/BhP3pLNvIdTyuynqIItTd0ThLmMA0WmvNUmY6xv
 nhwXQ6GalLo6pQUDJ/UQxUxZQUwrsoNmcQw9vayr8P/ZBIL5q1GC3WZDMOqJJvFQEepXSRtfVol
 fdlQqhWdoDQ0fKUCAIN03Yq7PcCYekm5NZIjmkcbj8wd98xGVppQHLjRQ/UGJjbLa/+wd4dHGC8
 YQ1Agzvc/PbMUdlaM4nYd6/x+U5UounUAO3/BAcj3xQSkDZ4I4DdBLlKsfyTsR+WgD/wOlbCs+8
 nMdWAZMT6ugLeckU3gf+M7lP9W8KJA==
X-Authority-Analysis: v=2.4 cv=Scz6t/Ru c=1 sm=1 tr=0 ts=6931124d cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=1szMwrN-8cuOqQ1sM4MA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_01,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_204710_958537_BCEACE87 
X-CRM114-Status: GOOD (  15.54  )
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

Add support for overriding Squelch Detect parameter.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 651a12b59bc8..a75b37d4e16d 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -37,6 +37,17 @@
 #define EUSB2_TUNE_EUSB_EQU		0x5A
 #define EUSB2_TUNE_EUSB_HS_COMP_CUR	0x5B
 
+static const int squelch_detector[] = {
+	[0] = -6000,
+	[1] = -5000,
+	[2] = -4000,
+	[3] = -3000,
+	[4] = -2000,
+	[5] = -1000,
+	[6] = 0,
+	[7] = 1000,
+};
+
 struct eusb2_repeater_init_tbl_reg {
 	unsigned int reg;
 	unsigned int value;
@@ -120,7 +131,9 @@ static int eusb2_repeater_init(struct phy *phy)
 	struct regmap *regmap = rptr->regmap;
 	u32 base = rptr->base;
 	u32 poll_val;
+	s32 dt_val;
 	int ret;
+	int i;
 	u8 val;
 
 	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
@@ -147,6 +160,15 @@ static int eusb2_repeater_init(struct phy *phy)
 	if (!of_property_read_u8(np, "qcom,tune-res-fsdif", &val))
 		regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, val);
 
+	if (!of_property_read_s32(np, "qcom,squelch-detector-bp", &dt_val)) {
+		for (i = 0; i < ARRAY_SIZE(squelch_detector); i++) {
+			if (squelch_detector[i] == dt_val) {
+				regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, i);
+				break;
+			}
+		}
+	}
+
 	/* Wait for status OK */
 	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
 				       poll_val & RPTR_OK, 10, 5);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
