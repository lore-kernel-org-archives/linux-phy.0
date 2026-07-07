Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 021D8C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 08:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35QkMBuanQwh0VG/ZanUmpse6RGhE7FfChITV3huXl0=; b=S4/bjqvYrcaqjg
	EwsxhyeCWjumk67OTh7DsNsmfNBcKcvO03MBoFb8wyOCfsN8deZ7zUZIts6rdCrKYD5tio7Mlf8pw
	E021xrDiX6Lo+VQdBMgRHcaa+dFbkvw3MY7skDbSjqkLZ1t3q+50nVquZgpTwWUnrfOxdybiWQRor
	gm4kkuXcgW8/zCqxT9bE0mX2690KWW3NEjN5p2gkKIsh0HG8bDDlRtwv4XNoW4IuabEbsLvjBwAA8
	gEYx9BiFvXPTpNbrAT2VzDuo6La3hMltaauAy0cCO8+tc/8FjdBwYVQwev3Ff8a0+OwrsUEzOz9/b
	1mGah5E4DL6fMzn/Y+/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1Wn-0000000EXY1-2PkB;
	Tue, 07 Jul 2026 08:51:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1Wm-0000000EXXc-3lEZ
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 08:51:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 24428618A6;
	Tue,  7 Jul 2026 08:51:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 830121F000E9;
	Tue,  7 Jul 2026 08:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783414299;
	bh=I4wfYuVPw2KZNOIC2ORdbClYCNRgyW2/s1FVL5wwONk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HjNtzu906u5+RqnFMp3K5rff/Enlf50mJgY5LrSZaemTDjUw48dsTHYEfiEeiagka
	 rZ1G9zklCNmw0v4dJ3BGRGA6tCtlxqLozzVesaBZXOqzwNxhtBIkAKrcehbwJ++AHc
	 0vvqO/XRJe9cfZNQwt86UHM+urluYbqEEQcTqO8CKOSUvTu/5Yt76z0mIuI0FBHI5B
	 PEteBbiuY8mu99/SeSZagPpQ2s7nbGk/UvXJSeCJ0eqSUkpzNyvNndV6wf8jl5LU+o
	 aSLGq59EQ2zII5EjF/gK4KGoSuaz8M/C6kcQGK6ZvOfwLWd8r68WK1MriyfSQkllTE
	 oI4a3gcTrS8/A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 08/11] phy: qualcomm: eusb2-repeater: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260707083730.33977-9-angelogioacchino.delregno@collabora.com>
References: <20260707083730.33977-1-angelogioacchino.delregno@collabora.com>
 <20260707083730.33977-9-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 08:51:39 +0000
