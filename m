Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A165CC6B13
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 08:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xt0JL5hBf+GNM+vIZ3RelzQJ72kTtZrN8tAXPnARIc=; b=BoQkosZYA4U3MT
	S3ExfbxujustP24SueOuSOXodL//foDmI6xuttbZpEBuiBpnn/bTpchhb9rNgiMk08mVLm5mWqfbA
	1NmQ1wkicRIgsnX+8QsGn7hGWxI1S4A9VHW19o9964uxyxhWNVU4e96T0Idvm4iQ24R0wtVGBSJ9Z
	y5vugc0ziiDgSydbBhXnrhbwA8jJk2HQoCpC+vTdOBZSc0UeWKGSCB/Ot/xwJwQy2m08VU3NF+N+I
	nIHO2RAR7GfpDDu5PwFRa/1bqQ0J3ggqEP1Q2v+q9iKC6LVsiyqYMGK0uhB0icTXiAvf3g3Bc65At
	B3ZnDs2cK722bLnFrBAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGYAG-0000000CMs8-2Ow2;
	Tue, 13 Oct 2026 08:47:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGYAE-0000000CMrD-15Ez
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 08:47:15 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D6CRuY949345
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 08:47:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IxEa8Pb0nd9li3Y0xVvL05fY
	BOkeTK7g0eV66MENLQI=; b=KEkVwhbk0wuOcnJ1TkMKcfb2hCTRrP5E8RJDZFHh
	/bMRgihMcV7Q/HmXwIGZTJRsAQP1C+HWCs57+KLsjhrk/TEAVZjgnPowKqkictTV
	kT2c/HHbe1z5X6G7jNaFLEHSsFzniX65KDDkZzaPmcSfFSkBK9WZTZfS4kDs1Lh4
	kOqQi2ptLoa9s2Yvm8i4D9IHuDILe+nhmqXwkVo4nrIEDUwNdIIGzY6dcl95j14U
	9xd9G0Tt3R/lF+02bVJ+SqVeimUFBqCnZqrE1PtM5ps58F9ErlCrgYTH2z8HwY8t
	p71DX1IR8z56Y5vAOG06LAhcq7niRCW3dX1jVoZjg9i7qA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h9f628ku2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 08:47:13 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93e92aad34aso517798785a.0
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 01:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791881232; x=1792486032; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=IxEa8Pb0nd9li3Y0xVvL05fYBOkeTK7g0eV66MENLQI=;
        b=EZBlCYVM+99kszVMvRM/dv6VPk1SVUzu2e/u4nmivCq8juoXF3L3rB8oDexRQsDath
         p0oEqhykbcJ9qe7yxCey9KS8iA2aqGIKZkcLH6W8noqxpJFLkQ359o3XpMeFxlptzNCJ
         IPIDehoAG5Zr3OfVHApYlS3u4zlDkj5FufBH6jfH7XhnxJHrO0SF2Ea9kAP3EYeS50D5
         vnLBdazA1RppFj1L/tOR3wVLnlpg67/ap5t/H2Lz29+C6O298s/No7nJ+tDnV3bcSgab
         TjBG1DDCb6RJE+RDrUXogtohPz3q+STzNJW/hBqy7hjwTLykjUUbECLlTAhopLPIJvLQ
         YwuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791881232; x=1792486032;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IxEa8Pb0nd9li3Y0xVvL05fYBOkeTK7g0eV66MENLQI=;
        b=DmvxyyynHGzjAuNGzpGb1jJ8VmsF8S1hOiYtcZMNvJUyQ/EXb6C4rdpL5ygsbT8d8K
         DQv9bGCvKhrvtD3slAObj2W4zCEh17+L5MyHDB+Qnv5usHhpTXM1aTZkXni2gEo7dBw4
         vO1i3XnCB9Mc2St30eZFAO8CASvOSOJfF+G79RCfrSts+02JTpwJeBKe9JugCaxDtAxg
         JJf/BLHXDP/8F1iM9gRaIi3DjZOIjOy/Y8mUpATrAQw949svUAbxvSomBc3wVjNcHvKJ
         0ZFMzikW5OKIqQTjAY8uWMQ2+Xu11hUpBrW71kDGG9un8Igk4E5qpoOkA2gXS0uxBCmh
         3u/Q==
X-Forwarded-Encrypted: i=1; AKwUvBzeh8h3chCZH06uqWH2Aq/52gXI4dJI2KQrOKNz2Sc8mZwQWMAA4sRkuvS647zdd8A2ANSPSC+GAcY=@lists.infradead.org
X-Gm-Message-State: AFq9FYLqOIIEGUOZeDFJokM7UReprBxECpYztszZvUjTbFi3GSuRLRut
	5RRyO9nxSoFuktEsHMmWhMYOI4PWrTi2h+qgXDjXCABMLAEn/iVM17A5lVdHQ6zc9kalrcKx7oS
	vNgoW7zZbNGt48sBszkwAIiiwJQPaZqSEJxHxBXm37gJZWgtJ6iF4Uje98mvTMoL5ZYYQheNSX0
	Ca
X-Gm-Gg: AYBFou3eTV4nOr2NTYxAsZeyWIRLWhbJnv5Jkdf11pS7zzAcQ3BVFHxX/2uQHCFRnt1
	1aDdSRqRtmctLV8oroIxFASvMrVEZavojsPEwzmwQuGdkD35m3LydFi38SQ4quB6TWUB1kxLiGh
	CgGIEVXqvOhiX0k9nczBGWXAukJcth4ybKve8R8TEv/W9flMy0uQK6B0VYK8fQlHziJwrcMfigB
	ZiUCOp1Tzzdv6cSOB4ZlhkZVygsxrrZM/7tgx5zkQaZTOPeNN7tfcfqXzOyoDk+ackrdyixGcgr
	yEuE22mt2mBcG4MPuYhkXmjoRO757cgEBoZE4GhDTBSuFB4Cue42FaUBzxK2xcqdbGh4y8m0K7S
	HDAmKlySTPeFmy00=
