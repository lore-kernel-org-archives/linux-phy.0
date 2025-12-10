Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E940D3B9BA
	for <linux-phy@archiver.kernel.org>; Wed, 10 Dec 2025 01:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EoyreGDjrf7W8WE//nxBtN/USOPGI+JmcQG5KMfHjSU=; b=zdX5WlbjSg3udX
	s/AO/z8c4HpCSJIF6/Wc2OJ4m5ljk6zfhRqEVSPTJ3R/ln1U/H1uF7hO82Kh/QSs7IbP0ETxA2Jhk
	1b4lurKyId2QCM279PX3HUtNaigKHkTqQ8ceSBJovCMynT6z9iVjH+wLfxuDFgeyhwQIdvWFqnOpJ
	MONd6YFQ8Lzi4xfYMZI8UqpO5iTHf8CWXAUoMCiq0TICXtZzMwCpQ4rIKFImk4eskZyVF9a2EfTC+
	m3UuSxnP8mizcoHnlYaLoo68+k3WLl5Jon+wkbTNwVdeWCEhKCoA10sJA30P431IHr4NkmfDGQ9LR
	f4kp7P1csOp46ZuQJREw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT9MS-0000000EyuX-175E;
	Wed, 10 Dec 2025 01:51:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT9MQ-0000000Eyu4-0sb1
	for linux-phy@lists.infradead.org;
	Wed, 10 Dec 2025 01:51:23 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA0O4Hr507739
	for <linux-phy@lists.infradead.org>; Wed, 10 Dec 2025 01:51:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BN6Y3dRzDAB252tWRqYve+DU
	r56IWk9EkE0pgVLLGis=; b=aMFCwmN80io33E3/NmsQd0JF+gqa0aGe7UDu8wDZ
	SBQeLPhUVcysxYIEatZIcVjQ/eIWRdeNuGVs1f1OaYvMxezsn+r+i61Z2im3fE2u
	soMT5iFr4BfmBRSC9pUDq2YfmDYeUf0NJlDLNx2QZtV0JRghFLXy3idYJ3eTiqyt
	Xb0jaHVep9Fri/tlnCO9Q1FaGKN38Ra404HrbzHGn6OX7Rim69PNQhwfESxoSDgm
	wAsSpu14lDgK3X6Xknf7Cq1Bnfhqa054sanAhZPbnwXqGWIpK0aNukNcUBF9xjWQ
	gK2NlQNa6FuwuKjVUNgSt5gWGzZEGRMGOG7FtW1/cmanCA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axp4vsxm3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Dec 2025 01:51:20 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4edaf9e48ecso163148311cf.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 17:51:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765331479; x=1765936279; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BN6Y3dRzDAB252tWRqYve+DUr56IWk9EkE0pgVLLGis=;
        b=Z5nb5XVARSGn0Sr3IgDsruKN7XgN89xJExCvAtbef6nOFZEB9RbAbZnr4VJocLU+9M
         M//ibdVDTPP5ij0/jkBNICzv0IW912edjFTos/Km4rJ+NTUlABD5F9ytbRLG48YIjtrd
         KPFWKP2C/ou6HWtEifuYhQO0COeA2IvMnaobXJkhUOmuG6PjhLIInna9erw2cKVVbAWt
         +HmACGxf+aCdBr2RqUiCG48Bbjnnkgx6YOSfw1f0hujNmQn5++CarqLncXQyjuSd+zSa
         O1/8Dp33zbV9TmRvjK/IuLWb7p4aUpc6UxAmDzam67TwuovxTzA1i0E5JzB95ep00lqT
         CMbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765331479; x=1765936279;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BN6Y3dRzDAB252tWRqYve+DUr56IWk9EkE0pgVLLGis=;
        b=ZjLjaRNMB8R/XIBNBgiaPCdGzHWCBaX0w2KnO6x4zYubj0R3QbjR2TPC7mfE1K09rW
         Qe6t+tJqkN9ZIBdWliXG4GfgQOw0vesE+xZbF5bwpZuqCHYu+/3Bj4TGrkjURnkT0/ui
         sU3OkXYGojWdJ2WcOkcGM0Y9B8AForMolLYVQwagbvJRK8lCJM5SSfHftM1ViSP3VI3C
         iTddYvMa1UtuAx5hZ2c6QuRlaiJhx5vRKrLlRUwMiXNTgqoGb2dYODL1MwCtivaTkl2c
         /UzbmPGHfgIqvkTLEOolf72+mFSuIjQYWGzOhc6PjH8CSZYeIeiYRq5tdTtgw9JBv/3U
         DN7w==
