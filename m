Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B372FEC119
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 21:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mioSOQUPxga599TWsrNyvplL+40alDIn9k5xOWQuDVk=; b=StzMEDu24J9az1
	wtJzQ6IF4TKuiB7y+Ee5xtnMjwzj2ob/dhKDwp/Sw2f/PTZ6YG9hVXPwpAYBxkfyfZnzioWvBD+rs
	sCsT6EkhR9H4ubm5BdiyheqLSQ7uoFi4hkpfrRa1YKMxx8ll7AEwF1syBnbcPdZ7XdTReM7oHwjdY
	lM53j8aEeRsRVu56oMJvP8JYOQlmt9pflMyr1Y23wzhmt6swoZyUIFIOhKxQlkGUfHpWgWMPgxsiU
	GeTTKcR5fMg+/LZlR+b+M9utN3JFAr7fZh5v9o91tTE+nyn4NuA1YcMF3vqbnLfp8J+B/5egLaXt3
	EmHwabvozKLQ129lXawQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w59Di-00000002Fo2-3xqw;
	Tue, 24 Mar 2026 21:23:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w59Dg-00000002FnT-2E43
	for linux-phy@lists.infradead.org;
	Tue, 24 Mar 2026 21:23:25 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62OJCs9a104395
	for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 21:23:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1uYUkNycc1pWaJFwxUlYF9h0
	XG3GMiPmjoHxa/L+c4s=; b=an8mFH8L6MaAq8RbRnDt9nxEsrCNEaceKSMGPHkh
	1apxYF+3QwB9xV21Qjc82W8SjzcueranvaqlCxebVPo1qgeAlV+mu2xkNViVTWMk
	9JcSqfqiUVd4fFeokslVy0HA0mIaezOrVUYZl6F4Mdz+4P90WlRYMHH6sFza4Bhz
	ItHCBxjnJUC+aBqxHBEvunOeRpKdOR0Wq7ICaJQM6RFF07v04MlnmAFnZXUfnwiy
	LACJhyWqHu8dEnhzjh/AFS5yXn+tjuUZwMOSXjzOXeWH1ZOlzCyx11+k5FTqEY9i
	Zd2Lj6q40KAwyBtN++hNvn4lTjll/0SASiS5j/kVo6f79w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d3rf0jhxp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 21:23:23 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50925fed647so111422921cf.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 14:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774387402; x=1774992202; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1uYUkNycc1pWaJFwxUlYF9h0XG3GMiPmjoHxa/L+c4s=;
        b=X4sBOp7OWk9kXdCdk58jIFY6yLQ4OuRcD5g8mi+x7AubixrY3SLuB+jXKl9M/ruNTN
         CBguvmLjxSCQZ2TUSUw2Jym6DWemoqSZPgdlpJc9iz2Wrz0pdzuFUs17zwz1dNWgXlMO
         PMjmlcqIkYR5gZyrRcSoLqhbvl+xH1KXZ67e0v6QL/d4sWCS1fPnPNUeZc3njW6GwSrx
         AaHZD0wT+ERI9jPKkzA0leM/r/j+0/ZbNXcPDTfdxaeGIDzvOA0XmeNLO55Shyf8ayo5
         YsE8vEzq/Q8z8wWtk7xoxJwhxvXtiN04agAgOKdmkeNqbiecaRkWDkBxx4MoFhUotr8L
         gu/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774387402; x=1774992202;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1uYUkNycc1pWaJFwxUlYF9h0XG3GMiPmjoHxa/L+c4s=;
        b=hwaUCMzJ+FJYvlzPE4qXHZ3FZ3BwNeYs4RQSoMvd1cBdGj5lQDlzXAAZIXLYNAvNdj
         +r7XlXI4SNdpqvWeq97DrxpZb1vjk9rPcVHbhiYUbQPwHixatA/164lsdZDigBuRC0ml
         Ky9tNaVp95h+LKyreMUxqRusl5uD/HaR20I1CYm4khVhkjeY7OpIhpiKS7OffoLC8JZ4
         GXy22ixH3C/NIhS7lv5ZfI/CyXfyolUVBC/cVklcBdGT4PgNOSLO2m7zWRNIGmCtgKqC
         sh2gJVNOqEhjOnt0zsaniu6b6nGJtkgjBfX5XUetHLspFJ5+mULsApQy1mT4IHuyJjTn
         n+HQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhVkN9LuZEwH4QX8pEM7gFHGO86bIeRKHZ0pHh/Zeo3+hcDJKfgwcLPNESij2eJu+lRzElc5qRaEA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3uwfv0YOWlRW7DKWS7utFdj45j6HgG4l/RYL+Ug4HptICo112
	EObSwLiW3K1Zitt9KYp93zd8Go+FZMWfJDwRjk25bhzb+tq7pvkI7ALDa3M7KZ5dvOb+kLXq0ue
	pYP2ntqtjkG8mMQ5cCOEd74d534YVO6OAmlYk5ywpoxHC4pHDdDoZPxUifJow70FWioB1nNffmS
	d6
