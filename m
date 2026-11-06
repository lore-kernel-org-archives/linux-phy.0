Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA64F606A32D
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 18:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=N5C3AWbt;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=KHBvsLeo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LuVpyMTs8U8KQEUWxGw/QaPLDfWapwo5JnYRpY/sMqk=; b=N5C3AWbtxxf137OAV1YTrt+zrX
	Yr0G6aDbFOnJCAEQ/pp3obUQ8RYj3hQSkN+nnudbjlDkOn25aFyjl/4kIrCpJOrLLn+pDpz0s8PE7
	B8qNe5cuDNXQjJSk16HBeFSRWbb0GFzdsJluEYO/YANavkW0K7zz4tfLI/Swfdzz102+fQR8Q7oY8
	ZaE8EtGa1fIecr19+1+W+4mv2QJM8fu4RpQ0ff3dRaeTNyz9cQdSBhaiFCXbeMOs3QmxBvunyCOfb
	9/m5TC5jZj2/WQsq7NcR9npUfQSWKK2CgpT8pg2r1hsBMxux/776jslDq6TXfCbHBPjtiMJUEZ7FH
	10BUqMCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPP0d-0000000DSHE-1dzo;
	Fri, 06 Nov 2026 18:49:55 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPP0b-0000000DSG6-2LW0
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 18:49:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2C88F401A3;
	Fri,  6 Nov 2026 18:49:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EF5B1F008A1;
	Fri,  6 Nov 2026 18:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793990993;
	bh=vV4vKNQIMcqzdAmCbyUaKDGDDzSxd9Nsc6ykZrOqeT4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KHBvsLeogZWFkbbjcTRwnVQevb0YISl6+ioFX+lT1mHunF5IySh/6x9l99eXm1fSu
	 H1xVWnFfTewtE46W/bpWWrRrAflGjR+yE1jALE1CPTXyAnHduVF4BaRI65RFRb2A4C
	 eOPspfsBQVF9fanDg1jPmDXjVsFqgEauc8jO6HrCbPCTC++tHit91IhGuIVe3Q2fwd
	 cHGe2yULhZ3VZfzpNc++u0DO0FcSJi6xxR4UQiPvcfjrmtEJD5sZlD63ZbPMHNSoXc
	 cCbRLaYamHOu7gt0UcZfVSZw1/dLanNSITbfMdTLRINtEdjt3doHb3cgCaB1/yOV4N
	 Gr+N2NV5/IraQ==
Message-ID: <sashiko-outbox-202104@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 4/7] media: qcom: camss: Match VFE lite clocks by
 name prefix
