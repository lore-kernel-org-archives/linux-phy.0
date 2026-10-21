Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C20606A319
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 11:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WSlCEKqC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=f33STNS7;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=XcK0r2QE;
	dkim=neutral header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=VbuWY+uM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JH29bK1HwlJ5uNy8SJtBt+adSI3hFiGWP6HblA0LT9A=; b=WSlCEKqC5GbuPM
	To21UNFjjWdt702yUSN2VRFb7frtbHn6gdlpXL1aGKMv6Tu9RofWZ8/toC/9U29UToWjVkcz4oMYP
	/Po3HMom5vVj0XL3cBdKL5rk91SK2WnBPlPeoz83oATsot6F1yKIZOTQrjqAH4u7HWeefnzi8EP3V
	gofuy2uzr5DfKbqgde/Sy+GQbNtfULx6ZsyS9oZ1NwJqgEKkn22vetNf82OeIjgTiCq0by98iMjWe
	0yuUgoLRy9Y/2+13IMnu7AWPGYeui1kXH27KpS41IXNituG/x/GVXw+UQcR6OGB9sJZY+J4hgZFBj
	ivB1fr3NcztZ14IasnBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJUQX-0000000BiXn-3WRM;
	Wed, 21 Oct 2026 11:24:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJUQV-0000000BiXh-1neB
	for linux-phy@bombadil.infradead.org;
	Wed, 21 Oct 2026 11:24:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=ouy+lNJFQV07YpOgTzFfZDe5bIi4Od8Q0LOxRIrmGqU=; b=f33STNS7qdqlCAkxum/j6cWdIR
	DN4fBXlXKYez3x9WjV2XpWbfDfwMb1UuvRcCX2EIhLFwaZNu8yNc6SCwMi153uGdRa+OO5TWZg0CF
	lk9xNvNgVnISqF9hG/4O3O0ULbHPiQB12D6d5F2fLHRNt3nC2Gey5Bcfo+0hXVbtXPGonnokip3aR
	1bP3B4PFZCKqf8kB3yVXOJ0ZVDemt/EPXQxSAwbJg6gFcRcyPSLaHdi+iFNvJVJAqq3qfwwlFDdhm
	b5lhE4/zBUBCmBhi08RQJd9PhOJbl8Xa++NDkvuNO7t2sktTVfNR6GsjQ8aS9naOMtAi8D6sexsaO
	p7M16blg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xJUQS-00000005kCN-0kB1
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 11:24:10 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69LAJTa81422106
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 11:24:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ouy+lNJFQV07YpOgTzFfZDe5bIi4Od8Q0LOxRIrmGqU=; b=XcK0r2QEfl8UDzkl
	K/afw81W8dmX8Xi6An8NA/wlU+g7WBHE0T3PAuo4AgSGg4lT5Tx8AGHtrNLc2vlB
	v86y7yaJ6wOKgfBKIqmVxh6gXm4ibLxaLt3bOSoexMoN6IIxiDrZW+dK+hTzuphT
	PiGjMCHAhGR9rzA6LdQazd/gk5Eshv5sQRM8OhXeClISnXLewDxJLX9/Xl1PKDkF
	hblX5vmd9iNM/k44G5zhOtTZbEO9fzq/U9d2qpdKvdjyaKVQkhcl5sXiq8bFCRZS
	6V0pyiSbJXq+heeDuUHAln0qvBvHC+XaBsFouB5y9myzIx3bo4fVjNapPclhOo01
	icElhw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4heuhug6sc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 11:24:04 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2e9821ca96fso6098895ad.0
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 04:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792581843; x=1793186643; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ouy+lNJFQV07YpOgTzFfZDe5bIi4Od8Q0LOxRIrmGqU=;
        b=VbuWY+uMwZ1F9mxMy0J3WOUVDNFN8pnqm0EPJjXNNg98H9t0Wbr//VxRv76HL/yhMM
         TAV/kXXi7ZeeELZl3r7UcBOLimVezHixv6etJDxX8UO/8wcpMaJyc3NYxR0MgcZ8ck6V
         LaRkTa3GqW3IdERc/JauYGuaLQm1PlXdfjvZf7En1jynlD0siKAAtna4yvZY81eS2ct3
         Qrt7R/LdnhZwVVS67028YvpVoeVsZ/gbLQ0oK1kGu1u6318PKGvCOo2JQu5pB1NZU9Xd
         BFagtWhpwM+ue5r29r/nbmauRjpmv3IHhlGvW5Sz32CaldwumW8NORSr/iIMqWhwD5Qu
         93bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792581843; x=1793186643;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ouy+lNJFQV07YpOgTzFfZDe5bIi4Od8Q0LOxRIrmGqU=;
        b=mBj2ew8txGaX2XRfGHgu5UIFIErsltkntsPHjLgqpwWt8OUsiZr7791feMkXZ+V5TT
         +V9BUrQdmKP009vPAZcOk27GGBkxmPny/kdHLeSpxjK+U2d2wO80RlGp/8YZZ0IVlbbF
         oNgkAhS70Skij7CJnhGeV7ZA04/uDMl67zR+SyeZN6B9uSavmoUKYW/KDvXHUU7ihg/D
         wMnAa7vfeNjGOQfRA6l8grJSUCceqPDWi4IBuz3fUcMKpypiy7W8fLP9sdTz7Aq7uEpz
         Pve7wOuiNeTWKXU8iWm6jZGt0lbBUmeOiJaAAcljAx0sG1PGjFctnBR0rmMvMeQmLgpp
         KeOQ==
