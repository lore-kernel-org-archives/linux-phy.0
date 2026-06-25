Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E327CDE001
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 15:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPmO4gvFSvS4ipDSXC+WfRfWJHvLiyg8uXiM6ZVwlNE=; b=VbD7acMNyI0Tqh
	mb79VEEZZXM5dBiu8G7V84G4jUXBxKYbMbpS/pQ3IXSpnlMN130rxd8R2kt169E+CbhVoLqcTyik4
	5bGuZyBauix/FiChuGfHGKyFaL38kMd8rajaIOtx0uHr8rWdjDnzaEViTYwWzXtX1IM7xx6y81FO/
	tjGpZXgIklfmXeBsoqRM/IqVqycqTuhd032XqAqule6cZJuCiSFQBuic4OBjIV9IX09D7eEfAuEUk
	5azsFsDA9GhOQfoROA3eDOuqwaaVx/3uJkciCW9qGtqP8Lv4kJfVUTO6ACdCvBReYsBsMOipKOVBU
	UxpjrmVzUEQp6e+YbjPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcmCr-00000009Pfn-2e8l;
	Thu, 25 Jun 2026 15:41:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcmCo-00000009PfR-35Iy
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 15:41:33 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65PFeYsH2709698
	for <linux-phy@lists.infradead.org>; Thu, 25 Jun 2026 15:41:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9Lo8pgHVw8dr8EhYjzI7pSrf
	sLgQ/Biprz4uL3xaU+Y=; b=QR2TJaS2SX2+bZ06LYZB+kyL6ZsJHoBYyRt26ndF
	EqxJ6TbUexmudm22+NW4hSFiazz+gxOtPd/8Vrc8hNetPds5pi//jK0Mr7K4ORyQ
	QprkNriUo803wEaMuXf5802rJPLjJ+YRaVu9QGfB9R5HguFvM/je/BdFG/o8hRVy
	kvkKzNUKDkbFRpfXyWSSaLfDv3UfW77O46uDoA6xpZLnEqSr7HGQ6bQSCr5djZ8k
	pk/YhY7dEGH59b0pIhXSexz0ErfVfQRxhFP4LUSTG4+CffCeZLCp/fvZQV1KVRAa
	IcGziadAIwfuyYPTjLr6dMSgLPEFE4uUIm0RZixq4dfWkQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f0ueuax5a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Jun 2026 15:41:28 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2c7645ac9b1so177335ad.3
        for <linux-phy@lists.infradead.org>; Thu, 25 Jun 2026 08:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782402087; x=1783006887; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9Lo8pgHVw8dr8EhYjzI7pSrfsLgQ/Biprz4uL3xaU+Y=;
        b=FoqkcTZZSAySWhzl107V27EghYzv7Umq9SkfJizmgwn8dcV1mlVkd/ouUqB7Fgxm7u
         eoqZCDvF3z2tzL0k+UuNQsFqguBtm8jmVTQ3i1KVlL2iOVKgvTAg8nL4Ktx3jXlj3KB+
         R49DSyOOk2bMdNQkK5n46uoJpxhZgdovLGrr0bXknUsNO+buvNT6IBm9pg0CGnbcZPVM
         VAJ/EZxeP+4zLJ4hheYqv/fXQ15zffXv+XfQkbgCwYmOZauSpyTzSAr0dMcj+xf9Aava
         AeEy93ZJ7lzQS4r0bCCDmz/bC7fmJcrbVGgrA7ZEvM9wZJBEBP6JUgqDeK3f/CVafo9I
         nPgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782402087; x=1783006887;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Lo8pgHVw8dr8EhYjzI7pSrfsLgQ/Biprz4uL3xaU+Y=;
        b=AG9hMi0gEU+eNtcYNnMHKMdlZJz5RzLwoyJeQoMfKSXVwIubFO0xPq+334202A8xPh
         GJMxxAr34bk9xTh8WejnvT7P0EdqPO+xRnjk+0EHo9LGDeBvfAAMFBkwXQk1ROlofUP8
         YsXWSdQPldTzh20wIKctT8Rnl6bD6QoVAMa5kccjJX/9vdlCPGUMW+C2dnQFjCyW/43U
         yPmKJ4gVdcM3hJk/eJqWGIpXzQf5+VactbZ7s5YOGlb/0lsIumoXnrSgQHUpnEhBYjSv
         jwwxbLVuPVr6/9bO+9Y6lr4by+kRLWCDlrFN3nGT7E4+Rvio8qwv5yK4okvUMj0TxEQ4
         QLLw==
