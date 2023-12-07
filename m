Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66E1BC10DCE
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 11:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FnCmKtmNPvZwI3D6Q7IhcDcoi18biBnVm/M6v7+XQ44=; b=aFbiLtsVC2MNb/
	pSHAnXnRfaM7k2nnf+u//vVJkpVaOQe+bY61/WQHPLs8Bofv9vaa13V7EQ3G0tETLZ2agTlZOQucb
	wEfMtI8+1Sbr1EZQhUjEPJDVKwBJZkMyN2EA/68FfLydBhJBPgs9k5y3sx8GjiYmCMEprm4QIg9/o
	VIHD14unfGO9LNPQy3DkkLgmwswgy/ni26KkddJzzXIHN7mHgKQjW5SGlLoVYplz524wdSzMVOJXd
	IDQypWDAZ3FdGC5Y5MqDk98g0rVtSPqwS54GpyxS0vZ/4H/pqlhh0LkrQiqRSPkNOFxhMyFFC//mK
	fNq1O8TLaK7islp/0zdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBCaS-00ChAf-0T;
	Thu, 07 Dec 2023 11:30:36 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBCaP-00Ch9x-11
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 11:30:34 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5d747dbf81eso5456277b3.1
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 03:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701948630; x=1702553430; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=g6q4WDwdBGnjml+5eYgd3QDalQW3uJ07fD6FI7/knxo=;
        b=KonLmrbED732hivexdduYz1wQP7D4l25ilunxC9J6NgDh/Cw1Flae5Jqhkh56mmgdI
         AhNSu2BkS18QDehrXQjx3OvDre6uCovd6n5J2bR30+UgzU+HY3Ipb9UwfN8PTPtyzgpv
         V5qSAWWt7TjTomJvav3SzA+CQSzeJOFu9VJsvhq8fE+CGCoQZHLMe99ZOZ9vbXX9Ukkd
         mSHJaa9v4moFp17ctd8Zg4n+DAzO1hzVRh/JGg0uGc1oY4YnJ5fPkgX4PQzFQWnvTRiD
         XMDL8k4F3GDdFOk+OEJzSOUxY6W38Wxq94gXPe10sZGoHonbyu9eNXun3HIRWNctzTJk
         jj/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701948630; x=1702553430;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g6q4WDwdBGnjml+5eYgd3QDalQW3uJ07fD6FI7/knxo=;
        b=AqYYFa05RwOqaS3AtJez5ygjG517qmFZp3Yam7QLjpIEakA8/ytmYfBKgWXG0GP3/e
         1rBnsPLEO7z88a9Iat6gC8ANbv7x/u67jQDJ9g2Sa1ZMXIgLv04zgfSms5p83pLz6JQv
         gV9bnKlKBO2I8lpAKIOO9Mt602qprqUR1WwkGgDUnIQ2ZRCb1C0mU0rxuukojOuAuyHn
         3XlSYiG27YpMzl7bIlDPVksZ960t3v6QM0WfJen5jpOvI85IoCtUqAeYjVto3E/BZfXm
         bqguGHiApMGnbdl/70vaOs2KrNZN4/YnRwNgiDDo1glJQz+eYi7HvVCH2co8QccojYxt
         BqWA==
X-Gm-Message-State: AOJu0Yyzi5uHvuHLnvLj3CjBj2OpphkzRSNu9MuYtxGMlJ24QJ1ZVrWt
	2d9bF/hmtf0UPhPPk54t03pJ9A==
X-Google-Smtp-Source: AGHT+IEFIy7YvehhnYQ+9UNjhaSCyrZhwFI5h/22/oROd5dD77gPNDGqvwLUYIU3TUuYWQbM7w7VdA==
X-Received: by 2002:a81:7808:0:b0:5ca:e4a6:bb47 with SMTP id t8-20020a817808000000b005cae4a6bb47mr2179326ywc.35.1701948629850;
        Thu, 07 Dec 2023 03:30:29 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id p3-20020a0dff03000000b005d7647af8ccsm322836ywf.114.2023.12.07.03.30.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Dec 2023 03:30:29 -0800 (PST)
Message-ID: <c864f62e-0ac2-4e5e-83d3-28e493a6f6c0@linaro.org>
Date: Thu, 7 Dec 2023 12:30:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: realtek: Add Realtek DHC RTD SoC
 PCIe PHY
