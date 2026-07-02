Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E851C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 01:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CYEhl91AqGFMAnZlJBHIKH37vyAAX1LXkHMcCEoG19g=; b=uprpNbp7IXHSMT
	f4C5BLrtYA/K1NR1nqf/zyIS80qoCa1RklSy658/rFHF/s6jMybzPvLm6fJg0V7TktfQ728vIOMr5
	LZ4MmSySDMDK0iGzbZ3sB5+GxzvE4/+arK+jiL6WLGfyU2uUb7yaLl0mUoDO59FSzRfYi2Zy03nqF
	GBLLqhFzjJvMAoRtZ++9jTS1VGU4xEeKpueMVe8GfoNsECO6G0ZPno1YyPhZo+CSAS79fQXcZQWnf
	AAMzW+7jReUlO5rfTukMPEGJ5R6onZb1QtzHy+duvsU9vZv3U3JGJ8FIDEGPngsXbwNH0F3nzA2d5
	InvA9HyOTwfuk8wWUuog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf6Yv-00000003NTt-3Yz3;
	Thu, 02 Jul 2026 01:49:57 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf6Yt-00000003NTC-1ibj
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 01:49:56 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-37fa53bc22dso927362a91.3
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 18:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782956994; x=1783561794; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J3jSeMZN0e9RiTr23Xi2KHpV4fFpgmT05xW1Ks8KJnA=;
        b=bODTsj1OoFvfDAqZhhtD3NL/6suxv4f67m+NfJZ2nU8IA35ttW827f+FyyanfnF9a7
         oSwCTqt4maPiDDvdZPuIHXzqRnsvcos5fm8lPJm0J9kymkYKaWwBh9O2ol11U7ESGSNF
         wTF5O6Hkw2ZMcwfCwsQPadUpyBodyzWJq6Oxks3tot8QdRBbbqa54eQqHvKQ2lbjrzkT
         Rg+gk8YHbUZ7FAy5Rr+ZbRVYJP0rqyYILJYLNxIDlAP9HpJsnv03cA6cohhZs5SYVRJf
         6sSmW8WnToChRtW1UmG7Alpw+/tDz+O0mM+BKSc0fK8C0+xNi2qkOYuG0kRgj8zVg5Yf
         DedQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782956994; x=1783561794;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J3jSeMZN0e9RiTr23Xi2KHpV4fFpgmT05xW1Ks8KJnA=;
        b=SCb3rdMc2iDLV3MWhrmsYw0HaFaUYSDyiionY5rSedJgmCd2Aie+SP/WqLrlHUlxrn
         WjhlkWjlUSwZ2JGyeg9isqqhtI//jCyHAttXL2y+TJSwIKhRN8VuOqG0hDRclJveDmhc
         BTKH4Ud0XRwRJlffTo4QAQW1S0qLV+NFG3X8oUkunQd2xd9KGan6linkgw4UoNwwx5Oo
         YJcfbujpTzKYn1FDUXhzh1kMOrf3huCZVuZUEPVlaSsen7JZso3oN++O7K8QZj+KdaO0
         1oXedlMx5/qTzIuzgnF+LgEM5WleRg1aC8V3PZdByFyklHbR9a3+vRW9tD1WKdebJx63
         uBtA==
X-Forwarded-Encrypted: i=1; AHgh+RoES1XA8vW8i5AhtGuNZd1sX74bdxWvKumAPSXA+2Rn4+X9zkFrjgwif3bCkZqKVS1syfBOY7k2NiQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzi8DXxHxomDjZzstLCkC+AI2AG784Upok60187hiSjyy/yZHe8
	guN31jENEFXFLmM8/0E0kR6Gyz1iRmenIjghHpg1MB74ZgxJneW0uqH2
X-Gm-Gg: AfdE7ck4LI9T+qvEz1vP8Nl/KFOfrO4SXt6Lsy5xnvrhgGbAIANjSfzqra5BAYKX8Tj
	4dt6u4ajg4lDsNEN/pPnw8IMVzvQO3jHJFGzgEaWV5s0VYp86+hxQK1zkv2LPXyiNxa3eVlinH0
	1RXogSKZy5I3q130tXWADM5yRYwc4Upjol5z1AFhgB86k5WVG4cEeIuurlYxXAY5WLBTH+oe+05
	atnBweyQbPB6DZceTLThAJ0MsIslbpKUEp+IRyrAgyrB6e7qj6uYg0IqsqH0DyzPJpa+Z0VOPcS
	qhNow1CmqV4feX4+W2YU9SG0Jp6EpJ+k9D+jV5rYzqqj2qrGUInA2JooyxjYRwDgm34BWV/s2YG
	b3OGHiDRnc+Xa74A+GI4p+MDw9zqIwWAfvkIcrBmHXfvh7DOYLTbMIEcNvjk7F02MGzMm5O1Uui
	zKpzZTMGfS36REYC1GWuWndSygNOPaLGjXR7rIT2/1RYUitiuCEY7NoPPe804sG+JF/w==
