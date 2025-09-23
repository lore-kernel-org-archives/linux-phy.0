Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35B85CAC5AA
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Keh59UbwODiv7E9qei43qfIVeLQS5HZIz8mUzxaG6Eg=; b=UFlJiYCm8t2kZO
	K1tj1HbveGxqjkeKHbisCXuGhzZB0EmW0NLhGHUXL3f+roh0PEJKHrrVwfceIIAXN6CaKBEJ7NJQG
	5/dE4sG7wG56O3c7qEGrBUvRAqY1LF4KLABnFY7C+dCl/C1wPvZLpUfIQp6pT7ozVnO05DccUQzK2
	w8ivvKvoSzZfz1zBNSYjdW7H9HbQQG5GoR0HsFDegVN7Z1p0BvvhXRWc1w3aU4R3xwd+nghjwbP+W
	oh41gOy2+p5qbVnMx/wgnLMZuRkpowz/yEXma7AguQlEjt1G+W9bFyV//MO7uyRfT674Teg1TW7ry
	RJhOGNiDQzZSuLiNtyGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0ttI-0000000CFrd-47XL;
	Tue, 23 Sep 2025 03:40:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0ttF-0000000CFrJ-3rC6
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 03:40:31 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MGrJ8T018290
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 03:40:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=44R9e51x+lVSRbLCMDK2omE3
	gm86owMK321JGxNDCZ4=; b=GrcfXbjcft+KDX5rOioBeyIiyuuqRWRb22/4wGGj
	9IDth+Cuqg0IJXK2U9RuJ7WYQipxD1hU9fTwsGjfS/tti1aLTPCLMyRrZpElRf1a
	0gbTgp0bPdnKDcNALDm1Zz4WOT0/1cSx9GRnWtnf8kFxC82JuGqqOB871am5RqoE
	XMJc+zSyoyZOsRuVAhaCJ5HXNSaKJ/706XMvy9ELY88VmQ37lGBtZ+//2fJOWP61
	pnMX+3oFXvWPQnzp/M7qwHAEQOG5uygeAzqloJ54MJpbMxm2Xbyuu0enJSkfxHko
	eIaN591wcQKQrBxCD1hpsnK9WxOY/XjK5krMQVFB9RM+xw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fex3m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 03:40:29 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7e90f268f62so2762436d6.0
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 20:40:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758598828; x=1759203628;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=44R9e51x+lVSRbLCMDK2omE3gm86owMK321JGxNDCZ4=;
        b=ooXsanFMAtXbH40x/i262laACH72LoMXWcN6AiWwWJCApoSZffrypCHEbCbk4hb0fj
         J0C8JiGcvd20O3URGnPuRm84Ywez2F599T4V7EVIQowess7ABdfGvvHSBowcpED3ssqH
         a0hDGt/OpVWodHUmyiTuKgSeAwQRnq2fLvkpFWY6I52OFVEqC6mJfC4TQLycm214xI1y
         yO11/gsGEe1wBJd5DPR7Hc9cKBPVo+NBkq2OLi9DEkyAkmgMThK1vY43UBYs34IlHYJ6
         h+/pgWfHOqSEv7ftL6vSly+31h0PHsuKDVK6UmlHVTjZQF5G6oGDPePeyjVeHLfhnwwa
         kQfA==
X-Forwarded-Encrypted: i=1; AJvYcCXWEn1ZdC/ZfFbtbuRn2jTS+JgR03CsqyiSxADPO5OdcVRaE3uL8L7sZHyt3wsa5addVc39PnR7ipA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyW+s3a4r4hrwmIpEfLPoeACVc6gMW9zfw+DxylQNL4R6nRwhwP
	DDToLwzE/qbo9DmaPPqKp4KpVYcCzN+HdlZQydex1zvnrhL/VsZkGbYvVzEBUw8NWeoTC0owc4g
	w1OGNACb8D9uF8awlwcL3obXFyVUZ6SVm/sg590gWB3mzJgyi1PuI9s8hwacqQNONCoEd
X-Gm-Gg: ASbGnctuZRSLJ1UzLne4zwzlXOC0FGySGfxKNzP2Tr6VW/S5aEXo0ipHfVUqUl6ygD+
	A909q25HK/livXYd5FOjfSh0T/mBR9JqkTynLoAJ+VGH7fbv3mqNryzF7evPPoX1z40HX1h02tg
	SH9Xtxa1242A8lhhnZWLJ8QDv9SPP8Q5XlF17fD59mLAqQcQvJ2FVl0t0k2FM4WCpkErNy8lkBd
	1KDXDqUetjpDTX9wpafS5BIwYnBqhFxwDHkDoJ/Bw8zQzC83yIdoq6QNl88W03oEaj3JSWDkQqX
	CN0PLU9HiXMPdIdQDcI6R3mmwRwgLoAmes/e2MDC199XXQsen/LfNL7A5pQxti1UDSG/Cp+1aOD
	RzXbDh0G/qNuCxgHnN+E0cIJtzxskdFraLCjHNz1mRlnjT2h2u2li
X-Received: by 2002:ad4:4eeb:0:b0:765:619f:6412 with SMTP id 6a1803df08f44-7e71b143e45mr16528006d6.63.1758598827652;
        Mon, 22 Sep 2025 20:40:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGe/bIW5msqYyQoTxSQBIOixG0XTzAYGMxafEVRCzlhMmww2jUk1Mmf5rK6JXSKfsef5miSoQ==
