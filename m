Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8A24C88E45
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6J5jpG+mT7yXGKItEQvWx5fnZJbq/hqiNVGK0t8uSzU=; b=2evNXHeWZrb/5I
	RewGBA6sPoRif2P2eXpzY5K0Hlt+UyGxiHlnw3wn6u2o90DsP9lSdsS5+/awFHn7sNziF6YX9tM58
	p+umqYOM8WHrptMriGCneoQSekkEuhEwkz1OODeJdyR5fZ/mBBLX9sN+ejckVvA3LX34IJBUkYis/
	N19TECIZOi95rqbmFT/+8QfV/heuqxpsisoSyBM7Koo7mUQPimUrItRA217ai5kCzd/ZHMq3h4Hbo
	U7jq6U0yJG+U0XjHaQBqvwRVpCepR1nUr/AG3yc50uzobN7eubk8hkvr1KYhMVwg+VH/HFnMl9J0H
	Bn17LyX/X4vF6anTid1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53LD-0000000H5Kl-24Wi;
	Fri, 11 Sep 2026 15:39:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53LA-0000000H5K6-1VhZ
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:39:01 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BEmFe53780696
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:38:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tKaBjoBGU4g+MPA/QMDjAFsVj4rZ70kS5n2KtwM4AkE=; b=l9RMnlMiGOkxW+pa
	4Ss2zASx45Ad2B0m4MI1wJgI6cx4LhDELtFRKnDAvF8xgAHTLtdZ8LM0iwXy9Hur
	2QkAiWqqfs4ppobzZ2pjg5SNRQy6ijn06uaipg9m22bi3yZ8UkAvM0p4lbSanym9
	wAlHdpokJ7ffsjUx2iMuqac9USBA7fq8Ca0stkNE3dIrlR+5Foehw2ypdhzjaLTl
	ft5VMmJkqGxyO25MzFoC22yW0nqc18oaqDMkghNjkI2Znyi090yREDVo25kLsD/T
	T2feXCdUC98mRqE6av9RooZx6PYC/ScCreKWyvRPz3FY8B4wnOvyE+wmm9ixiLf6
	95a0PQ==
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmcgfj7v0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:38:59 +0000 (GMT)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-44899f99756so1300849fac.2
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141139; x=1789745939; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tKaBjoBGU4g+MPA/QMDjAFsVj4rZ70kS5n2KtwM4AkE=;
        b=FnHvQePbqBY6zGOYjljmkN2tT+TCafhSxFbYdSuVFw1P3q4lGM+iH630E4bmamsojd
         aErm2E98pNg4vnj/3X58kyDpSIc9XpGwGQZg1o1ihRTabpRov33iFXpnojj/O0MY6j/p
         GMeJzZcpOoUAPS4EUMHsUXvl69MrU+GokNY/TJguA8mL4gzq/hHTeq8G1je8uv9ICvoR
         j8Air4rYvDzMgvifs8le7PMofmUHSjNSUWl4p4ARXhFf5PPmcbsTggN4LlITEiZT3xYz
         wwa5L18DSUjfUN3cmtceKmUdOn1jQ4thRQA0kdusftII8KGtnX0VYy9LWS/c/tLs5BaH
         +mWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141139; x=1789745939;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tKaBjoBGU4g+MPA/QMDjAFsVj4rZ70kS5n2KtwM4AkE=;
        b=M8NPYtnC3f9pwSmRjKLPYl27sx6h+nolbstGdfMWgxCLSR4eUj+D6r9wuNfG4FzZHH
         vFP0MAgZ8qjHxODHsYG8DXbbb+MlQPpgvdaKLf9qqIhE2uweCr2uKpB3GN0XWYBIpcAe
         LrYAlhxNkzwWImGNBQ7M1yoxVdFkkHP05oYDCfQ1OglRR6ZSUEG2O0wrpG1WzYVOwZFu
         qcIPESCxjEzwCTCF5QGkRf0xouujcw8GGjSAMeDyQkZ6EeMJWipaMlsHII1tI214BmCW
         Z21hZibeBCinoffg1hgSZAH9tGmlb0d7+A6c1NbRhTRmlr7MECzuKOaVW+hAT7+N7esR
         5EFg==
X-Forwarded-Encrypted: i=1; AKwUvBwtVSTiRpohdwlW6H2UbHSrlwOaWY9A0Y/OnTiDx+LyCD/vJH7qwdYyP35drA5xl8nDRSKUcw7dVkc=@lists.infradead.org
X-Gm-Message-State: AFuF++k4Tx8oHXaWLtLsviMokddInWErBeVfOEA06pRdQfxSJyZgHKUB
	b5KcQ9iuw6KzoVIAtspHZLWnrqGXhaqfHL22fOHVHjotfpwe60R62mFjRMypWxb8gaIrfTm/OkK
	ZhHri4TMlkWriLiBzKOg0C7aJjeLa+7Tn3sY0W4d1FlKo+GQb1Khw89vb9IgFxrb2SfqE
