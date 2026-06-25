Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29DFACDE001
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 18:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxop5ysoAfNu4haBqIi34IGtvdQx+4OJ1panLzvhRKo=; b=Hjch+AU89mIcit
	WNmnlzmxBaWxBmvAdrcx5vA2tlJwKnmAYhlg6RP37bAwczgKeFrfMOL+53Ph1S/J9jWHxRFvpNTja
	/tYp/uAqGUBoyS471R9sy2Ac8MRmV7H2XybEjqqO0e3+keJWFVeWjACjWTuedEZCyiSdyRIq0mAM1
	QOPYPrAx2v5cbxcy8biUCRuY2nmj/42MUMb8zpKM/tReVoUEEoZn7Fp85/JzIG8HngnoxqQ9UDHGV
	o4f2UV+OJbb7XiLqtmdTNFShRtt5ixLKz7FQNM3UTGQYFBCIKNuUL1aE2ETFZfG9AuQ1ocnaiK/z8
	vcrImoV8+dnXLwokMBfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoTe-00000009f8r-3oL8;
	Thu, 25 Jun 2026 18:07:02 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoTd-00000009f8l-3c4N
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 18:07:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4D067600AE;
	Thu, 25 Jun 2026 18:07:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A26CA1F000E9;
	Thu, 25 Jun 2026 18:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782410821;
	bh=EaZbnQOn0MPQvWZ6F+LS+fFsMM8oBssvZ/nEnaaaFHw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bzRk+pVUBFClFeonxzXcMhYFVdExZNrPnrnu6Ap+zv/OWxvCIVik7//dUx5jG/zCG
	 Gtv9DwUrHKGpedvdWVHEoDiWj8uA/d7c9mpPbX46dNTc4gPgjBeBtNl+bth0NH8PSa
	 vK7PVdQXFxeAvAqtfnUQNA4LHair3LGDIPSFfxox7ajOfHB12DC5QbUrt/DgKFyLXC
	 n2k8AHwtNd4LFHfhUKEnxHKk7pY1/gfUNqHl8ZhH7Ydm6zZ89S1d9eL5RJVO9T9llK
	 0srsQLNUX07MH54M1Ns/lu9n+vHjoVTpXMdysUXgcR24bxcXjzIli9nMUXcZQxL34D
	 WyEdiBjLLeRpA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 08/27] phy: rockchip: usbdp: Limit DP lane count to
 muxed lanes
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260625-rockchip-usbdp-cleanup-v7-8-38eb3cf654fd@collabora.com>
References: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
 <20260625-rockchip-usbdp-cleanup-v7-8-38eb3cf654fd@collabora.com>