X-Gm-Message-State: AFq9FYJ9yvNStFhccDDcAjietv6o6ZuIN/6cm9kA9MisxLp9R6CWHrCU
	YGSFxiijl/slXD1BBmnK8UL0LDYPriBZFPu+jt5KAiRlWNii/0eAaQwDMvryMRPqm+0dWteqLLQ
	5CRcV1ddV9fV5Brp0kcijcjVlu1I8rmfR5lLSQFN8tdQRUzFdg5Agcd8m1JRalvSPDvON
X-Gm-Gg: AYBFou2bzJGupa9lkq56M+KesIOz1dyZHv7bb4+h4uUaujuKUCiPLC7hDbQ/URIk9Yn
	Q1mfoIaWNtxNL+WDzXjHWBh5sKtLlvh2O/k6NMhgg3SFnGl1CMZleHWSCydYy6ix4+Od3L7So2v
	JMpFqjOPtrvJFynuU/zdxslryn+RFmfzLH4hXfXNMe0s0zxnUHTF1oo1sjabdxTpETXnvVLFs20
	D73OCqsnyfm7Yn4hJ/L9yAb/jiZGUzIaEHnOPuChQmpMZdiW+qq4AIHjqCTMm+3JuhPvPy0oScR
	E3SkHZrq0Rmu3eu5Qm3P7VZfbvPOXuTKTYXg8+ZSQnSS2P+uuzGj/T939bkMT3hvV0KyItYi3kq
	TSlCOHLMjOOXaDDgmxzX/GMxQ1Y/6t7fFIqKb59lwnjCmm51HZGIXTloMjn3H
X-Received: by 2002:a17:902:f606:b0:2dd:ad74:ac2e with SMTP id d9443c01a7336-2ea43e2407cmr14564315ad.23.1792581843231;
        Wed, 21 Oct 2026 04:24:03 -0700 (PDT)
X-Received: by 2002:a17:902:f606:b0:2dd:ad74:ac2e with SMTP id d9443c01a7336-2ea43e2407cmr14563935ad.23.1792581842315;
        Wed, 21 Oct 2026 04:24:02 -0700 (PDT)
Received: from [10.239.96.176] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ea3b4addfbsm9853035ad.74.2026.10.21.04.23.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2026 04:24:01 -0700 (PDT)
Message-ID: <c1a0dfe9-34bb-4d24-9644-0f758aff0af0@oss.qualcomm.com>
Date: Wed, 21 Oct 2026 19:23:55 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v21 04/14] media: qcom: camss: Issue stream-on REG_UPDATE
 from CSID
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Bryan O'Donoghue
 <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-4-04fd28d815c6@oss.qualcomm.com>
 <3843110c-4766-4352-ab2a-6d3017336534@oss.qualcomm.com>
 <dbde0e35-8246-4f69-b3be-cd617a1767d9@linaro.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <dbde0e35-8246-4f69-b3be-cd617a1767d9@linaro.org>
