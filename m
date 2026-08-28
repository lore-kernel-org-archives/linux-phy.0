Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F13CC61DB9
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 09:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xgfcz062Strp1FQdYtbAU4lHKTKriWTmNtD6CqeS5U8=; b=2jx9wz9t9q+1YL
	2oCQ9IndRXFrJjGQHjMlWEt3+W0QvUt+YG9jRpulPmJQEcq+i8eVGAkw1mlmDuDoUaK68JS4fcJFi
	qdIj10rcw96/RCT/3OBOb9FDNmq7FGV4XkeFSAHGJMhkllepfw4P2YAqphEk6PGdUTydugiKeBVT/
	h3Vc79+u6d3k1Z5wWuQdi5H1H6el/L/HJp3tJAHfRFtyzZxwU34ljvcfa4WuqruNsVSjUQ4EpJOrq
	5IHs9fZvV/wWv8pAAlDsvyjtq6ov6mAxbFGmKUK+CAxtqVN5kfrAfxIJyR7OSR+DKSKzimcz3OIJ2
	A7POEasPnGccQ/tHupuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsum-00000005Tlh-3uXp;
	Fri, 28 Aug 2026 09:30:24 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsum-00000005TlY-03xp
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 09:30:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AEF4540B4A;
	Fri, 28 Aug 2026 09:30:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44AE81F00A3A;
	Fri, 28 Aug 2026 09:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787909423;
	bh=ZQBSYhyQKFNF5YVnTy17JYPKmVsYvRWwjcxs8UxPMeM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=c51TWQ6AXwyMKufDhX0Y0m9RzUpeGj7Cod0WTbT4tX/HodooGiC3d2Ny7N/XUb1QX
	 5U1OIH4hjXefmSr305mbJ9jaezIZ8S4NekFNVNmPtwwgNuJAM2bYJnabNTs0nh4L6r
	 3Su/xBGKCTLPTQitEo8oT9LX12job5exz0DvBhTD+vX1kwE9AYKI0pbryDhjUNXtGX
	 /r4w7FAET3nklx26pps4/NzKJxl++BywF1P+vvgzxkU8B8YOMPDqIQD2KNaUK+/FR5
	 Sp6ySdMcTXU+xLpo2PWDwT3juVGq6GxS7ca8gAQNjcbFjQ0I/d5+Q7JB84SJ5yECbx
	 7IwjDNncLZfDg==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH] phy: qcom: ipq4019-usb: Propagate reset operation
 failures
