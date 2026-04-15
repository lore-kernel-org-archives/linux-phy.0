Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66FD1F41985
	for <linux-phy@archiver.kernel.org>; Wed, 15 Apr 2026 09:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ki+DBc3fBHLgQkFPrt5x7LVHyT41BjhlQcUqoX8Voog=; b=hc1hFEiwSMUaVH
	MdqetRgZVIZ3OYHuGIQq5566AHrfkBFLzMGEWRVjdIvi/G2CnEgIzPnG4t25RoErKNoR+kLaT86EF
	9bBOgEqoU/i8ebOVkk9iOCiyxqMQJnMPvnoImYgmj0yytjgVqg4B41edTmko+N7sFfs/rXMVwkarC
	WPWljpkn7sLOR/NvqzqJdeI4nH8OnZMRUks4yYufopgUZh1xhiRg3U5LLXEvJaPa7acq0GBwK46AW
	ZHxLa5+psgTENCwxAA0I48jEzhy7lPYElEic5tO2YvAoQmrCjymqiqko3lVQ685Xj/i0hgEc2Lp94
	hx/6gz5TuiPeWqdrojKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCwl7-00000000vNX-09a5;
	Wed, 15 Apr 2026 09:42:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCwl4-00000000vMx-0Jx1
	for linux-phy@lists.infradead.org;
	Wed, 15 Apr 2026 09:42:07 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63F8NV7N2972296
	for <linux-phy@lists.infradead.org>; Wed, 15 Apr 2026 09:42:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8au+N/1MLaPhi7Q+5KjJ+7n0ETdu8nJODsL00VdDp6o=; b=ZCMTYzUdw7kLLoms
	3BiS3Nm3C5g4C01oA+Yx8kFfiIUsdntcJ3bZi0S3rVuWnj0tSglRgzViyXTWAyDl
	hjQUBHQcLxEAjYhXSah6NuSc0xG49gviLc9z+N1so3PA0+wOuHvHJn29ozQGaWrD
	1aV62Qu51ut300p2i/R21a5ZJp0+JBJ3vFwVXp/q8X3YgzfRpGFAbGxMkIpHVMRB
	T2RZzH8uKC5I1MPicRBtzBjA9SIU/gXwfKnNMkKrSiVlB7280AanJrp3mtnNIBvi
	jQRN7FM3iB3ShxsWiBB1wL9SySpptpLFC32Oo4O8vrvkE1R2SAlDiFDdN/3FQodH
	32v9OQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dj74g88k9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 15 Apr 2026 09:42:04 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8d0095b0d80so191883785a.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Apr 2026 02:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776246124; x=1776850924; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8au+N/1MLaPhi7Q+5KjJ+7n0ETdu8nJODsL00VdDp6o=;
        b=O2uPTqfYSuGv6te0mvsE3HE7YWFuU/fKQ9iqiZ46qdsRcASNb/JeD+aL6LXUacul4C
         Rl3k82R6+mHG1WKhr2fCMV/XL/2ING8+oMAh3S4ZfmGk/b/Ei3LOUtZxvSdC0LCUq1qH
         /waFjAi03R/z/VNEF7rEs77LLx0yOWtKZCX2vgYLGOJScrLB3iYypHX84Ybn2mIlSb98
         ap/WKAhXVWPxanrWrOc0dKQMoW6w6lWFC+x3XFojjOQRNZug/wVeWa+Gg5Vri/mjQlfP
         3hbAx23NN/owMxWZgR5iZeggcNaZJ/TGbFl5fETlmc4rhpCACnS+xY/3PA5IWMqNr8t7
         tq8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776246124; x=1776850924;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8au+N/1MLaPhi7Q+5KjJ+7n0ETdu8nJODsL00VdDp6o=;
        b=SOOQNayKTD3Vma0tlVons2qVmIZ7Nkk8qWJkX2L3WQYv5gsbwDgP6EJnx0ZiNI+nZ7
         DPE+EvGM7JgjGAW7FiO3VV+Lf0XdulhJGeJphb5rzvps/kitlBaJlgP6rGJBlybfYdlK
         +cvOn9WSX8QtjxhDSI0ARnyQSqVP2bZxMOHysXURSsab3zyOmrjGzB2/AQK3p/vF6eLC
         AWfIyCkWd3Y4lWU/NPxvX/T7ibq2oO5I+PmtnhmAzhsSJMUWMmkU0r//1EMdDbIecHaP
         jpFqmABwYUCy7dxRez5vO61oqhPkKEdobWwH6JmRTOdoipKBcGIkggCfyon4rzx5hDmn
         TBAg==
