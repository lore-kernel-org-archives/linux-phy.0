Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C05C606A31D
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 12:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vtKyuczJ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=XVmfsqe+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=s5BLHvdtLVlltp0JCgYCu0ETlvxPL170SEzeaJVIy4c=; b=vtKyuczJ5hwsNzHBxJlFSyzob5
	+loMrv1TMFnTj4jHge3OSQK8vXu0Bqym5YsUjC+bUds+BduG/SaY1PpEWbCm28MKmvYEyuUTY6k5j
	j4L84pkdGYZVF6oGAGiUzX6SWeik7tkVnRISYobOVrTnAat7IstthRl55xahTw+7rCuKitKBUuw5b
	L6xEly1tRsJFcdNMhXpwnRVKYCE47AJcf1FwUxHsoirrF2VNU8uGlZpKvxfFM/ZN1hr4oZ4q1XO/a
	EUlcghpC/DXDS3w3pZH9BjKxiroukEcKZLyD+jRKB5UHwK4ysQQXbMFUDhb0b9AVeAIxJsBXWJk0J
	OaKjNhJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMm8b-0000000BiE9-0reH;
	Fri, 30 Oct 2026 12:55:17 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMm8Z-0000000BiE2-3iNJ
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 12:55:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C1AF76061C;
	Fri, 30 Oct 2026 12:55:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 078191F000C1;
	Fri, 30 Oct 2026 12:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793364914;
	bh=ADkHYmkMwBZ80j2ywUEBsGaQ5dDf4ITxrpJIMVdHo2Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XVmfsqe+4mxfHjfpmjekFl8iAbqc4o9ccB3E5WNVS2BeT6kBJisaV8I7hWwp1rzen
	 NTmtHF8vIur1Pe5bXa2yR0ENwU8LFtsGt+3L6zQQgBH4zvY76ku3xsz1Iifqowr0k0
	 C2r57D5SZcl+0LIfoy7GozInPPyimxhA+e7v2u/exUC73+D+nCJpL2mR/8/3pnHzyI
	 fcZz4HoYjNr5kIhoWBNpmsj4OexLQFGthzV12IgLTPlzWzYmCF+YUAS79gmkT7O9wc
	 n79p2gFxHNZQEGgI4XWn3vprU9k7h8194V4dcpqUMmwfPX9v+hUJxXqzM4FYNDEfla
	 D6dDwpPpf4PPQ==
Message-ID: <sashiko-outbox-191037@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/5] dt-bindings: media: Add CAMSS device for Hawi
 and Maili
To: "Nihal Kumar Gupta" <nihal.gupta@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261030-hawi-maili-camss-v3-3-9742bca8cef2@oss.qualcomm.com>
References: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
 <20261030-hawi-maili-camss-v3-3-9742bca8cef2@oss.qualcomm.com>
