Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 856EECD4F3C
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 11:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwAkhekeyy5t3n+Q7G57mLHvqfjiUVEnRCELAvD8Cjo=; b=hmKyufld33/0Op
	zP8wtCKGK8l9mQiFFgmX3wiOYewqGntjD3/Jk/Qj5kZhf8yz38e2jWr2x3+8MWoZx4pfkQUo8Z9fv
	flFJkQPZQzJvww8My+uJcM/eXFbG43xGAJCBP+w/amlknqhIavZ7LUskMuH1JkAjx0Tzpk2eMB9ST
	G6bDY3nY6lGucIk/dn84cd4OrA3yWXBgPU+ToEampnSYi3I5XdnARGP8yJLSntrXEW4QFUmDC+tt7
	alsTc2goZ7KlCZ2IdzgUvEtBgQHn1NVNx7HrkWYMlfz+4RT2lBHZn5YDiEPzBg+7iAYOSvOJKc+NG
	dllSF1ESDZns1/WR/b7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOwTg-0000000FV3S-1AZU;
	Mon, 18 May 2026 11:49:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOwTf-0000000FV2z-0KLp
	for linux-phy@bombadil.infradead.org;
	Mon, 18 May 2026 11:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=ZQaHAH77x0UG4O6dV4fD7MS0JvjE3rw7N/l4jr5UMT8=; b=US6ZDRIkfuG4L3CoTnDPw4S4R/
	m95yTS8RMESFNXKzkhtEtSu54PBBL0arTy6mUYgfQ4pnd6bXhH8iPGjVaD+fxJlXfMBV+aX6ikko6
	LiTO56GzvoCcB7JDLSJjo244FG4t3ke89R2tXHOIbCj9QiGU3Ol4orctGaOTiadsRw5nnDMkEXIYx
	enmUdPxy9itjqkunE5O2NXBI9AWTcKPnEbkGF0RywaJLWIaIa27VbU9KKWwkNhTs6PHJRpWIEZCvm
	xfGEsYv7WBNI/cWZsn0CXNuvBjVUsWQR7DBqpwV4znu1hYuOXxAFBOGjv1Rpybvx9q5D5O0f44yeS
	DiSCmhMw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOwTb-0000000B0S7-29oZ
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 11:49:41 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64I7agb91462932
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 11:49:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZQaHAH77x0UG4O6dV4fD7MS0
	JvjE3rw7N/l4jr5UMT8=; b=HXlVxNh/Q+dNp8wB16Qx23FRFj0Aw++Ou/LkEs3a
	CIThIg69eKJs6wBCPu7eB+eSXvp1A0E5OLSsTraso3AWCJa21eLjQrCdcFOjKU3F
	NFdZCPF3pSaXl6zsAm9KOwGhKHKSdwS6ipfViW+gz0GVuPzSyaAFLpvXyD8aag6l
	2CHX0aRkG/YeXNyEBKSz0tn37PcgCPXaMVDGosnn6ikAWC/f/Jhvbraw6p2Psz/h
	SH36LhANVIglbpMzx67cft/dNyJKEjTNJEsRK5zZ8zHuDmLQ1TTHQYUi4zWNzaN5
	bShTzGUc9lQFzMLjOcJXcmFWM0Ed7URw8m2AzZGgFNgn7w==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e6h0g69r3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 11:49:35 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c8271fb43d0so1159279a12.1
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 04:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779104975; x=1779709775; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZQaHAH77x0UG4O6dV4fD7MS0JvjE3rw7N/l4jr5UMT8=;
        b=O4X8I9HfekgDeHnLS2f6LoNYXoxas0FoN0UcHYN00Opmx7nANyEDmPfB6+c2nOtW0s
         CuRzEpLy0RA07vlnWKVqACNC4CR8pWZ6jdKbYrR4A+JP7Lq4JDcAwjIwxtQkOxlkKgbO
         mKceAAAEurAZfo5N3O+3ooOUD5L+SkgJdobzP7whruLodGc9zt/04H5ISgLiCGC0kJLX
         vawsw3qkD7s8lVZdpuU7lLQnaSP8X6WRRO4bhLJZw1EvQa6q3oUFepFW5KW7z370747h
         PaE3dl+Rrj8b/REa+IjkxL3SIGp0Ei6Sg+HSbGIZAH6T4LMLfji66tOpdKLMv0JMDYOr
         FdRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779104975; x=1779709775;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZQaHAH77x0UG4O6dV4fD7MS0JvjE3rw7N/l4jr5UMT8=;
        b=hrCDU3X5gm82l7Ys92EduC9gPq4wbpoSHDXuqO8C3eAEi+SnJ+cO8VhwTXL1HAolr8
         nVXktSeUp0aMxTVOiljzoTob8KYmsmKDKdN3k0aMdXttJbOu3ANHSqzzDY3E/s8rBzSC
         9xaTUYhqCjEZ1BoiFKA1EzZ7a1x2xTCGJV8eiZoIUEulNhG6Ll0aag9flLXooar8uWl/
         0uL4A1Mntn8En3BXWUfxdn+8ghGysce6la+BJvwavyT9keeVPf/sSu3U685unVTb47eC
         flP/a9lyVnW9cwWGkDaA+WRCB50GFXDRJo2xEeLHiEgK+XqV3dm6rLXgBRAPmDojqJpp
         PGWA==
