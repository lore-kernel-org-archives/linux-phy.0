Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89946C87FCF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 17:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQt3dNafLzwJKHSHVo9P4xJ00iO/xc47FSKK0PQxwYE=; b=zGCLx+oDQv7s+Z
	mZ9ZHoOmBXZv1oIxVZlGXB3PT2q9CoZ897dUm2OLthwOFds1DEGB/WyfBnekY8m7DXLhMwojDTvfD
	OmXsdJYQsUUyyTIWWEZOQEKAj4//lYtqgMftTzSmINFOVj9JVODZdIzMS9MAxyFWa7I7h4TYsNDyA
	GQkC6KS9DMxdtmOnZ1ifSoMEoL61Q9cUkT5FTTFX9bOrw/rSgirzDC/xO4Blvsp1GxaBGrkmj+5KJ
	HE1CoeI7ffgI3Y5Ri5TCl3dvRa79Kqx4qxsIX9Ru0ziCJ30CX3v3EgoOV3ztN5F326lvJ13xvN1mH
	HkD6mb0jNrx9F+P/fsFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk4eC-00000001GN1-13zI;
	Thu, 07 Aug 2025 17:43:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk4eA-00000001GMD-18Kt
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 17:43:23 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5779CtVc017929
	for <linux-phy@lists.infradead.org>; Thu, 7 Aug 2025 17:43:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0Od/ZKluRoSM/BcGXTLmoioXy7cALgrxeTgJ4Ai4K8w=; b=ecyrRxmUU6zl246I
	xFMYsIP5eTH0gyle1zY2TSg4SMK7L8ER11a4Hf0d+T98Mq8mKSPk1Gi3P4tCcfF2
	ta/mnuwX/6ZqozRGC+H+qgj1oUxaTe7+nSXBXOaRRtJzHw1GZj8w/8ZSDJMMb4E0
	LRmJFUp99QFWF/WGNA27dGNxG5ylYquypAi/9bukp5XneZcn2l31+dm5XM3TkT//
	7fYK3tq2MHI9ePNFswCvpIWXxvBLSjUN6h7k1sUZ2lEHL5P9ALpeAiFWtsQH0yPa
	RcmpezzArzg+ahXFC1PlcSLW9rxawZFeOisOErFmiThOBFBFq9SOJPkFqCXsAPC/
	+mz9Hw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48c586cs6j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 07 Aug 2025 17:43:20 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4af23fa7c0cso2812761cf.2
        for <linux-phy@lists.infradead.org>; Thu, 07 Aug 2025 10:43:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754588599; x=1755193399;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0Od/ZKluRoSM/BcGXTLmoioXy7cALgrxeTgJ4Ai4K8w=;
        b=ugt6MYiH6X2v8hrUVp3IkEAO879eiJ2VZ6vF9t5hswg7ACp2KttxvL3O0sQ+rKOB/S
         mfxwq4Tx+gWk62utYKpm+ejJFU7f6HDwtSXWyr94M87yWvITUl+jkX2tEeTtC4VExsyk
         +jkHUTl7AVa2944QQBxK0UOgKr80JWg7OFONnzl6ANW1NfD3ZTl4BMAn1CzvQbPs/xZt
         2neai1B/NJXNezn7cDhHrP6M5Ajge++wC3i1F1S73k57q5GfESQL/c6WOp3lrnmhCcgN
         lMPFg2e01H0ICjo6Iq7U4Rz5pswCaT2/j2zvqB56tFFWOMcYB1uXCI7wxbJk+cDPKHHz
         uesg==
X-Forwarded-Encrypted: i=1; AJvYcCWhQ4per+CvJgMlih3tb9Hlc91rd2z0hGMaJcLQGTGHAmT0YAjDUybfIOfuG9c2m/e/0oY4I+0QG3A=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcLGUP+u2cug+BbWLzinoeO5ZWt22i9Az7Z2mOz/IoG0vv/u81
	G+jMuQIt82lkuEwFUr1IAv4p7WN1794P0B3o+K3SnoEhW/JgEN9bUBrOhq5wRb8SNGKCysf2996
	JtRYolXvvRvG7a5atZ1dT+P45W+1HpDkH/Bch7N7H+MzAN1hE0aov42ERDjIiLEEWfNSx
X-Gm-Gg: ASbGncuzA9m4YvNvxpMJQkQRW9uxj7o4qH2WTke1j9syqF+ZjkpzSs8mFag2iuwvD5J
	TSm9zOAV60GqFmPfmbV9KwG3IcosTfnpsljNf/71zuy0XaVARfdca8ON4YlC6+p9Y9sRBQvJopF
	SGH3fuD2eMtOMEamf8oh8tZeH2bgKySGdPf9QBPDSoCfRv/OJntt1F8PEEyoc2ro9T01v06iok0
	8eJPL+tlp/TpiFLDBAYECvrVTyK/1VXKIEvr1/9QXXi6zUszlegzwxvPIrukYAHVuVvb0Zwvsah
	kCbAJdzplsU+lFZ/PsaTa55mSXVsoti39Ag2lIeVadtrhrQHrTKFnKCPhkgHG+jXPzQsOqrjap1
	M/9oPXhvN0X6o02qZqw==
X-Received: by 2002:a05:622a:312:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4b0aed0af18mr1366111cf.3.1754588599017;
        Thu, 07 Aug 2025 10:43:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHLFzrAlG05kU0lQgJu60RCziGvOVzGLUIw/jn+UFlM1u+n2p8sqqoxnN8rbCSwb2mMlHI1Q==
