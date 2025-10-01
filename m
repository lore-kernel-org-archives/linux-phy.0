Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C07CCCA470
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 09:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dd9UJM70UgmEG6fXSghjxynW2P8BTQrZiGGDwvFCR7Y=; b=yQfq9DwOVKuKhX
	HgYPP+n7dLWfxre6LFb+W3RIhdS5bBnfb94psWIXlWhezqZDg/TC4RQwh0dd/VMhSThCSUeDg2a9n
	TlUvhlxpwzp58US3R036cVBjVShBhot6i0lqj6YHZSo6GD6zDChZoIqeaowWsBq7z+OqzXgwUGzLo
	65y+eWCSNoqs0KbAnhvbkiRKXo+ol0t6F/HUO8og+EvH0jc1k32idlssFeDfotdZ2rDi1aemCDOfG
	aWU8fv7Cn2ku1UpLjwHYFXbtxzN98PShg6AfYZ/ApwpQaM3Rc4ncIEWSzYwphbLf9hMrj3/M1dVqf
	0NF6e73z0G0qbjg8fJjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3tL1-00000007AyZ-3fi9;
	Wed, 01 Oct 2025 09:41:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3tKy-00000007AyB-3twt
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 09:41:30 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UMJMGD027978
	for <linux-phy@lists.infradead.org>; Wed, 1 Oct 2025 09:41:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XMACI507iNq+HH50Spkbf83wGYWWaPzjK+BT3qk0pyA=; b=l4ByabdpJrErpzYr
	fBw8oGJHql7bQRmgvqOqrwLDmhXaZWCeL44ZfTN6uNWKsXOj6sb8FLIZrT1Wd1Kn
	HGKhkzno1McspJUDOKRiL/6Wg7KYGerScJboDgZ8dVpHXwfKqV4urBEX9Mq60v7s
	LS24IpgBqsM6LTcg+oV9AUuWKA0NpsfiPP6UBj5ILzqQ9Xz2U6yqrTyYLI0Y8zN5
	Ohu5EUxat1ZbfV6TM3lu71knywb6xzV+oqTfJA5gFXohXnxBowz4Njn5hnyqUlmH
	YFBJtaQ5OcppjFvR+HvSikO1TqCX9J5s8nQW/oM2qLZs4nfgNIWoqcpYNYuyC51j
	rQNdxQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49fyrf5mb5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 09:41:26 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7cc365ab519so12418396d6.1
        for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 02:41:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759311686; x=1759916486;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XMACI507iNq+HH50Spkbf83wGYWWaPzjK+BT3qk0pyA=;
        b=W3xRCoVs0lZVCcLjnKGMm/9q+/7BDKJOWeWayKLt6pOn1oIsDIdZjMaHUm7XK4ixks
         n4GSKZ1FkaYxsisafxDlfQYP+Mk+7EhFw47CT1v/5gm5pyWw06kM3vBXhnR0nPt+TExc
         XDzj67ut2QrW3nmXhPXA4mTgbDtt6jIZi7X4OTFL6961nS+B41S18HOJGYxhXS82L1aI
         7Q471x3FBlapk3QwzFsxag35Y9asYPKjhETcNdVlyfr9M2gXqHgtlH9A7SE5AKyLwrLb
         U0jQreoF1nA8GzzX2thnwh4JnVkxi7smdhY0bx7Ohggdlmt5aTblIEKq/XTA9lIUtg6X
         RERQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5dBeq2Yo+wvhsp91RG2YTrjgHBCp9JgrKvf6/Xve+vS7qfMChXJfQ+COGP7TMrVVSmM2TCP+N1XA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy44TUA+obbqc3AG5Q9/b9XZrhmEKqCPLSx4n3OTzslFoMQUoS1
	Wpsut5pdCWvMMy81bVDpcEqh1phhzj2s5dfbMW1pCZmiQYq31mfCwfQHGacsXbdqUQCeYs34KqC
	rnlfKd+fZEjNKHaaNioMwm8z006/y1KLUdhD0svPQNeZk/ikHtytr2lyqElLr5nSCLQ/t
