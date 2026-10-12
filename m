Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B73ECA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eiFMsRF3TptvxyfkyozM8D2Y+sbtdEbPq1r92BbUS1A=; b=XwEXZrukCjlwi7
	8dySDT0tpNITGH481z96ViadsWbUO/WMIdwgEXVXmhqTaT9tZDnJhWc3elL/A07+WFvdQfv9zwnlj
	9VTpfWsfdeabSq086us0g5OfC6JMIXQkRuqThMpbljep+n7jEg/TtpH2ad2M/0h7z3N8pO4r9eqeC
	oCfqRVtmAThThqj24lhF57eVQu8MvTNC9kOmSA6IiMX5ZhSoc37k7gDLRimd2r7lgvMCBGbyPO1rV
	w9daaxRkkYBvCX+9ZFW3e+2xY3DDi1RaxDF5cEIpo4sQUDr0GDYOVpEVx0XVh3LKajCvI0PWu3Iq2
	rkbL9EqeNx1C6Bmasr8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGAP-0000000AanC-0mDU;
	Mon, 12 Oct 2026 13:34:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGAM-0000000Aamb-1OVW
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:34:11 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69CC0We52252728
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:34:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dkP4VyeZ4HxhVk0X5L5pCXJ+WXct+DbRHeEY+gkzrRM=; b=hzfOvXsggYekKdfy
	5s9ZhSh38Vjh5zrdi9Fc03qEysCe1UyK8ItjCaCmefOFD6xXieCxZ87u/CwUYYJd
	UwhaD2FWlmzDIAQMA6hqYiXZLdBZbjL1agRuxJd6xLClvpOi7UYe3tUbGXjiUzX+
	FOJBPYY1hNgyYjBYUOMgas2Zb0cwdNd/P01lX75/X4fQgzE3ee4GmC1b0chD5xH7
	b+ipb3zwA7yRV/Ohc8R+zfOy5MSRacMr0DKPHBhnQK8ZfDeT+02Ev1GY+wKsmjaO
	rDFSFJBU72YKWxK1aGkv/isnv1s14D6EyUkh4NyvWg3U/xCL+2UBffJ7chJd6LwH
	R/Lwgg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8j7136we-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:34:09 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-3592749a017so1561739eec.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791812048; x=1792416848; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dkP4VyeZ4HxhVk0X5L5pCXJ+WXct+DbRHeEY+gkzrRM=;
        b=AGc2Frz/eFbUN1RjCV1ZfmcvGB5htBJf/yXPcGOuHLJJhCUIFO9vptlVupGKQFqRGL
         ZR6w158OQV3YONHo+ty+QyJyDuPZVJEx8ID5dKARiesQtmYZwZOxfCRyehRQMIHt8NaW
         LEeZpNBMqwtId30pLy0eXxIV3cP3VX3VVXJhPy2WludZQPWUShH0alcZ+wTe3yBonC+E
         AEthPVk9Xng08Vo78pUW3XmhCev4VIhU8q5YK1dK7pKzq7IttypZgN/cPYGbom7dzfvM
         RrCWnILLc0dy8f18iReXzVMfabYmBbRNV7I496AS6+O0gSuL9tO90N3cwB4OSNSROEsG
         dGYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791812048; x=1792416848;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dkP4VyeZ4HxhVk0X5L5pCXJ+WXct+DbRHeEY+gkzrRM=;
        b=kTXth9Hc19gbeJ4QQ6DwF3GmLk8t5tbfVhpjOpcawFlWsE17NpvEH+MCz8olJYDRkf
         Gbq+zeZioRt/SuR1CmEZKyy1MEWcDKYroLL7YAiEs4r4FDPTtySbIDBo4Kx02tuwcyAe
         cQynYiBn6Ojt7Gx3nhsrIH7RLcWpWKa8+E9H5MhZcn8YGD1nx0XTXBObwzuRqXyKYSXM
         pQ1JDycn0sFKzW6UDy6eUuNCCR0SAM5+LZcj1LocsbaG4WUBwicOd2DEvr5qSub7Ml6M
         BISu9iUENbZBRcVUWbQtqcplidsTz5ENDsTA8R54yMVub0Y4i0JWK43J2fdaN9hzuNFc
         uVjg==
X-Forwarded-Encrypted: i=1; AKwUvBz7ZftXs/g/J7aSgQE82igclmeQfCYKaOh9s84jrPLL3PrnkjF4nottq0LllitAhhUgxyyY8a2izWc=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ8/+T05Yx43QFoi2rK95AJgj0ZP9Z5XxUQr5oNDaPTYGltwhoj
	uEsX1SSHqcTYdQDqp0c0eJx5csN9KzgjDfv1gm9C8ODAdhBDNmB6Uoq30ujC+kj/0dxD1AvVpGE
	BMUVDrEpAvpVedSKeVbZXNq2q3qys+Ye0RXrtgoOgETRfq6sbH3fy4AbvjEJnOfNpx3ax
