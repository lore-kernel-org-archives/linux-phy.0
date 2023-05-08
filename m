Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFFDBC77B73
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 12:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ysE384LSVIXt7uf3VBFiTp/2oZlzrI8XcprfRbMpYQ=; b=0/uXUbvOG8EajQ
	haz78t9nto5ryBFpbr8piWI+em3Ds3cPANfwXpkPvQRhDRICw1kCyQO/xU4YuFgN/8IDMrYEedPmz
	seLE+U2bnkwrGocBwESw0CNdDFL1q0WT9oAZ7DDRVJpHoRH4Jio6FPo762ELVxp/CSciLluAc7Bsa
	vEuj3wBFDOesy3kMW7WjXqJ9PM07P/c8KuvdvDZmUz1WvRc2Do4zScukHQtdNjVeCxUSXctu76DR8
	mfshy/j+r8Xz12EITtX1U3KgnJLoMsexF0c99LPFJOv8IJYnFjb0h7iAUoNXAcpts5xw29JSk35nl
	cGGFmxdabqSQYcGyxAnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pw0Al-000XWR-1n;
	Mon, 08 May 2023 12:40:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pw0Aj-000XWB-3D
	for linux-phy@bombadil.infradead.org;
	Mon, 08 May 2023 12:40:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=XtYYOTxG+TfX6hUS459w5riNE8R2rlU+3G02NEYfxqA=; b=mzlelQhNkLiwJZ0L9f8+3+6pT6
	wabGVBuE49Ae0JMzutkuB4kBPQKdzdLcQxan0ZHnvT9f6CwxCcgtg1EE5nDao3hfnezvbGL43MnUX
	bYY4cqFNiwreasRjYzfZTnQGVnbjQGrufJ78+uKEBw4K3ljXCRhgdn9OKORDhId7RH4ub238lwr9X
	vBBbNPdQIk7dV9avOyrjTYbMDxBC1udXpVpRWJJ/Xp2Q5bUbhXOlLES7akN+Jg777UYkLUkmIfW6I
	ctaA0iTrlNBaz39rFfOe7zWkEhDQAAH0rlSgho6ZA3LSNxtWtUFGMkd0KISpHQv2qdv17/3HJzVQz
	+s1SHmMA==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvzLT-0059Bm-2N
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 11:48:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CAA1F63A73;
	Mon,  8 May 2023 11:47:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A040BC433EF;
	Mon,  8 May 2023 11:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683546475;
	bh=QpWbsF81AEIhM6M2asCt/LL6A53rK0qfm2ZYOa/uUzs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s9FXdpCCuYT+NuTeW9TK8giBrQdhU3Z6Rzed/hvA/BQQoHibU9BgST9V53uVqQ7OI
	 MNx9aiLNaSHBXJLHAe7RGFc2ELr374UhKNjmBBLaZGv/vfqER4UFIP9hI9bbvcfvw0
	 A+4FBa5xboDbTf2XKpv0k2IoElPvCAEk76z8g7Vh+weKHAKDRaZleJ3dvKKz/pTo0d
	 Hq9coh75EvzLYWE5BeWk+eDtR2FLcg2rq/hRf2B7DB6h7XwcIMTl9q9P9htH23S4pP
	 2xvShGpLFwtRq8eJEFqQ13/LXVQ3cs48IowulWcZYQh8TJvJxqvJCbwFguhkAQAkYb
	 yMRkA1lTdxnpw==
Date: Mon, 8 May 2023 17:17:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yangfl <mmyangfl@gmail.com>
Cc: linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: hisilicon: Adopt phy-hisi-inno-usb2 to Hi3798MV100
Message-ID: <ZFjhZt6/K5wNJOrW@matsya>
References: <20230507154615.793942-1-mmyangfl@gmail.com>
 <ZFinwhFphe71VeLk@matsya>
 <CAAXyoMN2CvVkL+=wT=Q4zJZJa-qUiyiVS4SZquVQ1LUfDmoM5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAXyoMN2CvVkL+=wT=Q4zJZJa-qUiyiVS4SZquVQ1LUfDmoM5Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_124800_189154_8607927D 
X-CRM114-Status: GOOD (  22.01  )
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