X-Forwarded-Encrypted: i=1; AJvYcCVnbiOk+adwtqssc0qQyL7mYgV5/Ahv2bF30qNdfkRaFx1rqma/vWAd1W7RNt9OfqLZobxWiUWk8fo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDeitTQVoF8mPdkeqO7wZWKpKIOdqVfTaxiNohyVryY2/gzfK0
	+dwjK7HWK8JsG19bmDlo6UUztKCr3NWPV+RqSfvtRCN3NSLOiSqwMS1oVXgk9yr1U+RlCObMnhd
	0TVXeObRxfJ9XogfFKhhoYqZIslcyeSc0NnQHlcrRSnTBoVWxJ6G8o3U8wydy7V/CJJYc
X-Gm-Gg: ASbGncsL7IpVigbyXf6W7DoTRy4uUmp2HxYnQ4KjUouqh7dm7SZISsPW/Q6vlRj62Uf
	2nRUfS7e625WP5hmQFCVYrsJqJPEN8NhJxKG1Ke4fHIAOUk7KsbU3BcjgmYoCNlUrSrdIHioMaj
	6UYp4f4LhMrCCujqG19MndgHCTN0kT/v7MOxNjUv/+1ZPEcKrwwlnzQou3qbd5gSKJaNTbGiM7f
	H6eEvx/W0GyDQwhrwNeq2XU3VQlSFfRni4WvWDjHQ5EFt6RAcLRwRRTogxZTMOwYqyjGVBRBDd4
	t8Oo89PWInQEFqkgwnCOT9ZjepOsKzl09rNjWMzQCqGwW0YjeugEtPferXw8PXSEy7bbRPe2q2P
	hedk57MvvwvfYDWdi5ThHKt8+OBdnBln3rliJOxsj9YIq7wXalPsIXUm+kI1FlOsAkI8E0ezVKd
	SVOxKDzGwF8xslZpZLX/R9BYE=
X-Received: by 2002:ac8:5810:0:b0:4ee:5aa:9c28 with SMTP id d75a77b69052e-4f1b1ac9555mr11516571cf.70.1765331479400;
        Tue, 09 Dec 2025 17:51:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGKDZfAbJZWDgNFtvZu50UhNEANWHUxZjw1ARuiOSUMkTBFY/KeHIBYtgGNZZYv/UykqneyFA==
X-Received: by 2002:ac8:5810:0:b0:4ee:5aa:9c28 with SMTP id d75a77b69052e-4f1b1ac9555mr11516331cf.70.1765331478854;
        Tue, 09 Dec 2025 17:51:18 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b24907sm5807764e87.37.2025.12.09.17.51.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 17:51:17 -0800 (PST)
Date: Wed, 10 Dec 2025 03:51:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 5/5] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 Kaanapali
Message-ID: <mudq7gmqs62osuarvflmemt2a2gnuloywabtr4w5oyyddp4b7v@eynaurtfrnyt>
References: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
 <20251124-kaanapali-pcie-phy-v4-5-d04ee9cca83b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251124-kaanapali-pcie-phy-v4-5-d04ee9cca83b@oss.qualcomm.com>
