Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51770CA5FC5
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 14:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s93oMRf6ru3ZlXiOB58UhWfn7wnBWYJmY5aM9oLSgVs=; b=u2A0Pl4KsTE6I5
	1wpl+hR3OLRQ+SsCfnbPKeilHyawC1nvUu1PnTpprYQIiyvFGpn2gblzD6s0lLX0+vZi1/xMPbUJA
	i6KKX+1JTo7jjvVUvvPzfCLwldjgslD7Dhvgev910xXJ/s8UoOJyUH5zKxFKVHltVqnv/d37wvQP0
	UBpxVj7aO2/sniMBb+N81/xZ/+MHb+ANAgwHIOqsxCFmuLg/rQQtkkEbBmaXpKAnTYj1UvB6/P/ii
	atGbgcdD7ksbyNBI1sQWWpG/oq0P/8J601EiJ22Nj2chgFFxf5ToHYLp7Q92lbtuFDrb1FAR1A2va
	RVCjPBDaCBEA9WqVxRDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBvDG-00000006J37-3z2M;
	Wed, 30 Sep 2026 14:23:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBvDE-00000006J22-1JnI
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 14:23:14 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68UDxq0C3063759
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 14:23:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+dKTowMYQvfYuqv4dK+vY7KJhOttZlfJWenJ4O7Vbwg=; b=H/E9aISuRD3tFJVR
	qXrqYGHMnZllbufIOsN6kXaaMCcijMS1AzFmhsqdGj4IQO56mGauhv1F+RmxtXsR
	6Dlaxaxqlv/ZO3MKu4FAqCC6a7DXXU5KC2UHy7EmxDEb1tnCPD/33gWsaFOABArq
	RVM0IhjZwXPLbrwRvz/d/3pLZp9lnpGlb7tw+8G2tpsuMu+/O0JvvwymeUKSET3h
	S4CEUYbGLCN7fWtTq4BbuMShzVpWz96zqPQdUdu75yuQpgSh/Z7RaZyNNlO4QP5C
	t+SCOr+Mucb53mApRhMb5WTMqMiDBH7ZFjDEumy/yGBbSeH7ua+Zkl7f7ZvrMDvh
	4YxS9Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h0smjjyme-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 14:23:11 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2d6f75c1219so69295145ad.3
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 07:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790778191; x=1791382991; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+dKTowMYQvfYuqv4dK+vY7KJhOttZlfJWenJ4O7Vbwg=;
        b=GWp+hStK50epDy0FzvGsx9V2gU8CQjV7xxn5L1y3v2Az4+dacV47eYxm8J+Lb9dus7
         EbxtgEf7VczUhnPvCTDgT+262OrD/yw9uaELyjGNf05Pibgu7FYzQ+pBAAGkcXTah/eW
         pUghq/aue92EGZKHyheut4tZ9IboxuMX9H8Z3UfcXZVTZAQSBz5x37l4rWVx8Dh+yY1P
         CLu9xV98V4frvJzN6p/v5Y2uS7abRsuG31svEIf2CvE/y+QJO4nwZ4Cfyf+I95icGhXR
         Saw+GpBm2O0rmxyweJ+wOTbniUW9MY/NAR0OmjVMUCTFMtOdZFI22jHAA8iOX8uEyiAX
         RJWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790778191; x=1791382991;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+dKTowMYQvfYuqv4dK+vY7KJhOttZlfJWenJ4O7Vbwg=;
        b=VoDsuXKRpHFvmK3L56kuNOV3whfIvZkVnlZlKoNsGLuSqk9x06T4J5hWUVXboANzaR
         j3lz7UZao7aJHG5Q207UYaPICHSgBYcFBye7Tu/5/E6aPQWRWQIffwDxossMD+lyZ2Bv
         BbadVZHo9Vu4qgV4DRTRVIPutfF3wa2NU+UEuwI1Re1KFS8xW/rtj9oEF0JhEFW0kxJj
         e0+DmbYtgVZAf3YWPkIFMFOo2L0yE28gHdBm5rhl0fPoLPvmNTNMEeJv84j+mg6A+UFg
         i4WrOpWU9HWTC3kLu/nUyOj1cm6XWZ1hEuEtWAvp/kaSLvgSXJbXMkf+05naI2cijv8+
         1Fdw==
X-Forwarded-Encrypted: i=1; AKwUvBznjiZZG3saAxGCO1KYXpgu19enh19udaSi5+XL+Jbs9aOMUMs8xVlIV7bnTVmt2n7IYIsD79w0pqM=@lists.infradead.org
X-Gm-Message-State: AFq9FYI9L44KZWi/2oqxxHNA/Wg5IEMCjE74/byRYdYMac1BtOkI+TZG
	RKRufEuV+xvPCL4SFwYPXGm04eO8HCQbsK3fq7yGkF3baY0RDQnzgOj4HK4n8IKoTNt9bCq6vwS
	FxsBzzO/RK7cb7V0O529LsBBm7/DvTft5wipO/cx3suqZl+Q5dUUES59qQaljMfAvLSepn0RnAy
	u0
X-Gm-Gg: AYBFou1YhKvtUdZXQCXqdqI3vTm/TbsYZG5sg5s3Et1saIhVaniADnRDbf33O9AnGY3
	KiMjOmc90ylpD7HIH6xXAqjAK8b8pqOd/upBAcW2CnyPdkHXwgziSkmk8MaJwBuJABUS8T2kjnB
	cFyznROSu938p4Y679dTuttYB/t9RjY+Zs3PMohHinl07hn6nB0mwgft7H5F5B2wlXcOysBqpMK
	a7Ism1uURCd2qZBaYyqIC9VjQRHCif9aQ7+FnI4DODHu023Ws6ZMpM6lBhJm6enWlRkq7u9Qn6M
	Bw94/SvAWBmivCCFRLANKDHSFHX71eIxB4JFC97HQKyvigeGZJsIgUpLkMa5SCxCbwP0F8nt3L4
	p9E1l3oep/zBxPXRf2neUCVB7FJKJxy1CZ8aOCYIGpqa5xQeQrhWdJsTwiREnhVU=
