Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78040C5DF66
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 02:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bao+EQSIrr03eYOnuvrDC7XDaE7UZTfxht5nkGlYJc=; b=Uz74nArCWLvfqp
	z3rqdwrwSMxn1iAtIZNlJ1CY8nyRd2PLycbbLw+hlpemkOAYqwn14HydRo6+QNJ8enGrGVTOKNxpT
	I8+IovVVwohpPB1h7TCVshXdT8XY/P22iHaSyWza1+Hc3xd9PMrJrvtbtZ+o0vF0WgOtfBldmw5/L
	2+E18cIZXdszrgWPcT6Hxv6/gu3lmPI5FMJw0X+vtqujW2a4Cb/q19SV6RilOm55fTijKTlivNL8R
	jZEf2ZuxMeGo2APdFqQCL/L5x2+W4yEGUON8UUv2gCdmCYvLy0TtXHnrcHrYiREQH9OIukkHe91Hj
	G4khSkDsJSFWX+HDXZGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuhTH-00000001qIP-3sZg;
	Fri, 14 Aug 2026 02:16:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuhTE-00000001qHz-1Lxw
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 02:16:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 79301600AD;
	Fri, 14 Aug 2026 02:16:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B83721F000E9;
	Fri, 14 Aug 2026 02:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786673791;
	bh=9RonhfSzlqrxdxQRcxRKzAuTLRsdZgWjKvsDGN+YiNU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iSyJmGhgcZKtXCftaXLaOmYtu5MUsYRPuRIfJm7PNI9t8X71iOM3ze/QrT50nWA7X
	 CWMzEYsB23iwCEosG06ilw6u+//Wi3Vv2Jp8490PdiRjDPYTJJR7sYymFs2/06m1nE
	 xIh2btrvxTS6duzrh8ZO1CVfBgGIgcW4bhG0/d9AsphSvssIX0h2aLbmXAxIsWdtQl
	 YKqkTQeIpDxww5KMOudvXqBjMjZ6mNc2k9K0g+NNQUQF4SZm7qTpUd2Y3lmB2Re4+K
	 MxT+qTcOO9UX3+FxBMh2Ray3yPuazLDwjG3p2p4IGkEH/DilAbEl02P7tfxupJkAQl
	 U6qNUhQvzqHyA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 07/38] phy: rockchip: usbdp: Keep clocks running on
 PHY re-init
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-7-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
 <20260813-rockchip-usbdp-cleanup-v14-7-b5ad9c68fa11@collabora.com>
