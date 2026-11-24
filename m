Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C21606A321
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 22:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=15LrKJl7;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=YjZOyLoi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UFwGpcyj09PP+y6pUNKnp4SYYsuSBgz3RUnO8tvzi+c=; b=15LrKJl70A6GOrilERQkcaCDZY
	cr9AFsRPCDlP8odec1ELrjS5giZkyJJJK2/MFqhuJitApRJyXhpQM5yFMmBx/DPirkjeq0kDvqy0y
	hes1HQ1QYkzRAp7GzL5j7MnWmBfaooKr0NRWyuc8OxInLxEZg94W4xImseEFL6PLdth/T52abVq5l
	rW0qCUsry+TSXhA66hX509ChT/fXLIu5VHNocjkMY9kBgPiTsocwW9gze3UxwjlMLmYE7W9SGeD85
	NrOF5vUH7p7hMU6ZR5Hs/34Uldwg39T5a32P0LtCQAXrcTiKQ2mvfPc2F3/0RGSEgpBjXTdZjhnIM
	pzOpfCSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVzRq-000000082ed-0wlv;
	Tue, 24 Nov 2026 22:57:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVzRo-000000082eW-2G9b
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 22:57:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A168262209;
	Tue, 24 Nov 2026 22:57:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72CFF1F000D8;
	Tue, 24 Nov 2026 22:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795561030;
	bh=KpRE3CBpJv/pWgohS3D/8H0oDOITIaYId10Gw2caMzU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YjZOyLoiDqRYwtHLhjxZZ0pL6UNzQETLK+eBLNjVUuHxojYTXDIWhpDj+4+U1ZGNQ
	 Ce4yAEu5enFJs1gZ79xhVBrisxzCWSelfIa/pn25qhiXGWKfUkUda+YaQUEoYbuFJh
	 ry45J3obJzgMAUKl9PaFJD0408yjOr/9G3mg+vo5CXfDSJe1NwcbwKzZvDA0YzLG/L
	 +T029gB+neOhPLz1h3QSTHnz1ffX+/m/MJmqidgtMz0b3uPOACt3sAI8D++ZwPF8F1
	 LYcreS1tCTWgbl47zkQV7RarJhh5gQywvWgvHcjMKbBJR7njt801eLth9lx5PGbGKZ
	 xxck4iXZGm9EA==
Message-ID: <sashiko-outbox-232181@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 1/2] dt-bindings: phy: airoha: Document support for
 AN7583 Gen3 PCIe PHY
To: "Christian Marangi" <ansuelsmth@gmail.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Cc: robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261124224318.227478-2-ansuelsmth@gmail.com>
References: <20261124224318.227478-1-ansuelsmth@gmail.com>
 <20261124224318.227478-2-ansuelsmth@gmail.com>
