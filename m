Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFE62C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 14 Oct 2022 02:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ytls2ewWyZo6SVTnZRl7AkYzxHkVNCxWe5El6NSvd4=; b=Kp7GJLD03QhFr3
	Q9z+pXn0qrl+6PZimQhJfbXeBqntaPvfJhci4M40U+amwFakVk+d3uMLfZ8G8tFaxKL2oRU2TZYLu
	x8sgd+0/ZxzuaRKMX5UUAyeduc1+WRCODaMTodSuLMwCopPdxU8qYKn45ilA3kB+b6BP/fvPjz4pp
	FeFWmJuaLe/oEEuYS9+YgL85NDigrORf0xX9nJe2OlvZeuKrzO7NqsDSZ/Ule0dLdk5LGKgPPMsUv
	M1UHfn3vm6P/gOzBt19+iYQC3qmvqRiLG5CL2EDQwpK9auROqUAWFZQWeIC2+TPGtiwS1PRRuFZ2k
	s0XIWG/6GszaP5Uv1kBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojAsG-00DShy-62; Fri, 14 Oct 2022 02:56:36 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojAs5-00DShI-Nh; Fri, 14 Oct 2022 02:56:27 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1665716176; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=B4NBc5U0vzrb2IVhCmCpkKbCP4qH6kmHNgQSDj+NtSA5jy6VPbXqQlkeejCusg+9/wBJgR5EcHRDsUQIz6pxypvy52qRI/6ulmI1R2lmS/J1ZbTfW2ty8iBUBjDXIRJtBm3J05o6IQYIqLeRxKLF810fC8/Zo61/3MdlzEANXIU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1665716176; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=Xch6Ahc6mpKh0o//bMOoqcUw4dYUZ7qun8hT0y/mZyM=; 
	b=lhkNZN9QvOxPKHYEAuGj43TIiyLsQArkOSH8XbnoRMmkzMai5z1JlRYDeabWrq0jqw7+Zr8J454IiHdmIx20AG9MjcdsP6eYC6493ZgZV6umO8OWa21GIFf6Ckz111JoJVLYt5fyNA/lsPGmVU3EMpDUHqoeX3R/w/EkUmcK4HU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1665716176;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=Xch6Ahc6mpKh0o//bMOoqcUw4dYUZ7qun8hT0y/mZyM=;
	b=BtjTPZBXxvbVdpOh5ub/SM0ayFIbV8M1wxZx54XiFfx8hRU/8tD6FLJhpUrxjMVN
	jbv1ebptl52p5/ndZF3nTB0YRCeGVfQ+nM+bwk1H+3YZe5aShg4rznGSNsd3dq/9J1y
	0M7HZZQzzgvtjqiwEyW6IkMxed3z6SKH5OPSXxhU=
Received: from edelgard.fodlan.icenowy.me (112.94.102.144 [112.94.102.144]) by mx.zohomail.com
	with SMTPS id 1665716174157848.8917127364606; Thu, 13 Oct 2022 19:56:14 -0700 (PDT)
Message-ID: <fc626a1eacee3ff9e25d4ef71ecb153c1fa836eb.camel@icenowy.me>
Subject: Re: Re: [PATCH v2 04/10] phy: sun4i-usb: add support for the USB
 PHY on F1C100s SoC
From: Icenowy Zheng <uwu@icenowy.me>
To: Jernej =?gb2312?Q?=810=947krabec?= <jernej.skrabec@gmail.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>, Samuel
 Holland <samuel@sholland.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev,  linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org
Date: Fri, 14 Oct 2022 10:56:08 +0800
In-Reply-To: <3442772.V25eIC5XRa@kista>
References: <20221012055602.1544944-1-uwu@icenowy.me>
	 <4218006.ejJDZkT8p0@kista>
	 <439b685e3aada19021d94669f6f855f1fc81d08e.camel@icenowy.me>
	 <3442772.V25eIC5XRa@kista>
Organization: Anthon Open-Source Community
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_195625_828788_EC0A3176 
X-CRM114-Status: GOOD (  26.13  )
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