Date: Thu, 25 Jun 2026 18:07:00 +0000
Message-Id: <20260625180700.A26CA1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSB0YXJnZXQgcGF0
Y2ggaW50cm9kdWNlcyBhIHZhbGlkYXRpb24gY2hlY2sgYWdhaW5zdCBgdWRwaHktPmRwX2xhbmVz
YCwgYnV0IHRoaXMgc3RydWN0IG1lbWJlciBkb2VzIG5vdCBleGlzdCBhdCB0aGlzIHBvaW50IGlu
IHRoZSBwYXRjaCBzZXJpZXMsIGNhdXNpbmcgYSBmYXRhbCBidWlsZCBlcnJvci4gRXZlbiBpZiBp
dCBkaWQgZXhpc3QsIGl0IGlzIG5vdCBpbml0aWFsaXplZCwgbGVhZGluZyB0byBwZXJtYW5lbnQg
dmFsaWRhdGlvbiBmYWlsdXJlLgotLQoKY29tbWl0IDRkMzE5NjUyY2NmZTNiMWRiNTMxOTNjMDZh
OTQ3MzMxOTFhY2YzYmMKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNo
ZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBMaW1pdCBEUCBsYW5lIGNv
dW50IHRvIG11eGVkIGxhbmVzCgpUaGlzIGNvbW1pdCBhZGRzIGEgY2hlY2sgdG8gbGltaXQgdGhl
IERQIGxhbmUgY291bnQgdG8gdGhlIG51bWJlciBvZiBtdXhlZApsYW5lcyBhdmFpbGFibGUgb24g
dGhlIFBIWSwgcHJldmVudGluZyB0aGUgRFAgY29udHJvbGxlciBmcm9tIHJlcXVlc3RpbmcKNCBs
YW5lcyB3aGVuIHJlc3RyaWN0ZWQgdG8gMi4KCkNsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtcGh5LzIwMjYwNjEyMTY1NTQ2Ljk4RTFGMUYwMDBFOUBzbXRwLmtlcm5lbC5vcmcv
Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAu
YyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggMTIx
ZGQ3OGQ4YzE2MS4uMjMyNGY5MDUwZjYzOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC11c2JkcC5jCj4gQEAgLTExMzIsNiArMTEzMiw5IEBAIHN0YXRpYyBpbnQgcmtf
dWRwaHlfZHBfcGh5X3ZlcmlmeV9saW5rX3JhdGUoc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwKPiAg
c3RhdGljIGludCBya191ZHBoeV9kcF9waHlfdmVyaWZ5X2xhbmVzKHN0cnVjdCBya191ZHBoeSAq
dWRwaHksCj4gIAkJCQkJc3RydWN0IHBoeV9jb25maWd1cmVfb3B0c19kcCAqZHApCj4gIHsKPiAr
CWlmIChkcC0+bGFuZXMgPiB1ZHBoeS0+ZHBfbGFuZXMpCj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4g
KwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgYnJlYWsgdGhlIGJ1aWxkIGF0IHRoaXMgcG9p
bnQgaW4gdGhlIHBhdGNoIHNlcmllcz8KCkl0IGFwcGVhcnMgdGhhdCB0aGUgZHBfbGFuZXMgbWVt
YmVyIG9mIHN0cnVjdCBya191ZHBoeSBpcyBub3QgeWV0IGRlY2xhcmVkCm9yIGluaXRpYWxpemVk
IGF0IHRoaXMgcG9pbnQgaW4gdGhlIHRyZWUuIFRoaXMgd291bGQgY2F1c2UgYSBjb21waWxhdGlv
bgpmYWlsdXJlIGFuZCBicmVhayBnaXQgYmlzZWN0LiBBZGRpdGlvbmFsbHksIGlmIHRoZSBmaWVs
ZCB3ZXJlIHByZXNlbnQgYnV0CnVuaW5pdGlhbGl6ZWQsIGl0IHdvdWxkIGV2YWx1YXRlIHRvIDAg
YW5kIGNhdXNlIHRoaXMgY2hlY2sgdG8gdW5jb25kaXRpb25hbGx5CnJldHVybiAtRUlOVkFMLCBi
cmVha2luZyBEaXNwbGF5UG9ydCBjb25maWd1cmF0aW9uLgoKSSB1bmRlcnN0YW5kIHRoaXMgaXMg
cmVzb2x2ZWQgbGF0ZXIgaW4gdGhlIHBhdGNoIHNlcmllcyBieSBjb21taXQKMDIwMDNjMDkwNzA1
OTFhNyAoInBoeTogcm9ja2NoaXA6IHVzYmRwOiBTdXBwb3J0IHNpbmdsZS1sYW5lIERQIiksIHdo
aWNoCmFkZHMgYW5kIGNvcnJlY3RseSBpbml0aWFsaXplcyB0aGUgZHBfbGFuZXMgc3RydWN0IG1l
bWJlci4gQ291bGQgdGhlIHN0cnVjdAptZW1iZXIgYWRkaXRpb24gYmUgbW92ZWQgdG8gdGhpcyBj
b21taXQgdG8gZW5zdXJlIHRoZSBidWlsZCByZW1haW5zIGZ1bGx5CmJpc2VjdGFibGU/Cgo+ICAJ
c3dpdGNoIChkcC0+bGFuZXMpIHsKPiAgCWNhc2UgMToKPiAgCWNhc2UgMjoKCi0tIApTYXNoaWtv
IEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MjUtcm9j
a2NoaXAtdXNiZHAtY2xlYW51cC12Ny0wLTM4ZWIzY2Y2NTRmZEBjb2xsYWJvcmEuY29tP3BhcnQ9
OAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
