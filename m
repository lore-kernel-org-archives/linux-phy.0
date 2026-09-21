Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03E42C982E1
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 11:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3V7jFcojNHqxqQoTl5dAWQjfRg3FYfFGRkqZF1yfLQ=; b=cpGVnIwkR4bFHP
	2J7DcQ8o1lI562bwe8qltH8ai54ppQ0KrQvIFkQ9eJgsYDjbk6k2r3fqiEZI+pQfFKNGh+RafWzRg
	TXhcN740U8ZWPQWudaYrXgdDX4x6MvkQsfDBBdBlyZqYVE5YS1bLZugpt9pPikm/6wzucuqQvwndj
	E5We/K3qby28iSNKJvZolJJKSEGnUm7DsBMO/c/JXNtHd1San+0hrDKAz4um+IEt/fPBozybvaPNq
	URLHU1dP6ArmeKP4/NqwAbflEX75u4iLcy69lcX1mVfn46f/pmSnl65mAxEQ7S8ZCpc0KBwDe73FI
	SJrAKYjuclMLPcwY1Zkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8c90-00000001uFP-32Tf;
	Mon, 21 Sep 2026 11:25:10 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8c8z-00000001uF7-0ztr
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 11:25:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AB25D600C8;
	Mon, 21 Sep 2026 11:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBE301F000FF;
	Mon, 21 Sep 2026 11:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789989908;
	bh=pwGbfa4XDRdA5s26mD9xo5152xD2yWXB/AA5gq/QG8o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZNxdAN3FpAxG9ZY3pOpeuJ8MIv4X7T4KQE2YWeJyrW64p7rQez77c8xzlc/viFTNc
	 i/1/MHvHA2bkByhKCZwk/m/ki2gjTOYqDf+fAaWciphn4LE48dB5KYKXti/HONO2VL
	 77sv9VB3rDXyYsAb9SaXMYIaDykA3PW9atjiydY5QJWZIFdbDvgicrKa39HYRxuOgG
	 drJwB/qk0/lQNHe4ACiphrBHAWgCOrQttY83SSKNWK5/8rQugn3q3lO4/zhlLO5jk0
	 L4daeD/BKD1+6dBRkx5HGG168EdNs3C3FZRqR6FCXNWsJYAEtyaFBAd0ySeEe5Sq4P
	 WB8uHgWD0pEWg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/6] PCI: qcom-ep: Set initial interconnect bandwidth
 before enabling clocks
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: conor+dt@kernel.org, linux-pci@vger.kernel.org, robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260921-monaco_ep-v1-4-63c5282fb0db@oss.qualcomm.com>
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
 <20260921-monaco_ep-v1-4-63c5282fb0db@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 11:25:07 +0000
