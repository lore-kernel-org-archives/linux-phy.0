Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76508CC6B2F
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzwM76e60r6LvPunhEHl4lzDnbGgRjsJ6796wlNG3Fs=; b=gVKpZdo3WElhAW
	AtX7b6J7W5OPLA/aFpm3ER6H1ZGAMC5Y/iBBqgOh9deVjEaGvUY1HRsXg0vfAUl0MGowNlTEA6iEj
	efInrtCi5JForpbTxECGmmqbo8kfP/ib5XpHUz/WYCFwYVW4xGkkcDJnP0o42gVcbtnOVTxXuTimS
	wXvt0eCYDqNJ6N4cNYCdmzyKSsY8+yGxaTFZOEhwz6y+saZPlmRguWtgaJ6LG1xL8Qjm5bD8dwQkB
	aheAU6ST/TJLeEH65Y18vrE/Olc7etBh9IoteKKAxL3NLULYOFcoNmq/b5OxnIMwqZB0ahchuCnLJ
	uwlmm5vqlnOtLHUipOVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHFdW-0000000H1Rr-0gJq;
	Thu, 15 Oct 2026 07:12:22 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHFdT-0000000H1Ra-2kAR
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 07:12:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B35616053A;
	Thu, 15 Oct 2026 07:12:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3472D1F000C4;
	Thu, 15 Oct 2026 07:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792048338;
	bh=PeEf2gBAJ84bSB+Sb0rjoGligPEZbf1ovs40+FKT9aA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OROQpt5256IpeFMX29eW8YMyEytvYO0EXKSF5BN96S4FhhoUzQyOTflbfJsUnr92l
	 YNRFi8i9LL5lam3D+AWLnRjFOLjYxA+8xVb4MbjFHQoetViUT749wX49gNj9VzPtdK
	 qwv0wZJ5Z/QpcYYrelv2Z8yu7kcVY/C3VX37lVWxNYW3rQsavG76gbtcyd9POIVrHS
	 KnQxFMQTWjTTX06RVCG0WhOlxE7E0pgVhyFIjukqiNMf9pBRjWk6sdiS3XjpmnmskT
	 N715hkO4qYbcpWl9gPbTzcgxoLPqe4p8QF+kyXUmMEexrumaxANgPgs4idlpLETFsC
	 y4CBAr+0b2gtw==