X-Forwarded-Encrypted: i=1; AFNElJ8H1GzU2umlzpxYEBC3OGK33vbf9QpGbU1EiZ7hylARrPlJexonQmYOkd0jR6k5vI649BCvh1EEq+k=@lists.infradead.org
X-Gm-Message-State: AOJu0YzdejZGB25aD8EZX1QPEoHNOqbYE8bnfRwwfMw2w9LQVbMm3xgu
	k/bfFD5nVst1/s+Ffrb0MY63a0YebPsTN7bKEoaYGx015GCT6kjymKqm3zzAo6gdDTyeIKrKBXo
	PfS1V2CZO5YFpplwo/IUHeUkboR2jO5lS8ZwMEaKIuyBYnPihPEuZHjFYPruFezQZsXK3
X-Gm-Gg: AeBDiet3Gqvy9Dq8OLMNl+T/9JK3h8iwuBMEvCfLpBkqvDe4+cGWYoUy3TAS9BUKxsQ
	gBp11XI/bi5EaFPrRYHNIdWtRVEYUzQP2xbOxRIoE5IY8sCWD75CJjf2pXyJYvBNRUNEpejkL9n
	943iBORI/d/Xq9zcgAq/5iEMtDUdIQQDzGhLkPQbJ24q8X8YJ8MBBJeodnCO28newfModPJp15u
	QD02Nmk1AQm7UHAyR5NMbi7hlSv0cSuAY7qA1yTUrLvaW4PhQSKmwkX7tBTmdz9v6ziI8mImxIw
	0OXFPjr9Gfq/nyGzji0TFHE6dCXnwqWf2QXZd0Zjc34i53QzYtiqGEfsJysZ04X+Y+5MhloMm/o
	b2Z4e8ecqlrH773mEJFhwrqOOWZUW/xhbBlkIrUCVq2KcCx3pGsr0bIOEYNB26xyQyuSaANXPvT
	r0nKd/Ul7cZ1uO0A==
X-Received: by 2002:a05:620a:3186:b0:8d5:ddc3:a3ab with SMTP id af79cd13be357-8e4cb303470mr158106685a.4.1776246124039;
        Wed, 15 Apr 2026 02:42:04 -0700 (PDT)
X-Received: by 2002:a05:620a:3186:b0:8d5:ddc3:a3ab with SMTP id af79cd13be357-8e4cb303470mr158104085a.4.1776246123537;
        Wed, 15 Apr 2026 02:42:03 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-67238000e68sm249860a12.25.2026.04.15.02.42.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Apr 2026 02:42:02 -0700 (PDT)