X-Received: by 2002:a17:903:32c3:b0:2df:964a:fd42 with SMTP id d9443c01a7336-2e2e4b5e112mr12495895ad.38.1790778190994;
        Wed, 30 Sep 2026 07:23:10 -0700 (PDT)
X-Received: by 2002:a17:903:32c3:b0:2df:964a:fd42 with SMTP id d9443c01a7336-2e2e4b5e112mr12495585ad.38.1790778190243;
        Wed, 30 Sep 2026 07:23:10 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.161.217])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e2e587d2desm8727315ad.12.2026.09.30.07.23.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2026 07:23:09 -0700 (PDT)
Message-ID: <cc620871-e6cf-44a4-8026-ff42f35efc15@oss.qualcomm.com>
Date: Wed, 30 Sep 2026 22:23:05 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17 11/11] arm64: dts: qcom: kaanapali: Add camera MCLK
 pinctrl
To: sashiko-reviews@lists.linux.dev
Cc: media-ci@linuxtv.org, robh@kernel.org, devicetree@vger.kernel.org,
        vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com,
        neil.armstrong@linaro.org, conor+dt@kernel.org
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
 <20260928-kaanapali-camss-v17-11-dcf3fd37f76c@oss.qualcomm.com>
 <20260929060743.537E11F000FF@smtp.kernel.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <20260929060743.537E11F000FF@smtp.kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTMwMDA1NyBTYWx0ZWRfX8CkaQPPSbrd/
 CfKGlKn2CvJolYMpf4o7ZxOc9i3iQDTIWOCUJDFMrQQQlmnYdH2DXkRDF6bNT4DmFhjbaNef132
 wCGVChamX//CRvRFkJc995ng1/tbVW0=
X-Proofpoint-GUID: t44hsFZ6Dz0Lq7Xgw3zbMe0QKCtxUpJd
X-Proofpoint-ORIG-GUID: t44hsFZ6Dz0Lq7Xgw3zbMe0QKCtxUpJd
X-Authority-Analysis: v=2.4 cv=KfxHIgYD c=1 sm=1 tr=0 ts=6abd1b4f cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=K/RrOd38U9TixX+j9hIN8g==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=dezkyaf-IGWI9O4KkrQA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTMwMDA1NyBTYWx0ZWRfX75DDezRVM0+A
 hyKEe7pGLziy7suRWHS+xCWe4qS4rK2b0YzIwYdTfER0On0doM/TvjlW14U2HhwlIz/TYmPMi06
 jJlRB31ZZ7MbAUB1NjDnTShDJsjXB7u59qtNvqKQiL96CA0+JMmxyRy7r+X45xdnFkbyiDZ1fPO
 jGiHi3RxaTXE8biEhxHSxDbn1Mq9Nq+GnS+ybhwT3epqSU943p4IXzX9BmWEuower/TI+DUDhg7
 n606jm8NFacZQAOCKczCDtxzjf/Ojip/zadaPKLMaS8lWcClz419+nXtFg1pO3Jkf7ZU7e0fvpx
 Xvnk0paMj83prnMPCsqPvARks/u9aQ5QmM7IBTPm2jutim1B6T3qyiZJ8a7+O9AXbwuVuI6zaK6
 jQ3P/J9U3hyxPyXsNkXk1NwH5qx63VGtWtEPg/s6ufjQN5v4JnhGTuE8CT1QGidAUo1+cDBi228
 6YQUrP/Qv5YIr1aIlzA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-30_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609300057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_072312_783879_8D1D6766 
X-CRM114-Status: GOOD (  15.92  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 9/29/2026 2:07 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] dts: devicetree node names incorrectly use underscores
> --
> 
> commit 185a6cf958fbea99362a9e2c9f3989dad4362d3c
> Author: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> arm64: dts: qcom: kaanapali: Add camera MCLK pinctrl
> 
> This commit adds TLMM pinctrl states for the camera master clock GPIOs on
> Kaanapali so camera sensor nodes can select the proper MCLK pin functions
> when enabled.
> 
>> diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>> index c19945bc438eb..bbcd5a622f0b2 100644
>> --- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> [ ... ]
>> +			cam_mclk2_default: cam-mclk2-default-state {
>> +				pins = "gpio91";
>> +				function = "cam_asc_mclk2";
>> +				drive-strength = <2>;
>> +				bias-disable;
>> +			};
>> +
>> +			cam_mclk3_default: cam_mclk3-default-state {
> 
> [Severity: Low]
> Does this node name incorrectly use an underscore instead of a hyphen?
> 
> Devicetree node names conventionally use hyphens rather than underscores.
> The previous nodes like cam-mclk0-default-state use the correct hyphenated
> pattern.
> 
> Using an underscore here and in the subsequent cam_mclk4 through cam_mclk7
> nodes will trigger dtc style warnings (node_name_chars_strict) and fail
> standard devicetree style checks.
> 
>> +				pins = "gpio92";
>> +				function = "cam_mclk";
>> +				drive-strength = <2>;
>> +				bias-disable;
>> +			};
> [ ... ]
> 
Yes. I change original names to align with Glymur style but makes this 
mistake. Will fix it in next revision.

Best Regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