X-Forwarded-Encrypted: i=1; AFNElJ9MDBqlDPzV7j1Stcx7mqp67uiVXvUs13rvrpvhZILQfRUv99GmCDREH8hKIbsMNvR+BUfkiNJmouw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyLKCbY/rJqxsGpGcxSf05VY7NHA37UMUfTwLrUZuLqyQIOjWXO
	xPPCp5bpX6aNdj/rd74pkUkIoQ0SDotybRHhTd0HriBX5XB38XtODk687lW6r4ceVTu0P/0uxZD
	C3kglBGavmMw4h28FXhG9LGIionLuo0iWdrlsPokZSpt5M89JbDxFXCyGiRddzXtoDtB9
X-Gm-Gg: Acq92OHotH7qY4dI6Q6qJ8QCm1y/qFRc4UJRFZls666xD1642iHDg6TbzjbQbeOW3bV
	u0CTF4L6ShsF8L7K0SzHcYnMyLwg++zeIV/yORCWIEqIxve+Z0zbEVjMAYx61FZPIVi3s9XsWkq
	K82lfbHg+RF61mGZJleuE3wjNG4rNd0muZ0TLh0eYf2BYr69lYZZaNtATWk8ey54LO45Sd+arap
	YfIHXHPqbeY4qDrngjZ6xsRJuCL61luS/c71Wdu5oCQS+1gB3e3uHtzbB6j++jXjIdxSklS61b9
	QxsSb+XCN6OzGvFegrS3Ctwzvux3vcIUyGAzyTtXzqacfBe0pgwXB3MhBuDiaJeAakMsj0vJ0ou
	DoNDFlCUOMBEKePqh97mg3a9bNq05p+/PLfYzvdEeZoQeyezosmU=
X-Received: by 2002:a05:6a00:3005:b0:839:3ccb:7038 with SMTP id d2e1a72fcca58-83f33d336fcmr15496742b3a.48.1779104974862;
        Mon, 18 May 2026 04:49:34 -0700 (PDT)
X-Received: by 2002:a05:6a00:3005:b0:839:3ccb:7038 with SMTP id d2e1a72fcca58-83f33d336fcmr15496694b3a.48.1779104974195;
        Mon, 18 May 2026 04:49:34 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83f19c5c3a9sm14436791b3a.38.2026.05.18.04.49.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 04:49:33 -0700 (PDT)
