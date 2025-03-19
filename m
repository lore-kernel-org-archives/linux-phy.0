Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDC1BC35FFA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 11:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikJrrA5Y8zrMjQj4Vk126L9os+GdHYZOmDCTKgZESuE=; b=w5qmL1OyCTsCV2
	I173X4KnNjGDQZTV1JDK07ho/YIL1nUxSmk4DXveM94BYHHIY8/XXoASaEhvoUDZuqLCCsv9NdpNA
	5zTkNdyNAo/LAVFGeJnNeVbUdeKCjnzR0isdeEsKDeNGywUDgG9OO1ua9oxZz0GyLXWx49Jfg0/WC
	982vDitJU7zC7BWVz4dbiFWYcr6jtMEUHHV8vdgfkGKtw0ZhSzehy8dcCWK1My+ugYPtLodzMPclP
	Mg//H6B/7tVUWS0woKOg9j8U1JjEKbn4PI2Vl26JnoPC0oDSNSoExhxPT22SJ/eLLP197AE6928Lp
	FIR5mpcRJJ8hHdsXKFeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1turI9-00000008l1T-1ofF;
	Wed, 19 Mar 2025 11:08:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1turGT-00000008kb6-0fyZ
	for linux-phy@lists.infradead.org;
	Wed, 19 Mar 2025 11:07:15 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52J4lwum017317
	for <linux-phy@lists.infradead.org>; Wed, 19 Mar 2025 11:07:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WkINzj//g4AQWdN5I6oKqNP0
	5nghNa/+qfEoInV2+gI=; b=eZniLK5SeHPdTvju6T3aKB2c0c6Syu4fMPc6Dihp
	8/cJYZetO3r43AHF0amnNeTPKbL3lfmbkYsgikWs+ZykfoB30G6Fz8pr8ROku2rd
	hEMPZSJ+CMB6zdwj5RiaxX7OCnVX2iPduLtdBOwpeTQHrPPFFNy0WpLCRweAUcgi
	iWyUX8ZmgRS6cg3oJ9aCxHiRPSWIZ3pA4FZ3nV+mLhNKuABQBeTlWIa/RUPWLPeW
	xRTXtqF5lDsm4WTOcLBS3vQI8JmKcZzCm49UDaDSOaRjHGfNlgc1AetqqCflMC9u
	g1nKyZodPkNI/b69c2pnkT3kqrq5BPNKS/eWUFrGTbTzLA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1sy3cgh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 19 Mar 2025 11:07:11 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c3b6450ed8so1134794785a.3
        for <linux-phy@lists.infradead.org>; Wed, 19 Mar 2025 04:07:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742382431; x=1742987231;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WkINzj//g4AQWdN5I6oKqNP05nghNa/+qfEoInV2+gI=;
        b=cPjfTbpDksACYDG7myIDdqAE2UJH7iYPXAgOF/qIT6dRXtfLkQFsxf7eqOZKwyGFtA
         fx9M7TnLpK1WzLOMnhqYWu9C72VN1qyLdyzPRDCDy8lyhvHnkKTro58nCD7e+wzdft6W
         Tz5vzOPBsK3Tl5KyaFg+/8SLxv1AyNZZ54zm71+BH1kj1QPBacFmAzyKnuEJ2mQi3KEI
         INWkzmbUWQgec90O+TJMkn/j250ZWMmf7wJukZPpEkOiAY/5lSPp+nrQ8oT1FeT24/48
         EoTq94ALbXrEZ/XLVOwtnGaO3WggXQiOPBnf94z7+wBfTr2tR9X7jG6MGXP5+yi/J2NU
         tuKw==
X-Forwarded-Encrypted: i=1; AJvYcCWu/OsEETzIqxYpAxSr7mwtcX1/ihD91xJcWiXIlxvA+M9NP0JBn+hwAUEHae+q1b0Rd7ezB+lKOds=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNJ7HnY+6/z7qPCg39uWYdGCCCMvjLuvHEFASZtecSFQjkzwqW
	isdICkJkf+VxPbLX63Pn9By2xteXctPWfgmFco7m3KOfxtN94/Wb/hu72X85897hr9DTX7DmN0q
	f9u+J5XiptRKCi31e7u5YDBLhwINZ9SHDsWEDjdYSzqY16OVngthaARqiCH7mZqiB
X-Gm-Gg: ASbGncvNc4dmQotj+qO0vi3BW0GFPkouKTbuW5PJSBacOzfgqXrgy+8bH9jw4C/20dP
	FhYDuqtqcS3yB9vO5hXK7X3qw+BbTXYt3vel004JkQZFNI+RaGNz+eh2OH3sPuZ+mWXCxSEPvkw
	/RCBKe2EdcXhnJ4aY8sVbWC4DS/4roWOWix84xYEjIBQTH8694N9q6lirB11E+iuwrLMrcycm9d
	LYPwfaru7xV4Do++70xDQgB2oHnG0XX00DmDNmDAGXsQmmooM0Xabr9XSrCLaKuIynQ8pG1eyh1
	NHVcTrfiEufeHZpnwfCuQGbrYISkCValyGoyaB3LU0QTyCG76/h9zCg8eF9l+Gl4uSADZpOd328
	zMoc=
