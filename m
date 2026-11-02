Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7E8606A324
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 03:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=d3Jk+pFi;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=fh4PgZqw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1OFBedKAxIzTI27FMKe3nkPSOJQtgm8qP4glmfTz8uY=; b=d3Jk+pFi0fAdpNIfJ3Aaa0VTzJ
	UhmANAz+JhwA+ny6Rsuv8rf8Vd8RInJGJNpNooalouud94uvQ3yRwSmJsabavW+NMJefLZSJKXuxX
	K+Qk9dZczePZLVP6TwWFhoxW/ZK2VR/V2MTPknbB5S0uJD1Je7KO3HBkSWvmMxQjSrzZnZ5W2LxnH
	ORZJLEfY5C24psHSx4E/Uebqn5mZKjUzcCc3GtmCR6gSEJ82WAbp3/8XHRfcBC08ksM5yf2DUZ0lf
	O4OjGgJfPuWTGfKkooS6zzqySqdNyX6XWqvbq6VMLpnJZJGiCSYxfNYf+5CawPMrOTdlTDBxH/hXC
	l/AN9g6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNido-0000000FRW3-2M2N;
	Mon, 02 Nov 2026 03:23:24 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNidm-0000000FRVx-3mOA
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 03:23:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1053860098;
	Mon,  2 Nov 2026 03:23:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 560F41F000C1;
	Mon,  2 Nov 2026 03:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793589801;
	bh=bfSwM2hv4oi+ho9K6WW2gx/Ro7LKpjzjwUjhHb/0aA4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fh4PgZqw2lTtIbgX1P8sw5GfDIpdYF5k+hoA1DA/mhdJLE0GTgW6azJtiPRjM7c7Q
	 FXChYh4PLT9W49ZoBd1WmvA5PZlaiLgDOZeTZDZDdwEeC5a8NyVbPWmnvA0BoQnWsN
	 CG2hjwU9YQwlrr05YHLbNIAFHRCUS689Su8gfBSwc62PTCTOUXYfd4nLXf0sTsm0KT
	 ue3hpxKurA0gK5FUHgtJennopz2I7TX3ga50BOQGZYmCu2a7Fpqqt3Vx/5CPN6hYdN
	 8rbQokiAZ2/Ca6SDZPQimmnoLB+tgPxq58IznJdRXUe/JWsfTzPL4ENWkEUg7F7GHc
	 137FRiUqNWKvg==
Message-ID: <sashiko-outbox-192860@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/3] phy: cix: Add Sky1 DP PHY driver
To: "Luo Liu" <Luo.Liu@cixtech.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Cc: robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261102030425.1957585-3-Luo.Liu@cixtech.com>
References: <20261102030425.1957585-1-Luo.Liu@cixtech.com>
 <20261102030425.1957585-3-Luo.Liu@cixtech.com>