Date: Mon, 18 May 2026 17:19:27 +0530
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
Message-ID: <20260518114927.edxbzvklqatlntv2@hu-kamalw-hyd.qualcomm.com>
References: <20260512-shikra-dt-v1-3-716438330dd0@oss.qualcomm.com>
 <20260513042836.073F9C2BCB7@smtp.kernel.org>
 <t2sw6owdxy5iyodjqsldbw6bfaqnezhgvc4hhylxuyrrbjkjto@iwf4dr5nmot3>
 <20260513142936.kauwa3czigfs7qs5@hu-kotarake-hyd.qualcomm.com>
 <0ac665bb-1a21-4077-aa9e-97162f7f4784@oss.qualcomm.com>
 <20260514103918.cs5m5kcxcrcgukvx@hu-kamalw-hyd.qualcomm.com>
 <obdxony34ckfbtsqj66siszw44sgieskcye5hg66ulkisctpwl@fyqczpze5tnw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <obdxony34ckfbtsqj66siszw44sgieskcye5hg66ulkisctpwl@fyqczpze5tnw>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE4MDExNCBTYWx0ZWRfX6C20tZQSjBUV
 EdHVFL8fheC5Ok1Ou+XIcT9zI7bxc0Fgp+vPVzk/jSKcn61CLX1xKh4PhoIRmgks4231abhhSR0
 OIjh6A7pQMWG8YIW7WIDYnLnVdbTIj331agQ+ku2qGSgH/je7SaU6PLVbDPlgKvfYBgLb/OKOON
 BTz1S1Rl+utfQYbj4C5dzcJyDnS7KwtMEKpfTu6eJAo3TpcmYoSUxzlvWBXvn2YfHOqS4Q1NLQT
 dmVY9G81zVv0dYl+kzR6ekrjKxZfkq1FMMDg1KjjtWZvdII2jRHh6/lSIA+ynZgOd4GZKkJcAoU
 4V2oA9SboMnF56ZjKIvYC7KuHZ8tvzo8FgcugG5poGIFk7D8eMuqoJZGf+WM81Ej03HNtNaYAiu
 0vynDHWx2ntS+w7yoSfCPb/c42bvPOi0MrPH95uc/UDqxmi8qyrY5KgyHyZv2X2pL+TMoHXq8js
 IUJI3fgci4rxEiaWh2g==
X-Authority-Analysis: v=2.4 cv=W7gIkxWk c=1 sm=1 tr=0 ts=6a0afccf cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=22Q9nnmWW0f7vvM8ERgA:9 a=CjuIK1q_8ugA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: mXQCk3u3PFHwXeOJJU1FwDvV6S6UfM1H
X-Proofpoint-ORIG-GUID: mXQCk3u3PFHwXeOJJU1FwDvV6S6UfM1H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-18_03,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 malwarescore=0 impostorscore=0 adultscore=0
 phishscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605180114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_124940_252816_B49BE388 
X-CRM114-Status: GOOD (  39.55  )
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

