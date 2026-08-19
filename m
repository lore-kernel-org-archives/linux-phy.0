Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26906C5DF7D
	for <linux-phy@archiver.kernel.org>; Wed, 19 Aug 2026 03:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFUk3w+zduAKmN+XzOky4MwjwcOXkwH3Q6dI3XeC0Ns=; b=RhzNpm+owc3ipl
	mdoPFT0dnhNeiu+EtVD8zpEkl385AZKbIunS8O0TWAwHthC90sB3umw/wA3YD5H4SMOd+19YTjfEt
	0lXn6W/nWfoHT4bXI+qUhY4IV+eJrVdTB0PK/KeE0nY2mo3y996iemasIjdi+9gl4bpzRb4Ac4DA6
	5UnPWOszXBZ19///T98zeypcj25YN6H2S4p8D/6zBAPnEveiq5kjbbCQGHsgeqFy2ZozOoeC9j+CF
	gyW+9AsZ1tdzWFXbM3jyiUquxdYasANXBWl/wP0GtVkNf/c0zOJjjXm7FvbZC52jlRtjo14EOGZHW
	Kj8j+eofXKEvdbH2MD7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwWl2-00000008vW1-2XHc;
	Wed, 19 Aug 2026 03:14:28 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwWkv-00000008vVM-3im9
	for linux-phy@lists.infradead.org;
	Wed, 19 Aug 2026 03:14:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1787109261; x=1818645261;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=Ii1mnAQIk3JxKPtw1+lNgA5Zgg05+1uKMZeaIO1HU7o=;
  b=wMF6er5EApxmp6923Y41k7d5hnMCMnRa79puJ7GQp2ZCLPNVvRlTfpMs
   H9hTb8T0I7cRcoQyGTAFlT5WOL2nCGtealoeFphxoB0RcTji7W+Xx4IoR
   RFwkape/ASTTrixfKiy3kuuxExSSlHFk5GqljewKCxC6xWhRLKTL7oh2d
   rvrr6mKAK4jEmZidCDqAydBuZV8ysgxJeL7tIKOqqXuuIW+GRK7crriiI
   WplPflbTzhWXDWjeaj7aOIhAGMXHfOpmxJNWnnq/mWP27lCe4kUHlndAK
   tmk0HG14ZiuTH76yy53mFhHVQpZeeFK5smgBsDR9mYLVHcek1Bs1zrE8r
   A==;
