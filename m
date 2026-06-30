Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20438C43327
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdvnw9naGQ9Pm+c50tD4NS4R6lctzbCmF4VqGL6OChY=; b=RCObGAmOsOQT4v
	KyS00fSmw6i01jVrotm4zLcJcluB2Z/MO5IrAl+m4wib4l+Vf8020tMjDrD0IdEOxV8C1MYuwImQT
	S+byZQ12sIq+rpL6tPW4KsnwT/B9VpPDj196Cc+1xUFqOTKj2HMMybt1qEEavaeuAF9DxFgc3oD2h
	klQznj7LXpSyw7ZDZREVxTSE1kjLckVYH4vlnNKArdKzOnQ4W7oUTOHTWjxTkw1HZqVuqVH26Ucrx
	OvVs+0RcuGxXtxgnDidiCABWGedleUz2ALdNLzKKzRYSnOvxrB1e+J0y83gNp/2z44A8eYg1ZFFe1
	cJYURfh/0mDXEfola53Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYr8-0000000HD6d-2u6e;
	Tue, 30 Jun 2026 13:50:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYr0-0000000HD4j-0GRG
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:50:29 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65U9mocP1542052
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 13:50:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EOKJcgnb5KIG7WRtPDHZ60NI1QVvp1pmwCPdue2Coi8=; b=RHX4chGf53jjPNcK
	Rmv1cA3XaQr0OVrY6o0EJMrzp/scNiYbjLRkLX4YTTNeZwPaUvA/VoewQbrctRus
	POVx1dYClq8+V9qoW/+lqsR+xVUa1/RDR4e/v4P3S9djwD759UOrukFBiyQtF8gT
	gOZuHoO/LVDp986HLsW92RCm8avyo55U/Z3m6NehuAsUowfBaOhPwmtSzKUf7bJP
	ut3rkl/HWqsW7S99s8wtYuUUxaiU74jDhaPct7bIVsekGBFE0g32a6rQ1IoGf0ug
	pKOkq/qRxG0ODSSP+Om7R9G3fmtqCDMTutihvtlDTgaO/zmkR+mLu7n0+yyoEzx4
	KWVtwg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f44v4jrxw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 13:50:21 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-92e6b97afe7so12262485a.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 06:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782827420; x=1783432220; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EOKJcgnb5KIG7WRtPDHZ60NI1QVvp1pmwCPdue2Coi8=;
        b=F+4y0HptfYv9N82cuWLBEs4OrAs13GzwqoRthbOogIUHhiMAUWbrPjN+wVt/timpKz
         yQjA+jlhQ6de7FUPLkKU4bfQDdkN4kxYHG1InzQuUPCJ6HhbfbEbnsUa8ptQSPKOhdnP
         AaMy/xt3C7OjuLwXX+LVhKMPrG6bI4HrKtA4x1y0w8SN/9NWIOarAd/7oQEOwGWyapaE
         UsN7fEHIeM7TdwIVt7ghLC5IfElXEgNDdQOq+uL+lTSwHp8UWlj3mRlK4pQaPvHrTXDh
         MBOlfIJ+l6Uv2hU/fgnz2CmAGQEUy+JOM9EsCovskkRXCFk+WOkAAjHZ+J+R5D5YbSwv
         90LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782827420; x=1783432220;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EOKJcgnb5KIG7WRtPDHZ60NI1QVvp1pmwCPdue2Coi8=;
        b=DWmiI4Ao5bfj0eJiMzd31OmDk5ei80YRZ9A3LRWjh06CKpjcNEU1HvjwJkJDX1KC9d
         ol2gBDJr1BKwNpZzJxIbccu4ERomfVE8Z22cfiMqg9ashij5gExeR4QT003jJjyZjXFW
         ke1NcQytWeZt6vFQrdQ19imb1wIUQmkhDZaSPEsMsAt43Jcq7v51hd6tqOCDBQus8+92
         wYuvpT8P+ZblqGFh6un1oXXr6fimQahmduKvaM52ekOEk8qjUaIcacpvvwTnsuE4fH6+
         w2svVHkdQEXIXPz+RygiPQyDAyGqZ9DrGnLNQqlxyjJBNWsIe3yyjE/QF7eXIhWIbSum
         f9qQ==