X-Authority-Analysis: v=2.4 cv=d4JgWhjE c=1 sm=1 tr=0 ts=6ad8a0d4 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=S6ipaplINJmNe55hSBAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIxMDA0NSBTYWx0ZWRfXxGYx4OYrW9K6
 Ynbh7T0lMweUD0AmPcyzPJ2a1FjO5T1nNdtPcero72zUVT9rK2dsePDLFlpfo8kjhhacHMTKCUv
 g79OnSWML3ug5KmwU9K1t6gtDmfIVPI=
X-Proofpoint-GUID: 6I4E5Nx7FI3aBbvmkvVNxOgpIm4Gf3V4
X-Proofpoint-ORIG-GUID: 6I4E5Nx7FI3aBbvmkvVNxOgpIm4Gf3V4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIxMDA0NSBTYWx0ZWRfX9yMa3UHW0QC1
 Ay+Fe2vZ3m3gZ8NKVqWGS42Pcns09YX6d8bgwM0uGVBa6om6by0/Hm9iFan07Y4IuhHkCoDfWWE
 bf9RtN+rGaeVU3hiHrQblgy6IZgxk2uAzwKBDBhg0LeaJ/uHB/NfnaOcwyUeFpAzMl4OaY06jmp
 zsD++sHiZFnNDzNzDevNSnzJOKjt+wG+8TByaa9z5/J3fMpnI8jP7jFnQQcgPrQsaaVBlOnvq9P
 cug9CTHUnsggRlCxjxok6jrU2BY5QcV8qjTu7HhdRbnwxaWzfUpMtU4wB2eNWSX3URs4rohYCZN
 qWu2DAQQdOTJXc8BY8juDBhpsHQByHEdNRQe0sB9UOckFKdRohWlcy3Ahfwcl6kHUWuRtVcg1xD
 D3Hbdfy25J9rkqn1iLiY9dglT90OOAvCIZ8Y8jy91CNgBCr9qxbov4drisbBoDG/rOnG+gmy8WH
 eaBPEwQrU/Gn6nynE2A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-21_03,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610210045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_122408_653348_2DF015CC 