X-Gm-Gg: AYBFou2BweXivw2Py2qMnxQHG1LOwcgS/8twhPFMfbK8cle/imKAVdZDZBZi35RUgIE
	3k2by3vO7nwXpuxgh+CrOSs79S2iZJRT6+VeoawLjqgIYJq631xLUqV5ZxyBRxW/27trRYcwXsI
	IoH3yyMR/v9cvrV/bf0dIdQSUZiWwgatSq0TXhuHoRUSd5an3AW0bkgkJnPOSyNJocpmTmEJGf3
	npaHft2mbmMinFgbXyCNwPeYoGu1PI18gpB9lji5VCdOQl+ReSH7OZ9I7cEkzw4zbgRagLOr7kI
	fFOpTzkjtW0FNqfULSd3rgtGxE4Z3kA2PB74YJhxw61aqiXmKg9jblZ0gDXUap0beOExorWENrI
	TkHIf01kN6I7u1TxTMmAIeDY+BRM=
X-Received: by 2002:a05:6808:4f60:b0:4b9:e5fa:890b with SMTP id 5614622812f47-4c31b9f16eemr4174506b6e.30.1789141138643;
        Fri, 11 Sep 2026 08:38:58 -0700 (PDT)
X-Received: by 2002:a05:6808:4f60:b0:4b9:e5fa:890b with SMTP id 5614622812f47-4c31b9f16eemr4174468b6e.30.1789141138155;
        Fri, 11 Sep 2026 08:38:58 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.38.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:38:55 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 21:06:43 +0530
Subject: [PATCH 12/17] phy: qcom: edp: Add Nord bias and clock buffer
 enable callback
MIME-Version: 1.0
Message-Id: <20260911-nord-drv-dt-v1-12-e25c073cf1b6@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=1163;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=TJ+MFSHUURH7gOS+pdGimYtOjH3VbFvgcOMzvr6FrkY=;
 b=H1xeQ4VQYRjCAdIOLL7ZZUQ8aeKbS2ViYdolASdA7VKj8S9mICvGiaBIYo7Fsv/BUIAOeWESp
 e8cjF4dHeaOChbU8dcgjgs3RnwXdzjlRc66uRQZhPDgmgXF+iNiD/rq
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX1yJF87686orW
 34Kj5aSIp7o4AKNY1L+qQd2QdJUIGY1rOrn/h/CLI4IVWTQx2vxAY6190KZclj0l9+680TpMHvO
 OLXvTcPsqQ3yjVY2d0sIR1XbGqYlAryXGYBF0fX6QZNliphKXkOdyRGILogAhXcHm+xCCIKvEG5
 T7USJEH3NqdDlYUve1tucTkDnSBWi1JWmMrpeC6YuwPKLKSSjerBZ9LckO8mvIrxCv7lJvc6hlX
 hRc5bksm1oGfwi04sqHmUVuj2F5m04Y94l9l5irTaOjGehZtDVLgK/qItfxLMrgdD7Xfd8reTTq
 raOcrCltez27ltSoaNWPPIXGVvAwwHt6ste+BqUwbIu6ij3eTegGeHLh/D3ZqucfA1E9xalSPeT
 YGw8Go6+l35zvs6o7xHsfOUN6zfBu2vkyTEXA+N/dLO4ff/ikHzr4EgcWlSriuRr+sW1a6qf4b/
 S4ONQ5ILoOYisQDYzZA==
X-Proofpoint-GUID: RaHiWPB634EvfJnCPf9xp8pQWcWZ7XiC
X-Proofpoint-ORIG-GUID: RaHiWPB634EvfJnCPf9xp8pQWcWZ7XiC
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfXwtVFgX5kgRCQ
 au9kjjqsajyUL5api3ccHWrTKDDfPLOJlMa8Ypnv+Jqldzq04QsaC794HoPpMFeEUTrOFrJHZdP
 +CQe0+487g/rqtlElX/H19t/xThsXVY=
X-Authority-Analysis: v=2.4 cv=ULtIjyfy c=1 sm=1 tr=0 ts=6aa42093 cx=c_pps
 a=zPxD6eHSjdtQ/OcAcrOFGw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=UH4Y3tt_PtaHL7u5GSsA:9 a=QEXdDO2ut3YA:10
 a=y8BKWJGFn5sdPF1Y92-H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_083900_528731_1441FD32 
X-CRM114-Status: GOOD (  13.43  )
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

Nord requires BIAS_EN_CLKBUFLR_EN to be set to 0x1f to enable the
internal bias generator and clock buffer, which differs from the value
used on existing SoCs.  Add qcom_edp_com_bias_en_clkbuflr_nord() per
HPG Table 2-1-d.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 6cac4b55b66f..ec4220cffe69 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -1637,6 +1637,14 @@ static int qcom_edp_phy_com_resetsm_cntrl_nord(const struct qcom_edp *edp)
 }
 
 
+static int qcom_edp_com_bias_en_clkbuflr_nord(const struct qcom_edp *edp)
+{
+	writel(0x1f, edp->pll + DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
+
+	return 0;
+}
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