X-Gm-Gg: AYBFou1fI19TS5OyRbDD9nmEGTnKwGnClXRg6fgEKaQMjWYgyE6JbfhoIUkYxRklNjE
	u34DVng61gpIwSFHxCDFLGhO3oUzqQMDABz2FzQYknxy3IsT4wss2/vAeIV4Or4H16Dtb7sVEeF
	90yDtx/xmoRtxnivq0syF4k5UHssev32oQ8jpaSvoUzmhvFehOurEZd9AxfsZ0gkFJGRuQicM4m
	er15vjC2ThU8iGFL0kflIUKnHWuE0+ucwwqVeon+pA/RVKT34cSEJna3aSLAVrjwCNYjtR5MXnc
	0rYw169WqxIY1hGXDyK4mMyVY7lFEMlWkwq4U+NnV3wobEMd3EKuNQGF4gyOI+7vY8/Hl4M4Ack
	f6pyyVyJ9WioeDVt1sU1FaC5WsYo=
X-Received: by 2002:a05:693c:820e:b0:351:6665:c611 with SMTP id 5a478bee46e88-3536c5350d3mr14448513eec.12.1791812048002;
        Mon, 12 Oct 2026 06:34:08 -0700 (PDT)
X-Received: by 2002:a05:693c:820e:b0:351:6665:c611 with SMTP id 5a478bee46e88-3536c5350d3mr14448467eec.12.1791812047353;
        Mon, 12 Oct 2026 06:34:07 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537ca1b556sm44740397eec.9.2026.10.12.06.33.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 06:34:06 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 19:02:20 +0530
Subject: [PATCH v2 10/13] phy: qcom: edp: Add Nord spread-spectrum clocking
 configuration callback
MIME-Version: 1.0
Message-Id: <20261012-nord-drv-dt-v2-10-a2ab9af954d2@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
In-Reply-To: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791811948; l=1886;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=MfugcJJLBszUYvNk7wfVoGG/R0kRg0k6Nei3NjNfVE4=;
 b=6IvM5DvIeDOUYfuKpdSmf47CVd4xsu1yfn/Km/oSFhGKi3T0u2jXi0K08+cowDk5XLGgfKKhs
 CBa3CQrCNJAAraKsQ/7UYEnCplC34pHwgzmLbiK3tZe02XshYU+bBC0
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX2gSHGreCPmyV
 TQ7k9o4tKm+zSU/DB8g3ThYY3k96cz5axGqECJ2PGVz/3zTM9NbPXL0yWY1F3byhzUjr1rxQHd7
 hQOZ0FiFWVY34aeJ5H91V4L5yf40fs8=
X-Proofpoint-GUID: FfiUpzAXpmvbJi7sSkcnNvsAkSCYLQXd
X-Proofpoint-ORIG-GUID: FfiUpzAXpmvbJi7sSkcnNvsAkSCYLQXd
X-Authority-Analysis: v=2.4 cv=ePGGH3p1 c=1 sm=1 tr=0 ts=6acce1d1 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=K-9LXfgjdCkVDacm8m8A:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfXyFf1tijC9Uej
 FSgb2nl11Q0qVwpnFC27qd9vc2qYZKsio90gXOyF5NrPL9+S1hMGX7bQhl5OlWG/XQ416sCKe0f
 SKhZR9oYJpaRYjqvr7dSPlrGLLOgXV+UInsUPqSOziSMQ9e/GeJSWnFzsCC1TCBAAMznenBI4wJ
 DiNUESM5D6wywfNu0jmYbnKegeAtH8Rr7QII/rJkNTmjafcbrK4s2ivFHMQQQMogoXbQnjFO9Rs
 eSY8473QtJhB0Ew0wu8tbRo0ZGZqNFbCnHrM9wyC8KJmahlThtJ3eyx1481qJe7278XTFUGVo8N
 Rvb/BFyxqYWcWyGm9LtPysZjmd5YkvX3Aa5ppF72/nLdJ/aleNYRJL4/qGrbO70nmBLuXoNASPk
 RL6Q2bokUXPZk0qB7i1sWXquQwGyGqhgSWiw6UJ/8wrHa73tav/NiJoMm3WyQhE4oqndzZxIHsO
 +RUkNERiRsd8NAu2mkQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_063410_499230_9F79E832 
X-CRM114-Status: GOOD (  12.52  )
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

Nord requires different SSC register values compared to existing SoCs.
Add qcom_edp_com_configure_ssc_nord() which programs SSC_PER1/2 with
fixed values and link-rate-dependent SSC_STEP_SIZE1/2 for RBR, HBR,
HBR2 and HBR3, per HPG Table 2-9.

Assisted-by: LLM
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index c63f721702b1..66c31684c48e 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -1601,6 +1601,42 @@ static const struct qcom_edp_swing_pre_emph_cfg nord_dp_swing_pre_emph_cfg = {
 	.pre_emphasis_hbr3_hbr2	= &nord_dp_pre_emp_hbr2_hbr3,
 };
 
+static int qcom_edp_com_configure_ssc_nord(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 step1;
+	u32 step2;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		step1 = 0x83;
+		step2 = 0x02;
+		break;
+
+	case 2700:
+	case 5400:
+		step1 = 0x18;
+		step2 = 0x02;
+		break;
+
+	case 8100:
+		step1 = 0x5b;
+		step2 = 0x02;
+		break;
+
+	default:
+		return -EINVAL;
+	}
+
+	writel(0x01, edp->pll + DP_QSERDES_V8_COM_SSC_EN_CENTER);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_SSC_ADJ_PER1);
+	writel(0x6b, edp->pll + DP_QSERDES_V8_COM_SSC_PER1);
+	writel(0x02, edp->pll + DP_QSERDES_V8_COM_SSC_PER2);
+	writel(step1, edp->pll + DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0);
+	writel(step2, edp->pll + DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0);
+
+	return 0;
+}
 
 static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
