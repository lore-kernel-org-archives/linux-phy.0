Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC4D606A320
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 12:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=26z5KuQM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=QWNF2x48
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LumOjJGdyFMWL6fyKZK+89LuQOTJAtli2LYkuU+0EtU=; b=26z5KuQMsCrhy5t1DhSvJt4TWW
	Rj3QcGEJ4NPBbi3QeD24d6eRQC+VBbb7XKsMX1K6ebTg2OlMWL+YBjdH49xa34hjg1dFP1xMfcA+3
	pmFF5fI03rU0HuVIdejNKEtVBJrls2xY9YmXT3PKGX+3dIuhQ0cfMD7ltbMAwp9Ee4Px85w5tw5hL
	9eccPPK3jvsqK+egALXGGQk3Lq1csm7wJRlv8oCTQZ1slPB7/0PFODcOtglwnpCPEZSvgLHi748T/
	LQTmXIvL7UVGtBNsoM3IsadyKtXn2ZGtg7Cqz3wx6i/9uNPql3dZqiuuP3gw/VkaOjAOs/SDwovIX
	TW55MfeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV6mh-000000016A9-1NhO;
	Sun, 22 Nov 2026 12:35:07 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV6mg-000000016A2-0FTg
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 12:35:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8AE4D44D44;
	Sun, 22 Nov 2026 12:35:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 169DF1F000C4;
	Sun, 22 Nov 2026 12:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795350905;
	bh=e3eNoEu3oTx8Qd50/LzyhLtinvLs9bgV0WkqOeE/PDU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QWNF2x48wj2RXAGfOVwyoel3fYl9DsBHH/NaqcaM3TKJoooT46pbvbCOB06wMgyqW
	 eqCObFjCBjc9u46nFGJKb/KNl3Mn3xlntaR3JPTndHafRKwcbPeqR9PzyHH4l6hiY8
	 U11e4OlWWm90+QUtbaxUTQTtEKgkJ0+PoTwK5wJMBMNucCgu/hKNVDdsG4Xaq7kzIh
	 eKC6eEgHF6KOkwIoIbOeY5MtBK0Bdk5lCT1OmmeTFn8wcYgyyva0kbZbLZjySlmSX2
	 JYAJgs9Wym/RRNq3juxnSfp+97+gnTzxwpFP9wc22A1Zw25/QNjGWxLujI55vEN2fm
	 8P7fg1zhMkI+A==
Message-ID: <sashiko-outbox-227926@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/5] phy: apple: atc: Add initial M3 series support
To: "Sasha Finkelstein" <k@chaosmail.tech>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261122-t8122-phy-v2-3-8d5c8fdf31ba@chaosmail.tech>
References: <20261122-t8122-phy-v2-0-8d5c8fdf31ba@chaosmail.tech>
 <20261122-t8122-phy-v2-3-8d5c8fdf31ba@chaosmail.tech>
