Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA9C1C44529
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 10:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBkqhgzEdcmhrHaWO00uKdQAay2lTjjk3036gbZ3ymk=; b=i9iEiZ5AAOpK4d
	bx895vsGGZYj62241C8YemGzP6t43ot/Tk3Uki96VwYjIG7IRBxZaADfAJZKZZ569aGdLzHJW4Auc
	CQt4GANX0Jbb9iPP+HHRmMh70VtSbkI5i8kvDMKbUaZQATwNCs7FlH0xXjb832/Qb5TeIhUaV+JJb
	mfKRe9GstB+wMjwoyT4RM7KudaPW87cU4viCYShBgEYJQjspNXY195b2t5NCjWW8AkOuwWvYdYzGo
	h2NRrWHrxhipRXBV9ndFKl1V9lehSGCfjpfyVQWpyB4DAuQ6riTADTfUZ0Jc6iBBWWUiPaAW3/DdI
	5sISop9yUxFOwHovFpCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm7a9-000000096M1-2Cyc;
	Tue, 21 Jul 2026 10:20:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm7a8-000000096Lk-3cwA
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 10:20:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5049160AA1;
	Tue, 21 Jul 2026 10:20:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B86611F000E9;
	Tue, 21 Jul 2026 10:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784629212;
	bh=Otliz+B8cHB57CDPekNh/2yA/Er3EYfYXJmsvXUdib8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=N9tp3Hrd/2vUCXQNfh73kv9QAfMpiQkAPdmRFcv8K1VALknQ9GAJjvdQOM73EINUj
	 Cp/w1HK/DU8fY83k5V2Hbb6LELTRye6SSQWD2NLRX7fncL1KwXpCWXSjjATE7VF71L
	 xDkVJqEu5fFKV3bvVWlH8B7I74c96ZPd3Pdq/ID1HG26+djzZNAI8b+TkYP5Vx5Q8F
	 9yXBn4nyJKI7Zx16d0KuR4EzRBCjdKVTXWPDjWzMT4aApIVNbdDJXIH7w5cGbZRmQd
	 rsAAiVlGsg05RBetkSkrJVRolKj896cR9QIZDK013yXKqg4It69ZhpuG2x1I0yaLO9
	 YVesnKAja2cVg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: fsl-lynx-10g: propagate PCVT enable errors