X-Gm-Gg: ATEYQzw7PofQh82tz0Iq/iXRorI0IzYCAqOpkLmh0+qbN4dRgLhUmyPLKeAJdpNezlZ
	ON6fUBWw5B6kxebFko85EUR6av5XTqjaHsGmGvOG3qXHFlCYsNohV/4UzdO35ihsE88L1m7BcKc
	b1fRAgokOP1TP7zyQ2dBfMUl3hrhBRlHv13iTj68HB/eYB1E6qIRPVPyLA/cNrXPWHuoXuL+PGp
	pwlNFAfXbwxUQe/0c/6kMKBEbmEg07tor1L4FJKan8c2My3ToVQQb+G3fCIXKjOmybdu+xXN2az
	PPdMikHtc662Bgs4/vvX4SAsnK9aoYKJvW+CpahISpNlxgBbWuX48b7VoEXSM1PHHjzC7KrACOE
	7g8PheM/wEZuQE6ahMdwoYi9O87QlVHSwAhwU307MPdftJ+bAZYQWAiWaSzssBl+IkG0PSAljIB
	BtUCHBUUOVXT1wKwNFi9CW4r/vhNJk17t47vg=
X-Received: by 2002:a05:622a:19a9:b0:509:50d:b9c8 with SMTP id d75a77b69052e-50b80cd0762mr19250591cf.1.1774387402294;
        Tue, 24 Mar 2026 14:23:22 -0700 (PDT)
X-Received: by 2002:a05:622a:19a9:b0:509:50d:b9c8 with SMTP id d75a77b69052e-50b80cd0762mr19250201cf.1.1774387401816;
        Tue, 24 Mar 2026 14:23:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38bf9ae8570sm32654221fa.42.2026.03.24.14.23.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 14:23:20 -0700 (PDT)
Date: Tue, 24 Mar 2026 23:23:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] phy: qcom: qmp-pcie: Add Gen5 8-lanes mode for
 Glymur
Message-ID: <x3ts7to7c4qnorloahe7cgup3uekn4wolmmorqa3b3bjfslqfn@eijnzdp2ops3>
References: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
 <20260323-glymur_gen5x8_phy_0323-v2-4-ce0fc07f0e52@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260323-glymur_gen5x8_phy_0323-v2-4-ce0fc07f0e52@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI0MDE2NSBTYWx0ZWRfXz56KC2CRbka5
 fEOPSyESAoILTdxyr9XhupXvTbyEpzfekl2p8uQCmGPmCTctgUKNA+TJ+Cdbc2X0q22dWMcLlDC
 v1WBvI3ic+w2cueUc7TvcoDUhvS2McH9d4DLOhSc4NuAsEm7wGUJ1aVfe/iE7NNsEA5QWo0VTa0
 m1w3I3I4iUo4Qqd7Y3qN3xRXcsLGQxgTA87Cb1HR8t1haCPrGHSAdf/PKYJd0n7tTOMsxg+WY/R
 xO4bRRGbcFJNGV62LFR3Hx3FiqgTqk/hp0ZeaUc1pyLaKkARsMI4BNbkY1wEQplHLHTkbkc4R39
 th5FsUWZGe8v701fFAJ2S/OiCTQIlNxdQ8UDliMLf8ahnu86hH87yjNRqI1rzXOxzCnT8yzXwvp
 kmi+Vv2SiSfsJjVoZAfNU4/lGIMeDxlFBqk8ZLn7gy/V2jzAO7stsvK63OOAZZzJaygwLbhyHa0
 gDe7uoXKX3f8omID82A==
X-Authority-Analysis: v=2.4 cv=Ua9ciaSN c=1 sm=1 tr=0 ts=69c300cb cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=8302d4AOEtq-Q5Zcfl0A:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: xcqnEkZTRhv5KaG71bgeha9cZ_sFa7gX
X-Proofpoint-GUID: xcqnEkZTRhv5KaG71bgeha9cZ_sFa7gX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-24_03,2026-03-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0
 spamscore=0 suspectscore=0 clxscore=1015 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603240165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_142324_711555_8BEC30A2 
X-CRM114-Status: GOOD (  19.35  )
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

On Mon, Mar 23, 2026 at 12:15:31AM -0700, Qiang Yu wrote:
> The third PCIe controller on Glymur SoC supports 8-lane operation via
> bifurcation of two PHYs (each requires separate power domian, resets and
> aux clk).
> 
> Add dedicated reset/no_csr reset list ("phy_b", "phy_b_nocsr") and
> clock ("phy_b_aux") required for 8-lane operation. Introduce new
> glymur_qmp_gen5x8_pciephy_cfg configuration to enable PCIe Gen5 x8 mode.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 30 +++++++++++++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
> 
> @@ -4705,6 +4713,23 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
>  	.phy_status		= PHYSTATUS_4_20,
>  };
>  
> +static const struct qmp_phy_cfg glymur_qmp_gen5x8_pciephy_cfg = {
> +	.lanes = 8,
> +
> +	.offsets		= &qmp_pcie_offsets_v8_50,
> +
> +	.reset_list		= glymur_pciephy_reset_l,
> +	.num_resets		= ARRAY_SIZE(glymur_pciephy_reset_l),
> +	.nocsr_reset_list	= glymur_pciephy_nocsr_reset_l,
> +	.num_nocsr_resets	= ARRAY_SIZE(glymur_pciephy_nocsr_reset_l),

Just for my understanding. If it was not the NOCSR case and had to
program the registers, would we have needed to program anything in the
PCIe3B space?

> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +
> +	.regs			= pciephy_v8_50_regs_layout,
> +
> +	.phy_status		= PHYSTATUS_4_20,
> +};
> +
>  static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -5483,6 +5508,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
>  		.data = &glymur_qmp_gen5x4_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,glymur-qmp-gen5x8-pcie-phy",
> +		.data = &glymur_qmp_gen5x8_pciephy_cfg,
>  	}, {
>  		.compatible = "qcom,ipq6018-qmp-pcie-phy",
>  		.data = &ipq6018_pciephy_cfg,
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
