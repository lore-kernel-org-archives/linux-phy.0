Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05E96C43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 10:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01goV3A8HbdmU26OcfzeJs1gvulRhuC3nNCPcogEl1I=; b=M6NARo15qyZwzl
	OGqWToyPva1iw+rQ2zDC5tYRifY/WDu84TfQe89F/dRfnZpA6mXRne6/WFMbQnDq2QKMpCRtEUkhR
	oGNMXETr6hGEZc7EksouvpMMfwIBIxjBjwWluTc1+Le+CJ+kNM51As+7pabAowTa41PVru7qCh/rK
	FGfij5wL+08afsTWFK39vFadjQTvUHwQ0ErbdApSuIf8aDKwmComvuBne6aThPbc4eQQ+MStilRnR
	ZRyqi48Fuc6/qU4G5V0PMQlgom0I3uCCIDwKQst2FpnJTN6UitwKWXQOWt3LlECArmnC9tytRFXin
	sV2BLeS+wnW3TWnCIp1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we9Q8-0000000EM8j-2Kmk;
	Mon, 29 Jun 2026 10:40:56 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we9Q5-0000000EM7Z-1JBQ
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 10:40:54 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-845c65e0a10so1509321b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 03:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782729652; x=1783334452; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=omopOdpKTyCcb7PSO2EkN5aJ0TMqkgpva2n1TsO3dC8=;
        b=X+89AEt3LHK8kbju2eos2yDZuJzlWwtPrIEXVDuVKLckG+UybBHAXbrAqtRIXcHw34
         febNY/9Lk2252i0g/eBS5n2coE8owGzYUzqzDdbMo+tJOw3H+3/wSDWmLl4R54v5KnkR
         ds4Xi/VahXlpomTOHS3TjJDlRzagBBzl54N7N68xpcfbPmgTQWBqK1HCk25lgphGkgiQ
         MMuignePc/AFxvqOVU00NK1W160oW5TBWITj61rGVnGzxiCPTz7VwEdRsQ4gW7xqriq8
         e7bmGsnU85SgM0Mm2fq7V50gL0JcRU3mOIsMDBHQcvOfL+AIK5ZH+eBkNU2mEo9ezaOM
         r8+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782729652; x=1783334452;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=omopOdpKTyCcb7PSO2EkN5aJ0TMqkgpva2n1TsO3dC8=;
        b=fbDk3s3NOMB6oYvEMEaNGfGJk10xr1nUEnw15SYBFI2td8QWMcH4m9SdLSHU4vAbzH
         w31xnD6GHZ6IroK6U0G6frlPSJwqfpaBzA4t1lFlJVdQCn5b5/g8JPyG1oU6njWzXArz
         s0iT7UWyaBtla4cYzQ/XYMSQSNd13CbW7en2DWMhXptpf3EpkrHaF6nfoVFecUVXLcTn
         i1+ixcwG1yssY6qmNCL/tmAwSizsVQ4VHUexqbpOb/VGaTtMeypEbcYZcoR58HWPriY2
         ZnD0vXX9YIbLnR9Rt4ETwtzyWLJzZGNrsDrG7Fa8uEQ6ck2s3o9It5t4jDsu93NAj2gx
         +jFQ==
X-Forwarded-Encrypted: i=1; AHgh+RrGigBqLwEpoE/5xeShrsnwUgTq/fiyuzSJEBZQIQjHKhEuyGtRVmcnL/WNvZQU6S0g64QPrDhuNYU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxrfLlFCk5yr5CjJcasvdx215ITF3GVIKih4B3MeYKa4zRcT9SU
	+S62ql5YG1S228oj0MjeRAUFrlr/v2Vc1mQBgNEYjKQnQq/tAodWSCa3
