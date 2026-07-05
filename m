Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71582C43458
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 10:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/HbsgaH0mHjFE+IdcrUcNfYwSOLkI4Ll2N5tZ7s5ZA=; b=w8Uy8rJu/+KbN4
	s84deTGtxhI53Cqh+7Pa5UOlyFXy5dz6Wu5ydG6rKGawihWGgCz0dK1IX3T+av6P365dsLagiFVUJ
	Igqw/L+qAg2UN4ea27jOEf+0oJ7GiveUlvSF63mlgqW0HmCJMn1ogU/julWEw1tETa4SQ/pBl/pgO
	03gjXtbS0quuaQArbUq3fqicQpzBoGGff56HGCXnUwP5HT140MCJfoaoCypEH4y+aH9okynl/bLN0
	bRVX3pDMsK62Wh9/VX7FFEZ2gAAzGxRdvx6XDcskmbaKin2mv3E7ya+2Z+EBNN9lp5Fy/Xn0ylXPD
	XH9sJznHK2Q8s+oRXCPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgK2g-00000009Efe-0cuK;
	Sun, 05 Jul 2026 10:25:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgK2f-00000009EfV-0fZ6
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 10:25:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B88EF4139C;
	Sun,  5 Jul 2026 10:25:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 389D51F000E9;
	Sun,  5 Jul 2026 10:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783247138;
	bh=OhJSu0Gwa5npuT3cmnAROjbyn4QYnc4/K/e7zDhudU0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ijinZH8w5R0uirLNgjs2DnmN2MpvMIYqUZ/V8kyCsJNwUdC1vke5CO3I1pTV5T+UB
	 4SKTpWV1pUjiZkjMmGU16oiRGduWbD4sz08jDYFoW9EvzBmWP/A41MXo32bpcwpVUO
	 zBt14I2LnGY+88t2+WQj8Q0V7//9g8IBwRJimk0oHP2xnL6B2lbkwZHjXiRWhTg5sd
	 nf/RWZGApFIcXzcyw6hgcw+fVpmWGYaFyp4ORrqLrUhkeZkjLNRG3x0vhlI3ruAb3o
	 rsCknx1VPQdmz2OGGT4BV5NKlW+8fUXHB8aLV3Da4lMqwIXOQmMQwfU50IUmWIgn55
	 Ipa6kjOmIZuJQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 4/4] phy: cpcap-usb: add extcon support
To: "Ivaylo Dimitrov" <ivo.g.dimitrov.75@gmail.com>
Cc: linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, robh@kernel.org
In-Reply-To: <20260705101105.1798069-5-ivo.g.dimitrov.75@gmail.com>
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
 <20260705101105.1798069-5-ivo.g.dimitrov.75@gmail.com>