X-Forwarded-Encrypted: i=1; AHgh+RraoO3NZ6dm+0dg/Fp+UhRU0hO+QgE+sB3eS6YNdvTYy4bhjBntpvAEvmGqOwIOXTY+bPrVo2GjL1Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzp/JhbwaJOhU7S3PrmpSadLIyb/yoqVqIrDt45IXmFEM43vrXw
	O0HI8Hzj8wwScqW2cuE3nu/jRX8NOYwq1sdwSlL/I3kTpty3jIRmcOQfaCLDhrtQAvPCOxMo1lU
	Ajaq2+VecK6eSUmS/Z9IvNHxavLYnnDzxCZ5Jsgu/ZP7aWAdwAPQ01/qhgcko9+JWAZdL
X-Gm-Gg: AfdE7cmUycVu4Oz269qV4QKvphC0z3aKA6QRlMr1BEGxILz4B+WEFHVIqJaxy+j+f6o
	X0qMkmosNAFp2QWkktuouo9emSosVxjzXc1rOyPQjoO5HYXAC06FgB4nmE2Dpc9WpOnT3FK7dp9
	LVvICbS8d5yo/j1NCzhVl7Zgc9Y6CFr+bZqhIDly+mus+ViyFAmVJDiYZyeDLRMRUYUFCg0Z4z+
	I5zfOvECVr9rDV0gaU/9o9Fqpugng/whVJrfYHJa3pTcSjyWyhr9tS+wpI+idtlVDEY0343wfRy
	Vri0WtlUbR0Ki/osMRQBVqTPQe4uEcA+YaW7iNB12z4f5ibsgFKSOiGVDjdG+GrGGXBPk+1U0Td
	MgHjQPcYdVy7jyv0Xvt6l2rRvCsXlJeWC1aCw6wVI
X-Received: by 2002:a17:902:d482:b0:2c6:8d95:fd6d with SMTP id d9443c01a7336-2c7fc74bd33mr30863175ad.21.1782402087097;
        Thu, 25 Jun 2026 08:41:27 -0700 (PDT)
X-Received: by 2002:a17:902:d482:b0:2c6:8d95:fd6d with SMTP id d9443c01a7336-2c7fc74bd33mr30862855ad.21.1782402086573;
        Thu, 25 Jun 2026 08:41:26 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c7f5ac88fdsm23947525ad.17.2026.06.25.08.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2026 08:41:26 -0700 (PDT)
Date: Thu, 25 Jun 2026 21:11:19 +0530
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
Message-ID: <bvankzuazswuigrm7hvyjqigzfaru5o43wi3zvyphgme2pgqwz@pyspqky3u6cn>
References: <20260512-shikra-dt-v1-3-716438330dd0@oss.qualcomm.com>
 <20260513042836.073F9C2BCB7@smtp.kernel.org>
 <t2sw6owdxy5iyodjqsldbw6bfaqnezhgvc4hhylxuyrrbjkjto@iwf4dr5nmot3>
 <20260513142936.kauwa3czigfs7qs5@hu-kotarake-hyd.qualcomm.com>
 <0ac665bb-1a21-4077-aa9e-97162f7f4784@oss.qualcomm.com>
 <20260514103918.cs5m5kcxcrcgukvx@hu-kamalw-hyd.qualcomm.com>
 <obdxony34ckfbtsqj66siszw44sgieskcye5hg66ulkisctpwl@fyqczpze5tnw>
 <20260518114927.edxbzvklqatlntv2@hu-kamalw-hyd.qualcomm.com>
 <CAO9ioeVMieo8HtpRw+n4ZU9uV-_RQM061q5XfAA1Dtk2fnp4+g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO9ioeVMieo8HtpRw+n4ZU9uV-_RQM061q5XfAA1Dtk2fnp4+g@mail.gmail.com>