Date: Fri, 30 Oct 2026 12:55:13 +0000
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6
IG1lZGlhOiBoYXdpLWNhbXNzIG1pc3NpbmcgcmVxdWlyZWQgZGF0YS1sYW5lcyBpbiBlbmRwb2lu
dAotIFtMb3ddIGR0LWJpbmRpbmdzOiBtZWRpYTogaGF3aS1jYW1zcyBleGFtcGxlIHVuaXQtYWRk
cmVzcyBtaXNtYXRjaGVzIGZpcnN0IHJlZwotLQoKY29tbWl0IDk3Yjg4MGZkM2NmMmFkZjJlNWJk
YzM0ZGMzNGQ4NTI0ZjFkZDYzNWIKQXV0aG9yOiBIYW5neGlhbmcgTWEgPGhhbmd4aWFuZy5tYUBv
c3MucXVhbGNvbW0uY29tPgoKZHQtYmluZGluZ3M6IG1lZGlhOiBBZGQgQ0FNU1MgZGV2aWNlIGZv
ciBIYXdpIGFuZCBNYWlsaQoKVGhpcyBjb21taXQgYWRkcyB0aGUgRGV2aWNlIFRyZWUgYmluZGlu
ZyBzY2hlbWEgZm9yIHRoZSBDYW1lcmEgU3Vic3lzdGVtCihDQU1TUykgb24gdGhlIFF1YWxjb21t
IEhhd2kgYW5kIE1haWxpIHBsYXRmb3Jtcy4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9xY29tLGhhd2ktY2Ftc3MueWFtbCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9xY29tLGhhd2ktY2Ftc3MueWFtbAo+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uMzJjMWNjNTllODc2Nwo+
IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bWVkaWEvcWNvbSxoYXdpLWNhbXNzLnlhbWwKPiBAQCAtMCwwICsxLDMxNCBAQAoKWyAuLi4gXQoK
PiArICAgIHBhdHRlcm5Qcm9wZXJ0aWVzOgo+ICsgICAgICAiXnBvcnRAWzAtNV0kIjoKPiArICAg
ICAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1sIy8kZGVmcy9wb3J0LWJhc2UKPiArICAgICAg
ICB1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCj4gKyAgICAgICAgZGVzY3JpcHRpb246Cj4g
KyAgICAgICAgICBJbnB1dCBwb3J0cyBmb3IgcmVjZWl2aW5nIENTSSBkYXRhIG9uIENTSVBIWSAw
LTUuCj4gKwo+ICsgICAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgICBlbmRwb2ludDoKPiAr
ICAgICAgICAgICAgJHJlZjogdmlkZW8taW50ZXJmYWNlcy55YW1sIwo+ICsgICAgICAgICAgICB1
bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCj4gKwo+ICsgICAgICAgICAgICBwcm9wZXJ0aWVz
Ogo+ICsgICAgICAgICAgICAgIGRhdGEtbGFuZXM6Cj4gKyAgICAgICAgICAgICAgICBtaW5JdGVt
czogMQo+ICsgICAgICAgICAgICAgICAgbWF4SXRlbXM6IDQKPiArCj4gKyAgICAgICAgICAgICAg
YnVzLXR5cGU6Cj4gKyAgICAgICAgICAgICAgICBlbnVtOgo+ICsgICAgICAgICAgICAgICAgICAt
IDEgIyBNRURJQV9CVVNfVFlQRV9DU0kyX0NQSFkKPiArICAgICAgICAgICAgICAgICAgLSA0ICMg
TUVESUFfQlVTX1RZUEVfQ1NJMl9EUEhZCgpbU2V2ZXJpdHk6IE1lZGl1bV0KQXMgcmVwb3J0ZWQg
YnkgU2FzaGlrbyBvbiB2MiBbMV0sIHNob3VsZCB0aGUgZW5kcG9pbnQgc2NoZW1hIHVuZGVyCnBh
dHRlcm5Qcm9wZXJ0aWVzIF5wb3J0QFswLTVdJCBpbmNsdWRlIGEgcmVxdWlyZWQgbGlzdCBzcGVj
aWZ5aW5nIGRhdGEtbGFuZXMsCm1hdGNoaW5nIHNpYmxpbmcgYmluZGluZ3Mgc3VjaCBhcyBxY29t
LGthYW5hcGFsaS1jYW1zcy55YW1sIGFuZApxY29tLHgxZTgwMTAwLWNhbXNzLnlhbWw/CgpEdXJp
bmcgZHJpdmVyIHByb2JlLCBjYW1zc19wYXJzZV9lbmRwb2ludF9ub2RlKCkgaW4KZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMgY2FsbHMgdjRsMl9md25vZGVfZW5kcG9p
bnRfcGFyc2UoKQpvbiBlYWNoIHBvcnRAWzAtNV0gZW5kcG9pbnQuIFdoZW4gYnVzLXR5cGUgaXMg
b21pdHRlZCBhbmQgZGF0YS1sYW5lcyBpcwphYnNlbnQsIHY0bDJfZndub2RlX2VuZHBvaW50X3Bh
cnNlKCkgZG9lcyBub3QgZGV0ZWN0IGEgQ1NJLTIgRC1QSFkgYnVzIGFuZApjYW1zc19wYXJzZV9l
bmRwb2ludF9ub2RlKCkgZmFpbHMgd2l0aCAtRUlOVkFMLiBFdmVuIHdoZW4gYnVzLXR5cGUgaXMK
ZXhwbGljaXRseSBzZXQgdG8gRC1QSFkgKDQpLCBvbWl0dGluZyBkYXRhLWxhbmVzIGxlYXZlcyBs
bmNmZy0+bnVtX2RhdGEgYXMgMCwKY2F1c2luZyBjc2lwaHlfc3RyZWFtX29uKCkgaW4gZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaXBoeS5jCnRvIGZhaWwgcGh5X21p
cGlfZHBoeV9nZXRfZGVmYXVsdF9jb25maWdfZm9yX2hzY2xrKCkgd2l0aCAtRUlOVkFMLgoKWyAu
Li4gXQoKPiArICAgIHNvYyB7Cj4gKyAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8Mj47Cj4gKyAg
ICAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4gKwo+ICsgICAgICAgIGlzcEA5MjUzMDAwIHsKPiAr
ICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJxY29tLGhhd2ktY2Ftc3MiOwo+ICsKPiArICAgICAg
ICAgICAgcmVnID0gPDB4MCAweDA5MDBiMDAwIDB4MCAweDEwMDA+LAo+ICsgICAgICAgICAgICAg
ICAgICA8MHgwIDB4MDkyNTMwMDAgMHgwIDB4NWU4MD4sCgpbU2V2ZXJpdHk6IExvd10KU2hvdWxk
IHRoZSBub2RlIHVuaXQtYWRkcmVzcyBpbiB0aGUgZXhhbXBsZSBiZSBpc3BAOTAwYjAwMCBpbnN0
ZWFkIG9mCmlzcEA5MjUzMDAwPwoKVGhlIGZpcnN0IHJlZyBlbnRyeSAodG9wKSBpcyBhdCAweDA5
MDBiMDAwLCB3aGlsZSAweDA5MjUzMDAwIGlzIHRoZSBzZWNvbmQKcmVnIGVudHJ5IChjc2lkMCku
IFJ1bm5pbmcgbWFrZSBkdF9iaW5kaW5nX2NoZWNrIHRyaWdnZXJzIGEgZHRjCnNpbXBsZV9idXNf
cmVnIHdhcm5pbmcgd2hlbiB0aGUgbm9kZSB1bml0LWFkZHJlc3MgZG9lcyBub3QgbWF0Y2ggdGhl
IGZpcnN0CnJlZyBhZGRyZXNzLgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjEw
MTMtaGF3aS1tYWlsaS1jYW1zcy12Mi0zLWZjOTMyMjJkYTg5Y0Bvc3MucXVhbGNvbW0uY29tCgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYxMDMwLWhhd2ktbWFpbGktY2Ftc3MtdjMtMC05NzQyYmNhOGNlZjJAb3NzLnF1YWxjb21tLmNv
bT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