Date: Sun, 22 Nov 2026 12:35:04 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogYXBwbGU6IGF0Yzog
ZHVwbGljYXRlCiAgYXRjcGh5X2NvbmZpZ3VyZV9wb3N0X3R1bmFibGVfdDgxMjIoKSBicmVha3Mg
YnVpbGQKLS0KCmNvbW1pdCA1OGE3NmQ3YmMxMTg3NTYwNWNhMGJhNGM0YTNmZmFjOTljZTkzNzc2
CkF1dGhvcjogU2FzaGEgRmlua2Vsc3RlaW4gPGtAY2hhb3NtYWlsLnRlY2g+CgpwaHk6IGFwcGxl
OiBhdGM6IEFkZCBpbml0aWFsIE0zIHNlcmllcyBzdXBwb3J0CgpUaGlzIGNvbW1pdCBhZGRzIGlu
aXRpYWwgVVNCIGFuZCBUaHVuZGVyYm9sdCBQSFkgc3VwcG9ydCBmb3IgdGhlIEFwcGxlIE0zCih0
ODEyMikgVHlwZS1DIFBIWS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2FwcGxlL2F0Yy5j
IGIvZHJpdmVycy9waHkvYXBwbGUvYXRjLmMKPiBpbmRleCA0NWYxMjgwYTZmYWEzLi4zOThiMmJl
NWRkMTE2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L2FwcGxlL2F0Yy5jCj4gKysrIGIvZHJp
dmVycy9waHkvYXBwbGUvYXRjLmMKClsgLi4uIF0KCj4gQEAgLTE3OTIsMTggKzE5MjksMTAwIEBA
IHN0YXRpYyBpbnQgYXRjcGh5X2NvbmZpZ3VyZShzdHJ1Y3QgYXBwbGVfYXRjcGh5ICphdGNwaHks
IGVudW0gYXRjcGh5X21vZGUgbW9kZSkKPiAgCW1hc2szMihhdGNwaHktPnJlZ3MuY29yZSArIEFD
SU9QSFlfQ0ZHMCwgQUNJT1BIWV9DRkcwX1JYX0NMQU1QX09WLAo+ICAJICAgICAgIEZJRUxEX1BS
RVAoQUNJT1BIWV9DRkcwX1JYX0NMQU1QX09WLCAzKSk7Cj4gIAl1ZGVsYXkoMTApOwo+ICt9Cj4g
Kwo+ICtzdGF0aWMgdm9pZCBhdGNwaHlfY29uZmlndXJlX3Bvc3RfdHVuYWJsZV90ODEyMihzdHJ1
Y3QgYXBwbGVfYXRjcGh5ICphdGNwaHksIGVudW0gYXRjcGh5X21vZGUgbW9kZSkKPiArewo+ICsJ
aWYgKGF0Y3BoeV9tb2Rlc1ttb2RlXS5waXBlaGFuZGxlcl9zdGF0ZSAhPSBBVENQSFlfUElQRUhB
TkRMRVJfU1RBVEVfVVNCMykKPiArCQlyZXR1cm47Cj4gKwljb3JlX3NldDMyKGF0Y3BoeSwgQUNJ
T1BIWV9DRkcwLCBBQ0lPUEhZX0NGRzBfQ09NTU9OX1NNQUxMKTsKPiArCXVkZWxheSgxMCk7Cj4g
Kwljb3JlX3NldDMyKGF0Y3BoeSwgQUNJT1BIWV9DRkcwLCBBQ0lPUEhZX0NGRzBfQ09NTU9OX1NN
QUxMX09WKTsKPiArCXVkZWxheSgxMCk7Cj4gKwljb3JlX3NldDMyKGF0Y3BoeSwgQUNJT1BIWV9D
RkcwLCBBQ0lPUEhZX0NGRzBfQ09NTU9OX0JJRyk7Cj4gKwl1ZGVsYXkoMTApOwo+ICsJY29yZV9z
ZXQzMihhdGNwaHksIEFDSU9QSFlfQ0ZHMCwgQUNJT1BIWV9DRkcwX0NPTU1PTl9CSUdfT1YpOwo+
ICsJdWRlbGF5KDEwKTsKPiArCWNvcmVfY2xlYXIzMihhdGNwaHksIEFDSU9QSFlfQ0ZHMCwgQUNJ
T1BIWV9DRkcwX0NPTU1PTl9DTEFNUCk7Cj4gKwl1ZGVsYXkoMTApOwo+ICsJY29yZV9zZXQzMihh
dGNwaHksIEFDSU9QSFlfQ0ZHMCwgQUNJT1BIWV9DRkcwX0NPTU1PTl9DTEFNUF9PVik7Cj4gKwl1
ZGVsYXkoMTApOwo+ICsJY29yZV9zZXQzMihhdGNwaHksIEFVU19DT01NT05fU0hJTV9CTEtfQklB
U19SRUcsIEFVU19DT01NT05fU0hJTV9CTEtfQklBU19SRUdfQkdCSUFTX09WKTsKPiArCXVkZWxh
eSgxMCk7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIGF0Y3BoeV9jb25maWd1cmVfcG9zdF90dW5h
YmxlX3Q4MTIyKHN0cnVjdCBhcHBsZV9hdGNwaHkgKmF0Y3BoeSwgZW51bSBhdGNwaHlfbW9kZSBt
b2RlKQo+ICt7Cj4gKwlpZiAoYXRjcGh5X21vZGVzW21vZGVdLnBpcGVoYW5kbGVyX3N0YXRlID09
IEFUQ1BIWV9QSVBFSEFORExFUl9TVEFURV9VU0IzIHx8Cj4gKwkgICAgKGF0Y3BoeS0+aHctPmRw
ICYmIGF0Y3BoeV9tb2Rlc1ttb2RlXS5lbmFibGVfZHBfYXV4KSkKPiArCQlhdGNwaHlfcG93ZXJf
b25fY29tbW9uX3Q4MTIyKGF0Y3BoeSk7Cj4gK30KCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlz
IHNlY29uZCBkZWZpbml0aW9uIG9mIGF0Y3BoeV9jb25maWd1cmVfcG9zdF90dW5hYmxlX3Q4MTIy
KCkKYmVsb25nIGluIHRoZSBsYXRlciBjb21taXQgInBoeTogYXBwbGU6IGF0YzogQWRkIFQ4MTIy
IERpc3BsYXlQb3J0CnN1cHBvcnQiPwoKRGVmaW5pbmcgYXRjcGh5X2NvbmZpZ3VyZV9wb3N0X3R1
bmFibGVfdDgxMjIoKSB0d2ljZSwgd2hpbGUgcmVmZXJlbmNpbmcKYXRjcGh5LT5ody0+ZHAgYW5k
IGF0Y3BoeV9wb3dlcl9vbl9jb21tb25fdDgxMjIoKSBiZWZvcmUgdGhleSBleGlzdCwKYnJlYWtz
IHRoZSBidWlsZCBhdCB0aGlzIGNvbW1pdC4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMjItdDgxMjItcGh5LXYyLTAtOGQ1Yzhm
ZGYzMWJhQGNoYW9zbWFpbC50ZWNoP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