Date: Tue, 24 Nov 2026 22:57:10 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6IHBo
eTogYWlyb2hhOiBzaW5nbGUgNC1ieXRlIHJlZ2lzdGVycyBtb2RlbGVkIGFzCiAgcmVnIGJsb2Nr
cwotLQoKY29tbWl0IDQxOTViYTFlYWQ0ZDI3ZDIwYmVkZGYwNDNiMWRmYjlkODNkNDYwYzcKQXV0
aG9yOiBDaHJpc3RpYW4gTWFyYW5naSA8YW5zdWVsc210aEBnbWFpbC5jb20+CgpkdC1iaW5kaW5n
czogcGh5OiBhaXJvaGE6IERvY3VtZW50IHN1cHBvcnQgZm9yIEFONzU4MyBHZW4zIFBDSWUgUEhZ
CgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBEZXZpY2UgVHJlZSBiaW5kaW5nIHNjaGVtYSBmb3IgdGhl
IEFpcm9oYSBBTjc1ODMKR2VuMyBQQ0llIFBIWS4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYWlyb2hhLGFuNzU4My1wY2llLWdlbjMtcGh5Lnlh
bWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2Fpcm9oYSxhbjc1ODMt
cGNpZS1nZW4zLXBoeS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAw
MDAwMDAwLi5hOGVjNWFjNzgxY2NjCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYWlyb2hhLGFuNzU4My1wY2llLWdlbjMtcGh5Lnlh
bWwKPiBAQCAtMCwwICsxLDY1IEBAClsgLi4uIF0KPiArcHJvcGVydGllczoKPiArICBjb21wYXRp
YmxlOgo+ICsgICAgY29uc3Q6IGFpcm9oYSxhbjc1ODMtcGNpZS1nZW4zLXBoeQo+ICsKPiArICBy
ZWc6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBkZXNjcmlwdGlvbjogUENJRSBHMyBhbmFsb2cg
YmFzZSBhZGRyZXNzCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IFBDSUUgRzMgUE1BIGJhc2UgYWRk
cmVzcwo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBQQ0lFIGRldGVjdGlvbiB0aW1lIGJhc2UgYWRk
cmVzcwo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBQQ0lFIFJ4IEFFUSBiYXNlIGFkZHJlc3MKPiAr
Cj4gKyAgcmVnLW5hbWVzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gY29uc3Q6IGczLWFuYQo+
ICsgICAgICAtIGNvbnN0OiBnMy1wbWEKPiArICAgICAgLSBjb25zdDogeHItZHRpbWUKPiArICAg
ICAgLSBjb25zdDogcngtYWVxClsgLi4uIF0KPiArICAgIHBoeUAxZmM3ZjAwMCB7Cj4gKyAgICAg
ICAgY29tcGF0aWJsZSA9ICJhaXJvaGEsYW43NTgzLXBjaWUtZ2VuMy1waHkiOwo+ICsgICAgICAg
IHJlZyA9IDwweDFmYzdmMDAwIDB4MTAwMD4sCj4gKyAgICAgICAgICAgICAgPDB4MWZjN2UwMDAg
MHgxMDAwPiwKPiArICAgICAgICAgICAgICA8MHgxZmMzMDA0NCAweDQ+LAo+ICsgICAgICAgICAg
ICAgIDwweDFmYzM1MDMwIDB4ND47Cj4gKyAgICAgICAgcmVnLW5hbWVzID0gImczLWFuYSIsICJn
My1wbWEiLAo+ICsgICAgICAgICAgICAgICAgICAgICJ4ci1kdGltZSIsICJyeC1hZXEiOwoKW1Nl
dmVyaXR5OiBNZWRpdW1dCkFzIHJlcG9ydGVkIGJ5IEtyenlzenRvZiBLb3psb3dza2kgb24gdjIg
WzFdLCBzaG91bGQgeHItZHRpbWUgYW5kIHJ4LWFlcQpkZXNjcmliZSB0aGUgZW5jbG9zaW5nIFBF
WFRQIHJlZ2lzdGVyIGJsb2NrKHMpIGluc3RlYWQgb2YgaW5kaXZpZHVhbAo0LWJ5dGUgcmVnaXN0
ZXJzPwoKSW4gdGhlIGNvbXBhbmlvbiBkcml2ZXIgaGVhZGVyIGRyaXZlcnMvcGh5L2Fpcm9oYS9w
aHktYW43NTgzLXBjaWUtcmVncy5oCihhZGRlZCBpbiBjb21taXQgInBoeTogYWlyb2hhOiBhZGQg
c3VwcG9ydCBmb3IgQU43NTgzIEdlbjMgUENJZSBQSFkKZHJpdmVyIiksIDB4MWZjMzAwNDQgYW5k
IDB4MWZjMzUwMzAgY29ycmVzcG9uZCB0byBSRUdfUENJRV9QRVhUUF9ESUdfR0xCNDQKKG9mZnNl
dCAweDQ0IGluIFBFWFRQX0RJR19HTEIgYXQgMHgxZmMzMDAwMCkgYW5kClJFR19QQ0lFX1BFWFRQ
X0RJR19MTl9SWDMwIChvZmZzZXQgMHgzMCBpbiBQRVhUUF9ESUdfTE5fUlggYXQKMHgxZmMzNTAw
MCkuICBCaW5kaW5nIHR3byBzaW5nbGUgNC1ieXRlIHJlZ2lzdGVycyBhcyBzZXBhcmF0ZSByZWcK
cmVnaW9ucyBsb2NrcyB0aGUgRFQgQUJJIHRvIHRoZSByZWdpc3RlcnMgY3VycmVudGx5IHRvdWNo
ZWQgYnkgdGhlIGRyaXZlcgphbmQgcHJldmVudHMgYWNjZXNzaW5nIGFueSBvdGhlciBQRVhUUCBk
aWdpdGFsIGdsb2JhbCBvciBsYW5lIFJYCnJlZ2lzdGVycyB3aXRob3V0IGNoYW5naW5nIHRoZSBi
aW5kaW5nLgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjA4MzEtZWxhc3RpYy10
dXJxdW9pc2UtcHVtYS1mMDMyZmNAcXVvbGwKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMjQyMjQzMTguMjI3NDc4LTEtYW5zdWVs
c210aEBnbWFpbC5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
