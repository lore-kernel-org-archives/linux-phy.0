Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C380E7717D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Dec 2024 09:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GCsur0gjUXgozrm8Kj6+wxfqdn6iAYycd8coFry1Fg=; b=Z4sY6Su+M1iZva
	lxzcRFR7PZgKkgSmFZw4ZgzZMWlwswO8MLZm8Y4L33VGx3Nw0nezc59X73wBW9G2ZaAvrhXG/cGsj
	j3q4N3UZ+FlZzg0huLR3m+1XVSKP4vs54SQbvrLzbfZKKI2k/VeQdx5ysmmZgm4Lq/xnfZLfo5ole
	unxfr6VPepdoGepryQCSh8ZEMq89n1eZP0cy8o/UJ3lok8LYab9QoriJOu+Gl1Z4y/J4TZdxbWrhc
	jHV1ESeNtbFNhPT9tTxn9oQ7LlqZFOGwHTmPoHk210mCyoRzMLs32r90oPuRX8WBEb8jJ8bxMdx1M
	Sq7JLhalzsRn2zwhD+Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLJIJ-0000000ETNW-44VZ;
	Wed, 11 Dec 2024 09:46:11 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLJIH-0000000ETMf-2uAf
	for linux-phy@lists.infradead.org;
	Wed, 11 Dec 2024 09:46:10 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-53df6322ea7so7545415e87.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Dec 2024 01:46:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733910367; x=1734515167; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tea4vIJiGPJWHixoiDd5FPFnMHQTgOFRwTGQIe3zrGg=;
        b=Kkpywh1E+tOPMDFc+1DhdeVgIftzrItAwSNxzmTK/BTa7ziCT7Zwz18JDaBTHkSIqc
         YHVEg2BsXKq1n8lnfawJqBPR4d8C3+v4pUciGDlx4SzP1UivS6yUM9Qr3W0hjwRcPZ/i
         2zPR0iP/yJ6MLap+hf0BnBDw1aNIXI7/Ed10myp3FPk9PzY+mnfKuM1OIQSBvIQxpFe9
         R7ThUf7TYuj+kSLh6xV5rACtDcuLcCku/R9WbfYQTDzYKevMHJrwDDOkwhmFB9XN9dqb
         jTtaJHmWgAdO+cX0E3dZc7LEGUnPRt4FmOWwckep/S8JnDQM6n/CQPuBpDghBvio/13d
         0tlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733910367; x=1734515167;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tea4vIJiGPJWHixoiDd5FPFnMHQTgOFRwTGQIe3zrGg=;
        b=EwKnWXS+VU/r0snhhJqby8Bwjr8cUOxecAXIz+0qnYR2lQU7RKOw/OCPF/uxGSzesU
         EToLYLkg7eUxT9WZJkQziAwppZqv+59L4KwT83w2QHFxegOHmYrp2LR4IaKKaO7SRYUV
         jlyhs4XbUCehk13gclfLvlVc7TBpx5i511laKTjJz7Qwxeh12+c0aSsQbR6x9O8RfJtV
         BFiIEOjFHPn310gtKHQekdWxMMEh5otYPshudxgMUHvb13XeIoge0jDLpwAt8kccGrnA
         xly+B/OdInefChQXvo+irBeNqZe+C8jc3Y8R8Iz6ym6HVRmZ4ob4HN9EByIJtyleogQu
         qlUg==
X-Forwarded-Encrypted: i=1; AJvYcCUZItzaoA47KwWoSAUvT4jA25LThh9MydXiXwx20WLY1LEzajIMCAjfWDCCdNSjh795GMJOC+yja6o=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6SatPTlETkWQelJjy3fV8qTNiy+oGG/D0L/aHRERVLo+EKo/W
	TThGHapuLpzOfN/XA4z1Qsx+gVxrMESO3fABbd9jWojgDY/DnJan9aYnwtJm1GQ=
X-Gm-Gg: ASbGncukFnWIg29eTkjMo18WBvj26pc/wD84eidBJJhAip2XlqCclONBx2Jz2qeBFUt
	LQxSQLABQ89TjAQFKB+jmowT5SNK8G5LjgqBqc7yMowd+5JxkBzgzqph0wnWUHmdb36nDX9ZyR3
	P9Qdh2doOnxrSDC98bAPAm7RHyknOkvB0CYsruUGCOwcOY5WpUxotH6FYUE5Qql66UeXUnzRQvD
	Tp/7kC8n8wAQ1hiDAFyY6J4UTLV0r8sNDX/3sYqrK+RZ3ZJFzb9So7ChLidcWXY2YWOWZ2CVNzD
	xDUJotbSYIHgyVYq70rSdSsq2fUK7bvRLA==