X-CRM114-Status: GOOD (  30.72  )
X-Spam-Score: -0.9 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMjEvMjAyNiA0OjUzIFBNLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+IE9uIDIxLzEw
LzIwMjYgMDg6MzcsIFdlbm1lbmcgTGl1IHdyb3RlOgo+Pgo+PiBIaSBCcnlhbiwgSGFuZ3hpYW5n
LAo+Pgo+PiBPbiAxMC8xMi8yMDI2IDI6NDUgUE0sIEhhbmd4aWFuZyBNYSB3cm90ZToKPj4+IE9u
IHN0cmVhbS1vbiwgQ0FNU1Mgc3RhcnRzIHRoZSBzdWJkZXZpY2VzIHVwc3RyZWFtIGZyb20gdGhl
IHZpZGVvIG5vZGUKPj4+IHRocm91Z2ggdGhlaXIgc2luayBwYWRzLCBzbyB0aGUgVkZFIGlzIHN0
YXJ0ZWQgYmVmb3JlIHRoZSBDU0lELgo+Pj4KPj4+IFN0YXJ0aW5nIHdpdGggQ1NJRCA2ODAsIHRo
ZSBSRUdfVVBEQVRFIGlzIGlzc3VlZCB0aHJvdWdoIHRoZSBDU0lECj4+PiByYXRoZXIgdGhhbiB0
aGUgVkZFLiBIb3dldmVyLCB2ZmVfZW5hYmxlX291dHB1dF92MigpIHN0aWxsIGlzc3VlcyBhCj4+
PiBSRUdfVVBEQVRFIGFmdGVyIHF1ZXVlaW5nIGVhY2ggaW5pdGlhbCBidWZmZXIsIGJlZm9yZSB0
aGUgQ1NJRCBoYXMKPj4+IGNvbmZpZ3VyZWQgdGhlIHN0cmVhbS4gVGhlIFZGRSB0aGVuIG5ldmVy
IHNpZ25hbHMgQlVGX0RPTkUuIFRoZXJlZm9yZSwKPj4+IHRoZSBDQU1TUyBub3cgaXNzdWVzIHRo
ZSBSRUdfVVBEQVRFIGZyb20gY29uZmlndXJlX3N0cmVhbSgpIG9uIENTSUQgNjgwCj4+PiBhbmQg
Q1NJRCBHZW4zIGluc3RlYWQuIFRoZSBvcGVyYXRpb24gaGFwcGVucyBhZnRlciB0aGUgUlggY29u
ZmlndXJhdGlvbgo+Pj4gYW5kIGJlZm9yZSB0aGUgUkRJIHBhdGggaXMgZW5hYmxlZC4KPj4+Cj4+
PiBTa2lwIHRoZSBWRkUtc2lkZSBzdHJlYW0tb24gUkVHX1VQREFURSBvbmx5IHdoZW4gdGhlIENT
SUQgY29ubmVjdGVkIHRvCj4+PiB0aGUgVkZFIHNpbmsgcGFkIGltcGxlbWVudHMgdGhlIHJlZ191
cGRhdGUgY2FsbGJhY2suIFBsYXRmb3JtcyB3aG9zZQo+Pj4gQ1NJRCBkb2VzIG5vdCBwcm92aWRl
IHRoaXMgY2FsbGJhY2ssIGFzIHdlbGwgYXMgbGluZXMgZmVkIGJ5IElTUElGLAo+Pj4ga2VlcCB0
aGUgZXhpc3RpbmcgVkZFLXNpZGUgUkVHX1VQREFURS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBI
YW5neGlhbmcgTWEgPGhhbmd4aWFuZy5tYUBvc3MucXVhbGNvbW0uY29tPgo+Pj4gLS0tCj4+PiDC
oCBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC02ODAuYyB8wqAg
MyArKwo+Pj4gwqAgLi4uL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC1nZW4z
LmPCoMKgwqAgfMKgIDMgKysKPj4+IMKgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1z
cy9jYW1zcy12ZmUuY8KgwqDCoMKgwqAgfCAzNyArKysrKysrKysrKyAKPj4+ICsgKysrKysrKysr
LQo+Pj4gwqAgMyBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9j
YW1zcy1jc2lkLTY4MC5jIGIvIAo+Pj4gZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNz
L2NhbXNzLWNzaWQtNjgwLmMKPj4+IGluZGV4IDM0NWE2N2M4ZmI5NC4uNTU2Y2RmZWY2MjA3IDEw
MDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNz
aWQtNjgwLmMKPj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1z
cy1jc2lkLTY4MC5jCj4+PiBAQCAtMjk2LDYgKzI5Niw4IEBAIHN0YXRpYyB2b2lkIF9fY3NpZF9j
b25maWd1cmVfcmRpX3N0cmVhbShzdHJ1Y3QgCj4+PiBjc2lkX2RldmljZSAqY3NpZCwgdTggZW5h
YmxlLCB1OAo+Pj4gwqDCoMKgwqDCoCB3cml0ZWwodmFsLCBjc2lkLT5iYXNlICsgQ1NJRF9SRElf
Q0ZHMChwb3J0KSk7Cj4+PiDCoCB9Cj4+PiArc3RhdGljIHZvaWQgY3NpZF9zdWJkZXZfcmVnX3Vw
ZGF0ZShzdHJ1Y3QgY3NpZF9kZXZpY2UgKmNzaWQsIGludCAKPj4+IHBvcnRfaWQsIGJvb2wgaXNf
Y2xlYXIpOwo+Pj4gKwo+Pj4gwqAgc3RhdGljIHZvaWQgY3NpZF9jb25maWd1cmVfc3RyZWFtKHN0
cnVjdCBjc2lkX2RldmljZSAqY3NpZCwgdTggZW5hYmxlKQo+Pj4gwqAgewo+Pj4gwqDCoMKgwqDC
oCBpbnQgaTsKPj4+IEBAIC0zMDcsNiArMzA5LDcgQEAgc3RhdGljIHZvaWQgY3NpZF9jb25maWd1
cmVfc3RyZWFtKHN0cnVjdCAKPj4+IGNzaWRfZGV2aWNlICpjc2lkLCB1OCBlbmFibGUpCj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgaWYgKGNzaWQtPnBoeS5lbl92YyAmIEJJVChpKSkgewo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgX19jc2lkX2NvbmZpZ3VyZV9yZGlfc3RyZWFtKGNzaWQs
IGVuYWJsZSwgaSwgMCk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBfX2NzaWRfY29u
ZmlndXJlX3J4KGNzaWQsICZjc2lkLT5waHksIDApOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY3NpZF9zdWJkZXZfcmVnX3VwZGF0ZShjc2lkLCBpLCBmYWxzZSk7Cj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBfX2NzaWRfY3RybF9yZGkoY3NpZCwgZW5hYmxlLCBpKTsKPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCB9Cj4+PiDCoMKgwqDCoMKgIH0KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC1nZW4zLmMgYi8gCj4+PiBk
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC1nZW4zLmMKPj4+IGlu
ZGV4IDBmZGJmNzVmYjI3ZC4uODMwYzljODE4ZDNkIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtZ2VuMy5jCj4+PiArKysgYi9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC1nZW4zLmMKPj4+IEBAIC0y
MTksNiArMjE5LDggQEAgc3RhdGljIHZvaWQgX19jc2lkX2NvbmZpZ3VyZV9yZGlfc3RyZWFtKHN0
cnVjdCAKPj4+IGNzaWRfZGV2aWNlICpjc2lkLCB1OCBlbmFibGUsIHU4Cj4+PiDCoMKgwqDCoMKg
IHdyaXRlbCh2YWwsIGNzaWQtPmJhc2UgKyBDU0lEX1JESV9DRkcwKHBvcnQpKTsKPj4+IMKgIH0K
Pj4+ICtzdGF0aWMgdm9pZCBjc2lkX3N1YmRldl9yZWdfdXBkYXRlKHN0cnVjdCBjc2lkX2Rldmlj
ZSAqY3NpZCwgaW50IAo+Pj4gcG9ydF9pZCwgYm9vbCBpc19jbGVhcik7Cj4+PiArCj4+PiDCoCBz
dGF0aWMgdm9pZCBjc2lkX2NvbmZpZ3VyZV9zdHJlYW0oc3RydWN0IGNzaWRfZGV2aWNlICpjc2lk
LCB1OCBlbmFibGUpCj4+PiDCoCB7Cj4+PiDCoMKgwqDCoMKgIHU4IGk7Cj4+PiBAQCAtMjMwLDYg
KzIzMiw3IEBAIHN0YXRpYyB2b2lkIGNzaWRfY29uZmlndXJlX3N0cmVhbShzdHJ1Y3QgCj4+PiBj
c2lkX2RldmljZSAqY3NpZCwgdTggZW5hYmxlKQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChj
c2lkLT5waHkuZW5fdmMgJiBCSVQoaSkpIHsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IF9fY3NpZF9jb25maWd1cmVfcmRpX3N0cmVhbShjc2lkLCBlbmFibGUsIGksIDApOwo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgX19jc2lkX2NvbmZpZ3VyZV9yeChjc2lkLCAmY3NpZC0+
cGh5LCAwKTsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNzaWRfc3ViZGV2X3JlZ191cGRh
dGUoY3NpZCwgaSwgZmFsc2UpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgX19jc2lk
X2N0cmxfcmRpKGNzaWQsIGVuYWJsZSwgaSk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4g
wqAgfQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9j
YW1zcy12ZmUuYyBiL2RyaXZlcnMvIAo+Pj4gbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1z
cy12ZmUuYwo+Pj4gaW5kZXggMjY4MGE5OTE0NzY1Li4xNmEwYjU2NjNmZTIgMTAwNjQ0Cj4+PiAt
LS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdmZlLmMKPj4+ICsr
KyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy12ZmUuYwo+Pj4gQEAg
LTUwMiw2ICs1MDIsMzcgQEAgdm9pZCB2ZmVfYnVmX2RvbmUoc3RydWN0IHZmZV9kZXZpY2UgKnZm
ZSwgaW50IHdtKQo+Pj4gwqDCoMKgwqDCoCBzcGluX3VubG9ja19pcnFyZXN0b3JlKCZ2ZmUtPm91
dHB1dF9sb2NrLCBmbGFncyk7Cj4+PiDCoCB9Cj4+PiArLyoKPj4+ICsgKiB2ZmVfdXBzdHJlYW1f
Y3NpZF9oYXNfcmVnX3VwZGF0ZSAtIENoZWNrIHdoZXRoZXIgdGhlIENTSUQgZmVlZGluZyAKPj4+
IHRoaXMgbGluZQo+Pj4gKyAqIGlzc3VlcyBpdHMgb3duIHN0cmVhbW9uIFJVUCAoaS5lLiBpdHMg
Y29uZmlndXJlX3N0cmVhbSBkb2VzIHRoZSAKPj4+IFJVUCkuCj4+PiArICoKPj4+ICsgKiBUaGUg
Q1NJRC0+VkZFIGxpbmsgaXMgY3JlYXRlZCBpbiBjYW1zcy5jIGZvciBhbGwgQ1NJRHMgYW5kIFZG
RXMsIAo+Pj4gc28gdGhlCj4+PiArICogdXBzdHJlYW0gZW50aXR5IG9mIHRoZSBzaW5rIHBhZCBp
cyBlaXRoZXIgYSBDU0lEIChwb3NzaWJseSB3aXRoIAo+Pj4gUlVQKSBvciBhbgo+Pj4gKyAqIElT
UElGIChubyBSVVApLiBPbmx5IGVuYWJsZWQgbGlua3MgYXJlIGNvbnNpZGVyZWQuCj4+PiArICov
Cj4+PiArc3RhdGljIGJvb2wgdmZlX3Vwc3RyZWFtX2NzaWRfaGFzX3JlZ191cGRhdGUoc3RydWN0
IHZmZV9saW5lICpsaW5lKQo+Pj4gK3sKPj4+ICvCoMKgwqAgc3RydWN0IHZmZV9kZXZpY2UgKnZm
ZSA9IHRvX3ZmZShsaW5lKTsKPj4+ICvCoMKgwqAgc3RydWN0IGNhbXNzICpjYW1zcyA9IHZmZS0+
Y2Ftc3M7Cj4+PiArwqDCoMKgIHN0cnVjdCBtZWRpYV9wYWQgKnJlbW90ZTsKPj4+ICvCoMKgwqAg
dW5zaWduZWQgaW50IGk7Cj4+PiArCj4+PiArwqDCoMKgIHJlbW90ZSA9IG1lZGlhX3BhZF9yZW1v
dGVfcGFkX2ZpcnN0KCZsaW5lLT5wYWRzW01TTV9WRkVfUEFEX1NJTktdKTsKPj4+ICvCoMKgwqAg
aWYgKCFyZW1vdGUgfHwgIWlzX21lZGlhX2VudGl0eV92NGwyX3N1YmRldihyZW1vdGUtPmVudGl0
eSkpCj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGZhbHNlOwo+Pj4gKwo+Pj4gK8KgwqDCoCBm
b3IgKGkgPSAwOyBpIDwgY2Ftc3MtPnJlcy0+Y3NpZF9udW07IGkrKykgewo+Pj4gK8KgwqDCoMKg
wqDCoMKgIHN0cnVjdCBjc2lkX2RldmljZSAqY3NpZCA9ICZjYW1zcy0+Y3NpZFtpXTsKPj4+ICsK
Pj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoJmNzaWQtPnN1YmRldi5lbnRpdHkgIT0gcmVtb3RlLT5l
bnRpdHkpCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250aW51ZTsKPj4+ICsKPj4+ICvC
oMKgwqDCoMKgwqDCoCByZXR1cm4gISFjc2lkLT5yZXMtPmh3X29wcy0+cmVnX3VwZGF0ZTsKPj4+
ICvCoMKgwqAgfQo+Pj4gKwo+Pj4gK8KgwqDCoCByZXR1cm4gZmFsc2U7Cj4+PiArfQo+Pj4gKwo+
Pj4gwqAgaW50IHZmZV9lbmFibGVfb3V0cHV0X3YyKHN0cnVjdCB2ZmVfbGluZSAqbGluZSkKPj4+
IMKgIHsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IHZmZV9kZXZpY2UgKnZmZSA9IHRvX3ZmZShsaW5l
KTsKPj4+IEBAIC01MTEsNiArNTQyLDcgQEAgaW50IHZmZV9lbmFibGVfb3V0cHV0X3YyKHN0cnVj
dCB2ZmVfbGluZSAqbGluZSkKPj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgbG9uZyBmbGFnczsKPj4+
IMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IGZyYW1lX3NraXAgPSAwOwo+Pj4gwqDCoMKgwqDCoCB1
bnNpZ25lZCBpbnQgaTsKPj4+ICvCoMKgwqAgYm9vbCBydXBfaW5fY3NpZDsKPj4+IMKgwqDCoMKg
wqAgc2Vuc29yX3BhZCA9IGNhbXNzX2ZpbmRfc2Vuc29yX3BhZCgmbGluZS0+c3ViZGV2LmVudGl0
eSk7Cj4+PiDCoMKgwqDCoMKgIGlmIChzZW5zb3JfcGFkKSB7Cj4+PiBAQCAtNTIzLDYgKzU1NSw4
IEBAIGludCB2ZmVfZW5hYmxlX291dHB1dF92MihzdHJ1Y3QgdmZlX2xpbmUgKmxpbmUpCj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcmFtZV9za2lwID0gVkZFX0ZSQU1FX0RST1BfVkFM
IC0gMTsKPj4+IMKgwqDCoMKgwqAgfQo+Pj4gK8KgwqDCoCBydXBfaW5fY3NpZCA9IHZmZV91cHN0
cmVhbV9jc2lkX2hhc19yZWdfdXBkYXRlKGxpbmUpOwo+Pj4gKwo+Pj4gwqDCoMKgwqDCoCBzcGlu
X2xvY2tfaXJxc2F2ZSgmdmZlLT5vdXRwdXRfbG9jaywgZmxhZ3MpOwo+Pj4gwqDCoMKgwqDCoCBv
cHMtPnJlZ191cGRhdGVfY2xlYXIodmZlLCBsaW5lLT5pZCk7Cj4+PiBAQCAtNTUyLDcgKzU4Niw4
IEBAIGludCB2ZmVfZW5hYmxlX291dHB1dF92MihzdHJ1Y3QgdmZlX2xpbmUgKmxpbmUpCj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgb3V0cHV0LT5nZW4yLmFjdGl2ZV9udW0rKzsKPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoCBvcHMtPnZmZV93bV91cGRhdGUodmZlLCBvdXRwdXQtPndtX2lkeFswXSwKPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3V0cHV0LT5idWZbaV0t
PmFkZHJbMF0sIGxpbmUpOwo+Pj4gLcKgwqDCoMKgwqDCoMKgIG9wcy0+cmVnX3VwZGF0ZSh2ZmUs
IGxpbmUtPmlkKTsKPj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoIXJ1cF9pbl9jc2lkKQo+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgb3BzLT5yZWdfdXBkYXRlKHZmZSwgbGluZS0+aWQpOwo+Pj4g
wqDCoMKgwqDCoCB9Cj4+PiDCoMKgwqDCoMKgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnZmZS0+
b3V0cHV0X2xvY2ssIGZsYWdzKTsKPj4+Cj4+Cj4+IEFjY29yZGluZyB0byB0aGUgaGFyZHdhcmUg
ZG9jdW1lbnRhdGlvbjoKPj4gU3RhcnRpbmcgd2l0aCBDU0lEIDY4MCwgQ0FNSUYgaGFzIG1vdmVk
IGludG8gdGhlIENTSUQuIEFzIGEgcmVzdWx0LCAKPj4gUlVQIGlzIG5vdyBpc3N1ZWQgYnkgdGhl
IENTSUQgYW5kIHByb3BhZ2F0ZWQgdG8gdGhlIElGRS4KPj4KPj4gU3RhcnRpbmcgd2l0aCBDU0lE
IDk4MCwgc29mdHdhcmUgbXVzdCBhbHNvIHNldCB0aGUgU0VUIGJpdCBpbiAKPj4gUlVQX0FVUF9D
TUQgYWZ0ZXIgaXNzdWluZyB0aGUgUlVQL0FVUCBjb21tYW5kLiBPdGhlcndpc2UsIHRoZSBoYXJk
d2FyZSAKPj4gaWdub3JlcyB0aGUgY29tbWFuZCBhbmQgdGhlIGNvcnJlc3BvbmRpbmcgcmVnaXN0
ZXIgdXBkYXRlIGRvZXMgbm90IAo+PiB0YWtlIGVmZmVjdC4KPj4KPj4KPj4gQnJ5YW4sIGFjY29y
ZGluZyB0byB0aGUgSFcgZG9jdW1lbnRhdGlvbiwgdGhlIGNoYW5nZSBpdHNlbGYgaXMgCj4+IGNv
bnNpc3RlbnQgd2l0aCB0aGUgcmVxdWlyZWQgcHJvZ3JhbW1pbmcgc2VxdWVuY2UuIFRoZSBtYWlu
IHF1ZXN0aW9uIAo+PiBpcyB3aGV0aGVyIHRoaXMgaXMgdGhlIHJpZ2h0IGltcGxlbWVudGF0aW9u
IGZyb20gdGhlIGRyaXZlciAKPj4gcGVyc3BlY3RpdmUsIG9yIGlmIHRoZXJlIGlzIGEgY2xlYW5l
ciB3YXkgdG8gaGFuZGxlIGl0Lgo+Pgo+PiBJIGhhdmUgdGVzdGVkIHRoZSBjaGFuZ2Ugb24gdGhl
IEhhbW9hIEVWSyBib2FyZC4KPj4gVGVzdGVkLWJ5OiBXZW5tZW5nIExpdSA8d2VubWVuZy5saXVA
b3NzLnF1YWxjb21tLmNvbT4gIyBIYW1vYSBFVksKPj4KPj4KPj4gVGhhbmtzLAo+PiBXZW5tZW5n
Cj4gCj4gT0sgdGhhbmsgeW91IGZvciB0aGUgZXhwbGFuYXRpb24uCj4gCj4gT1RPSCBJIGFncmVl
IHdpdGggTG9pYydzIHN0YXRlbWVudCAtIGl0IGlzIGNsZWFuZXIgdG8gc3VidHJhY3QgdGhlIAo+
IGNhbGxiYWNrIGFuZCBkaXNqdW5jdCBvbiBpdHMgcHJlc2VuY2UgdGhhbiB0byBhZGQgYSBmbGFn
IHRvIHRoZSBzYW1lIAo+IGVmZmVjdCBpbiByZXZlcnNlLgo+IAo+IC0tLQo+IGJvZAoKSGkgTG9p
YywgQnJ5YW4sIHRoYW5rcyBmb3IgdGhlIHJldmlldy4gSSB3b25kZXIgaWYgaXQgd291bGQgYmUg
YmV0dGVyIHRvIAprZWVwIHRoZSBjaGVjayBvbiB0aGUgQ1NJRCBzaWRlPwoKdmZlLT5yZWdfdXBk
YXRlKCkgaXMgYWxzbyB1c2VkIG91dHNpZGUgc3RyZWFtLW9uLCBzdWNoIGFzIGJ1ZmRvbmUsIHF1
ZXVlIApidWZmZXIuIEl0IG11c3QgYmUgaW1wbGVtZW50ZWQgaW4gVkZFLiBXZSBvbmx5IHdhbnQg
dG8gY2hhbmdlIHRoZSBWRkUgCmJlaGF2aW9yIGF0IHN0cmVhbS1vbiBzdGFnZSwgaW4gZnVuY3Rp
b24gdmZlX2VuYWJsZV9vdXRwdXRfdjIoKS4gU28gCm1ha2luZyB2ZmUtPnJlZ191cGRhdGUoKSBv
cHRpb25hbCBjb3VsZCBhZmZlY3QgcnVudGltZSB1cGRhdGVzLgoKTWF5YmUgdGhlIGNoZWFwZXN0
IHdheSBpcyBzdGlsbCB0byBjaGVjayB0aGUgQ1NJRCBzaWRlIHJlZ191cGRhdGUgCmltcGxlbWVu
dGF0aW9uIGF0IHN0cmVhbS1vbiBzdGFnZT8gSSdtIHZlcnkgZ2xhZCB0byBoZWFyIHlvdXIgCnN1
Z2dlc3Rpb25zLiBUaGFua3MgYSBsb3QuCgotLS0KQmVzdCBSZWdhcmRzLApIYW5neGlhbmcKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
