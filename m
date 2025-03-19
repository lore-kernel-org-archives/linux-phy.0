Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E921C35FFA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 10:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZIDib9CRbn3qztzz30XVS/mm21wTONgGEI4ZViFkbg=; b=DohGjkE3n29SjP
	oKQOtNWa1dAbQCNQfrMffaRB5GjyWzDvl6Rh4lpsIdmjV5Kf/MenhOxXqzbKZ9eTxmCElyirYscCo
	rvthxuLl+ZO5AYN+85T1wEJtiOMWKX8FdXf8Jpc/tVCkIJiWcCnKJa+EouDUxvY4hRlWTU8aWlzuO
	33Yasq8Wv3tGO1DI0QlkR0XQS+2TuW8mmfZ6zMvRCq1wPfsBjwzg0PHeiA/PCu2sU8BopbGsKLjZC
	rCho8e4e7TYza22qS4bi2xNncV2VR46EKtRiTk7GEYGDW0oIfM/TNV8f2zlNTDOsmri05eAk1+WjI
	CSypsZdUADFvXP3n9C1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuqlR-00000008g3n-0p67;
	Wed, 19 Mar 2025 10:35:09 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuqlP-00000008g2U-0nAS
	for linux-phy@lists.infradead.org;
	Wed, 19 Mar 2025 10:35:08 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-ac2a9a74d9cso1343812866b.1
        for <linux-phy@lists.infradead.org>; Wed, 19 Mar 2025 03:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742380505; x=1742985305; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SJiELQ7SXzvhmTEHFyv/E/da9nG/EmOnRVtuGWlgjU0=;
        b=CUgV6PTS4vYxMkVsOaprpABQEhwiawxMlYssKbh5OFFZ2X0/Dng+H2BDRvZey0qO7q
         r4xaaCKar2Khk98JSaTpxDQjC9SaTM24qUr1TwAexDqCErWx6AbFaWBW7pFoUF9GPJoY
         VW3u6IQfFTdOt7ywbj+vJn3T7GSgTepxZpUURobcOL269OFLtgwgLnnmhDlWaBt+JTHE
         lfViz640RGDVv8am5jxC2r5W1hD1U0u2YJ/Cr04HRQpRLHF3r4pwc5NeJTsfi37AY7T4
         rZdoNt6QY4yyL/saVR0zniedDtqpml8c4JbbwVyVRH6C4cAm0qmtadJ8l5vbgued++WG
         fuiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742380505; x=1742985305;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SJiELQ7SXzvhmTEHFyv/E/da9nG/EmOnRVtuGWlgjU0=;
        b=IvNerJLbr7sDTSi5vFNe8dUA40f/mvj71woUvmfrUiLLJrS50WJL2CzXTDcfW4M1qy
         wQql2x4GVSZPrpUeKzpmZeYY7yeeLw8ZA/LgAeB7iIMjSItKlyGATIVdnQ56t9/n95e3
         6WOJUdNJSEhCIdRHecL6OYCI/kqjv9I5rG47TVS7codjvjJBZHxydkguqL+uzAT4sruB
         5vlwausOcIg+axekBVNCbPwFlG+/B/nyu3XHtQMo+VTO5KSKEg0RSFOqGkF9sGdpavv5
         93qjyh2ipCX67awjuMxO/8J6nKGLp5lvljEAa5YRPp/CSTobaJq+AAP3vuHQFkf4Dm4C
         EFhA==
X-Forwarded-Encrypted: i=1; AJvYcCW+toE9AT615zo7W43RGHvNycflK3XNF7KRzHZDLSr0TtO3qgw/lWncAnSB3XD346teLHjmnK2TtOs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxyVzYAzF6LCpqk3rzcMvGGsKT52sJRubzENFP5lwUA29v5mJzz
	OIrZaZF1A9WPr8hE5xRmH+fjhZFpdcVuTG7cUQkIL/u2ghP30FlG06NMEbUVaSg=
