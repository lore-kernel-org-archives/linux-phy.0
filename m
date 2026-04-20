Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32BCEF588C2
	for <linux-phy@archiver.kernel.org>; Mon, 20 Apr 2026 12:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/P79x3NLwPSpg1bDco6ogYDHPfQPSGcc9gpfcIVguU=; b=H4pyRzZxfiRAJ1
	8+HNT18OV4Ashj8Ch21XSd7YFc1wJnz+GLp7uxAzaVGiHXK5ObF//d9gL7bUM2bUpx7+mwKvUykrq
	HQOkTf6uqwGKQtVKQmKzdn5cZ5XQ6v/CrtrWr8OLFF5XgtpzFMbse3l32L7RsZaWGuwGHrKvctmmW
	TbaZ1AkZNtjMDe5wZMjyBPfEbYfXYjZZQnUGOZuM0duqTf2aWQbbOYWSAseymMj7ii8UzuQ/eq9IJ
	cEYb43lJS+gV3T6gIGfA8FKQLMaqo98UFBN6TD3WQgSYPqYkoZFQzrP+44ImwYhpd61u3Sanrdjp5
	YjGz9rABxYejIpA8foIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEo3I-00000006uWF-3osO;
	Mon, 20 Apr 2026 12:48:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEo3H-00000006uVs-1WQd
	for linux-phy@lists.infradead.org;
	Mon, 20 Apr 2026 12:48:36 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63K988jI1601031
	for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 12:48:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yZUkaRZar3uett3k7xh3LbT+s8iMVIVCIcvK7E6tblw=; b=T+jQvxX7EHfS9tTR
	B1Rn2NszYEcDq3XVB07/D3PJSNpJxGxlMP5Qa8N039aL2HgHdyP5TKHJloM3s9Cn
	JEEdrgkCWoJMpqw7WnBqO5fm1KGwOxOkUcVCjZVB6AWAF9eWAG9aKkiLsqj7sJQ6
	K3CDx8/2e3ZyTF2KKttg21pdoz+h1r8sskDqBci8jqbGDex+LAPLOFVjK/en0rw2
	FW+WHZd2014D2IKUn2KvARm8h/dvXDEmQj0Fgtmsp668/8v2GXok6Lc6UC1tN8nt
	ISZylNg32fFF5KqymE0Mzj9avcgLu3dN9V1EloQooMN0PYge8CR74wigAig9NgEb
	ZUHwtQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnh898qgu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 12:48:33 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2b2e06219cbso37995765ad.3
        for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 05:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776689313; x=1777294113; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yZUkaRZar3uett3k7xh3LbT+s8iMVIVCIcvK7E6tblw=;
        b=FNo2JhCIYy1xh+j02qlnMf2fWN47H0QXh/j7DO0ClvcFMtk0/Y1nkOQnLpZapnypaW
         McNuyKpDm53mIMOrNaMm6tBwDd/+opt+ELVDQleUhuQtzLObAtFiOHvI4+2pgW1vRfQ+
         PRIPETVFDddU1r1PehJE2w5TpuZTNdyDEDevWbN7vVl9JpdKDDf6MKAgLPMtgkukP9b4
         3YswzM6jNLzbY4fAMIYjsHBQUYrRMdZQiPmjL8Fvc7iQqV1B32+nFinUUJupEdJHpU7n
         37w99lLrfWmxtOCy0dxuLTKLHbxWylTSaeoDJDyt6jpXUfokcGl23u1adCsLQGaRoKm7
         M/qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776689313; x=1777294113;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yZUkaRZar3uett3k7xh3LbT+s8iMVIVCIcvK7E6tblw=;
        b=gNfB6XEKqEcBLoUHW1JzOBzht5Y87amF/ffOoaDv95kc6EhhdKF5lXTuW38pp6QznI
         4ruqTJCiw1+iBHs1NQQyZZhnJrwLLd5ePEqJK4N6kJkgISNHB20RcpAPVzR/SNmNknsw
         D8U622VVCyT/nLhpvv+wtKR6Rl5vQJDJi+g9AoHsj5WX8J4hExGT1kMEwzUIRSdCv5I5
         jurwQ74o37Bm6F7hSqSO1jrm0Ug0Pt81cttJPxvPak+/TJm6VRyb9Rdsbngp6dWAkup3
         FSPxIrYhLTdZ+OsSL6Q9lECZAtRFLivLY3JkxnFVJ6tKnpYgxTdPmoxw0VjjkNWy7R32
         cQGg==
