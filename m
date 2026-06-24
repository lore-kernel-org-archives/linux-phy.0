Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68248CDB479
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jun 2026 13:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/pzJidN1Pb4E4ZhO9Yse2LJAe+dzZa9jkWA7LEXgRc=; b=3lslv7/IzJVVAN
	16BrFHE+8j9RRpB9v8dvRkCBTrTGOJBfibYt3AAxDk/cOCCA9rXNG+/kU6+HqljUW8I2KYN6bzW6F
	tAqgNK358FBT/a3rV3PWMpRE1VhduJRhrTqNW0MmXm2FSnBdOuVwVZxLX2y0D13tqWdPpolANJx9x
	2sYxPAN9PVOcBuBG8S6C7DninxEks2v/a7AXG1UyS9RKWHiqyaq6sfpKXyQuXiVGT40Y2ltiDzXU+
	XpRMsVJRntsZoqJf9G5VTmccRT5ADdXrLTsbX60BnBL/ffbjmaQN0tWz07Yn9iZGEh770rHNZlA2S
	4n+lJcz7veIScWAjt2Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcNeG-00000007p5w-0Cdm;
	Wed, 24 Jun 2026 13:28:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcNeE-00000007p5X-1NLS
	for linux-phy@lists.infradead.org;
	Wed, 24 Jun 2026 13:28:11 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65OANana2583046
	for <linux-phy@lists.infradead.org>; Wed, 24 Jun 2026 13:28:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cE5e32Jq9K4Qp/o2vpwbsBEqdWa2a4rwdZ6gyyitcTo=; b=iBbDXkocA62hP9V7
	NbHB4LoFdsZiL2otz5aw3jzwrXx36qQLZWf7/vqCY2x8+EXDDjspyiW0lzLq2L01
	qNSr85lYtheKTlkoJtUG+w3EzA7m6cfsmzulBKT2E5LmCqdrgH4An3LKSyP66mtT
	WkyAzW5uyKBlbeXGzIG6s9lljBO168d4nYdQOPT65UjWBoExCYDVOmj3ZzJXjhd5
	o6uAbLx74k8Zt872yfh+XavqcKECFWsHcbWTw9awIb+E/jWYgjAkEXzTbBTiHBiy
	Yv5LyOxJqzMm5kaod/XTqQrkm+Wd06p4uZVB3OIIR+FZ9zfT6edBhphdVHYrb0ZF
	1VP3hA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f00evb9qh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Jun 2026 13:28:08 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5177b12d7bbso2146761cf.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Jun 2026 06:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782307688; x=1782912488; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cE5e32Jq9K4Qp/o2vpwbsBEqdWa2a4rwdZ6gyyitcTo=;
        b=ED3SFWUz0dHDiK4yNDjTpJyl4IFlHLMv/zR8Dm7vTk9Wk4bXATgs/DSP7hAq8Jw6l5
         GKLNCtV8cON/XP50Ee4hdoH84jgVIucdRL+rwIzuNonaeN2mYnMz/r7Agfn6uwqSx1M8
         xFvaUSOmiWuS3hcvBtHfzuKpiLesk7y5oU9APfPPafRkEr0fhMHZZhr1GBb9TH5RhB7P
         6IhgCgcodIP7LVGKZ+e/i+oQKZjF0AS4hxuH5zzsxeUPBKDud6ai2uJ0N3FOx/YPHJ7D
         2lbMn7U8fbRIJGAHgOtsLNlFvdHWfC+J4gBL8EkNUB78AOQt0+pSh1opG14CWEjC4Qg3
         Ao6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782307688; x=1782912488;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cE5e32Jq9K4Qp/o2vpwbsBEqdWa2a4rwdZ6gyyitcTo=;
        b=bpJYsNpE0QBtspggy0Lfbd3PaktJQZFwyAoEk9dJcLpnnjJF2SyjCoOnAHfRehLyo2
         vRkBOvqRCY75lABXXrZKBzxg49CC98h2Fh0NYFx35vIfgTEBlgEgp7ozdLntwds/YIOr
         jvt4wwFqzFw8LsmbQWRD3XlcjDjjhKQgSX+K/Eeq0748lS7Tx9fdSxIZH2Nw0vNhWj6q
         gTUB72qNLoAs8J8iEwwTH/iFtDA51m4r39apvMDx3Ne4kh1bmW5I5So/FN/bZ6dAVAGT
         /7p6x3VXw7plV6iZ8/MGPh20H5AJKB6V866E6+hwJlS/CI4u3+rLF0vZAaEgE+c3jaBL
         f9dA==
X-Forwarded-Encrypted: i=1; AFNElJ/wykSTcJdw8wLoibCFFWjeE0OElYqGgQLn366N1ot1DsB651XuD3SUzXOMJWus5cNIjmz9lU1O6UA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/u2sx7/MfDfj7XckHa/hpySDGATT/lFcVfbrAfwe6/Qe1jgh2
	8z/a1m2KZzB0sGF7Lda1HgV8pVPorj/9sgdYOMKg9/GbHEhD7pnZF8BRrM00kPH7LZwRmRXTyrK
	VaK7GxBb3gWKq0kWWsFdEUj29Nlv0IXBu+xj3GXN/opHQyVNSXp95J6dEOBGa7icK55yy
