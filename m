Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55FE2C43458
	for <linux-phy@archiver.kernel.org>; Sun, 28 Jun 2026 12:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hub6Kv3XtwXKOHFUHpnnkjdkGFneZNnbHvEvDCmMf4c=; b=et8BJvG0FGbfHR
	1TeSJx0GqJkM1oewxOo+MGYPc0sQsZpoBsahHohfgauRiCU5JI0+UltG+nuIB0boz8WCMPQ2wZbYd
	I03y6bZwGpwToyFTgtl6QyHHuLrE+VDJhYyNQ4QpGBuxl2q4g0lSLd7qz8dH2TprecX6vKt6uMTta
	CK0o2M2MatsE9AVmYJozKgJEAsa74FqarxExP5+hR6ONF7gY8jzC6ygw1qC56jU6OLpwXj+11pkGy
	7oQwehQMTS9jTPAXSzWNNlhDEhfAMrp1GaWBp73bqMNLuuBliQkMRD13Q4aiUyRF2a1+nyneOBQRc
	KtgD3+REMT50Dq2hUNhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdoha-0000000D68F-18do;
	Sun, 28 Jun 2026 12:33:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdohX-0000000D67u-0Zj1
	for linux-phy@lists.infradead.org;
	Sun, 28 Jun 2026 12:33:32 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65S9qAXK3650012
	for <linux-phy@lists.infradead.org>; Sun, 28 Jun 2026 12:33:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iMYnMWBp77TV2qENzpNgtRcZ
	SO5SxyLvA6XoKjxuz0M=; b=cHujCWWkTidRlrat45BIiorrO+2mngzn53H0cvys
	xFGS5sfcY6D/phIjo+VZKLXf4bVw6kkd2ZHkZAagjCBLm9Moug0WavnVQhkPaR0X
	ChKK8L3hEy+3AkvaOHkFWfvSpo0U6APLQ/WRTjC/V5LT5HenkQKCPzt1gPA/mqBN
	8jVkotE6sE3B4+4eaJePKa4LkcPfUXLydTTb8eIg2ggpzU+76HzExBCJJRk5cGym
	1BY66FrF1usMTNV9ewtKFWGnfv8UYSzKHmyYeKsSiiUlSr4I/+xsR2Gl1MS0N1eu
	7UoQTKjUeHA08szGFRJH9yPbMAt2jWpGRi9des6H08zo1w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f2734avh7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 28 Jun 2026 12:33:28 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92b41f17488so290767785a.0
        for <linux-phy@lists.infradead.org>; Sun, 28 Jun 2026 05:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782650008; x=1783254808; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iMYnMWBp77TV2qENzpNgtRcZSO5SxyLvA6XoKjxuz0M=;
        b=TV9ehHIgpIC+yfZ4Sf82dwRyQDqtSo2jAigBsMXMkaAG8Z8qQWFwUOTTIrYfFUKb2G
         yRlCrL5HJLfv8jXKvTtj35xKAm33uMIyvdm7o5O81XSf6CHEHUuox+ItVTAJ+2v6ReQH
         pUL3z9nu/TvifgFusxrkUkjRtRfiqlC+ZSpzbjpOuhaX6MgJ/FAfc/94TGSUzGGqH8yy
         znZl+zuYphiXSvho4+k1MDOqGRw/kraltrF6svyEADGVCODe3E9GlYMdwVMwbaS8b13K
         5LwseZtm40fXKeUIc40IDDB1fQxLMQV/sin/Puc9fXFlnl8K8D5QfaZ6ls0nmuCFZvPQ
         HDsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782650008; x=1783254808;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iMYnMWBp77TV2qENzpNgtRcZSO5SxyLvA6XoKjxuz0M=;
        b=GME+WYT9aRsHjZhLRWrHZOip3poxf8wo/JoDvXGkGWWs6oeqYKu0kt9UXNDi07eNBj
         pPTtQ266DIHjK2PZTfyKFruHfikX9n7Z3jXB8ZVlJ/tJ23aLigZELdzr5sSRoVztpBf+
         CkcyVnRIP7gNDLSpyZ0urjyYVR3zy1u4qSYPyb+fMnPnnIOwZftErF1D8Whwuqyr7OZk
         5PF2o396FoaqphevSzzqDYS9f1OW7MEpRkkIFigFFh0SG0wQk2qOMaTDTc008dO0kPq+
         Jba5tDGn/1mzgIdf+vjM89v07SCLR9BCVNq/ikFIDgab0DZIgRpJC4B4m5mpebdg6XbZ
         yhTw==
X-Forwarded-Encrypted: i=1; AFNElJ9w1Us2ZWtmKNArWgJr3tlAJtPuhM/niXfWIweEUUC1JXLkp0MAL+31itbIPrP7evklTiszYXGYmlE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzfmAmRJV5UYI1AcKjorlCVVcCTQ5WQbuqXdeeRS0aES6lFQSUs
	KBerjikLhEGx5t21DybAMpaqBnjtZ35+scPsYFSMoYfRtpqqVEMjXLLlqV0uikCt81Yo4WOwohY
	Q6CoDzsF/gTj4+5Qt/c6N1aOXwjkLhZb0qfaSIAsvz38fmfGZxd2ln43EotISzdSkvW/D
