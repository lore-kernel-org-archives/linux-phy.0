Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEB3ACD4F24
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 12:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7jENzciqdlYXumj09WBBLij/GSBQ+tD4k1iXxUwwRw=; b=AqTBDz60QUwjBd
	KRiJK1QVBRBtx6PUya1paPRV5xDlZOtJkJVNwLO7S1q4c2E7hcvP/TUd49VtXvzWe24+WDAhPWZdo
	MY78jS43xDScah+Y1o1KucoNjJQ0cJjSd20a9/LzyZqSIvwMHatvU0ZO2P/8AlQ82LlSm17gbFH3w
	hO8j2n1Z4j/RxlAA4P7AzqZrZyigyqMyM9qzkr3M18SDrl//xY1Z5whyCq0GQLb4shh1u2RiaU3Uk
	AdjPTfBwPt3Fc2lDOgFiHC3iGDem9aTmPNltgc+vXL/KwAuLC2WcRbLfxo7q7Y0e7BczKP8bEXR+s
	rxbUPTciXXy2s7Vy37Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8Hk-00000002Q5n-0Vot;
	Wed, 13 May 2026 12:01:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8Hh-00000002Q4u-2YgW
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 12:01:55 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64DAVGVb3430119
	for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 12:01:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dY9hc/f+wkbZ17ghb1zJTtuvuVvCHXDi0+lDIqQHkRE=; b=aE+MQUZLedjmQBPB
	2BqLbPF6GSyByNBJxAaUbm1GE1qS5HXaBSw91lS2ITm6Z3T8RnnJ0kM00Q863Mb3
	uA1nRsnUADS2ZtGAEwAGZ0eff/lYSrg6hBUu3A30R0sy1lPWpUarou2TbM2VbJgZ
	IkhTivRoAwQJiV581iETaWS1IUkcgofOPlltGBVNN7Ctg+S68TPUv8gSEUJXVcWW
	E1z5xHH+lonY8b2PQX2nyG61R+q9CDZ2zDetrmcLfb+j98fmg7iPCvVGF88r7AUX
	Qh4p1JwFsH3DNlQYFjPyH0QAZqAhYx+6Nor/o6nQoIldsGrtk18xnaAr65Uhq9jb
	kllIDw==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e4qmcgab3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 12:01:51 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7e3a5fc58feso7992892a34.0
        for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 05:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778673711; x=1779278511; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dY9hc/f+wkbZ17ghb1zJTtuvuVvCHXDi0+lDIqQHkRE=;
        b=NkQGnnnqsAV5dLkdDYZIb5e26KUmO0kD0ipNRAODnmNllplZyv+hY3BIAQT6dXZoBV
         +GbYy5vymrONeJlJVHVCsA7XomfjIN0oWIFf2wn3w0+DBDW3kODLeRTmcM6NM0I7bKwL
         Hsvf5QqHfdb7P3OttEABVdcM/e+pPpYcKSKjWwvfQ39hh35A7iE1/veG072/fRq1M37s
         dEtmU66SDp2vdMr0YVxidRSkWRWD8OsTaMUenZP+nboLpXenvpcHRxatQdL+qAJWllvo
         sO9dPoWYruvYsKH2bIStTEEyVbCgaLwH5r+RQHqV8g1k7fS4aeq7ff0n8rIupm3G9C8i
         V8AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778673711; x=1779278511;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dY9hc/f+wkbZ17ghb1zJTtuvuVvCHXDi0+lDIqQHkRE=;
        b=iBqnF711UWmDNFBD+F55eAXWYIzqSJyqzpzjLGtcOHKu8NO9ouTdbuF0o9as2wikEi
         Ynk8e1o6BhlMCcG0ehMiUzP95gOMseKLcUOwC04hs9aSWerQ8nPYXx30hp0m9syDKvww
         scEsATh47VFZKPB53d4Lw4muL8VcseH1IPd467cPqw/VYMkwR7v9YeKGJHpxVxvxU/Xn
         EvrgrZ2vfP9e78vSaCVdBFSubYqg5S+hTFa/zFJN0fes5AOoNd6BWszRyKGJMXV2CmXv
         uXISUXI7KIlRlNWdebjat+j5aJPsPI1+O+XpYwUd4dj23v9BjoChR5ax1Vg0BRL5vzET
         k+DA==