X-Gm-Gg: AfdE7cmQiYjZ4rBQjYJdfNF1PBHIVtdby2WQiRbu2+dz5mvxZSR/Kf5VUdiSJwEa7h5
	0uIU3wsNUTtPeT/S+HmX/OWeCtF151lFibOo5GrgUAN6IMNu8UELnIRzw1PmwvGKt+/y2cSWIJg
	8qLG1hEAr03UddDXs++8nZpG9vFz/8U39lF4mkY+2m6G+ZdpfSZ2UFrYHcrGhLQ/QoS5qqGQm1I
	ot41vXlSr0EAZDJBtt1focVvytTObqhXYUNx7J/O49aUhYHdRDezEWq1Sz3RYEBf7nKbBZZHk+v
	4WJ4Npv2tv8phFEYIWxp0m0H3alsGV5QiaonuJTY/ur4iPopclf7lxcVXezxHiLzvKCddOrk3sz
	9a1tbqGnQbbQSevOsQBi0aTlFMDqWTUN6aixELS4dyzSu4WYveW7HlpmRc99t2cDPv6uEiQAN6/
	6sQ+zjUvJUF08NP2ZDQshsolnDDLLBTCHEz25P34dPn2YdlY7dYccfkMx6POFLyr2b9g==
X-Received: by 2002:a05:6a00:a253:b0:846:2f3d:6275 with SMTP id d2e1a72fcca58-8462f3d7595mr4441676b3a.58.1782729652146;
        Mon, 29 Jun 2026 03:40:52 -0700 (PDT)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-845cdc2ff53sm5565548b3a.7.2026.06.29.03.40.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 03:40:51 -0700 (PDT)
Message-ID: <24de6a00-ba4e-455b-baa7-479d1cc2edf3@gmail.com>
Date: Mon, 29 Jun 2026 18:40:43 +0800
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
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <20260625-sexy-black-tarantula-4031a6@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_034053_357480_A3F548DB 
X-CRM114-Status: GOOD (  25.44  )
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

