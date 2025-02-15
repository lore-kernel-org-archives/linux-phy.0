Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05D15C021A0
	for <linux-phy@archiver.kernel.org>; Sat, 15 Feb 2025 09:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsNnbEkcyZo9TzQrAf3i6iXQr41/bZIXdVyF2nFFS+8=; b=dTQ61UbLklpfCL
	kcGwaWktGtXx9fwmFiJrrWg8CZZs4zPhDC5IIv1F+0BpteWNfsXUJAlItDwhLgVDgX+IR7TRI5uyD
	BDfWxEcZApFNmKgTIUF4XqndYCwpkzOyLCpyxKSLpKnN5o+yMGA40Zf1mXQT0kQyQQrCC/czkTMFA
	DyGJ8OcgFCKlv44wys6x/e8rIDbzVNQHJ5pD9gZLS5WNUpePsni1Zy/WuW/xH80gi8VX78HoILvIw
	hfasRHh7luxAWObVlXq+usNuuG9V9kf2gZo7juX6m02XmIdjQ40c9mmUB15bAC83FfQ4TANVODz4N
	CxTdyqX/abngUdbc19Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjEb2-0000000HLLc-1c3L;
	Sat, 15 Feb 2025 09:36:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjEZZ-0000000HLCw-09Ro;
	Sat, 15 Feb 2025 09:34:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1D2955C47EF;
	Sat, 15 Feb 2025 09:34:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0F8AC4CEDF;
	Sat, 15 Feb 2025 09:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739612091;
	bh=IKAZ62FsF2gjnJ9KpMdbt5Jkq3UapRnpVvowqhjkAOo=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=CNcOfGt0rxUkBNBm2E0As9dDWfXXhIRglO86RMgEibzqtVCQchSuQaW1JQl14+hkQ
	 3/TfLDOsp8kStnE7U2/5xHjjSEHKH8EMMBQ/HDOAF8sxo3TZLSMTR9KH/e/1i2CNn0
	 5H9sw4vTmRqLpn/+I9ROob9REWWUKgFBboCS872BI4eLzZe7necRoVi9GJWYfw+MSF
	 mXY65hmU+oz3cY2BGvoxH08iSm6d3k2fe5ilrtUxDFukPyq2e3AZh6rKOqATaBlph2
	 boHxM2ynaEtNlo8VmyYEVfZqN3y/Eent85/MvhOqZg7mB9Zj8zzf8tJiUA2LGbbhxa
	 FwsRdfXrmq4Hg==
Message-ID: <0198b64c-c0d1-465c-a1e7-85b7732d6268@kernel.org>
Date: Sat, 15 Feb 2025 10:34:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/7] phy: exynos5-usbdrd: subscribe to orientation
 notifier if required
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Sam Protsenko <semen.protsenko@linaro.org>,
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <CGME20241206163109eucas1p12aea3a9a6c404cd7c678009ea11aa5b3@eucas1p1.samsung.com>
 <20241206-gs101-phy-lanes-orientation-phy-v4-6-f5961268b149@linaro.org>
 <3c0b77e6-357d-453e-8b63-4757c3231bde@samsung.com>
 <b23342dd-381d-4127-9eee-c8755a0d425d@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <b23342dd-381d-4127-9eee-c8755a0d425d@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_013453_194390_0D75155C 
X-CRM114-Status: GOOD (  19.50  )
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

