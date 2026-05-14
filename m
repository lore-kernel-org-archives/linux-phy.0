Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75F37CD4F25
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 10:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vOo9SagFG6Ne3tBmveeiWtmytJpsmlPdwr0aGvvi4yY=; b=j5jEEO/0hNxl13
	gd2CbOlkdWXw5lvEs7OnVlJ1yHij1kwhP9H8QO7Jjquz+18QWWyMKdNMKydYHqp/TaQgsgUjUDd0h
	BMZqm9S/cghE0fg989bbUo2al8fKmm2QVYT9AvjkXaO3127RRsrC/ZnnsaAjhzXoBYdvShHnq71Cc
	3lHwORw0hBheDU6P0SHpLN+4SuRVoYYZughKlEqJ4MilOqq0KuvqWPyuF/R/o96KT//IYiTQwTtPc
	87mAvfqt6fcqD0KTh4w/UHf/SnuJ4eCKsN1xlo7qQ9KpUwAl1YjEIE+klSvIJcLSbKWKaaYakXGEu
	MCBUtNwuaITMHWUnRoNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNTTW-00000005DkH-0uVc;
	Thu, 14 May 2026 10:39:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNTTT-00000005DjY-2hCE
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 10:39:28 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64E9kAaV1468143
	for <linux-phy@lists.infradead.org>; Thu, 14 May 2026 10:39:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HmrqwqjjLktBPLYsegl1QVtQ
	/F4OqiSh8CElUELezGs=; b=Pq1eVv+uYkACUxAAq+FertIp211pok452vSq7QUl
	8hLtR6SCbpl3dVk1J9ukfBjMUar/my6laEM2bQJ6a7ABCqk8WCKljC5sMWs93+P5
	4LBOx2iXIi8dh/8g1d6NoD49zo3qJ1NVOuiRIzzhbtPDcUbRo/Cpr9fvy6SKz1vW
	3fHbhP9On7dP1dCd9eRSsxuKZMKAh1PpDq9KiYJmyH2zWI2g8yf599k5s5VCUJv3
	8sRAa/IBCS2zBFcvEcq7DDP+VcLg8BqLDa2RHzMXsZeHsKXQnVxOsL5DiWui2+zU
	fJNRWKJyt8g9euXxI5ibrMXH96LvzLe55t9zX/0TtAPyEw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e57y7h4u9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 14 May 2026 10:39:26 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-82f6a5b4f88so9799000b3a.2
        for <linux-phy@lists.infradead.org>; Thu, 14 May 2026 03:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778755166; x=1779359966; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HmrqwqjjLktBPLYsegl1QVtQ/F4OqiSh8CElUELezGs=;
        b=hsh+YkbJWJ3WVXfqvhM7T+NeYnkss4yUXVKNyxzghbD8FRMFRQ4jRArKMMrLDZSB4J
         DOpNOKtdjrQjOFr03zjCBJ6tFpTqB3+A40/htg0PRgbAC1F7pFxXjPrWFF/UMjGf4tWA
         wmjLwBx33J3PAT1+6O1H7Y/P+W3WgfKz2NKH9+ktMkEdL0yI//LNsNcNonuWIeegDsEw
         rN97KogF9IrtMU3sBrsNj86+QpQN9WF9lLQ/HfNQ+4t9uZQGrafFk1syXOnitCc7Lppo
         2LkfX5J12TYPW8YRrNfIvQ5jladznjVr+ijPAZ4BtDNSBGanAZ7YO2QdVF1XHX65POqW
         AFGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778755166; x=1779359966;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HmrqwqjjLktBPLYsegl1QVtQ/F4OqiSh8CElUELezGs=;
        b=WC+OVFqdtAr5nt+VFRTnl7aUvQM0PpD7bwrs/knwe/9C5FvQWRblbQT0TQWvZnLPXP
         Wza3xoevNtaTHVUy+GnKMT9rdAL/Wranrw03JbC7J4IeLH8GhJUVJIKK5kthicJFV6xw
         CIKpgjgZFX/k2TO/zr/A5HjIQ5O5DzgUqxZ3w2Kjsuo4T4a9x5bhIOMkJDvoP9RoSjM6
         yAp2IHQ+MJab+eQCC/0k8b+7qr6+1pfk0sKTzJk2GlriZujmD8V5pydTVxnk1ZaRDUqt
         R3CgLH/Nit8QlRCclXT1LO3CkmhJlVFDh96cYUJ4v1GPhi5GbdynwRqfeCmhRvsbt+fp
         Mm7w==
