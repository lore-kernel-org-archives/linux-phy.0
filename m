Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33665C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 10:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wt/L2xRNiKqUTYEkfrLzMRxWL1W6IIBeD9gNDUWG3Uc=; b=SMEgCx+IqzSD5s
	qYcgai71WjGb1+2iI9ZCXTaJfscs/bzzyaIHKdj9APZDZJhBQN+tmkxdViCvNlGYmqEPq3fmeo6a9
	bFVFo5O8t/S40mFDD2miHY3RCUUeRgVVkwrR7dgqIZBRBkIX/2yo7SQjKHcSdqJG3RIj0cfQw5BBo
	bRwrGkap3PzKXsaTBWaOMgufyeI+6gMUO88xjfvwN7dl1WiUgJMAtJ3iNdxqIFSWnv1JYw/jog0Ct
	DomHwQa4nfhJJjOlT0EOHIFInM2HFqkGYjgy+BfmOPUDvLrCNgpQGbkZAv4bP60Or/0bVHhpDXrLq
	OJtGdaC6hjAIcP2uNXuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3DZ-0000000Em9y-3PbA;
	Tue, 07 Jul 2026 10:39:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3DY-0000000Em9s-16dF
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 10:39:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0A4334162A;
	Tue,  7 Jul 2026 10:39:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBCC51F000E9;
	Tue,  7 Jul 2026 10:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783420795;
	bh=wUTNeNFxWMA04RIwC4cyMBKX/iOZjk4isTQBYTYKjuc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MTd76LvcCTzeE3xL4Jit1XhyuX/huae6nx0RCNY/ge7EbdihsN53Uq3HT/3hOcPrh
	 v40wqlWzDZy5MDMuW6kzkMR432cu9Pw4IjokTlK8PC2Vvkdlxm0PI3XVfm+2x0cvOI
	 FYCaAi/RJePTjkeI8oSebtYdzrY1sgvfNfSxuMYFZJ6XCrKRYUu2HMfp3V91dWOyZP
	 YZ1Gc2nRyrFCf4G2n8V1BEgGSj/qpOYwPnwjVouC1CrtvLucrvLDRVIgznSWwiPmgF
	 aFgpsZnuVg3XyajdlYj+dSzR013tty9LZpc5hX1kKxJnfLqwgB3AlmWXvvQ98y9gFv
	 kxZoPDYwvcCjw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 04/12] spmi: Remove unneeded goto in
 spmi_device_add() error path
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260707101821.173319-5-angelogioacchino.delregno@collabora.com>
References: <20260707101821.173319-1-angelogioacchino.delregno@collabora.com>
 <20260707101821.173319-5-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 10:39:54 +0000
