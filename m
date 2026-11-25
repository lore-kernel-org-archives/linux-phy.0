Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0BEA606A32C
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 21:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WA1eR3RI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=OjDs6JRL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=cSx0h7te+VcWqlpgkECzCgnxdbU5e2/Om9NlhTzpiaM=; b=WA1eR3RI85+kw9fbdEYBrna6Ai
	hrwvfZ/K5RT7Un/Cf7NGzfSj0HS4Lh+blpNh/pOLEs/I32e5s3niYaf15H4zMzph3zFl9v3tGq6Jl
	s2hcZzffplYe0qC29RTk+cfreyYu+WR3PNXJrXp2PhPieFlrkz5tIDUg8WDL0+abFRvVbZ+LJTsiR
	tcU8KTZxKwkDW/iT2EkI2HSdrPHIx7gj/c4JnCdwWGMifwnfnMqi8mKi5e54SkuqR3FNxVH1w77AQ
	P0cLT2IXbHIPEVFFMqul72BkDWs8xhF1t2J7qqhdroEpPCB9xyAPdwd6vuMtXRCL1F7V6PK4sQ/vf
	qj8CQ75A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWKh6-0000000BNdX-142K;
	Wed, 25 Nov 2026 21:38:24 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWKh3-0000000BNcz-4AMi
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 21:38:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 56742612BD;
	Wed, 25 Nov 2026 21:38:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71D9D1F000E1;
	Wed, 25 Nov 2026 21:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795642700;
	bh=LCrgXMXnD6jSurHB14n5Y2wtuVtbkQn2EtMzPk2kfu0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OjDs6JRLRsrxfIRA9sRH2NXmA1GLAdrnaM722Oft4mZtiPLt/VzUxsc3ThcZkwXvo
	 J9WadSwfIg2YuXZm1W9TnTMc5qYGCjs0pFu9K7KskOyOGnxgNZ8Mc4j0VwV30uedvv
	 LL9Tt0lSA7btWKZb9Xj/NbS4W9uwIul43udhT0clKNee26gq4mZDd1QPfWQxHJCxsN
	 Fq91u00qwR/S/oAhDUofu89aVhzr+55n7FuLBKUIW9zcAcy7RJfGD6Gh6V1hCBLaEk
	 JoAeAjql883BGYwLc/F1rNgz13H4Ls3G1Tos2+uPnkaKjEYmr+1K1wKQpUg81oF8Fs
	 xp8XbKgXBHJbg==
Message-ID: <sashiko-outbox-234190@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/5] phy: apple: atc: Add initial M3 series support
To: "Sasha Finkelstein" <k@chaosmail.tech>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261125-t8122-phy-v3-3-196e20b3537e@chaosmail.tech>
References: <20261125-t8122-phy-v3-0-196e20b3537e@chaosmail.tech>
 <20261125-t8122-phy-v3-3-196e20b3537e@chaosmail.tech>
