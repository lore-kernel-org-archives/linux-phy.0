Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A9BAF8FA6F
	for <linux-phy@archiver.kernel.org>; Tue, 21 Apr 2026 13:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gpOC2PDrVW0s/dyrVmlABqEi5kpRfx9vsSRvU140YdQ=; b=DIzm00eHV4P0NV
	IijIjXWw6cXfqwm0GK4obAPyCGrTdQmfiRYIt48qtmOgGkheZeJptBa00Bmh/FC3RF9w8auS79SO+
	IwzRtXX2R0PNKKl39s2yuSLmnVx2nyTEzR74rLmcIkfx6bHPa1VZ+69G0a8tsWKLT+oWtlbL5U0b0
	gehcBIFrLB4sU/EwE0hMPxmr6plbFt5Es5eleHSKpQPbJntEvQZpEamAxDEP/0FvQa1q7H3IeFvXz
	JmqsVlkGBl1KkZcJQBdXN1FO3Q6OP2m9m9paDk4Glyylnxeg6oVEOC1qc7h1oNCWaDb0BSMxACp4a
	1dm2Lnu5U1PJs80mQuLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFAia-00000008cbv-3kTl;
	Tue, 21 Apr 2026 13:00:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFAiX-00000008cbY-22OQ
	for linux-phy@lists.infradead.org;
	Tue, 21 Apr 2026 13:00:42 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63LA6AUo1834872
	for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 13:00:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7lvnln9/rgbiDxukmCo33hD3qG0KmpVWAD0BX5Cqj34=; b=JMBrDRioSUlYbGAO
	2TDAZHbW+q46MMawUgYNH7iOkFcfVFT8zequXVB5948kDc2BTxX11Ox9vb7AcAx+
	geEeKwVNsHjF4g16csqVKoFy4f8V5MuNXhfnSMbM9h+/quUie7xcjbAfR5N3UuXA
	tL+KlFApqqimO8MGb6mH/aiDQuuO36rbYJ7woSZNL1/cO7JVgWQF5Ly/hQp6caWZ
	nGoLKg5nvA0ZBYsSXQUR4TREsOzUa8mOagtOC3hz8Fxl0Cc62G0+v8XhZ8GEnlWO
	UVQFGXMDtMph/UQTHW4OgtFZvNK8wjGWtroV/5kmkVLxbvZFx53m0fqYxNUGoHTl
	8wonhQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dp76grh1a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 13:00:39 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50f1b94ac9dso5612111cf.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 06:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776776439; x=1777381239; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7lvnln9/rgbiDxukmCo33hD3qG0KmpVWAD0BX5Cqj34=;
        b=fLv6d+I95DW7cGsgQU5gspRkfjhMlajPnMGeH2LJrCa8lV/Vjsp3d1K5vtkwAZHLzN
         dC/SIkGPvklgbfeOAwSTDIzjZx3Q5S8/xsMd6QRGRv9fnaRmFnq5qhPiIDCZn1RramyH
         dQ4LOi1JAYzoe9CqoKsTt97wSXlEaGlSFu+dwjiy3fOKqFoeKlWRfb36/1i/C+JZU3mh
         eJBsCEP0CffIR7rzjAwZNCNYVOEYI2sQfglIxkaZ8x0GJ8qKdqUojezDqVcsGYB7a4Ry
         6RPhawe7ntOp86QSv5wFmJEJfpZpAeViGSiJQg+pNFPxk2IU+HMUoq65iLtN0d7URmF/
         uX8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776776439; x=1777381239;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7lvnln9/rgbiDxukmCo33hD3qG0KmpVWAD0BX5Cqj34=;
        b=QTnHQrolCeHR9u7nwRk8c4Mg0tb+4EIovbH9uocznrjjgveMp19v/Cq/z5niBr7Urq
         SxVnrLLow0zecYK8otis0L0SwPPHW1mGD6KPLAHiLNmmKlBPt+Y844xfqzrRF7UmABHl
         kRltgsRogxJ2vvnSRlcXuM93eropaxL2T8BaTbVlMnT3lPIFlnId+v4niszcFgfjKGsa
         r+z3E4NPQBExxvJ9jOpgslGS23cxPI6X232RM/M2YaxHKOsUGDBOvZb7iyF0PjCogB1e
         zoOmXemYO2rIjSba2ro8fkDTGDHxTZcjnS7GxKmuXZ8nGx1lJao3ZEPUUz6n1IXPqTeg
         wnRg==