X-Gm-Gg: AfdE7ckAA51TGOT4qHyxMkYxyinW+ZEfPQkGgxrviJj3RWTgrWtUQ+NavZc+nL7HfaE
	cYV+QXvPR+A6MIYyokKD/d4qv13cOTNVlMtT7W3wMtemoRH4jl1671vFzx/sDSyaa7hwUfJWDqT
	L7NjLquIJfmzEpiuSzA04EHNElpe0uYGpdnpWR0OVU/1/fp5ScrOsxtAzS5XcdboCQ2CdqQZAur
	AUxwkmRgIinSELIUBeVnm8cns+pp25gvfHVyVNaSKxmGgdNj5fSJTpvbRP2VMzFDBCghVplHKm2
	LayXTVtIqwSpoGB8LZOWsdT98UnTolwMS9QFX/H/Os5G7DpBSSY7dNG00cb64Z7JlTuksrcMnKa
	Wx958HPFOD9u6l+NWVkihUtA7Qdqo7jJhMLY=
X-Received: by 2002:a05:620a:3185:b0:915:8197:4490 with SMTP id af79cd13be357-925c95b2466mr942763085a.4.1782307687822;
        Wed, 24 Jun 2026 06:28:07 -0700 (PDT)
X-Received: by 2002:a05:620a:3185:b0:915:8197:4490 with SMTP id af79cd13be357-925c95b2466mr942759185a.4.1782307687275;
        Wed, 24 Jun 2026 06:28:07 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c0c60ac7c1bsm661168166b.33.2026.06.24.06.28.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2026 06:28:06 -0700 (PDT)
Message-ID: <53cade89-1fc4-4ba7-aa7b-815b9e26d88b@oss.qualcomm.com>
Date: Wed, 24 Jun 2026 15:28:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] arm64: dts: qcom: sm8450: Remove unneeded reserved
 memory nodes
To: Esteban Urrutia <esteuwu@proton.me>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-2-37e2ee8df9da@proton.me>
 <e1e492ab-884e-442b-8410-cc100c54fd5f@oss.qualcomm.com>
 <6123a923-21dd-4f69-9ac5-02165963027c@oss.qualcomm.com>
 <b3541802-3035-40ee-8327-a65bd5d2dfee@proton.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b3541802-3035-40ee-8327-a65bd5d2dfee@proton.me>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI0MDExMiBTYWx0ZWRfX0KCuZ9s0auWV
 +0KfLYHAPQdEH7tGxFL0l3cljzrBeRLacppef9Hgx8TEiEb7zdfx/ZwnwdoLttisW6lZ3pN2XbP
 5Eo+C5kADXgCoEGX/FXLWh0VnDlUBT4=
X-Authority-Analysis: v=2.4 cv=JbaMa0KV c=1 sm=1 tr=0 ts=6a3bdb68 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=oK1bmnR47wnCuWhRGskA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI0MDExMiBTYWx0ZWRfX3CyYQN/FCqru
 Bs4683LF/pEyDYtl1/hLsQ6fJIenFaxkhajKuqbbB3Ts2NEeuEOE4gnT94j2h/v2sPzrvNuogAn
 uoubBNBoWlDPQnRdcSNNZqWgNE/KAOfMUUBaHQZ+EXCHRF3pfD95B2ZBr7HoBHsI5gwM8VWZVzv
 AL7wuN8/SPtawoIOQRLeYy+RKSs1sQz1jABHBlOgG2PHMreqLLqKj9N6Eu1zHyjahKJHYEYm6N2
 PtQGSb7WTb0W5n1qyxoUJ+gKo5s/Y3I2C9zagmjP/s9bkQ0chwnj0CzNA0REiPs6wvn+iBHjUBY
 gBoweZ7iSK+wfPvj4Lig5LYnFPfLLMrk4E6qI16FFIk4rYyn2iTSIUaugafdkOHE/QmATcVgxJ1
 Tk1JRcgFtvnIgBIu97OeuEunw4s48A==
X-Proofpoint-ORIG-GUID: mdqNFRdjeUily8jn47koNhCqd7HY27B3
X-Proofpoint-GUID: mdqNFRdjeUily8jn47koNhCqd7HY27B3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-24_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 suspectscore=0 adultscore=0 classifier=typeunknown authscore=0 authtc=
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2606150000 definitions=main-2606240112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_062810_375678_7750CE8C 
X-CRM114-Status: GOOD (  11.58  )
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

On 6/24/26 3:26 PM, Esteban Urrutia wrote:
> 
> 
> On 6/23/26 7:03 AM, Konrad Dybcio wrote:
>>> This is mentioned in the memory map description, but is not part
>>> of it.
>>>
>>> I booted up a 8450 HDK and it doesn't even have MTE, so it's
>>> probably valid
>>
>> i.e. it doesn't report MTE to Linux. I don't know if it's Gunyah
>> trapping it.
> Then, should device trees delete these memory regions on a case-by-case
> basis, or be left as is?

I'd delete it and reintroduce as necessary

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