Date: Sun, 05 Jul 2026 10:25:37 +0000
Message-Id: <20260705102538.389D51F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtNZWRpdW1d
IE1pc3NpbmcgcmVzZXQgb2YgZXh0Y29uIHN0YXRlIG9uIGRyaXZlciByZW1vdmFsLCBsZWFkaW5n
IHRvIHN0YWxlIGNvbm5lY3Rpb24gc3RhdGVzIGZvciBjb25zdW1lcnMuCgpQcmUtZXhpc3Rpbmcg
aXNzdWVzOgotIFtIaWdoXSBQcmUtZXhpc3RpbmcgVUFGIHJhY2UgY29uZGl0aW9uIGR1cmluZyBk
ZXZpY2UgcmVtb3ZhbCBiZXR3ZWVuIHRoZSBJUlEgdGhyZWFkIGFuZCByZW1vdmUoKSBsZWFkaW5n
IHRvIGRlbGF5ZWQgd29yayBleGVjdXRpbmcgYWZ0ZXIgZGV2aWNlIGRhdGEgaXMgZnJlZWQuCi0t
Cgpjb21taXQgYTZiYWE0MTY4NDQ1MGQ0ODE5NDRmYjYwNzdlOGRiOTVlNGY4MGUyZQpBdXRob3I6
IEl2YXlsbyBEaW1pdHJvdiA8aXZvLmcuZGltaXRyb3YuNzVAZ21haWwuY29tPgoKcGh5OiBjcGNh
cC11c2I6IGFkZCBleHRjb24gc3VwcG9ydAoKUmVnaXN0ZXIgYW4gRXh0Y29uIGRldmljZSBhbmQg
cmVwb3J0IHRoZSBkZXRlY3RlZCBjYWJsZSBzdGF0ZS4gVGhlIGRyaXZlcgphbHJlYWR5IGRldGVy
bWluZXMgdGhlIHR5cGUgb2YgY2FibGUgYXR0YWNoZWQgZHVyaW5nIFVTQiBjYWJsZSBkZXRlY3Rp
b24uCkV4cG9ydCB0aGUgZGV0ZWN0ZWQgc3RhdGUgdGhyb3VnaCB0aGUgRXh0Y29uIGZyYW1ld29y
ayBzbyBvdGhlciBkcml2ZXJzIGNhbgpjb25zdW1lIGl0IHVzaW5nIGEgc3RhbmRhcmQga2VybmVs
IGludGVyZmFjZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L21vdG9yb2xhL3BoeS1jcGNh
cC11c2IuYyBiL2RyaXZlcnMvcGh5L21vdG9yb2xhL3BoeS1jcGNhcC11c2IuYwo+IGluZGV4IDc4
YmIxNzczZTUzNzkuLmJhMzZkMTEwZGY0MTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvbW90
b3JvbGEvcGh5LWNwY2FwLXVzYi5jCj4gKysrIGIvZHJpdmVycy9waHkvbW90b3JvbGEvcGh5LWNw
Y2FwLXVzYi5jCgpbIC4uLiBdCgo+IEBAIC03NzcsNyArODM1LDE4IEBAIHN0YXRpYyBpbnQgY3Bj
YXBfdXNiX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJaWYgKCFv
dGcpCj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4gIAo+ICsJZGRhdGEtPmVkZXYgPSBkZXZtX2V4dGNv
bl9kZXZfYWxsb2NhdGUoJnBkZXYtPmRldiwgY3BjYXBfZXh0Y29uX2NhYmxlcyk7Cj4gKwlpZiAo
SVNfRVJSKGRkYXRhLT5lZGV2KSkgewo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKCZwZGV2LT5k
ZXYsIFBUUl9FUlIoZGRhdGEtPmVkZXYpLAo+ICsJCQkJICAgICAiZmFpbGVkIHRvIGFsbG9jYXRl
IGV4dGNvbiBkZXZpY2VcbiIpOwo+ICsJfQo+ICsKPiArCWVycm9yID0gZGV2bV9leHRjb25fZGV2
X3JlZ2lzdGVyKCZwZGV2LT5kZXYsIGRkYXRhLT5lZGV2KTsKPiArCWlmIChlcnJvciA8IDApCj4g
KwkJcmV0dXJuIGVycm9yOwo+ICsKCltTZXZlcml0eTogTWVkaXVtXQpXaGVuIHRoZSBtb2R1bGUg
aXMgcmVtb3ZlZCBvciB1bmJvdW5kLCBkZXZyZXMgd2lsbCBhdXRvbWF0aWNhbGx5IHVucmVnaXN0
ZXIKdGhlIGV4dGNvbiBkZXZpY2UuIEhvd2V2ZXIsIHNpbmNlIHRoZXJlIGFyZSBubyBjb3JyZXNw
b25kaW5nIHVwZGF0ZXMgdG8KY3BjYXBfdXNiX3BoeV9yZW1vdmUoKSBpbiBwaHktY3BjYXAtdXNi
LmMsIHRoZSBleHRjb24gY2FibGUgc3RhdGVzIGFyZSBub3QKZXhwbGljaXRseSByZXNldCB0byBF
WFRDT05fTk9ORSBiZWZvcmUgdGhlIGRldmljZSBnb2VzIGF3YXkuCgpXaWxsIGNvbnN1bWVycyBv
ZiB0aGlzIGV4dGNvbiBkZXZpY2UgKGUuZy4gY2hhcmdlciBkcml2ZXJzKSByZXRhaW4gc3RhbGUK
Y29ubmVjdGlvbiBzdGF0ZXMgYmVjYXVzZSBvZiBtaXNzZWQgZGlzY29ubmVjdCBub3RpZmljYXRp
b25zIGR1cmluZyByZW1vdmFsPwoKPiAgCWRkYXRhLT5tb2RlID0gQ1BDQVBfVU5LTk9XTjsKPiAr
CWRkYXRhLT5jYWJsZSA9IEVYVENPTl9OT05FOwo+ICAJZGRhdGEtPmRldiA9ICZwZGV2LT5kZXY7
Cj4gIAlkZGF0YS0+cGh5LmRldiA9IGRkYXRhLT5kZXY7Cj4gIAlkZGF0YS0+cGh5LmxhYmVsID0g
ImNwY2FwX3VzYl9waHkiOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVnIGludHJv
ZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IGlzIHRoZXJlIGEgcHJlLWV4aXN0aW5nCnVzZS1hZnRl
ci1mcmVlIHJhY2UgY29uZGl0aW9uIGR1cmluZyBkZXZpY2UgcmVtb3ZhbCBiZXR3ZWVuCmNwY2Fw
X3BoeV9pcnFfdGhyZWFkKCkgYW5kIGNwY2FwX3VzYl9waHlfcmVtb3ZlKCkgaW4gcGh5LWNwY2Fw
LXVzYi5jPwoKTG9va2luZyBhdCBjcGNhcF91c2JfcGh5X3JlbW92ZSgpLCBpdCBjYW5jZWxzIHRo
ZSB3b3JrOgoKY3BjYXBfdXNiX3BoeV9yZW1vdmUoKSB7CiAgICAuLi4KICAgIGF0b21pY19zZXQo
JmRkYXRhLT5hY3RpdmUsIDApOwogICAgY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZkZGF0YS0+
ZGV0ZWN0X3dvcmspOwogICAgLi4uCn0KCkhvd2V2ZXIsIGlmIGNwY2FwX3BoeV9pcnFfdGhyZWFk
KCkgaXMgcHJlZW1wdGVkIHJpZ2h0IGFmdGVyIGNoZWNraW5nIHRoZQphY3RpdmUgZmxhZzoKCmNw
Y2FwX3BoeV9pcnFfdGhyZWFkKCkgewogICAgLi4uCiAgICBpZiAoIWF0b21pY19yZWFkKCZkZGF0
YS0+YWN0aXZlKSkKICAgICAgICByZXR1cm4gSVJRX05PTkU7CgogICAgLyogcHJlZW1wdGVkIGhl
cmUgKi8KICAgIHNjaGVkdWxlX2RlbGF5ZWRfd29yaygmZGRhdGEtPmRldGVjdF93b3JrLCBtc2Vj
c190b19qaWZmaWVzKDEpKTsKICAgIC4uLgp9CgpDb3VsZCB0aGlzIHNlcXVlbmNlIG9jY3VyIGR1
cmluZyB1bmJpbmQvcmVtb3ZhbDoKCjEuIElSUSB0aHJlYWQgcmVhZHMgYWN0aXZlID09IDEsIGdl
dHMgcHJlZW1wdGVkLgoyLiBjcGNhcF91c2JfcGh5X3JlbW92ZSgpIHNldHMgYWN0aXZlID0gMCwg
Y2FsbHMgY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCkKICAgKHdoaWNoIGRvZXMgbm90aGluZyBz
aW5jZSB0aGUgd29yayBpc24ndCBxdWV1ZWQgeWV0KS4KMy4gRGV2cmVzIGZyZWVzIHRoZSBJUlEs
IHdhaXRpbmcgZm9yIHRoZSBJUlEgdGhyZWFkIHRvIGZpbmlzaC4KNC4gSVJRIHRocmVhZCByZXN1
bWVzIGFuZCBxdWV1ZXMgdGhlIGRlbGF5ZWQgd29yay4KNS4gRGV2cmVzIGZyZWVzIHRoZSBkZGF0
YSBzdHJ1Y3R1cmUuCjYuIFRoZSBkZWxheWVkIHdvcmsgdGltZXIgZXhwaXJlcyBhbmQgYWNjZXNz
ZXMgdGhlIGZyZWVkIG1lbW9yeT8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nh
c2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDUxMDExMDUuMTc5ODA2OS0xLWl2by5nLmRpbWl0
cm92Ljc1QGdtYWlsLmNvbT9wYXJ0PTQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