To: "Pengpeng Hou" <pengpeng@iscas.ac.cn>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260828091857.8581-1-pengpeng@iscas.ac.cn>
References: <20260828091857.8581-1-pengpeng@iscas.ac.cn>
Date: Fri, 28 Aug 2026 09:30:22 +0000
Message-Id: <20260828093023.44AE81F00A3A@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIG5ld2x5IGlu
dHJvZHVjZWQgZXJyb3Igcm9sbGJhY2sgaW4gYGlwcTQwMTlfaHNfcGh5X3Bvd2VyX29mZigpYCBp
bmNvcnJlY3RseSBkZWFzc2VydHMgYHBvcl9yc3RgIHdoZW4gY2FsbGVkIGZyb20gYGlwcTQwMTlf
aHNfcGh5X3Bvd2VyX29uKClgLCBjb3JydXB0aW5nIHRoZSBQSFkgc3RhdGUuCi0tCgpjb21taXQg
Y2Y2Y2ZlYjBhNjBhNDMxZmM3MWFjOTNkZTY3MWEyZmNmOTRkMDVkYwpBdXRob3I6IFBlbmdwZW5n
IEhvdSA8cGVuZ3BlbmdAaXNjYXMuYWMuY24+CgpwaHk6IHFjb206IGlwcTQwMTktdXNiOiBQcm9w
YWdhdGUgcmVzZXQgb3BlcmF0aW9uIGZhaWx1cmVzCiAgICAKVGhpcyBjb21taXQgcHJvcGFnYXRl
cyByZXNldCBvcGVyYXRpb24gZmFpbHVyZXMgaW4gdGhlIElQUTQwMTkgVVNCIFBIWSBkcml2ZXIK
YW5kIGF0dGVtcHRzIGEgYmVzdC1lZmZvcnQgcm9sbGJhY2sgaWYgYW4gb3BlcmF0aW9uIGZhaWxz
LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20taXBxNDAxOS11
c2IuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWlwcTQwMTktdXNiLmMKPiBpbmRl
eCBkYTZmMjkwYWY3MjIxLi44YzE4MzRjZDZhOGU5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLWlwcTQwMTktdXNiLmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1pcHE0MDE5LXVzYi5jCgpbIC4uLiBdCgo+IEBAIC01NiwxMCArNjMsMjAg
QEAgc3RhdGljIGludCBpcHE0MDE5X2hzX3BoeV9wb3dlcl9vZmYoc3RydWN0IHBoeSAqX3BoeSkK
PiAgewo+ICAJc3RydWN0IGlwcTQwMTlfdXNiX3BoeSAqcGh5ID0gcGh5X2dldF9kcnZkYXRhKF9w
aHkpOwo+ICAKPiAtCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KHBoeS0+cG9yX3JzdCk7Cj4gKwlpbnQg
cmV0Owo+ICsKPiArCXJldCA9IHJlc2V0X2NvbnRyb2xfYXNzZXJ0KHBoeS0+cG9yX3JzdCk7Cj4g
KwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7Cj4gKwo+ICAJbXNsZWVwKDEwKTsKPiAgCj4gLQly
ZXNldF9jb250cm9sX2Fzc2VydChwaHktPnNyaWZfcnN0KTsKPiArCXJldCA9IHJlc2V0X2NvbnRy
b2xfYXNzZXJ0KHBoeS0+c3JpZl9yc3QpOwo+ICsJaWYgKHJldCkgewo+ICsJCXJlc2V0X2NvbnRy
b2xfZGVhc3NlcnQocGh5LT5wb3JfcnN0KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiAg
CW1zbGVlcCgxMCk7Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gQEAgLTY5LDE0ICs4NiwyMyBAQCBzdGF0
aWMgaW50IGlwcTQwMTlfaHNfcGh5X3Bvd2VyX29uKHN0cnVjdCBwaHkgKl9waHkpCj4gIHsKPiAg
CXN0cnVjdCBpcHE0MDE5X3VzYl9waHkgKnBoeSA9IHBoeV9nZXRfZHJ2ZGF0YShfcGh5KTsKPiAg
Cj4gLQlpcHE0MDE5X2hzX3BoeV9wb3dlcl9vZmYoX3BoeSk7Cj4gKwlpbnQgcmV0Owo+ICsKPiAr
CXJldCA9IGlwcTQwMTlfaHNfcGh5X3Bvd2VyX29mZihfcGh5KTsKPiArCWlmIChyZXQpCj4gKwkJ
cmV0dXJuIHJldDsKCltTZXZlcml0eTogTWVkaXVtXQpXaGVuIGlwcTQwMTlfaHNfcGh5X3Bvd2Vy
X29uKCkgY2FsbHMgaXBxNDAxOV9oc19waHlfcG93ZXJfb2ZmKCkgdG8gcHVsc2UgdGhlCnJlc2V0
IGxpbmVzLCBpdCBzdGFydHMgZnJvbSBhbiBhbHJlYWR5LW9mZiBzdGF0ZSAod2hlcmUgcG9yX3Jz
dCBpcyBhc3NlcnRlZCkuCgpJZiByZXNldF9jb250cm9sX2Fzc2VydChwaHktPnNyaWZfcnN0KSBm
YWlscyBpbnNpZGUgaXBxNDAxOV9oc19waHlfcG93ZXJfb2ZmKCksCnRoZSByb2xsYmFjayB3aWxs
IHVuY29uZGl0aW9uYWxseSBjYWxsIHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocGh5LT5wb3JfcnN0
KS4KCkRvZXMgdGhpcyBpbmNvcnJlY3RseSBhc3N1bWUgdGhlIGluaXRpYWwgc3RhdGUgd2FzIG9u
LCBsZWF2aW5nIHRoZSBoYXJkd2FyZSBpbgphbiBpbmNvbnNpc3RlbnQgc3RhdGUgKHBvcl9yc3Qg
ZGVhc3NlcnRlZCwgc3JpZl9yc3QgYXNzZXJ0ZWQpIGluc3RlYWQgb2Ygc2FmZWx5CnJlbWFpbmlu
ZyBpbiBhIGNsZWFuIG9mZiBzdGF0ZT8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MjgwOTE4NTcuODU4MS0xLXBlbmdwZW5nQGlz
Y2FzLmFjLmNuP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