5ZyoIDIwMjItMTAtMTPmmJ/mnJ/lm5vnmoQgMjA6MjUgKzAyMDDvvIxKZXJuZWogxaBrcmFiZWPl
hpnpgZPvvJoKPiBEbmUgxI1ldHJ0ZWssIDEzLiBva3RvYmVyIDIwMjIgb2IgMTA6NDk6NTEgQ0VT
VCBqZSBJY2Vub3d5IFpoZW5nCj4gbmFwaXNhbChhKToKPiA+IOWcqCAyMDIyLTEwLTEy5pif5pyf
5LiJ55qEIDIzOjIxICswMjAw77yMSmVybmVqIMWga3JhYmVj5YaZ6YGT77yaCj4gPiAKPiA+ID4g
SGkgSWNlbm93eSwKPiA+ID4gCj4gPiA+IERuZSBzcmVkYSwgMTIuIG9rdG9iZXIgMjAyMiBvYiAw
Nzo1NTo1NiBDRVNUIGplIEljZW5vd3kgWmhlbmcKPiA+ID4gCj4gPiA+IG5hcGlzYWwoYSk6Cj4g
PiA+ID4gVGhlIEYxQzEwMHMgU29DIGhhcyBvbmUgVVNCIE9URyBwb3J0IGNvbm5lY3RlZCB0byBh
IE1VU0IKPiA+ID4gPiBjb250cm9sbGVyLgo+ID4gPiA+IAo+ID4gPiA+IEFkZCBzdXBwb3J0IGZv
ciBpdHMgVVNCIFBIWS4KPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBJY2Vub3d5IFpo
ZW5nIDx1d3VAaWNlbm93eS5tZT4KPiA+ID4gPiAtLS0KPiA+ID4gPiBObyBjaGFuZ2VzIHNpbmNl
IHYxLgo+ID4gPiA+IAo+ID4gPiA+IMKgZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11
c2IuYyB8IDExICsrKysrKysrKysrCj4gPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0
aW9ucygrKQo+ID4gPiA+IAo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9hbGx3aW5u
ZXIvcGh5LXN1bjRpLXVzYi5jCj4gPiA+ID4gYi9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1
bjRpLXVzYi5jIGluZGV4Cj4gPiA+ID4gM2EzODMxZjYwNTlhLi4yZjk0Y2I3NzYzN2IKPiA+ID4g
PiAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVz
Yi5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2IuYwo+
ID4gPiA+IEBAIC0xMDksNiArMTA5LDcgQEAgZW51bSBzdW40aV91c2JfcGh5X3R5cGUgewo+ID4g
PiA+IMKgwqDCoMKgwqDCoMKgIHN1bjhpX3Yzc19waHksCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqAg
c3VuNTBpX2E2NF9waHksCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgc3VuNTBpX2g2X3BoeSwKPiA+
ID4gPiArwqDCoMKgwqDCoMKgIHN1bml2X2YxYzEwMHNfcGh5LAo+ID4gPiA+IMKgfTsKPiA+ID4g
PiAKPiA+ID4gPiDCoHN0cnVjdCBzdW40aV91c2JfcGh5X2NmZyB7Cj4gPiA+ID4gQEAgLTg1OSw2
ICs4NjAsMTQgQEAgc3RhdGljIGludCBzdW40aV91c2JfcGh5X3Byb2JlKHN0cnVjdAo+ID4gPiA+
IHBsYXRmb3JtX2RldmljZQo+ID4gPiA+ICpwZGV2KSByZXR1cm4gMDsKPiA+ID4gPiDCoH0KPiA+
ID4gPiAKPiA+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBzdW40aV91c2JfcGh5X2NmZyBzdW5p
dl9mMWMxMDBzX2NmZyA9IHsKPiA+ID4gPiArwqDCoMKgwqDCoMKgIC5udW1fcGh5cyA9IDEsCj4g
PiA+ID4gK8KgwqDCoMKgwqDCoCAudHlwZSA9IHN1bml2X2YxYzEwMHNfcGh5LAo+ID4gPiAKPiA+
ID4gSSB0aGluayB5b3Ugc2hvdWxkIGp1c3QgdXNlIHN1bjRpX2ExMF9waHkuIEl0IGhhcyBubyBz
cGVjaWFsCj4gPiA+IGhhbmRsaW5nLiBJIGRvbid0Cj4gPiA+IHNlZSBhIHBvaW50IGFkZGluZyBu
ZXcgcGh5IHR5cGVzIGlmIHRoZXJlIGlzIG5vIHNwZWNpYWwgY2FzZXMgZm9yCj4gPiA+IGl0Lgo+
ID4gCj4gPiBTb3VuZHMgcmVhc29uYWJsZSwgYWx0aG91Z2ggSSB0aGluayB3ZSBzaG91bGQgZmlu
YWxseSBkcm9wIC50eXBlCj4gPiBhbmQKPiA+IHVzZSBvbmx5IGRlc2NyaWJpbmcgaXRlbXMuCj4g
Cj4gVGhhdCB3b3VsZCBiZSBldmVuIGJldHRlci4gV2lsbCB5b3UgZG8gaXQ/CgpBdCBsZWFzdCBu
b3Qgbm93LgoKQnV0IEkgd2lsbCBhdCBsZWFzdCBkcm9wIHN1bml2X2YxYzEwMHNfcGh5IGluIHRo
ZSBuZXh0IHJldmlzaW9uLgoKPiAKPiA+IAo+ID4gPiBCZXN0IHJlZ2FyZHMsCj4gPiA+IEplcm5l
ago+ID4gPiAKPiA+ID4gPiArwqDCoMKgwqDCoMKgIC5kaXNjX3RocmVzaCA9IDMsCj4gPiA+ID4g
K8KgwqDCoMKgwqDCoCAucGh5Y3RsX29mZnNldCA9IFJFR19QSFlDVExfQTEwLAo+ID4gPiA+ICvC
oMKgwqDCoMKgwqAgLmRlZGljYXRlZF9jbG9ja3MgPSB0cnVlLAo+ID4gPiA+ICt9Owo+ID4gPiA+
ICsKPiA+ID4gPiDCoHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc3VuNGlfdXNiX3BoeV9jZmcgc3VuNGlf
YTEwX2NmZyA9IHsKPiA+ID4gPiDCoMKgwqDCoMKgwqDCoCAubnVtX3BoeXMgPSAzLAo+ID4gPiA+
IMKgwqDCoMKgwqDCoMKgIC50eXBlID0gc3VuNGlfYTEwX3BoeSwKPiA+ID4gPiBAQCAtOTg4LDYg
Kzk5Nyw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkCj4gPiA+ID4gc3VuNGlf
dXNiX3BoeV9vZl9tYXRjaFtdID0geyB7IC5jb21wYXRpYmxlID0KPiA+ID4gPiAiYWxsd2lubmVy
LHN1bjUwaS1hNjQtdXNiLXBoeSIsCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgIC5kYXRhID0g
JnN1bjUwaV9hNjRfY2ZnfSwKPiA+ID4gPiDCoMKgwqDCoMKgwqDCoCB7IC5jb21wYXRpYmxlID0g
ImFsbHdpbm5lcixzdW41MGktaDYtdXNiLXBoeSIsIC5kYXRhID0KPiA+ID4gCj4gPiA+ICZzdW41
MGlfaDZfY2ZnIH0sCj4gPiA+IAo+ID4gPiA+ICvCoMKgwqDCoMKgwqAgeyAuY29tcGF0aWJsZSA9
ICJhbGx3aW5uZXIsc3VuaXYtZjFjMTAwcy11c2ItcGh5IiwKPiA+ID4gPiArwqDCoMKgwqDCoMKg
wqDCoCAuZGF0YSA9ICZzdW5pdl9mMWMxMDBzX2NmZyB9LAo+ID4gPiA+IMKgwqDCoMKgwqDCoMKg
IHsgfSwKPiA+ID4gPiDCoH07Cj4gPiA+ID4gwqBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBzdW40
aV91c2JfcGh5X29mX21hdGNoKTsKPiA+ID4gPiAtLQo+ID4gPiA+IDIuMzcuMQo+IAo+IAoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