Message-Id: <20260707103954.CBCC51F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIERvdWJsZSBmcmVlIC8g
cmVmZXJlbmNlIGNvdW50IHVuZGVyZmxvdyBvZiBgZGV2aWNlX25vZGVgIGluIHRoZSBlcnJvciBw
YXRoIG9mIGBzcG1pX2RldmljZV9hZGQoKWAuCi0tCgotLS0gUGF0Y2ggWzRdOiBbUEFUQ0ggdjEx
IDA0LzEyXSBzcG1pOiBSZW1vdmUgdW5uZWVkZWQgZ290byBpbiBzcG1pX2RldmljZV9hZGQoKSBl
cnJvciBwYXRoIC0tLQpjb21taXQgNTQxYTQyNTE2ZjU3MDA1MjlhOGU4Yzg5YzdmOTc1MTc0YWJm
Y2U2NgpBdXRob3I6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5v
LmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+CgpzcG1pOiBSZW1vdmUgdW5uZWVkZWQgZ290byBpbiBz
cG1pX2RldmljZV9hZGQoKSBlcnJvciBwYXRoCgpUaGlzIGNvbW1pdCBjbGVhbnMgdXAgdGhlIGVy
cm9yIGhhbmRsaW5nIHBhdGggaW4gc3BtaV9kZXZpY2VfYWRkKCkgYnkgcmVtb3ZpbmcKYW4gdW5u
ZWNlc3NhcnkgZ290byBzdGF0ZW1lbnQuIEl0IGFsc28gdXBkYXRlcyB0aGUgZnVuY3Rpb24gdG8g
ZXhwbGljaXRseQpyZXR1cm4gMCBvbiBzdWNjZXNzIHRvIGltcHJvdmUgcmVhZGFiaWxpdHkuCgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NwbWkvc3BtaS5jIGIvZHJpdmVycy9zcG1pL3NwbWkuYwo+
IGluZGV4IDJjZjVmZDVlMWJhOTAuLjE0ZWM5ZGU1ODQ2N2EgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9zcG1pL3NwbWkuYwo+ICsrKyBiL2RyaXZlcnMvc3BtaS9zcG1pLmMKPiBAQCAtNzIsMTMgKzcy
LDExIEBAIGludCBzcG1pX2RldmljZV9hZGQoc3RydWN0IHNwbWlfZGV2aWNlICpzZGV2KQo+ICAJ
ZXJyID0gZGV2aWNlX2FkZCgmc2Rldi0+ZGV2KTsKPiAgCWlmIChlcnIgPCAwKSB7Cj4gIAkJZGV2
X2Vycigmc2Rldi0+ZGV2LCAiQ2FuJ3QgYWRkIGRldmljZSwgc3RhdHVzICVwZVxuIiwgRVJSX1BU
UihlcnIpKTsKPiAtCQlnb3RvIGVycl9kZXZpY2VfYWRkOwo+ICsJCXJldHVybiBlcnI7CgpbU2V2
ZXJpdHk6IEhpZ2hdCkRvZXMgcmV0dXJuaW5nIGFuIGVycm9yIGhlcmUgY2F1c2UgYSByZWZlcmVu
Y2UgY291bnQgdW5kZXJmbG93IG9mIHRoZQpkZXZpY2Vfbm9kZSBpbiB0aGUgY2FsbGVyPwoKV2hl
biB0aGlzIGZ1bmN0aW9uIGZhaWxzLCBpdCByZXR1cm5zIGJhY2sgdG8gb2Zfc3BtaV9yZWdpc3Rl
cl9kZXZpY2VzKCkKd2hpY2ggaGFuZGxlcyB0aGUgZXJyb3I6Cgpkcml2ZXJzL3NwbWkvc3BtaS5j
Om9mX3NwbWlfcmVnaXN0ZXJfZGV2aWNlcygpIHsKCS4uLgoJZm9yX2VhY2hfYXZhaWxhYmxlX2No
aWxkX29mX25vZGUoY3RybC0+ZGV2Lm9mX25vZGUsIG5vZGUpIHsKCQkuLi4KCQlkZXZpY2Vfc2V0
X25vZGUoJnNkZXYtPmRldiwgb2ZfZndub2RlX2hhbmRsZShvZl9ub2RlX2dldChub2RlKSkpOwoJ
CS4uLgoJCWVyciA9IHNwbWlfZGV2aWNlX2FkZChzZGV2KTsKCQlpZiAoZXJyKSB7CgkJCWRldl9l
cnIoJnNkZXYtPmRldiwgLi4uKTsKCQkJb2Zfbm9kZV9wdXQobm9kZSk7CgkJCXNwbWlfZGV2aWNl
X3B1dChzZGV2KTsKCQl9Cgl9Cn0KClRoZSBsb29wIGl0ZXJhdG9yIGZvcl9lYWNoX2F2YWlsYWJs
ZV9jaGlsZF9vZl9ub2RlKCkgaG9sZHMgb25lIHJlZmVyZW5jZSB0bwpub2RlLgoKSW5zaWRlIHRo
ZSBsb29wLCBvZl9ub2RlX2dldCgpIHRha2VzIGEgc2Vjb25kIHJlZmVyZW5jZSBiZWZvcmUKZGV2
aWNlX3NldF9ub2RlKCkgc3RvcmVzIGl0LgoKV2hlbiBzcG1pX2RldmljZV9hZGQoKSBmYWlscywg
dGhlIGVycm9yIHBhdGggZXhwbGljaXRseSBkcm9wcyBvbmUgcmVmZXJlbmNlCndpdGggb2Zfbm9k
ZV9wdXQobm9kZSkgYW5kIHRoZW4gY2FsbHMgc3BtaV9kZXZpY2VfcHV0KHNkZXYpLgoKc3BtaV9k
ZXZpY2VfcHV0KHNkZXYpIGV2ZW50dWFsbHkgY2FsbHMgc3BtaV9kZXZfcmVsZWFzZSgpLCB3aGlj
aCBjYWxscwpvZl9ub2RlX3B1dChkZXYtPm9mX25vZGUpLCBkcm9wcGluZyB0aGUgc2Vjb25kIHJl
ZmVyZW5jZS4KCldoZW4gdGhlIGl0ZXJhdG9yIGFkdmFuY2VzLCBpdCBhdXRvbWF0aWNhbGx5IGRy
b3BzIGEgdGhpcmQgcmVmZXJlbmNlLiBTaW5jZQpvbmx5IHR3byByZWZlcmVuY2VzIHdlcmUgdGFr
ZW4sIGRvZXMgdGhpcyBsZWFkIHRvIGEgdXNlLWFmdGVyLWZyZWUgb2YgdGhlCmRldmljZV9ub2Rl
IHN0cnVjdD8KCj4gIAl9Cj4gIAo+ICAJZGV2X2RiZygmc2Rldi0+ZGV2LCAiZGV2aWNlIHJlZ2lz
dGVyZWRcbiIpOwo+IC0KPiAtZXJyX2RldmljZV9hZGQ6Cj4gLQlyZXR1cm4gZXJyOwo+ICsJcmV0
dXJuIDA7Cj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwoc3BtaV9kZXZpY2VfYWRkKTsKCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3
MDcxMDE4MjEuMTczMzE5LTEtYW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29t
P3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
