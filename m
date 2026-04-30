Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00AA8FF8875
	for <linux-phy@archiver.kernel.org>; Thu, 30 Apr 2026 11:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0XR8ntMKc7Ww5AuYj3aHDVIO0PC/xQDyhpGGjJPsfk=; b=i6j+2hutx8rmvl
	RXRjmBD5wEVTBIwk9G7NTLFd3MPbjRAD1PuSPmx5ZjMxoP4lJ6wzHDAk6ArGz/wXIdfITxVEHHb9L
	wdN3dPVMhK3hwsNbXaigaels7qWZ9zExDwqDRYKvgTDgVa2kPN1tOtRO6zXcfRsCC4oT3DLtAshL8
	n2bDJ97ZnI9vi/37y5cKNCmHmuvHYEYi/TzdIyoJ3NIC3//AqHfZI2MmTeMqsdZI90INPTPxqBuLh
	Tta+mFoB+oFTKWHs4t7MpyaUwUFr1A9gw5oaykE/AtBbsSP5Lujsec0ndwx4Td14viYAm7427TM0o
	nxC3wx5+w8NrLqCbLweQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPxS-00000005PKs-35cf;
	Thu, 30 Apr 2026 11:53:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPxQ-00000005PKV-2kRY
	for linux-phy@lists.infradead.org;
	Thu, 30 Apr 2026 11:53:29 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63UBV9Xj256103
	for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 11:53:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ps5zXr8KvxD7La8ND/9uOCAL3O/rduP00pOV5kPiIIU=; b=WTCq+PRPVkeGHc5N
	4E4YFwhZCC0aLpYfOjyVEUbQEHg4rQWAKmu7GvjtrC/AovOiaqGNA3bDkECWOBh/
	hxMro0KI/hrFLS+/UGbqtoJrrWbqv1TGw4FnFIqH2KYg/wkqfHYMgfS9zF1F87oR
	TeIvfzYDJWQr3ZdUE4FgoCHIZVUA80muLmW6zI913AdVvb1PiyRzPXRHNfd5yX6f
	chZGN1ts+LtfC4CutHifXQDTshoZ8u+4b7YQs+0wAYWIMVtce6q2LATQ9GSWmhmM
	a0eRGkz0EzCTsDrYq6qhhPnIUY4AduhGEeRhpoBsEFaw1k6CrMTHibxYBLyeWVub
	eYHbhA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dun71m2g1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 11:53:27 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2b2d0c1ead1so13463695ad.0
        for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 04:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777550007; x=1778154807; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ps5zXr8KvxD7La8ND/9uOCAL3O/rduP00pOV5kPiIIU=;
        b=jcTpuUSiVfVmFA5evQFhslQya4NNEueeMqSK2fyPBikrnEyTW3q8l8NwD1wh0bWd9S
         lwkiSvCA5AmdAllQOluHBpB6i7qcgSzLdJ8uppiRemvXR3Rl7qffibg0OX6YZUTY/cDs
         ZeiLRD4ZUBFv8jYyk3PHAuRGU2ukxVWsco4X/GG6nZvGASUwbNwTsrJQuXwDHsWfj2g6
         LuEqir+0KL0INSI7rafFOeVyzx8rLy3yO8LP4pN59CfiPfVHjZpYAIGYobJo+zZ9QiG9
         F3DqXgGUyLNWVo91oiqIbTdPDTw+AtncMSnLsMOZKSuo71PJMswATYozCHKLtOouCeb5
         jYOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777550007; x=1778154807;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ps5zXr8KvxD7La8ND/9uOCAL3O/rduP00pOV5kPiIIU=;
        b=alctrybsCL+XV3DuCmAJhuZylzrZzDg5kgtyg1q45vWCjZitnmnAoWnU9WxFcUAA/F
         wHpQ7h02+CKMNdws4V0zXenJC058e6e/ma8v5TwNj8P10cIhLPYL5frR5FRSmLf3Vn+6
         mebWf+5DDNJuyk4QKWP82uUaXHleX23CNyHkMQGFoJ2sWUcWMxqJZt7Ob/4GCinc70Pj
         HMpocX9H+Zq9jluhEZXvrcVPMj52K/NHdoDUa3GV5RQQHZZiEFMVWD35ptDrx9x6IvFe
         /7y25e6s0INpzFyVDCnujFXzMgJ71e7AFU497KDVDjA6JqL4jUS7esOt756mU/Xbh562
         gkDw==