X-Forwarded-Encrypted: i=1; AFNElJ/uU31YaOmgDsq/6xthXVRbCYTvLVxGW2SE7nqv2zXxYDEhJV3NKy7YyGMSbS5wOKM+Rmq26O8yovo=@lists.infradead.org
X-Gm-Message-State: AOJu0YylFNLJ3BprUWPTTakorG4NlK6yYZkTgSf9f2LOy1/V+4rCmFRN
	sTwDnUxIA4q9dURwaJBoE92S7bW7qzVZ/Lo7+FAW47zjlYwODS1ywy+/68ceWslPfH6uej5fMsR
	gX2y1UnKO3tydS5A6gG7fmxdMJJXM9ndVamNsutqgzbfnOlfUsNWOmuSfolHzeYr3p4mZ
X-Gm-Gg: AfdE7cmgQY1UANcrd72YbuwH8URLZM9Kkzp7H5g3rNDGdEn6DxlUD35YANn1qUc81P/
	kaVTTCbrz3HQjuUSaEBoWEVTcv7sI1sUjuILewO1sxJNFiWXnAh/HOu4VUuBMJLbnSRIZtFC5hK
	HwTedJcqPmGkNOobYNUFDRxlvkZaE6jzGiUWWES68xCywhX4EH5tOZZVeMj5gfYXDl2PVM1EydQ
	ca4qDms3lCcuF2GBfCyxIF5cHo38o1tGOdDoa0ufgkj4KYpitv1co9gp8ij1wTnQ3w+SA2khZFs
	SB3ZdxghmPG3xJZKU/G6n1epGH/qkbZiOPbtgQDwcqCuczSHgclJIvJyRvsGULyLBRQwDrtsl3Q
	HIy6LqPjNxxzALCxxeai92gtZO8gldBrbZgk=
X-Received: by 2002:a05:620a:318f:b0:92a:228:1bfc with SMTP id af79cd13be357-92e6261ff87mr418510885a.2.1782827420514;
        Tue, 30 Jun 2026 06:50:20 -0700 (PDT)
X-Received: by 2002:a05:620a:318f:b0:92a:228:1bfc with SMTP id af79cd13be357-92e6261ff87mr418504685a.2.1782827419677;
        Tue, 30 Jun 2026 06:50:19 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1288f0d68asm131816766b.31.2026.06.30.06.50.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 06:50:18 -0700 (PDT)
Message-ID: <33c74e59-076a-4877-9e62-83a8ebbf2d54@oss.qualcomm.com>
Date: Tue, 30 Jun 2026 15:50:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
To: Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        sashiko-reviews@lists.linux.dev,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>, robh@kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        vkoul@kernel.org, olteanv@gmail.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
References: <20260513042836.073F9C2BCB7@smtp.kernel.org>
 <t2sw6owdxy5iyodjqsldbw6bfaqnezhgvc4hhylxuyrrbjkjto@iwf4dr5nmot3>
 <20260513142936.kauwa3czigfs7qs5@hu-kotarake-hyd.qualcomm.com>
 <0ac665bb-1a21-4077-aa9e-97162f7f4784@oss.qualcomm.com>
 <20260514103918.cs5m5kcxcrcgukvx@hu-kamalw-hyd.qualcomm.com>
 <obdxony34ckfbtsqj66siszw44sgieskcye5hg66ulkisctpwl@fyqczpze5tnw>
 <20260518114927.edxbzvklqatlntv2@hu-kamalw-hyd.qualcomm.com>
 <CAO9ioeVMieo8HtpRw+n4ZU9uV-_RQM061q5XfAA1Dtk2fnp4+g@mail.gmail.com>
 <bvankzuazswuigrm7hvyjqigzfaru5o43wi3zvyphgme2pgqwz@pyspqky3u6cn>
 <5idu4ljmcvcvzqsr5g73h2roxzs36l6xxc5ju6ovc5aitt3gx4@wmfqueyf2rj6>
 <20260630124220.4lja4zshpf66kwj3@hu-kotarake-hyd.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260630124220.4lja4zshpf66kwj3@hu-kotarake-hyd.qualcomm.com>