Date: Wed, 25 Nov 2026 21:38:20 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBhcHBsZTogYXRj
OiBzdGFsZSBhdGNwaHktPm1vZGUgb24KICBhdGNwaHlfd2FpdF9yY2FsMV9kb25lX3Q4MTIyKCkg
ZmFpbHVyZQotLQoKY29tbWl0IDU1MDJmNmI4NTE3MTI5ODVjYTU1OGM3YTBkZDE3YTAzNTg2MjQ3
NDYKQXV0aG9yOiBTYXNoYSBGaW5rZWxzdGVpbiA8a0BjaGFvc21haWwudGVjaD4KCnBoeTogYXBw
bGU6IGF0YzogQWRkIGluaXRpYWwgTTMgc2VyaWVzIHN1cHBvcnQKClRoaXMgY29tbWl0IGFkZHMg
aW5pdGlhbCBzdXBwb3J0IGZvciB0aGUgQXBwbGUgdDgxMjIgKE0zKSBUeXBlLUMgUEhZLApjb3Zl
cmluZyBVU0IgYW5kIFRodW5kZXJib2x0IG1vZGVzIHRocm91Z2ggYSBwZXItU29DIGhhcmR3YXJl
IG9wZXJhdGlvbnMKc3RydWN0dXJlLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYXBwbGUv
YXRjLmMgYi9kcml2ZXJzL3BoeS9hcHBsZS9hdGMuYwo+IGluZGV4IDQ1ZjEyODBhNmZhYTMuLjY4
ZmM5M2E4OGY0MWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvYXBwbGUvYXRjLmMKPiArKysg
Yi9kcml2ZXJzL3BoeS9hcHBsZS9hdGMuYwpbIC4uLiBdCj4gQEAgLTE3OTIsMTggKzE5MjksOTMg
QEAgc3RhdGljIGludCBhdGNwaHlfY29uZmlndXJlKHN0cnVjdCBhcHBsZV9hdGNwaHkgKmF0Y3Bo
eSwgZW51bSBhdGNwaHlfbW9kZSBtb2RlKQpbIC4uLiBdCj4gK3N0YXRpYyBpbnQgYXRjcGh5X3dh
aXRfcmNhbDFfZG9uZV90ODEyMihzdHJ1Y3QgYXBwbGVfYXRjcGh5ICphdGNwaHksIGVudW0gYXRj
cGh5X21vZGUgbW9kZSkKPiArewo+ICsJaW50IHJldCA9IDA7Cj4gKwl1MzIgcmVnOwo+ICsKPiAr
CWlmIChhdGNwaHlfbW9kZXNbbW9kZV0ucGlwZWhhbmRsZXJfc3RhdGUgPT0gQVRDUEhZX1BJUEVI
QU5ETEVSX1NUQVRFX1VTQjMpIHsKPiArCQlyZXQgPSByZWFkbF9wb2xsX3RpbWVvdXQoYXRjcGh5
LT5yZWdzLmNvcmUgKyBBVVNfQ09NTU9OX0RJR19SQ0FMMSwgcmVnLAo+ICsJCQkJCSAocmVnICYg
QVVTX0NPTU1PTl9ESUdfUkNBTDFfQUxMX0NPREVTX0RPTkUpLCAxMCwgMTAwMDAwKTsKPiArCQlp
ZiAocmV0KSB7Cj4gKwkJCWF0Y3BoeV9wb3dlcl9vZmYoYXRjcGh5KTsKPiArCQkJZGV2X2Vycihh
dGNwaHktPmRldiwgIkZhaWxlZCB0byB3YWl0IGZvciBSQ0FMMSBkb25lXG4iKTsKPiArCQkJcmV0
dXJuIHJldDsKPiArCQl9Cj4gKwl9Cj4gKwlyZXR1cm4gcmV0Owo+ICt9Cj4gKwo+ICtzdGF0aWMg
aW50IGF0Y3BoeV9jb25maWd1cmUoc3RydWN0IGFwcGxlX2F0Y3BoeSAqYXRjcGh5LCBlbnVtIGF0
Y3BoeV9tb2RlIG1vZGUpCj4gK3sKPiArCWludCByZXQgPSAwOwo+ICsKPiArCWxvY2tkZXBfYXNz
ZXJ0X2hlbGQoJmF0Y3BoeS0+bG9jayk7Cj4gKwo+ICsJaWYgKG1vZGUgPT0gQVBQTEVfQVRDUEhZ
X01PREVfT0ZGKSB7Cj4gKwkJcmV0ID0gYXRjcGh5X3Bvd2VyX29mZihhdGNwaHkpOwo+ICsJCWF0
Y3BoeS0+bW9kZSA9IG1vZGU7Cj4gKwkJcmV0dXJuIHJldDsKPiArCX0KPiArCj4gKwlyZXQgPSBh
dGNwaHlfcG93ZXJfb24oYXRjcGh5KTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiAr
Cj4gKwlhdGNwaHlfYXBwbHlfdHVuYWJsZXMoYXRjcGh5LCBtb2RlKTsKPiArCWF0Y3BoeS0+aHct
PmNvbmZpZ3VyZV9wb3N0X3R1bmFibGUoYXRjcGh5LCBtb2RlKTsKPiAgCj4gIAkvKiBTZXR1cCBB
VVggY2hhbm5lbCBpZiBEUCBhbHRtb2RlIGlzIHJlcXVlc3RlZCAqLwo+ICAJaWYgKGF0Y3BoeV9t
b2Rlc1ttb2RlXS5lbmFibGVfZHBfYXV4KQo+ICAJCWF0Y3BoeV9lbmFibGVfZHBfYXV4KGF0Y3Bo
eSk7Cj4gIAo+ICAJLyogRW5hYmxlIGNsb2NrcyBhbmQgY29uZmlndXJlIGxhbmVzICovCj4gLQlj
b3JlX3NldDMyKGF0Y3BoeSwgQ0lPM1BMTF9DTEtfQ1RSTCwgQ0lPM1BMTF9DTEtfUENMS19FTik7
Cj4gLQljb3JlX3NldDMyKGF0Y3BoeSwgQ0lPM1BMTF9DTEtfQ1RSTCwgQ0lPM1BMTF9DTEtfUkVG
Q0xLX0VOKTsKPiArCWlmIChhdGNwaHktPmh3LT5lbmFibGVfY2lvM3BsbF9jbGspCj4gKwkJYXRj
cGh5LT5ody0+ZW5hYmxlX2NpbzNwbGxfY2xrKGF0Y3BoeSk7Cj4gKwo+ICAJYXRjcGh5X2NvbmZp
Z3VyZV9sYW5lcyhhdGNwaHksIG1vZGUpOwo+ICAKPiAgCS8qIFRha2UgdGhlIFVTQjMgUEhZIG91
dCBvZiByZXNldCAqLwo+ICAJY29yZV9zZXQzMihhdGNwaHksIEFUQ1BIWV9QT1dFUl9DVFJMLCBB
VENQSFlfUE9XRVJfUEhZX1JFU0VUX04pOwo+ICsJLyoKPiArCSAqIE5PVEU6IE5vdCB3aGF0IG1h
Y29zIGRvZXMsIGl0IHRha2VzIHRoZSBwaHkgb3V0IG9mIHJlc2V0IHJpZ2h0IGJlZm9yZSB3cml0
aW5nIHRvCj4gKwkgKiBBQ0lPUEhZX0NGRzBfQ09NTU9OX1NNQUxMIGRvZXMgbGFuZSBjb25maWd1
cmF0aW9uIHdpdGggcGh5IG91dCBvZiByZXNldCwgYW5kIHRoZSBwb2xsIGlzCj4gKwkgKiByaWdo
dCBhZnRlciBBVVNfQ09NTU9OX1NISU1fQkxLX0JJQVNfUkVHIHdyaXRlLiBEb2VzIG5vdCBzZWVt
IHRvIG1hdHRlciwgYnV0IGlmIHNvbWV0aGluZwo+ICsJICogZG9lcyBub3Qgd29yaywgY29uc2lk
ZXIgcmUtb3JkZXJpbmcgdGhpbmdzIHRvIG1hY29zIG9yZGVyLgo+ICsJICovCj4gKwlpZiAoYXRj
cGh5LT5ody0+d2FpdF9yY2FsMV9kb25lKSB7Cj4gKwkJcmV0ID0gYXRjcGh5LT5ody0+d2FpdF9y
Y2FsMV9kb25lKGF0Y3BoeSwgbW9kZSk7Cj4gKwkJaWYgKHJldCkKPiArCQkJcmV0dXJuIHJldDsK
PiArCX0KPiAgCj4gIAlhdGNwaHktPm1vZGUgPSBtb2RlOwoKW1NldmVyaXR5OiBNZWRpdW1dCkRv
ZXMgZmFpbGluZyBpbiBhdGNwaHlfd2FpdF9yY2FsMV9kb25lX3Q4MTIyKCkgbGVhdmUgYXRjcGh5
LT5tb2RlIG91dCBvZgpzeW5jIHdpdGggdGhlIGhhcmR3YXJlIHN0YXRlPwoKV2hlbiB0aGUgUkNB
TDEgcG9sbCB0aW1lcyBvdXQsIGF0Y3BoeV93YWl0X3JjYWwxX2RvbmVfdDgxMjIoKSBjYWxscwph
dGNwaHlfcG93ZXJfb2ZmKCksIGFuZCBhdGNwaHlfY29uZmlndXJlKCkgcmV0dXJucyBlYXJseSB3
aXRob3V0IHVwZGF0aW5nCmF0Y3BoeS0+bW9kZS4gIElmIGF0Y3BoeS0+bW9kZSB3YXMgYWxyZWFk
eSBhIG5vbi1PRkYgbW9kZSAoc3VjaCBhcwpBUFBMRV9BVENQSFlfTU9ERV9VU0IyKSBiZWZvcmUg
dHJhbnNpdGlvbmluZyB0byBhIFVTQjMgbW9kZSwgYXRjcGh5LT5tb2RlCnJldGFpbnMgdGhhdCBw
cmV2aW91cyBhY3RpdmUgbW9kZSB3aGlsZSB0aGUgUEhZIGhhcmR3YXJlIGlzIHBvd2VyZWQgb2Zm
CmFuZCBoZWxkIGluIHJlc2V0LiAgQSBzdWJzZXF1ZW50IGF0Y3BoeV9tdXhfc2V0KCkgYmFjayB0
byB0aGF0IHByZXZpb3VzCm1vZGUgd2lsbCB0aGVuIHNlZSBhdGNwaHktPm1vZGUgPT0gdGFyZ2V0
X21vZGUgYW5kIHJldHVybiAwIHdpdGhvdXQKcG93ZXJpbmcgdGhlIFBIWSBiYWNrIG9uLiAgU2hv
dWxkIGF0Y3BoeS0+bW9kZSBiZSByZXNldCB0bwpBUFBMRV9BVENQSFlfTU9ERV9PRkYgd2hlbiBh
dGNwaHlfcG93ZXJfb2ZmKCkgaXMgY2FsbGVkIG9uIHRoaXMgZXJyb3IKcGF0aD8KCi0tIApTYXNo
aWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMjUt
dDgxMjItcGh5LXYzLTAtMTk2ZTIwYjM1MzdlQGNoYW9zbWFpbC50ZWNoP3BhcnQ9MwoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