X-Forwarded-Encrypted: i=1; AFNElJ/5lLIr7Lpqi8J8P5Y/EvleoHFgsGdPS9MCmBrW/TA+g3eW+5XMpe6vHeaXXdbqAb3S3sRVaNIh3ZA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyog041Er6wxLgV3CzY9YGxlfiuoJUiscERxUm8LsGF5u6b7wiT
	4EYYmRWwg++E+KLGWoTud0QPqH1KJ4svaTaLa1s4vFQ0GzfdLzuBCrtUyFgS/3aIUo7ZNnwaRNa
	yapnptRnhwYWEhSjCHHt1zAu/qZQG5QZPZl1gDeGXz67yKcVxvJVdUtMPEW/ann/wMzwp
X-Gm-Gg: AeBDieuci2wyYuZaQkYEgzDv3SWETclgLEbC1rSk9UY+e+N3dbQ9YICxG7r7iI4tHl6
	YA7tZu96N22iy8X2k9GgowmrY+hkC6oiSkoZY45v+54pYIkN4o+FcJo3wl3QmrKUej9f9O0L0Eb
	zQDcPZ2LRJLGpO5vdGxRuign3iZBr4iSfHK2Dki5blISgRH/rWKfw8wKCSp74CJRdPHzuf6dQQO
	+yYoQBDObz+6c1TIoSk0SUh2CrJQNYirYQv+yuL625bP28IcED5eh+bdxRnLuWu/3V7IWONSDQj
	i1bOubLFOQuP4ttDkv2F53wWEhYn873e/9dpd6T30LImi8d+4YNwDMWkOVUDskXYCN+qCsjhPts
	PpHMcIdtVigAI/3IWIaW/LoBCY/al7JeYEmyoYcnYhH0alcziSFBS0OWho6PEFcIPJwQ9+n0CTt
	h43xEDc9BoTZABygzqqFCrLnsuXHN/
X-Received: by 2002:a17:903:1b6f:b0:2b2:4cd2:e16c with SMTP id d9443c01a7336-2b5f9f3c58amr130617705ad.20.1776689312968;
        Mon, 20 Apr 2026 05:48:32 -0700 (PDT)
X-Received: by 2002:a17:903:1b6f:b0:2b2:4cd2:e16c with SMTP id d9443c01a7336-2b5f9f3c58amr130617345ad.20.1776689312498;
        Mon, 20 Apr 2026 05:48:32 -0700 (PDT)
Received: from [10.133.33.141] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b5faa2e5cesm123507155ad.25.2026.04.20.05.48.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2026 05:48:32 -0700 (PDT)
Message-ID: <12e8a8de-49b8-463a-8b88-2cbbf1ab901c@oss.qualcomm.com>
Date: Mon, 20 Apr 2026 20:48:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] phy: qcom: edp: Add eDP/DP mode switch support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com>
 <20260302-edp_phy-v3-1-ca8888d793b0@oss.qualcomm.com>
 <245f4589-d7ca-4d6b-8162-a86972752bd8@oss.qualcomm.com>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <245f4589-d7ca-4d6b-8162-a86972752bd8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDEyNCBTYWx0ZWRfXzpvBP27BZ6UH
 yjORURxIBSW+k8/yD1pexjS4lmWLs0j0y6rbcxu9lZf95sGZLm3jZkqKc1p+sSsyg+/YZOy3Emn
 MoHnjrJFYEXtHw/f6JzsVRLa9zfF9Gou/ZH5atYs8MT+O9DDfeJjq83IjLk0ieQZRYXzAjbF6SF
 Ya/rcsTipus7pD+80YXQ7SOwwCyXilJ7TXSk0RLh9aSAHzglEmtQ8Nb03bp5VrOTZGT85rfvgwD
 x+nns8c0yRCz+0GGk9O8UI4A8DDsgnTUJfZbFuPy96X9Ydx/KC4jKZe6Ex1WVOQRMUvl5A1+R7H
 cKsUHwVo78B03HapbJRlwRS66OrAiLU8xfJwsini+bWfKwpPq9hS7vAMG4Bg54kyIccv4Uh1rSx
 7giL1gRPLMguAxhdONB6Sk65f3AktCJVPspzES5ll5wMaETA7ZrwsEMdxrfzVuVKb4PSyirBnSW
 X2/zG+Pt4KSycAR2MFQ==