Date: Mon, 02 Nov 2026 03:23:20 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogY2l4OiBpbmNv
bXBsZXRlIGhhcmR3YXJlIHJlc2V0IGFuZCBzdGF0ZSBkZXN5bmMgaW4gY2l4X2RwX3Jlc2V0KCkK
LS0KCmNvbW1pdCBhZDgyMDI5YWM5NzEyMTk2OWNjNzFlNTk4ZDRiMGI5YzQxMDc2ZTAyCkF1dGhv
cjogTHVvIExpdSA8THVvLkxpdUBjaXh0ZWNoLmNvbT4KCnBoeTogY2l4OiBBZGQgU2t5MSBEUCBQ
SFkgZHJpdmVyCgpUaGlzIGNvbW1pdCBhZGRzIGEgZ2VuZXJpYyBQSFkgZHJpdmVyIGZvciB0aGUg
Q0lYIFNreTEgZGVkaWNhdGVkIERpc3BsYXlQb3J0ClBNQSwgc3VwcG9ydGluZyBsaW5rIHJhdGUs
IGxhbmUgY291bnQsIFNTQywgYW5kIHZvbHRhZ2Ugc3dpbmcgY29uZmlndXJhdGlvbi4KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2NpeC9waHktY2l4LWRwLmMgYi9kcml2ZXJzL3BoeS9jaXgv
cGh5LWNpeC1kcC5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAw
Li44ZTUyZDEwZDI1OTVlCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvcGh5L2NpeC9w
aHktY2l4LWRwLmMKClsgLi4uIF0KCj4gK3N0YXRpYyBpbnQgY2l4X2RwX2h3X3Jlc2V0KHN0cnVj
dCBjaXhfZHAgKmRwKQo+ICt7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCXJldCA9IGNpeF9kcF90b2dn
bGVfcmVzZXQoZHApOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiArCWNpeF9k
cF9waHlfd3JpdGUoZHAsIENJWF9EUF9QSFlfREFUQV9FTkFCTEUsIDApOwo+ICsJY2l4X2RwX3Bo
eV93cml0ZShkcCwgQ0lYX0RQX1BIWV9MQU5FX1JTVE5fQklUUywgMCk7Cj4gKwljaXhfZHBfcGh5
X3dyaXRlKGRwLCBDSVhfRFBfUEhZX0xBTkVfRU5fQklUUywgMCk7Cj4gKwljaXhfZHBfcGh5X3dy
aXRlKGRwLCBDSVhfRFBfUEhZX0NPTkZJR19SU1ROLCAwKTsKPiArCWRwLT5wb3dlcmVkID0gZmFs
c2U7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KClsgLi4uIF0KCj4gK3N0YXRpYyBpbnQgY2l4X2Rw
X2luaXQoc3RydWN0IHBoeSAqcGh5KQo+ICt7Cj4gKwlzdHJ1Y3QgY2l4X2RwICpkcCA9IHBoeV9n
ZXRfZHJ2ZGF0YShwaHkpOwo+ICsJaW50IHJldDsKPiArCj4gKwlyZXQgPSBjbGtfcHJlcGFyZV9l
bmFibGUoZHAtPmFwYl9jbGspOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiAr
CXJldCA9IGNpeF9kcF90b2dnbGVfcmVzZXQoZHApOwo+ICsJaWYgKHJldCkKPiArCQlnb3RvIGRp
c2FibGVfY2xrOwo+ICsKPiArCXJldCA9IGNpeF9kcF9od19wcmVwYXJlKGRwKTsKPiArCWlmIChy
ZXQpCj4gKwkJZ290byBkaXNhYmxlX2NsazsKPiArCj4gKwlyZXQgPSBjaXhfZHBfaHdfbG9hZF9y
ZWdzKGRwKTsKPiArCWlmIChyZXQpCj4gKwkJZ290byBkaXNhYmxlX2NsazsKPiArCj4gKwlyZXR1
cm4gMDsKPiArCj4gK2Rpc2FibGVfY2xrOgo+ICsJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRwLT5h
cGJfY2xrKTsKPiArCXJldHVybiByZXQ7Cj4gK30KClsgLi4uIF0KCj4gK3N0YXRpYyBpbnQgY2l4
X2RwX3Jlc2V0KHN0cnVjdCBwaHkgKnBoeSkKPiArewo+ICsJc3RydWN0IGNpeF9kcCAqZHAgPSBw
aHlfZ2V0X2RydmRhdGEocGh5KTsKPiArCj4gKwlyZXR1cm4gY2l4X2RwX2h3X3Jlc2V0KGRwKTsK
PiArfQoKW1NldmVyaXR5OiBIaWdoXQpXaGVuIGEgY29uc3VtZXIgY2FsbHMgcGh5X3Jlc2V0KCks
IGNpeF9kcF9yZXNldCgpIGludm9rZXMgY2l4X2RwX2h3X3Jlc2V0KCksCndoaWNoIHB1bHNlcyBk
cC0+cmVzZXQgdmlhIGNpeF9kcF90b2dnbGVfcmVzZXQoKSwgY2xlYXJzIHRoZSBjb250cm9sCnJl
Z2lzdGVycywgYW5kIHNldHMgZHAtPnBvd2VyZWQgPSBmYWxzZSB3aXRob3V0IGNhbGxpbmcgY2l4
X2RwX2h3X3ByZXBhcmUoKQpvciBjaXhfZHBfaHdfbG9hZF9yZWdzKCkuCgpJbiBjaXhfZHBfaW5p
dCgpLCBwdWxzaW5nIGRwLT5yZXNldCBpcyBmb2xsb3dlZCBieSBjaXhfZHBfaHdfcHJlcGFyZSgp
ICh0bwpkZWFzc2VydCBDSVhfRFBfQ0RCX1JTVE4gYW5kIGVuYWJsZSBDSVhfRFBfQVVYSFBEX0VO
QUJMRV9CSVRTKSBhbmQKY2l4X2RwX2h3X2xvYWRfcmVncygpICh0byBwcm9ncmFtIGNpeF9kcF9y
ZWdfY29uZltdIGFuZApDSVhfRFBfUEhZX1BNQV9QTExfUkFXX0NUUkwgb3ZlciB0aGUgQ0RCIGJ1
cykuCgpTaW5jZSBwdWxzaW5nIHRoZSBoYXJkd2FyZSByZXNldCByZXNldHMgQ0lYX0RQX0NEQl9S
U1ROLApDSVhfRFBfQVVYSFBEX0VOQUJMRV9CSVRTLCBhbmQgdGhlIFBNQSByZWdpc3RlcnMgYmFj
ayB0byBoYXJkd2FyZSBkZWZhdWx0cywKYW5kIHBoeV9yZXNldCgpIGRvZXMgbm90IGRlY3JlbWVu
dCBwaHktPmluaXRfY291bnQgaW4gdGhlIFBIWSBjb3JlLCB3b24ndApzdWJzZXF1ZW50IGNhbGxz
IHRvIHBoeV9jb25maWd1cmUoKSBvciBwaHlfcG93ZXJfb24oKSBmYWlsIHdpdGggLUVUSU1FRE9V
VCBpbgpjaXhfZHBfcGh5X2NkYl9yZWFkeSgpIGJlY2F1c2UgQ0lYX0RQX0NEQl9SU1ROIHJlbWFp
bnMgYXNzZXJ0ZWQ/CgpBZGRpdGlvbmFsbHksIGlmIHBoeV9yZXNldCgpIGlzIGNhbGxlZCB3aGls
ZSB0aGUgUEhZIGlzIHBvd2VyZWQgb24KKHBoeS0+cG93ZXJfY291bnQgPiAwKSwgc2V0dGluZyBk
cC0+cG93ZXJlZCA9IGZhbHNlIGRlc3luY2hyb25pemVzIHRoZSBkcml2ZXIKZnJvbSBwaHktPnBv
d2VyX2NvdW50IHNvIGEgc3Vic2VxdWVudCBwaHlfcG93ZXJfb24oKSBpcyBza2lwcGVkIGJ5IHRo
ZSBjb3JlCndoaWxlIHBoeV9wb3dlcl9vZmYoKSBhdHRlbXB0cyBDREIgYWNjZXNzZXMgb24gYSBy
ZXNldCBQSFkuIENvbnZlcnNlbHksIGlmCnBoeV9yZXNldCgpIGlzIGNhbGxlZCBiZWZvcmUgcGh5
X2luaXQoKSBvciBhZnRlciBwaHlfZXhpdCgpLApjaXhfZHBfaHdfcmVzZXQoKSB3cml0ZXMgdG8g
ZHAtPmJhc2Ugd2hpbGUgZHAtPmFwYl9jbGsgaXMgZGlzYWJsZWQuCgpTaG91bGQgY2l4X2RwX3Jl
c2V0KCkgcmUtcnVuIHRoZSBoYXJkd2FyZSBwcmVwYXJhdGlvbiBhbmQgcmVnaXN0ZXIgbG9hZGlu
ZwpzZXF1ZW5jZSAob3Igc2hvdWxkIC5yZXNldCBiZSBvbWl0dGVkIGlmIGNpeF9kcF9od19yZXNl
dCgpIGlzIG9ubHkgaW50ZW5kZWQKZm9yIHRlYXJkb3duIGluIGNpeF9kcF9leGl0KCkpPwoKLS0g
ClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MTEwMjAzMDQyNS4xOTU3NTg1LTEtTHVvLkxpdUBjaXh0ZWNoLmNvbT9wYXJ0PTIKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