Message-ID: <5bf3589e-0ec1-493e-ba10-db8237a18d6d@oss.qualcomm.com>
Date: Wed, 15 Apr 2026 11:41:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bod@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <7712fbdd-a225-49f0-aeb9-ebcbb9d5abac@oss.qualcomm.com>
 <da3ed78d-fb5e-4820-95d6-527d540cf03e@linaro.org>
 <1f38187a-9464-4aa9-b70a-03b767349d56@linaro.org>
 <c5278028-dfe9-4d09-970a-a25977967bdd@linaro.org>
 <016c03b8-27c3-41dc-a630-8e7095db1f88@linaro.org>
 <456ded59-d13e-4b61-975b-97ca48b5e771@linaro.org>
 <RAPaPhpxA39W0ykm-Cr1KaDiJKpRqdQTXUeEmt5mQn4lJBHEGaIS010ejjmhUYEBsHjzrTX41Ek9zLU2bae_YA==@protonmail.internalid>
 <76ea03d0-d41b-4880-a48c-06570eb089ed@linaro.org>
 <0101d8bc-1ae8-475e-bb9e-cc1e16db87ec@kernel.org>
 <U7Oj0BBSw7MWOWSCyP3-GGypXsAALySEpjzoCVQD3P9O_ZWJqO4GVKLhzQn5JD4I3okCCp2F4YFckFRJ1duvCQ==@protonmail.internalid>
 <6d5ebab6-3c4e-4a1c-9578-6e926cbd96de@oss.qualcomm.com>
 <6ea214cf-e68e-44c6-ba0c-38aa0a644ae9@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6ea214cf-e68e-44c6-ba0c-38aa0a644ae9@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE1MDA4OCBTYWx0ZWRfX83+kgypvHi55
 zISYtDVrkAoTgXCFO06c/0tKafBbzlEXYgJGKLlcMNvS6/PqGpwriXoO022jDWi8S1A72KVgKEN
 yirdQ9LKMn90Nh7gdgQQzvVaYKiYVa9PmSJFPi5C29kcN6EYZIJAHDfPIEdkAoOqsPF+QKRDs76
 No62q+OG6YiZYNaht8uSV5dwLhc39wxBWZC5rU7pQRLYvOWVWum7wm59oZ8z8e5a7mVwG5mdBgV
 GAWkE4i272+Wzs0/HvhCkquf28MGLRhUOTns0PqqISEnD4W9j1QexOy1XARMst8xzZmz5jyTL7i
 2hQEsFJGNow8C+l+5TOpwyF0pizNzvKdoEW5Vdw5kSf+zL9s9HeDtL+IfKp3Z+zqa+PsqIYH6/m
 U1R3c0Ogd24pv4cJ7KjHt9Kx5PZjzYbSUX30wfa4+khnbcLQ3/qpolr+3GTsEH8b5GxofQom+mz
 yamObBkIZOHGxed07GQ==
