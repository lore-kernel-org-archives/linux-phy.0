Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35DA0C5DF71
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 08:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ny1PXUJ2Fx9uMyZi1Mqj1WNhjJ7sCsnu7aGwyLl4C28=; b=yDsNRNkE0Jq/Gb
	ux1oItSXTqXdZRvy1RPRNN336Y7dLlIOvuEM+cLTARcVbPuUXjEZd9eZCe8rPG8lO3y4KcQp4TtZh
	kq30kTQLbJPh01leUpCJs5CchUgNTbDWTqL+mJhbbOK7ixtv5oTy4toMdPiEFmNjhBddhafbtGsI0
	O7CYjXfQUVd+d/iR/trTGoD7eul3OUkywNCRL2hA3p7Z4Ppuait2PV7t5lEFwR/ltO4qsrJcfc6iQ
	Vri5DYNgmVAJXJbl5mz5mPX3KvvmIet6uf23GZjbHffqbCDlbNehe9ESKo3BPaitQYlqvOm1jVyz1
	hl78Kg+wTFKwbkdnhfjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUKeK-0000000CaLr-1nTd;
	Tue, 02 Jun 2026 08:39:00 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUKeI-0000000CaLT-1ykX
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 08:38:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9CD2960018;
	Tue,  2 Jun 2026 08:38:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E92081F00898;
	Tue,  2 Jun 2026 08:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780389537;
	bh=snrZ+Yne5ySmBFquNK6XTiD+YCZe8k5Pqw8/c2nWpzo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TNoSIv5vJa4FLXzNbGyWkhzRH9wJbiUYujacoc2VgL7M9aJiNakGmpuiBq/CW7cDr
	 p4THnJ7V1GrZ+D9Acuik5VGnrxDgHWAOZrYsz8tQj+gHv1GSBUExygmRdXLWiGq+dn
	 syyaxPVLXe8SwD7+6GPH0VeaOUlHFO1L82ath3PK/Y6BS/nT2efJ8llPL4Kog/VLbI
	 pQQGhYwoR6NpCh2wEZ2Uc9o+Gd5GgMKQf+0jOIcZnF7oetKfOubt8ZvsEDd1PEdlUi
	 TifIAaRAJcplUU/VFeFY/5qtU+7rpRjOUrvo9w/Na9GTWEnGcpoeRdPRewwNAPm/+h
	 snZKYBnoGVdzg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 2/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