X-Forwarded-Encrypted: i=1; AFNElJ+7kJf1zT+9OFBpabZhaNUaIqgIRufKKBs7v/0X8OYG8NaP7jFXX8sATrrpAkhsyoIJo2yIGqIN+2Y=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzf/tlu3h44KchWMVb5j1rN/CVXP0ShCLi/bUta3n0j8kgJpDHR
	0Zitsi2D7/H94NfGd79QTIlMnCBwK/v/aSf6WgWLS1vbfus4RGIKfi9OSGSEDg2rdQtwAFLTr4R
	mK2NQM5TYcj7LT/jkRSLPi89xjF1owzQadjdOJvLknGwvmJgIexkMsS64fnMkCOOQ1z+H
X-Gm-Gg: AeBDieuuHFdgA0UWtTcTeGEcq5S64sUjrR86fbsj7gqftvW2Fdpz9dYxTcoQAw/6vV9
	1JDvG3WLFnEdfUbzlYY8cpU9uw17Mx6cc58C6VA2cwY2oHAirk474vvFPk0YMIuCkyKvfryNeQF
	5E8AECdx+sM9gheq5VA+fLNwQjtb/e9aV1xQTY7wLaatE8bMe1NWjT/alniZOodco06PizZVSZo
	f2NLXLS1dRgtP5b4GqaHqeYRjwrLNpt/cSoqHbQdnwoc+L+t5ryXLlhlRUmHwvJ/wtdu5lAoJP6
	AyhG/MT9xB4XFiHmpulGIlnSkgIM6n1cA2MLbosrmMxaiXtWg4Je+zItLDvH2KupXWs9JSboinY
	P/u2RodHLHAU42lZrKOl/wXlnme+yCPdlCIaixPEEeKxd87x0vZACUs/d1WTfjzzYhv1mKiuNtk
	glcBbSyAlLfJNq9g==
X-Received: by 2002:ac8:7d14:0:b0:50e:df3b:80 with SMTP id d75a77b69052e-50edf3b0365mr60847051cf.8.1776776438238;
        Tue, 21 Apr 2026 06:00:38 -0700 (PDT)
X-Received: by 2002:ac8:7d14:0:b0:50e:df3b:80 with SMTP id d75a77b69052e-50edf3b0365mr60845871cf.8.1776776437463;
        Tue, 21 Apr 2026 06:00:37 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ba455046429sm442637266b.50.2026.04.21.06.00.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2026 06:00:36 -0700 (PDT)
Message-ID: <25244bbe-0500-4712-8ab6-eca060b942e3@oss.qualcomm.com>
Date: Tue, 21 Apr 2026 15:00:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] phy: qcom: edp: Add eDP/DP mode switch support
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com>
 <20260302-edp_phy-v3-1-ca8888d793b0@oss.qualcomm.com>
 <245f4589-d7ca-4d6b-8162-a86972752bd8@oss.qualcomm.com>
 <12e8a8de-49b8-463a-8b88-2cbbf1ab901c@oss.qualcomm.com>
 <e956b609-3e37-4c3c-9168-a50793722061@oss.qualcomm.com>
 <aad6a3a4-5050-467d-8ece-e83648d219d6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aad6a3a4-5050-467d-8ece-e83648d219d6@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIxMDEyOSBTYWx0ZWRfXyVLT9Ab4/VMP
 7UjDu2ioixUohXjpUox+cnlS23LIoF9mtGKBOW4sgWKbfSDEQLZ8Fkjv6VLcsI0nlbH5dxGLYOe
 wrRr5ggrYmCPBQZIJk48NcJMxjDnhFufYWebjjUWIQN3LFeV2ZBcj2uKcNGUrpsCmzUu/VBVoun
 vqKnGHGphWKvaqebuKJQJlQvCynWpoQHaATC6NCR3hvBXfsf1ktlAT5WmpbdlXSZBL4YCQlgx+p
 qD7l8f3yG0Dk+d1orM78AGHGRH/Fbqe/Hp6bgFOaFJsfe4nKt2A4aMHlu4GkQ1ftYOaGwXJOdUG
 ZWgPS6nZTGzNyhZ2dnuxo1pcP1ndA0r0beJPuHuDtuPWw7cLN9El+7MsA4FtWj0yq9ivpSpc1NV
 ECfCHvMB31wODvygZaa71kzsXbH6DP8mSLenPQBQVCspXB3oY7/D2sdLDSZljJtk7MDpPqWel9B
 fYjfu9fIgyqxJ4O/VaQ==