X-Gm-Gg: ASbGncvMbFCArdUgADZ3z7F/L85He/j4k6qXnst3U7y57t6zVy+i2hbwKnRQB89zA3K
	BjzpjMLMi9DWXv+PJQ8oLn/zzIwtlilAZbV1XCr+uGdVBOTwpdkKMVOCwZ3BG8r4tJkwXWZzjjt
	vdn0YZNN2CyAiuQAbRwr7WRftW1MPGsfnXM89zQosZ4IGzq/k+BalqVYVlp4cfOrJ+wau1+4gV4
	mFqqkgcXAYjtxT+lqGgUPIi/f6rP5jc7Cke9QfAe2w8w9LUtT3ukXqNoacCggh/D07RHmjmtNKc
	GpBQEIVCVY+YPsieTEjD3H0O4TYU3/nNVhP/iYy6EvHaB8lc8LyztPvJUi1RYxF9jMqTPmOiUs9
	UIsvTrjQ/uxF1Kr63PkHK13+ZVwY=
X-Received: by 2002:a05:6214:5901:b0:876:2e1a:e77b with SMTP id 6a1803df08f44-8762e1aea08mr9575926d6.7.1759311685563;
        Wed, 01 Oct 2025 02:41:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH91KYJMcHd4nXItFYbdscjiAMA6CT2dkzCKpFdliLag2sdxHLuQD82pLNUht/6WuFnNRwYMw==
X-Received: by 2002:a05:6214:5901:b0:876:2e1a:e77b with SMTP id 6a1803df08f44-8762e1aea08mr9575846d6.7.1759311685090;
        Wed, 01 Oct 2025 02:41:25 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634d8beedf1sm8022837a12.26.2025.10.01.02.41.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 02:41:23 -0700 (PDT)
Message-ID: <45d20c2d-aba3-4822-8965-a7a05096860c@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 11:41:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
 <bc866f21-9b41-43dc-b450-59a25d547b88@oss.qualcomm.com>
 <297ee4ab-73f3-60d5-8e16-8830135603f1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <297ee4ab-73f3-60d5-8e16-8830135603f1@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: pDUI3s1Kb0QlOeEsgvvFNfLsv6ZArYhb
X-Proofpoint-GUID: pDUI3s1Kb0QlOeEsgvvFNfLsv6ZArYhb
X-Authority-Analysis: v=2.4 cv=etzSD4pX c=1 sm=1 tr=0 ts=68dcf746 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=fy7xcfgtcmc-wzi9Pt0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDE3NSBTYWx0ZWRfX7QD2Fywd5KRX
 QbVuzGUzlSJwdCDztux+HSRqNIea8m8Xh6D6GSPCByMKJvBOajX25abheP1ml+ahRxzGaJjO7yT
 G/2OYrKxnwD3k+isLOw1NUanEcaNNVBMM4L9NAfAH0NeEXe1/NYhUff8xixhoOdnmSCU/HoqbAq
 TB8xNDkDwc1xg+yBEojAB2pIy1Vz4J57Nw/aS28/crMKPLvHQ2B8zX8WJFLiPHM9qh7plBnXYkp
 enJHKUUXDIcuTpTzWjNjN39oSpr33vCO7koCMj8HZ6gPb0lEgKoF8IuIFR4UN0U96IDB/pvqYI+
 mbe/9EddZwJyQ/Zp6CUkgBuyKU2T+Ym8TLrTjSKmpRlv03Y2OUTzWdj5gH5L0X+BFRmsmr8nyAy
 kMix1RbHA5KZtm8JxnYPnAR31hKWSw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509290175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_024129_097800_295DE197 
X-CRM114-Status: GOOD (  16.52  )
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

