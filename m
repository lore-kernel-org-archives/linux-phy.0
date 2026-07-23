Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55792C4453A
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 02:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DaPmFqJ7srPorxI9tDnQZVtN0hj5dLZBmKoZ1eKQDLo=; b=TSJY7UWGyMqTFp
	Oe4DMDeHhjO7nr6y3gYq2hEY6Q2MpK5Z+KHBUuGVKAQBV4/PWyU/tvAQRIM/MF1J8aM0ErMEkVX5H
	xMIxBq+1KLBtPyMSPAIR8HJJ70BVsqJv0F7ZpLfMo1wA6aJJOqsne5SpW2qN8zJHlZ/uF84RCccWy
	2nY+EDDEwVeM/5sdGGH04L9Ld7wONsuP9jySKMASO1M8Nno1pp2cBbUPlPN2ighGJD6odHrOePN+z
	chx4rkc6nAzqohLI0kSvuM2hcEy8XXC0C11n+mUfpDtUs6pfPehaBxHcREvEPRlA5m4YwM1dS1LRd
	dx2EGgDiY0NHJYd3+MRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmjPq-0000000DFmM-3hLH;
	Thu, 23 Jul 2026 02:44:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmjPp-0000000DFm3-0VzU
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 02:44:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 97F5941AB2;
	Thu, 23 Jul 2026 02:44:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA4DD1F00A3A;
	Thu, 23 Jul 2026 02:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784774642;
	bh=cZ0RpoRsNCBnMwb6W/Jn4NaTuUluXiHIqDeqXMQxRVY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DFiMZ44agY+2bgobgW0iGHvNLrDnj0SZhvDN862jDnckBbpJdCZESR7YDWQNie+43
	 bcxcIoml0Sc5j43e47qzB2O4qGgrIe+ZK9rZRfDS0fOpWFkqdR5m/gElgXSrmG+9bf
	 u/fn5KFIuiHhI+xuiI8tq5HYMf4f/X3/TKtDUJM5nfW5bfEBJwK14Ba0auV/NgDSQV
	 qUD87D+jqM7FP62wXZh3pnT+Sdoz2ZrgOk5qxGwedjOPUb8EYp8qOxmm8i+PUDbbxi
	 N4Yq5lRntnxwzo0+EPz5aUIDtwLsYZOOgSJOsalRNwGcrUi7ax7ZrhDWG2GbRQqK/u
	 kDUrZqsSY24VQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 2/6] phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY
 driver
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260722-glymur_linkmode_0722-v6-2-bba8156b8cbb@oss.qualcomm.com>
References: <20260722-glymur_linkmode_0722-v6-0-bba8156b8cbb@oss.qualcomm.com>
 <20260722-glymur_linkmode_0722-v6-2-bba8156b8cbb@oss.qualcomm.com>
