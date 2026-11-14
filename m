Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC93606A331
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 12:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=BiF3XPKI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=UUQUMhpp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HEWVtTnRafKD8OSSvp3Ry5Kpl94yBKQyv3YM0Qcr6lg=; b=BiF3XPKIAIHz3TUMZjUJxZ76mt
	N2r5LKItVaNWBMH21gpxM+FORDOwZeJ0T1x6c8ZUwlsPZztBKgZHr3YFbtgxIt7Ef0JLHqO+bNsrR
	hu9YyUPiE92n0EyPmTFgRmPFzUKLWuntCWp69UckGiL9bBj7v63tArzxtCQOhbY0oNq+dvYhXNNl2
	as81xNjvwaObwPe4q105eZAGzij5i3Zy0qw/n6GMwUvO+6xIsAyK1RPvCbLdGbUCcFN89aVZBxVJx
	tXFcy+q4EafxXJYw8pRVmKrfbkR7ibD9rGj9InAMZXiJQNcEsiTGJLhyTzOaPULKQqJmk6oesCqDB
	MJiFSyZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSCXK-0000000FzmI-0i9A;
	Sat, 14 Nov 2026 12:07:14 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSCXJ-0000000FzmC-1aCQ
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 12:07:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CBB3361E39;
	Sat, 14 Nov 2026 12:07:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A8DE1F000C4;
	Sat, 14 Nov 2026 12:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794658032;
	bh=weDOTmg75K/HqTA6ws/VutEVqs5lbo7Fs+CjNB1vU4U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UUQUMhppD6J6XtFmGdiEx+3N9Mx9WoBWc960Jv5QNqMvxt88wyYeSCaQdH6f0eTiW
	 aukM/aEvrny5/z/d3L/2M3NZlG57K/Se5amQhJTPWUo6IDt2BXRF62lGSvPA7uVSdh
	 BksT+r/zMywpD2C+Q4waqfmTScB7NvMx3LLdP5VspqpI3FHy4MMsjxdi0rbXuXuGP8
	 da0E+aneyeDvTbcCS7++wLP2tDmt0bn6ag49hUMJ5x8rX7TQc5OVWpG+VHyN+oWsKx
	 wzG9PU0SO1bCi9PeHtqbxpAedNzLIow2M0TDoFFWrhRhGq51qOZltLljYMyyPy4ZuW
	 vTUluOOMe6N4A==
Message-ID: <sashiko-outbox-214494@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 09/23] media: qcom: camss: csid: Scale the clocks
 with the CSI-2 link rate