X-Proofpoint-ORIG-GUID: dZwIfh4-UQ00nGAIpbtqOX0D8MFHfYZk
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI1MDEzNCBTYWx0ZWRfX0GBYbAwOKFMc
 dKTYwwaOwzyeqndiESbEyzg07RB0QDlVubCFbQwE8UqYSWwfr/wQzFeUF2yCAE/Cr+2Kr++obPQ
 Vss3vIS6ukhHyNgWBzzWthrw8S2Jptk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI1MDEzNCBTYWx0ZWRfXyb8QwxBST27V
 sZqp/8LU+XddEYWaqjrO5K9qcWmkgLHh+Acie7rGwskbaDPAAMCm0ULuew7IGmqs9QIVF7rl9z1
 qmOOIQ7RA+3ECAycC9kpK6SWsgxMv6KrqkjH5V8e2GQwGOiDPmW6ETqAy2k8ILmGzQ/2eH+oyvF
 YJxJiVRcnXmSkAQs7Y20ENRoWjuLNdyRihXqA1flA5+JPRqIzhOL3a3E01fvHDvQA3qiI6wo20N
 rNjl6dOSlHYqJRv3VVt2P3hOx0fYIa00qJEW462wr13JtDYA5XEAZykyVq/C05l1c5U9xitu049
 HMlSryQh26lk2zHDZGNu3eRYKpICsvjnVHjv7PExrHI3zjkZ2lrl3zKLntjQZqeUu1ohB3rScG6
 ldjJxsrLOz22SomsISO0EyWa6M48fkxZqH2D99cf0vdg6HPjnGccH6aw4h9wRH4640tPzOt1Zer
 NtQ6ttHYDLkNHt/is6w==
X-Authority-Analysis: v=2.4 cv=b/SCJNGx c=1 sm=1 tr=0 ts=6a3d4c28 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=1JGSnXlUyEB1KsQKyO8A:9 a=CjuIK1q_8ugA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: dZwIfh4-UQ00nGAIpbtqOX0D8MFHfYZk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-25_02,2026-06-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1015 spamscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606250134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260625_084130_945785_331FEE61 
X-CRM114-Status: GOOD (  47.39  )
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