X-Forwarded-Encrypted: i=1; AFNElJ+ZDJORCHJNsfTTpEUV2vAbg74/WV/ulUlzZPRthjBuaHhpeCyWxwO/MzYu8zSX+Nbinw9lNVHL7UU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzbq8r0G7+lLKtW+NAhkmr9YY+G4G+VLBoiFarMFIybb92cfiSC
	SbwkUxp1i2aogQmSh/cvJu+NeRWmIYNO4MjjGL2Hqpzpo/NgNS7db0PN56E8/GFqpvDar8cCbzw
	ZyxsXz/I/HNNHcKQssGVvAHIJxu556NeJUNWaaePWpdqXppViPjB343pypUxchJ0i4wep
X-Gm-Gg: Acq92OGWqa/tZV74J508869F0ZlaNYujskPekI4rP0JXPFQ2gTrhvI1Xl6zqV98TiAi
	zzhsc1DqZYQuvhI7AwlhKsU5E172I0ruGmTt7+EQ5qn7IexttIH3wc8rp7fORuNZjsOazUY5C1o
	3cafKbquGY+5T7r0fSLloATWmf8R1KTKhIcaDylzQE6mp6uGAxJHIOhkAnEpCB19YucE/zLo/8f
	vpfKGYt6u+a9BTT/VBMu1gRSpbajcOg3VrVv5uot92rPAy/nBeIhqeMa0UqV9e2HKtvJHSxawEe
	rsx/6XVhartr/zPxeOtkstMD9nZPB7NOzPBit3cKILMUiD7juYpU1Crz23S3zr6jvGLCHyv3gFq
	RbxR70I8jBnHpUPh4RiD4i2AxlKj/9+WBR3nZGKY/juUwpsEdLHQ=
X-Received: by 2002:a05:6a00:1c9c:b0:81f:3fa0:8c38 with SMTP id d2e1a72fcca58-83f03fcc4a4mr7790282b3a.20.1778755165607;
        Thu, 14 May 2026 03:39:25 -0700 (PDT)
X-Received: by 2002:a05:6a00:1c9c:b0:81f:3fa0:8c38 with SMTP id d2e1a72fcca58-83f03fcc4a4mr7790238b3a.20.1778755165039;
        Thu, 14 May 2026 03:39:25 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83f19f61e5dsm2300851b3a.51.2026.05.14.03.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 May 2026 03:39:24 -0700 (PDT)
Date: Thu, 14 May 2026 16:09:18 +0530
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        sashiko-reviews@lists.linux.dev,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>, robh@kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        vkoul@kernel.org, olteanv@gmail.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
Message-ID: <20260514103918.cs5m5kcxcrcgukvx@hu-kamalw-hyd.qualcomm.com>
References: <20260512-shikra-dt-v1-3-716438330dd0@oss.qualcomm.com>
 <20260513042836.073F9C2BCB7@smtp.kernel.org>
 <t2sw6owdxy5iyodjqsldbw6bfaqnezhgvc4hhylxuyrrbjkjto@iwf4dr5nmot3>
 <20260513142936.kauwa3czigfs7qs5@hu-kotarake-hyd.qualcomm.com>
 <0ac665bb-1a21-4077-aa9e-97162f7f4784@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ac665bb-1a21-4077-aa9e-97162f7f4784@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: gDA5DdqYUJ5NKj_zKVQG44h9Kz_qA7h3
X-Authority-Analysis: v=2.4 cv=UY9hjqSN c=1 sm=1 tr=0 ts=6a05a65e cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=CUircwOaNzYOuOtqVfUA:9 a=CjuIK1q_8ugA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: gDA5DdqYUJ5NKj_zKVQG44h9Kz_qA7h3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE0MDEwNSBTYWx0ZWRfX5KWR+LwZIl1y
 wYVkDXVPjDIR4tTK4v2nRl7tGe+a/KQOF4TDENIHis0+7zTb3HDUr/j46OlRraPZK9nzYq76hTL
 Hxsv0evUq5/M7O3Z7Qx6qhxRimu8WXV1nWufz4XMvQoMsLQr88XsO16Y5nmfstQx+iMynM3ElC+
 DzgRRFjv99wE24hBuw4dPRe8cv0JCi/jRECbY3nDE7tQyYSCMVQAo6t7cKb74uWsjogD75n4LlX
 TW0mO8ymbIqGrHe+j4pb4v/dCbrLBFooh2e2lZh29eKDZxFmY0WbSP3Y1TdVN85DIoCKuA7Izmc
 TO7nX/Y1jI6oI6eDQK/QFKXnK+Hy/FsQ5k5UKMmJF4Pz3LPO3cf7zZQZOvEg9wywFc9lbQ6mnPi
 nCFoI5i+besicGxhIInNe4aYCL+icS4atMoYdl6DtyZLm3WSawDOFwb9nZIrqqToh6HBWLlaiB4
 G/FRij1FpsK2ublDwuw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-14_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 clxscore=1011 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605050000
 definitions=main-2605140105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_033927_689212_7DCF36A1 
