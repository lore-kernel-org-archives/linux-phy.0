Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE049606BE87
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 16:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KRsclrWt;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=mHwsP+Nz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=T5aiCa8gutRp6aSYrnQfdhGMjCvFTDskLD8DVZRStNw=; b=KRsclrWt5CjLhIrCAtSeWrQKpx
	yUqtM6U20FsmTawOXuwDtnrapdi7cLMZVdzwL3OwN7oQtRIoqASiOWy2m+LjtHGSJV08Y6FhGhE8g
	fhOVTiKdgJ5p9+4KzvQ80VPZQ8ONqAOOo1Kt2qYi4prMHAr28A87eHFQYbpcvff6T1IgA2feRUZU9
	ipwqTPEKeLSNj5FPYz1WkyURQ7VETLJF3OUPEcMmCVxY1uAI7JKRQ5DQVnBKNVJhD4pmhpMyWY710
	utcbMFgDvnJmxtaD5VDcEQz9qLG0fPLWV51NdbUxWlwtlRczEbV0YTxHk3s/AxxMS+cr9zTYl/a8o
	yie+B8yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOzvK-00000009Xek-1V5R;
	Thu, 05 Nov 2026 16:02:46 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOzua-00000009XWZ-3sQf
	for linux-phy@lists.infradead.org;
	Thu, 05 Nov 2026 16:02:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8FB6643B82;
	Thu,  5 Nov 2026 16:02:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 156201F00919;
	Thu,  5 Nov 2026 16:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793894520;
	bh=0FXzSzLADqbA1mkd9FIgUiV5sLPN4BXKO5qvNgWsdW0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mHwsP+NzqDkiKUSDxwEvXfkdJ+Cs6W4cKaay6g9IVNOkqnsHQrK/QzNSBuG51JxvD
	 3diL8fedGvt2USBCZ/LTLYLyfFcpWbmxC8ZD49vdBZewHoAaaWWKVG5qPXFI0S/tI7
	 kG+kwxm955LyNqA7HbJV4wBoY5TDlkSyFNONsRf1WnqgFBv89XBRvgoLZdomwF8VIL
	 luozC0o2vaISDqq1sby+huQaCKnoTuXyPFsCajVq8LF5Nw05yIuVgV2XRD6BT/YnHW
	 fcvecr9kuN+u5nUGdQ/RZTiPFHAgzsiMxUaDyB2ik4JBGcfitzlxYn4l87pCW7A6vA
	 f5+VMughyDMkA==
Message-ID: <sashiko-outbox-199396@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] phy: siflower: Add SF19A2890 USB 2.0 PHY driver
To: "Joseph Telaak" <joseph@telaak.dev>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261104-sf19a2890-usb-phy-v1-2-db0cad937614@telaak.dev>
References: <20261104-sf19a2890-usb-phy-v1-0-db0cad937614@telaak.dev>
 <20261104-sf19a2890-usb-phy-v1-2-db0cad937614@telaak.dev>
Date: Thu, 05 Nov 2026 16:01:59 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBzaWZsb3dl
cjogdW5kZWZpbmVkIEtjb25maWcgZGVwZW5kZW5jeSBNQUNIX1NJRkxPV0VSX01JUFMKLS0KCmNv
bW1pdCBjNDRkNmVkMzExOGVjZWQ3MWZhMmI0ZjA0YjBlNGRkNjE4YmRkZWQzCkF1dGhvcjogQ2h1
YW5ob25nIEd1byA8Z2NoOTgxMjEzQGdtYWlsLmNvbT4KCnBoeTogc2lmbG93ZXI6IEFkZCBTRjE5
QTI4OTAgVVNCIDIuMCBQSFkgZHJpdmVyCgpUaGlzIGNvbW1pdCBhZGRzIGEgZHJpdmVyIGZvciB0
aGUgVVNCIDIuMCBQSFkgb2YgdGhlIFNpZmxvd2VyIFNGMTlBMjg5MCBTb0MsCmhhbmRsaW5nIGl0
cyByZWZlcmVuY2UgY2xvY2ssIHBvd2VyLW9uIGFuZCBQSFkgcmVzZXRzLCBhbmQgc2xlZXAgbW9k
ZSByZWdpc3Rlci4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NpZmxvd2VyL0tjb25maWcg
Yi9kcml2ZXJzL3BoeS9zaWZsb3dlci9LY29uZmlnCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBp
bmRleCAwMDAwMDAwMDAwMDAwLi41YWUxZjgzZDE0NDk0Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBi
L2RyaXZlcnMvcGh5L3NpZmxvd2VyL0tjb25maWcKPiBAQCAtMCwwICsxLDEyIEBACj4gKyMgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQo+ICsKPiArY29uZmlnIFBIWV9TRjE5
QTI4OTBfVVNCCj4gKwl0cmlzdGF0ZSAiU2lmbG93ZXIgU0YxOUEyODkwIFVTQiAyLjAgUEhZIGRy
aXZlciIKPiArCWRlcGVuZHMgb24gTUFDSF9TSUZMT1dFUl9NSVBTIHx8IENPTVBJTEVfVEVTVAoK
W1NldmVyaXR5OiBNZWRpdW1dCklzIE1BQ0hfU0lGTE9XRVJfTUlQUyBkZWZpbmVkIGluIHRoZSBL
Y29uZmlnIHRyZWU/CgpCZWNhdXNlIE1BQ0hfU0lGTE9XRVJfTUlQUyBkb2VzIG5vdCBleGlzdCBp
biBhcmNoL21pcHMvIG9yIGVsc2V3aGVyZSBpbiB0aGUKdHJlZSwgS2NvbmZpZyBldmFsdWF0ZXMg
aXQgdG8gbiBhbmQgcHJldmVudHMgUEhZX1NGMTlBMjg5MF9VU0IgZnJvbSBiZWluZwplbmFibGVk
IHVubGVzcyBDT01QSUxFX1RFU1QgaXMgc2V0LgoKU2hvdWxkIHRoaXMgZGVwZW5kIG9uIE1JUFMg
fHwgQ09NUElMRV9URVNUIChvciBNSVBTX0dFTkVSSUNfS0VSTkVMKSB1bnRpbAp0aGUgcGxhdGZv
cm0gS2NvbmZpZyBzeW1ib2wgaXMgaW50cm9kdWNlZD8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDC
tyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMDQtc2YxOWEyODkwLXVzYi1w
aHktdjEtMC1kYjBjYWQ5Mzc2MTRAdGVsYWFrLmRldj9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