On Sun, May 17, 2026 at 08:18:15PM +0300, Dmitry Baryshkov wrote:
> On Thu, May 14, 2026 at 04:09:18PM +0530, Kamal Wadhwa wrote:
> > On Wed, May 13, 2026 at 06:14:20PM +0300, Dmitry Baryshkov wrote:
> > > On 13/05/2026 17:29, Rakesh Kota wrote:
> > > > On Wed, May 13, 2026 at 03:01:47PM +0300, Dmitry Baryshkov wrote:
> > > > > On Wed, May 13, 2026 at 04:28:35AM +0000, sashiko-bot@kernel.org wrote:
> > > > > > Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> > > > > > - [High] The PMIC regulator definitions omit their required input supply dependencies (e.g., `vdd_s2-supply`, `vdd_l3-supply`), breaking the power hierarchy.
> > > > > > - [Medium] The device tree inaccurately hardcodes the `compatible` string to a different PMIC model (`qcom,rpm-pm2250-regulators`) instead of explicitly identifying the actual hardware (PM4125).
> > > > > > --
> > > > > > 
> > > > > > commit 457abf6e7ac410430c866842e08e602ec3daaa51
> > > > > > Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> > > > > > 
> > > > > > arm64: dts: qcom: Add Shikra CQM SoM platform
> > > > > > 
> > > > > > Add device tree include for the CQM variant of the Shikra System-on-Module.
> > > > > > This variant integrates the Shikra SoC and PM4125 PMIC. The DTSI includes
> > > > > > the common shikra.dtsi and adds PM4125 PMIC regulator definitions.
> > > > > > 
> > > > > > > diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
> > > > > > > new file mode 100644
> > > > > > > index 0000000000000..401e71720519d
> > > > > > > --- /dev/null
> > > > > > > +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
> > > > > > [ ... ]
> > > > > > > +&rpm_requests {
> > > > > > > +	regulators {
> > > > > > > +		compatible = "qcom,rpm-pm2250-regulators";
> > > > > > 
> > > > > > Since the commit message indicates this is a PM4125 PMIC, should the
> > > > > > compatible string include a specific identifier for the actual hardware?
> > > > > > 
> > > > > > Using a specific identifier like "qcom,rpm-pm4125-regulators" alongside
> > > > > > the fallback allows the kernel to apply specific quirks if PM4125 errata
> > > > > > are discovered later.
> > > > > 
> > > > > This can be ignored. The compat is a leftover from the historically
> > > > > incorrect naming.
> > > > > 
> > > > > > 
> > > > > > > +
> > > > > > > +		pm4125_s2: s2 {
> > > > > > > +			regulator-min-microvolt = <1000000>;
> > > > > > > +			regulator-max-microvolt = <1200000>;
> > > > > > > +		};
> > > > > > 
> > > > > > Do these regulators need to explicitly define their input supply dependencies
> > > > > > such as vdd_s2-supply?
> > > > > > 
> > > > > > Without these properties, the regulator framework might be unaware that the
> > > > > > PMIC regulators draw power from upstream supplies.
> > > > > > 
> > > > > > If the kernel dynamically manages the upstream supply and its reference count
> > > > > > drops to zero, could it be disabled, causing an unexpected power loss for
> > > > > > downstream components?
> > > > > 
> > > > > And this is a correct comment. Please provide missing supplies.
> > > > > 
> > > > As per the Qualcomm system design, the parent-child supply relationship
> > > > is managed by the RPM firmware, not the Linux regulator framework. The
> > > > RPM ensures the parent supply is never disabled until all subsystem
> > > > votes are cleared.
> > > 
> > > How is this different from other, previous platforms?
> > 
> > This is not different. In the previous platforms too this is taken care from the
> > RPM/RPMH firmware side, the only case where we may need explicit vote to parent
> > is for non-rpmh/rpm regulator rails (like i2c based regulator pm8008), which
> > may have a RPM/RPMH regulator as a parent.
> > 
> > Even on those previous targets the parent rail of all RPM/RPMH regulators are
> > internally voted by RPM/RPMH FW at proper voltage with required headroom
> > calculated based on the active child rails. This was done for all the
> > subsystems (including APPS) regulators.
> > 
> > So no explicit handling from the APPS is required for parent supply.
> 
> You are explaining the driver behaviour. But the question is about the
> hardware description. If there is no difference, please add necessary
> supplies back.

I understand your concern about descibing the parent-child relation in the
devicetree, and given that we have been almost always followed this for all
the previous targets, it will expected of us to add them.

However, we want to avoid the unnecessary access to the parent from APPS.
At the moment, I do not see a way to avoid that, if we add the parent
regulators.

@Bjorn, @Konrad - can you please also share your suggestion, how we can add
parent-child desciption, but avoid accessing parent supply from APPS, as its
Qualcomm's system design to handle this on RPM/RPMH firmware side (you may
recall we had a verbal/offline discussion about same concern in context of
RPMH regulators earlier).

Regards,
Kamal

> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