On Wed, Jun 17, 2026 at 03:48:14PM +0300, Dmitry Baryshkov wrote:
> On Mon, 18 May 2026 at 14:49, Kamal Wadhwa
> <kamal.wadhwa@oss.qualcomm.com> wrote:
> >
> > On Sun, May 17, 2026 at 08:18:15PM +0300, Dmitry Baryshkov wrote:
> > > On Thu, May 14, 2026 at 04:09:18PM +0530, Kamal Wadhwa wrote:
> > > > On Wed, May 13, 2026 at 06:14:20PM +0300, Dmitry Baryshkov wrote:
> > > > > On 13/05/2026 17:29, Rakesh Kota wrote:
> > > > > > On Wed, May 13, 2026 at 03:01:47PM +0300, Dmitry Baryshkov wrote:
> > > > > > > On Wed, May 13, 2026 at 04:28:35AM +0000, sashiko-bot@kernel.org wrote:
> > > > > > > > Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> > > > > > > > - [High] The PMIC regulator definitions omit their required input supply dependencies (e.g., `vdd_s2-supply`, `vdd_l3-supply`), breaking the power hierarchy.
> > > > > > > > - [Medium] The device tree inaccurately hardcodes the `compatible` string to a different PMIC model (`qcom,rpm-pm2250-regulators`) instead of explicitly identifying the actual hardware (PM4125).
> > > > > > > > --
> > > > > > > >
> > > > > > > > commit 457abf6e7ac410430c866842e08e602ec3daaa51
> > > > > > > > Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> > > > > > > >
> > > > > > > > arm64: dts: qcom: Add Shikra CQM SoM platform
> > > > > > > >
> > > > > > > > Add device tree include for the CQM variant of the Shikra System-on-Module.
> > > > > > > > This variant integrates the Shikra SoC and PM4125 PMIC. The DTSI includes
> > > > > > > > the common shikra.dtsi and adds PM4125 PMIC regulator definitions.
> > > > > > > >
> > > > > > > > > diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
> > > > > > > > > new file mode 100644
> > > > > > > > > index 0000000000000..401e71720519d
> > > > > > > > > --- /dev/null
> > > > > > > > > +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
> > > > > > > > [ ... ]
> > > > > > > > > +&rpm_requests {
> > > > > > > > > + regulators {
> > > > > > > > > +         compatible = "qcom,rpm-pm2250-regulators";
> > > > > > > >
> > > > > > > > Since the commit message indicates this is a PM4125 PMIC, should the
> > > > > > > > compatible string include a specific identifier for the actual hardware?
> > > > > > > >
> > > > > > > > Using a specific identifier like "qcom,rpm-pm4125-regulators" alongside
> > > > > > > > the fallback allows the kernel to apply specific quirks if PM4125 errata
> > > > > > > > are discovered later.
> > > > > > >
> > > > > > > This can be ignored. The compat is a leftover from the historically
> > > > > > > incorrect naming.
> > > > > > >
> > > > > > > >
> > > > > > > > > +
> > > > > > > > > +         pm4125_s2: s2 {
> > > > > > > > > +                 regulator-min-microvolt = <1000000>;
> > > > > > > > > +                 regulator-max-microvolt = <1200000>;
> > > > > > > > > +         };
> > > > > > > >
> > > > > > > > Do these regulators need to explicitly define their input supply dependencies
> > > > > > > > such as vdd_s2-supply?
> > > > > > > >
> > > > > > > > Without these properties, the regulator framework might be unaware that the
> > > > > > > > PMIC regulators draw power from upstream supplies.
> > > > > > > >
> > > > > > > > If the kernel dynamically manages the upstream supply and its reference count
> > > > > > > > drops to zero, could it be disabled, causing an unexpected power loss for
> > > > > > > > downstream components?
> > > > > > >
> > > > > > > And this is a correct comment. Please provide missing supplies.
> > > > > > >
> > > > > > As per the Qualcomm system design, the parent-child supply relationship
> > > > > > is managed by the RPM firmware, not the Linux regulator framework. The
> > > > > > RPM ensures the parent supply is never disabled until all subsystem
> > > > > > votes are cleared.
> > > > >
> > > > > How is this different from other, previous platforms?
> > > >
> > > > This is not different. In the previous platforms too this is taken care from the
> > > > RPM/RPMH firmware side, the only case where we may need explicit vote to parent
> > > > is for non-rpmh/rpm regulator rails (like i2c based regulator pm8008), which
> > > > may have a RPM/RPMH regulator as a parent.
> > > >
> > > > Even on those previous targets the parent rail of all RPM/RPMH regulators are
> > > > internally voted by RPM/RPMH FW at proper voltage with required headroom
> > > > calculated based on the active child rails. This was done for all the
> > > > subsystems (including APPS) regulators.
> > > >
> > > > So no explicit handling from the APPS is required for parent supply.
> > >
> > > You are explaining the driver behaviour. But the question is about the
> > > hardware description. If there is no difference, please add necessary
> > > supplies back.
> >
> > I understand your concern about descibing the parent-child relation in the
> > devicetree, and given that we have been almost always followed this for all
> > the previous targets, it will expected of us to add them.
> 
> Yes.
> 
> >
> > However, we want to avoid the unnecessary access to the parent from APPS.
> 
> Why? What is the reason? Do we want to do the same for all the
> platforms? Only for Shikra? Something else?
> 
> > At the moment, I do not see a way to avoid that, if we add the parent
> > regulators.
> 
> That depend on the answer to the previous question. In the end, we can
> make the driver ignore the parents by removing them from the regulator
> desc.

Ok, this seems like a good suggestion, so you mean its ok if we define the
regulator desc's supply column with NULL? And only keep that in the DT?

you mean like this?
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/regulator/qcom-rpmh-regulator.c?h=v7.1#n1453

(please let me know if i got that right. thanks)

> 
> >
> > @Bjorn, @Konrad - can you please also share your suggestion, how we can add
> > parent-child desciption, but avoid accessing parent supply from APPS, as its
> > Qualcomm's system design to handle this on RPM/RPMH firmware side (you may
> > recall we had a verbal/offline discussion about same concern in context of
> > RPMH regulators earlier).
> 
> That's why offline discussions are bad - you can't include other
> participants in them.

Yes, i see your point. I will take care of that in future.

> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