X-Proofpoint-GUID: EwySwInP0d0YmhhKNZvGrBHIdAKdMmIx
X-Authority-Analysis: v=2.4 cv=crWrVV4i c=1 sm=1 tr=0 ts=69e774f7 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=9dqbPrMe-NXFaFYHzLoA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: EwySwInP0d0YmhhKNZvGrBHIdAKdMmIx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_02,2026-04-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 spamscore=0 phishscore=0 bulkscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604070000
 definitions=main-2604210129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_060041_639986_C79A7264 
X-CRM114-Status: GOOD (  15.23  )
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

T24gNC8yMS8yNiA1OjU0IEFNLCBZb25neGluZyBNb3Ugd3JvdGU6Cj4gCj4gCj4gT24gNC8yMC8y
MDI2IDg6NDkgUE0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+IE9uIDQvMjAvMjYgMjo0OCBQTSwg
WW9uZ3hpbmcgTW91IHdyb3RlOgo+Pj4KPj4+Cj4+PiBPbiA0LzE2LzIwMjYgNTozNCBQTSwgS29u
cmFkIER5YmNpbyB3cm90ZToKPj4+PiBPbiAzLzIvMjYgOToyOCBBTSwgWW9uZ3hpbmcgTW91IHdy
b3RlOgo+Pj4+PiBUaGUgZURQIFBIWSBzdXBwb3J0cyBib3RoIGVEUCZEUCBtb2RlcywgZWFjaCBy
ZXF1aXJlcyBhIGRpZmZlcmVudCB0YWJsZS4KPj4+Pj4gVGhlIGN1cnJlbnQgZHJpdmVyIGRvZXNu
J3QgZnVsbHkgc3VwcG9ydCBldmVyeSBjb21ibyBQSFkgbW9kZSBhbmQgdXNlCj4+Pj4+IGVpdGhl
ciB0aGUgZURQIG9yIERQIHRhYmxlIHdoZW4gZW5hYmxlIHRoZSBwbGF0Zm9ybS4gSW4gYWRkaXRp
b24sIHNvbWUKPj4+Pj4gcGxhdGZvcm1zIG1pc21hdGNoIGJldHdlZW4gdGhlIG1vZGUgYW5kIHRo
ZSB0YWJsZSB3aGVyZSBEUCBtb2RlIHVzZXMKPj4+Pj4gdGhlIGVEUCB0YWJsZSBvciBlRFAgbW9k
ZSB1c2UgdGhlIERQIHRhYmxlLgo+Pj4+Pgo+Pj4+PiBDbGVhbiB1cCBhbmQgY29ycmVjdCB0aGUg
dGFibGVzIGZvciBjdXJyZW50bHkgc3VwcG9ydGVkIHBsYXRmb3JtcyBiYXNlZCBvbgo+Pj4+PiB0
aGUgSFBHIHNwZWNpZmljYXRpb24uCj4+Pj4+Cj4+Pj4+IEhlcmUgbGlzdHMgdGhlIHRhYmxlcyBj
YW4gYmUgcmV1c2VkIGFjcm9zcyBjdXJyZW50IHBsYXRmb3Jtcy4KPj4+Pj4gRFAgbW9kZe+8mgo+
Pj4+PiDCoMKgwqDCoMKgLXNhODc3NXAvc2M3MjgwL3NjODI4MHhwL3gxZTgwMTAwCj4+Pj4+IMKg
wqDCoMKgwqAtZ2x5bXVyCj4+Pj4+IGVEUCBtb2RlKGxvdyB2ZGlmZik6Cj4+Pj4+IMKgwqDCoMKg
wqAtZ2x5bXVyL3NhODc3NXAvc2M4MjgweHAveDFlODAxMDAKPj4+Pj4gwqDCoMKgwqDCoC1zYzcy
ODAKPj4+Pj4KPj4+Pj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPj4+Pj4gRml4ZXM6IGYx
OTkyMjNjYjQ5MCAoInBoeTogcWNvbTogSW50cm9kdWNlIG5ldyBlRFAgUEhZIGRyaXZlciIpCj4+
Pj4+IFNpZ25lZC1vZmYtYnk6IFlvbmd4aW5nIE1vdSA8eW9uZ3hpbmcubW91QG9zcy5xdWFsY29t
bS5jb20+Cj4+Pj4+IC0tLQo+Pj4+Cj4+Pj4gSSB3ZW50IHRocm91Z2ggZXZlcnl0aGluZyBhbmQg
YWxsIHRoZSBzZXF1ZW5jZXMgYXJlIE9LLgo+Pj4+Cj4+Pj4gU0M4MTgwWCB3aWxsIG5lZWQgY2hh
bmdlcywgYnV0IGl0J3MgYWxyZWFkeSBpbmNvcnJlY3Qgc28gdGhpcwo+Pj4+IGRvZXNuJ3QgbmVj
ZXNzYXJpbHkgYWZmZWN0IGl0Cj4+Pj4KPj4+PiBUaGFua3MhCj4+Pj4KPj4+PiBSZXZpZXdlZC1i
eTogS29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPgo+Pj4+Cj4+
Pj4gS29ucmFkCj4+PiBUaGFua3MgaGVyZS4uIEkgZGlkbuKAmXQgbm90aWNlIGJlZm9yZSB0aGF0
IFNDODE4MFggaXMgZGlmZmVyZW50IGZyb20gU0M3MjgwLCBhbmQgd2lsbCBjb3JyZWN0IGl0IGlu
IHRoZSBuZXh0IHZlcnNpb24uCj4+Cj4+IFBsZWFzZSBtYWtlIGl0IGFub3RoZXIgcGF0Y2ggb24g
dG9wIG9mIHRoZXNlIHR3bywgc28gdGhhdCB3ZSBkb24ndCBoYXZlCj4+IHRvIHJlLXZhbGlkYXRl
IHRoZSBleGlzdGluZyBkaWZmCj4+Cj4+IEtvbnJhZAo+IFRoYW5rcyB2ZXJ5IG11Y2ggZm9yIHRo
ZSB2YWxpZGF0aW5nIHRoaXMgcGF0Y2guIENvdWxkIHlvdSBzeW5jIHdpdGggRG1pdHJ5IGhvdyBp
IHBvc3QgbmV4dCBwYXRjaD8uLi4gSGUgc3VnZ2VzdCBtZSB0byBzcGxpdGUgdGhpcyBwYXRjaC4u
LgoKRWggSSBndWVzcyBoZSdzIHJpZ2h0Li4gSSB0aGluayB0aGUgZm9sbG93aW5nIGFwcHJvYWNo
IHNob3VsZCBiZSBmaW5lOgoKLSB0YWtlIHlvdXIgY3VycmVudCBjaGFuZ2UKLSBzcGxpdCBpdCB1
cCBpbnRvIHNtYWxsZXIgcGllY2VzIChzbyB0aGF0IHRoZSByZXN1bHRpbmcgZGlmZiBpcyB0aGUg
c2FtZSkKLSBhZGQgYSA4MTgwIGZpeHVwIG9uIHRvcAoKS29ucmFkCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