X-Google-Smtp-Source: AGHT+IEtlbI01qtT4hElvvQMyeb/TKdaC5qWfnqkdfHb5ztyN2VBFJ9f2yMWhkC3MvVYmq106RrFMw==
X-Received: by 2002:a05:6512:3c85:b0:53e:1c3e:34 with SMTP id 2adb3069b0e04-5402a6056a1mr671998e87.38.1733910367530;
        Wed, 11 Dec 2024 01:46:07 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e22974f2bsm1973804e87.99.2024.12.11.01.46.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 01:46:06 -0800 (PST)
Date: Wed, 11 Dec 2024 11:46:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com, quic_fangez@quicinc.com, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH 3/8] phy: qcom: qmp-usbc: Add DP phy mode support on
 QCS615
Message-ID: <t5vcjlf44fhae4f2h75cfs3f7r6tdstw4ysmkapvvawj6xp23x@xnxqnxvyhshe>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-3-09a4338d93ef@quicinc.com>
 <CAA8EJppOR_UXoVpMt-dhfWdCz3UNfsXGdz8X9NqpaSmYj3AZDg@mail.gmail.com>
 <5ea14162-567b-462d-be02-b73b954b7507@quicinc.com>
 <5whv4z7u6fkfwlv5muox5dmv6fow4mga76ammapw7wph7vwv3f@xibcjdfqorgf>
 <iqcofcntirmlwcpyfr4yabymqfcgyrij57bibf337tmxpa73t6@npkt6wquenf6>
 <527baded-f348-48a8-81cd-3f84c0ff1077@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <527baded-f348-48a8-81cd-3f84c0ff1077@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_014609_741878_D0B58ACB 
X-CRM114-Status: GOOD (  32.35  )
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