T24gMDgtMDUtMjMsIDE5OjM5LCBZYW5nZmwgd3JvdGU6Cj4gVmlub2QgS291bCA8dmtvdWxAa2Vy
bmVsLm9yZz4g5LqOMjAyM+W5tDXmnIg45pel5ZGo5LiAIDE1OjQx5YaZ6YGT77yaCj4gPgo+ID4g
T24gMDctMDUtMjMsIDIzOjQ2LCBEYXZpZCBZYW5nIHdyb3RlOgo+ID4gPiBIaXNpbGljb24gYWxz
byB1c2VzIHBoeS1oaXNpLWlubm8tdXNiMiBvbiBIaTM3OThNVjEwMCwgd2l0aCBhIHNsaWdodGx5
Cj4gPiA+IGRpZmZlcmVudCByZWdpc3RlciBjb252ZW50aW9uLgo+ID4KPiA+IE9LLCBzbyB3aGF0
IHNob3VsZCBJIGV4cGVjdCBmcm9tIHRoaXMgcGF0Y2gsIHBscyBkb2N1bWVudCB0aGF0IGhlcmUu
Li4KPiAKPiBIaTM3OThNVjEwMCB1c2IyIHBoeS4gV2hpY2gga2luZCBvZiBkb2N1bWVudCBzaG91
bGQgSSBwdXQgaGVyZT8KClBscyBhZGQgdGhlIGRldGFpbHMgb24gd2hhdCBpcyBiZWluZyBjaGFu
Z2VkIGluIHRoaXMgcGF0Y2guIHRoaXMgaXMgdGhlCnBsYWNlIHdoZXJlIHBhdGNoIGRlc2NyaXB0
aW9uIGlzIHByb3ZpZGVkLCB3aGF0IGFyZSBhbGwgdGhlIHRoaW5ncyB0aGF0CmFyZSBnZXR0aW5n
IGNoYW5nZWQKCj4gCj4gPgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBEYXZpZCBZYW5nIDxt
bXlhbmdmbEBnbWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9waHkvaGlzaWxpY29u
L0tjb25maWcgICAgICAgICAgICAgIHwgIDIgKy0KPiA+ID4gIGRyaXZlcnMvcGh5L2hpc2lsaWNv
bi9waHktaGlzaS1pbm5vLXVzYjIuYyB8IDY3ICsrKysrKysrKysrKysrKystLS0tLS0KPiA+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgNTEgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCj4gPiA+
Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9oaXNpbGljb24vS2NvbmZpZyBiL2RyaXZl
cnMvcGh5L2hpc2lsaWNvbi9LY29uZmlnCj4gPiA+IGluZGV4IGQzYjkyYzI4ODU1NC4uNmM4OTEz
NmZjOGMyIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3BoeS9oaXNpbGljb24vS2NvbmZpZwo+
ID4gPiArKysgYi9kcml2ZXJzL3BoeS9oaXNpbGljb24vS2NvbmZpZwo+ID4gPiBAQCAtNTQsNyAr
NTQsNyBAQCBjb25maWcgUEhZX0hJU1RCX0NPTUJQSFkKPiA+ID4KPiA+ID4gIGNvbmZpZyBQSFlf
SElTSV9JTk5PX1VTQjIKPiA+ID4gICAgICAgdHJpc3RhdGUgIkhpU2lsaWNvbiBJTk5PIFVTQjIg
UEhZIHN1cHBvcnQiCj4gPiA+IC0gICAgIGRlcGVuZHMgb24gKEFSQ0hfSElTSSAmJiBBUk02NCkg
fHwgQ09NUElMRV9URVNUCj4gPiA+ICsgICAgIGRlcGVuZHMgb24gQVJDSF9ISVNJIHx8IENPTVBJ
TEVfVEVTVAo+ID4KPiA+IHdoeSB0aGlzIGNoYW5nZT8KPiAKPiBIaTM3OThNVjEwMCBpcyBhIEE5
IEFSTTMyIG9ubHkgc29jLgoKT0sgcGxzIGRvY3VtZW50IHRoYXQsIGFsc28gc3VzcGVjdCB0aGF0
IG1pZ2h0IGEgc2VwYXJhdGUgcGF0Y2guLj8KCj4gCj4gPgo+ID4gPiAgICAgICBzZWxlY3QgR0VO
RVJJQ19QSFkKPiA+ID4gICAgICAgc2VsZWN0IE1GRF9TWVNDT04KPiA+ID4gICAgICAgaGVscAo+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvaGlzaWxpY29uL3BoeS1oaXNpLWlubm8tdXNi
Mi5jIGIvZHJpdmVycy9waHkvaGlzaWxpY29uL3BoeS1oaXNpLWlubm8tdXNiMi5jCj4gPiA+IGlu
ZGV4IGIxMzNhZTA2NzU3YS4uYjVkMDA2ZjM4OTM0IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJz
L3BoeS9oaXNpbGljb24vcGh5LWhpc2ktaW5uby11c2IyLmMKPiA+ID4gKysrIGIvZHJpdmVycy9w
aHkvaGlzaWxpY29uL3BoeS1oaXNpLWlubm8tdXNiMi5jCj4gPiA+IEBAIC05LDcgKzksNyBAQAo+
ID4gPiAgI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+Cj4gPiA+ICAjaW5jbHVkZSA8bGludXgvaW8u
aD4KPiA+ID4gICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiA+ID4gLSNpbmNsdWRlIDxsaW51
eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4K
PiA+ID4gICNpbmNsdWRlIDxsaW51eC9waHkvcGh5Lmg+Cj4gPiA+ICAjaW5jbHVkZSA8bGludXgv
cmVzZXQuaD4KPiA+ID4KPiA+ID4gQEAgLTIwLDEyICsyMCwyOCBAQAo+ID4gPiAgI2RlZmluZSBQ
SFlfQ0xLX1NUQUJMRV9USU1FICAyICAgICAgIC8qIHVuaXQ6bXMgKi8KPiA+ID4gICNkZWZpbmUg
VVRNSV9SU1RfQ09NUExFVEVfVElNRSAgICAgICAyICAgICAgIC8qIHVuaXQ6bXMgKi8KPiA+ID4g
ICNkZWZpbmUgUE9SX1JTVF9DT01QTEVURV9USU1FICAgICAgICAzMDAgICAgIC8qIHVuaXQ6dXMg
Ki8KPiA+ID4gLSNkZWZpbmUgUEhZX1RFU1RfREFUQSAgICAgICAgICAgICAgICBHRU5NQVNLKDcs
IDApCj4gPiA+IC0jZGVmaW5lIFBIWV9URVNUX0FERFIgICAgICAgICAgICAgICAgR0VOTUFTSygx
NSwgOCkKPiA+ID4gLSNkZWZpbmUgUEhZX1RFU1RfUE9SVCAgICAgICAgICAgICAgICBHRU5NQVNL
KDE4LCAxNikKPiA+ID4gLSNkZWZpbmUgUEhZX1RFU1RfV1JFTiAgICAgICAgICAgICAgICBCSVQo
MjEpCj4gPiA+IC0jZGVmaW5lIFBIWV9URVNUX0NMSyAgICAgICAgIEJJVCgyMikgLyogcmlzaW5n
IGVkZ2UgYWN0aXZlICovCj4gPiA+IC0jZGVmaW5lIFBIWV9URVNUX1JTVCAgICAgICAgIEJJVCgy
MykgLyogbG93IGFjdGl2ZSAqLwo+ID4gPiArCj4gPiA+ICsjZGVmaW5lIFBIWV9UWVBFXzAgICAw
Cj4gPiA+ICsjZGVmaW5lIFBIWV9UWVBFXzEgICAxCj4gPiA+ICsKPiA+ID4gKyNkZWZpbmUgUEhZ
MF9URVNUX0RBVEEgICAgICAgICAgICAgICBHRU5NQVNLKDcsIDApCj4gPgo+ID4gc2FtZSBhcyBw
cmV2aW91cyB3aGF0IGNoYW5nZWQ/Pwo+IAo+IFJlZ2lzdGVyIGNvbnZlbnRpb24gZm9yIFBIWTEg
YmVsb3csIGFzIG1lbnRpb25lZCBpbiBjb21taXQgbWVzc2FnZS4KCkl0IGlzIF9leGFjdGx5XyBz
YW1lIGFzIHByZXZpb3VzLCBzbyBwbHMgZG9udCBpbnRyb2R1Y2UgdW5uZWNlc3NhcnkKY2hhbmdl
cy4uCgotLSAKflZpbm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