T24gMTUvMDIvMjAyNSAxMDoyNCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAxNC8w
Mi8yMDI1IDIwOjMwLCBNYXJlayBTenlwcm93c2tpIHdyb3RlOgo+PiBPbiAwNi4xMi4yMDI0IDE3
OjMxLCBBbmRyw6kgRHJhc3ppayB3cm90ZToKPj4+IGdzMTAxJ3MgU1MgcGh5IG5lZWRzIHRvIGJl
IGNvbmZpZ3VyZWQgZGlmZmVyZW50bHkgYmFzZWQgb24gdGhlCj4+PiBjb25uZWN0b3Igb3JpZW50
YXRpb24sIGFzIHRoZSBTUyBsaW5rIGNhbiBvbmx5IGJlIGVzdGFibGlzaGVkIGlmIHRoZQo+Pj4g
bXV4IGlzIGNvbmZpZ3VyZWQgY29ycmVjdGx5Lgo+Pj4KPj4+IFRoZSBjb2RlIHRvIGhhbmRsZSBw
cm9ncmFtbWluZyBvZiB0aGUgbXV4IGlzIGluIHBsYWNlIGFscmVhZHksIHRoaXMgY29tbWl0Cj4+
PiBub3cgYWRkcyB0aGUgbWlzc2luZyBwaWVjZXMgdG8gc3Vic2NyaWJlIHRvIHRoZSBUeXBlLUMg
b3JpZW50YXRpb24KPj4+IHN3aXRjaCBldmVudC4KPj4+Cj4+PiBOb3RlIHRoYXQgZm9yIHRoaXMg
YWxsIHRvIHdvcmsgd2UgcmVseSBvbiB0aGUgVVNCIGNvbnRyb2xsZXIKPj4+IHJlLWluaXRpYWxp
c2luZyB1cy4gSXQgc2hvdWxkIGludm9rZSBvdXIgLmV4aXQoKSB1cG9uIGNhYmxlIHVucGx1Zywg
YW5kCj4+PiBkdXJpbmcgY2FibGUgcGx1ZyB3ZSdsbCByZWNlaXZlIHRoZSBvcmllbnRhdGlvbiBl
dmVudCBhZnRlciB3aGljaCB3ZQo+Pj4gZXhwZWN0IG91ciAuaW5pdCgpIHRvIGJlIGNhbGxlZC4K
Pj4+Cj4+PiBBYm92ZSByZWluaXRpYWxpc2F0aW9uIGhhcHBlbnMgaWYgdGhlIERXQzMgY29udHJv
bGxlciBjYW4gZW50ZXIgcnVudGltZQo+Pj4gc3VzcGVuZCBhdXRvbWF0aWNhbGx5LiBGb3IgdGhl
IERXQzMgZHJpdmVyLCB0aGlzIGlzIGFuIG9wdC1pbjoKPj4+ICAgICAgZWNobyBhdXRvID4gL3N5
cy9kZXZpY2VzLy4uLi8xMTExMDAwMC51c2IvcG93ZXIvY29udHJvbAo+Pj4gT25jZSBkb25lLCB0
aGluZ3Mgd29yayBhcyBsb25nIGFzIHRoZSBVREMgaXMgbm90IGJvdW5kIGFzIG90aGVyd2lzZSBp
dAo+Pj4gc3RheXMgYnVzeSBiZWNhdXNlIGl0IGRvZXNuJ3QgY2FuY2VsIC8gc3RvcCBvdXRzdGFu
ZGluZyBUUkJzLiBGb3Igbm93Cj4+PiB3ZSBoYXZlIHRvIG1hbnVhbGx5IHVuYmluZCB0aGUgVURD
IGluIHRoYXQgY2FzZToKPj4+ICAgICAgIGVjaG8gIiIgPiBzeXMva2VybmVsL2NvbmZpZy91c2Jf
Z2FkZ2V0Ly4uLi9VREMKPj4+Cj4+PiBOb3RlIHRoYXQgaWYgdGhlIG9yaWVudGF0aW9uLXN3aXRj
aCBwcm9wZXJ0eSBpcyBtaXNzaW5nIGZyb20gdGhlIERULAo+Pj4gdGhlIGNvZGUgd2lsbCBiZWhh
dmUgYXMgYmVmb3JlIHRoaXMgY29tbWl0IChtZWFuaW5nIGZvciBnczEwMSBpdCB3aWxsCj4+PiB3
b3JrIGluIFNTIG1vZGUgaW4gb25lIG9yaWVudGF0aW9uIG9ubHkpLiBPdGhlciBwbGF0Zm9ybXMg
YXJlIG5vdAo+Pj4gYWZmZWN0ZWQgZWl0aGVyIHdheS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBB
bmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgo+Pj4KPj4+IC0tLQo+Pj4g
djM6Cj4+PiAqIGRyb3AgaW5pdCB0byAtMSBvZiBwaHlfZHJkLT5vcmllbnRhdGlvbiAoVmlub2Qp
Cj4+PiAqIGF2b2lkICNpZmRlZiBhbmQgc3dpdGNoIHRvIG5vcm1hbCBjb25kaXRpb25hbCBJU19F
TkFCTEVEKCkgZm9yCj4+PiAgICBDT05GSUdfVFlQRUMKPj4+Cj4+PiB2MjoKPj4+ICogbW92ZSAj
aW5jbHVkZSB0eXBlY19tdXguaCBmcm9tIHBhcmVudCBwYXRjaCBpbnRvIHRoaXMgb25lIChQZXRl
cikKPj4+IC0tLQo+Pj4gICBkcml2ZXJzL3BoeS9zYW1zdW5nL0tjb25maWcgICAgICAgICAgICAg
IHwgIDEgKwo+Pj4gICBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIHwg
NTYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+ICAgMiBmaWxlcyBjaGFuZ2Vk
LCA1NyBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1
bmcvS2NvbmZpZyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZwo+Pj4gaW5kZXggZjEwYWZh
M2Q3ZmY1Li5mYzdiZDEwODg1NzYgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5n
L0tjb25maWcKPj4+ICsrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZwo+Pj4gQEAgLTgw
LDYgKzgwLDcgQEAgY29uZmlnIFBIWV9FWFlOT1M1X1VTQkRSRAo+Pj4gICAJdHJpc3RhdGUgIkV4
eW5vczUgU29DIHNlcmllcyBVU0IgRFJEIFBIWSBkcml2ZXIiCj4+PiAgIAlkZXBlbmRzIG9uIChB
UkNIX0VYWU5PUyAmJiBPRikgfHwgQ09NUElMRV9URVNUCj4+PiAgIAlkZXBlbmRzIG9uIEhBU19J
T01FTQo+Pj4gKwlkZXBlbmRzIG9uIFRZUEVDIHx8IChUWVBFQz1uICYmIENPTVBJTEVfVEVTVCkK
Pj4+ICAgCWRlcGVuZHMgb24gVVNCX0RXQzNfRVhZTk9TCj4+PiAgIAlzZWxlY3QgR0VORVJJQ19Q
SFkKPj4+ICAgCXNlbGVjdCBNRkRfU1lTQ09OCj4gCj4gCj4gU28gdGhhdCBleHBsYWlucyB3aHkg
b24gcmVjZW50IG5leHQgc29tZSBvZiBteSBib2FyZHMgZG9uJ3QgYm9vdC4gSSB3YXMKPiBhYm91
dCB0byBkaWcgb3ZlciB0aGUgd2Vla2VuZC4KPiAKPj4KPj4gSSd2ZSBqdXN0IG5vdGljZWQgdGhh
dCB0aGUgYWJvdmUgZGlzYWJsZXMgRXh5bm9zIERSRCBQSFkgZHJpdmVyIGluIHRoZSAKPj4gZGVm
YXVsdCBleHlub3NfZGVmY29uZmlnIGZvciBhcm0gMzJiaXQuIEVuYWJsaW5nIENPTkZJR19UWVBF
QyBpcyAKPj4gZXh5bm9zX2RlZmNvbmZpZyBwcm9iYWJseSBpcyB0aGUgZWFzaWVzdCB3YXkgdG8g
Zml4IHRoaXMuIEkgd2lsbCBzZW5kIGEgCj4+IHBhdGNoIHRoZW4uCj4gCj4gTm8sIGl0J3MganVz
dCB3cm9uZy4gTm90aGluZyBoZXJlIGRlcGVuZHMgb24gdHlwZWMgYW5kIEFSTXY3IGRvZXMgbm90
Cj4gaGF2ZSBUeXBlYy4KPiAKSSdsbCBzZW5kIGEgZml4IGZvciB0aGlzLgoKQmVzdCByZWdhcmRz
LApLcnp5c3p0b2YKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
