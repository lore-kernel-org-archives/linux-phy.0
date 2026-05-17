Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4353CD4F47
	for <linux-phy@archiver.kernel.org>; Sun, 17 May 2026 17:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=si4HRQeq+hbZioEbzUM3c766QBZ2/6rIgNo7gxuR0gM=; b=iAYviBo/x28FqN
	k90M8t7EosqU38MjUcO8teMotYwGXOnGAh17I9S9qp+FVx0SfW9Psm+fmxd1+avoT0rmpuxtHWbQG
	WSjJ2qejtpRRkHdfsTfTIdV3bIyn80QcgA2ieMYENz0rRMg0Je2qmfjmqbaPybkzJle0LxDtFI3VV
	zI8fpI06bwWmLOBj04QT6Rr7ZJiSR3VL8fVuS3Y00xAl+Qp9SZPBmVxJkNrVv66n8zdtHhBhRT+LY
	WzIrUbnOUtgNtj66cfBNHXLf2WUuCyl5QxVj85OPMw7qbyTqFphruzazG2x7IV3XYLOfDse5iTUUW
	3izHhQv6aMxRkHX4ugPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOf8F-0000000D5la-2LAf;
	Sun, 17 May 2026 17:18:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOf8C-0000000D5kv-49y5
	for linux-phy@lists.infradead.org;
	Sun, 17 May 2026 17:18:26 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64GLrWnZ378751
	for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 17:18:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Xgxp/eiQkFOSoDn0UOnSceK8
	3P+WFNS9eG0OJ/DVFw8=; b=iL/7I7pFnqNDPy9ybyiyYl0/3MM4vvKjYj+uBgP2
	f9rI4BsPhGGrD56McKm/MgvTLXmJsN/UvhBgZ9beTipTo/V8mHZaL154EGQatNpO
	X8LHSeA2pZe8yjtrowDwjUsvn1NuVZj2rRstgb6BFEX+j4nmVSUHucSMYAsvXv/L
	d7/6sg6BJroABTKtHR6ocEmuGm7VK5O5Molkl/tW44wNGCFSEIVmLj1+oAEd1bHU
	0QDgFubkin04Ud9u9cOmSTi2KhD9Yl1sInViQCiTUxH7YgeklXnj8+skON+STSVh
	TX3nQToIC0pMoRYKVH/jxq9YnUClFVD1jZG7LO4iefTRyg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e6gwmb971-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 17:18:22 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50d890580e1so38246241cf.3
        for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 10:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779038302; x=1779643102; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Xgxp/eiQkFOSoDn0UOnSceK83P+WFNS9eG0OJ/DVFw8=;
        b=J+Q4C4CcX7aJpf6r/BWvae7iw36YGgfm/FrPzPw18RISaJjVLYv7BxwQ9hjRDQR/tZ
         smtt9cayLv4/Nm+ar9TADGZLPIDJt/5qgLeLk3SrxZgNKa5hhSbNddvgQGXg2EDeVCDi
         oU4fHMGkfWKwZdvg3W23L7epaB2pE9eaZLA4FQmaZbKqJfai5QEybjCKIOUpvAhVoOHj
         cLydYPtyXomsktRGBRc2DrzqfmlrY9d4Dmpo7iLbi6yd9Sy48COAYXGZ55eqevXWGnet
         VzkaXqMkSmk+aIu7Et+pZsOuzZR4YGYWxQ4+MWwK9O0Bh8iSxFgwYYecl2ZARdx26lBQ
         VBxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779038302; x=1779643102;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xgxp/eiQkFOSoDn0UOnSceK83P+WFNS9eG0OJ/DVFw8=;
        b=kzlSL7iaUia1HitT85e7c7z8bUKXweZV2RldYi+7ZPQAWMBMh6AhmseB2ZYdMULF2Y
         sJIb+iFTYB77B1LPMd6ig11VptFfPS/JsXY5PPxNTnkP2UnK+iepi7Nh5yNu3FOvjaN+
         6tmCM8GBQhHpb7VigozMUeEt6gU38YzxsmzNNOkE8nFZ+rFsKQnhCNLO1X3B0lMfWDnB
         VNCkpYa6vstjdT+9KWOdqgkphf9CHiucbYCHPBTt2VetvU+pixTP2OFUUkjA3kMzwzYR
         3PWsM2tZ08dwkPIaDcJDuA+klGvXPSm6n8hGgSMxf5EIo5KWLyZfAyzXyTpPWKXOYAPW
         1wbQ==