X-Received: by 2002:ad4:4eeb:0:b0:765:619f:6412 with SMTP id 6a1803df08f44-7e71b143e45mr16527656d6.63.1758598826878;
        Mon, 22 Sep 2025 20:40:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57b78577636sm2241946e87.80.2025.09.22.20.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 20:40:26 -0700 (PDT)
Date: Tue, 23 Sep 2025 06:40:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI
 PHY compatible
Message-ID: <pvma73qs7msh2qkoaqhfv5v57f3asduuutwf73ceyrxbpsv4sl@fd6fs6yrfjp7>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-3-wesley.cheng@oss.qualcomm.com>
 <7gvp6pshp4eiugk3qodg2ub3azu365loturidbkxqly6nhtgq7@bxnkxeqzarkv>
 <4116b593-d36d-df10-6101-4e3539b8b812@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4116b593-d36d-df10-6101-4e3539b8b812@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Voo1Ksh29YyiWFF-xxwTNr1virjZMAyh
X-Proofpoint-GUID: Voo1Ksh29YyiWFF-xxwTNr1virjZMAyh
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d216ad cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=38CvGR1NfgmP05XK24QA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX+2AD+clxE6yK
 gYBzKktCF8/yAgIIqDtyro4u+nXx8YuMSM2yfWVdNmqpTb2Ad5TkdHvkSli6TSCkMvUpUN0LNBa
 10c5rxvDXWVrNpO6GE69LPvtZFrnnz9xb3tZ9Tl8sNjCtl5DWDVenCyqlypHDxBuPrkr+ReYipb
 PT1vBKIi12eGR8OnIF5IrkkalaccZ3f90sFOiRTDtmsaZp7LqLQydr3uQxYw3IHonhd4kdq6IZ/
 PBVZNrLswhC2krizJmxbyeq1m5WZ//NNPgIFvT4fVQ8NzDKFJEQx2+FJ9e28UHExtRqwoegih8J
 12ifl40ZBm8u7rE7y3dlsfbfzFy6SE18xRFS3HSxNjv+jq64OGB5In4IAIMuhDRIUSS2v+Rpp+S
 aiBaqVVw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_01,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_204029_969116_570CD51F 
X-CRM114-Status: GOOD (  29.75  )
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

On Mon, Sep 22, 2025 at 06:00:04PM -0700, Wesley Cheng wrote:
> 
> 
> On 9/20/2025 8:22 AM, Dmitry Baryshkov wrote:
> > On Fri, Sep 19, 2025 at 08:21:01PM -0700, Wesley Cheng wrote:
> > > The Glymur USB subsystem contains a multiport controller, which utilizes
> > > two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.
> > > 
> > > Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > > ---
> > >   .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml       | 7 ++++++-
> > >   1 file changed, 6 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > > index a1b55168e050..772a727a5462 100644
> > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > > @@ -16,6 +16,7 @@ description:
> > >   properties:
> > >     compatible:
> > >       enum:
> > > +      - qcom,glymur-qmp-usb3-uni-phy
> > >         - qcom,ipq5424-qmp-usb3-phy
> > >         - qcom,ipq6018-qmp-usb3-phy
> > >         - qcom,ipq8074-qmp-usb3-phy
> > > @@ -62,6 +63,8 @@ properties:
> > >     vdda-pll-supply: true
> > > +  refgen-supply: true
> > 
> > You've added it, but it's not referenced as required. Why is it so?
> > 
> 
> Hi Dmitry,
> 
> The refgen clock isn't always required on each and every platform unlike the
> .9v and 1.2v rail/supply, which directly power the QMP PHY.  It only really
> depends on how the refclk/CXO network is built for that particular chipset.
> The refgen ensures that we're properly voting for the supply that is
> powering our CXO buffer.

So, it should be marked as required for those SoCs that use it and set
to false for the SoCs that don't.

> 
> > > +
> > >     "#clock-cells":
> > >       const: 0
> > > @@ -139,6 +142,7 @@ allOf:
> > >           compatible:
> > >             contains:
> > >               enum:
> > > +              - qcom,glymur-qmp-usb3-uni-phy
> > >                 - qcom,sdm845-qmp-usb3-uni-phy
> > >       then:
> > >         properties:
> > > @@ -147,7 +151,7 @@ allOf:
> > >           clock-names:
> > >             items:
> > >               - const: aux
> > > -            - const: cfg_ahb
> > > +            - enum: [cfg_ahb, clkref]
> > 
> > Why is it being placed here? Please comment in the commit message.
> > 
> 
> Main reason if to avoid having to define another IF/THEN block, but I can do
> that as well if using enum here is not preferred.

Is it some new clock that hasn't been used on the previous platforms? Is
it actually supplying the PHY rather than the controller (note the
CLKREF clocks on SM8550 / SM8650.

> 
> Thanks
> Wesley Cheng
> 
> > >               - const: ref
> > >               - const: com_aux
> > >               - const: pipe
> > > @@ -157,6 +161,7 @@ allOf:
> > >           compatible:
> > >             contains:
> > >               enum:
> > > +              - qcom,glymur-qmp-usb3-uni-phy
> > >                 - qcom,sa8775p-qmp-usb3-uni-phy
> > >                 - qcom,sc8180x-qmp-usb3-uni-phy
> > >                 - qcom,sc8280xp-qmp-usb3-uni-phy
> > > 
> > > -- 
> > > linux-phy mailing list
> > > linux-phy@lists.infradead.org
> > > https://lists.infradead.org/mailman/listinfo/linux-phy
> > 
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
