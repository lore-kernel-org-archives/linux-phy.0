Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1C96E77194
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jan 2025 12:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJ6SHqBE4C9d4ks0PA2wa4Kar5eSz0mW4Ey60Ynkv68=; b=xBd5F4G51FdeqY
	cjrmX9m9Zj6PzO9b+Wb44m8ni/bR+3GW8vXFMZrRhfhYw6R7xLYGuoDzMQ56zhqIe1u4LrYxCHMgS
	U0x3TAuDlFBoKWkb4uEEfHUGX3DIgvivJDuqPVXMItCUsDw9jnbrgyaPCHkvmY8NJVPVIKVit/u9J
	7H+aHH+axdgUXiJUotEEtUG7Z3Ln0zL6RU+AunEBCOeJsWhP3esLuquTxKY9P1nSLZG3r516cJoYy
	wH9qBxhe8gI0brXcLch0hNM45yyaezSYK9r5kn5NncnWA8Ep8qZ4xakFcj1IRtPDv6w1f4oY/4HKQ
	1P34m3O0Naz6JorddCHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTKjT-0000000APnL-0JLq;
	Thu, 02 Jan 2025 12:55:23 +0000
Received: from aposti.net ([89.234.176.197])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTKiz-0000000APir-2O98
	for linux-phy@lists.infradead.org;
	Thu, 02 Jan 2025 12:54:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1735822489;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=OtN+/tCVZejvZH4tYxrxMjY3zXUbUecyTqppStMTjJo=;
	b=ObA9p5hABgmpVGGae0VpUnRf+tjbs6ULdKJQQ1j8zMH4CMihPAGtiB5Fv/LV5gVPFsPpCz
	PsSduBFyPrNdgPMVlb2a0pNesQLArh0EvhszYX4o+9Wk3tzvOeGPBfIFr9iLZKU+tsLwmR
	kjpRtSHhOVjjatc9kyNJgCjpRVoXY48=
Message-ID: <ab308c135c3ea5e050bbfb0b94a832c8d52d5380.camel@crapouillou.net>
Subject: Re: [PATCH RESEND] phy: ingenic: fix unbalanced regulator_disable()
 warning
From: Paul Cercueil <paul@crapouillou.net>
To: "H. Nikolaus Schaller" <hns@goldelico.com>, Vinod Koul
 <vkoul@kernel.org>,  Kishon Vijay Abraham I	 <kishon@kernel.org>, Zhou
 Yanjie <zhouyanjie@wanyeetech.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	letux-kernel@openphoenux.org, kernel@pyra-handheld.com, 
	linux-mips@vger.kernel.org
Date: Thu, 02 Jan 2025 13:53:47 +0100
In-Reply-To: <96da5fe557f3b2501447358895bd78decc4633ef.1735482146.git.hns@goldelico.com>
References: <96da5fe557f3b2501447358895bd78decc4633ef.1735482146.git.hns@goldelico.com>
Autocrypt: addr=paul@crapouillou.net; prefer-encrypt=mutual;
 keydata=mQENBF0KhcEBCADkfmrzdTOp/gFOMQX0QwKE2WgeCJiHPWkpEuPH81/HB2dpjPZNW03ZM
 LQfECbbaEkdbN4YnPfXgcc1uBe5mwOAPV1MBlaZcEt4M67iYQwSNrP7maPS3IaQJ18ES8JJ5Uf5Uz
 FZaUawgH+oipYGW+v31cX6L3k+dGsPRM0Pyo0sQt52fsopNPZ9iag0iY7dGNuKenaEqkYNjwEgTtN
 z8dt6s3hMpHIKZFL3OhAGi88wF/21isv0zkF4J0wlf9gYUTEEY3Eulx80PTVqGIcHZzfavlWIdzhe
 +rxHTDGVwseR2Y1WjgFGQ2F+vXetAB8NEeygXee+i9nY5qt9c07m8mzjABEBAAG0JFBhdWwgQ2VyY
 3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PokBTgQTAQoAOBYhBNdHYd8OeCBwpMuVxnPua9InSr
 1BBQJdCoXBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHPua9InSr1BgvIH/0kLyrI3V0f
 33a6D3BJwc1grbygPVYGuC5l5eMnAI+rDmLR19E2yvibRpgUc87NmPEQPpbbtAZt8On/2WZoE5OIP
 dlId/AHNpdgAtGXo0ZX4LGeVPjxjdkbrKVHxbcdcnY+zzaFglpbVSvp76pxqgVg8PgxkAAeeJV+ET
 4t0823Gz2HzCL/6JZhvKAEtHVulOWoBh368SYdolp1TSfORWmHzvQiCCCA+j0cMkYVGzIQzEQhX7U
 rf9N/nhU5/SGLFEi9DcBfXoGzhyQyLXflhJtKm3XGB1K/pPulbKaPcKAl6rIDWPuFpHkSbmZ9r4KF
 lBwgAhlGy6nqP7O3u7q23hRU=
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250102_045453_753473_B34BEC7F 
X-CRM114-Status: GOOD (  13.21  )
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

