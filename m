Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07478C5DF74
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 23:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5KT1uefH77M4e24vs0Dj25+YE8UBsX1xja9M53MKjo=; b=ktTgAw38tacvSR
	ZgozG35qQmGZD3lYkI7gXOC5ZuJkROMHfx/+d3IV6F76PpqzcX42iE7EcUSwXW+6rpl5BXqHnnaCr
	34hIzL5i+iQkM50AlHeapK1DnwL/9N5D8nfcpuEbVtDeeO7IgNrGEYhlzjPNQabTgBhIpQ4cVvjrn
	vr7H4R5bwYFXsbZERKqwDVuvfe8g2LoTUGdLZc/KQIDtZsLB2IyBqU4JC0DQ8UGKARsBkKirfoVZx
	oDy59OfQyx/TvMXSKBkCbo7TETCLR6ZOjZVPP7PmzZFbhKp7ftZ3xd63D6WUV/NoSTVh6/ZCDMEOU
	11b7UzGgrLmX4+b2pmUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww78A-00000006ziw-33u4;
	Mon, 17 Aug 2026 23:52:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww789-00000006zin-0IBr;
	Mon, 17 Aug 2026 23:52:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 819514061B;
	Mon, 17 Aug 2026 23:52:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FF5D1F000E9;
	Mon, 17 Aug 2026 23:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787010756;
	bh=koWf55vaeY/YK5s2sXLfuXSB87tJXPWVCUmNqitRZhA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=V+hk+LycGEcXLRgSUp/flcYt0TOp/+5nxDJSpjbCXKVph6Y0rL4yhAwebZhCRcbjc
	 XQgcNqYrGmOp9ZXyY7mN+58t17njbPXI29hVNP5O6mNWvR/ODCTjkqY15Wg6N61DGt
	 8tQFTaKg/ZJ27xleGoqhaczD3VcAYDCrUyzfVHDSsx/zdzWn1hdP8SlilEuqUdj6Be
	 NCzOqG0Msb/3GqAlpsJkiwbgymrR0B8qzBG+I+gkB6KZDzKbVl5QP51Un3gHUyQgMX
	 klOxX9iyqfyFxSglHVTEIL+dUHGLGWQnktVu8sGC/gWiu3jmiiC2sgrvK0ApX1uJcT
	 /aZAG5R8VkYGA==
Date: Mon, 17 Aug 2026 16:52:34 -0700
From: Drew Fustini <fustini@kernel.org>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Jisheng Zhang <jszhang@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org, Han Gao <rabenda.cn@gmail.com>,
	Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH 02/12] clk: thead: th1520-ap: add support for MISC subsys
 clocks
Message-ID: <aoOewlbMfey0DLwp@thelio>
References: <20260507081710.4090814-1-zhengxingda@iscas.ac.cn>
 <20260507081710.4090814-3-zhengxingda@iscas.ac.cn>
 <aier9XppLeCkJydw@thelio>
 <93b867c1b7f5526cc25cb04f838432cd752f5981.camel@icenowy.me>
 <aievi0s-3SO8hV6a@thelio>
 <aijpEqzJ7fM7rGMH@thelio>
 <aoH9cvTC8vD4NYpB@x1>
 <3f0268a19aab46d602dffc9e14fc6683af7a20cd.camel@icenowy.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3f0268a19aab46d602dffc9e14fc6683af7a20cd.camel@icenowy.me>
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