X-Proofpoint-ORIG-GUID: xlulAAEK36loYwif8_Aho-vp3-Iitojy
X-Authority-Analysis: v=2.4 cv=ZIfnX37b c=1 sm=1 tr=0 ts=69df5d6c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=MidpbNYMP4jx3VwMSCAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: xlulAAEK36loYwif8_Aho-vp3-Iitojy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-14_04,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 phishscore=0 clxscore=1015 malwarescore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604150088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_024206_241475_F5666DD2 
X-CRM114-Status: GOOD (  13.51  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMy8zMC8yNiAxOjQxIFBNLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+IE9uIDMwLzAzLzIw
MjYgMTI6MzQsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+IExldCdzIHRha2UgYSBzdGVwIGJhY2sg
LSBzaW5jZSBhbnkgQ1NJUEhZIGNhbiBmZWVkIGludG8gYW55IENTSUQgKGF0IHJ1bnRpbWUpLAo+
PiB0aGUgcmVzdWx0aW5nIG5vZGVzIHdvdWxkIGVpdGhlciBsb29rIGxpa2U6Cj4+Cj4+IC8vIGhh
cmRjb2RlZCwgbSBtYXkgIT0gbgo+PiBjc2lkX246IGNzaWRAMTAwMDAwMCB7Cj4+IMKgwqDCoMKg
cGh5cyA9IDwmY3NpcGh5X20+Owo+PiB9Owo+Pgo+IAo+IFdlbGwgdGhhdCB3b3VsZCBiZSB3cm9u
ZyB0aGV5IGNhbiBjb25uZWN0IHRvIGFueSBDU0lELiBXZSdkIGJlIGNodXJuaW5nIHRoZSB1c2Vy
LXNwYWNlIEFCSSBhbmQgaW1wb3NpbmcgYW4gYXJ0aWZpY2lhbCBjb25zdHJhaW50IG9uIHdoYXQg
dGhlIGh3IGNhbiBkby4KPiAKPj4KPj4gLy8gZGV0ZXJtaW5lZCBhdCBydW50aW1lCj4+IGNzaWRf
bjogY3NpZEAxMDAwMDAwIHsKPj4gwqDCoMKgwqBwaHlzID0gPCZjc2lwaHlfMD4sCj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgIFsuLi5dCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmY3NpcGh5X24t
MT47Cj4+IH07Cj4gCj4gVGhpcyBJIHRoaW5rIHdvcmtzIHdlbGwgYW5kIGFjdHVhbGx5IG1hcHMg
dG8gd2hhdCB0aGUgaGFyZHdhcmUgY2FuIGRvLiBUaGlzIHdvdWxkIGJlIHdoZXJlIHRvIHRhbGsg
bW9yZSBhYm91dCBOZWlsJ3MgbXV4Lgo+IAo+Pgo+PiBvciB3ZSBjb3VsZCBzdG9yZSB0aGVtIG9u
Y2UsIGNlbnRyYWxseSwgaW4gdGhlICJDQU1TU19UT1AiIG5vZGUgYW5kCj4+IHBhc3MgaGFuZGxl
cyBhcm91bmQgYXMgbmVjZXNzYXJ5Ogo+Pgo+PiAvLyBjYW1zcyAiY2F0YWxvZy9tYW5hZ2VyIiBk
cml2ZXIvbGlicmFyeSBwcm92aWRlcyBDU0lEbiB3aXRoIFBIWW0KPj4gY2Ftc3M6IGNhbXNzQDEw
MDAwMDAwIHsKPj4gwqDCoMKgwqBwaHlzID0gPCZjc2lwaHlfMD4sCj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgIFsuLi5dCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmY3NpcGh5X24tMT47Cj4+Cj4+
IMKgwqDCoMKgY3NpZF9uOiBjc2lkQDEwMDAgewo+PiDCoMKgwqDCoMKgwqDCoCAvLyBubyBQSFkg
cmVmZXJlbmNlcwo+PiDCoMKgwqDCoH07Cj4+IH07Cj4gVGhhdCBjb3VsZCB3b3JrIHRvby4KCkkg
cGVyc29uYWxseSB0aGluayB0aGlzIGlzIHRoZSBjbGVhbmVzdCBhcHByb2FjaCwgYXQgbGVhc3Qg
ZnJvbSB0aGUgZHQtZGVzY3JpcHRpb24Kc3RhbmRwb2ludC4KCkZvciBjb21ibyBtb2RlLi4KCkkg
Zm9yZ290IHdoYXQgdGhlIGNvbmNsdXNpb24gd2FzIG9uIHRoZSBzZW5zb3ItdG8tKENBTVNTIHZz
IENTSVBIWSkgY29ubmVjdGlvbnMKb3Igd2hldGhlciB0aGVyZSB3YXMgb25lLCBidXQgaW4gYW55
IGNhc2UsIEkgdGhpbmsgdGhhdCBkYXRhLWxhbmVzIGFuZCBidXMtdHlwZQpjb3VsZCBiZSBhZ2dy
ZWdhdGVkIGFjcm9zcyBlYWNoIFBIWSBpbnN0YW5jZSBhbmQgdGhlIGZpbmFsIG9wZXJhdGluZyBt
b2RlIGNvdWxkCmJlIGNob3NlbiBiYXNlZCBvbiB0aGF0LCBhdCBydW50aW1lIGJ5IHRoZSBkcml2
ZXIgdGhhdCBtYW5hZ2VkIGFsbCB0aGlzIChzYXksCnZpYSBwaHlfY29uZmlndXJlKCkpCgpLb25y
YWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
