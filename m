Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C8C606A32F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 18:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jjAj2bji;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=W7RsnbG2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=X5XksTuekVC5wjx6aGRzvebR3Ft3x+nTgr8fhjM+RbE=; b=jjAj2bjimjHWbZ9uv5N75vWDZk
	CfyTRjqX4VB81Bg3+5hUMfCZwxSX88Z5dC8OAcU1ICaTNS/EVw72v1K4NDpGjH5mVJd5fojo7yBCo
	6oCiPJagfFHBHKnC3n+cR9dJ+R/wYD6iXlas/4glhKsLjiwq5r8B6uDZBoYXTWxhGnw6Od8NC/9PX
	8aSkGKbPYdJ/0B09nEN/niMlYPlK9kTQwpaZv6aiaUbdgsdfpFnRqnonmTb7+GKeqzNOS0wPDs2Az
	xjQAl//8s9xQRZbeToN9vlb31Y65TFTfAy/xEVYKWY7+UORnD2zN9WIXJZ8o1n1/VlpXbZAsEwkSV
	kvJYoq2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPP45-0000000DSrQ-4AJ4;
	Fri, 06 Nov 2026 18:53:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPP44-0000000DSql-0qyx
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 18:53:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 124CD60145;
	Fri,  6 Nov 2026 18:53:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FE801F0089F;
	Fri,  6 Nov 2026 18:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793991206;
	bh=nQSBuJnSxKPBm9btUkjMHj9x3ceqEHuHuYT+88WmS7w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=W7RsnbG2AMG5scUPum90zBMB+dHTT1TwFRDk26q7nKVJc41j8+qum3D/QhsoR5NuX
	 3Akg2EZS4izITCRnDyRr4W1bshnLpg9h03/HsUyfFZSX4TzchGV8s+F6hopahrFTUt
	 LDHDpDQcehbWQMs58jVv1mS+voBmMu+EwVqBD3r/0iBFfYcIA4C6mllxLcxz9xmJVE
	 FMGN6bu8LZMVHuun7nnice9V/y0JxEPIdzkIEuGFt49giwDhydIhE0H1v5LudchR/X
	 n4v2i8mCEHwm9/FthX6xuycwZTRyMG/1720xFI1ZmMuKZCquyV9mbEpWdMx1XMGhnt
	 WUNDZUurbwFxA==