Message-ID: <sashiko-outbox-172383@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: rockchip: snps-pcie3: Raise the SRAM init timeout
To: "Shawn Lin" <shawn.lin@rock-chips.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <1792047775-77954-1-git-send-email-shawn.lin@rock-chips.com>
References: <1792047775-77954-1-git-send-email-shawn.lin@rock-chips.com>
Date: Thu, 15 Oct 2026 07:12:17 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiByb2NrY2hp
cDogMjBtcyBidXN5LXdhaXQgbG9vcCBpbiBTUkFNIGluaXQgcG9sbGluZyBzdGFsbHMgQ1BVCi0t
Cgpjb21taXQgYjNmNTFiYTA2YmExMTgwMjUzOTQ2MGI2YjFiYjE3Yjg1NjRhZGY2MgpBdXRob3I6
IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgpEYXRlOiAgIFRodSBPY3QgMTUg
MDc6MDI6NTUgMjAyNiArMDAwMAoKcGh5OiByb2NrY2hpcDogc25wcy1wY2llMzogUmFpc2UgdGhl
IFNSQU0gaW5pdCB0aW1lb3V0CgpUaGlzIGNvbW1pdCBpbmNyZWFzZXMgdGhlIFNSQU0gaW5pdGlh
bGl6YXRpb24gdGltZW91dCBmb3IgdGhlIFBDSWUzIFBIWSBmcm9tCjUwMHVzIHRvIDIwbXMuIFRo
ZSBsb25nZXIgdGltZW91dCBhY2NvbW1vZGF0ZXMgc2xvd2VyIHBvd2VyLXVwIHNlcXVlbmNlcywK
c3VjaCBhcyB0aG9zZSBhdCBsb3cgdGVtcGVyYXR1cmVzLCB0byBwcmV2ZW50IGZhbHNlIGxvY2sg
ZmFpbHVyZSByZXBvcnRzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5
LXJvY2tjaGlwLXNucHMtcGNpZTMuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hp
cC1zbnBzLXBjaWUzLmMKPiBpbmRleCA0ZThmZmQxNzMwOTZhLi5iYmJmZDZkMmUzNjliIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zbnBzLXBjaWUzLmMK
PiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc25wcy1wY2llMy5jCgpb
IC4uLiBdCgo+IEBAIC0xMjcsNyArMTI5LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9wM3BoeV9y
azM1NjhfaW5pdChzdHJ1Y3Qgcm9ja2NoaXBfcDNwaHlfcHJpdiAqcHJpdikKPiAgCXJldCA9IHJl
Z21hcF9yZWFkX3BvbGxfdGltZW91dChwcml2LT5waHlfZ3JmLAo+ICAJCQkJICAgICAgIEdSRl9Q
Q0lFMzBQSFlfU1RBVFVTMCwKPiAgCQkJCSAgICAgICByZWcsIFNSQU1fSU5JVF9ET05FKHJlZyks
Cj4gLQkJCQkgICAgICAgMCwgNTAwKTsKPiArCQkJCSAgICAgICAwLCBSS19QQ0lFX1NSQU1fSU5J
VF9USU1FT1VUKTsKCltTZXZlcml0eTogTWVkaXVtXQpXaGVuIHRoZSBzbGVlcF91cyBwYXJhbWV0
ZXIgaXMgMCwgcmVnbWFwX3JlYWRfcG9sbF90aW1lb3V0KCkgdXNlcyBjcHVfcmVsYXgoKQphbmQg
dGlnaHQtbG9vcHMgaW5zdGVhZCBvZiBzbGVlcGluZy4KCldpdGggdGhlIHRpbWVvdXQgaW5jcmVh
c2VkIGZyb20gNTAwdXMgdG8gMjAsMDAwdXMgKDIwbXMpLCBkb2VzIHRoaXMgY3JlYXRlIGFuCmV4
Y2Vzc2l2ZWx5IGxvbmcgYnVzeS13YWl0IHRoYXQgY291bGQgc3RhbGwgdGhlIENQVT8KClNpbmNl
IHRoaXMgaW5pdGlhbGl6YXRpb24gcnVucyBkdXJpbmcgZHJpdmVyIHByb2JlIG9yIFBIWSBwb3dl
ci1vbiwgd2hpY2gKaGFwcGVuIHVuZGVyIGEgbXV0ZXggd2hlcmUgc2xlZXBpbmcgaXMgcGVybWl0
dGVkLCB3b3VsZCBpdCBiZSBiZXR0ZXIgdG8gcHJvdmlkZQphIG5vbi16ZXJvIHNsZWVwIGludGVy
dmFsIChsaWtlIDEwMDApIHNvIHRoZSBDUFUgY2FuIGJlIHlpZWxkZWQgZHVyaW5nIHRoaXMKZXh0
ZW5kZWQgMjBtcyB3YWl0PwoKPiAgCWlmIChyZXQpCj4gIAkJZGV2X2VycigmcHJpdi0+cGh5LT5k
ZXYsICIlczogbG9jayBmYWlsZWQgMHgleCwgY2hlY2sgaW5wdXQgcmVmY2xrIGFuZCBwb3dlciBz
dXBwbHlcbiIsCj4gIAkJICAgICAgIF9fZnVuY19fLCByZWcpOwoKWyAuLi4gXQoKPiBAQCAtMTg3
LDExICsxODksMTEgQEAgc3RhdGljIGludCByb2NrY2hpcF9wM3BoeV9yazM1ODhfaW5pdChzdHJ1
Y3Qgcm9ja2NoaXBfcDNwaHlfcHJpdiAqcHJpdikKPiAgCXJldCA9IHJlZ21hcF9yZWFkX3BvbGxf
dGltZW91dChwcml2LT5waHlfZ3JmLAo+ICAJCQkJICAgICAgIFJLMzU4OF9QQ0lFM1BIWV9HUkZf
UEhZMF9TVEFUVVMxLAo+ICAJCQkJICAgICAgIHJlZywgUkszNTg4X1NSQU1fSU5JVF9ET05FKHJl
ZyksCj4gLQkJCQkgICAgICAgMCwgNTAwKTsKPiArCQkJCSAgICAgICAwLCBSS19QQ0lFX1NSQU1f
SU5JVF9USU1FT1VUKTsKCltTZXZlcml0eTogTWVkaXVtXQpTaW1pbGFybHkgaGVyZSwgZm9yIHRo
ZSBSSzM1ODggaW5pdCBwYXRoLCBkb2VzIGxlYXZpbmcgdGhlIHNsZWVwIGludGVydmFsIGF0IDAK
bWVhbiB3ZSBjb3VsZCBzcGVuZCB1cCB0byAyMG1zIGJ1c3ktd2FpdGluZz8KCj4gIAlyZXQgfD0g
cmVnbWFwX3JlYWRfcG9sbF90aW1lb3V0KHByaXYtPnBoeV9ncmYsCj4gIAkJCQkJUkszNTg4X1BD
SUUzUEhZX0dSRl9QSFkxX1NUQVRVUzEsCj4gIAkJCQkJcmVnLCBSSzM1ODhfU1JBTV9JTklUX0RP
TkUocmVnKSwKPiAtCQkJCQkwLCA1MDApOwo+ICsJCQkJCTAsIFJLX1BDSUVfU1JBTV9JTklUX1RJ
TUVPVVQpOwoKW1NldmVyaXR5OiBNZWRpdW1dCkFuZCBzaW5jZSB0aGlzIHNlY29uZCBwb2xsIHJ1
bnMgaW1tZWRpYXRlbHkgYWZ0ZXIgdGhlIGZpcnN0IG9uZSwgY291bGQgd2UgZW5kCnVwIGJ1c3kt
d2FpdGluZyBmb3IgdXAgdG8gNDBtcyBpbiB0b3RhbCBpZiBib3RoIGxhbmVzIGFyZSBzbG93IHRv
IGxvY2s/Cgo+ICAJaWYgKHJldCkKPiAgCQlkZXZfZXJyKCZwcml2LT5waHktPmRldiwgImxvY2sg
ZmFpbGVkIDB4JXgsIGNoZWNrIGlucHV0IHJlZmNsayBhbmQgcG93ZXIgc3VwcGx5XG4iLAo+ICAJ
CQlyZWcpOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8xNzkyMDQ3Nzc1LTc3OTU0LTEtZ2l0LXNlbmQtZW1haWwtc2hhd24ubGluQHJvY2st
Y2hpcHMuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