X-Received: by 2002:a17:90b:3b52:b0:37f:9ce3:ca93 with SMTP id 98e67ed59e1d1-380aa1d7714mr4632989a91.28.1782956993855;
        Wed, 01 Jul 2026 18:49:53 -0700 (PDT)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-380e1631aadsm130307a91.4.2026.07.01.18.49.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 18:49:53 -0700 (PDT)
Message-ID: <b002cf5f-4e1a-4181-b9c3-d4f3870bffe8@gmail.com>
Date: Thu, 2 Jul 2026 09:49:46 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend
 for dual-port OTG support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Jacky Huang
 <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>,
 Hui-Ping Chen <hpchen0nvt@gmail.com>, Joey Lu <yclu4@nuvoton.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260625023958.569299-1-a0987203069@gmail.com>
 <20260625023958.569299-3-a0987203069@gmail.com>
 <20260625-sexy-black-tarantula-4031a6@quoll>
 <24de6a00-ba4e-455b-baa7-479d1cc2edf3@gmail.com>
 <0f5a408b-5c55-4cd2-831a-49316c9912c9@kernel.org>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <0f5a408b-5c55-4cd2-831a-49316c9912c9@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_184955_448324_91F1F2BC 
X-CRM114-Status: GOOD (  30.07  )
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