To: "Dimitri Fedrau via B4 Relay" <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Cc: olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260602-tja1145-support-v6-2-0e0ffc8ee63d@liebherr.com>
References: <20260602-tja1145-support-v6-2-0e0ffc8ee63d@liebherr.com>
Date: Tue, 02 Jun 2026 08:38:56 +0000
Message-Id: <20260602083856.E92081F00898@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gSWYgc2V0dGluZyB0
aGUgQ0FOIG9wZXJhdGluZyBtb2RlIGZhaWxzIGR1cmluZyBgdGphMTE0NV9waHlfcG93ZXJfb25g
LCB0aGUgUEhZIGhhcmR3YXJlIGlzIGxlZnQgaW4gbm9ybWFsIG9wZXJhdGluZyBtb2RlIHdpdGhv
dXQgcm9sbGluZyBiYWNrIHRvIHN0YW5kYnkgbW9kZS4KLS0KCmNvbW1pdCA0Yjk5OTM2MTU1MmZj
NGFmMzU2ZmJmOWZiZDNiMWNhNWYyZGQ1OWJmCkF1dGhvcjogRGltaXRyaSBGZWRyYXUgPGRpbWl0
cmkuZmVkcmF1QGxpZWJoZXJyLmNvbT4KCnBoeTogYWRkIGJhc2ljIHN1cHBvcnQgZm9yIE5YUHMg
VEpBMTE0NSBDQU4gdHJhbnNjZWl2ZXIKClRoaXMgY29tbWl0IGFkZHMgYmFzaWMgZHJpdmVyIHN1
cHBvcnQgZm9yIHRoZSBOWFAgVEpBMTE0NSBDQU4gdHJhbnNjZWl2ZXIuCkl0IGVuYWJsZXMgYnJp
bmdpbmcgdGhlIFBIWSB1cCBvciBkb3duIGJ5IHN3aXRjaGluZyBiZXR3ZWVuIG5vcm1hbCBhbmQK
c3RhbmRieSBtb2RlcyB1c2luZyBTUEkgY29tbWFuZHMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9waHktbnhwLXRqYTExNDUuYyBiL2RyaXZlcnMvcGh5L3BoeS1ueHAtdGphMTE0NS5jCj4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi4xZThiZDE2OTc0M2Fi
Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvcGh5L3BoeS1ueHAtdGphMTE0NS5jCgpb
IC4uLiBdCgo+ICtzdGF0aWMgaW50IHRqYTExNDVfcGh5X3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBo
eSkKPiArewo+ICsJc3RydWN0IHJlZ21hcCAqbWFwID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4g
KwlpbnQgcmV0Owo+ICsKPiArCS8qCj4gKwkgKiBTd2l0Y2ggb3BlcmF0aW5nIG1vZGUgdG8gbm9y
bWFsIHdoaWNoIGlzIHRoZSBhY3RpdmUgb3BlcmF0aW5nIG1vZGUuCj4gKwkgKiBJbiB0aGlzIG1v
ZGUsIHRoZSBkZXZpY2UgaXMgZnVsbHkgb3BlcmF0aW9uYWwuCj4gKwkgKi8KPiArCXJldCA9IHJl
Z21hcF91cGRhdGVfYml0cyhtYXAsIFRKQTExNDVfTU9ERV9DVFJMLCBUSkExMTQ1X01PREVfQ1RS
TF9NQywKPiArCQkJCSBUSkExMTQ1X01PREVfQ1RSTF9OT1JNQUwpOwo+ICsJaWYgKHJldCkKPiAr
CQlyZXR1cm4gcmV0Owo+ICsKPiArCS8qCj4gKwkgKiBTd2l0Y2ggdG8gQ0FOIG9wZXJhdGluZyBt
b2RlIGFjdGl2ZSB3aGVyZSB0aGUgUEhZIGNhbiB0cmFuc21pdCBhbmQKPiArCSAqIHJlY2VpdmUg
ZGF0YS4KPiArCSAqLwo+ICsJcmV0dXJuIHJlZ21hcF91cGRhdGVfYml0cyhtYXAsIFRKQTExNDVf
Q0FOX0NUUkwsIFRKQTExNDVfQ0FOX0NUUkxfQ01DLAo+ICsJCQkJICBUSkExMTQ1X0NBTl9DVFJM
X0FDVElWRSk7Cj4gK30KCltTZXZlcml0eTogTWVkaXVtXQpJZiB0aGUgc2Vjb25kIHJlZ21hcF91
cGRhdGVfYml0cyBjYWxsIGZhaWxzIHRvIHNldCBUSkExMTQ1X0NBTl9DVFJMLCBkb2VzCnRoaXMg
bGVhdmUgdGhlIGhhcmR3YXJlIGluIG5vcm1hbCBtb2RlIHdpdGhvdXQgcmV2ZXJ0aW5nIHRvIHN0
YW5kYnk/CgpCZWNhdXNlIHRqYTExNDVfcGh5X3Bvd2VyX29uIHdvdWxkIHJldHVybiBhbiBlcnJv
ciBoZXJlLCB0aGUgUEhZIGZyYW1ld29yawp3aWxsIG5vdCBjb25zaWRlciB0aGUgUEhZIHBvd2Vy
ZWQgb24gYW5kIHdpbGwgbm90IGludm9rZQp0amExMTQ1X3BoeV9wb3dlcl9vZmYgbGF0ZXIuIENv
dWxkIHRoaXMgcmVzdWx0IGluIHRoZSBoYXJkd2FyZSBiZWluZwpwZXJtYW5lbnRseSBsZWZ0IGlu
IGEgaGlnaGVyLXBvd2VyIHN0YXRlPwoKU2hvdWxkIHRoZSBkcml2ZXIgaW50ZXJjZXB0IHRoaXMg
ZXJyb3IgYW5kIGF0dGVtcHQgdG8gcm9sbCBiYWNrClRKQTExNDVfTU9ERV9DVFJMIHRvIFRKQTEx
NDVfTU9ERV9DVFJMX1NUQlkgYmVmb3JlIHJldHVybmluZz8KCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MDItdGphMTE0NS1zdXBw
b3J0LXY2LTAtMGUwZmZjOGVlNjNkQGxpZWJoZXJyLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