X-Gm-Gg: AfdE7cnt0p7OwgDe7y+c4B1OKBIFbPHxnI2hVyVs9xlBTh7Gl8ogn0xfRnukWzxuIcH
	FTaXPAJHF3b4mQzEEzyTL9v8qI4Y428xsZZw6QUVm4eVfzskON/C0/cFeF44qnw3teNaLz3zkPT
	uvqqUm5/VnHghq6zBRfLQHO8uw4q4or5Za+ZndXSca+mvoViuChni92PiPOCfLr8+hktflghY1G
	cJZ5rnccUGki7RH93CnQ8DNeeD1LxjoFPDMvv6jCqfFodqtWU4/mW3R8YqGi6IJruXXaCV0wioL
	aWvdVb10cmRCr+Nhy4rQbGa9eHTn5SVIKC6GnxssXQTFhOzKl3uMyZG5xOzteVclGwtv6PKVtEk
	42TQY+rMr+wPK3Uh9Yna5EVKjPkMpkVXYGevhrZChbJ/h2XWAi9pfRXQJ6ufHhtwXQe7fHlYQlv
	sAFMI+bLeRJ3yUHRSdBqYEYc3P
X-Received: by 2002:a05:620a:4147:b0:915:9da9:b51b with SMTP id af79cd13be357-92600a83049mr3348414785a.16.1782650007968;
        Sun, 28 Jun 2026 05:33:27 -0700 (PDT)
X-Received: by 2002:a05:620a:4147:b0:915:9da9:b51b with SMTP id af79cd13be357-92600a83049mr3348411585a.16.1782650007434;
        Sun, 28 Jun 2026 05:33:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39af63056f2sm9044421fa.17.2026.06.28.05.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 05:33:25 -0700 (PDT)
Date: Sun, 28 Jun 2026 15:33:23 +0300
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
Message-ID: <5idu4ljmcvcvzqsr5g73h2roxzs36l6xxc5ju6ovc5aitt3gx4@wmfqueyf2rj6>
References: <20260512-shikra-dt-v1-3-716438330dd0@oss.qualcomm.com>
 <20260513042836.073F9C2BCB7@smtp.kernel.org>
 <t2sw6owdxy5iyodjqsldbw6bfaqnezhgvc4hhylxuyrrbjkjto@iwf4dr5nmot3>
 <20260513142936.kauwa3czigfs7qs5@hu-kotarake-hyd.qualcomm.com>
 <0ac665bb-1a21-4077-aa9e-97162f7f4784@oss.qualcomm.com>
 <20260514103918.cs5m5kcxcrcgukvx@hu-kamalw-hyd.qualcomm.com>
 <obdxony34ckfbtsqj66siszw44sgieskcye5hg66ulkisctpwl@fyqczpze5tnw>
 <20260518114927.edxbzvklqatlntv2@hu-kamalw-hyd.qualcomm.com>
 <CAO9ioeVMieo8HtpRw+n4ZU9uV-_RQM061q5XfAA1Dtk2fnp4+g@mail.gmail.com>
 <bvankzuazswuigrm7hvyjqigzfaru5o43wi3zvyphgme2pgqwz@pyspqky3u6cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bvankzuazswuigrm7hvyjqigzfaru5o43wi3zvyphgme2pgqwz@pyspqky3u6cn>
X-Proofpoint-GUID: Ib2INHMAd91y5YCxcLm588rZqEpDHekC
X-Proofpoint-ORIG-GUID: Ib2INHMAd91y5YCxcLm588rZqEpDHekC
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI4MDExMCBTYWx0ZWRfX8vte1QyiboXz
 Ah0Jv66LP4Vq3crOBTUc3sTvsVQYmvz2+Sjn+UMGIwaOWmyxZkA47WiZtP3jjBKGs0nDWBJfEcX
 XI7nJ3UvFokH8Z6tSXb9JxGSaozolII=
X-Authority-Analysis: v=2.4 cv=HYokiCE8 c=1 sm=1 tr=0 ts=6a411498 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=9oNDkMca_vBqraWRZNIA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI4MDExMCBTYWx0ZWRfXwkv3n9PZbihm
 55uZocYMqT1WmzwgAcmUiRAnia22Y7iorfOQdSBY++QqSaH5x4RlPqBXLrNg66+B4F1m78L/5U/
 4zrbFpG2sOHGGXXvDMDwJFmI3lyX9TAvci9kfODDUD/0H3moFPHMpB9eONvjyrrmtcbn6/gf35G
 F9g+FGQk9noJAK80jXNonuZU/7BhJ1BzjX7cUlKMRnGj18MWOHlUJtJhhcy70GR9IU0e0dVWCef
 bujql3fUR/EWr88IXIeimL0tru30Qt2HttP6gR7f2lUQwBC9aEP21lN6TxQTPw+nOdUCJn15kzY
 y6LRtn9qIxg9YQgBp76AfccOHNJqYsjSccgwfpwCATAz3NVstkXYfGa4yrRdt/5TElkHNn/2BID
 0XV7/JspfA2uJDAK8KSMUz3Kf5ZZpfI6qTrVov61xhpsJ34iXtOHpRyKyvquITYVovh0uPOgcwI
 hxprYm1E+HU0KPX+rrw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-28_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606280110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260628_053331_323073_60850A39 