X-Forwarded-Encrypted: i=1; AFNElJ+0xwgG4EpYwbJygSsZBAXW3SKFfRYwD9UiMGag+mcmRapOTxrtJDHWZfUmI0L5TGaNgBmOvS89kw4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwuJI1oLdU0RNfOKYCfiZnSBAo+uZOkJLC3ZsATOehAQoBZQvrT
	TfMjv3j0wFvOmxkED5NObVpBY/dZuplLa4MS/iQiWFhflM44GoTqPnIbSTxZP0LDugtdDv5ErSl
	wiSEbAZSnY6ISBdkE8NCMjuvn3wmPbO1116gi38BQWr6hVCMRD3Ha2uuNkGmilGeTUFHj
X-Gm-Gg: Acq92OFL+QAwocRs3D1KYzwDoEb16UnyNWLvsy6hQnj7MlVriutgMEIy8AjpKlHl7vW
	vTuT2P/cJFOdpwrW6XDQglN162JtLnqWEUSjQfyWbZqP1rHXAYGKQKPBpRNheB9uv5dZePKJm+9
	N9GrXSAeOpYy2lrVtceqRIhiMhP5e6+lJEGxJubiL7W9lqjdwwnXT3iStipKAWUUGohfII4fkDF
	C8psD9jJvsdRXUR4KkvrL7nV/sxNs71QSQyUJ/roOKmLHtCIi7c+bENVSxzESdlBSA7Xi60J/5l
	gMs/IL83sv+CnusZLE0QisD7Vqe0DMWNqLZqCBGsV/4qMpfbxay7IbDo4FZxb2smU8pcrww2vE4
	tdBgXjVhJL3C+VhVUkq2aMfUpJuXuw5Tv8zl5QXIylVILSJ+bGgzM0OEp5xLHslHxXGMhE6Wn7S
	r+Ek7PAjQD3/t+Xcr+zTeqoIvYQ9ASt7wAh3U=
X-Received: by 2002:ac8:7d0e:0:b0:50f:c2f8:406f with SMTP id d75a77b69052e-5165a0758fdmr173915941cf.25.1779038302263;
        Sun, 17 May 2026 10:18:22 -0700 (PDT)
X-Received: by 2002:ac8:7d0e:0:b0:50f:c2f8:406f with SMTP id d75a77b69052e-5165a0758fdmr173915501cf.25.1779038301708;
        Sun, 17 May 2026 10:18:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3958874ff29sm6416181fa.22.2026.05.17.10.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 May 2026 10:18:19 -0700 (PDT)
Date: Sun, 17 May 2026 20:18:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Cc: Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        sashiko-reviews@lists.linux.dev,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>, robh@kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        vkoul@kernel.org, olteanv@gmail.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
Message-ID: <obdxony34ckfbtsqj66siszw44sgieskcye5hg66ulkisctpwl@fyqczpze5tnw>
References: <20260512-shikra-dt-v1-3-716438330dd0@oss.qualcomm.com>
 <20260513042836.073F9C2BCB7@smtp.kernel.org>
 <t2sw6owdxy5iyodjqsldbw6bfaqnezhgvc4hhylxuyrrbjkjto@iwf4dr5nmot3>
 <20260513142936.kauwa3czigfs7qs5@hu-kotarake-hyd.qualcomm.com>
 <0ac665bb-1a21-4077-aa9e-97162f7f4784@oss.qualcomm.com>
 <20260514103918.cs5m5kcxcrcgukvx@hu-kamalw-hyd.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260514103918.cs5m5kcxcrcgukvx@hu-kamalw-hyd.qualcomm.com>
X-Proofpoint-ORIG-GUID: GP-FwMZRPWqKcMP3lpcmEsf0rWcjYIPc
X-Proofpoint-GUID: GP-FwMZRPWqKcMP3lpcmEsf0rWcjYIPc
X-Authority-Analysis: v=2.4 cv=W/AIkxWk c=1 sm=1 tr=0 ts=6a09f85e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=fvtwTOuhFqfjIg9toagA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE3MDE4NiBTYWx0ZWRfX51ZxpFjFFbia
 t1yjwojMUFQS0p+eXrjB/6jxPT2xZJiLP9AYy3bec7IiAjgDe4dZN0vCtZPoLL4mde14ZuYc2hW
 uRaNKPc6HNWvm9GZ5Tydd3VRZIXz6vnHt7fUpTWqk8APbVWIs/dgNREx9QEJNFUFVitPSV3phxc
 glBSeS2skHONaa+YmZCzII3XNz+NFmTRFAYOtGvs7vd/R1pcVr7Rl2Y25k/61v87HjPFZcyl5gh
 x2x79wMJeo+wKkOggw/4iJSOeNXAXAQI9Wt1UAZdR2hox3AJZWrm6xT28e4DKiiOkho7ic/oFNC
 kE+g7mFPm2eA3fxrDAGoXxQiNMPFUVPLJ47LU960eE4YSvy4GKERoUGwm2DjJrzfI4BsHq9A6PE
 XK2isKq2LtS6lP7NkQcGqOrucaQ2TjyAWIigMp98h7MZt5rDJHawZcR8oABFQic2yXZR0WJcdn+
 pKMIkDzmc8baaJLuAgw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-17_04,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 impostorscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605170186
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_101825_155673_925A7516 
X-CRM114-Status: GOOD (  34.46  )
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