X-Authority-Analysis: v=2.4 cv=D6B37PRj c=1 sm=1 tr=0 ts=69e620a1 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=MJ-xSMSjBZqLI239gzoA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: d-GnkaqLoM7_WVTS67jROh7tKAOgvHsS
X-Proofpoint-GUID: d-GnkaqLoM7_WVTS67jROh7tKAOgvHsS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_02,2026-04-17_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 malwarescore=0 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604200124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_054835_555167_9F0AB4B0 
X-CRM114-Status: GOOD (  13.56  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiA0LzE2LzIwMjYgNTozNCBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiAzLzIvMjYg
OToyOCBBTSwgWW9uZ3hpbmcgTW91IHdyb3RlOgo+PiBUaGUgZURQIFBIWSBzdXBwb3J0cyBib3Ro
IGVEUCZEUCBtb2RlcywgZWFjaCByZXF1aXJlcyBhIGRpZmZlcmVudCB0YWJsZS4KPj4gVGhlIGN1
cnJlbnQgZHJpdmVyIGRvZXNuJ3QgZnVsbHkgc3VwcG9ydCBldmVyeSBjb21ibyBQSFkgbW9kZSBh
bmQgdXNlCj4+IGVpdGhlciB0aGUgZURQIG9yIERQIHRhYmxlIHdoZW4gZW5hYmxlIHRoZSBwbGF0
Zm9ybS4gSW4gYWRkaXRpb24sIHNvbWUKPj4gcGxhdGZvcm1zIG1pc21hdGNoIGJldHdlZW4gdGhl
IG1vZGUgYW5kIHRoZSB0YWJsZSB3aGVyZSBEUCBtb2RlIHVzZXMKPj4gdGhlIGVEUCB0YWJsZSBv
ciBlRFAgbW9kZSB1c2UgdGhlIERQIHRhYmxlLgo+Pgo+PiBDbGVhbiB1cCBhbmQgY29ycmVjdCB0
aGUgdGFibGVzIGZvciBjdXJyZW50bHkgc3VwcG9ydGVkIHBsYXRmb3JtcyBiYXNlZCBvbgo+PiB0
aGUgSFBHIHNwZWNpZmljYXRpb24uCj4+Cj4+IEhlcmUgbGlzdHMgdGhlIHRhYmxlcyBjYW4gYmUg
cmV1c2VkIGFjcm9zcyBjdXJyZW50IHBsYXRmb3Jtcy4KPj4gRFAgbW9kZe+8mgo+PiAJLXNhODc3
NXAvc2M3MjgwL3NjODI4MHhwL3gxZTgwMTAwCj4+IAktZ2x5bXVyCj4+IGVEUCBtb2RlKGxvdyB2
ZGlmZik6Cj4+IAktZ2x5bXVyL3NhODc3NXAvc2M4MjgweHAveDFlODAxMDAKPj4gCS1zYzcyODAK
Pj4KPj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPj4gRml4ZXM6IGYxOTkyMjNjYjQ5MCAo
InBoeTogcWNvbTogSW50cm9kdWNlIG5ldyBlRFAgUEhZIGRyaXZlciIpCj4+IFNpZ25lZC1vZmYt
Ynk6IFlvbmd4aW5nIE1vdSA8eW9uZ3hpbmcubW91QG9zcy5xdWFsY29tbS5jb20+Cj4+IC0tLQo+
IAo+IEkgd2VudCB0aHJvdWdoIGV2ZXJ5dGhpbmcgYW5kIGFsbCB0aGUgc2VxdWVuY2VzIGFyZSBP
Sy4KPiAKPiBTQzgxODBYIHdpbGwgbmVlZCBjaGFuZ2VzLCBidXQgaXQncyBhbHJlYWR5IGluY29y
cmVjdCBzbyB0aGlzCj4gZG9lc24ndCBuZWNlc3NhcmlseSBhZmZlY3QgaXQKPiAKPiBUaGFua3Mh
Cj4gCj4gUmV2aWV3ZWQtYnk6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5keWJjaW9Ab3NzLnF1YWxj
b21tLmNvbT4KPiAKPiBLb25yYWQKVGhhbmtzIGhlcmUuLiBJIGRpZG7igJl0IG5vdGljZSBiZWZv
cmUgdGhhdCBTQzgxODBYIGlzIGRpZmZlcmVudCBmcm9tIApTQzcyODAsIGFuZCB3aWxsIGNvcnJl
Y3QgaXQgaW4gdGhlIG5leHQgdmVyc2lvbi4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