X-Proofpoint-GUID: W39eDlS7IKQHrBCHjnwoO3ckk6IHmZmD
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDEyOSBTYWx0ZWRfXxblcO02LJiAb
 Tdh0P10EnpTg8yppgIDSDaSA1IoHsNlSEHdXI4C4t7Rg4ABmuNdpBELjM1+9UbPybgQDq2JnG8+
 MarW2zwHQeP0ByE2wIeK9HtgLVcoVHg=
X-Authority-Analysis: v=2.4 cv=JI0LdcKb c=1 sm=1 tr=0 ts=6a43c99d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=rAtRr1t42OMwFRgtCCUA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: W39eDlS7IKQHrBCHjnwoO3ckk6IHmZmD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDEyOSBTYWx0ZWRfXyG71uizhggUE
 k3ArFuzPvajypQsqQLvO3Soo+EVAr/f5sj00QzAW6oMo75KjK6WOducn991OWpXn+YCH+Ut7K/X
 6BXgT7cWt1RrTIyAMdk462f6O2XQstGeoTQ1fKhKSePd44awwTsq7th3Z96oRsOY3bjQhWxBiWr
 g+i1RGPtG657QaMzVk+5N3d+nHk91bsni7GiKQlaq4XZAMUepH7USWYv/QqYGS9cpveyN078NIu
 tO90+O6NAyfJaELcl4oJQceaOhJgTKRJjJEg7cf+jJOp7zccAQR620qIOzPGOjww6UVBRr689MF
 9gItjSkHdd/3BmZWpniQuFoIlzpanvKg/UXCxajDcJJnNQBikHZF1pIsaTmYNYmgZ9uo4GGA8Y4
 sQqjj0KP6QLQ+TqZFqnFO9Ca+fIHcN9OFc415yjvmEy/+S1pWQ/lt8Q9Cj5n5ZLLi6wBENd640g
 KHVXiQyXTwerI4ew+kw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 lowpriorityscore=0
 spamscore=0 bulkscore=0 suspectscore=0 malwarescore=0 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606300129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_065027_693931_D17C5F36 
X-CRM114-Status: GOOD (  26.78  )
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