X-Received: by 2002:a05:620a:4689:b0:93c:70da:e45e with SMTP id af79cd13be357-93ebd223c74mr2039231385a.36.1791881232317;
        Tue, 13 Oct 2026 01:47:12 -0700 (PDT)
X-Received: by 2002:a05:620a:4689:b0:93c:70da:e45e with SMTP id af79cd13be357-93ebd223c74mr2039224385a.36.1791881231577;
        Tue, 13 Oct 2026 01:47:11 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.215])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a18d12fe04sm215536315e9.4.2026.10.13.01.47.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 01:47:10 -0700 (PDT)
Date: Tue, 13 Oct 2026 11:47:08 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
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
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v2 10/13] phy: qcom: edp: Add Nord spread-spectrum
 clocking configuration callback
Message-ID: <7cojksxbq3mznhkn7g6rxxxl2kmgd4hpkup35oj4qdbcqnqjsi@c63o5bgxps3y>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-10-a2ab9af954d2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261012-nord-drv-dt-v2-10-a2ab9af954d2@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=FOKOVOos c=1 sm=1 tr=0 ts=6acdf011 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=Rt3kCFFBWhWisHNmluDamg==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=2vP-gcZVKESdWMdgu4kA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDAzNCBTYWx0ZWRfXx/QEXL1OV4dg
 r5kIx+CwmpyEil4Nfr+ULb4+VN2AWQVr01h+sxHMk+l+GixQtKAKgP8w5HmWtA6JuqqJN6ecmMs
 0PtdTe49nH64l8vcQVdvwh5vXUQk7xo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDAzNCBTYWx0ZWRfX3l4RtXnhZmYP
 UvJwQNEZ4ozqNeOci40+iPqejwgs1PHd+gQAGM2Vio2cYzMx81lvqsWWTFTSOBVS0goHJUkmPUl
 LCQbAIzP1bbvQKnjwVFOFRBej0elsO323W3fh/i7b2VeDrq7ZPrl1W6DJdRsI7shsH2Ric0ngVT
 +NukoiTMNyfryaRcvPWpYb2UJTeh23o1N7tM/K+O9FY2bDo0DI6Xi1qBn5zpVOsUQYd3CfTpLIR
 KSHeUypae1y9fJEDRBr3EWTf018TNMMpcDs+oEjT8TcA0g2SXsTSJa9UH28Qw0nnnPILfmDQjhH
 3IcjRMKJ+IaTJ69hUS8geIkQK5MGjgWn5Sy08gjfb4m/hWMn50aiPXy7G73MxBNlHJweJECsOcI
 08mE6lArnRgH/EmhIkyra9NhgV+BmBl3DQU84XJs1aDkQniqqsy0SpQxQEHlkxwSi6W4Hp6BIBU
 4yCRaaEE8amIW27z1GA==
X-Proofpoint-GUID: r5QqnHHvYszN6cyqSMh5HFy3X0gm9vQD
X-Proofpoint-ORIG-GUID: r5QqnHHvYszN6cyqSMh5HFy3X0gm9vQD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610130034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_014714_418585_0CBA90FA 
X-CRM114-Status: GOOD (  19.41  )
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

On 26-10-12 19:02:20, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Nord requires different SSC register values compared to existing SoCs.
> Add qcom_edp_com_configure_ssc_nord() which programs SSC_PER1/2 with
> fixed values and link-rate-dependent SSC_STEP_SIZE1/2 for RBR, HBR,
> HBR2 and HBR3, per HPG Table 2-9.
> 
> Assisted-by: LLM
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 36 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index c63f721702b1..66c31684c48e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -1601,6 +1601,42 @@ static const struct qcom_edp_swing_pre_emph_cfg nord_dp_swing_pre_emph_cfg = {
>  	.pre_emphasis_hbr3_hbr2	= &nord_dp_pre_emp_hbr2_hbr3,
>  };
>  
> +static int qcom_edp_com_configure_ssc_nord(const struct qcom_edp *edp)
> +{
> +	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
> +	u32 step1;
> +	u32 step2;
> +
> +	switch (dp_opts->link_rate) {
> +	case 1620:
> +		step1 = 0x83;
> +		step2 = 0x02;
> +		break;
> +
> +	case 2700:
> +	case 5400:
> +		step1 = 0x18;
> +		step2 = 0x02;
> +		break;
> +
> +	case 8100:
> +		step1 = 0x5b;
> +		step2 = 0x02;
> +		break;
> +
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	writel(0x01, edp->pll + DP_QSERDES_V8_COM_SSC_EN_CENTER);
> +	writel(0x00, edp->pll + DP_QSERDES_V8_COM_SSC_ADJ_PER1);
> +	writel(0x6b, edp->pll + DP_QSERDES_V8_COM_SSC_PER1);
> +	writel(0x02, edp->pll + DP_QSERDES_V8_COM_SSC_PER2);
> +	writel(step1, edp->pll + DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0);
> +	writel(step2, edp->pll + DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0);
> +
> +	return 0;
> +}

Why is this a separate patch?

I think you can squash patches 10 to 13 in a single patch.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