X-Received: by 2002:a05:622a:312:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4b0aed0af18mr1365771cf.3.1754588598476;
        Thu, 07 Aug 2025 10:43:18 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af99604e648sm347662666b.6.2025.08.07.10.43.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Aug 2025 10:43:17 -0700 (PDT)
Message-ID: <8c7f8cfc-2090-449e-b6ec-688a0021bac4@oss.qualcomm.com>
Date: Thu, 7 Aug 2025 19:43:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
To: Mark Brown <broonie@kernel.org>, Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, conor+dt@kernel.org,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
 <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
 <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
 <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
 <599b8a4b-324a-4543-ba27-0451f05c3dfd@quicinc.com>
 <3aa82f65-4812-4bf0-9323-96f40824a004@sirena.org.uk>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <3aa82f65-4812-4bf0-9323-96f40824a004@sirena.org.uk>
X-Proofpoint-GUID: pzMHTxOry0TI1WHM5X9C95bGh9fUCeI9
X-Authority-Analysis: v=2.4 cv=MZpsu4/f c=1 sm=1 tr=0 ts=6894e5b8 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=lkdlCDLHdhMUbxeqZWYA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: pzMHTxOry0TI1WHM5X9C95bGh9fUCeI9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDA2NCBTYWx0ZWRfX425IeeP3TBSm
 ljBrlExu+MJ7QqdHm0qVEJOEKX+DZtbsfObMniNTK0J1N/eth0kpAGlYdPvQCE2Tc5a4/Wk/SxL
 EGydOOWGXfEHoxvbTFsxhjgjfkJ35j8M9G5ExazlBCD2jwUXlJRJqyUE93jyXkGjlY/6HxL7V48
 M26UgBDx/thp/v2wxvwmyPAoZTN62B8WJpB56ZxV//CGy4LI0RzDXUEnZtLAdVDbf9X1npdm3AN
 CZU/8BF0Dejk6FnsJhaCol/cs+1LJUx522MjB1Zcs+dSmdMvPtiM+Qnd/y6aTKVvlaWbuP0lwfY
 LOgXTW7JhBDgr5pe3oRrbaAFcrPixxq8sV3+B6F5olUJ8lak2yXriu0ZXWN+3FkAoqUbmbu7ZCA
 TvNMDITc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-07_04,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015 bulkscore=0
 adultscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_104322_437751_9582EB0A 
X-CRM114-Status: GOOD (  29.92  )
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

On 8/7/25 7:26 PM, Mark Brown wrote:
> On Thu, Aug 07, 2025 at 09:12:53PM +0530, Nitin Rawat wrote:
>> On 8/7/2025 7:14 PM, Mark Brown wrote:
> 
>>>> The intended use is to set the load requirement and then only en/disable
>>>> the consumer, so that the current load is updated in core (like in the
>>>> kerneldoc of _regulator_handle_consumer_enable())
> 
>>>> My question was about moving the custom parsing of
>>>> $supplyname-max-micromap introduced in this patch into the regulator
>>>> core, as this seems like a rather common problem.
> 
>>> Wait, is this supposed to be some new property that you want to
>>> standardise?  I didn't see a proposal for that, it's not something that
>>> currently exists - the only standard properties that currently exist are
>>> for the regulator as a whole.
> 
>> The UFS QMP PHY driver is not the first client to use regulator_set_load or
>> alternatively set load requirements and invoke enable/disable or
>> alternatively
> 
> The issue isn't using regulator_set_load(), that's perfectly fine and
> expected.  The issue is either reading the value to use from the
> constraint information (which is just buggy) or adding a generic
> property for this (which I'm not convinced is a good idea, I'd expect a
> large propoprtion of drivers should just know what their requirements
> are and that a generic property would just get abused).
> 
>> These drivers also define corresponding binding properties, as seen in the
>> UFS instances documented here:
> 
>> UFS Common DT Binding ((link - https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/ufs/ufs-common.yaml?h=next-20250807)
> 
> Note that that's specifying OPPs which is different...

The microamp properties are in the top-level, not under OPP if
that's what you meant

Or are you perhaps suggesting that any device requiring explicit
current requirement settings, should do so through an OPP table
(perhaps a degenerated one with just a single entry detailling
the single requirement most of the time)?

>> There was a previous effort to introduce similar properties
>> (vdda-phy-max-microamp and vdda-pll-max-microamp) in the device tree
>> bindings.
>> Link - (link- https://patchwork.kernel.org/project/linux-arm-msm/patch/20220418205509.1102109-3-bhupesh.sharma@linaro.org/#24820481)
> 
> That patch also fails to supply any rationale for making this board
> specific or generally putting them in the DT, AFAICT it's one of these
> things just pulled out of the vendor tree without really thinking about
> it.  The changelog just says the properties are in downstream DTs.
> 
>> Currently, the regulator framework does support automatic aggregation of
>> load requests from multiple client drivers. Therefore, it is reasonable and
>> necessary for each client to individually communicate its expected runtime
>> load to the regulator framework to put the regulators in current
>> operation mode.
> 
> That doesn't mean that it's a good idea to put that information in the
> DT, nor if it is sensible to put in DT does it mean that it's a good
> idea to define a generic property that applies to all regulator
> consumers which is what I now think Konrad is proposing.

Yeah, that's what I had in mind

I was never able to get a reliable source for those numbers myselfe
either.. At least some of them are prooooobably? chosen based on the
used regulator type, to ensure it's always in HPM..

That said, our drivers cover a wide variety of hardware, built on a
wide variety of process nodes, with different configurations, etc.,
so it's either polluting the DT, or polluting the driver with
per-compatible hardcoded data (and additional compatibles because
fallbacks wouldn't work most of the time)

Konrad 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