Ck9uIDYvMjUvMjAyNiAzOjU4IFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIFRo
dSwgSnVuIDI1LCAyMDI2IGF0IDEwOjM5OjU2QU0gKzA4MDAsIEpvZXkgTHUgd3JvdGU6Cj4+ICAg
cHJvcGVydGllczoKPj4gICAgIGNvbXBhdGlibGU6Cj4+ICAgICAgIGVudW06Cj4+ICAgICAgICAg
LSBudXZvdG9uLG1hMzVkMS11c2IyLXBoeQo+PiAgIAo+PiArICByZWc6Cj4+ICsgICAgbWF4SXRl
bXM6IDEKPj4gKwo+PiAgICAgIiNwaHktY2VsbHMiOgo+PiAtICAgIGNvbnN0OiAwCj4+ICsgICAg
Y29uc3Q6IDEKPj4gKyAgICBkZXNjcmlwdGlvbjoKPj4gKyAgICAgIFRoZSBzaW5nbGUgY2VsbCBz
ZWxlY3RzIHRoZSBQSFkgcG9ydC4gMCBzZWxlY3RzIHRoZSBPVEcgcG9ydCAoVVNCMCwKPj4gKyAg
ICAgIHNoYXJlZCB3aXRoIERXQzIgZ2FkZ2V0IGNvbnRyb2xsZXIpIGFuZCAxIHNlbGVjdHMgdGhl
IGhvc3Qtb25seSBwb3J0Cj4+ICsgICAgICAoVVNCMSkuCj4+ICAgCj4+IC0gIGNsb2NrczoKPj4g
LSAgICBtYXhJdGVtczogMQo+IFRoaXMgaXMgb2RkLCBjb25zaWRlcmluZyB0aGF0IHBhcmVudCBk
b2VzIG5vdCBoYXZlIGNsb2Nrcy4gU28gZXhwbGFpbiBtZQo+IHRoaXM6Cj4gMS4gVVNCIFBIWSBu
ZWVkZWQgY2xvY2tzLgo+IDIuIFlvdSBleHRlbmQgVVNCIFBIWSB0byBjb3ZlciBzZWNvbmQgcGFy
dC4KPiAzLiBUaGF0IGV4dGVuc2lvbiBmb3Igc2Vjb25kIHBhcnQgbWVhbnMgdGhhdCBjbG9ja3Mg
YXJlIG5vdCBuZWVkZWQuCj4gUmVhbGx5LCBob3c/IEhvdyBpcyBpdCBwb3NzaWJsZSBpbiBoYXJk
d2FyZT8KVGhlIGhhcmR3YXJlIGhhcyB0d28gaW5kZXBlbmRlbnQgY2xvY2sgZG9tYWluczoKCiDC
oCAtIFRoZSBQSFkgYW5hbG9nIGJsb2NrIHRha2VzIHRoZSAyNCBNSHogSFhUIGFzIGl0cyByZWZl
cmVuY2UsIHdpcmVkCiDCoCDCoCBkaXJlY3RseSB0byB0aGUgUEhZJ3MgaW50ZXJuYWwgUExMLCB3
aGljaCBkZXJpdmVzIHRoZSByZXF1aXJlZCAKb3BlcmF0aW5nCiDCoCDCoCBmcmVxdWVuY2llcyBp
bnRlcm5hbGx5LiBUaGlzIHJlZmVyZW5jZSBwYXRoIGlzIGVudGlyZWx5IG91dHNpZGUgdGhlIFNv
QwogwqAgwqAgc29mdHdhcmUgY2xvY2sgdHJlZTsgbm8gc29mdHdhcmUtZ2F0YWJsZSBjbG9jayBn
YXRlIG5lZWRzIHRvIGJlIGVuYWJsZWQKIMKgIMKgIGZvciB0aGUgUEhZIHRvIHBvd2VyIHVwIGFu
ZCBsb2NrIGl0cyBQTEwuIFRoZSBvbmx5IHNvZnR3YXJlIGNvbnRyb2wgdGhlCiDCoCDCoCBQSFkg
ZHJpdmVyIGV4ZXJjaXNlcyBpcyB0b2dnbGluZyBlYWNoIFBIWSdzIFBvd2VyLU9uIFJlc2V0IChQ
T1IpIGJpdCwKIMKgIMKgIHdoaWNoIHJlc2lkZXMgaW4gdGhlIFNZUyByZWdpc3RlciBibG9jay4g
VGhlIGRyaXZlciBhY2Nlc3NlcyB0aGlzIHZpYQogwqAgwqAgdGhlIHBhcmVudCByZWdtYXAKCiDC
oCAtIGBIVVNCSDBfR0FURWAgLyBgSFVTQkgxX0dBVEVgIC8gYFVTQkRfR0FURWAgYXJlIEFIQi9B
UEIgYnVzIGludGVyZmFjZQogwqAgwqAgY2xvY2tzIGZvciB0aGUgaG9zdCBhbmQgZ2FkZ2V0IChF
SENJLCBPSENJLCBEV0MyKS4gVGhleSBnYXRlCiDCoCDCoCB0aGUgcmVnaXN0ZXItYWNjZXNzIHBh
dGggYmV0d2VlbiB0aGUgQ1BVIGFuZCBlYWNoIGNvbnRyb2xsZXIsIG5vdCAKdGhlIFBIWQogwqAg
wqAgYW5hbG9nIGNpcmN1aXRyeSBpdHNlbGYuCgpUaGUgb3JpZ2luYWwgc2luZ2xlLXBvcnQgZHJp
dmVyIGVuYWJsZWQgYEhVU0JIMF9HQVRFYCBhcyBpZiBpdCBiZWxvbmdlZCAKdG8gdGhlClBIWSwg
YnV0IHRoYXQgZ2F0ZSBpcyBhY3R1YWxseSBvd25lZCBieSBFSENJMC9PSENJMCBhbmQgaXMgYWxy
ZWFkeSAKbWFuYWdlZCBieQp0aG9zZSBjb250cm9sbGVyIGRyaXZlcnMgdGhyb3VnaCB0aGVpciBv
d24gYGNsb2Nrc2AgRFRTIGJpbmRpbmdzLiBUaGUgUEhZCmRyaXZlciB3YXMgcmVkdW5kYW50bHkg
ZW5hYmxpbmcgdGhlIHNhbWUgZ2F0ZS4KCldoZW4gZXh0ZW5kaW5nIHRoZSBkcml2ZXIgdG8gY292
ZXIgUEhZMSwgdGhlIHNhbWUgcGF0dGVybiBoZWxkOiBFSENJMS9PSENJMQptYW5hZ2UgYEhVU0JI
MV9HQVRFYCB0aGVtc2VsdmVzLiBUaGVyZSBpcyBubyBjbG9jayB0aGF0IGJlbG9uZ3MgCmV4Y2x1
c2l2ZWx5IHRvCnRoZSBQSFksIHNvIGBjbG9ja3NgIHdpbGwgYmUgZHJvcHBlZCBmcm9tIHRoZSBQ
SFkgYmluZGluZyBlbnRpcmVseS4KPj4gKyAgbnV2b3RvbixyY2FsY29kZToKPj4gKyAgICAkcmVm
OiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzItYXJyYXkKPj4gKyAgICBt
aW5JdGVtczogMQo+PiArICAgIG1heEl0ZW1zOiAyCj4gWW91IHNob3VsZCByZXF1aXJlIHR3byB2
YWx1ZXMuIEkgdW5kZXJzdGFuZCB0aGF0IGFueSBQSFkgaXMgb3B0aW9uYWwsCj4gdGh1cyB5b3Ug
c2tpcCB0aGUgZW50cnksIHNvIGhvdyB3b3VsZCB5b3UgcHJvdmlkZSB2YWx1ZSBmb3IgUEhZMSBv
bmx5PwpgbnV2b3RvbixyY2FsY29kZWAgd2lsbCBiZSBjaGFuZ2VkIHRvIHJlcXVpcmUgZXhhY3Rs
eSB0d28gdmFsdWVzCihgbWluSXRlbXM6IDIsIG1heEl0ZW1zOiAyYCksIG9uZSBmb3IgUEhZMCBh
bmQgb25lIGZvciBQSFkxIHJlc3BlY3RpdmVseS4KVGhlIHByb3BlcnR5IHdpbGwgcmVtYWluIG9w
dGlvbmFsIG92ZXJhbGw7IHdoZW4gYWJzZW50LCBlYWNoIHBvcnQgCnJldGFpbnMgaXRzCnBvd2Vy
LW9uIGRlZmF1bHQgdmFsdWUgbG9hZGVkIGF0IGhhcmR3YXJlIGluaXRpYWxpc2F0aW9uLiBXaGVu
IHByZXNlbnQsIGJvdGgKZW50cmllcyBtdXN0IGJlIHN1cHBsaWVkLgo+PiArICAgIGl0ZW1zOgo+
PiArICAgICAgbWluaW11bTogMAo+PiArICAgICAgbWF4aW11bTogMTUKPj4gKyAgICBkZXNjcmlw
dGlvbjoKPj4gKyAgICAgIFJlc2lzdG9yIGNhbGlicmF0aW9uIHRyaW0gY29kZXMgZm9yIFBIWTAg
YW5kIFBIWTEgcmVzcGVjdGl2ZWx5Lgo+PiArICAgICAgRWFjaCA0LWJpdCB2YWx1ZSBpcyB3cml0
dGVuIHRvIHRoZSBSQ0FMQ09ERSBmaWVsZCBpbiBVU0JQTUlTQ1IgYW5kCj4+ICsgICAgICBhZGp1
c3RzIHRoZSBQSFkncyBpbnRlcm5hbCB0ZXJtaW5hdGlvbiByZXNpc3RhbmNlLiBCb3RoIGVudHJp
ZXMgYXJlCj4+ICsgICAgICBvcHRpb25hbDsgd2hlbiBhYnNlbnQgdGhlIGhhcmR3YXJlIHJlc2V0
IGRlZmF1bHQgaXMgdXNlZC4KPj4gICAKPj4gLSAgbnV2b3RvbixzeXM6Cj4+IC0gICAgJHJlZjog
L3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZQo+PiArICBudXZvdG9uLG9j
LWFjdGl2ZS1oaWdoOgo+PiArICAgIHR5cGU6IGJvb2xlYW4KPj4gICAgICAgZGVzY3JpcHRpb246
Cj4+IC0gICAgICBwaGFuZGxlIHRvIHN5c2NvbiBmb3IgY2hlY2tpbmcgdGhlIFBIWSBjbG9jayBz
dGF0dXMuCj4+ICsgICAgICBXaGVuIHByZXNlbnQsIHRoZSBvdmVyLWN1cnJlbnQgZGV0ZWN0IGlu
cHV0IGZyb20gdGhlIFZCVVMgcG93ZXIgc3dpdGNoCj4+ICsgICAgICBpcyB0cmVhdGVkIGFzIGFj
dGl2ZS1oaWdoLiBUaGUgZGVmYXVsdCAocHJvcGVydHkgYWJzZW50KSBpcyBhY3RpdmUtbG93Lgo+
PiArICAgICAgVGhpcyBzZXR0aW5nIGlzIHNoYXJlZCBieSBib3RoIFVTQiBob3N0IHBvcnRzLgo+
PiAgIAo+PiAgIHJlcXVpcmVkOgo+PiAgICAgLSBjb21wYXRpYmxlCj4+ICsgIC0gcmVnCj4gVGhh
dCdzIEFCSSBicmVhayB3aGljaCB3YXMgbm90IGV4cGxhaW5lZCBpbiB0aGUgY29tbWl0IG1zZyAt
IG5laXRoZXIKPiBzcGVjaWZ5aW5nIGltcGFjdCBub3IgYWN0dWFsbHkgcHJvdmlkaW5nIHJlYXNv
bnMgd2h5IHlvdSBicmVhayBBQkkuCj4KPiBBbmQgaG9uZXN0bHksIHlvdSBoYXZlIG5vIHJlc291
cmNlcyBoZXJlIGV4Y2VwdCB0aGUgYWRkcmVzcywgc28gbm93IGl0Cj4gaXMgY2xlYXIgdGhhdCB0
aGlzIHNob3VsZCBiZSBmb2xkZWQgaW50byBwYXJlbnQuIFNlZSBEVFMxMDEgdGFsayBzbGlkZXMu
ClRoZSBjb21taXQgbWVzc2FnZSB3aWxsIGJlIHVwZGF0ZWQgdG8gZXhwbGljaXRseSBhY2tub3ds
ZWRnZSB0aGUgQUJJIGJyZWFrOgpleGlzdGluZyBEVFMgZmlsZXMgdGhhdCBjb250YWluIGEgc3Rh
bmRhbG9uZSBgdXNiLXBoeWAgbm9kZSB3aXRob3V0IGEgYHJlZ2AKcHJvcGVydHkgd2lsbCBmYWls
IGR0LXNjaGVtYSB2YWxpZGF0aW9uIGFmdGVyIHRoaXMgY2hhbmdlLiBUaGUgaW1wYWN0IGlzCmxp
bWl0ZWQgdG8gdGhlIE1BMzVEMSBTb0M7IG5vIHVwc3RyZWFtIERUUyBmb3IgdGhpcyBTb0MgZXhp
c3RlZCBiZWZvcmUgdGhpcwpwYXRjaCBzZXJpZXMsIHNvIG5vIGluLXRyZWUgYm9hcmQgZmlsZXMg
YXJlIGJyb2tlbi4gVGhlIGJyZWFrIGlzIGludGVudGlvbmFsCmFuZCBqdXN0aWZpZWQ6IHRoZSBQ
SFkgcmVnaXN0ZXIgYmxvY2sgaXMgcGh5c2ljYWxseSBjb250YWluZWQgd2l0aGluIHRoZSAKc3lz
Y29uCk1NSU8gcmFuZ2UsIGFuZCBtb2RlbGxpbmcgaXQgYXMgYSBjaGlsZCBvZiB0aGUgc3lzY29u
IHdpdGggYSBzdGFuZGFyZCBgcmVnYApwcm9wZXJ0eSBjb3JyZWN0bHkgcmVmbGVjdHMgdGhlIGhh
cmR3YXJlIHRvcG9sb2d5IGFuZCBmb2xsb3dzIHRoZSBjb252ZW50aW9uCmVzdGFibGlzaGVkIGJ5
IHNpbWlsYXIgc3ViLWJsb2NrcyBpbiBvdGhlciBTb0NzLgo+PiAgICAgLSAiI3BoeS1jZWxscyIK
Pj4gLSAgLSBjbG9ja3MKPj4gLSAgLSBudXZvdG9uLHN5cwo+PiAgIAo+PiAgIGFkZGl0aW9uYWxQ
cm9wZXJ0aWVzOiBmYWxzZQo+PiAgIAo+PiAgIGV4YW1wbGVzOgo+PiAgICAgLSB8Cj4+IC0gICAg
I2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL251dm90b24sbWEzNWQxLWNsay5oPgo+PiArICAg
IHN5c3RlbS1tYW5hZ2VtZW50QDQwNDYwMDAwIHsKPj4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJu
dXZvdG9uLG1hMzVkMS1yZXNldCIsICJzeXNjb24iLCAic2ltcGxlLW1mZCI7Cj4+ICsgICAgICAg
IHJlZyA9IDwweDQwNDYwMDAwIDB4MjAwPjsKPj4gKyAgICAgICAgI3Jlc2V0LWNlbGxzID0gPDE+
Owo+PiArICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4gKyAgICAgICAgI3NpemUtY2Vs
bHMgPSA8MT47Cj4gRHJvcC4gS2VlcCBvbmx5IGNoaWxkIG5vZGUgYW5kIG1ha2UgcGFyZW50IGJp
bmRpbmcgZXhhbXBsZSBjb21wbGV0ZS4KVGhlIGV4YW1wbGUgaW4gYG51dm90b24sbWEzNWQxLXVz
YjItcGh5LnlhbWxgIHdpbGwgYmUgY2hhbmdlZCB0byBzaG93IG9ubHkKdGhlIGB1c2ItcGh5QDYw
YCBjaGlsZCBub2RlLCB3aXRob3V0IHdyYXBwaW5nIGl0IGluIHRoZSBwYXJlbnQgbm9kZS4KVGhl
IGZ1bGwgcGFyZW50ICsgY2hpbGQgZXhhbXBsZSB3aWxsIGJlIG1vdmVkIHRvIApgbnV2b3Rvbixt
YTM1ZDEtcmVzZXQueWFtbGAuCgpUaGFua3MgZm9yIHJldmlldy4KPj4gICAKPj4gLSAgICB1c2Jf
cGh5OiB1c2ItcGh5IHsKPj4gLSAgICAgICAgY29tcGF0aWJsZSA9ICJudXZvdG9uLG1hMzVkMS11
c2IyLXBoeSI7Cj4+IC0gICAgICAgIGNsb2NrcyA9IDwmY2xrIFVTQkRfR0FURT47Cj4+IC0gICAg
ICAgIG51dm90b24sc3lzID0gPCZzeXM+Owo+PiAtICAgICAgICAjcGh5LWNlbGxzID0gPDA+Owo+
PiArICAgICAgICB1c2ItcGh5QDYwIHsKPj4gKyAgICAgICAgICAgIGNvbXBhdGlibGUgPSAibnV2
b3RvbixtYTM1ZDEtdXNiMi1waHkiOwo+PiArICAgICAgICAgICAgcmVnID0gPDB4NjAgMHgxND47
Cj4+ICsgICAgICAgICAgICAjcGh5LWNlbGxzID0gPDE+Owo+PiArICAgICAgICB9Owo+PiAgICAg
ICB9Owo+PiAtLSAKPj4gMi40My4wCj4+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