To: "Andrew Gigena" <mail@andrewgigena.dev>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261106-sm8150-v7.4-rc1-camss-v3-4-0103e8a0bbcd@andrewgigena.dev>
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <20261106-sm8150-v7.4-rc1-camss-v3-4-0103e8a0bbcd@andrewgigena.dev>
Date: Fri, 06 Nov 2026 18:49:52 +0000
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MyBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtIaWdoXSBtZWRpYTogcWNvbTogY2Ft
c3M6IHVuZGVjbGFyZWQgQ0FNU1NfODE1MCBpbiBjYW1zcy12ZmUuYyBicmVha3MKICBidWlsZAot
IFtMb3ddIG1lZGlhOiBxY29tOiBjYW1zczogbWlzc2luZyBGaXhlcyB0cmFpbGVyIGZvcgogIHZm
ZV9tYXRjaF9jbG9ja19uYW1lcygpIGJ1ZwotIFtMb3ddIG1lZGlhOiBjYW1zczogdW5ndWFyZGVk
IGxpdGUgY2xvY2sgY2hlY2tzIGluCiAgdmZlX21hdGNoX2Nsb2NrX25hbWVzKCkKLS0KCmNvbW1p
dCAzMDRhNTk0OTVhN2EzZWI4N2RjNWQyNTRiYTQzODFhOWFiZjA5NTdiCkF1dGhvcjogQW5kcmV3
IEdpZ2VuYSA8bWFpbEBhbmRyZXdnaWdlbmEuZGV2PgoKPiBtZWRpYTogcWNvbTogY2Ftc3M6IE1h
dGNoIFZGRSBsaXRlIGNsb2NrcyBieSBuYW1lIHByZWZpeAo+Cj4gdmZlX21hdGNoX2Nsb2NrX25h
bWVzKCkgYnVpbGRzIHRoZSBleHBlY3RlZCBsaXRlIGNsb2NrIG5hbWUgZnJvbQo+IHZmZS0+aWQs
IGJ1dCB2ZmUtPmlkIGlzIHRoZSBpbmRleCBvZiB0aGUgVkZFIGluIHRoZSByZXNvdXJjZXMgYXJy
YXkuCj4gT24gU29DcyB3aGVyZSB0aGUgbGl0ZSBWRkVzIGNvbWUgYWZ0ZXIgdGhlIGZ1bGwgVkZF
cywgdGhlIGdlbmVyYXRlZAo+IG5hbWUgaXMgdmZlX2xpdGUyLCB2ZmVfbGl0ZTMsIC4uLiBhbmQg
bmV2ZXIgbWF0Y2hlcyB0aGUgYWN0dWFsCj4gdmZlX2xpdGUwL3ZmZV9saXRlMSBjbG9ja3MsIHNv
IHRoZWlyIHJhdGVzIGFyZSBuZXZlciBwcm9ncmFtbWVkLgo+Cj4gUmVzdHJpY3QgdGhlIG5ldyBw
cmVmaXggbWF0Y2ggdG8gbnVtYmVyZWQgInZmZV9saXRlTiIgY2xvY2tzIChkaWdpdAo+IGNoZWNr
KSB0byBhdm9pZCBtYXRjaGluZyBhdXggY2xvY2tzLCBsZWF2aW5nIHRoZSBwcmUtZXhpc3RpbmcK
PiB2ZmVfbGl0ZV9uYW1lIGFuZCBiYXJlICJ2ZmVfbGl0ZSIgbWF0Y2hlcyB1bmNoYW5nZWQuCj4K
PiBUaGlzIGFmZmVjdHMgU004MTUwLCBTQzcyODAgYW5kIFNDODI4MFhQLiBPbiBhIFBpeGVsIDQg
KFNNODE1MCksCj4gc3RyZWFtaW5nIHRocm91Z2ggVkZFLWxpdGUwIGxlZnQgY2FtX2NjX2lmZV9s
aXRlXzBfY2xrIGF0IDE5LjIgTUh6IGFuZAo+IGZhaWxlZCB3aXRoICJWRkUgcmVzZXQgdGltZW91
dCIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbmRyZXcgR2lnZW5hIDxtYWlsQGFuZHJld2dpZ2VuYS5k
ZXY+CgpbU2V2ZXJpdHk6IExvd10KVGhpcyBmaXhlcyBWRkUgbGl0ZSBjbG9jayBtYXRjaGluZyBv
biBleGlzdGluZyBwbGF0Zm9ybXMgc3VjaCBhcyBTQzcyODAgYW5kClNDODI4MFhQLiAgU2hvdWxk
IHRoaXMgaW5jbHVkZToKCiAgRml4ZXM6IGJjZDJhZGZlZjIzYSAoIm1lZGlhOiBxY29tOiBjYW1z
czogQWxsb3cgY2xvY2tzIHZmZU4gdmZlX2xpdGVOIG9yIHZmZV9saXRlIikKCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy12ZmUuYyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy12ZmUuYwo+IGluZGV4IDI2ODBhOTkx
NDc2NWYuLjI5ZTA0ZDA5NzExNjMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9xY29tL2NhbXNzL2NhbXNzLXZmZS5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9x
Y29tL2NhbXNzL2NhbXNzLXZmZS5jClsgLi4uIF0KPiBAQCAtMzQ2LDYgKzM0Nyw3IEBAIHN0YXRp
YyB1MzIgdmZlX3NyY19wYWRfY29kZShzdHJ1Y3QgdmZlX2xpbmUgKmxpbmUsIHUzMiBzaW5rX2Nv
ZGUsCj4gIAljYXNlIENBTVNTXzYzNTA6Cj4gIAljYXNlIENBTVNTXzcyODA6Cj4gIAljYXNlIENB
TVNTXzh4OTY6Cj4gKwljYXNlIENBTVNTXzgxNTA6Cj4gIAljYXNlIENBTVNTXzgyNTA6Cj4gIAlj
YXNlIENBTVNTXzgyODBYUDoKPiAgCWNhc2UgQ0FNU1NfODMwMDoKCltTZXZlcml0eTogSGlnaF0K
RG9lcyBhZGRpbmcgY2FzZSBDQU1TU184MTUwIGhlcmUgYW5kIGluIHZmZV9icGxfYWxpZ25fcmRp
KCkgYnJlYWsgdGhlIGJ1aWxkIGF0CnRoaXMgY29tbWl0PyAgQ0FNU1NfODE1MCBpcyBub3QgZGVj
bGFyZWQgaW4gZW51bSBjYW1zc192ZXJzaW9uIGluCmRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNv
bS9jYW1zcy9jYW1zcy5oIHVudGlsIHRoZSBmb2xsb3dpbmcgY29tbWl0ICJtZWRpYToKcWNvbTog
Y2Ftc3M6IEFkZCBzdXBwb3J0IGZvciBTTTgxNTAiLCB3aGVyZSB0aGVzZSB0d28gaHVua3MgYmVs
b25nLgoKPiBAQCAtOTE0LDYgKzkxNiw5IEBAIHN0YXRpYyBpbnQgdmZlX21hdGNoX2Nsb2NrX25h
bWVzKHN0cnVjdCB2ZmVfZGV2aWNlICp2ZmUsCj4gIAlyZXR1cm4gKCFzdHJjbXAoY2xvY2stPm5h
bWUsIHZmZV9uYW1lKSB8fAo+ICAJCSFzdHJjbXAoY2xvY2stPm5hbWUsIHZmZV9saXRlX25hbWUp
IHx8Cj4gIAkJIXN0cmNtcChjbG9jay0+bmFtZSwgInZmZV9saXRlIikgfHwKPiArCQkodmZlLT5y
ZXMtPmlzX2xpdGUgJiYKPiArCQkgIXN0cm5jbXAoY2xvY2stPm5hbWUsICJ2ZmVfbGl0ZSIsIDgp
ICYmCj4gKwkJIGlzZGlnaXQoKHVuc2lnbmVkIGNoYXIpY2xvY2stPm5hbWVbOF0pKSB8fAo+ICAJ
CSFzdHJjbXAoY2xvY2stPm5hbWUsICJjYW1ub2NfYXhpIikgfHwKPiAgCQkhc3RyY21wKGNsb2Nr
LT5uYW1lLCAiY2Ftbm9jX3J0X2F4aSIpKTsKPiAgfQoKW1NldmVyaXR5OiBMb3ddCkFzIHJlcG9y
dGVkIGJ5IEJyeWFuIE8nRG9ub2dodWUgb24gdjIgWzFdLCBzaG91bGQgYWxsIGxpdGUgY2xvY2sg
Y2hlY2tzIGluCnZmZV9tYXRjaF9jbG9ja19uYW1lcygpIGJlIGdhdGVkIG9uIHZmZS0+cmVzLT5p
c19saXRlPyAgT25seSBsaXRlIFZGRSByZXNvdXJjZQplbnRyaWVzIHVzZSB2ZmVfbGl0ZSBvciB2
ZmVfbGl0ZU4gY2xvY2tzLCBhbmQgb25jZSBnYXRlZCBvbiB2ZmUtPnJlcy0+aXNfbGl0ZSwKdGhl
IHZmZV9saXRlX25hbWUgYnVmZmVyIGFuZCBpdHMgc25wcmludGYoKSBjYWxsIGFyZSBhbHJlYWR5
IGNvdmVyZWQgYnkgdGhlCm51bWJlcmVkICJ2ZmVfbGl0ZSIgcHJlZml4IGNoZWNrIGFuZCBjYW4g
YmUgZHJvcHBlZC4KClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9yL2FjMmU5NzBiLTFmM2Et
NGFlZi05YTg0LTAzNGQ3ZTQ2MGMwZkBsaW5hcm8ub3JnCgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMTA2LXNtODE1MC12Ny40LXJj
MS1jYW1zcy12My0wLTAxMDNlOGEwYmJjZEBhbmRyZXdnaWdlbmEuZGV2P3BhcnQ9NAoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