T24gOS8yNi8yNSAxOjAzIEFNLCBXZXNsZXkgQ2hlbmcgd3JvdGU6Cj4gCj4gCj4gT24gOS8yNS8y
MDI1IDM6NDMgQU0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+IE9uIDkvMjUvMjUgNDoyOCBBTSwg
V2VzbGV5IENoZW5nIHdyb3RlOgo+Pj4gRm9yIFN1cGVyU3BlZWQgVVNCIHRvIHdvcmsgcHJvcGVy
bHksIHRoZXJlIGlzIGEgc2V0IG9mIEhXIHNldHRpbmdzIHRoYXQKPj4+IG5lZWQgdG8gYmUgcHJv
Z3JhbW1lZCBpbnRvIHRoZSBVU0IgYmxvY2tzIHdpdGhpbiB0aGUgUU1QIFBIWS7CoCBFbnN1cmUg
dGhhdAo+Pj4gdGhlc2Ugc2V0dGluZ3MgZm9sbG93IHRoZSBsYXRlc3Qgc2V0dGluZ3MgbWVudGlv
bmVkIGluIHRoZSBIVyBwcm9ncmFtbWluZwo+Pj4gZ3VpZGUuwqAgVGhlIFFNUCBVU0IgUEhZIG9u
IEdseW11ciBpcyBhIFVTQjQzIGJhc2VkIFBIWSB0aGF0IHdpbGwgaGF2ZSBzb21lCj4+PiBuZXcg
d2F5cyB0byBkZWZpbmUgY2VydGFpbiByZWdpc3RlcnMsIHN1Y2ggYXMgdGhlIHJlcGxhY2VtZW50
IG9mIFRYQS9SWEEKPj4+IGFuZCBUWEIvUlhCIHJlZ2lzdGVyIHNldHMuwqAgVGhpcyB3YXMgcmVw
bGFjZWQgd2l0aCB0aGUgTEFMQiByZWdpc3RlciBzZXQuCj4+Cj4+IFsuLi5dCj4+Cj4+PiArwqDC
oMKgIC8qIG92ZXJyaWRlIGhhcmR3YXJlIGNvbnRyb2wgZm9yIHJlc2V0IG9mIHFtcCBwaHkgKi8K
Pj4+ICvCoMKgwqAgaWYgKHBjc19hb24gJiYgY2ZnLT5yZWdzW1FQSFlfQU9OX1RPR0dMRV9FTkFC
TEVdKQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHFwaHlfY2xyYml0cyhwY3NfYW9uLCBjZmctPnJlZ3Nb
UVBIWV9BT05fVE9HR0xFX0VOQUJMRV0sIDB4MSk7Cj4+Cj4+IENsZWFyaW5nIHRoaXMgZmllbGQg
aXMgZ29pbmcgdG8gcHJldmVudCB0aGUgUEhZIGZyb20gZXZlciBnb2luZyBvZmZsaW5lCj4+Cj4+
IFRoZSBIUEcgc2F5cyB0aGlzIHNob3VsZCBvbmx5IGJlIG5lY2Vzc2FyeSBmb3Iga2VlcGluZyB0
aGUgcGh5IGFjdGl2ZQo+PiBkdXJpbmcgTVggcmV0ZW50aW9uIChhbmQgdGhlIGxpc3RlZCB1c2Vj
YXNlcyBhcmUgVVNCNCB3YWtldXAgY2xvY2sKPj4gZ2VuZXJhdGlvbiB2aWEgYSByZXNwZWN0aXZl
IF9VU0I0IHJlZ2lzdGVyIGFuZC9vciBVU0IzIGF1dG9ub21vdXMgbW9kZQo+PiBvcGVyYXRpb24p
LCBib3RoIG9mIHdoaWNoIGFyZSBjdXJyZW50bHkgdW5zdXBwb3J0ZWQuCj4+Cj4+IEFyZSB5b3Ug
c3VyZSBpdCdzIG5lY2Vzc2FyeSAvIGRlc2lyZWQ/Cj4+Cj4gCj4gSGkgS29ucmFkLAo+IAo+IEF0
IGxlYXN0IG9uIHRoZSBQSFkgSFNSLCBpdHMgbWVudGlvbmVkIGFzIHJlcXVpcmVkLCBhbmQgaWYg
SSByZW1lbWJlciBjb3JyZWN0bHksIGlmIHRoaXMgd2Fzbid0IGRvbmUsIEknZCBzZWUgUU1QIFBI
WSBpbml0IHRpbWVvdXQuCgpIbSwgdGhlIHdvcmRpbmcgaW4gdGhlIGRvY3MgaXMgYSBsaXR0bGUg
YW1iaWd1b3VzIHRvIHdoZXRoZXIKdGhpcyBpcyByZWFsbHkgbmVlZGVkLCBidXQgbGV0J3Mgcm9s
bCB3aXRoIGl0IGZvciBub3cKCktvbnJhZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
