Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0703CDB46F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 15:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kz8qDSjMROfjIQk7MEwfSMAQynJUeonPkEg3tVvdcTs=; b=YJV2aHh9TfOlCW
	CH+Z3pIpvlnCBWqMlBsrkRvMfHqWSPb6vk9d1QDqnnxtJPrs65C3rSe7fGiEM9wiFlsHkafZA9cP9
	6MNes1jE5CRgj4CsEIBbIQebvxUpwIoSTXOOq8ZWToIqjF9lqgfFsi1ocar1F25eE3yorhzxCQCB8
	LKOyx/RnvSUjtxl2eEKk+gs1ABFbx12A1TJKZGDmgb3RWcpt7Mxa1yFyKCMB6K0q9UCnDp6n3zUZm
	N9X0WJTkj49cOHbvaHfsFwQ5pmnhG/JUHubwFuSAbqpFEDd9tJnVMQ3sANgOfC77M5l03uhvNy/0d
	TxOWfJ8VcXf0s2kymcTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc3OM-00000006ZLN-1rC5;
	Tue, 23 Jun 2026 15:50:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc3OK-00000006ZKh-12Ui
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 15:50:25 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NBY01a3668999
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 15:50:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ym3P2gofeeAjlRIrGWhUFZ53iCiesVQBX5oel0MUm0k=; b=OD3Wuu9RehYOeWG5
	bVAJExNQBqYVK7WKimu8zDrs5acO+dqSR484E7mTf83B8QfCuu++cnDHuiQb137h
	slxiyjceb0ZgqgSIJQ78vIBLFEpaRHEirTsX/jJONZeLMprlV1U3MfgpuEkHG9KC
	0RJMz8uYKLADBxv2DRtBC9y44X002FiqsSEWe/kaAyUJLVyH9N0ayIl2WbAf+UXO
	7OtcvSiU70021CbFo+IAp+kcj6pLAG15QSBPTJ0/Xu/eeBSFGsGy8ght9iGJhKFa
	6WrpZS81aFmwFl1jqRmxjuoQ7uVLL8T8A8Ohj2otvR9pSDCMUk7aguiw3RBBoKAg
	Tpx0Ow==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eyppyhufc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 15:50:23 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8dd70b510a3so185946d6.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 08:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782229823; x=1782834623; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ym3P2gofeeAjlRIrGWhUFZ53iCiesVQBX5oel0MUm0k=;
        b=aCPQpSbRBKCCl54SiMUze3KMyhWQ6wdJ2IDFH6aFcUnWwdy8zbM/PT9zQi+Pxmr29m
         JJSXu0ALgjG3v4+Adq/EhMBiONghJs78Sneb/6cI+bv6egcAfxO2BePV93H0dYPB3x04
         LPT2rfEuv3tyugKKE8OdnQxea/HfopXX1AVhDzcEt+wz31IO9/jabU7jkKDgfuLshk4G
         yUXPnqiGW7HlR3/1JiI+qBbS8GraF9bpXuWC5yP6g6tBVodXAr2wXp+z5ksCmpGoGy0Q
         SetFM1p1qNzyXym9iubaQAGOmNGCRICg+UCeTI2Yo1lEaNdA185UbD8Ow4+3q7jz3fsX
         vQXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782229823; x=1782834623;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ym3P2gofeeAjlRIrGWhUFZ53iCiesVQBX5oel0MUm0k=;
        b=W27hhG/mz9tmXltAB6O93t8fq6oViawQK35I+6ues3mvNeQacjBXvFrlcIu8tbYzRT
         Fg0EC0NwpL2XZPMVr1u/NRNUjqqeqlesbC7vlkkDZuFGHp8FXJ08lEfq4gY/qeIVfxab
         vviMK1Lp/g638uH3LJ9jeV6X/VtJVMQHqJYKp9bN6tUjKG5DVM/PXohoncSZi6bNNyZC
         gbUNQ8QQRIPp01j2rI6uVmLVh9lq8aN/HB9FPsA103cSwgWEJWSI4hGfmraJkqXu/GhS
         32m4vsOBeYl6/icGaOMzyU89khgUWelLy/OvFyHo+HiNmP7UtplRi1oFE/C3LKGJ2JXZ
         H8BA==