X-CSE-ConnectionGUID: J864rs4URjeHfXVvhbskAA==
X-CSE-MsgGUID: IZR9RznkR1GhxX1awoXUaA==
X-IronPort-AV: E=Sophos;i="6.25,231,1779174000"; 
   d="scan'208";a="72077587"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2026 20:14:19 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex2.mchp-main.com (10.10.87.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.45; Tue, 18 Aug 2026 20:14:19 -0700
Received: from [10.40.24.197] (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Tue, 18 Aug 2026 20:14:11 -0700
Message-ID: <93f0727f-0b25-4374-9a6c-ad3799006440@microchip.com>
Date: Wed, 19 Aug 2026 08:44:10 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 4/4] arm64: dts: freescale: Add chargebyte Charge
 Control Y
To: Stefan Wahren <wahrenst@gmx.net>, Selvamani Rajagopal
	<Selvamani.Rajagopal@onsemi.com>, Ciprian Regus <ciprian.regus@analog.com>
CC: <imx@lists.linux.dev>, Oliver Hartkopp <socketcan@hartkopp.net>, "Oleksij
 Rempel" <o.rempel@pengutronix.de>, <vkoul@kernel.org>, <olteanv@gmail.com>,
	<devicetree@vger.kernel.org>, <conor+dt@kernel.org>, <Frank.Li@kernel.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>, <linux-can@vger.kernel.org>,
	<neil.armstrong@linaro.org>, Vincent Mailhol <mailhol@kernel.org>,
	<robh@kernel.org>, <linux-phy@lists.infradead.org>,
	<sashiko-reviews@lists.linux.dev>, David Tumma - M78440
	<David.Tumma@microchip.com>, Roland Trissl - M21193
	<Roland.Trissl@microchip.com>
References: <20260818091701.6441-1-wahrenst@gmx.net>
 <20260818091701.6441-5-wahrenst@gmx.net>
 <20260818093147.E556C1F000E9@smtp.kernel.org>
 <89573332-94a0-4fc9-b4b4-be100a97de6e@gmx.net>
Content-Language: en-US
From: Parthiban Veerasooran <parthiban.veerasooran@microchip.com>
In-Reply-To: <89573332-94a0-4fc9-b4b4-be100a97de6e@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_201422_219859_E150F8E4 
X-CRM114-Status: GOOD (  18.76  )
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

SGkgU3RlZmFuLAoKT24gMTgvMDgvMjYgNzoxMCBwbSwgU3RlZmFuIFdhaHJlbiB3cm90ZToKPiBF
WFRFUk5BTCBFTUFJTDogRG8gbm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW5s
ZXNzIHlvdSBrbm93IAo+IHRoZSBjb250ZW50IGlzIHNhZmUKPiAKPiBIaSBQYXJ0aGliYW4sCj4g
aGkgU2VsdmFtYW5pLAo+IGhpIENpcHJpYW4sCj4gCj4gQW0gMTguMDguMjYgdW0gMTE6MzEgc2No
cmllYiBzYXNoaWtvLWJvdEBrZXJuZWwub3JnOgo+PiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJp
YnV0aW9uISBTYXNoaWtvIEFJIHJldmlldyBmb3VuZCA0IHBvdGVudGlhbCAKPj4gaXNzdWUocykg
dG8gY29uc2lkZXI6Cj4+IC0gW01lZGl1bV0gVGhlIExBTjg2NTEgZXRoZXJuZXQgZGV2aWNlIGlz
IG1pc3NpbmcgaXRzIGhhcmR3YXJlIHJlc2V0IAo+PiBjb25maWd1cmF0aW9uLCBsZWF2aW5nIHRo
ZSBgWF9uUlNUX0xBTmAgcGluIHVubWFuYWdlZC4KPj4gLSBbTWVkaXVtXSBUaGUgU0QgY2FyZCBz
bG90IHBvd2VyL3Jlc2V0IHBpbiAoYFNEMl9uUkVTRVRgKSBpcyBuYW1lZCBpbiAKPj4gYGdwaW8t
bGluZS1uYW1lc2AgYnV0IGlzIG5vdCBhc3NvY2lhdGVkIHdpdGggYW55IHJlZ3VsYXRvciBvciBy
ZXNldCAKPj4gY29udHJvbC4KPj4gLSBbTG93XSBUaGUgR1BJTyBsYWJlbCBgWF9MQU5fbkNTYCBp
cyBpbmNvcnJlY3RseSBwbGFjZWQgYXQgaW5kZXggMCBvZiAKPj4gYCZncGlvMmAncyBgZ3Bpby1s
aW5lLW5hbWVzYCBhcnJheSwgYnV0IHRoZSBgbGFuODY1MWAgY2hpcCBzZWxlY3QgaXMgCj4+IGFj
dHVhbGx5IHdpcmVkIHRvIGluZGV4IDguCj4+IC0gW0xvd10gVGhlIGB0aSxsZWRzLXBvbGFyaXR5
YCBwcm9wZXJ0eSB1c2VkIGluIGJvdGggRXRoZXJuZXQgUEhZIAo+PiBub2RlcyBpcyB1bmRvY3Vt
ZW50ZWQsIGludmFsaWQsIGFuZCB3aWxsIGNhdXNlIGBkdGJzX2NoZWNrYCB2YWxpZGF0aW9uIAo+
PiBlcnJvcnMuCj4+IC0tIAo+Pgo+PiAtLS0gUGF0Y2ggWzRdOiBbUEFUQ0ggUkZDIDQvNF0gYXJt
NjQ6IGR0czogZnJlZXNjYWxlOiBBZGQgY2hhcmdlYnl0ZSAKPj4gQ2hhcmdlIENvbnRyb2wgWSAt
LS0KPj4gY29tbWl0IGExNzdhNWUwYWNiYTYyMTU2ODc2ZWE2ZGM4NDQ1Nzc4OTc4NmJmYjgKPj4g
QXV0aG9yOiBTdGVmYW4gV2FocmVuIDx3YWhyZW5zdEBnbXgubmV0Pgo+IC4uLgo+PiArLyogTUNT
IEV0aGVybmV0IFNQSSAqLwo+PiArJmxwc3BpMyB7Cj4+ICvCoMKgwqDCoCBwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwo+PiArwqDCoMKgwqAgcGluY3RybC0wID0gPCZwaW5jdHJsX2xwc3BpMz47
Cj4+ICvCoMKgwqDCoCBudW0tY3MgPSA8MT47Cj4+ICvCoMKgwqDCoCBjcy1ncGlvcyA9IDwmZ3Bp
bzIgOCBHUElPX0FDVElWRV9MT1c+Owo+PiArwqDCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+PiAr
Cj4+ICvCoMKgwqDCoCBsYW44NjUxOiBldGhlcm5ldEAwIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjb21wYXRpYmxlID0gIm1pY3JvY2hpcCxsYW44NjUxIiwgIm1pY3JvY2hpcCxsYW44
NjUwIjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MD47Cj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzI+Owo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGludGVycnVwdHMgPSA8NyBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNwaS1tYXgtZnJlcXVlbmN5ID0gPDI1MDAwMDAw
PjsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG52bWVtLWNlbGxzID0gPCZldGgy
X21hY19hZGRyZXNzIDA+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG52bWVtLWNlbGwt
bmFtZXMgPSAibWFjLWFkZHJlc3MiOwo+PiArwqDCoMKgwqAgfTsKPj4gK307Cj4+IFtTZXZlcml0
eTogTWVkaXVtXQo+PiBUaGUgcGluIFhfblJTVF9MQU4gaXMgbGFiZWxlZCBpbiB0aGUgZ3BpbzEg
bm9kZSwgYnV0IHRoaXMgZXRoZXJuZXQgbm9kZQo+PiBkb2Vzbid0IHNlZW0gdG8gY29uZmlndXJl
IGEgcmVzZXQgbWVjaGFuaXNtLiBEb2VzIHRoZSBMQU44NjUxIG5lZWQgYSAKPj4gcmVzZXQKPj4g
Y29udHJvbCBvciBncGlvLWhvZyB0byBlbnN1cmUgdGhlIHBpbiBpcyBkcml2ZW4gYW5kIG5vdCBs
ZWZ0IGZsb2F0aW5nPwo+IGFjY29yZGluZyB0byB0aGUgY3VycmVudCBEVCBiaW5kaW5nIG9mIExB
Tjg2NTEgdGhlcmUgaXMgbm8gcmVzZXQKPiBjb250cm9sLCBidXQgdGhlIGNoaXAgaGFzIGEgcmVz
ZXQgbGluZSBhbmQgaXRzIHdpcmVkIG9uIG91ciBib2FyZC4KPiAKPiBBcmUgdGhlcmUgYW55IHBs
YW5zIHRvIGltcGxlbWVudCByZXNldCBjb250cm9sIGZvciBPQSBUQzYgb3IgTEFOODY1MT8KWWVz
LCB3ZSBoYXZlIHJlY2VudGx5IGNvbXBsZXRlZCB0aGUgaW1wbGVtZW50YXRpb24gZm9yIGhhbmRs
aW5nIHJlc2V0IApHUElPLCBhcyB3ZWxsIGFzIHJlY292ZXJhYmxlIGFuZCBub24tcmVjb3ZlcmFi
bGUgZXJyb3IgaGFuZGxpbmcuIFdlIGFyZSAKY3VycmVudGx5IHByZXBhcmluZyBmb3IgdGhlIGlu
dGVybmFsIHJldmlldyBwcm9jZXNzLCB3aGljaCBpcyBleHBlY3RlZCAKdG8gYmVnaW4gc2hvcnRs
eS4KCkF0IHRoaXMgcG9pbnQsIEnigJltIHVuYWJsZSB0byBjb21taXQgdG8gYW4gZXhhY3QgdGlt
ZWxpbmUgZm9yIHRoZSAKY29tcGxldGlvbiBvZiB0aGUgaW50ZXJuYWwgcmV2aWV3IGFuZCB3aGVu
IHRoZSBjaGFuZ2VzIHdpbGwgYmUgbWVyZ2VkIAppbnRvIHRoZSBtYWlubGluZS4gSG93ZXZlciwg
d2UgYXJlIG1ha2luZyBldmVyeSBlZmZvcnQgdG8gY29tcGxldGUgdGhlIApwcm9jZXNzIGFzIHF1
aWNrbHkgYXMgcG9zc2libGUuCgpJbiB0aGUgbWVhbnRpbWUsIGlmIHlvdSBhcmUgaW50ZXJlc3Rl
ZCwgSSB3b3VsZCByZWNvbW1lbmQgdXNpbmcgb3VyIAplYXJseSB2ZXJzaW9uLCB3aGljaCBhbHJl
YWR5IGluY2x1ZGVzIHN1cHBvcnQgZm9yIHRoZXNlIGZlYXR1cmVzIGFuZCBpcyAKYXZhaWxhYmxl
IHRvIGN1c3RvbWVycy4gUGxlYXNlIHJlYWNoIG91dCB0byBSb2xhbmQgVHJpc3NsIAooUm9sYW5k
LlRyaXNzbEBtaWNyb2NoaXAuY29tKSwgb3VyIFRlY2huaWNhbC9BcHBsaWNhdGlvbiBTdXBwb3J0
IApFbmdpbmVlciwgYW5kIHdlIHdpbGwgYmUgaGFwcHkgdG8gYXNzaXN0IHlvdSBmdXJ0aGVyLgoK
QmVzdCByZWdhcmRzLApQYXJ0aGliYW4gVj4KPiBCZXN0IHJlZ2FyZHMKCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