Message-ID: <sashiko-outbox-202114@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 5/7] media: qcom: camss: Add support for SM8150
To: "Andrew Gigena" <mail@andrewgigena.dev>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261106-sm8150-v7.4-rc1-camss-v3-5-0103e8a0bbcd@andrewgigena.dev>
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <20261106-sm8150-v7.4-rc1-camss-v3-5-0103e8a0bbcd@andrewgigena.dev>
Date: Fri, 06 Nov 2026 18:53:25 +0000
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
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtNZWRpdW1dIG1lZGlhOiBxY29tOiBj
YW1zczogTlVMTCBkZXJlZiBhbmQgZGVhZCBjb2RlIGluCiAgY3NpcGh5X3Jlc19zbTgxNTAKLSBb
TWVkaXVtXSBtZWRpYTogcWNvbTogY2Ftc3M6IENBTVNTXzgxNTAgdXNlZCBpbiBwYXJlbnQgY29t
bWl0IGJlZm9yZQogIGRlZmluaXRpb24KLS0KCmNvbW1pdCBkZWJjN2NjMDU4NWQ2YWYxZjE4NGFi
NjZjZGIzZmIxODYzYmJhNWQ2CkF1dGhvcjogQW5kcmV3IEdpZ2VuYSA8bWFpbEBhbmRyZXdnaWdl
bmEuZGV2PgoKbWVkaWE6IHFjb206IGNhbXNzOiBBZGQgc3VwcG9ydCBmb3IgU004MTUwCgpUaGlz
IGNvbW1pdCBhZGRzIENBTVNTIHBsYXRmb3JtIGRhdGEsIHJlc291cmNlIGRlZmluaXRpb25zLCBh
bmQgdmVyc2lvbgpoYW5kbGluZyB0byBzdXBwb3J0IHRoZSBRdWFsY29tbSBTTTgxNTAgU29DLgoK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNz
aXBoeS0zcGgtMS0wLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3Mt
Y3NpcGh5LTNwaC0xLTAuYwo+IGluZGV4IGRhYzhkMmVjZjc5OTUuLjVlN2MyZTY3YWU4ODcgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaXBo
eS0zcGgtMS0wLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ft
c3MtY3NpcGh5LTNwaC0xLTAuYwo+IEBAIC0xMTMzLDYgKzExMzMsNyBAQCBzdGF0aWMgYm9vbCBj
c2lwaHlfaXNfZ2VuMih1MzIgdmVyc2lvbikKPiAgCWNhc2UgQ0FNU1NfNjE1MDoKPiAgCWNhc2Ug
Q0FNU1NfNjM1MDoKPiAgCWNhc2UgQ0FNU1NfNzI4MDoKPiArCWNhc2UgQ0FNU1NfODE1MDoKPiAg
CWNhc2UgQ0FNU1NfODI1MDoKPiAgCWNhc2UgQ0FNU1NfODI4MFhQOgo+ICAJY2FzZSBDQU1TU184
MzAwOgo+IEBAIC0xMjM1LDYgKzEyMzYsNyBAQCBzdGF0aWMgaW50IGNzaXBoeV9pbml0KHN0cnVj
dCBjc2lwaHlfZGV2aWNlICpjc2lwaHkpCj4gIAkJcmVncy0+bGFuZV9yZWdzID0gJmxhbmVfcmVn
c19zbTgyNTBbMF07Cj4gIAkJcmVncy0+bGFuZV9hcnJheV9zaXplID0gQVJSQVlfU0laRShsYW5l
X3JlZ3Nfc204MjUwKTsKPiAgCQlicmVhazsKPiArCWNhc2UgQ0FNU1NfODE1MDoKPiAgCWNhc2Ug
Q0FNU1NfODI4MFhQOgo+ICAJCXJlZ3MtPmxhbmVfcmVncyA9ICZsYW5lX3JlZ3Nfc2M4MjgweHBb
MF07Cj4gIAkJcmVncy0+bGFuZV9hcnJheV9zaXplID0gQVJSQVlfU0laRShsYW5lX3JlZ3Nfc2M4
MjgweHApOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3Mv
Y2Ftc3MuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4gaW5k
ZXggYzU0MTg1YzkzYThhOS4uZGE0ZDIyMTNmZDNkYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4gQEAgLTE5NDAsNiArMTk0MCwyMjMgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCByZXNvdXJjZXNfaWNjIGljY19yZXNfc202MzUwW10gPSB7Cj4gIAl9LAo+
ICB9Owo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBjYW1zc19zdWJkZXZfcmVzb3VyY2VzIGNz
aXBoeV9yZXNfc204MTUwW10gPSB7Cj4gKwkvKiBDU0lQSFkwIC0gY2xvY2tzL3JlZ3Mvc3VwcGxp
ZXMgb3duZWQgYnkgUEhZIGRyaXZlciAqLwo+ICsJewo+ICsJCS5jc2lwaHkgPSB7Cj4gKwkJCS5p
ZCA9IDAsCj4gKwkJCS5od19vcHMgPSAmY3NpcGh5X29wc18zcGhfMV8wLAo+ICsJCQkuZm9ybWF0
cyA9ICZjc2lwaHlfZm9ybWF0c19zZG04NDUKPiArCQl9Cj4gKwl9LAoKW1NldmVyaXR5OiBNZWRp
dW1dCkNhbiBjc2lwaHlfcmVzX3NtODE1MCBjYXVzZSBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5j
ZSBpbgpwbGF0Zm9ybV9nZXRfcmVzb3VyY2VfYnluYW1lKCkgd2hlbiBubyByZW1vdGUgUEhZIGVu
ZHBvaW50cyBhcmUgY29ubmVjdGVkIGluCkRldmljZSBUcmVlPwoKY2Ftc3NfZGV0ZWN0X2xlZ2Fj
eV9waHkoKSBkZWZhdWx0cyBjYW1zcy0+bGVnYWN5X3BoeSB0byB0cnVlIGFuZCBvbmx5IGNsZWFy
cwppdCB3aGVuIGl0IGZpbmRzIGFuIGVuZHBvaW50IHdob3NlIHJlbW90ZSBwYXJlbnQgbm9kZSBp
cyBuYW1lZCAicGh5Ii4gSWYgdGhlCkNTSVBIWSBwb3J0cyBhcmUgb21pdHRlZCBpbiBEVCwgY2Ft
c3NfaW5pdF9zdWJkZXZpY2VzKCkgdGFrZXMgdGhlIGxlZ2FjeSBwYXRoCmFuZCBjYWxscyBtc21f
Y3NpcGh5X3N1YmRldl9pbml0X2xlZ2FjeSgpLCB3aGljaCBwYXNzZXMgcmVzLT5yZWdbMF0gKE5V
TEwKaGVyZSkgdG8gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlX2J5bmFtZSgpLgoKQ29u
dmVyc2VseSwgd2hlbiBjYW1zcy0+bGVnYWN5X3BoeSBpcyBmYWxzZSwgbXNtX2NzaXBoeV9zdWJk
ZXZfaW5pdCgpIGFuZApjc2lwaHlfdjRsMl9vcHMgbmV2ZXIgdXNlIGNzaXBoeS0+cmVzLT5od19v
cHMsIG1ha2luZyAuaHdfb3BzID0KJmNzaXBoeV9vcHNfM3BoXzFfMCBhbmQgdGhlIENBTVNTXzgx
NTAgYWRkaXRpb25zIGluCmNhbXNzLWNzaXBoeS0zcGgtMS0wLmMgdW5yZWFjaGFibGUgZGVhZCBj
b2RlLgoKWyAuLi4gXQoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29t
L2NhbXNzL2NhbXNzLmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3Mu
aAo+IGluZGV4IDdkYzJmZDlmMDNlMGQuLjc0ZDhjYzI5MjFiZTkgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmgKPiArKysgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuaAo+IEBAIC04OSw2ICs4OSw3IEBAIGVudW0g
Y2Ftc3NfdmVyc2lvbiB7Cj4gIAlDQU1TU184eDM5LAo+ICAJQ0FNU1NfOHg1MywKPiAgCUNBTVNT
Xzh4OTYsCj4gKwlDQU1TU184MTUwLAo+ICAJQ0FNU1NfODI1MCwKPiAgCUNBTVNTXzgyODBYUCwK
PiAgCUNBTVNTXzgzMDAsCgpbU2V2ZXJpdHk6IE1lZGl1bV0KRG9lcyBkZWZpbmluZyBDQU1TU184
MTUwIGhlcmUgYnJlYWsgdGhlIGJ1aWxkIG9uIHRoZSBwcmVjZWRpbmcgY29tbWl0CiJtZWRpYTog
cWNvbTogY2Ftc3M6IE1hdGNoIFZGRSBsaXRlIGNsb2NrcyBieSBuYW1lIHByZWZpeCI/CgpUaGF0
IGVhcmxpZXIgY29tbWl0IGFscmVhZHkgYWRkcyBjYXNlIENBTVNTXzgxNTA6IGluIHZmZV9zcmNf
cGFkX2NvZGUoKSBhbmQKdmZlX2JwbF9hbGlnbl9yZGkoKSBpbiBkcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdmZlLmMgYmVmb3JlCkNBTVNTXzgxNTAgaXMgYWRkZWQgdG8g
ZW51bSBjYW1zc192ZXJzaW9uLCBjYXVzaW5nIGFuIHVuZGVjbGFyZWQgaWRlbnRpZmllcgplcnJv
ciBkdXJpbmcgZ2l0IGJpc2VjdC4gTW92aW5nIHRob3NlIHR3byBzd2l0Y2ggY2FzZXMgaW50byB0
aGlzIHBhdGNoIGtlZXBzCmJvdGggY29tbWl0cyBidWlsZGFibGUuCgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMTA2LXNtODE1MC12
Ny40LXJjMS1jYW1zcy12My0wLTAxMDNlOGEwYmJjZEBhbmRyZXdnaWdlbmEuZGV2P3BhcnQ9NQoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
