Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11E24C5B56A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 14:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1uYBYVAmVKYxYWzKaBBabI3UNZ4qeKD1PAhp40e+q0g=; b=yB0Q7XQam+pK1z
	6vg2bbF/I1v11LrfG9TI0BcqQtTNeb86cGaf/P2CwtD6DBl9z9TMK2QkN84+moF8Z+7RqYCb49shl
	lBJV+cpIH67O5MyFmsEbUOaeCIFHj49Q1mrjmQgQ17Z3zlQ7AOprHA0Dj710XlgkpuJECw5v3DZvM
	BONUUd9SZ/5dwRfL6MOh0Q1tY7C5yfjbGo68JBIgPb7tI9B5SF75UTWkmAP+Cil3h2/aYTAhE6GWb
	j+/5kJUyASS1PZO5YLzGv3wZvIMbWc9VpYHDo1iSo3XfRfKqhICf40Lw78o8kENczSEZL3pYnmKkK
	TWerkDlvQRn/h4HFxQCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuAMB-0000000GQ4i-1FDC;
	Wed, 12 Aug 2026 14:55:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuAMA-0000000GQ4U-1lJ0
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 14:55:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A66A760A7D;
	Wed, 12 Aug 2026 14:55:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A4711F000E9;
	Wed, 12 Aug 2026 14:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786546500;
	bh=2ywoCp62rBpTHbJBtk9N7B4NyBna8o6Efm2iLdI5P1s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=B1BZuGIekk+j+v16v0jIJTZmIA/hZZLOG6FQb0nMHNQL9gwtRdU8rzCvm8ZxuOgJR
	 pivnBSBdQ03dfT6vPd7jHLpcquO5M6uAtyahQBJwbzyfn9YVMf7v/mzcWpQyxzUmpX
	 E81m2fOYm+izZvt8ETivwk/lc9vX0jztlw4fOJLqp0xB1Z9zcNUuLygc9Zk0sPxMHs
	 KJB3VJeciOo90MVNni/9gMPZQTUYbPpUKu3x4tuPxLT02UTwfV9g5J32AcoY3eCZwR
	 GDDEM+j/bo1Z3d1MeqbGHgaA7oN0OiXLNfKHTliG0LQ3hcYoBPxq+1Dd3XwvML57qp
	 1PHFecbsMn5eQ==
Date: Wed, 12 Aug 2026 16:54:52 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stanley Chang <stanley_chang@realtek.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: Re: [PATCH v6 1/6] phy: realtek: usb2: introduce vstatus/new_reg_req
 variables to driver data
Message-ID: <kce2vypa2ueuodxguuubyflnmsbmak5gjnjtmbjr24p3wvo6ep@6jrbxalol5ty>
References: <20260520175728.720877-1-adilov@disroot.org>
 <20260520175728.720877-2-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260520175728.720877-2-adilov@disroot.org>
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