X-CRM114-Status: GOOD (  32.39  )
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

On Wed, May 13, 2026 at 06:14:20PM +0300, Dmitry Baryshkov wrote:
> On 13/05/2026 17:29, Rakesh Kota wrote:
> > On Wed, May 13, 2026 at 03:01:47PM +0300, Dmitry Baryshkov wrote:
> > > On Wed, May 13, 2026 at 04:28:35AM +0000, sashiko-bot@kernel.org wrote:
> > > > Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> > > > - [High] The PMIC regulator definitions omit their required input supply dependencies (e.g., `vdd_s2-supply`, `vdd_l3-supply`), breaking the power hierarchy.
> > > > - [Medium] The device tree inaccurately hardcodes the `compatible` string to a different PMIC model (`qcom,rpm-pm2250-regulators`) instead of explicitly identifying the actual hardware (PM4125).
> > > > --
> > > > 
> > > > commit 457abf6e7ac410430c866842e08e602ec3daaa51
> > > > Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> > > > 
> > > > arm64: dts: qcom: Add Shikra CQM SoM platform
> > > > 
> > > > Add device tree include for the CQM variant of the Shikra System-on-Module.
> > > > This variant integrates the Shikra SoC and PM4125 PMIC. The DTSI includes
> > > > the common shikra.dtsi and adds PM4125 PMIC regulator definitions.
> > > > 
> > > > > diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
> > > > > new file mode 100644
> > > > > index 0000000000000..401e71720519d
> > > > > --- /dev/null
> > > > > +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
> > > > [ ... ]
> > > > > +&rpm_requests {
> > > > > +	regulators {
> > > > > +		compatible = "qcom,rpm-pm2250-regulators";
> > > > 
> > > > Since the commit message indicates this is a PM4125 PMIC, should the
> > > > compatible string include a specific identifier for the actual hardware?
> > > > 
> > > > Using a specific identifier like "qcom,rpm-pm4125-regulators" alongside
> > > > the fallback allows the kernel to apply specific quirks if PM4125 errata
> > > > are discovered later.
> > > 
> > > This can be ignored. The compat is a leftover from the historically
> > > incorrect naming.
> > > 
> > > > 
> > > > > +
> > > > > +		pm4125_s2: s2 {
> > > > > +			regulator-min-microvolt = <1000000>;
> > > > > +			regulator-max-microvolt = <1200000>;
> > > > > +		};
> > > > 
> > > > Do these regulators need to explicitly define their input supply dependencies
> > > > such as vdd_s2-supply?
> > > > 
> > > > Without these properties, the regulator framework might be unaware that the
> > > > PMIC regulators draw power from upstream supplies.
> > > > 
> > > > If the kernel dynamically manages the upstream supply and its reference count
> > > > drops to zero, could it be disabled, causing an unexpected power loss for
> > > > downstream components?
> > > 
> > > And this is a correct comment. Please provide missing supplies.
> > > 
> > As per the Qualcomm system design, the parent-child supply relationship
> > is managed by the RPM firmware, not the Linux regulator framework. The
> > RPM ensures the parent supply is never disabled until all subsystem
> > votes are cleared.
> 
> How is this different from other, previous platforms?

This is not different. In the previous platforms too this is taken care from the
RPM/RPMH firmware side, the only case where we may need explicit vote to parent
is for non-rpmh/rpm regulator rails (like i2c based regulator pm8008), which
may have a RPM/RPMH regulator as a parent.

Even on those previous targets the parent rail of all RPM/RPMH regulators are
internally voted by RPM/RPMH FW at proper voltage with required headroom
calculated based on the active child rails. This was done for all the
subsystems (including APPS) regulators.

So no explicit handling from the APPS is required for parent supply.

> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