X-Forwarded-Encrypted: i=1; AFNElJ+RADeNZKLvwmiDYRCkGxxe3u9t5xKTe9HUBJUTw06iIfILb9x49o9pprr3OUbZYF84upzcK23D2qQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyvwXgNMe2d/3iKl13J9GwLm7mX+hhDtqj4tdUtF8xtZ1Bq0Q7s
	ZAJEDNWl/dKTpGcmSunRLfAoWL8jYTHB/t7RI1b0wwpucXcLGGev7e1fRJTJmJkayFx7Wj3aSiG
	MdMEXpb3wzr+qp8AnWROxPljgw/gG8nzxQMMbn+eQIO4Vsn+NHziHgY/P2jSxPK7pq10+
X-Gm-Gg: AfdE7ck4JPK2fM0romKgL8OYNT8FH9ApSY3P4u2iE0PzM9/GLTLjP7kcaogRH+lBlEg
	ShXUakAyIzjVn/0mHJ19haiK+pBad5/UZaRqhSmZVR7G+dhImKbLYGEcUpyur+6nG8lSVmGAe2F
	p2kMhWqwHoByneEcV5xufjk49RvmM4yxS+zIpujJM93GzaUakuDsBxIBulvI/ByDaXCK95chfCj
	kHsOV6llPXmw8MM5y8MO/QZ5mHQeUrUrzsCF7EgWi3mkM+ynuk2lucdciriBfbAFepAtnlv17gT
	+1fV68iPRQ81YjpMTyNzlCfvU7WXmXQZrXG0FX8KzPNy1G2z8P5Ln1P4qfU49baTGjYIBE5drFv
	ldFsP3hortQw+ipGFIZoAWefJ4pMCOepcGzU=
X-Received: by 2002:ac8:7e8a:0:b0:50b:5286:f756 with SMTP id d75a77b69052e-51a4f4d4c47mr51048291cf.6.1782229822751;
        Tue, 23 Jun 2026 08:50:22 -0700 (PDT)
X-Received: by 2002:ac8:7e8a:0:b0:50b:5286:f756 with SMTP id d75a77b69052e-51a4f4d4c47mr51047741cf.6.1782229822025;
        Tue, 23 Jun 2026 08:50:22 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-697ee52f216sm32857a12.3.2026.06.23.08.50.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2026 08:50:21 -0700 (PDT)
Message-ID: <65873506-1a9a-40ec-ac67-60f61a0b4b4c@oss.qualcomm.com>
Date: Tue, 23 Jun 2026 17:50:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] clk: qcom: dispcc-sm8450: Fix mdss clocks
To: esteuwu@proton.me, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-1-37e2ee8df9da@proton.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260622-sm8450-qol-v1-1-37e2ee8df9da@proton.me>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDEzMCBTYWx0ZWRfX2sKsXNTMSWHd
 zj7cPAxVZapVi7LsxL3b/Y+Sn09QvfP4Bo+OsR5ELdLT0zKDlJJoDIdyC6lT/NkbuPSAi/gSjAU
 dZzzS4FFwqGXhW3eBB+nxtC5Ss7pjrjpTpWxZwnLYu6utDmcst+0LVzDWiBQNfnGVIt/NTkWPS/
 r4kn0hrvXADZYQ/e3YUx28BimaPlkpOB4n5rdjF85JczaXuVk5Uww2qoixVDdDAGQ2a8Nw8jGmB
 L77VRV4SnZocXU43KgzNrTCgtiVJF24NLNiNXGvzXrWm8RugBWZNDKVncIpjeSaZW3CyrmFnxbk
 EssbzuQ0mSBeXqQhfHKXgcB1Dmsy1JSgDqxCYthBsaynIXBLeMKSsYlNNNaJMSveQOOdPfQbQn0
 AkV45IH7Q2H02cGpoZRUl+B0WQ63WgHawLvtne7+TYx7Y/xm4zCY/ZZNLwuIVJT++5Xq5d4V2JY
 K0ac0LFWHmSxOAW+SQg==