T24gTW9uLCBBdWcgMTcsIDIwMjYgYXQgMTI6MjQ6MjZQTSArMDgwMCwgSWNlbm93eSBaaGVuZyB3
cm90ZToKPiDlnKggMjAyNi0wOC0xNuaXpeeahCAxMToxMiAtMDcwMO+8jERyZXcgRnVzdGluaeWG
memBk++8mgo+ID4gT24gVHVlLCBKdW4gMDksIDIwMjYgYXQgMDk6MzM6MjJQTSAtMDcwMCwgRHJl
dyBGdXN0aW5pIHdyb3RlOgo+ID4gPiBPbiBNb24sIEp1biAwOCwgMjAyNiBhdCAxMToxNTozOVBN
IC0wNzAwLCBEcmV3IEZ1c3Rpbmkgd3JvdGU6Cj4gPiA+ID4gT24gVHVlLCBKdW4gMDksIDIwMjYg
YXQgMDI6MDE6NDNQTSArMDgwMCwgSWNlbm93eSBaaGVuZyB3cm90ZToKPiA+ID4gPiA+IOWcqCAy
MDI2LTA2LTA45LiA55qEIDIzOjAwIC0wNzAw77yMRHJldyBGdXN0aW5p5YaZ6YGT77yaCj4gPiA+
ID4gPiA+IE9uIFRodSwgTWF5IDA3LCAyMDI2IGF0IDA0OjE3OjAwUE0gKzA4MDAsIEljZW5vd3kg
WmhlbmcKPiA+ID4gPiA+ID4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gVGhlIFRIMTUyMCBTb0MgY29u
dGFpbnMgYSBNSVNDX1NVQlNZUyBjbG9jayBjb250cm9sbGVyLAo+ID4gPiA+ID4gPiA+IHdoaWNo
Cj4gPiA+ID4gPiA+ID4gYWxsb3dzCj4gPiA+ID4gPiA+ID4gY29udHJvbGxpbmcgb2YgVVNCIHJl
bGF0ZWQgY2xvY2tzIGFuZCBNTUMvU0QgY29udHJvbGxlciBBSEIKPiA+ID4gPiA+ID4gPiBidXMK
PiA+ID4gPiA+ID4gPiBjbG9ja3MuCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gQWRkIHN1
cHBvcnQgZm9yIHRoaXMgY2xvY2sgY29udHJvbGxlciwgaW4gb3JkZXIgdG8gZW5hYmxlCj4gPiA+
ID4gPiA+ID4gVVNCCj4gPiA+ID4gPiA+ID4gc3VwcG9ydC4KPiA+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBJY2Vub3d5IFpoZW5nIDx6aGVuZ3hpbmdkYUBpc2Nhcy5h
Yy5jbj4KPiA+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4gPiDCoGRyaXZlcnMvY2xrL3RoZWFk
L2Nsay10aDE1MjAtYXAuYyB8IDY0Cj4gPiA+ID4gPiA+ID4gKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKwo+ID4gPiA+ID4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDY0IGluc2VydGlvbnMo
KykKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsv
dGhlYWQvY2xrLXRoMTUyMC1hcC5jCj4gPiA+ID4gPiA+ID4gYi9kcml2ZXJzL2Nsay90aGVhZC9j
bGstdGgxNTIwLWFwLmMKPiA+ID4gPiA+ID4gPiBpbmRleCAzYTY4NDdmMWM5NTBmLi4yNGY3ODVm
MGIzMjlhIDEwMDY0NAo+ID4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvY2xrL3RoZWFkL2Nsay10
aDE1MjAtYXAuYwo+ID4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvY2xrL3RoZWFkL2Nsay10aDE1
MjAtYXAuYwo+ID4gPiA+ID4gPiBbLi4uXQo+ID4gPiA+ID4gPiA+IEBAIC0xNjA5LDYgKzE2NjMs
MTIgQEAgc3RhdGljIGludCB0aDE1MjBfY2xrX3Byb2JlKHN0cnVjdAo+ID4gPiA+ID4gPiA+IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPiA+ID4gPiA+ID4gPiDCoAkJCXJldHVybiByZXQ7Cj4gPiA+
ID4gPiA+ID4gwqAJfQo+ID4gPiA+ID4gPiA+IMKgCj4gPiA+ID4gPiA+ID4gKwlpZiAocGxhdF9k
YXRhID09ICZ0aDE1MjBfYXBfcGxhdGRhdGEpIHsKPiA+ID4gPiA+ID4gPiArCQlyZXQgPSBkZXZt
X2Nsa19od19yZWdpc3RlcihkZXYsCj4gPiA+ID4gPiA+ID4gJnVzYl9zdXNwZW5kX2Rpdl9jbGsu
aHcpOwo+ID4gPiA+ID4gPiA+ICsJCWlmIChyZXQpCj4gPiA+ID4gPiA+ID4gKwkJCXJldHVybiBy
ZXQ7Cj4gPiA+ID4gPiA+ID4gKwl9Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBTaG91bGQgdXNi
X3N1c3BlbmRfZGl2X2Nsay5odyBpbnN0ZWFkIGJlIHJlZ2lzdGVyZWQgdW5kZXIKPiA+ID4gPiA+
ID4gJ2lmIChwbGF0X2RhdGEgPT0gJnRoMTUyMF9hcF9wbGF0ZGF0YSknPwo+ID4gPiA+ID4gCj4g
PiA+ID4gPiBEbyB5b3UgbWVhbiBtaXNjX3BsYXRkYXRhPwo+ID4gPiA+ID4gCj4gPiA+ID4gPiBZ
ZXMsIHRoaXMgaXMgYW4gY29weS1uLXBhc3RlIGVycm9yIHRoYXQgZGVzZXJ2ZXMgYSBmaXguCj4g
PiA+ID4gCj4gPiA+ID4gSGFoLCB5ZXMsIEkgYWxzbyBoYWQgYSB0eXBvIDopCj4gPiA+IAo+ID4g
PiBBc3N1bWluZyB0aGF0IGdldHMgZml4ZWQgaW4gdGhlIG5leHQgcmV2Ogo+ID4gPiAKPiA+ID4g
UmV2aWV3ZWQtYnk6IERyZXcgRnVzaW5pIDxmdXN0aW5pQGtlcm5lbC5vcmc+Cj4gPiAKPiA+IEkg
d2lsbCBmaXh1cCB0aGUgdHlwbyBhbmQgYXBwbHkgdG8gdGhlYWQtY2xrLWZvci1uZXh0IG9uY2Ug
Ny4zLXJjMSBpcwo+ID4gcmVsZWFzZWQuCj4gCj4gQlRXIEkgdGhpbmsgdGhlIGJpbmRpbmcgcGF0
Y2ggc2hvdWxkIGdvIHRocm91Z2ggeW91ciB0cmVlIHRvby4KClllcywgSSB3aWxsIHBsYW4gdG8g
dGFrZSBwYXRjaCAxIGFuZCAyIHRocm91Z2ggdGhlYWQtY2xrLWZvci1uZXh0IGFuZApwYXRjaCAz
IHRocm91Z2ggdGhlYWQtZHQtZm9yLW5leHQuCgpUaGFua3MsCkRyZXcKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