To: "Wenmeng Liu" <wenmeng.liu@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-9-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-9-8ff2a11835f6@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 12:07:11 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG1lZGlhOiBxY29tOiBjYW1z
czogY3NpZDogc2libGluZyBwaHlfcnggYnJhbmNoIGNsb2NrcyBkcm9wCiAgc2hhcmVkIFJDRyBy
YXRlCi0tCgpjb21taXQgMDhiMzY5ZTJlMDc2YzM4MTc2ZGI4NTUxMGY5MjcxMGE5OGM0OWM2YwpB
dXRob3I6IExvaWMgUG91bGFpbiA8bG9pYy5wb3VsYWluQG9zcy5xdWFsY29tbS5jb20+CgptZWRp
YTogcWNvbTogY2Ftc3M6IGNzaWQ6IFNjYWxlIHRoZSBjbG9ja3Mgd2l0aCB0aGUgQ1NJLTIgbGlu
ayByYXRlCgpUaGlzIGNvbW1pdCBzY2FsZXMgdGhlIENTSUQgY29yZSBhbmQgQ1NJUEhZIHJlY2Vp
dmUgY2xvY2tzIGFjcm9zcyBhbGwKU29DIGdlbmVyYXRpb25zIGJhc2VkIG9uIHRoZSBDU0ktMiBs
aW5rIGZyZXF1ZW5jeSBhbmQgdm90ZXMgZm9yIG1pbmltdW0KY2xvY2sgcmF0ZXMgdXNpbmcgY2xr
X3NldF9yYXRlX3JhbmdlKCkgYW5kIGNsa19kcm9wX3JhbmdlKCkuCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC5jIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQuYwo+IGluZGV4IDUxZjIwOTA3ZmZk
ZTYuLjcxNGNlYTY4ODNhNzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9x
Y29tL2NhbXNzL2NhbXNzLWNzaWQuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNv
bS9jYW1zcy9jYW1zcy1jc2lkLmMKClsgLi4uIF0KCj4gQEAgLTUzMiw3MiArNTMzLDE5NyBAQCBj
b25zdCBzdHJ1Y3QgY3NpZF9mb3JtYXRfaW5mbyAqY3NpZF9nZXRfZm10X2VudHJ5KGNvbnN0IHN0
cnVjdCBjc2lkX2Zvcm1hdF9pbmZvCj4gIAlyZXR1cm4gJmZvcm1hdHNbMF07Cj4gIH0KPiAgCgpb
IC4uLiBdCgo+ICsJCS8qCj4gKwkJICogVm90ZSBmb3IgdGhlIHJhdGUgYXMgYSBtaW5pbXVtLCBh
cyB0aGUgY2xvY2sgbWF5IGJlIHNoYXJlZAo+ICsJCSAqIHdpdGggYW5vdGhlciBDU0lEIHdoaWNo
IG5lZWRzIGl0IHRvIHJ1biBmYXN0ZXIuCj4gKwkJICovCj4gKwkJcmV0ID0gY2xrX3NldF9yYXRl
X3JhbmdlKGNsb2NrLT5jbGssIGNsb2NrLT5mcmVxW2pdLCBVTE9OR19NQVgpOwo+ICsJCWlmIChy
ZXQgPCAwKSB7Cj4gKwkJCWRldl9lcnIoZGV2LCAiY2xrIHNldCByYXRlIHJhbmdlIGZhaWxlZDog
JWRcbiIsIHJldCk7Cj4gKwkJCXJldHVybiByZXQ7Cj4gKwkJfQo+ICAJfQo+ICAKPiAgCXJldHVy
biAwOwo+ICB9Cj4gIAo+ICsvKgo+ICsgKiBEcm9wIHRoZSBtaW5pbXVtIHJhdGVzIHRoZSBDU0lE
IHZvdGVzIGZvciBhbmQgdGFrZSBpdHMgY2xvY2tzIGJhY2sgdG8gdGhlaXIKPiArICogbG93ZXN0
IGxldmVsLCBvciB0byB0aGUgbG93ZXN0IGxldmVsIHRoZSBvdGhlciB1c2VycyBvZiBhIHNoYXJl
ZCBjbG9jayBuZWVkLgo+ICsgKi8KPiArc3RhdGljIHZvaWQgY3NpZF9yZWxlYXNlX2Nsb2NrX3Jh
dGVzKHN0cnVjdCBjc2lkX2RldmljZSAqY3NpZCkKPiArewo+ICsJaW50IGk7Cj4gKwo+ICsJZm9y
IChpID0gMDsgaSA8IGNzaWQtPm5jbG9ja3M7IGkrKykgewo+ICsJCXN0cnVjdCBjYW1zc19jbG9j
ayAqY2xvY2sgPSAmY3NpZC0+Y2xvY2tbaV07Cj4gKwkJbG9uZyByYXRlOwo+ICsKPiArCQlpZiAo
IWNsb2NrLT5uZnJlcXMgfHwgIWNzaWRfbWF0Y2hfc2NhbGVkX2Nsb2NrX25hbWUoY2xvY2spKQo+
ICsJCQljb250aW51ZTsKPiArCj4gKwkJY2xrX2Ryb3BfcmFuZ2UoY2xvY2stPmNsayk7Cj4gKwo+
ICsJCS8qIFJvdW5kIGZpcnN0LCBzbyB0aGF0IHRoZSByYXRlIHJlc3BlY3RzIHRoZSBvdGhlciB2
b3RlcyAqLwo+ICsJCXJhdGUgPSBjbGtfcm91bmRfcmF0ZShjbG9jay0+Y2xrLCBjbG9jay0+ZnJl
cVswXSk7Cj4gKwkJaWYgKHJhdGUgPiAwKQo+ICsJCQljbGtfc2V0X3JhdGUoY2xvY2stPmNsaywg
cmF0ZSk7Cj4gKwl9Cj4gK30KCltTZXZlcml0eTogSGlnaF0KQ2FuIHZvdGluZyBvbiBjbG9jay0+
Y2xrIHdpdGggY2xrX3NldF9yYXRlX3JhbmdlKCkgZmFpbCB0byBwcm90ZWN0IHRoZQpzaGFyZWQg
cmVjZWl2ZSBSQ0cgd2hlbiB0d28gQ1NJRHMgdXNlIGRpZmZlcmVudCBjaGlsZCBicmFuY2ggY2xv
Y2tzPwoKT24gU29DcyBzdWNoIGFzIFNNODU1MCwgU004NzUwLCBLYWFuYXBhbGksIFNBODc3NVAs
IGFuZCBTTTYxNTAsIGZ1bGwgYW5kCmxpdGUgQ1NJRHMgKG9yIGluZGl2aWR1YWwgQ1NJRCBpbnN0
YW5jZXMpIGFjcXVpcmUgc2VwYXJhdGUgcGh5X3J4IGJyYW5jaApjbG9ja3MgKGZvciBleGFtcGxl
ICJjc2lwaHlfcngiIC8gY2FtX2NjX2NzaWRfY3NpcGh5X3J4X2NsayBhbmQKInZmZV9saXRlX2Nw
aHlfcngiIC8gY2FtX2NjX2lmZV9saXRlX2NwaHlfcnhfY2xrKSB0aGF0IHNldApDTEtfU0VUX1JB
VEVfUEFSRU5UIGFuZCBzaGFyZSB0aGUgc2luZ2xlIHBhcmVudCBSQ0cKY2FtX2NjX2NwaHlfcnhf
Y2xrX3NyYzoKCmRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jOmNzaWRf
cmVzXzg1NTBbXSA9IHsKICAgIC4uLgoJLyogQ1NJRDAgKGZ1bGwpICovCgkuY2xvY2sgPSB7ICJj
c2lkIiwgImNzaXBoeV9yeCIgfSwKCS5jbG9ja19yYXRlID0geyB7IDQwMDAwMDAwMCwgNDgwMDAw
MDAwIH0sCgkJCXsgNDAwMDAwMDAwLCA0ODAwMDAwMDAgfSB9LAogICAgLi4uCgkvKiBDU0lEX0xJ
VEUwICovCgkuY2xvY2sgPSB7ICJ2ZmVfbGl0ZV9jc2lkIiwgInZmZV9saXRlX2NwaHlfcngiIH0s
CgkuY2xvY2tfcmF0ZSA9IHsgeyA0MDAwMDAwMDAsIDQ4MDAwMDAwMCB9LAoJCQl7IDQwMDAwMDAw
MCwgNDgwMDAwMDAwIH0gfSwKICAgIC4uLgp9OwoKQmVjYXVzZSBjbGtfc2V0X3JhdGVfcmFuZ2Uo
KSByZWNvcmRzIHRoZSBtaW5pbXVtIHJhdGUgb24gdGhlIGNoaWxkCmJyYW5jaCBjbG9jaydzIGNs
a19jb3JlIHJhdGhlciB0aGFuIG9uIHRoZSBzaGFyZWQgcGFyZW50IFJDRydzIGNsa19jb3JlLApy
YXRlIGNhbGN1bGF0aW9ucyBvbiBvbmUgYnJhbmNoIGNsb2NrIG9ubHkgaW5zcGVjdCB0aGUgcmF0
ZSBib3VuZGFyaWVzIG9mCnRoYXQgYnJhbmNoIGFuZCBpdHMgcGFyZW50IFJDRywgaWdub3Jpbmcg
bWluaW11bSByYXRlIHZvdGVzIGhlbGQgb24Kc2libGluZyBicmFuY2ggY2xvY2tzLiAgSWYgQ1NJ
RDAgaXMgc3RyZWFtaW5nIGF0IDQ4MCBNSHogYW5kIENTSURfTElURTAKZWl0aGVyIHN0YXJ0cyBh
IHNsb3dlciBzdHJlYW0gb3Igc3RvcHMgYW5kIHJ1bnMKY3NpZF9yZWxlYXNlX2Nsb2NrX3JhdGVz
KCkgdG8gc2V0IGNsb2NrLT5mcmVxWzBdICg0MDAgTUh6KSwgdGhlIGNsb2NrCmZyYW1ld29yayBs
b3dlcnMgY2FtX2NjX2NwaHlfcnhfY2xrX3NyYyB0byA0MDAgTUh6IGFuZCB1bmRlcmNsb2NrcyBD
U0lEMAptaWQtc3RyZWFtLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MTExNC1hZGQtc3VwcG9ydC1mb3ItY2Ftc3Mtb24tc204NzUw
LXY3LTAtOGZmMmExMTgzNWY2QG9zcy5xdWFsY29tbS5jb20/cGFydD05CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