X-Proofpoint-GUID: 4U-kYK_a0_MWxoSvHZ6DOIl8z_kAfbXV
X-Authority-Analysis: v=2.4 cv=dvfrzVg4 c=1 sm=1 tr=0 ts=6a3aab3f cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=1aW_qPit1WSy-zhaZFYA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDEzMCBTYWx0ZWRfX1s60kUZxyKPZ
 GQ2NdYPykLtLQU8wIVoximcN8qLcm/hjsyp36XvH74OygPHRHqE05FrJsLHz5Ye/KI9AyTuqAQf
 DWGUa8al5tHEoSGlgAwauOhn6XB1p5o=
X-Proofpoint-ORIG-GUID: 4U-kYK_a0_MWxoSvHZ6DOIl8z_kAfbXV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606230130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_085024_322684_52E4A1C7 
X-CRM114-Status: GOOD (  22.00  )
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

On 6/23/26 2:54 AM, Esteban Urrutia via B4 Relay wrote:
> From: Esteban Urrutia <esteuwu@proton.me>
> 
> Both of these changes allow the framebuffer to show upon boot and let
> the mdss driver take over afterwards.
> Before, none of these actions were possible. Only mdss takeover was
> possible, but screen had to be turned off first.
> 
> OLE configuration may have been a misinterpretation... that's not
> something that's done on the downstream driver.
> 
> Changing disp_cc_mdss_mdp_clk_src from clk_rcg2_shared_ops to
> clk_rcg2_shared_no_init_park_ops fixes this warning as well:

[...]

>  drivers/clk/qcom/dispcc-sm8450.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/qcom/dispcc-sm8450.c b/drivers/clk/qcom/dispcc-sm8450.c
> index 2e91332dd92a..b99d3eb5e195 100644
> --- a/drivers/clk/qcom/dispcc-sm8450.c
> +++ b/drivers/clk/qcom/dispcc-sm8450.c
> @@ -614,7 +614,7 @@ static struct clk_rcg2 disp_cc_mdss_mdp_clk_src = {
>  		.parent_data = disp_cc_parent_data_5,
>  		.num_parents = ARRAY_SIZE(disp_cc_parent_data_5),
>  		.flags = CLK_SET_RATE_PARENT,
> -		.ops = &clk_rcg2_shared_ops,
> +		.ops = &clk_rcg2_shared_no_init_park_ops,
>  	},
>  };
>  
> @@ -1824,8 +1824,8 @@ static int disp_cc_sm8450_probe(struct platform_device *pdev)
>  		disp_cc_pll1.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE];
>  		disp_cc_pll1.clkr.hw.init = &sm8475_disp_cc_pll1_init;
>  
> -		clk_lucid_ole_pll_configure(&disp_cc_pll0, regmap, &sm8475_disp_cc_pll0_config);
> -		clk_lucid_ole_pll_configure(&disp_cc_pll1, regmap, &sm8475_disp_cc_pll1_config);
> +		clk_lucid_evo_pll_configure(&disp_cc_pll0, regmap, &sm8475_disp_cc_pll0_config);
> +		clk_lucid_evo_pll_configure(&disp_cc_pll1, regmap, &sm8475_disp_cc_pll1_config);
>  	} else {
>  		clk_lucid_evo_pll_configure(&disp_cc_pll0, regmap, &disp_cc_pll0_config);
>  		clk_lucid_evo_pll_configure(&disp_cc_pll1, regmap, &disp_cc_pll1_config);

This can also be fixed by migrating to use qcom_cc_driver_data,
which takes a list of alpha PLLs to be configured, and thenthere's
a switch-statement in clk-alpha-pll.c that always assigns the 
correct function

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