X-Forwarded-Encrypted: i=1; AFNElJ+GvPu54TpavOyG8u6gxBV+T5r0MxxhtYxSz4iKhTHYzGClOIRDVirRC+UYuA+7y3fwzsOyRzglp4s=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1+Hlc9TQA4fBep8/XZBii9sXW+M/v+yH9GpZ0AmZLDm2Vl6ZG
	gCj87yLn2iSHiErMpl99HCx7YSJ/fmzIO8BQYVwGfylmbAnay/q0tDXVXzXBn95vXmYPtea6kFi
	vzhC7GapOAVgXF6ERJd35snHROgeD1hDDpWrPAmFOcLr5n1+ablecD42sNRHmMn9tJ2Tj
X-Gm-Gg: AeBDiesuHeccNFwLztTO6RcrHrPZy9j/WRT7WimrfAmV5Qgudx78rW9YbInpPGKtaQQ
	ygXc/X1VwoGLAEGdw5I+DKsTMtTG3LSvysNAvBQCQzjUYcuh35qFcU0SGYT9/K5EOO0kvqIcdUZ
	wKNH2FpC9LsYkZ6GywuPur+cFq7LhrCW+BwwEFZQM04w11lxChAp8nBIZ3MY7jNS6ch5qiHdP78
	/oBIQNDvqSyIMfJdftZbdTfjaDVMRzt8bwGJIFZe3lkCI3X3aOjTI1ujvoKasZaENfipI7D9b1k
	mveGOKNky52KlmxSAcmEoGFjcKtl1FJYQ8/45USYHFVPYKr9TQzIqVpD12B7AAIJBQBj2ZfqIi9
	YTJ/xva7kMr8AxxnbYGsjA5r+em0M+Tk75WJBviQMjHex3Lc=
X-Received: by 2002:a17:902:bd04:b0:2b4:5931:bc4c with SMTP id d9443c01a7336-2b9a2345232mr18800205ad.15.1777550007305;
        Thu, 30 Apr 2026 04:53:27 -0700 (PDT)
X-Received: by 2002:a17:902:bd04:b0:2b4:5931:bc4c with SMTP id d9443c01a7336-2b9a2345232mr18800005ad.15.1777550006729;
        Thu, 30 Apr 2026 04:53:26 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b988971138sm53834955ad.70.2026.04.30.04.53.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Apr 2026 04:53:26 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Thu, 30 Apr 2026 17:20:29 +0530
Subject: [PATCH 4/5] phy: qcom-qusb2: Add support for Shikra
MIME-Version: 1.0
Message-Id: <20260430-shikra-usb-v1-4-c9c108536fdc@oss.qualcomm.com>
References: <20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com>
In-Reply-To: <20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777549983; l=1446;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=z9a9ilodfoaZe6rWbutpepb+HOnjBSdkp1kFi8ZpYi4=;
 b=IOE9Vdz9TdJzaNgyiwXdVYxmmFDYF9VHTqzy5dEJC1AehxKvn7ZNiOEZ5b8sjuLAwE7dJ9Yr2
 RkKC9X1+cFGAHVfnRoo/InDVj7ljVl1kbIEcjeZVigHOKnB1Ht82W38
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-GUID: mDaTxlVj_OV65AO-qEel9sSE4AfFgqJS
X-Proofpoint-ORIG-GUID: mDaTxlVj_OV65AO-qEel9sSE4AfFgqJS
X-Authority-Analysis: v=2.4 cv=TvHWQjXh c=1 sm=1 tr=0 ts=69f342b7 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=2jleMYo8EjVMK2M3yooA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDMwMDEyMCBTYWx0ZWRfXzuutfhv/rvgT
 jviQbY0vGzJyxKxgcoALtK+8dgS/00TOMw5ibBKrLvQVmZV5ZB66rKORubNnIapbhNcdbV3qwTL
 0YuY220b4PkFWhPck5McFwAfzgW2+GdL8cvUofhqOTL612TOKzgGxIvzHlfLPks45oBKh4S5dvy
 q1fSxvTfc+l30PagW+bSZ4YJB63z0f8xO07yFAuBNiAGmkos6n0oxaUgdOoPTFADSHKYLhtpWnJ
 P/kantmNxNWLtL8pK6ry8kqbo2gjaHjLtS6yKLqTJVsuUt0k0R2gBMJrs1GGnyOoFpLKPj63HLq
 pXmFmSQG//LnQBH5glkJNtFUr/Ah1aXWzncQIKypyqlzHCzlO9EYfYdAeKXISJ8/NspaILZnWy7
 9uX9aTz0RKtNLvyD2vuot43o0sQdD36yzlx2aZiW7pHlbXLHyhFa29nLyONzYYFvUIoG92sxevP
 pDin4XglrE74CfldHQQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-30_04,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604300120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_045328_703183_65FE3E54 
X-CRM114-Status: GOOD (  12.39  )
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

From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

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