On Thu, May 14, 2026 at 04:09:18PM +0530, Kamal Wadhwa wrote:
> On Wed, May 13, 2026 at 06:14:20PM +0300, Dmitry Baryshkov wrote:
> > On 13/05/2026 17:29, Rakesh Kota wrote:
> > > On Wed, May 13, 2026 at 03:01:47PM +0300, Dmitry Baryshkov wrote:
> > > > On Wed, May 13, 2026 at 04:28:35AM +0000, sashiko-bot@kernel.org wrote:
> > > > > Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> > > > > - [High] The PMIC regulator definitions omit their required input supply dependencies (e.g., `vdd_s2-supply`, `vdd_l3-supply`), breaking the power hierarchy.
> > > > > - [Medium] The device tree inaccurately hardcodes the `compatible` string to a different PMIC model (`qcom,rpm-pm2250-regulators`) instead of explicitly identifying the actual hardware (PM4125).
> > > > > --
> > > > > 
> > > > > commit 457abf6e7ac410430c866842e08e602ec3daaa51
> > > > > Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> > > > > 
> > > > > arm64: dts: qcom: Add Shikra CQM SoM platform
> > > > > 
> > > > > Add device tree include for the CQM variant of the Shikra System-on-Module.
> > > > > This variant integrates the Shikra SoC and PM4125 PMIC. The DTSI includes
> > > > > the common shikra.dtsi and adds PM4125 PMIC regulator definitions.
> > > > > 
> > > > > > diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
> > > > > > new file mode 100644
> > > > > > index 0000000000000..401e71720519d
> > > > > > --- /dev/null
> > > > > > +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
> > > > > [ ... ]
> > > > > > +&rpm_requests {
> > > > > > +	regulators {
> > > > > > +		compatible = "qcom,rpm-pm2250-regulators";
> > > > > 
> > > > > Since the commit message indicates this is a PM4125 PMIC, should the
> > > > > compatible string include a specific identifier for the actual hardware?
> > > > > 
> > > > > Using a specific identifier like "qcom,rpm-pm4125-regulators" alongside
> > > > > the fallback allows the kernel to apply specific quirks if PM4125 errata
> > > > > are discovered later.
> > > > 
> > > > This can be ignored. The compat is a leftover from the historically
> > > > incorrect naming.
> > > > 
> > > > > 
> > > > > > +
> > > > > > +		pm4125_s2: s2 {
> > > > > > +			regulator-min-microvolt = <1000000>;
> > > > > > +			regulator-max-microvolt = <1200000>;
> > > > > > +		};
> > > > > 
> > > > > Do these regulators need to explicitly define their input supply dependencies
> > > > > such as vdd_s2-supply?
> > > > > 
> > > > > Without these properties, the regulator framework might be unaware that the
> > > > > PMIC regulators draw power from upstream supplies.
> > > > > 
> > > > > If the kernel dynamically manages the upstream supply and its reference count
> > > > > drops to zero, could it be disabled, causing an unexpected power loss for
> > > > > downstream components?
> > > > 
> > > > And this is a correct comment. Please provide missing supplies.
> > > > 
> > > As per the Qualcomm system design, the parent-child supply relationship
> > > is managed by the RPM firmware, not the Linux regulator framework. The
> > > RPM ensures the parent supply is never disabled until all subsystem
> > > votes are cleared.
> > 
> > How is this different from other, previous platforms?
> 
> This is not different. In the previous platforms too this is taken care from the
> RPM/RPMH firmware side, the only case where we may need explicit vote to parent
> is for non-rpmh/rpm regulator rails (like i2c based regulator pm8008), which
> may have a RPM/RPMH regulator as a parent.
> 
> Even on those previous targets the parent rail of all RPM/RPMH regulators are
> internally voted by RPM/RPMH FW at proper voltage with required headroom
> calculated based on the active child rails. This was done for all the
> subsystems (including APPS) regulators.
> 
> So no explicit handling from the APPS is required for parent supply.

You are explaining the driver behaviour. But the question is about the
hardware description. If there is no difference, please add necessary
supplies back.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