Message-Id: <20260921112507.DBE301F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBjaTogYXN5bW1ldHJp
YyByZXNvdXJjZSB0ZWFyZG93biBpbiBxY29tX3BjaWVfZGlzYWJsZV9yZXNvdXJjZXMoKQotLQoK
Y29tbWl0IGU4ZDFlZDhiMDk3N2ViMzE4YTAzYjc3ZTIwZDY2MzZiYjMwZjAyZDQKQXV0aG9yOiBL
cmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21tLmNv
bT4KClBDSTogcWNvbS1lcDogU2V0IGluaXRpYWwgaW50ZXJjb25uZWN0IGJhbmR3aWR0aCBiZWZv
cmUgZW5hYmxpbmcgY2xvY2tzCgpTb21lIFF1YWxjb21tIHBsYXRmb3JtcyByZXF1aXJlIHRoZSBp
bnRlcmNvbm5lY3QgYmFuZHdpZHRoIGNvbnN0cmFpbnRzCnRvIGJlIHNldCBiZWZvcmUgZW5hYmxp
bmcgdGhlIGludGVyY29ubmVjdCBjbG9ja3MsIG90aGVyd2lzZSBzb21lCmNsb2NrcyBnZXQgc3R1
Y2sgaW4gdGhlIG9mZiBzdGF0ZS4gTW92ZSB0aGUgaWNjX3NldF9idygpIGNhbGwgYmVmb3JlCmNs
a19idWxrX3ByZXBhcmVfZW5hYmxlKCkgc28gdGhlIGJhbmR3aWR0aCB2b3RlIGlzIGluIHBsYWNl
IGZpcnN0LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1x
Y29tLWVwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20tZXAuYwo+IGlu
ZGV4IDU2MTg0ZTZjYTZlNjkuLjBiMjNkNzE4MTUzOWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLWVwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLXFjb20tZXAuYwo+IEBAIC0zMzEsOSArMzMxLDIzIEBAIHN0YXRpYyBp
bnQgcWNvbV9wY2llX2VuYWJsZV9yZXNvdXJjZXMoc3RydWN0IHFjb21fcGNpZV9lcCAqcGNpZV9l
cCkKPiAgCXN0cnVjdCBkd19wY2llICpwY2kgPSAmcGNpZV9lcC0+cGNpOwo+ICAJaW50IHJldDsK
PiAgCj4gKwkvKgo+ICsJICogU29tZSBRdWFsY29tbSBwbGF0Zm9ybXMgcmVxdWlyZSBpbnRlcmNv
bm5lY3QgYmFuZHdpZHRoIGNvbnN0cmFpbnRzCj4gKwkgKiB0byBiZSBzZXQgYmVmb3JlIGVuYWJs
aW5nIGludGVyY29ubmVjdCBjbG9ja3MuCj4gKwkgKgo+ICsJICogU2V0IGFuIGluaXRpYWwgcGVh
ayBiYW5kd2lkdGggY29ycmVzcG9uZGluZyB0byBzaW5nbGUtbGFuZSBHZW4gMQo+ICsJICogZm9y
IHRoZSBwY2llLW1lbSBwYXRoLgo+ICsJICovCj4gKwlyZXQgPSBpY2Nfc2V0X2J3KHBjaWVfZXAt
PmljY19tZW0sIDAsIFFDT01fUENJRV9MSU5LX1NQRUVEX1RPX0JXKDEpKTsKPiArCWlmIChyZXQp
IHsKPiArCQlkZXZfZXJyKHBjaS0+ZGV2LCAiZmFpbGVkIHRvIHNldCBpbnRlcmNvbm5lY3QgYmFu
ZHdpZHRoOiAlZFxuIiwKPiArCQkJcmV0KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiAg
CXJldCA9IGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKHBjaWVfZXAtPm51bV9jbGtzLCBwY2llX2Vw
LT5jbGtzKTsKPiAgCWlmIChyZXQpCj4gLQkJcmV0dXJuIHJldDsKPiArCQlnb3RvIGVycl9kaXNh
YmxlX2ljYzsKClsgLi4uIF0KCj4gQEAgLTM1MSwyOCArMzY1LDE0IEBAIHN0YXRpYyBpbnQgcWNv
bV9wY2llX2VuYWJsZV9yZXNvdXJjZXMoc3RydWN0IHFjb21fcGNpZV9lcCAqcGNpZV9lcCkKPiAg
CWlmIChyZXQpCj4gIAkJZ290byBlcnJfcGh5X2V4aXQ7Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gIAo+
IC1lcnJfcGh5X29mZjoKPiAtCXBoeV9wb3dlcl9vZmYocGNpZV9lcC0+cGh5KTsKPiAgZXJyX3Bo
eV9leGl0Ogo+ICAJcGh5X2V4aXQocGNpZV9lcC0+cGh5KTsKPiAgZXJyX2Rpc2FibGVfY2xrOgo+
ICAJY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUocGNpZV9lcC0+bnVtX2Nsa3MsIHBjaWVfZXAt
PmNsa3MpOwo+ICtlcnJfZGlzYWJsZV9pY2M6Cj4gKwlpY2Nfc2V0X2J3KHBjaWVfZXAtPmljY19t
ZW0sIDAsIDApOwo+ICAKPiAgCXJldHVybiByZXQ7Cj4gIH0KCltTZXZlcml0eTogSGlnaF0KRG9l
cyBxY29tX3BjaWVfZGlzYWJsZV9yZXNvdXJjZXMoKSBhbHNvIG5lZWQgdG8gYmUgdXBkYXRlZCB0
byBtYXRjaCB0aGlzIG5ldwpMSUZPIHRlYXJkb3duIG9yZGVyaW5nPwoKU2luY2UgdGhpcyBwYXRj
aCBtb3ZlcyB0aGUgaW50ZXJjb25uZWN0IGJhbmR3aWR0aCBlbmFibGVtZW50IHRvIGJlIHRoZSBm
aXJzdApzdGVwIGluIHFjb21fcGNpZV9lbmFibGVfcmVzb3VyY2VzKCksIExJRk8gb3JkZXJpbmcg
cmVxdWlyZXMgaXQgdG8gYmUgdGhlIGxhc3QKc3RlcCBkaXNhYmxlZC4gVGhlIGVycm9yIHBhdGgg
aGVyZSBoYW5kbGVzIGl0IGNvcnJlY3RseSwgYnV0CnFjb21fcGNpZV9kaXNhYmxlX3Jlc291cmNl
cygpIHN0aWxsIGRyb3BzIHRoZSBpbnRlcmNvbm5lY3QgYmFuZHdpZHRoIGNvbnN0cmFpbnQKYmVm
b3JlIGRpc2FibGluZyB0aGUgUEhZIGFuZCBjbG9ja3M6Cgpkcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLXFjb20tZXAuYzpxY29tX3BjaWVfZGlzYWJsZV9yZXNvdXJjZXMoKSB7CgkuLi4K
CWljY19zZXRfYncocGNpZV9lcC0+aWNjX21lbSwgMCwgMCk7CglwaHlfcG93ZXJfb2ZmKHBjaWVf
ZXAtPnBoeSk7CglwaHlfZXhpdChwY2llX2VwLT5waHkpOwoJY2xrX2J1bGtfZGlzYWJsZV91bnBy
ZXBhcmUocGNpZV9lcC0+bnVtX2Nsa3MsIHBjaWVfZXAtPmNsa3MpOwp9CgpXaGVuIHRoZSBob3N0
IGFzc2VydHMgUEVSU1QsIHFjb21fcGNpZV9kaXNhYmxlX3Jlc291cmNlcygpIGlzIGNhbGxlZC4g
Q291bGQKdGhpcyBvcmRlciBvZiB0ZWFyZG93biBsZWFkIHRvIGJ1cyBoYW5ncywgTk9DIGVycm9y
cywgb3IgY2xvY2tzIGdldHRpbmcgc3R1Y2sKaW4gYW4gaW52YWxpZCBzdGF0ZSBpZiB0aGUgaW50
ZXJjb25uZWN0IHBvd2VycyBkb3duIHdoaWxlIGRlcGVuZGVudCBjbG9ja3MgYXJlCnN0aWxsIGFj
dGl2ZT8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0
Y2hzZXQvMjAyNjA5MjEtbW9uYWNvX2VwLXYxLTAtNjNjNTI4MmZiMGRiQG9zcy5xdWFsY29tbS5j
b20/cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