To: =?UTF-8?B?VFlfQ2hhbmdb5by15a2Q6YC4XQ==?= <tychang@realtek.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>
References: <20231201105207.11786-1-tychang@realtek.com>
 <20231201105207.11786-2-tychang@realtek.com>
 <01946883-e008-4b4c-8e2a-a73787ad9f23@linaro.org>
 <5e57f7b0f54d4a8aa52ed6e15a9af9f5@realtek.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <5e57f7b0f54d4a8aa52ed6e15a9af9f5@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_033033_391930_10E7B974 
X-CRM114-Status: GOOD (  10.95  )
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

T24gMDcvMTIvMjAyMyAxMToxMCwgVFlfQ2hhbmdb5by15a2Q6YC4XSB3cm90ZToKPiBIaSBLcnp5
c3p0b2YsCj4gCj4gVGhhbmsgeW91IGZvciB0aGUgcmV2aWV3Lgo+IAo+PiBPbiAwMS8xMi8yMDIz
IDExOjUyLCBUenV5aSBDaGFuZyB3cm90ZToKPj4+ICsgICIjcGh5LWNlbGxzIjoKPj4+ICsgICAg
Y29uc3Q6IDAKPj4+ICsKPj4+ICsgIG52bWVtLWNlbGxzOgo+Pj4gKyAgICBtYXhJdGVtczogMQo+
Pj4gKyAgICBkZXNjcmlwdGlvbjoKPj4+ICsgICAgICBQaGFuZGxlIHRvIG52bWVtIGNlbGwgdGhh
dCBjb250YWlucyAnVHggc3dpbmcgdHJpbScKPj4+ICsgICAgICB0dW5pbmcgcGFyYW1ldGVyIHZh
bHVlIGZvciBQQ0llIHBoeS4KPj4+ICsKPj4+ICsgIG52bWVtLWNlbGwtbmFtZXM6Cj4+PiArICAg
IGl0ZW1zOgo+Pj4gKyAgICAgIC0gY29uc3Q6IHR4X3N3aW5nX3RyaW0KPj4+ICsKPj4+ICsgIHJl
YWx0ZWsscGNpZS1zeXNjb246Cj4+PiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2Rl
ZmluaXRpb25zL3BoYW5kbGUKPj4+ICsgICAgZGVzY3JpcHRpb246IHBoYW5kbGUgb2Ygc3lzY29u
IHVzZWQgdG8gY29udHJvbCBQQ0llIE1ESU8gcmVnaXN0ZXIuCj4+Cj4+IFdoeSB0aGlzIGRvZXMg
bm90IGhhdmUgcmVnIHByb3BlcnR5IGJ1dCBzeXNjb24/IFRoaXMgbG9va3MgaGFja3kuCj4+Cj4g
Cj4gT3VyIFBDSWUgUEhZIGRyaXZlciBuZWVkcyB0byBhY2Nlc3MgdHdvIHJlZ2lzdGVyczoKPiAx
LiBQQ0llIE1ESU8gcmVnaXN0ZXI6IFV0aWxpemVkIGZvciBjb25maWd1cmluZyB0aGUgUENJZSBQ
SFkuCj4gMi4gUENJZSBNQUMgTGluayBDb250cm9sIGFuZCBMaW5rIFN0YXR1cyBSZWdpc3Rlcjog
VXNlIHRvIGdldCB0aGUgY3VycmVudAo+ICAgbGluayBzcGVlZCBmb3IgY2FsaWJyYXRpb24gcHVy
cG9zZXMuCj4gCj4gQm90aCB0aGVzZSByZWdpc3RlcnMgcmVzaWRlIHdpdGhpbiB0aGUgUENJZSBj
b250cm9sbGVyIHJlZ2lzdGVycy4gVGhlIFBDSWUKPiBkcml2ZXIgaGFzIG1hcHBlZCB0aGVzZSBy
ZWdpc3RlciBhZGRyZXNzIHJlZ2lvbiwgc28gSSB1c2UgcmVnbWFwIHRvIGFjY2Vzcwo+IHRoZXNl
IHJlZ2lzdGVycy4KCkhtLCBpc24ndCBpbiBzdWNoIGNhc2UgUENJZSBQSFkgYSBjaGlsZCBvZiB0
aGUgUENJZSBjb250cm9sbGVyPyBIb3cgaXMKaXQgd2l0aCByZXNvdXJjZXMsIGxpa2UgcG93ZXIg
ZG9tYWlucyBvciByZWd1bGF0b3JzPwoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