X-Received: by 2002:a05:620a:198b:b0:7c5:50dd:5071 with SMTP id af79cd13be357-7c5a8391431mr236547985a.22.1742382430955;
        Wed, 19 Mar 2025 04:07:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsG7eg8axClVP5k4HD+jCjL+jQM+Gse5YAXQd3q6Rvpx7WSfCpRzKGGy/Ceh+qmk8FKSjMxA==
X-Received: by 2002:a05:620a:198b:b0:7c5:50dd:5071 with SMTP id af79cd13be357-7c5a8391431mr236544085a.22.1742382430628;
        Wed, 19 Mar 2025 04:07:10 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0ea756sm22581321fa.35.2025.03.19.04.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 04:07:09 -0700 (PDT)
Date: Wed, 19 Mar 2025 13:07:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
        bjorn.andersson@oss.qualcomm.com, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: qcom: phy-qcom-snps-eusb2: Make repeater
 optional
Message-ID: <tbmte6hnuhafextazzyplec5xjuv3q365hqtvwcozhugb2loij@dtwfpyotnew4>
References: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com>
 <20250318-xps13-fingerprint-v1-1-fbb02d5a34a7@oss.qualcomm.com>
 <6yykvszzbhonc3dkwhva55arsdvp4hv4p2fo2vv6ftwr46httm@wnofgs4jaqaa>
 <Z9qd1GJ1418CbaOt@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z9qd1GJ1418CbaOt@linaro.org>
X-Proofpoint-GUID: 5Vu0bN7eXiB051LR0OQCmPq3EoF2IMDJ
X-Proofpoint-ORIG-GUID: 5Vu0bN7eXiB051LR0OQCmPq3EoF2IMDJ
X-Authority-Analysis: v=2.4 cv=XKcwSRhE c=1 sm=1 tr=0 ts=67daa55f cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=opzT4eU6cpc3XRIv2nIA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_03,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=742 priorityscore=1501 clxscore=1015 phishscore=0
 impostorscore=0 adultscore=0 mlxscore=0 malwarescore=0 suspectscore=0
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503190077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_040713_361132_F2AE8BD5 
X-CRM114-Status: GOOD (  35.12  )
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

On Wed, Mar 19, 2025 at 11:35:00AM +0100, Stephan Gerhold wrote:
> On Wed, Mar 19, 2025 at 12:20:07PM +0200, Dmitry Baryshkov wrote:
> > On Tue, Mar 18, 2025 at 10:22:56PM -0500, Bjorn Andersson via B4 Relay wrote:
> > > From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> > > 
> > > In a multiport configuration based on the SNPS eUSB2 PHY it's not
> > > necessary that all ports are connected to something.
> > > 
> > > While this is allowed by the Devicetree binding, the implementation
> > > current fails probing for such PHYs, which also prevents the multiport
> > > controller from probing.
> > > 
> > > The lack of repeater does not alter the fact that the PHY is there and
> > > attempts at describing only the used PHYs in Devicetree results in
> > > failures to initialize the USB controller.
> > > 
> > > Make the repeater optional, to allow the these PHYs to be described in
> > > the DeviceTree and for the associated multiport controller to operate
> > > the other ports.
> > > 
> > > Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 10 +++++++---
> > >  1 file changed, 7 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> > > index 1484691a41d59a7eaf257ef44300827c668bf7e0..8897d2072ccfcaa5b4a510c17761dcdeed5bad0f 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> > > @@ -401,9 +401,13 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
> > >  				     "failed to get regulator supplies\n");
> > >  
> > >  	phy->repeater = devm_of_phy_get_by_index(dev, np, 0);
> > > -	if (IS_ERR(phy->repeater))
> > > -		return dev_err_probe(dev, PTR_ERR(phy->repeater),
> > > -				     "failed to get repeater\n");
> > > +	if (IS_ERR(phy->repeater)) {
> > > +		if (PTR_ERR(phy->repeater) == -ENODEV)
> > > +			phy->repeater = NULL;
> > > +		else
> > > +			return dev_err_probe(dev, PTR_ERR(phy->repeater),
> > > +					     "failed to get repeater\n");
> > 
> > Can you use devm_of_phy_optional_get() or devm_phy_optional_get()
> > instead?
> > 
> 
> There is such a patch from Ivaylo already [1].

I will respond there.

> 
> @Ivaylo: Are you planning to re-spin that patch set? Might be even worth
> putting that patch first / sending it separately, since Neil pointed out
> there that the bindings already have the repeater as non-required.
> 
> Thanks,
> Stephan
> 
> [1]: https://lore.kernel.org/linux-arm-msm/20250223122227.725233-6-ivo.ivanov.ivanov1@gmail.com/

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