X-CRM114-Status: GOOD (  40.23  )
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

On Thu, Jun 25, 2026 at 09:11:19PM +0530, Kamal Wadhwa wrote:
> On Wed, Jun 17, 2026 at 03:48:14PM +0300, Dmitry Baryshkov wrote:
> > On Mon, 18 May 2026 at 14:49, Kamal Wadhwa
> > <kamal.wadhwa@oss.qualcomm.com> wrote:
> > >
> > > On Sun, May 17, 2026 at 08:18:15PM +0300, Dmitry Baryshkov wrote:
> > > > On Thu, May 14, 2026 at 04:09:18PM +0530, Kamal Wadhwa wrote:
> > > > > On Wed, May 13, 2026 at 06:14:20PM +0300, Dmitry Baryshkov wrote:
> > > > > > On 13/05/2026 17:29, Rakesh Kota wrote:
> > > > > > > On Wed, May 13, 2026 at 03:01:47PM +0300, Dmitry Baryshkov wrote:
> > > > > > > > On Wed, May 13, 2026 at 04:28:35AM +0000, sashiko-bot@kernel.org wrote:
> > > > > > > > > Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> > > > > > > > > - [High] The PMIC regulator definitions omit their required input supply dependencies (e.g., `vdd_s2-supply`, `vdd_l3-supply`), breaking the power hierarchy.
> > > > > > > > > - [Medium] The device tree inaccurately hardcodes the `compatible` string to a different PMIC model (`qcom,rpm-pm2250-regulators`) instead of explicitly identifying the actual hardware (PM4125).
> > > > > > > > > --
> > > > > > > > > > +
> > > > > > > > > > +         pm4125_s2: s2 {
> > > > > > > > > > +                 regulator-min-microvolt = <1000000>;
> > > > > > > > > > +                 regulator-max-microvolt = <1200000>;
> > > > > > > > > > +         };
> > > > > > > > >
> > > > > > > > > Do these regulators need to explicitly define their input supply dependencies
> > > > > > > > > such as vdd_s2-supply?
> > > > > > > > >
> > > > > > > > > Without these properties, the regulator framework might be unaware that the
> > > > > > > > > PMIC regulators draw power from upstream supplies.
> > > > > > > > >
> > > > > > > > > If the kernel dynamically manages the upstream supply and its reference count
> > > > > > > > > drops to zero, could it be disabled, causing an unexpected power loss for
> > > > > > > > > downstream components?
> > > > > > > >
> > > > > > > > And this is a correct comment. Please provide missing supplies.
> > > > > > > >
> > > > > > > As per the Qualcomm system design, the parent-child supply relationship
> > > > > > > is managed by the RPM firmware, not the Linux regulator framework. The
> > > > > > > RPM ensures the parent supply is never disabled until all subsystem
> > > > > > > votes are cleared.
> > > > > >
> > > > > > How is this different from other, previous platforms?
> > > > >
> > > > > This is not different. In the previous platforms too this is taken care from the
> > > > > RPM/RPMH firmware side, the only case where we may need explicit vote to parent
> > > > > is for non-rpmh/rpm regulator rails (like i2c based regulator pm8008), which
> > > > > may have a RPM/RPMH regulator as a parent.
> > > > >
> > > > > Even on those previous targets the parent rail of all RPM/RPMH regulators are
> > > > > internally voted by RPM/RPMH FW at proper voltage with required headroom
> > > > > calculated based on the active child rails. This was done for all the
> > > > > subsystems (including APPS) regulators.
> > > > >
> > > > > So no explicit handling from the APPS is required for parent supply.
> > > >
> > > > You are explaining the driver behaviour. But the question is about the
> > > > hardware description. If there is no difference, please add necessary
> > > > supplies back.
> > >
> > > I understand your concern about descibing the parent-child relation in the
> > > devicetree, and given that we have been almost always followed this for all
> > > the previous targets, it will expected of us to add them.
> > 
> > Yes.
> > 
> > >
> > > However, we want to avoid the unnecessary access to the parent from APPS.
> > 
> > Why? What is the reason? Do we want to do the same for all the
> > platforms? Only for Shikra? Something else?
> > 
> > > At the moment, I do not see a way to avoid that, if we add the parent
> > > regulators.
> > 
> > That depend on the answer to the previous question. In the end, we can
> > make the driver ignore the parents by removing them from the regulator
> > desc.
> 
> Ok, this seems like a good suggestion, so you mean its ok if we define the
> regulator desc's supply column with NULL? And only keep that in the DT?
> 
> you mean like this?
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/regulator/qcom-rpmh-regulator.c?h=v7.1#n1453
> 
> (please let me know if i got that right. thanks)

Yes. Don't forget to explain in the commit message, why you are doing
so.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