Date: Fri, 14 Aug 2026 02:16:25 +0000
Message-Id: <20260814021630.B83721F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgYHJrX3VkcGh5X2RwX3BoeV9jb25maWd1cmVgIGZ1bmN0aW9uIGFjY2Vzc2Vz
IHNoYXJlZCBzdGF0ZSBhbmQgcGVyZm9ybXMgaGFyZHdhcmUgcmVnaXN0ZXIgb3BlcmF0aW9ucyB3
aXRob3V0IGhvbGRpbmcgdGhlIGRyaXZlci1sZXZlbCBgdWRwaHktPm11dGV4YC4KLS0KCi0tLSBQ
YXRjaCBbN106IFtQQVRDSCB2MTQgMDcvMzhdIHBoeTogcm9ja2NoaXA6IHVzYmRwOiBLZWVwIGNs
b2NrcyBydW5uaW5nIG9uIFBIWSByZS1pbml0IC0tLQpjb21taXQgZDVkY2NiZjI3MDYwODRjMmFh
NzJjMGI4Yzk0ZmY0YmYxNmJmZTQ2ZgpBdXRob3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3Rp
YW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hpcDogdXNiZHA6IEtlZXAgY2xv
Y2tzIHJ1bm5pbmcgb24gUEhZIHJlLWluaXQKClRoaXMgY29tbWl0IGF2b2lkcyBkaXNhYmxpbmcg
YW5kIHJlLWVuYWJsaW5nIGNsb2NrcyBkdXJpbmcgUEhZIG1vZGUgY2hhbmdlcy4KSXQgZGlyZWN0
bHkgY2FsbHMgcmtfdWRwaHlfaW5pdCgpIGluc3RlYWQgb2YgcmtfdWRwaHlfZGlzYWJsZSgpIGFu
ZApya191ZHBoeV9zZXR1cCgpIHRvIHByZXZlbnQgdW5uZWNlc3NhcnkgZGVsYXlzLgoKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IGluZGV4IDZjYjlmNmI0ZGJm
NmQuLmUzZjVhMjZjODc2YTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5
LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtdXNiZHAuYwo+IEBAIC05ODcsOCArOTg3LDcgQEAgc3RhdGljIGludCBya191ZHBoeV9wb3dl
cl9vbihzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5LCB1OCBtb2RlKQo+ICAJCWlmICh1ZHBoeS0+bW9k
ZSA9PSBVRFBIWV9NT0RFX0RQKQo+ICAJCQlya191ZHBoeV91M19wb3J0X2Rpc2FibGUodWRwaHks
IHRydWUpOwo+ICAKPiAtCQlya191ZHBoeV9kaXNhYmxlKHVkcGh5KTsKPiAtCQlyZXQgPSBya191
ZHBoeV9zZXR1cCh1ZHBoeSk7Cj4gKwkJcmV0ID0gcmtfdWRwaHlfaW5pdCh1ZHBoeSk7Cj4gIAkJ
aWYgKHJldCkKPiAgCQkJcmV0dXJuIHJldDsKPiAgCQl1ZHBoeS0+bW9kZV9jaGFuZ2UgPSBmYWxz
ZTsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMg
cGF0Y2gsIGJ1dCB3aGlsZSByZXZpZXdpbmcgdGhpcyBmaWxlIEkKbm90aWNlZCBhIHBvdGVudGlh
bCByYWNlIGNvbmRpdGlvbiBpbiBya191ZHBoeV9kcF9waHlfY29uZmlndXJlKCkuCgpDYW4gdGhp
cyBjb3JydXB0IGhhcmR3YXJlIHN0YXRlIGR1cmluZyBhIGNvbmN1cnJlbnQgVHlwZS1DIGV2ZW50
PwpMb29raW5nIGF0IHJrX3VkcGh5X2RwX3BoeV9jb25maWd1cmUoKSwgaXQgYWNjZXNzZXMgc2hh
cmVkIHN0YXRlIHdpdGhvdXQKaG9sZGluZyB0aGUgdWRwaHktPm11dGV4OgoKZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmM6cmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgp
IHsKCXN0cnVjdCBya191ZHBoeSAqdWRwaHkgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKCS4uLgoJ
CWZvciAoaSA9IDA7IGkgPCB1ZHBoeS0+bGFuZXM7IGkrKykgewoJCQlsYW5lID0gdWRwaHktPmRw
X2xhbmVfc2VsW2ldOwoJCQlzd2l0Y2ggKHVkcGh5LT5saW5rX3JhdGUpIHsKCQkJY2FzZSAxNjIw
OgoJCQljYXNlIDI3MDA6CgkJCQlyZWdtYXBfdXBkYXRlX2JpdHModWRwaHktPnBtYV9yZWdtYXAs
CgkJCQkJCSAgIFRSU1ZfQU5BX1RYX0NMS19PRkZTRVRfTihsYW5lKSwKCQkJCQkJICAgTE5fQU5B
X1RYX1NFUl9UWENMS19JTlYsCgkJCQkJCSAgIEZJRUxEX1BSRVAoTE5fQU5BX1RYX1NFUl9UWENM
S19JTlYsCgkJCQkJCSAgIHVkcGh5LT5sYW5lX211eF9zZWxbbGFuZV0pKTsKCS4uLgp9CgpUaGUg
VHlwZS1DIGZyYW1ld29yayBpbnZva2VzIHJrX3VkcGh5X29yaWVuX3N3X3NldCgpIG9yCnJrX3Vk
cGh5X3R5cGVjX211eF9zZXQoKSBhc3luY2hyb25vdXNseS4gVGhlc2UgZnVuY3Rpb25zIGFjcXVp
cmUKdWRwaHktPm11dGV4IGFuZCBvdmVyd3JpdGUgdGhlIHVkcGh5LT5kcF9sYW5lX3NlbCBhbmQg
dWRwaHktPmxhbmVfbXV4X3NlbAphcnJheXMsIGFuZCBjYW4gdHJpZ2dlciBhIFBIWSByZS1pbml0
aWFsaXphdGlvbi4KCkNvbmN1cnJlbnRseSwgdGhlIERSTSBEUCBmcmFtZXdvcmsgY2FuIGludm9r
ZSBya191ZHBoeV9kcF9waHlfY29uZmlndXJlKCksCndoaWNoIHJlYWRzIHRoZXNlIGFycmF5cyBh
bmQgbW9kaWZpZXMgdGhlIFBIWSBoYXJkd2FyZSBwbWFfcmVnbWFwIGxvY2tsZXNzbHkuCgpJZiBh
IFR5cGUtQyBkZXZpY2UgaXMgcGx1Z2dlZCBpbiB3aGlsZSB0aGUgRFAgZnJhbWV3b3JrIGlzIHBl
cmZvcm1pbmcgbGluawp0cmFpbmluZywgY291bGQgd3JpdGluZyBjb25maWd1cmF0aW9uIHRvIHRo
ZSBpbmNvcnJlY3QgUEhZIGxhbmVzIGR1ZSB0byBhCnBhcnRpYWxseSB1cGRhdGVkIGxhbmUgbWFw
cGluZyBhcnJheSBicmVhayBEaXNwbGF5UG9ydCBsaW5rIHRyYWluaW5nIG9yCmludGVybGVhdmUg
cmVnaXN0ZXIgd3JpdGVzIHdpdGggYSBjb25jdXJyZW50IFBIWSByZXNldD8KCi0tIApTYXNoaWtv
IEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MTMtcm9j
a2NoaXAtdXNiZHAtY2xlYW51cC12MTQtMC1iNWFkOWM2OGZhMTFAY29sbGFib3JhLmNvbT9wYXJ0
PTcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