X-Forwarded-Encrypted: i=1; AFNElJ/YA1TGUTrT3DHcaYTPW/r3rdBTMFK5/mR3wl/x4dZW2tGMu4fkFsynkhrk+Xfxv14W4nmV+eKYgcU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDHG+FTkNvbklthZS4I8HgTrh5NCJllcxXPVamCFvcpuD8tvSk
	8SnJ2ZyEaLTUnaN1nDxGpAQw/DvjOXTeu+d0fAFdnAprqgnzKlBXprltIy/zEWhQXZY/jpNFCrD
	ObtteSwOsTaYeZxZplNS6u/yYnyAtjYJnRIDVQ2YRv2Iq9fmlem2/ykeMObKyYprlzh0K
X-Gm-Gg: Acq92OGv81YF8vaXvOL7zjukz2UcQT9S753D2gwouIwNIwawj9aTGyMhSziQRU6oaoh
	MYBRLl7D+9cgEAAoUmSbzT971lX0QJGtCDNP/Xf09t/PFf+Q7bPXb+PvP9LcaOfU/aGC/WQuOKX
	laH+yXf5qd3GYmJlLExPcu9RUxvHLrfcGOdBFKanfi/Aek4zAzd7Q8IbNXnRU1jnV4MF3aOoMHq
	pEiiKQDkDHYn7Fgw4HsC0w2mVK/tKjooQ34OYe6zpWU/5w+/ZE43sbUwdA1aKwmGhP7Dk9u2SP5
	PYTuOI/f71B5Tv2Sy15sq50S8gmRsH5aWbAwXQRiCL/Jfuj1tvPD+EPRe27gUa47s4m6Ty3WWjE
	iwVbYqokwt49ExbLlx8TXtxgmHza36r7wvOt1XUMmADQ+HR7F9qsD83MmIe1OOzRgdqjxw/Ck2X
	DcAoHrILljWzB2GD61HujDMhYz64FfnEaGJZs=
X-Received: by 2002:a05:6830:4998:b0:7dc:3d7e:40d8 with SMTP id 46e09a7af769-7e3da8411cbmr1739042a34.28.1778673711221;
        Wed, 13 May 2026 05:01:51 -0700 (PDT)
X-Received: by 2002:a05:6830:4998:b0:7dc:3d7e:40d8 with SMTP id 46e09a7af769-7e3da8411cbmr1738996a34.28.1778673710670;
        Wed, 13 May 2026 05:01:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a8a951cfb4sm4026836e87.20.2026.05.13.05.01.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2026 05:01:49 -0700 (PDT)
Date: Wed, 13 May 2026 15:01:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: sashiko-reviews@lists.linux.dev
Cc: Komal Bajaj <komal.bajaj@oss.qualcomm.com>, robh@kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        vkoul@kernel.org, olteanv@gmail.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
Message-ID: <t2sw6owdxy5iyodjqsldbw6bfaqnezhgvc4hhylxuyrrbjkjto@iwf4dr5nmot3>
References: <20260512-shikra-dt-v1-3-716438330dd0@oss.qualcomm.com>
 <20260513042836.073F9C2BCB7@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260513042836.073F9C2BCB7@smtp.kernel.org>