X-Gm-Gg: ASbGncubHeH71R1iu9fkXLpKPdreNHPBzX4vKWmp0QTuiW9OM8WRVrD0SEHR5bpfnY/
	FzTkX4SM7nV1Ftk+bGdQOt1bmM80v2OvDgILvTdUghT+Xwh6vjqLg16rJ1EJHla7bV3Di70TnHT
	AXOUH4y1AtbioWXFoBu6cCHFf3viSIQzo1vL9QO0Ty8PwoxpvbGa605OxoiRq5OaeTnfyR0qn5M
	oSPaSd0f4Apu/9k+pbWDLzm7GKQYIy+Kipuybr6IxGHPqSTpjtCP4+AEfCLkOEKZ3eIlKqEn9gj
	4yb5O7Les0GDXFDEtYjcxxGgUnTDvZHFC6CZPTP9DWAUWXHmdgHF0DU1gvvHasUjcvs=
X-Google-Smtp-Source: AGHT+IF/qM0/SASBIGdjRrvuMPa5qGcIobujWIpo2w87RLiD6k2szichS0jUQdcbOxhJtXSDIis2vg==
X-Received: by 2002:a17:906:d7cb:b0:abb:9d27:290b with SMTP id a640c23a62f3a-ac3b7adcbb3mr239283966b.9.1742380505236;
        Wed, 19 Mar 2025 03:35:05 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:1274:3124:56cf:f607])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3149cf09dsm971492966b.121.2025.03.19.03.35.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 03:35:04 -0700 (PDT)
Date: Wed, 19 Mar 2025 11:35:00 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	bjorn.andersson@oss.qualcomm.com
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: qcom: phy-qcom-snps-eusb2: Make repeater
 optional
Message-ID: <Z9qd1GJ1418CbaOt@linaro.org>
References: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com>
 <20250318-xps13-fingerprint-v1-1-fbb02d5a34a7@oss.qualcomm.com>
 <6yykvszzbhonc3dkwhva55arsdvp4hv4p2fo2vv6ftwr46httm@wnofgs4jaqaa>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6yykvszzbhonc3dkwhva55arsdvp4hv4p2fo2vv6ftwr46httm@wnofgs4jaqaa>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_033507_230974_E57250C0 
X-CRM114-Status: GOOD (  28.84  )
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

On Wed, Mar 19, 2025 at 12:20:07PM +0200, Dmitry Baryshkov wrote:
> On Tue, Mar 18, 2025 at 10:22:56PM -0500, Bjorn Andersson via B4 Relay wrote:
> > From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> > 
> > In a multiport configuration based on the SNPS eUSB2 PHY it's not
> > necessary that all ports are connected to something.
> > 
> > While this is allowed by the Devicetree binding, the implementation
> > current fails probing for such PHYs, which also prevents the multiport
> > controller from probing.
> > 
> > The lack of repeater does not alter the fact that the PHY is there and
> > attempts at describing only the used PHYs in Devicetree results in
> > failures to initialize the USB controller.
> > 
> > Make the repeater optional, to allow the these PHYs to be described in
> > the DeviceTree and for the associated multiport controller to operate
> > the other ports.
> > 
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 10 +++++++---
> >  1 file changed, 7 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> > index 1484691a41d59a7eaf257ef44300827c668bf7e0..8897d2072ccfcaa5b4a510c17761dcdeed5bad0f 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> > @@ -401,9 +401,13 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
> >  				     "failed to get regulator supplies\n");
> >  
> >  	phy->repeater = devm_of_phy_get_by_index(dev, np, 0);
> > -	if (IS_ERR(phy->repeater))
> > -		return dev_err_probe(dev, PTR_ERR(phy->repeater),
> > -				     "failed to get repeater\n");
> > +	if (IS_ERR(phy->repeater)) {
> > +		if (PTR_ERR(phy->repeater) == -ENODEV)
> > +			phy->repeater = NULL;
> > +		else
> > +			return dev_err_probe(dev, PTR_ERR(phy->repeater),
> > +					     "failed to get repeater\n");
> 
> Can you use devm_of_phy_optional_get() or devm_phy_optional_get()
> instead?
> 

There is such a patch from Ivaylo already [1].

@Ivaylo: Are you planning to re-spin that patch set? Might be even worth
putting that patch first / sending it separately, since Neil pointed out
there that the bindings already have the repeater as non-required.

Thanks,
Stephan

[1]: https://lore.kernel.org/linux-arm-msm/20250223122227.725233-6-ivo.ivanov.ivanov1@gmail.com/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
