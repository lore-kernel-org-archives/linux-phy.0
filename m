Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A93D7C88E45
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2uDjsvbIrJv+IrAWOJnamFD4MRvnFEJPu5NOcGSg4q0=; b=gW9B01xcUplrOH
	3sp6/HPvtnh5mtAHTaKwjpaTDjwTJ0m6F2kycbeKzEpl8+MEaaUuJyxUlD094eymtBcsrMSSChtyi
	Ruf1SYUX8w1ToFH7XijPQJX3mwumaNUacwyyOfrRQZCDJHH4kDjrYDTiFPLC+7fhCLVk+h3GtSebR
	TSo5TF2TlLQw8fVgMCaBSh8RPuhvNCOit9Z8QkyupZdCsTilmQ2Fm+KAxlnRo46K+A7dfSo31VuiR
	uwY00i9n7BhwSfgE0kUDJZq9DwFHNAXMgX23TM7UWXIODSTImXJL03do3AxvevKjhecJTjaZHuwx3
	sUIT6WzBIHlasxj+GBrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Xf-0000000H8ig-110v;
	Fri, 11 Sep 2026 15:51:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Xc-0000000H8gj-1uXA
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:51:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 976BA6025A;
	Fri, 11 Sep 2026 15:51:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C601B1F000FF;
	Fri, 11 Sep 2026 15:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789141911;
	bh=VeGUnHpGqSAj1AdqhrIriCmyS5Qd41d9tKbZ0b+uwHA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=B05OV+iFf5Mr2e/dIc3C4fv6s+Azn3lL0PvwWqQBvcXe0zN8Y+WWoX3w9X9nNlJm1
	 2THfJ16e1eN+tHqqIFZc9WIW73huPRm4OJcj6LkmUeYYvfkgWddEi8U5CWQxhIaOvs
	 bWwk4bTRNNrJrXWwdw+Mb9wo2vlVhnM2Y+/S2Di4rQw7cziFCGnS6OBefZylq3uJ3I
	 tMHG6LwZx8lAgrXVyDsN9vbVZk1itpE1TL66vsmu4BF4ecYM7mdkv/Jdi6dF481mS+
	 iazEI3bGxwOruw2GrF8m5xapbvSbkVIO2+fYr9djq+emSkhSWi0VUHyX7cFnYzWw1t
	 ELAmeIEg53nUg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 03/17] dt-bindings: display/msm: Document Nord MDSS
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org, olteanv@gmail.com, robh@kernel.org
In-Reply-To: <20260911-nord-drv-dt-v1-3-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-3-e25c073cf1b6@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 15:51:50 +0000
Message-Id: <20260911155150.C601B1F000FF@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlICdxY29tLG5v
cmQtZHAnIGNvbXBhdGlibGUgc3RyaW5nIGlzIG9taXR0ZWQgZnJvbSBnZW5lcmF0aW9uYWwgJ2lm
LXRoZW4nIGNvbnN0cmFpbnQgYmxvY2tzLgotIFtNZWRpdW1dIFRoZSBjb21wYXRpYmxlIHN0cmlu
ZyAncWNvbSxub3JkLWRwdScgaXMgcmVmZXJlbmNlZCBmb3IgdGhlIGNoaWxkIGRpc3BsYXkgY29u
dHJvbGxlciwgYnV0IHRoZSBjb3JyZXNwb25kaW5nIERQVSBiaW5kaW5nIHVwZGF0ZSBpcyBlbnRp
cmVseSBtaXNzaW5nIGZyb20gdGhlIHBhdGNoIHNlcmllcy4KLS0KCmNvbW1pdCA2NGRkNmMzOTNj
Nzg5ZDM0ZTVmZTg0Y2VmNDFkMzZhY2EzMmI4ZGYwCkF1dGhvcjogTWFoYWRldmFuIFAgPG1haGFk
ZXZhbi5wQG9zcy5xdWFsY29tbS5jb20+CgpkdC1iaW5kaW5nczogZGlzcGxheS9tc206IERvY3Vt
ZW50IE5vcmQgTURTUwoKQWRkIHRoZSBiaW5kaW5nIGZvciB0aGUgZGlzcGxheSBzdWJzeXN0ZW0g
KE1EU1MpIGZvdW5kIG9uIHRoZSBRdWFsY29tbQpOb3JkIFNvQy4gTm9yZCBpcyBNRFNTIDEyLjEs
IERQLW9ubHkgKG5vIERTSSksIHdpdGggdHdvIGluZGVwZW5kZW50IERQCmNvbnRyb2xsZXJzLgoK
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkv
bXNtL3Fjb20sbm9yZC1tZHNzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZGlzcGxheS9tc20vcWNvbSxub3JkLW1kc3MueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uMGIwY2FjZGNhOWRiZAo+IC0tLSAvZGV2L251bGwKPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tc20vcWNvbSxu
b3JkLW1kc3MueWFtbAo+IEBAIC0wLDAgKzEsOTggQEAKWyAuLi4gXQo+ICtwYXR0ZXJuUHJvcGVy
dGllczoKPiArICAiXmRpc3BsYXktY29udHJvbGxlckBbMC05YS1mXSskIjoKPiArICAgIHR5cGU6
IG9iamVjdAo+ICsgICAgYWRkaXRpb25hbFByb3BlcnRpZXM6IHRydWUKPiArICAgIHByb3BlcnRp
ZXM6Cj4gKyAgICAgIGNvbXBhdGlibGU6Cj4gKyAgICAgICAgY29uc3Q6IHFjb20sbm9yZC1kcHUK
CltTZXZlcml0eTogTWVkaXVtXQpJcyB0aGUgc2NoZW1hIGJpbmRpbmcgZm9yIHFjb20sbm9yZC1k
cHUgZW50aXJlbHkgbWlzc2luZyBmcm9tIHRoaXMgcGF0Y2gKc2VyaWVzPwoKVGhpcyBjb21wYXRp
YmxlIHN0cmluZyBpcyByZWZlcmVuY2VkIGhlcmUgZm9yIHRoZSBjaGlsZCBkaXNwbGF5IGNvbnRy
b2xsZXIsCmJ1dCB0aGUgY29ycmVzcG9uZGluZyBEUFUgYmluZGluZyB1cGRhdGUgaXMgb21pdHRl
ZC4KCldpdGhvdXQgaXQsIGZ1bGwgc2NoZW1hIHZhbGlkYXRpb24gZm9yIHRoZSBEUFUgY2hpbGQg
bm9kZSBjYW5ub3Qgb2NjdXIgd2hlbgp2YWxpZGF0aW5nIGEgZGV2aWNlIHRyZWUgY29udGFpbmlu
ZyBxY29tLG5vcmQtZHB1LgoKPiArCj4gKyAgIl5kaXNwbGF5cG9ydC1jb250cm9sbGVyQFswLTlh
LWZdKyQiOgo+ICsgICAgdHlwZTogb2JqZWN0Cj4gKyAgICBhZGRpdGlvbmFsUHJvcGVydGllczog
dHJ1ZQo+ICsgICAgcHJvcGVydGllczoKPiArICAgICAgY29tcGF0aWJsZToKPiArICAgICAgICBj
b25zdDogcWNvbSxub3JkLWRwCgpbU2V2ZXJpdHk6IE1lZGl1bV0KVGhpcyBpc24ndCBhIGJ1ZyBp
bnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gsIGJ1dCBieSBhbiBlYXJsaWVyIHBhdGNoIGluIHRoaXMK
c2VyaWVzIHRoYXQgYWRkZWQgcWNvbSxub3JkLWRwIHRvIHRoZSB0b3AtbGV2ZWwgY29tcGF0aWJs
ZSBlbnVtIHdpdGhvdXQKdXBkYXRpbmcgdGhlIGNvbnN0cmFpbnQgYmxvY2tzLgoKU2hvdWxkIHFj
b20sbm9yZC1kcCBiZSBpbmNsdWRlZCBpbiB0aGUgZ2VuZXJhdGlvbmFsIGlmLXRoZW4gY29uc3Ry
YWludCBibG9ja3MKaW4gZHAtY29udHJvbGxlci55YW1sIHRvIGVuZm9yY2UgcHJlY2lzZSBoYXJk
d2FyZSBjb25zdHJhaW50cz8KCkxvb2tpbmcgYXQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2Rpc3BsYXkvbXNtL2RwLWNvbnRyb2xsZXIueWFtbCwKYXQgdGhlIHN0YXJ0IG9mIHRo
ZSBnZW5lcmF0aW9uYWwgY29uZGl0aW9uYWwgYmxvY2tzOgoKICAgIGFsbE9mOgogICAgICAjIEFV
WCBCVVMgZG9lcyBub3QgZXhpc3Qgb24gRFAgY29udHJvbGxlcnMKCkJ5IG9taXR0aW5nIHRoZSBz
dHJpbmcgZnJvbSB0aGVzZSBjb25zdHJhaW50IGJsb2NrcywgZGV2aWNlIHRyZWVzIGZvcgpxY29t
LG5vcmQtZHAgd2l0aCBpbnZhbGlkIGNvbmZpZ3VyYXRpb25zIChlLmcuLCBhbiBpbmNvcnJlY3Qg
bnVtYmVyIG9mIGNsb2NrcwpvciByZWdpc3RlciByZWdpb25zKSB3aWxsIHNpbGVudGx5IHBhc3Mg
c2NoZW1hIHZhbGlkYXRpb24gd2hlbiBydW5uaW5nCmR0X2JpbmRpbmdfY2hlY2sgb3IgZHRic19j
aGVjayBhZ2FpbnN0IGEgTm9yZCBEUCBub2RlLgoKVGhleSB3aWxsIGZhbGwgYmFjayB0byB0aGUg
b3Zlcmx5IHBlcm1pc3NpdmUgdG9wLWxldmVsIGRlZmF1bHRzICh1cCB0byA5IHJlZwppdGVtcyBh
bmQgOCBjbG9ja3MpLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MDkxMS1ub3JkLWRydi1kdC12MS0wLWUyNWMwNzNjZjFiNkBvc3Mu
cXVhbGNvbW0uY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