Ck9uIDYvMzAvMjAyNiAyOjE2IFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDI5
LzA2LzIwMjYgMTI6NDAsIEpvZXkgTHUgd3JvdGU6Cj4+IE9uIDYvMjUvMjAyNiAzOjU4IFBNLCBL
cnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pj4gT24gVGh1LCBKdW4gMjUsIDIwMjYgYXQgMTA6
Mzk6NTZBTSArMDgwMCwgSm9leSBMdSB3cm90ZToKPj4+PiAgICBwcm9wZXJ0aWVzOgo+Pj4+ICAg
ICAgY29tcGF0aWJsZToKPj4+PiAgICAgICAgZW51bToKPj4+PiAgICAgICAgICAtIG51dm90b24s
bWEzNWQxLXVzYjItcGh5Cj4+Pj4gICAgCj4+Pj4gKyAgcmVnOgo+Pj4+ICsgICAgbWF4SXRlbXM6
IDEKPj4+PiArCj4+Pj4gICAgICAiI3BoeS1jZWxscyI6Cj4+Pj4gLSAgICBjb25zdDogMAo+Pj4+
ICsgICAgY29uc3Q6IDEKPj4+PiArICAgIGRlc2NyaXB0aW9uOgo+Pj4+ICsgICAgICBUaGUgc2lu
Z2xlIGNlbGwgc2VsZWN0cyB0aGUgUEhZIHBvcnQuIDAgc2VsZWN0cyB0aGUgT1RHIHBvcnQgKFVT
QjAsCj4+Pj4gKyAgICAgIHNoYXJlZCB3aXRoIERXQzIgZ2FkZ2V0IGNvbnRyb2xsZXIpIGFuZCAx
IHNlbGVjdHMgdGhlIGhvc3Qtb25seSBwb3J0Cj4+Pj4gKyAgICAgIChVU0IxKS4KPj4+PiAgICAK
Pj4+PiAtICBjbG9ja3M6Cj4+Pj4gLSAgICBtYXhJdGVtczogMQo+Pj4gVGhpcyBpcyBvZGQsIGNv
bnNpZGVyaW5nIHRoYXQgcGFyZW50IGRvZXMgbm90IGhhdmUgY2xvY2tzLiBTbyBleHBsYWluIG1l
Cj4+PiB0aGlzOgo+Pj4gMS4gVVNCIFBIWSBuZWVkZWQgY2xvY2tzLgo+Pj4gMi4gWW91IGV4dGVu
ZCBVU0IgUEhZIHRvIGNvdmVyIHNlY29uZCBwYXJ0Lgo+Pj4gMy4gVGhhdCBleHRlbnNpb24gZm9y
IHNlY29uZCBwYXJ0IG1lYW5zIHRoYXQgY2xvY2tzIGFyZSBub3QgbmVlZGVkLgo+Pj4gUmVhbGx5
LCBob3c/IEhvdyBpcyBpdCBwb3NzaWJsZSBpbiBoYXJkd2FyZT8KPj4gVGhlIGhhcmR3YXJlIGhh
cyB0d28gaW5kZXBlbmRlbnQgY2xvY2sgZG9tYWluczoKPj4KPj4gICDCoCAtIFRoZSBQSFkgYW5h
bG9nIGJsb2NrIHRha2VzIHRoZSAyNCBNSHogSFhUIGFzIGl0cyByZWZlcmVuY2UsIHdpcmVkCj4+
ICAgwqAgwqAgZGlyZWN0bHkgdG8gdGhlIFBIWSdzIGludGVybmFsIFBMTCwgd2hpY2ggZGVyaXZl
cyB0aGUgcmVxdWlyZWQKPj4gb3BlcmF0aW5nCj4+ICAgwqAgwqAgZnJlcXVlbmNpZXMgaW50ZXJu
YWxseS4gVGhpcyByZWZlcmVuY2UgcGF0aCBpcyBlbnRpcmVseSBvdXRzaWRlIHRoZSBTb0MKPj4g
ICDCoCDCoCBzb2Z0d2FyZSBjbG9jayB0cmVlOyBubyBzb2Z0d2FyZS1nYXRhYmxlIGNsb2NrIGdh
dGUgbmVlZHMgdG8gYmUgZW5hYmxlZAo+PiAgIMKgIMKgIGZvciB0aGUgUEhZIHRvIHBvd2VyIHVw
IGFuZCBsb2NrIGl0cyBQTEwuIFRoZSBvbmx5IHNvZnR3YXJlIGNvbnRyb2wgdGhlCj4+ICAgwqAg
wqAgUEhZIGRyaXZlciBleGVyY2lzZXMgaXMgdG9nZ2xpbmcgZWFjaCBQSFkncyBQb3dlci1PbiBS
ZXNldCAoUE9SKSBiaXQsCj4+ICAgwqAgwqAgd2hpY2ggcmVzaWRlcyBpbiB0aGUgU1lTIHJlZ2lz
dGVyIGJsb2NrLiBUaGUgZHJpdmVyIGFjY2Vzc2VzIHRoaXMgdmlhCj4+ICAgwqAgwqAgdGhlIHBh
cmVudCByZWdtYXAKPj4KPj4gICDCoCAtIGBIVVNCSDBfR0FURWAgLyBgSFVTQkgxX0dBVEVgIC8g
YFVTQkRfR0FURWAgYXJlIEFIQi9BUEIgYnVzIGludGVyZmFjZQo+PiAgIMKgIMKgIGNsb2NrcyBm
b3IgdGhlIGhvc3QgYW5kIGdhZGdldCAoRUhDSSwgT0hDSSwgRFdDMikuIFRoZXkgZ2F0ZQo+PiAg
IMKgIMKgIHRoZSByZWdpc3Rlci1hY2Nlc3MgcGF0aCBiZXR3ZWVuIHRoZSBDUFUgYW5kIGVhY2gg
Y29udHJvbGxlciwgbm90Cj4+IHRoZSBQSFkKPj4gICDCoCDCoCBhbmFsb2cgY2lyY3VpdHJ5IGl0
c2VsZi4KPj4KPj4gVGhlIG9yaWdpbmFsIHNpbmdsZS1wb3J0IGRyaXZlciBlbmFibGVkIGBIVVNC
SDBfR0FURWAgYXMgaWYgaXQgYmVsb25nZWQKPj4gdG8gdGhlCj4+IFBIWSwgYnV0IHRoYXQgZ2F0
ZSBpcyBhY3R1YWxseSBvd25lZCBieSBFSENJMC9PSENJMCBhbmQgaXMgYWxyZWFkeQo+PiBtYW5h
Z2VkIGJ5Cj4+IHRob3NlIGNvbnRyb2xsZXIgZHJpdmVycyB0aHJvdWdoIHRoZWlyIG93biBgY2xv
Y2tzYCBEVFMgYmluZGluZ3MuIFRoZSBQSFkKPj4gZHJpdmVyIHdhcyByZWR1bmRhbnRseSBlbmFi
bGluZyB0aGUgc2FtZSBnYXRlLgo+Pgo+PiBXaGVuIGV4dGVuZGluZyB0aGUgZHJpdmVyIHRvIGNv
dmVyIFBIWTEsIHRoZSBzYW1lIHBhdHRlcm4gaGVsZDogRUhDSTEvT0hDSTEKPj4gbWFuYWdlIGBI
VVNCSDFfR0FURWAgdGhlbXNlbHZlcy4gVGhlcmUgaXMgbm8gY2xvY2sgdGhhdCBiZWxvbmdzCj4+
IGV4Y2x1c2l2ZWx5IHRvCj4+IHRoZSBQSFksIHNvIGBjbG9ja3NgIHdpbGwgYmUgZHJvcHBlZCBm
cm9tIHRoZSBQSFkgYmluZGluZyBlbnRpcmVseS4KPiBXaGF0IGRyaXZlciBoYXMgdG8gZG8gd2l0
aCBpdD8KPgo+IFlvdSBkaWQgbm90IGFuc3dlciB0aGUgcXVlc3Rpb24uIEhvdyBhZGRpbmcgbWlz
c2luZyBPVEcgdG8gZXhpc3RpbmcKPiBkZXZpY2UgY2F1c2VzIHRoYXQgaGFyZHdhcmUgdG8gbG9z
ZSBhIGNsb2NrPyBIb3cgaXMgaXQgcG9zc2libGU/Cj4KVG8gYW5zd2VyIHRoZSBoYXJkd2FyZSBx
dWVzdGlvbiBkaXJlY3RseTogYWRkaW5nIE9URyBzdXBwb3J0IGRvZXMgbm90CmNhdXNlIHRoZSBo
YXJkd2FyZSB0byBsb3NlIGEgY2xvY2suIFRoZSBoYXJkd2FyZSBjbG9jayB0b3BvbG9neSBpcwpp
ZGVudGljYWwgaW4gYm90aCB0aGUgc2luZ2xlLXBvcnQgYW5kIGR1YWwtcG9ydCBjYXNlcy4KClRo
ZSBQSFkgYW5hbG9nIGJsb2NrIGRlcml2ZXMgaXRzIHJlZmVyZW5jZSBmcm9tIHRoZSAyNCBNSHog
SFhUIGNyeXN0YWwKdGhyb3VnaCBhbiBhbHdheXMtb24gcGF0aCB2aWEgdGhlIFBIWSdzIGludGVy
bmFsIFBMTC4gTm8gc29mdHdhcmUtZ2F0ZWQKY2xvY2sgaW4gdGhlIGtlcm5lbCBjbG9jayB0cmVl
IHNpdHMgaW4gdGhpcyBwYXRoLiBUaGUgUEhZJ3MgcG93ZXItb24gYW5kCnJlc2V0IHN0YXRlIGlz
IG1hbmFnZWQgdGhyb3VnaCBVU0JQTUlTQ1IgaW4gdGhlIFNZUyByZWdpc3RlciBibG9jaywgd2hp
Y2gKdGhlIGRyaXZlciBhY2Nlc3NlcyB2aWEgdGhlIG51dm90b24sc3lzIHJlZ21hcCBvdXRzaWRl
IHRoZSBjbG9jayB0cmVlLgoKYEhVU0JIMF9HQVRFYCBnYXRlcyB0aGUgQUhCIGJ1cyBpbnRlcmZh
Y2UgdG8gdGhlIEVIQ0kwL09IQ0kwIGhvc3QKY29udHJvbGxlcnMgdGhhdCBzaGFyZSBQSFkwLiBU
aGlzIHJlbGF0aW9uc2hpcCBpcyB0aGUgc2FtZSBpbiBib3RoIHRoZQpzaW5nbGUtcG9ydCBhbmQg
ZHVhbC1wb3J0IGNvbmZpZ3VyYXRpb25zLgo+Pj4+ICsgIG51dm90b24scmNhbGNvZGU6Cj4+Pj4g
KyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzItYXJyYXkK
Pj4+PiArICAgIG1pbkl0ZW1zOiAxCj4+Pj4gKyAgICBtYXhJdGVtczogMgo+Pj4gWW91IHNob3Vs
ZCByZXF1aXJlIHR3byB2YWx1ZXMuIEkgdW5kZXJzdGFuZCB0aGF0IGFueSBQSFkgaXMgb3B0aW9u
YWwsCj4+PiB0aHVzIHlvdSBza2lwIHRoZSBlbnRyeSwgc28gaG93IHdvdWxkIHlvdSBwcm92aWRl
IHZhbHVlIGZvciBQSFkxIG9ubHk/Cj4+IGBudXZvdG9uLHJjYWxjb2RlYCB3aWxsIGJlIGNoYW5n
ZWQgdG8gcmVxdWlyZSBleGFjdGx5IHR3byB2YWx1ZXMKPj4gKGBtaW5JdGVtczogMiwgbWF4SXRl
bXM6IDJgKSwgb25lIGZvciBQSFkwIGFuZCBvbmUgZm9yIFBIWTEgcmVzcGVjdGl2ZWx5Lgo+PiBU
aGUgcHJvcGVydHkgd2lsbCByZW1haW4gb3B0aW9uYWwgb3ZlcmFsbDsgd2hlbiBhYnNlbnQsIGVh
Y2ggcG9ydAo+PiByZXRhaW5zIGl0cwo+PiBwb3dlci1vbiBkZWZhdWx0IHZhbHVlIGxvYWRlZCBh
dCBoYXJkd2FyZSBpbml0aWFsaXNhdGlvbi4gV2hlbiBwcmVzZW50LCBib3RoCj4+IGVudHJpZXMg
bXVzdCBiZSBzdXBwbGllZC4KPiBTbyBhcmUgeW91IGdvaW5nIHRvIGltcGxlbWVudCBpdCBvciBu
b3Q/Cj4KWWVzLCBJIHdpbGwgaW1wbGVtZW50IHRoaXMgY2hhbmdlIGluIHRoZSBuZXh0IHZlcnNp
b24gb2YgdGhlIHBhdGNoc2V0Lgo+Pj4+ICsgICAgaXRlbXM6Cj4+Pj4gKyAgICAgIG1pbmltdW06
IDAKPj4+PiArICAgICAgbWF4aW11bTogMTUKPj4+PiArICAgIGRlc2NyaXB0aW9uOgo+Pj4+ICsg
ICAgICBSZXNpc3RvciBjYWxpYnJhdGlvbiB0cmltIGNvZGVzIGZvciBQSFkwIGFuZCBQSFkxIHJl
c3BlY3RpdmVseS4KPj4+PiArICAgICAgRWFjaCA0LWJpdCB2YWx1ZSBpcyB3cml0dGVuIHRvIHRo
ZSBSQ0FMQ09ERSBmaWVsZCBpbiBVU0JQTUlTQ1IgYW5kCj4+Pj4gKyAgICAgIGFkanVzdHMgdGhl
IFBIWSdzIGludGVybmFsIHRlcm1pbmF0aW9uIHJlc2lzdGFuY2UuIEJvdGggZW50cmllcyBhcmUK
Pj4+PiArICAgICAgb3B0aW9uYWw7IHdoZW4gYWJzZW50IHRoZSBoYXJkd2FyZSByZXNldCBkZWZh
dWx0IGlzIHVzZWQuCj4+Pj4gICAgCj4+Pj4gLSAgbnV2b3RvbixzeXM6Cj4+Pj4gLSAgICAkcmVm
OiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCj4+Pj4gKyAgbnV2b3Rv
bixvYy1hY3RpdmUtaGlnaDoKPj4+PiArICAgIHR5cGU6IGJvb2xlYW4KPj4+PiAgICAgICAgZGVz
Y3JpcHRpb246Cj4+Pj4gLSAgICAgIHBoYW5kbGUgdG8gc3lzY29uIGZvciBjaGVja2luZyB0aGUg
UEhZIGNsb2NrIHN0YXR1cy4KPj4+PiArICAgICAgV2hlbiBwcmVzZW50LCB0aGUgb3Zlci1jdXJy
ZW50IGRldGVjdCBpbnB1dCBmcm9tIHRoZSBWQlVTIHBvd2VyIHN3aXRjaAo+Pj4+ICsgICAgICBp
cyB0cmVhdGVkIGFzIGFjdGl2ZS1oaWdoLiBUaGUgZGVmYXVsdCAocHJvcGVydHkgYWJzZW50KSBp
cyBhY3RpdmUtbG93Lgo+Pj4+ICsgICAgICBUaGlzIHNldHRpbmcgaXMgc2hhcmVkIGJ5IGJvdGgg
VVNCIGhvc3QgcG9ydHMuCj4+Pj4gICAgCj4+Pj4gICAgcmVxdWlyZWQ6Cj4+Pj4gICAgICAtIGNv
bXBhdGlibGUKPj4+PiArICAtIHJlZwo+Pj4gVGhhdCdzIEFCSSBicmVhayB3aGljaCB3YXMgbm90
IGV4cGxhaW5lZCBpbiB0aGUgY29tbWl0IG1zZyAtIG5laXRoZXIKPj4+IHNwZWNpZnlpbmcgaW1w
YWN0IG5vciBhY3R1YWxseSBwcm92aWRpbmcgcmVhc29ucyB3aHkgeW91IGJyZWFrIEFCSS4KPj4+
Cj4+PiBBbmQgaG9uZXN0bHksIHlvdSBoYXZlIG5vIHJlc291cmNlcyBoZXJlIGV4Y2VwdCB0aGUg
YWRkcmVzcywgc28gbm93IGl0Cj4+PiBpcyBjbGVhciB0aGF0IHRoaXMgc2hvdWxkIGJlIGZvbGRl
ZCBpbnRvIHBhcmVudC4gU2VlIERUUzEwMSB0YWxrIHNsaWRlcy4KPj4gVGhlIGNvbW1pdCBtZXNz
YWdlIHdpbGwgYmUgdXBkYXRlZCB0byBleHBsaWNpdGx5IGFja25vd2xlZGdlIHRoZSBBQkkgYnJl
YWs6Cj4+IGV4aXN0aW5nIERUUyBmaWxlcyB0aGF0IGNvbnRhaW4gYSBzdGFuZGFsb25lIGB1c2It
cGh5YCBub2RlIHdpdGhvdXQgYSBgcmVnYAo+PiBwcm9wZXJ0eSB3aWxsIGZhaWwgZHQtc2NoZW1h
IHZhbGlkYXRpb24gYWZ0ZXIgdGhpcyBjaGFuZ2UuIFRoZSBpbXBhY3QgaXMKPj4gbGltaXRlZCB0
byB0aGUgTUEzNUQxIFNvQzsgbm8gdXBzdHJlYW0gRFRTIGZvciB0aGlzIFNvQyBleGlzdGVkIGJl
Zm9yZSB0aGlzCj4+IHBhdGNoIHNlcmllcywgc28gbm8gaW4tdHJlZSBib2FyZCBmaWxlcyBhcmUg
YnJva2VuLiBUaGUgYnJlYWsgaXMgaW50ZW50aW9uYWwKPiBCdXQgYWxsIG9mIG91dCBvZiB0cmVl
IHVzZXJzIGFyZSBicm9rZW4uCk9uIHJlZmxlY3Rpb24sIHRoZSBhcHByb2FjaCBpcyBiZWluZyBy
ZXZpc2VkIHRvIGVsaW1pbmF0ZSB0aGUgQUJJIGJyZWFrIAplbnRpcmVseS4KVGhlIG5leHQgcmV2
aXNpb24gd2lsbCBrZWVwIHRoZSBleGlzdGluZyBgbnV2b3RvbixtYTM1ZDEtdXNiMi1waHlgIGJp
bmRpbmcKaW50YWN0IHdpdGggYWxsIGl0cyBjdXJyZW50IHJlcXVpcmVkIHByb3BlcnRpZXMgKGBj
b21wYXRpYmxlYCwgYGNsb2Nrc2AsCmBudXZvdG9uLHN5c2AsIGAjcGh5LWNlbGxzYCkuIE5ldyBP
VEcgYW5kIGR1YWwtcG9ydCBjYXBhYmlsaXR5IHdpbGwgYmUKZXhwcmVzc2VkIGFzIHN0cmljdGx5
IG9wdGlvbmFsIGJhY2t3YXJkLWNvbXBhdGlibGUgYWRkaXRpb25zOgoKLSBgI3BoeS1jZWxsc2Ag
dXBkYXRlZCBmcm9tIGBjb25zdDogMGAgdG8gYGVudW06IFswLCAxXWAuIEV4aXN0aW5nIERUUwog
wqAgd2l0aCBgI3BoeS1jZWxscyA9IDwwPmAgY29udGludWVzIHRvIHZhbGlkYXRlIGFuZCBiZWhh
dmUgYXMgYmVmb3JlLgogwqAgTmV3IERUUyBvcHRpbmcgaW50byBkdWFsLXBvcnQgdXNlcyBgI3Bo
eS1jZWxscyA9IDwxPmAuCi0gYG51dm90b24scmNhbGNvZGVgOiBvcHRpb25hbCwgZXhhY3RseSB0
d28gdmFsdWVzIHdoZW4gcHJlc2VudC4KLSBgbnV2b3RvbixvYy1hY3RpdmUtaGlnaGA6IG9wdGlv
bmFsIGJvb2xlYW4uCj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