On 6/30/26 2:42 PM, Rakesh Kota wrote:
> On Sun, Jun 28, 2026 at 03:33:23PM +0300, Dmitry Baryshkov wrote:
>> On Thu, Jun 25, 2026 at 09:11:19PM +0530, Kamal Wadhwa wrote:
>>> On Wed, Jun 17, 2026 at 03:48:14PM +0300, Dmitry Baryshkov wrote:
>>>> On Mon, 18 May 2026 at 14:49, Kamal Wadhwa
>>>> <kamal.wadhwa@oss.qualcomm.com> wrote:
>>>>>
>>>>> On Sun, May 17, 2026 at 08:18:15PM +0300, Dmitry Baryshkov wrote:
>>>>>> On Thu, May 14, 2026 at 04:09:18PM +0530, Kamal Wadhwa wrote:
>>>>>>> On Wed, May 13, 2026 at 06:14:20PM +0300, Dmitry Baryshkov wrote:
>>>>>>>> On 13/05/2026 17:29, Rakesh Kota wrote:
>>>>>>>>> On Wed, May 13, 2026 at 03:01:47PM +0300, Dmitry Baryshkov wrote:
>>>>>>>>>> On Wed, May 13, 2026 at 04:28:35AM +0000, sashiko-bot@kernel.org wrote:
>>>>>>>>>>> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
>>>>>>>>>>> - [High] The PMIC regulator definitions omit their required input supply dependencies (e.g., `vdd_s2-supply`, `vdd_l3-supply`), breaking the power hierarchy.
>>>>>>>>>>> - [Medium] The device tree inaccurately hardcodes the `compatible` string to a different PMIC model (`qcom,rpm-pm2250-regulators`) instead of explicitly identifying the actual hardware (PM4125).
>>>>>>>>>>> --
>>>>>>>>>>>> +
>>>>>>>>>>>> +         pm4125_s2: s2 {
>>>>>>>>>>>> +                 regulator-min-microvolt = <1000000>;
>>>>>>>>>>>> +                 regulator-max-microvolt = <1200000>;
>>>>>>>>>>>> +         };
>>>>>>>>>>>
>>>>>>>>>>> Do these regulators need to explicitly define their input supply dependencies
>>>>>>>>>>> such as vdd_s2-supply?
>>>>>>>>>>>
>>>>>>>>>>> Without these properties, the regulator framework might be unaware that the
>>>>>>>>>>> PMIC regulators draw power from upstream supplies.
>>>>>>>>>>>
>>>>>>>>>>> If the kernel dynamically manages the upstream supply and its reference count
>>>>>>>>>>> drops to zero, could it be disabled, causing an unexpected power loss for
>>>>>>>>>>> downstream components?
>>>>>>>>>>
>>>>>>>>>> And this is a correct comment. Please provide missing supplies.
>>>>>>>>>>
>>>>>>>>> As per the Qualcomm system design, the parent-child supply relationship
>>>>>>>>> is managed by the RPM firmware, not the Linux regulator framework. The
>>>>>>>>> RPM ensures the parent supply is never disabled until all subsystem
>>>>>>>>> votes are cleared.
>>>>>>>>
>>>>>>>> How is this different from other, previous platforms?
>>>>>>>
>>>>>>> This is not different. In the previous platforms too this is taken care from the
>>>>>>> RPM/RPMH firmware side, the only case where we may need explicit vote to parent
>>>>>>> is for non-rpmh/rpm regulator rails (like i2c based regulator pm8008), which
>>>>>>> may have a RPM/RPMH regulator as a parent.
>>>>>>>
>>>>>>> Even on those previous targets the parent rail of all RPM/RPMH regulators are
>>>>>>> internally voted by RPM/RPMH FW at proper voltage with required headroom
>>>>>>> calculated based on the active child rails. This was done for all the
>>>>>>> subsystems (including APPS) regulators.
>>>>>>>
>>>>>>> So no explicit handling from the APPS is required for parent supply.
>>>>>>
>>>>>> You are explaining the driver behaviour. But the question is about the
>>>>>> hardware description. If there is no difference, please add necessary
>>>>>> supplies back.
>>>>>
>>>>> I understand your concern about descibing the parent-child relation in the
>>>>> devicetree, and given that we have been almost always followed this for all
>>>>> the previous targets, it will expected of us to add them.
>>>>
>>>> Yes.
>>>>
>>>>>
>>>>> However, we want to avoid the unnecessary access to the parent from APPS.
>>>>
>>>> Why? What is the reason? Do we want to do the same for all the
>>>> platforms? Only for Shikra? Something else?
>>>>
>>>>> At the moment, I do not see a way to avoid that, if we add the parent
>>>>> regulators.
>>>>
>>>> That depend on the answer to the previous question. In the end, we can
>>>> make the driver ignore the parents by removing them from the regulator
>>>> desc.
>>>
>>> Ok, this seems like a good suggestion, so you mean its ok if we define the
>>> regulator desc's supply column with NULL? And only keep that in the DT?
>>>
>>> you mean like this?
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/regulator/qcom-rpmh-regulator.c?h=v7.1#n1453
>>>
>>> (please let me know if i got that right. thanks)
>>
>> Yes. Don't forget to explain in the commit message, why you are doing
>> so.
> 
> Currently, Agatti uses the same PMIC, so we cannot set the driver
> supply name reference to NULL. Since it's an older target,
> we'll need to run a regression before making any driver-level changes.
> 
> Additionally, the child-to-parent regulator ganging differs between
> Shikra and Agatti:
> 
>  - On Agatti, l3 regulator is ganged with vdd_l13_l14_l15_l16
>  - On Shikra, l3 is ganged with vdd_l2_l3

Is it configurable on the PMIC level? I was under the impression the
supply maps are fixed in hardware.  Is there a chance the agatti
description is just wrong?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