Message-Id: <20260707085139.830121F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTGVhayBvZiB0aGUg
U1BNSSBwYXJlbnQgZGV2aWNlIHJlZmVyZW5jZSBvYnRhaW5lZCBmcm9tIHNwbWlfZmluZF9kZXZp
Y2VfYnlfb2Zfbm9kZSgpLgotIFtMb3ddIFR5cGUgbWlzbWF0Y2ggY2F1c2luZyBhIGJ1aWxkIHdh
cm5pbmcvZXJyb3I6IHJldHVybmluZyBhIHBvaW50ZXIgZnJvbSBhIGZ1bmN0aW9uIHdpdGggYW4g
aW50ZWdlciByZXR1cm4gdHlwZS4KLS0KCi0tLSBQYXRjaCBbOF06IFtQQVRDSCB2MTAgMDgvMTFd
IHBoeTogcXVhbGNvbW06IGV1c2IyLXJlcGVhdGVyOiBNaWdyYXRlIHRvIGRldm1fc3BtaV9zdWJk
ZXZpY2VfYWxsb2NfYW5kX2FkZCgpIC0tLQpjb21taXQgZTEyNWZhNmQ0MGMyOGYzODAyM2Q1NmI5
ZWIzNGU5ZGU3ZTk5NTdmYwpBdXRob3I6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdl
bG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+CgpwaHk6IHF1YWxjb21tOiBldXNi
Mi1yZXBlYXRlcjogTWlncmF0ZSB0byBkZXZtX3NwbWlfc3ViZGV2aWNlX2FsbG9jX2FuZF9hZGQo
KQoKVGhpcyBwYXRjaCBtb2RpZmllcyB0aGUgUXVhbGNvbW0gZVVTQjIgcmVwZWF0ZXIgZHJpdmVy
IHRvIHJlZ2lzdGVyIGEgbmV3IFNQTUkKc3ViLWRldmljZSBpbnN0ZWFkIG9mIHVzaW5nIHRoZSBw
YXJlbnQgU1BNSSBkZXZpY2UuIEl0IGluaXRpYWxpemVzIGEgcmVnbWFwCndpdGggdGhpcyBzdWIt
ZGV2aWNlJ3Mgc3BlY2lmaWMgYmFzZSBhZGRyZXNzIHJldHJpZXZlZCBmcm9tIHRoZSBkZXZpY2V0
cmVlLAphbGxvd2luZyB0aGUgcmVnbWFwIEFQSSB0byBoYW5kbGUgdGhlIHJlZ2lzdGVyIGJhc2Ug
YWRkcmVzcyBpbXBsaWNpdGx5LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0v
cGh5LXFjb20tZXVzYjItcmVwZWF0ZXIuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LWV1c2IyLXJlcGVhdGVyLmMKPiBpbmRleCBlZmVlYzQ3MDlhMTVkLi5mOTkxNTJjZjU5ODQ5IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWV1c2IyLXJlcGVhdGVy
LmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1ldXNiMi1yZXBlYXRlci5j
ClsgLi4uIF0KPiBAQCAtMjYwLDE1ICsyNjgsMjEgQEAgc3RhdGljIGludCBldXNiMl9yZXBlYXRl
cl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJaWYgKCFycHRyLT5jZmcp
Cj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+IC0JcnB0ci0+cmVnbWFwID0gZGV2X2dldF9yZWdt
YXAoZGV2LT5wYXJlbnQsIE5VTEwpOwo+IC0JaWYgKCFycHRyLT5yZWdtYXApCj4gLQkJcmV0dXJu
IC1FTk9ERVY7Cj4gKwlzcGFyZW50ID0gc3BtaV9maW5kX2RldmljZV9ieV9vZl9ub2RlKGRldi0+
cGFyZW50LT5vZl9ub2RlKTsKPiArCWlmICghc3BhcmVudCkKPiArCQlyZXR1cm4gRVJSX1BUUigt
RU5PREVWKTsKCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHRoaXMgY29kZSBsZWFrIHRoZSBkZXZp
Y2UgcmVmZXJlbmNlIHJldHVybmVkIGJ5CnNwbWlfZmluZF9kZXZpY2VfYnlfb2Zfbm9kZSgpPwoK
VGhlIGZ1bmN0aW9uIHNwbWlfZmluZF9kZXZpY2VfYnlfb2Zfbm9kZSgpIGluY3JlbWVudHMgdGhl
IHJlZmVyZW5jZSBjb3VudCBvZgp0aGUgcmV0dXJuZWQgZGV2aWNlLCBidXQgaXQgYXBwZWFycyB0
aGlzIHJlZmVyZW5jZSBpcyBuZXZlciByZWxlYXNlZCB2aWEKcHV0X2RldmljZSgpIG9uIGVpdGhl
ciB0aGUgc3VjY2VzcyBvciBlcnJvciBwYXRocyBiZWZvcmUgcmV0dXJuaW5nIGZyb20KZXVzYjJf
cmVwZWF0ZXJfcHJvYmUoKS4KCltTZXZlcml0eTogTG93XQpEb2VzIHRoaXMgY29kZSByZXR1cm4g
YSBwb2ludGVyIGZyb20gYSBmdW5jdGlvbiBkZWNsYXJlZCB0byByZXR1cm4gYW4gaW50PwoKVGhl
IGV1c2IyX3JlcGVhdGVyX3Byb2JlKCkgZnVuY3Rpb24gcmV0dXJucyBpbnQsIGJ1dCB0aGlzIGVy
cm9yIHBhdGggcmV0dXJucwpFUlJfUFRSKC1FTk9ERVYpLCB3aGljaCBtaWdodCBjYXVzZSBhIHR5
cGUgbWlzbWF0Y2ggd2FybmluZyBvciBidWlsZCBmYWlsdXJlLgoKLS0gClNhc2hpa28gQUkgcmV2
aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcwNzA4MzczMC4zMzk3
Ny0xLWFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT9wYXJ0PTgKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