X-Proofpoint-GUID: 8WINDNe9kH3CsXJK2Z-OqWG1LrRBH7zb
X-Authority-Analysis: v=2.4 cv=Hu5G3UTS c=1 sm=1 tr=0 ts=6a046830 cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=c92rfblmAAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=5d6JBiFWPPR-1DGLDXwA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=Z1Yy7GAxqfX1iEi80vsk:22 a=GvGzcOZaWPEFPQC_NcjD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDEyNSBTYWx0ZWRfXyMd1kvQUNDhW
 2HeSoGFdDISX4yBDGIK6ZSdCZ/1fHI06gTS5/Zs/nkdhjd6/RvXpyMhhCQf7MewmtCx732hvtom
 8u0ql14gM/yM+5UFdk/lL6A0bIYwcUlDHCrZaX7XTXO4A4dz3o12Om4JlCkR9chsOG+abKftlAK
 V9BBmMRcaNeBRVQeTDSipEqTG3PfK/tnhbYAuAluH1WhaBb9OpymxZg6Tyclip+1sYNQaZV/ujq
 rOM4zXMl4wzs0O9zCABHsZt4L1Bvdsw6GroY6Z3L3+eE9zS1pmfhC+fBrJGWAArJ95VM2B89DSj
 AocEOmX84NDVJ3wJjReuqOgUzWhpKCrL13ba7RbQ82hDGGbOPFw7U+Mqa5J9iek1XVyJtuNi45a
 LkK7ovepIABJh/T+A9vzcQ5x3HELsdvw8r4mCJxFO98N0AXPtZS6lPA4Ku7URve/S/XXQ+UFSHH
 xT06a750jajtlI9WCYA==
X-Proofpoint-ORIG-GUID: 8WINDNe9kH3CsXJK2Z-OqWG1LrRBH7zb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-13_01,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 impostorscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605050000 definitions=main-2605130125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_050153_767806_0D73A77E 
X-CRM114-Status: GOOD (  22.95  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, May 13, 2026 at 04:28:35AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issu=
e(s) to consider:
> - [High] The PMIC regulator definitions omit their required input supply =
dependencies (e.g., `vdd_s2-supply`, `vdd_l3-supply`), breaking the power h=
ierarchy.
> - [Medium] The device tree inaccurately hardcodes the `compatible` string=
 to a different PMIC model (`qcom,rpm-pm2250-regulators`) instead of explic=
itly identifying the actual hardware (PM4125).
> --
> =

> commit 457abf6e7ac410430c866842e08e602ec3daaa51
> Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> =

> arm64: dts: qcom: Add Shikra CQM SoM platform
> =

> Add device tree include for the CQM variant of the Shikra System-on-Modul=
e.
> This variant integrates the Shikra SoC and PM4125 PMIC. The DTSI includes
> the common shikra.dtsi and adds PM4125 PMIC regulator definitions.
> =

> > diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi b/arch/arm64/=
boot/dts/qcom/shikra-cqm-som.dtsi
> > new file mode 100644
> > index 0000000000000..401e71720519d
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
> [ ... ]
> > +&rpm_requests {
> > +	regulators {
> > +		compatible =3D "qcom,rpm-pm2250-regulators";
> =

> Since the commit message indicates this is a PM4125 PMIC, should the
> compatible string include a specific identifier for the actual hardware?
> =

> Using a specific identifier like "qcom,rpm-pm4125-regulators" alongside
> the fallback allows the kernel to apply specific quirks if PM4125 errata
> are discovered later.

This can be ignored. The compat is a leftover from the historically
incorrect naming.

> =

> > +
> > +		pm4125_s2: s2 {
> > +			regulator-min-microvolt =3D <1000000>;
> > +			regulator-max-microvolt =3D <1200000>;
> > +		};
> =

> Do these regulators need to explicitly define their input supply dependen=
cies
> such as vdd_s2-supply?
> =

> Without these properties, the regulator framework might be unaware that t=
he
> PMIC regulators draw power from upstream supplies.
> =

> If the kernel dynamically manages the upstream supply and its reference c=
ount
> drops to zero, could it be disabled, causing an unexpected power loss for
> downstream components?

And this is a correct comment. Please provide missing supplies.

> =

> [ ... ]
> =

> -- =

> Sashiko AI review =B7 https://sashiko.dev/#/patchset/20260512-shikra-dt-v=
1-0-716438330dd0@oss.qualcomm.com?part=3D3

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