T24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgMDg6NDY6MTZBTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4gCj4gCj4gT24gMTIvMTAvMjAyNCAxMTowOSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90
ZToKPiA+IE9uIFRodSwgRGVjIDA1LCAyMDI0IGF0IDA4OjMxOjI0UE0gKzAyMDAsIERtaXRyeSBC
YXJ5c2hrb3Ygd3JvdGU6Cj4gPj4gT24gVGh1LCBEZWMgMDUsIDIwMjQgYXQgMDk6MjY6NDdQTSAr
MDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4gPj4+Cj4gPj4+Cj4gPj4+IE9uIDExLzI5LzIwMjQg
MTA6MzMgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPj4+PiBPbiBGcmksIDI5IE5vdiAy
MDI0IGF0IDA5OjU5LCBYaWFuZ3h1IFlpbiA8cXVpY194aWFuZ3h1eUBxdWljaW5jLmNvbT4gd3Jv
dGU6Cj4gPj4+Pj4KPiA+Pj4+PiBFeHRlbmRlZCBEUCBzdXBwb3J0IGZvciBRQ1M2MTUgVVNCIG9y
IERQIHBoeS4gRGlmZmVyZW50aWF0ZWQgYmV0d2Vlbgo+ID4+Pj4+IFVTQkMgYW5kIERQIFBIWSB1
c2luZyB0aGUgbWF0Y2ggdGFibGXigJlzIHR5cGUsIGR5bmFtaWNhbGx5IGdlbmVyYXRpbmcKPiA+
Pj4+PiBkaWZmZXJlbnQgdHlwZXMgb2YgY2ZnIGFuZCBsYXlvdXQgYXR0cmlidXRlcyBkdXJpbmcg
aW5pdGlhbGl6YXRpb24gYmFzZWQKPiA+Pj4+PiBvbiB0aGlzIHR5cGUuIFN0YXRpYyB2YXJpYWJs
ZXMgYXJlIHN0b3JlZCBpbiBjZmcsIHdoaWxlIHBhcnNlZCB2YWx1ZXMKPiA+Pj4+PiBhcmUgb3Jn
YW5pemVkIGludG8gdGhlIGxheW91dCBzdHJ1Y3R1cmUuCj4gPj4+Pgo+ID4+Pj4gV2UgZGlkbid0
IGhhdmUgYW4gdW5kZXJzdGFuZGluZyAvIGNvbmNsdXNpb24gd2hldGhlcgo+ID4+Pj4gcWNvbSx1
c2Itc3NwaHktcW1wLXVzYjMtb3ItZHAgUEhZcyBhcmUgYWN0dWFsbHkgYSBzaW5nbGUgZGV2aWNl
IC8gUEhZCj4gPj4+PiBvciB0d28gUEhZcyBiZWluZyBwbGFjZWQgbmV4dCB0byBlYWNoIG90aGVy
LiBDb3VsZCB5b3UgcGxlYXNlIHN0YXJ0Cj4gPj4+PiB5b3VyIGNvbW1pdCBtZXNzYWdlIGJ5IGV4
cGxhaW5pbmcgaXQ/IE9yIGV2ZW4gYmV0dGVyLCBtYWtlIHRoYXQgYSBwYXJ0Cj4gPj4+PiBvZiB0
aGUgY292ZXIgbGV0dGVyIGZvciBhIG5ldyBzZXJpZXMgdG91Y2hpbmcganVzdCB0aGUgVVNCQyBQ
SFkKPiA+Pj4+IGRyaXZlci4gRFAgY2hhbmdlcyBkb24ndCBoYXZlIGFueXRoaW5nIGluIGNvbW1v
biB3aXRoIHRoZSBQSFkgY2hhbmdlcywKPiA+Pj4+IHNvIHlvdSBjYW4gc3BsaXQgdGhlIHNlcmll
cyBpbnRvIHR3by4KPiA+Pj4+Cj4gPj4+IEJlZm9yZSBpbXBsZW1lbnQgRFAgZXh0ZW5zaW9uLCB3
ZSBoYXZlIGRpc2N1c3NlZCB3aXRoIGFiaGluYXYgYW5kIGtyaXNobmEgYWJvdXQgd2hldGhlciB1
c2UgY29tYm8sIHVzYmMgb3Igc2VwYXJhdGUgcGh5Lgo+ID4+Cj4gPj4gV2hhdCBpcyAiRFAgZXh0
ZW5zaW9uIj8KPiA+Pgo+IEknbSBzb3JyeSBjb25mdXNpb24gY2FzdWVkIGJ5IG15IGRlc2NyaXB0
aW9uLiBJdCdzIG1lYW5zIGV4dGVuZCBEUCBpbXBsZW1udCBmb3IgVVNCQyBwaHkgZHJpdmVyLgo+
ID4+Pgo+ID4+PiBXZSBpZGVudGlmaWVkIHRoYXQgRFAgYW5kIFVTQiBzaGFyZSBzb21lIGNvbW1v
biBjb250cm9scyBmb3IgcGh5X21vZGUgYW5kIG9yaWVudGF0aW9uLgo+ID4+PiBTcGVjaWZpY2Fs
bHksICdUQ1NSX1VTQjNfMF9EUF9QSFlNT0RFJyBjb250cm9scyB3aG8gbXVzdCB1c2UgdGhlIGxh
bmVzIC0gVVNCIG9yIERQLAo+ID4+PiB3aGlsZSBQRVJJUEhfU1NfVVNCMF9VU0IzUEhZX1BDU19N
SVNDX1RZUEVDX0NUUkwgY29udHJvbHMgdGhlIG9yaWVudGF0aW9uLgo+ID4+PiBJdCB3b3VsZCBi
ZSBtb3JlIGVmZmljaWVudCBmb3IgYSBzaW5nbGUgZHJpdmVyIHRvIG1hbmFnZSB0aGVzZSBjb250
cm9scy4gCj4gPj4KPiA+PiBUaGUgcXVlc3Rpb24gaXMgYWJvdXQgdGhlIGhhcmR3YXJlLCBub3Qg
YWJvdXQgdGhlIGRyaXZlci4KPiA+Pgo+ID4+PiBBZGRpdGlvbmFsbHksIHRoaXMgUEhZIGRvZXMg
bm90IHN1cHBvcnQgQWx0IE1vZGUsIGFuZCB0aGUgdHdvIGNvbnRyb2wgcmVnaXN0ZXJzIGFyZSBs
b2NhdGVkIGluIHNlcGFyYXRlIGFkZHJlc3Mgc3BhY2VzLiAKPiA+Pj4gVGhlcmVmb3JlLCBldmVu
IHRob3VnaCB0aGUgb3JpZW50YXRpb24gZm9yIERQIG9uIHRoaXMgcGxhdGZvcm0gaXMgYWx3YXlz
IG5vcm1hbCBhbmQgY29ubmVjdGVkIHRvIHRoZSB2aWRlbyBvdXRwdXQgYm9hcmQsIAo+ID4+PiB3
ZSBzdGlsbCBkZWNpZGVkIHRvIGJhc2UgaXQgb24gdGhlIFVTQkMgZXh0ZW5zaW9uLgo+ID4+Cj4g
Pj4gQ291bGQgeW91IHBsZWFzZSBjbGFyaWZ5LCBkbyB1c2IzLW9yLWRwIFBIWXMgc3VwcG9ydCBE
UC1vdmVyLVVTQi1DPyBJCj4gPj4gdGhvdWdodCB0aGF0IHVzYmMtb3ItZHAgcGxhdGZvcm1zIHN1
cHBvcnQgdGhhdCwgYnV0IHRoZXkgZG9uJ3QKPiA+PiBzdXBwb3J0IERQK1VTQiBwaW4gY29uZmln
dXJhdGlvbi4gTm90ZSwgdGhlIHF1ZXN0aW9uIGlzIGJyb2FkZXIgdGhhbgo+ID4+IGp1c3QgUUNT
NjE1LCBpdCBjb3ZlcnMgdGhlIFBIWSB0eXBlIGl0c2VsZi4KPiA+Pgo+ID4+IEFsc28sIGlzIFRD
U1IgY29uZmlndXJhdGlvbiByZWFkL3dyaXRlIG9yIHJlYWQtb25seT8gQXJlIHdlIHN1cHBvc2Vk
IHRvCj4gPj4gc2V0IHRoZSByZWdpc3RlciBmcm9tIE9TIG9yIGFyZSB3ZSBzdXBwb3NlZCB0byBy
ZWFkIGl0IGFuZCB0aHVzIGRldGVtaW5lCj4gPj4gdGhlIFBIWSBtb2RlPwo+ID4gCj4gPiBBbnkg
dXBkYXRlcyBvbiB0aGVzZSB0d28gdG9waWNzPwo+ID4gCj4gU3RpbGwgY29uZmlybWluZyBkZXRh
aWwgaW5mbyB3aXRoIEhXICYgZGVzaWduIHRlYW0uCj4gSeKAmWxsIHVwZGF0ZSB0aGUgaW5mb3Jt
YXRpb24gdGhhdCBoYXMgYmVlbiBjb25maXJtZWQgc28gZmFyLgo+IFRoaXMgcGh5IHN1cHBvcnQg
RFAtb3Zlci1VU0ItQyxidXQgaXQncyBub3Qgc3VwcG9ydCBhbHQtbW9kZSB3aGljaCAyIGxhbmUg
d29yayBmb3IgRFAsIG90aGVyIDIgbGFuZSB3b3JrIGZvciBVU0IuCj4gVENTUiBwaHkgbW9kZSBp
cyByZWFkL3dyaXRlIHJlZyBhbmQgd2UgY2FuIHJlYWQgZm9yIGRldGVybWluZSBwaHkgbW9kZS4K
Ck9rLCB0aGFua3MgZm9yIHRoZSBleHBsYW5hdGlvbi4gRnJvbSBteSBwb2ludCBvZiB2aWV3OgoK
LSBJbXBsZW1lbnQgdGhlIERQIFBIWSB0byBiZSBhIHBhcnQgb2YgdGhlIHNhbWUgZHJpdmVyLiBF
YWNoIGRldmljZQogIHN1cHBvcnRlZCBieSB0aGUgdXNiYyBkcml2ZXIgc2hvdWxkIGdldCBib3Ro
IFBIWXMuCgotIE1ha2Ugc3VyZSBub3QgdG8gYnJlYWsgdGhlIEFCSTogI3BoeS1jZWxscyA9IDww
PiBzaG91bGQgc3RpbGwgd29yayBhbmQKICByZXR1cm4gVVNCIFBIWSwga2VlcGluZyBiYWNrd2Fy
ZHMgY29tcGF0aWJpbGl0eS4gTmV3ZXIgZGV2aWNlcyBvcgogIHVwZ3JhZGVkIERUIGZvciBvbGQg
ZGV2aWNlcyBzaG91bGQgcmV0dXJuIFVTQiBQSFkgZm9yIDwuLi4gMD4gYW5kIERQCiAgUEhZIGZv
ciA8Li4uIDE+LgoKLSBJJ20gbm90IHNodXJlIGhvdyB0byBoYW5kbGUgdGhlIFVTQiBhbmQgRFAg
Y29leGlzdGVuY2UsIGVzcGVjaWFsbHkgaW4KICB5b3VyIGNhc2Ugb2YgdGhlIFVTQi1vci1EUCBQ
SFkuCgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