SGkgTmlrb2xhdXMsCgpMZSBkaW1hbmNoZSAyOSBkw6ljZW1icmUgMjAyNCDDoCAxNToyMiArMDEw
MCwgSC4gTmlrb2xhdXMgU2NoYWxsZXIgYQrDqWNyaXTCoDoKPiBpZiBpbmdlbmljX3VzYl9waHlf
ZXhpdCBpcyBjYWxsZWQgdGhlIHJlZ3VsYXRvciBpcyBhbHJlYWR5IGRpc2FibGVkCj4gdGhyb3Vn
aCBpbmdlbmljX3VzYl9waHlfcG93ZXJfb2ZmKCkgbGVhZGluZyB0bwo+IAo+IFvCoMKgwqAgNS4z
NjczMDFdIFdBUk5JTkc6IENQVTogMCBQSUQ6IDIwIGF0Cj4gZHJpdmVycy9yZWd1bGF0b3IvY29y
ZS5jOjI5NTMgX3JlZ3VsYXRvcl9kaXNhYmxlKzB4MjAwLzB4MjMwCj4gW8KgwqDCoCA1LjM2ODIw
OV0gdW5iYWxhbmNlZCBkaXNhYmxlcyBmb3IgcmVndWxhdG9yLWR1bW15Cj4gW8KgwqDCoCA1LjM3
MDM2NF0gTW9kdWxlcyBsaW5rZWQgaW46IHBoeV9pbmdlbmljX3VzYgo+IC4uLgo+IFvCoMKgwqAg
NS4zNzM0NDFdIFs8ODA1NDYwMWM+XSByZWd1bGF0b3JfZGlzYWJsZSsweDQwLzB4ODAKPiBbwqDC
oMKgIDUuMzcyOTUyXSBbPGMwMjQ1MGY4Pl0gaW5nZW5pY191c2JfcGh5X2V4aXQrMHg0OC8weDYw
Cj4gW3BoeV9pbmdlbmljX3VzYl0KPiBbwqDCoMKgIDUuMzc0MjgzXSBbPDgwNTA4MzljPl0gcGh5
X2V4aXQrMHhkOC8weDEwNAo+IFvCoMKgwqAgNS4zNzMxMDRdIFs8ODA2NTdhMjQ+XSBfX2R3YzJf
bG93bGV2ZWxfaHdfZGlzYWJsZSsweGUwLzB4ZTgKPiBbwqDCoMKgIDUuMzczMzkzXSBbPDgwNjU4
YWQ0Pl0gZHdjMl9kcml2ZXJfcHJvYmUrMHg4MTgvMHg4MzQKPiAuLi4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBILiBOaWtvbGF1cyBTY2hhbGxlciA8aG5zQGdvbGRlbGljby5jb20+CgpMb29rcyBnb29k
IHRvIG1lLiBUaGUgcmVndWxhdG9yIGlzIG5vdCBlbmFibGVkIGluCmluZ2VuaWNfdXNiX3BoeV9p
bml0KCksIHNvIGl0IHNob3VsZCBub3QgYmUgZGlzYWJsZWQgaW4KaW5nZW5pY191c2JfcGh5X2V4
aXQoKS4KClJldmlld2VkLWJ5OiBQYXVsIENlcmN1ZWlsIDxwYXVsQGNyYXBvdWlsbG91Lm5ldD4K
CkNoZWVycywKLVBhdWwKCgo+IC0tLQo+IAo+IE5vdGVzOgo+IMKgwqDCoCBSZXNlbnQgYmVjYXVz
ZSBsaW51eC1taXBzQHZnZXIua2VybmVsLm9yZ8Kgd2FzIG5vdCBhdXRvbWF0aWNhbGx5Cj4gYWRk
ZWQgYnkKPiDCoMKgwqAgZ2V0X21haW50YWluZXIucGwgKGRyaXZlcnMvcGh5L2luZ2VuaWMgbWlz
c2luZyBpbiBNQUlOVEFJTkVSUwo+IHJlY29yZD8pCj4gCj4gwqBkcml2ZXJzL3BoeS9pbmdlbmlj
L3BoeS1pbmdlbmljLXVzYi5jIHwgMSAtCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9pbmdlbmljL3BoeS1pbmdlbmljLXVzYi5j
Cj4gYi9kcml2ZXJzL3BoeS9pbmdlbmljL3BoeS1pbmdlbmljLXVzYi5jCj4gaW5kZXggZWIyNzIx
ZjcyYTRjMS4uMzU5ODRkZDhhMWJkNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9pbmdlbmlj
L3BoeS1pbmdlbmljLXVzYi5jCj4gKysrIGIvZHJpdmVycy9waHkvaW5nZW5pYy9waHktaW5nZW5p
Yy11c2IuYwo+IEBAIC0xMjQsNyArMTI0LDYgQEAgc3RhdGljIGludCBpbmdlbmljX3VzYl9waHlf
ZXhpdChzdHJ1Y3QgcGh5ICpwaHkpCj4gwqAJc3RydWN0IGluZ2VuaWNfdXNiX3BoeSAqcHJpdiA9
IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+IMKgCj4gwqAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHBy
aXYtPmNsayk7Cj4gLQlyZWd1bGF0b3JfZGlzYWJsZShwcml2LT52Y2Nfc3VwcGx5KTsKPiDCoAo+
IMKgCXJldHVybiAwOwo+IMKgfQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
