Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ED82D68BC9
	for <linux-phy@archiver.kernel.org>; Thu, 18 Dec 2025 01:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUvVG0geqHn9fXsGhBqh9XTe93v0qM4SXo3Hd4ZnARo=; b=XidbPuAk7DKUa+
	NKUsL6lXsSdyqTsxjRLD2+qiP8HIR/FaO0gtINQogOX1sWPgux5uN1Ezu+UboowVktnpmmO56mbqx
	LFzdvlkH9i5r4r9EJx+6zyYY5l3ZFV5a59Mk5wefjc/G1UjIQLOq0lYnC99E5Xypo62u+PMIKpBzx
	V+sARbXj12//xInFYI+HrW0HDhNP09p6MGoGk5x8Kfw7d/gEj94+pR+/NE+TfH07duZBzAfUDv26c
	HQEikSXhnqWpTQ7pgNtXzSObQzdgt0bgI6Ygmfa//SgXFE5J2N419glcVmNvPRUWuYS4FQXsLrGjE
	DiKIwntsJ8jEwDN+1yJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW2mp-00000007eXI-15Ha;
	Thu, 18 Dec 2025 01:26:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW2mm-00000007eWU-3cg0
	for linux-phy@lists.infradead.org;
	Thu, 18 Dec 2025 01:26:34 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHMScwR296560
	for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 01:26:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MnXa84jTt2Zg4U507u+SENlE
	SdZTxBSMOulLGsCR7Gk=; b=n2NJexC6IPsh5tY4Fi38Bf61cPtRWBGA/3vQM/YB
	vq2Qe+Am7eSJGIAzPWgF+88jc/FEY9oXiWUsfpOKE8r42EL69ZmUJTYX+arV9/xE
	hcToXiwbxQ1plLo8ZLTKSLWgxnXTDOrt/y7GHYYPy89oTW1TjA2EP3mgSqZSpela
	/8ZiS3F/6R5mxfdwNxdk3BBLCyKGQQTDlH7dH0eNBE7aF2tefCD6BjDz+UBaFQ2B
	dpr0K6SyYqimAwRGABz8wPnS/pxruZhz67spZpiwjJJjKGfuaIb7HxdtUiS+7GJF
	r1tJt0X1pvKRI0CLlE0YW4kzAAWZ6YF60NgtQd8MX9Nm+w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b45bhgbja-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 01:26:31 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee0488e746so2495631cf.0
        for <linux-phy@lists.infradead.org>; Wed, 17 Dec 2025 17:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766021190; x=1766625990; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MnXa84jTt2Zg4U507u+SENlESdZTxBSMOulLGsCR7Gk=;
        b=afpUdzOmkrWBBvxkiwDg8gYskkvd2lERLF0qbYnpgdbhIMZ1Km4owZ0JI3dkZyv6eB
         qRxvRax9Sgybm6Z+wnpAJmaMMdHNozMCqQYg/CxVljSzBUXbon8AY8pR2QROsnJ296x4
         9I4bBP2iuFk9jCi9z4HjrkQPm0z54wDzm5okHksklG5+y9HKdMAwoIn2akEIG2P8H4WW
         krEG38S6WAbs9ft7roqlhH1HnJNITeUI79T928WXIf35XS10YOKGWqxUbu6Fiioqm/G5
         TEe1lEvcKld4xU/9gER5UVxC9SYQnage+FGPZRsV7IzAftC43cPD+NWWQnTQZMY/vfMB
         C+Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766021190; x=1766625990;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MnXa84jTt2Zg4U507u+SENlESdZTxBSMOulLGsCR7Gk=;
        b=P1gjSfZvFX2KIzqHDmK00JGoUeHJ3Ohbnx0o0+XIdKOSDwZXEoqEx/wH1+M6s9Wflp
         I+d8HczGCcKoGpmEHtsLh3ry+vuH0oFTothjFT86YLI+1jts1P6vplUQ/iylLAr7oYQm
         zmxukhT7Z2dNROAoWqc0vzg52b6Q400RFvURXe568vnZFOWy+uCdCUsHCbGo7aAXAB9B
         ESTZHIrCt+MrWvDLuBdD1odVDBYFylXgysZEQ6o1P24lCNFyLVr17jEvtPCWwsuRL8WN
         zhQxtSl/dA6SiyNCWreflk1G4Tf9PNBCZgdIQrfoLkyAPNdr745gz237FyICUSZ/Gpb/
         CSGg==
