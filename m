Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB8E7C61DE2
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 03:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXjDXngz+Fk1fu8ag0D083bT+R91ZmuWvoDlmRuJyHY=; b=d0i/n+u2MLevvp
	EZIxK6NKnko0BthSISng7/O6A2kkIBX3T+FkGlu6jXWZrmZdtSxNCWEQOUS60+LAPobZoIOXX/hgC
	0tEz2DYAzcZJ7f2GS02pT6HfqJy04y7wANJHaZ8rz5uUC4zB8erzOv/nY+gOs7JXNI61N2hWXrlA+
	rlnPmbAHGs/mxrLQdljsOlZvTwWpAfkq8EOtLPJxXjJBgUL6eCcOaseVJdpZzWIR4UooNdxqx5lhC
	DtcIKr6yEbouX2USaqjOrGHHLuO7GJjo2YYh0vVGJmBoCI+wFIHe3jSZuAPzIN7hNj/61IDAGCj+g
	0co2snbRJtDYHBS2QA1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0sIg-00000008NtZ-1q6V;
	Mon, 31 Aug 2026 03:03:10 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0sIf-00000008NtH-0at9
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 03:03:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2555140849;
	Mon, 31 Aug 2026 03:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C640F1F000E9;
	Mon, 31 Aug 2026 03:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788145388;
	bh=NfxUb+PkWLdYFWId3EvMChqyY9uJI5iUwqL01b4kszo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AHYKRbe0kKZ9nCwIiC1dRg0U8hUdZlTj004L92Q3ws+3nbopzuaR865sFv142Y644
	 ftCIWeEW7vyk3e0EjZb3efgA3vb/BLbeIgRfVnYkZp0hrGWD9CJTyK9k67HkEUh4wW
	 /ex403JTfawwVWnobNVuBU9Di21PEPJ/0AzDfkSDcFdTTimUxq1nHDhm8ICtT8wJaN
	 MjyJML71S9WRXSkgL2ZAHFUIPm9N9sMMcyGrUnRfq7n3mIg72MYTa0LbzeUU+lVOIV
	 3COtuCOii4wnYvn61Aq/8tRQIV7qOxt0Rlw/z2N1TSX5Emz6QE8pIEYLozyCYXwZ36
	 RGuSMTRfU+vYA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] phy: core: Add common helper for get phy phandle by
 index
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260831025506.95548-2-inochiama@gmail.com>
References: <20260831025319.94886-1-inochiama@gmail.com>
 <20260831025506.95548-1-inochiama@gmail.com>
 <20260831025506.95548-2-inochiama@gmail.com>