Date: Thu, 23 Jul 2026 02:44:00 +0000
Message-Id: <20260723024401.EA4DD1F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgTlVMTCBj
aGVjayBmb3IgcG93ZXIgZG9tYWluIGRldmljZXMgY2F1c2VzIGEga2VybmVsIHBhbmljIGlmIGEg
cG93ZXIgZG9tYWluIGlzIG1pc3NpbmcgaW4gdGhlIGRldmljZSB0cmVlLgotLQoKLS0tIFBhdGNo
IFsyXTogW1BBVENIIHY2IDIvNl0gcGh5OiBxY29tOiBxbXAtcGNpZTogQWRkIFFNUCBQQ0llIE11
bHRpLVBIWSBkcml2ZXIgLS0tCmNvbW1pdCA3ZmUxYzkwY2I5NzQ4N2ZmZjkwYTJjZWY4ZDk3YWJk
N2JiNzk4MjAyCkF1dGhvcjogUWlhbmcgWXUgPHFpYW5nLnl1QG9zcy5xdWFsY29tbS5jb20+Cgpw
aHk6IHFjb206IHFtcC1wY2llOiBBZGQgUU1QIFBDSWUgTXVsdGktUEhZIGRyaXZlcgoKVGhpcyBj
b21taXQgYWRkcyBhIGRlZGljYXRlZCBkcml2ZXIgZm9yIFFNUCBQQ0llIFBIWSBoYXJkd2FyZSBi
bG9ja3MgdGhhdApzdXBwb3J0IG11bHRpcGxlIGxpbmsgdG9wb2xvZ2llcy4gSXQgdXNlcyBhIHBl
ci1tb2RlIGNvbmZpZyB0YWJsZSB0bwppbnN0YW50aWF0ZSBvbmUgcW1wX3BjaWUgcGVyIHN1Yi1Q
SFkgcmVxdWlyZWQgYnkgdGhlIGxpbmsgbW9kZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLW11bHRpcGh5LmMgYi9kcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1xbXAtcGNpZS1tdWx0aXBoeS5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1w
LXBjaWUtbXVsdGlwaHkuYwoKWyAuLi4gXQoKPiArc3RhdGljIGludCBxbXBfcGNpZV9wZF9wb3dl
cl9vbihzdHJ1Y3QgcW1wX3BjaWUgKnFtcCkKPiArewo+ICsJY29uc3Qgc3RydWN0IHFtcF9waHlf
Y2ZnICpjZmcgPSBxbXAtPmNmZzsKPiArCWludCBpLCByZXQ7Cj4gKwo+ICsJZm9yIChpID0gMDsg
aSA8IGNmZy0+bnVtX3BkczsgaSsrKSB7Cj4gKwkJcmV0ID0gcG1fcnVudGltZV9yZXN1bWVfYW5k
X2dldChxbXAtPnBkX2RldnNbaV0pOwoKW1NldmVyaXR5OiBIaWdoXQpJZiBkZXZfcG1fZG9tYWlu
X2F0dGFjaF9ieV9uYW1lKCkgcmV0dXJucyBOVUxMIGR1cmluZyBpbml0aWFsaXphdGlvbiwgY291
bGQKcGFzc2luZyB0aGF0IE5VTEwgdG8gcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldCgpIGhlcmUg
Y2F1c2UgYSBrZXJuZWwgcGFuaWM/Cgo+ICsJCWlmIChyZXQgPCAwKSB7Cj4gKwkJCWRldl9lcnIo
cW1wLT5kZXYsICJmYWlsZWQgdG8gcG93ZXIgb24gJXMgZG9tYWluXG4iLAo+ICsJCQkJY2ZnLT5w
ZF9uYW1lc1tpXSk7Cj4gKwkJCWdvdG8gZXJyX3Bvd2VyX29mZjsKPiArCQl9Cj4gKwl9Cj4gKwo+
ICsJcmV0dXJuIDA7Cj4gKwo+ICtlcnJfcG93ZXJfb2ZmOgo+ICsJd2hpbGUgKC0taSA+PSAwKQo+
ICsJCXBtX3J1bnRpbWVfcHV0KHFtcC0+cGRfZGV2c1tpXSk7Cj4gKwo+ICsJcmV0dXJuIHJldDsK
PiArfQo+ICsKPiArc3RhdGljIHZvaWQgcW1wX3BjaWVfcGRfcG93ZXJfb2ZmKHN0cnVjdCBxbXBf
cGNpZSAqcW1wKQo+ICt7Cj4gKwljb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgKmNmZyA9IHFtcC0+
Y2ZnOwo+ICsJaW50IGk7Cj4gKwo+ICsJZm9yIChpID0gY2ZnLT5udW1fcGRzIC0gMTsgaSA+PSAw
OyBpLS0pCj4gKwkJcG1fcnVudGltZV9wdXQocW1wLT5wZF9kZXZzW2ldKTsKCltTZXZlcml0eTog
SGlnaF0KU2ltaWxhcmx5LCBjb3VsZCB0aGlzIHBtX3J1bnRpbWVfcHV0KCkgcGFuaWMgaWYgcW1w
LT5wZF9kZXZzW2ldIGlzIE5VTEw/CgpbIC4uLiBdCgo+ICtzdGF0aWMgaW50IHFtcF9wY2llX3Bk
X2luaXQoc3RydWN0IHFtcF9wY2llICpxbXApCj4gK3sKPiArCWNvbnN0IHN0cnVjdCBxbXBfcGh5
X2NmZyAqY2ZnID0gcW1wLT5jZmc7Cj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBxbXAtPmRldjsK
PiArCWludCBpLCByZXQ7Cj4gKwo+ICsJaWYgKCFjZmctPm51bV9wZHMpCj4gKwkJcmV0dXJuIDA7
Cj4gKwo+ICsJcW1wLT5wZF9kZXZzID0gZGV2bV9rY2FsbG9jKGRldiwgY2ZnLT5udW1fcGRzLCBz
aXplb2YoKnFtcC0+cGRfZGV2cyksCj4gKwkJCQkgICAgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIXFt
cC0+cGRfZGV2cykKPiArCQlyZXR1cm4gLUVOT01FTTsKPiArCj4gKwlmb3IgKGkgPSAwOyBpIDwg
Y2ZnLT5udW1fcGRzOyBpKyspIHsKPiArCQlxbXAtPnBkX2RldnNbaV0gPSBkZXZfcG1fZG9tYWlu
X2F0dGFjaF9ieV9uYW1lKGRldiwKPiArCQkJCQkJCSAgICAgICBjZmctPnBkX25hbWVzW2ldKTsK
PiArCQlpZiAoSVNfRVJSKHFtcC0+cGRfZGV2c1tpXSkpIHsKCltTZXZlcml0eTogSGlnaF0KZGV2
X3BtX2RvbWFpbl9hdHRhY2hfYnlfbmFtZSgpIHJldHVybnMgTlVMTCBpZiB0aGUgcG93ZXIgZG9t
YWluIGlzIG1pc3NpbmcKaW4gdGhlIGRldmljZSB0cmVlLiBCZWNhdXNlIHRoaXMgb25seSBjaGVj
a3MgSVNfRVJSKCksIGEgTlVMTCBwb2ludGVyIHdpbGwKYmUgc3RvcmVkIGluIHFtcC0+cGRfZGV2
c1tpXSBpbiB0aGF0IHNjZW5hcmlvLgoKU2hvdWxkIHRoaXMgY2hlY2sgYmUgSVNfRVJSX09SX05V
TEwoKSwgb3Igc2hvdWxkIHRoZSBwb3dlciBvbi9vZmYgZnVuY3Rpb25zCmNoZWNrIGZvciBOVUxM
IGJlZm9yZSBjYWxsaW5nIHRoZSBydW50aW1lIFBNIEFQSXM/CgpJIG5vdGljZWQgdGhhdCBxbXBf
cGNpZV9wZF9kZXRhY2goKSBjb3JyZWN0bHkgdXNlcyAhSVNfRVJSX09SX05VTEwoKSB3aGVuCmNs
ZWFuaW5nIHVwLCBzbyBpdCBzZWVtcyBsaWtlIE5VTEwgbWlnaHQgYmUgYW4gZXhwZWN0ZWQgdmFs
dWUgdG8gaGFuZGxlLgoKPiArCQkJcmV0ID0gUFRSX0VSUihxbXAtPnBkX2RldnNbaV0pOwo+ICsJ
CQlnb3RvIGVycl9kZXRhY2g7Cj4gKwkJfQo+ICsJfQo+ICsKPiArCXJldHVybiBkZXZtX2FkZF9h
Y3Rpb25fb3JfcmVzZXQoZGV2LCBxbXBfcGNpZV9wZF9kZXRhY2gsIHFtcCk7CgotLSAKU2FzaGlr
byBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzIyLWds
eW11cl9saW5rbW9kZV8wNzIyLXY2LTAtYmJhODE1NmI4Y2JiQG9zcy5xdWFsY29tbS5jb20/cGFy
dD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