X-Proofpoint-GUID: ChFB2EbXbgZSRlYrJjd_HRnfklTWkDQP
X-Proofpoint-ORIG-GUID: ChFB2EbXbgZSRlYrJjd_HRnfklTWkDQP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDAxNCBTYWx0ZWRfX0KusuW7BwSCo
 T8QTbX4vHZqOhrD7ZqnN82b1HkRT4IknKRxTjh5b12oQo68LTqHEbyJOeJFDWeBRqukK/NP20d/
 N06t4vRSUZbMfBf7DEqxq890E6cuFJlVo0E9kycFSbLA0e4/X408oAarMmmFoSWvwou+b90VCsJ
 Qcrm733V5/oh0Hh/QUYEsZRdLD4rcw8d+k/s0nkbbgr0fuEGdFhb5+EBF4Nw6is83Za8hNqZoR5
 M6KSLc4RYgUdY9c7bYDvmfSjkbWgT10unDRoDwY8lFdtDss43Ak5lJkh/dbMmVc8WS5ia5yT9E/
 rsJxU+1EnW2NuZCaVmN/TgiT/ZCVPqWut97S7BieI0Axzn5FbxzMSPXGKLbudaCqF4/8X6lTkI4
 n9xPFHZ58Is+83/RzN1grZjZ+N7ZHA==
X-Authority-Analysis: v=2.4 cv=IoYTsb/g c=1 sm=1 tr=0 ts=6938d218 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=prjBgqm01r1IDouUtvIA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512100014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_175122_266509_02CE60BC 
X-CRM114-Status: GOOD (  17.57  )
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

On Mon, Nov 24, 2025 at 02:24:38AM -0800, Qiang Yu wrote:
> Add QMP PCIe PHY support for the Kaanapali platform.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
>  1 file changed, 194 insertions(+)
> 
> @@ -3363,6 +3516,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
>  	.ln_shrd	= 0x8000,
>  };
>  
> +static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_0 = {

Is it really 8.0 or 8.20?

> +	.serdes		= 0x1000,
> +	.pcs		= 0x1400,
> +	.pcs_misc	= 0x1800,
> +	.tx		= 0x0000,
> +	.rx		= 0x0200,
> +	.tx2		= 0x0800,
> +	.rx2		= 0x0a00,
> +};
> +
>  static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
>  	.serdes     = 0x8000,
>  	.pcs        = 0x9000,
> @@ -4425,6 +4588,34 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
>  	.phy_status             = PHYSTATUS_4_20,
>  };
>  
> +static const struct qmp_phy_cfg qmp_v8_gen3x2_pciephy_cfg = {
> +	.lanes = 2,
> +
> +	.offsets		= &qmp_pcie_offsets_v8_0,
> +
> +	.tbls = {
> +		.serdes			= kaanapali_qmp_gen3x2_pcie_serdes_tbl,
> +		.serdes_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_serdes_tbl),
> +		.tx			= kaanapali_qmp_gen3x2_pcie_tx_tbl,
> +		.tx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_tx_tbl),
> +		.rx			= kaanapali_qmp_gen3x2_pcie_rx_tbl,
> +		.rx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_rx_tbl),
> +		.pcs			= kaanapali_qmp_gen3x2_pcie_pcs_tbl,
> +		.pcs_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_tbl),
> +		.pcs_misc		= kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl,
> +		.pcs_misc_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl),
> +	},
> +
> +	.reset_list		= sdm845_pciephy_reset_l,
> +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= pciephy_v8_regs_layout,
> +
> +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> +	.phy_status		= PHYSTATUS_4_20,
> +};
> +
>  static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
>  	.lanes = 4,
>  
> @@ -5209,6 +5400,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy",
>  		.data = &ipq9574_gen3x2_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,kaanapali-qmp-gen3x2-pcie-phy",
> +		.data = &qmp_v8_gen3x2_pciephy_cfg,
>  	}, {
>  		.compatible = "qcom,msm8998-qmp-pcie-phy",
>  		.data = &msm8998_pciephy_cfg,
> 
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