Date: Mon, 31 Aug 2026 03:03:07 +0000
Message-Id: <20260831030307.C640F1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBQcmUtZXhpc3RpbmcgcmFjZSBjb25kaXRpb24gd2hlcmUgdGhlIFBIWSBtb2R1bGUg
YW5kIGRldmljZSByZWZlcmVuY2VzIGFyZSB0ZW1wb3JhcmlseSBkcm9wcGVkIGJlZm9yZSBiZWlu
ZyByZS1hY3F1aXJlZCwgcmlza2luZyBhIHVzZS1hZnRlci1mcmVlLgotLQoKY29tbWl0IDIxZWM0
MGQ2Y2IzZTU1OTE2NDgzNzI2N2NkZTE1ODIzODBhNmJmZDIKQXV0aG9yOiBJbm9jaGkgQW1hb3Rv
IDxpbm9jaGlhbWFAZ21haWwuY29tPgoKcGh5OiBjb3JlOiBBZGQgY29tbW9uIGhlbHBlciBmb3Ig
Z2V0IHBoeSBwaGFuZGxlIGJ5IGluZGV4CgpUaGlzIGNvbW1pdCByZWZhY3RvcnMgcGh5IGxvb2t1
cCBieSBleHRyYWN0aW5nIHRoZSBpbmRleC1iYXNlZCByZXRyaWV2YWwKbG9naWMgZnJvbSBvZl9w
aHlfZ2V0KCkgYW5kIGRldm1fb2ZfcGh5X2dldF9ieV9pbmRleCgpIGludG8gYSBuZXcgY29tbW9u
CmhlbHBlciBmdW5jdGlvbiwgb2ZfcGh5X2dldF9ieV9pbmRleCgpLgoKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvcGh5LWNvcmUuYyBiL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMKPiBpbmRleCA0
NTFmOGYwNjQ0YzEzLi4yMjU5ZjBkZmYwODIyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3Bo
eS1jb3JlLmMKPiArKysgYi9kcml2ZXJzL3BoeS9waHktY29yZS5jClsgLi4uIF0KPiAtc3RydWN0
IHBoeSAqb2ZfcGh5X2dldChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLCBjb25zdCBjaGFyICpjb25f
aWQpCj4gK3N0YXRpYyBzdHJ1Y3QgcGh5ICpvZl9waHlfZ2V0X2J5X2luZGV4KHN0cnVjdCBkZXZp
Y2Vfbm9kZSAqbnAsIGludCBpbmRleCkKPiAgewo+IC0Jc3RydWN0IHBoeSAqcGh5ID0gTlVMTDsK
PiAtCWludCBpbmRleCA9IDA7Cj4gLQo+IC0JaWYgKGNvbl9pZCkKPiAtCQlpbmRleCA9IG9mX3By
b3BlcnR5X21hdGNoX3N0cmluZyhucCwgInBoeS1uYW1lcyIsIGNvbl9pZCk7Cj4gKwlzdHJ1Y3Qg
cGh5ICpwaHk7Cj4gIAo+ICAJcGh5ID0gX29mX3BoeV9nZXQobnAsIGluZGV4KTsKPiAgCWlmIChJ
U19FUlIocGh5KSkKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2Vk
IGJ5IHRoaXMgcGF0Y2gsIGJ1dCBpcyB0aGVyZSBhIHJhY2UgY29uZGl0aW9uCmhlcmUgdGhhdCBj
b3VsZCBsZWFkIHRvIGEgdXNlLWFmdGVyLWZyZWU/CgpMb29raW5nIGF0IHRoZSBmdWxsIGJvZHkg
b2Ygb2ZfcGh5X2dldF9ieV9pbmRleCgpOgoKICAgIHBoeSA9IF9vZl9waHlfZ2V0KG5wLCBpbmRl
eCk7CiAgICBpZiAoSVNfRVJSKHBoeSkpCiAgICAgICAgICAgIHJldHVybiBwaHk7CgogICAgaWYg
KCF0cnlfbW9kdWxlX2dldChwaHktPm9wcy0+b3duZXIpKQogICAgICAgICAgICByZXR1cm4gRVJS
X1BUUigtRVBST0JFX0RFRkVSKTsKCkluc2lkZSBfb2ZfcGh5X2dldCgpLCBhIG1vZHVsZSByZWZl
cmVuY2UgaXMgdGVtcG9yYXJpbHkgYWNxdWlyZWQgdG8gY2FsbCB0aGUKb2ZfeGxhdGUoKSBjYWxs
YmFjaywgYnV0IGl0IGlzIGV4cGxpY2l0bHkgZHJvcHBlZCB2aWEKbW9kdWxlX3B1dChwaHlfcHJv
dmlkZXItPm93bmVyKSBiZWZvcmUgcmV0dXJuaW5nIHRoZSBwaHkgcG9pbnRlci4KCkFkZGl0aW9u
YWxseSwgY29tbW9uIG9mX3hsYXRlKCkgaW1wbGVtZW50YXRpb25zIGxpa2Ugb2ZfcGh5X3NpbXBs
ZV94bGF0ZSgpCnRlbXBvcmFyaWx5IGFjcXVpcmUgYSBkZXZpY2UgcmVmZXJlbmNlIGJ1dCBkcm9w
IGl0IHZpYSBwdXRfZGV2aWNlKCkgYmVmb3JlCnJldHVybmluZy4KCkNvdWxkIGEgY29uY3VycmVu
dCBzeXNmcyB1bmJpbmQgb3IgbW9kdWxlIHVubG9hZCBvZiB0aGUgUEhZIGRyaXZlciBmcmVlIHRo
ZQpwaHkgc3RydWN0dXJlIGR1cmluZyB0aGUgd2luZG93IGJldHdlZW4gX29mX3BoeV9nZXQoKSBy
ZXR1cm5pbmcgYW5kCm9mX3BoeV9nZXRfYnlfaW5kZXgoKSBldmFsdWF0aW5nIHBoeS0+b3BzLT5v
d25lcj8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0
Y2hzZXQvMjAyNjA4MzEwMjU1MDYuOTU1NDgtMS1pbm9jaGlhbWFAZ21haWwuY29tP3BhcnQ9MgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