X-Forwarded-Encrypted: i=1; AJvYcCU+PYeRr+XNVoWDQ5VpJ9AZvjzIJWWOw50ejfDnoaW74qwMUFX+w8ZMousRriY70b5yL4iggGbnO7g=@lists.infradead.org
X-Gm-Message-State: AOJu0YwmQhKu4vDVkUGq5T1UNm3fowEQaEkuEG96lHsJXWy08u1qYpXc
	+F8+4swmsaUvblnx9lfDW7TrOLFeV337hOBY7Sqof78P9QTtq5H1t/36GjHQQfk2q1x9kZovZdy
	Gkt0t/z+MhWH8P7rZ5usT+llxaCsXN9cPkLZkTUtDfEOpLDCTfMqTjPjkSPGB7EgxtEKQ
X-Gm-Gg: AY/fxX5dBVFYuQ4CgrMfawvtMwT0q+xYqvKUR5I2Kf58pvVChbnEW8wf3tgHAo6NS9F
	tkZE0MqJYdgy2BYikC7pACgfSTJwszKjuoSb8/dH8ciZs9WWWU5WN7BBSOFaWqMMYYUWSDakcVm
	SrprBt8x4xtJnew9o9emEU6KEF3UMzujSCcBJULJuPdk+TDnadHDVO4X9L9jreA5N/eEodHF24q
	jnYMeuIpLo5ubiJajH79NfYu8oik050qfBP59/58+uNGb7nsGtJRiyKwzdpuGEOdIQP6F0C6tPG
	+DS5UmEx26mLYNaC1riTIhwUufgzjMy/iucE3hwRAGmVRaNiKd3VZrb3lgcvUddHYgevb264aHv
	GLKPgfsrP5uCTsMQ6bRgq7uwOW8pY3F9/9Gk3ZOT6V9e9H1hgHWtrQjBe3q+G8XaubSKJMq+tnS
	IiM2xQiGdeC8YH4iVTxKTVv9k=
X-Received: by 2002:a05:622a:14e:b0:4f1:8bfd:bdc2 with SMTP id d75a77b69052e-4f35f4839ccmr20746741cf.41.1766021190497;
        Wed, 17 Dec 2025 17:26:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCW3H21K5I0JCBEg3yBCe/TeLTCfyD5Am91GbeWs8gM8XH+pix9Q9Xl9OBdooY8DJasWeZGw==
X-Received: by 2002:a05:622a:14e:b0:4f1:8bfd:bdc2 with SMTP id d75a77b69052e-4f35f4839ccmr20746581cf.41.1766021190044;
        Wed, 17 Dec 2025 17:26:30 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a132d3d41sm416477e87.30.2025.12.17.17.26.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 17:26:29 -0800 (PST)
Date: Thu, 18 Dec 2025 03:26:26 +0200
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
Message-ID: <ulsst7k4meqq5psv577pqapnsrehvvpk3oijp5usxtxdwoxunb@6mxjmpigkwk7>
References: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
 <20251124-kaanapali-pcie-phy-v4-5-d04ee9cca83b@oss.qualcomm.com>
 <mudq7gmqs62osuarvflmemt2a2gnuloywabtr4w5oyyddp4b7v@eynaurtfrnyt>
 <aUDywpWf+gpEH4Uw@hu-qianyu-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aUDywpWf+gpEH4Uw@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-GUID: nPDaN5e9n8XDJ9i2YFXHXyCMpx0uW86Q
X-Proofpoint-ORIG-GUID: nPDaN5e9n8XDJ9i2YFXHXyCMpx0uW86Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDAwOSBTYWx0ZWRfX/kAZp0Y8PUPr
 8CWvPXxu1K9EF6igNYLpghHGdKeSSC9wrPAtNW78oDVjWVAQOMv9hu5E6Pywm1MT9NLaepkbhUx
 R8WTX4ls5k+inTT7XMejLmtQ1+b0yKvt6RWfaD4D0Dz8Pf2SOeoR/Ao7zeLLMXqVHMTQ5xQRwmy
 P28RG3N/f6OuzsZf6XwNqfL5tJ5CERLPY8a0jSiWctg4gqT2muqAyD1NM5s8RnC04TUr3Oq9utg
 Iocu6r2DhPfKixQhrmdilmJXhb9YaPTLiqmjP+lwtQKuRSQzQ6NWqdp3P1Pd3YotUZ/Yf79H+1P
 7xS8fs1F1VkFEP0sRN3gfrIgD66aKD6uVmpRY5n17+1ydL0F5LnGObFaA75o/AX2LwMcqNBwYua
 G1jkvL7FGasm3hKb0V7LYNJwg5dj1A==
