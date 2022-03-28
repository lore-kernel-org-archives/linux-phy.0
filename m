Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8318C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 18:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x7EaGvpDgdF1rq0gVMjd0rlEVmhtaXpD/ixwLPESlJo=; b=rrRwsXkv0hmEU+
	H+aV5CWehMyMH6mGDUopIwH7b6JYZyiWI/I35Me5JWs1d84OTPZ753vtwmG6126+keLrmsu80Tw22
	rM2Ccn66g2aDDDtl1DutjtiNyv1Wh7QjR6nBaM7PRdgqdyrkBQmbq8eAJBS0RZDEywef2FJ6u/1Jh
	T9aDhLVwm+x5VkL/BhlxoWtAHAJBb/imZZr2SrnT1LINPN5IYpu/mutr8qQCaXhyrtedCkznUCiWq
	+YGZxq4xbZCBNhZKFOpTGapazwJjL0addZnjrw4Dt0kJKXZfQUep8MR3Zq4kVzykMb2vPiFYbWNTY
	j0liMNSuGIKZnsVgUe6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYuTM-009p0H-57; Mon, 28 Mar 2022 18:52:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYuTJ-009ozw-US
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 18:52:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 64C8661222;
 Mon, 28 Mar 2022 18:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCD98C004DD;
 Mon, 28 Mar 2022 18:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648493528;
 bh=u5yZg0ynUEhZ3+K56tIjbNb4wQz9q4pZXSSN0Va1QRM=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=dHuq3HQI76JS7or/PSye/mbCBLHhmsQ8iHfU2Iz1h9HijDrIAaghYkjPOwwyBQWGB
 h+BarIKxRpEDThmdQC9RYTThbn+QRn0B6XcmPQaO4RpXu8g0TQdOc8mF5CYRSNcPEu
 vu9LEJpmPd0SQA7PptXC0rnZvaMJF+Gfp2DHy4Z/RTyoYfHhLGj4Ww9H512tGipZNI
 slfAMUq/f7bP6OmJOIgfN/nQKdUP7D4Ep0KIV4vgPU1H9hfxrjgjZSWdeU8Jx2SqL8
 ee9Jksk8v4rGeeXyf0c+vhPmjhMJcqEF4HqJmmRsgvnLilEOoL4ZoDXF2kUkQUczNe
 //KVxsqiYnTRg==
Message-ID: <35d98937-40cb-7f57-ab53-49153aa5ce7d@kernel.org>
Date: Mon, 28 Mar 2022 20:52:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 3/5] PCI: axis: Add ARTPEC-8 PCIe controller driver
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>
Cc: "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>, =?UTF-8?B?7KCE66y46riw?=
 <moonki.jun@samsung.com>
References: <CGME20220328021453epcms2p15977e72b6c96253ecaefcb71e6d2acfe@epcms2p1>
 <20220328021453epcms2p15977e72b6c96253ecaefcb71e6d2acfe@epcms2p1>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220328021453epcms2p15977e72b6c96253ecaefcb71e6d2acfe@epcms2p1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_115210_045939_F092931E 
X-CRM114-Status: GOOD (  16.26  )
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

T24gMjgvMDMvMjAyMiAwNDoxNCwg7J207JmV7ISdIHdyb3RlOgo+IEFkZCBzdXBwb3J0IEF4aXMs
IEFSVFBFQy04IFNvQy4KPiBBUlRQRUMtOCBpcyB0aGUgU29DIHBsYXRmb3JtIG9mIEF4aXMgQ29t
bXVuaWNhdGlvbnMuCj4gVGhpcyBpcyBiYXNlZCBvbiBhcm02NCBhbmQgc3VwcG9ydCBHRU40ICYg
MmxhbmUuCj4gVGhpcyBQQ0llIGNvbnRyb2xsZXIgaXMgYmFzZWQgb24gRGVzaWduV2FyZSBIYXJk
d2FyZSBjb3JlCj4gYW5kIHVzZXMgRGVzaWduV2FyZSBjb3JlIGZ1bmN0aW9ucyB0byBpbXBsZW1l
bnQgdGhlIGRyaXZlci4KPiBUaGlzIGlzIGJhc2VkIG9uIGRyaXZlci9wY2kvY29udHJvbGxlci9k
d2MvcGNpLWV4eW5vcy5jCj4gCj4gU2lnbmVkLW9mZi1ieTogV2FuZ3Nlb2sgTGVlIDx3YW5nc2Vv
ay5sZWVAc2Ftc3VuZy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tj
b25maWcgICAgICAgIHwgIDMxICsKPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvTWFrZWZp
bGUgICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWFydHBl
YzguYyB8IDkxMiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMyBmaWxlcyBjaGFu
Z2VkLCA5NDQgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvcGNpZS1hcnRwZWM4LmMKPiAKCkkgdG9vayBhIGxvb2sgYXQgdGhlIHlv
dXIgZHJpdmVyIGFuZCBhdCBleGlzdGluZyBQQ0llIEV4eW5vcyBkcml2ZXIuClVuZm9ydHVuYXRl
bHkgUENJZSBFeHlub3MgZHJpdmVyIGlzIGluIHBvb3Igc2hhcGUsIHJlYWxseSBwb29yLiBUaGlz
CndvdWxkIGV4cGxhaW4gdGhhdCBtYXliZSBpdCdzIGJldHRlciB0byBoYXZlIG5ldyBkcml2ZXIg
aW5zdGVhZCBvZgptZXJnaW5nIHRoZW0sIGVzcGVjaWFsbHkgdGhhdCBoYXJkd2FyZSBpcyBkaWZm
ZXJlbnQuIEFsdGhvdWdoIEkgYW0gc3RpbGwKd2FpdGluZyBmb3Igc29tZSBkZXNjcmlwdGlvbiBv
ZiB0aGVzZSBkaWZmZXJlbmNlcy4uLgoKSSBzYWlkIHRoYXQgRXh5bm9zIFBDSWUgbG9va3MgcG9v
ci4uLiBidXQgd2hhdCBpcyB3b3JzZSwgaXQgbG9va3MgbGlrZQp5b3UgYmFzZWQgb24gaXQgc28g
eW91IGNvcGllZCBvciBzb21lIGJhZCBwYXR0ZXJucyBpdCBoYWQuCgpFeGNlcHQgdGhpcyB0aGUg
ZHJpdmVyIGhhcyBzZXZlcmFsIGNvZGluZyBzdHlsZSBpc3N1ZXMsIHNvIHBsZWFzZSBiZQpzdXJl
IHRvIHJ1biBjaGVja3BhdGNoLCBzcGFyc2UgYW5kIHNtYXRjaCBiZWZvcmUgc2VuZGluZyBpdC4K
ClBsZWFzZSB3b3JrIG9uIHRoaXMgZHJpdmVyIHRvIG1ha2UgaXQgY2xvc2UgdG8gTGludXggY29k
aW5nIHN0eWxlLCBzbwp0aGVyZSB3aWxsIGJlIG5vIG5lZWQgZm9yIHVzLCByZXZpZXdlcnMsIGZv
Y3VzIG9uIGJhc2ljIHN0dWZmLgoKT3B0aW9uYWxseSwgc2VuZCBhbGwgdGhpcyB0byBzdGFnaW5n
LiA6KQoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