To: kr494167@gmail.com
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260720101906.80584-1-kr494167@gmail.com>
References: <20260720101906.80584-1-kr494167@gmail.com>
Date: Tue, 21 Jul 2026 10:20:11 +0000
Message-Id: <20260721102011.B86611F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFByb3BhZ2F0aW5nIHRo
ZSBQQ1ZUIGVuYWJsZSBlcnJvciB3aXRob3V0IHVwZGF0aW5nIG9yIGludmFsaWRhdGluZyBgbGFu
ZS0+bW9kZWAgZGVzeW5jaHJvbml6ZXMgdGhlIGhhcmR3YXJlIGFuZCBzb2Z0d2FyZSBzdGF0ZXMs
IGJyZWFraW5nIHN1YnNlcXVlbnQgcmVjb3ZlcnkgYXR0ZW1wdHMgYnkgdGhlIGNhbGxlci4KLS0K
Ci0tLSBQYXRjaCBbMV06IFtQQVRDSF0gcGh5OiBmc2wtbHlueC0xMGc6IHByb3BhZ2F0ZSBQQ1ZU
IGVuYWJsZSBlcnJvcnMgLS0tCmNvbW1pdCAzYjBmMzc2MmVkNzYyNGQ4MDBhOWM5Y2MwNjVmMWRi
NTA3ODUzNmI1CkF1dGhvcjogc3VyZW5kcmEgPGtyNDk0MTY3QGdtYWlsLmNvbT4KCnBoeTogZnNs
LWx5bngtMTBnOiBwcm9wYWdhdGUgUENWVCBlbmFibGUgZXJyb3JzCgpUaGlzIHBhdGNoIHVwZGF0
ZXMgbHlueF8xMGdfc2V0X21vZGUoKSB0byBwcm9wYWdhdGUgZXJyb3JzIGZyb20KbHlueF8xMGdf
bGFuZV9lbmFibGVfcGN2dCgpLiBJdCBhYm9ydHMgdGhlIG1vZGUgY2hhbmdlIGlmIHRoZSBwcm90
b2NvbApjb252ZXJ0ZXIgZmFpbHMgdG8gZW5hYmxlLCByZXR1cm5pbmcgdGhlIGVycm9yIHRvIHRo
ZSBjYWxsZXIgd2l0aG91dAp1cGRhdGluZyB0aGUgdHJhY2tlZCBsYW5lIG1vZGUuCgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1seW54LTEwZy5jIGIvZHJpdmVy
cy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtbHlueC0xMGcuYwo+IGluZGV4IDM4ZGVmMTYwZWYxYWEu
Ljk3NDBiMDg3MDBjNDggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1m
c2wtbHlueC0xMGcuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWx5bngt
MTBnLmMKPiBAQCAtMTIzMSw3ICsxMjMxLDkgQEAgc3RhdGljIGludCBseW54XzEwZ19zZXRfbW9k
ZShzdHJ1Y3QgcGh5ICpwaHksIGVudW0gcGh5X21vZGUgbW9kZSwgaW50IHN1Ym1vZGUpCj4gIAo+
ICAJbHlueF8xMGdfbGFuZV9jaGFuZ2VfcHJvdG9fY29uZihsYW5lLCBsYW5lX21vZGUpOwo+ICAJ
bHlueF8xMGdfbGFuZV9yZW1hcF9wbGwobGFuZSwgbGFuZV9tb2RlKTsKPiAtCVdBUk5fT04obHlu
eF8xMGdfbGFuZV9lbmFibGVfcGN2dChsYW5lLCBsYW5lX21vZGUpKTsKPiArCWVyciA9IGx5bnhf
MTBnX2xhbmVfZW5hYmxlX3BjdnQobGFuZSwgbGFuZV9tb2RlKTsKPiArCWlmIChlcnIpCj4gKwkJ
Z290byBvdXQ7CgpbU2V2ZXJpdHk6IEhpZ2hdCklmIGx5bnhfMTBnX2xhbmVfZW5hYmxlX3BjdnQo
KSBmYWlscyBoZXJlLCB3ZSBqdW1wIHRvIG91dCBhbmQgc2tpcCB1cGRhdGluZwpsYW5lLT5tb2Rl
LiBIb3dldmVyLCBseW54XzEwZ19sYW5lX2NoYW5nZV9wcm90b19jb25mKCkgYW5kCmx5bnhfMTBn
X2xhbmVfcmVtYXBfcGxsKCkgaGF2ZSBhbHJlYWR5IG1vZGlmaWVkIHRoZSBoYXJkd2FyZSByZWdp
c3RlcnMgZm9yCnRoZSBuZXcgbW9kZS4KCklmIHRoZSBjYWxsZXIgaGFuZGxlcyB0aGlzIGVycm9y
IGJ5IGF0dGVtcHRpbmcgdG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgbW9kZSwKbHlueF8xMGdfc2V0
X21vZGUoKSB3aWxsIGV2YWx1YXRlIHRoaXMgY2hlY2sgZWFybGllciBpbiB0aGUgZnVuY3Rpb246
CgogICAgICAgIGlmIChsYW5lX21vZGUgPT0gbGFuZS0+bW9kZSkKICAgICAgICAgICAgICAgIHJl
dHVybiAwOwoKQmVjYXVzZSBsYW5lLT5tb2RlIHN0aWxsIGhvbGRzIHRoZSBvbGQgbW9kZSwgdGhp
cyB3aWxsIHJldHVybiAwIGltbWVkaWF0ZWx5CndpdGhvdXQgcmV2ZXJ0aW5nIHRoZSBoYXJkd2Fy
ZSBjaGFuZ2VzLiBXaWxsIHRoaXMgbGVhdmUgdGhlIGhhcmR3YXJlIGFuZApzb2Z0d2FyZSBzdGF0
ZXMgZGVzeW5jaHJvbml6ZWQgYW5kIHByZXZlbnQgdGhlIGNhbGxlciBmcm9tIHN1Y2Nlc3NmdWxs
eQpyZWNvdmVyaW5nPwoKPiAgCj4gIAlsYW5lLT5tb2RlID0gbGFuZV9tb2RlOwo+CgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzIw
MTAxOTA2LjgwNTg0LTEta3I0OTQxNjdAZ21haWwuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