X-Authority-Analysis: v=2.4 cv=SZr6t/Ru c=1 sm=1 tr=0 ts=69435847 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=kO2wSEi4wa1dqs6BIsEA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512180009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_172633_028292_3468A6E9 
X-CRM114-Status: GOOD (  22.25  )
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

On Mon, Dec 15, 2025 at 09:48:50PM -0800, Qiang Yu wrote:
> On Wed, Dec 10, 2025 at 03:51:15AM +0200, Dmitry Baryshkov wrote:
> > On Mon, Nov 24, 2025 at 02:24:38AM -0800, Qiang Yu wrote:
> > > Add QMP PCIe PHY support for the Kaanapali platform.
> > > 
> > > Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> > > Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> > > Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
> > >  1 file changed, 194 insertions(+)
> > > 
> > > @@ -3363,6 +3516,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
> > >  	.ln_shrd	= 0x8000,
> > >  };
> > >  
> > > +static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_0 = {
> > 
> > Is it really 8.0 or 8.20?
> 
> I double confirmed the version, it is really 8.0.

This is really strange. The SERDES offset not equal to 0, te
PHYSTATUS_4_20 bit instead of PHYSTATUS -- all of that has always been a
characteristic of N.20 PHYs.

> 
> - Qiang Yu
> > 
> > > +	.serdes		= 0x1000,
> > > +	.pcs		= 0x1400,
> > > +	.pcs_misc	= 0x1800,
> > > +	.tx		= 0x0000,
> > > +	.rx		= 0x0200,
> > > +	.tx2		= 0x0800,
> > > +	.rx2		= 0x0a00,
> > > +};
> > > +
> > >  static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
> > >  	.serdes     = 0x8000,
> > >  	.pcs        = 0x9000,
> > > @@ -4425,6 +4588,34 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
> > >  	.phy_status             = PHYSTATUS_4_20,
> > >  };
> > >  
> > > +static const struct qmp_phy_cfg qmp_v8_gen3x2_pciephy_cfg = {
> > > +	.lanes = 2,
> > > +
> > > +	.offsets		= &qmp_pcie_offsets_v8_0,
> > > +
> > > +	.tbls = {
> > > +		.serdes			= kaanapali_qmp_gen3x2_pcie_serdes_tbl,
> > > +		.serdes_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_serdes_tbl),
> > > +		.tx			= kaanapali_qmp_gen3x2_pcie_tx_tbl,
> > > +		.tx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_tx_tbl),
> > > +		.rx			= kaanapali_qmp_gen3x2_pcie_rx_tbl,
> > > +		.rx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_rx_tbl),
> > > +		.pcs			= kaanapali_qmp_gen3x2_pcie_pcs_tbl,
> > > +		.pcs_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_tbl),
> > > +		.pcs_misc		= kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl,
> > > +		.pcs_misc_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl),
> > > +	},
> > > +
> > > +	.reset_list		= sdm845_pciephy_reset_l,
> > > +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> > > +	.vreg_list		= qmp_phy_vreg_l,
> > > +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> > > +	.regs			= pciephy_v8_regs_layout,
> > > +
> > > +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> > > +	.phy_status		= PHYSTATUS_4_20,
> > > +};
> > > +
> > >  static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
> > >  	.lanes = 4,
> > >  
> > > @@ -5209,6 +5400,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
> > >  	}, {
> > >  		.compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy",
> > >  		.data = &ipq9574_gen3x2_pciephy_cfg,
> > > +	}, {
> > > +		.compatible = "qcom,kaanapali-qmp-gen3x2-pcie-phy",
> > > +		.data = &qmp_v8_gen3x2_pciephy_cfg,
> > >  	}, {
> > >  		.compatible = "qcom,msm8998-qmp-pcie-phy",
> > >  		.data = &msm8998_pciephy_cfg,
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > > 
> > > -- 
> > > linux-phy mailing list
> > > linux-phy@lists.infradead.org
> > > https://lists.infradead.org/mailman/listinfo/linux-phy
> > 
> > -- 
> > With best wishes
> > Dmitry
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