T24gV2VkLCBNYXkgMjAsIDIwMjYgYXQgMTA6NTc6MjNQTSArMDUwMCwgUnVzdGFtIEFkaWxvdiB3
cm90ZToKPiBJbiBSVEw5NjA3QyBTb0MsIHRoZSB2c3RhdHVzIHJlZ2lzdGVyIGlzIGxvY2F0ZWQg
YXQgYSBjZXJ0YWluIG9mZnNldCBmcm9tCj4gdGhlIGJhc2UgYW5kIHNvIGludHJvZHVjZSB0aGUg
dnN0YXR1c19vZmZzZXQgdG8gaGFuZGxlIGl0Lgo+IAo+IEJ1c3kgYml0IG9mIHRoZSB2c3RhdHVz
IGFuZCBuZXdfcmVnX3JlcSBiaXQgYXJlIGFsc28gZGlmZmVyZW50IGFuZCBzbwo+IGludHJvZHVj
ZSB0aGVzZSB2YXJpYWJsZXMgdG8gdGhlIGRyaXZlciBkYXRhIGFzIHdlbGwuCj4gCj4gQWRkIHRo
ZXNlIHZhcmlhYmxlcyB0byB0aGUgcHJlLWV4aXN0aW5nIHBoeSBjZmcgc3RydWN0cyBmb3IgUlRE
IFNvQ3MgYW5kCj4gYXNzaWduIHRoZW0gdGhlIGRlZmF1bHQgdmFsdWVzLgo+IAo+IENvLWRldmVs
b3BlZC1ieTogTWljaGFlbCBaYXZlcnRraW4gPG1pc2hhLnphdmVydGtpbkBtYWlsLnJ1Pgo+IFNp
Z25lZC1vZmYtYnk6IE1pY2hhZWwgWmF2ZXJ0a2luIDxtaXNoYS56YXZlcnRraW5AbWFpbC5ydT4K
PiBTaWduZWQtb2ZmLWJ5OiBSdXN0YW0gQWRpbG92IDxhZGlsb3ZAZGlzcm9vdC5vcmc+Cj4gLS0t
Cj4gIGRyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IyLmMgfCA2OCArKysrKysrKysrKysr
KysrKysrKysrKy0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKyksIDE1
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yZWFsdGVrL3BoeS1y
dGstdXNiMi5jIGIvZHJpdmVycy9waHkvcmVhbHRlay9waHktcnRrLXVzYjIuYwo+IGluZGV4IDI0
ODU1MGVmOThjYS4uYmQ5ZWU4OTViOWY5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JlYWx0
ZWsvcGh5LXJ0ay11c2IyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstdXNi
Mi5jCj4gQEAgLTY0LDYgKzY0LDkgQEAgc3RydWN0IHBoeV9yZWcgewo+ICAJdm9pZCBfX2lvbWVt
ICpyZWdfd3JhcF92c3RhdHVzOwo+ICAJdm9pZCBfX2lvbWVtICpyZWdfZ3VzYjJwaHlhY2MwOwo+
ICAJaW50IHZzdGF0dXNfaW5kZXg7Cj4gKwlpbnQgdnN0YXR1c19vZmZzZXQ7Cj4gKwl1MzIgdnN0
YXR1c19idXN5Owo+ICsJdTMyIG5ld19yZWdfcmVxOwo+ICB9Owo+ICAKPiAgc3RydWN0IHBoeV9k
YXRhIHsKPiBAQCAtOTYsNiArOTksOSBAQCBzdHJ1Y3QgcGh5X2NmZyB7Cj4gIAlib29sIGRvX3Rv
Z2dsZV9kcml2aW5nOwo+ICAJYm9vbCB1c2VfZGVmYXVsdF9wYXJhbWV0ZXI7Cj4gIAlib29sIGlz
X2RvdWJsZV9zZW5zaXRpdml0eV9tb2RlOwo+ICsJaW50IHZzdGF0dXNfb2Zmc2V0Owo+ICsJdTMy
IHZzdGF0dXNfYnVzeTsKPiArCXUzMiBuZXdfcmVnX3JlcTsKCkkgZG9uJ3QgbGlrZSB0aGUgZmFj
dCB0aGUgZmllbGRzIGFyZSBnZXR0aW5nIGR1cGxpY2F0ZWQgaW4gdHdvIHN0cnVjdHMuIEluIHRo
ZQpuZXh0IHBhdGNoIGFsc28sIHlvdSBhcmUgYWRkaW5nIHRoZSBkdXBsaWNhdGUgcmVhZC93cml0
ZSBjYWxsYmFja3MuIFNvIEknZApzdWdnZXN0IGNvbWluZyB1cCB3aXRoIGEgcGVyLVNvQyBjb25z
dCBzdHJ1Y3QgYW5kIHBhc3NpbmcgdGhhdCBwb2ludGVyIGluCidwaHlfY2ZnJyB0aHJvdWdoIGRy
dmRhdGEgYW5kIGNvcHlpbmcgaXQgdG8gJ3BoeV9yZWcnOgoKCXN0cnVjdCBwaHlfcmVnX2Rlc2Mg
ewoJCWludCB2c3RhdHVzX29mZnNldDsKCQkuLi4KCX07CgoJc3RhdGljIGNvbnN0IHN0cnVjdCBw
aHlfcmVnX2Rlc2MgcGh5X3JlZ19kZXNjX3J0ZDEyOTUgPSB7CgkJLnZzdGF0dXNfb2Zmc2V0ID0g
MCwKCQkuLi4KCX07CgoJLi4uCgoJc3RydWN0IHBoeV9yZWcgewoJCS4uLgoJCWNvbnN0IHN0cnVj
dCBwaHlfcmVnX2Rlc2MgKmRlc2M7Cgl9OwoKCXN0cnVjdCBwaHlfY2ZnIHsKCQkuLi4KCQljb25z
dCBzdHJ1Y3QgcGh5X3JlZ19kZXNjICpyZWdfZGVzYzsKCX07CgoJLi4uCgoJc3RhdGljIGNvbnN0
IHN0cnVjdCBwaHlfY2ZnIHJ0ZDEyOTVfcGh5X2NmZyA9IHsKCQkuLi4KCQkucmVnX2Rlc2MgPSAm
cGh5X3JlZ19kZXNjX3J0ZDEyOTUsCgl9OwoKCS4uLgoKCXBoeV9wYXJhbWV0ZXItPnBoeV9yZWcu
ZGVzYyA9IHBoeV9jZmctPnJlZ19kZXNjOwoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N
4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
