Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24926C624A5
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 07:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wiOr3zLH11bgCR7XyQEGlO0/tSUA2kLSDr5xPjP7xlM=; b=BGj3RBhfcwbGbr
	SH/9p4cHuYzqYihToPqs1BBKYdyI4RYClxh2H8rF2CqAzGarB0MKfZYpPvYP4Sacr/Iq6M2kY0YEL
	50ZzEfYNa2ES0LEo7jP+TkWiLUM0Th+MRBJSr0dm9mg4MZQhwyk/oOpnlpWZbRKCdZw2iIsSbkna9
	DkpLmj5KhjgLV1gQTaU+5Gi1ygVNyucdDVXjmSQKYk2rZHRvwYosPC727IeGH7xMH/GKvhkdn8lwR
	cJfJBDyXRGM5cxmNWhQZfglboZtRSUwsB7XxQg1eChJ6jYBZ4VSzw0K+LsoxXeJM0a2xKwTSmpNqs
	1rkBKz1lIxGzot9VBwhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wdj-00000008kfl-3WoW;
	Mon, 31 Aug 2026 07:41:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wdj-00000008kfe-0S6z
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 07:41:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 233AA60120;
	Mon, 31 Aug 2026 07:41:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B49A1F000E9;
	Mon, 31 Aug 2026 07:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788162069;
	bh=hAQf/CQngepy0W8MxHagRxfGYVAMUeLDnXbzOXAWQdA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=e0H0Ckmpk7b3Ki7hs6f7+mKvRhJA+xZCcJ0a5w5JDJNfo8pzoqa67c5J5t4y35eWL
	 7J/97+hoLgmgg8NDPlNRQl87ny+LS0Riw0uwT8x/Ljfd54c5QPtf36yOmILuhyeiLt
	 525ipmyMPqASYB/9Zn7tN8mnR7Xqkiy1rz9jzGt8rERmMgbrKk/95rKeRBFejaVxo8
	 6rdR1YyBnFAuZofnTkYCwH5Qmu9WqE2jdX6PGNUDp9L6AYeyto3SFg7E81H+1BeFfN
	 5oPU8dFqu/Y3RxKzfPvsE+iWfZN7eYkeB/32Ito2D/odI0rN8w+x/j2y/ajXlknRsl
	 oQLdvfqYSFbkA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: shikra: Add PCIe PHY and
 controller nodes
To: "Sushrut Shree Trivedi" <sushrut.trivedi@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260831-shikra-upstream-v2-5-406661d75afa@oss.qualcomm.com>
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
 <20260831-shikra-upstream-v2-5-406661d75afa@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 07:41:08 +0000
Message-Id: <20260831074109.4B49A1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBgaW50ZXJydXB0
LW1hcGAgcHJvcGVydHkgaXMgbWFsZm9ybWVkIGJlY2F1c2UgaXQgcHJvdmlkZXMgYW4gaW5jb3Jy
ZWN0IG51bWJlciBvZiBjZWxscyBmb3IgdGhlIHBhcmVudCBpbnRlcnJ1cHQgc3BlY2lmaWVyLgot
IFtMb3ddIFRoZSBgcGNpZV9waHlgIG5vZGUgdmlvbGF0ZXMgdGhlICdxY29tLHNoaWtyYS1xbXAt
Z2VuMngxLXBjaWUtcGh5JyBEVCBiaW5kaW5nIHNjaGVtYSBieSBkZWZpbmluZyA2IGNsb2NrcyBh
bmQgdXNpbmcgYW4gaW52YWxpZCBjbG9jayBuYW1lICdwaHlfYXV4Jy4KLS0KCmNvbW1pdCA2YjJh
MjViNTdiNTM2MGY4MDhhY2ViNDA3ZDA5YzgxZGY2ZjRjZDcxCkF1dGhvcjogU3VzaHJ1dCBTaHJl
ZSBUcml2ZWRpIDxzdXNocnV0LnRyaXZlZGlAb3NzLnF1YWxjb21tLmNvbT4KCmFybTY0OiBkdHM6
IHFjb206IHNoaWtyYTogQWRkIFBDSWUgUEhZIGFuZCBjb250cm9sbGVyIG5vZGVzCgpUaGlzIGNv
bW1pdCBhZGRzIHRoZSBQQ0llIGNvbnRyb2xsZXIgYW5kIFBIWSBub2RlcyBmb3IgdGhlIHNpbmds
ZSA1R1QvcyB4MQpsaW5rIGluc3RhbmNlIG9uIFNoaWtyYS4gSXQgbGltaXRzIHRoZSBtYXhpbXVt
IGxpbmsgc3BlZWQgdG8gUENJZSBHZW4yIHRvCm1hdGNoIHRoZSBQSFkgY2FwYWJpbGl0aWVzIGFu
ZCBhdm9pZCBsaW5rLXVwIGZhaWx1cmVzLgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9xY29tL3NoaWtyYS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NoaWtyYS5k
dHNpCj4gaW5kZXggOTJkMjJlM2I2OTMxYy4uOWUxODEwYzcxNTA5OSAxMDA2NDQKPiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vc2hpa3JhLmR0c2kKClsgLi4uIF0KCj4gQEAgLTEwMTMsNiArMTAxMywxNjMg
QEAgdHNlbnMwOiB0aGVybWFsLXNlbnNvckA0NDExMDAwIHsKPiAgCQkJI3RoZXJtYWwtc2Vuc29y
LWNlbGxzID0gPDE+Owo+ICAJCX07Cj4gIAo+ICsJCXBjaWU6IHBjaWVANDVlODAwMCB7Cj4gKwkJ
CWRldmljZV90eXBlID0gInBjaSI7Cj4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSxzaGlrcmEtcGNp
ZSI7CgpbIC4uLiBdCgo+ICsJCQlpbnRlcnJ1cHQtbWFwID0gPDAgMCAwIDEgJmludGMgMCAwIDAg
NDk5IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJCTwwIDAgMCAyICZpbnRjIDAgMCAwIDUw
MCBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJCQk8MCAwIDAgMyAmaW50YyAwIDAgMCA1MDEg
SVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkJPDAgMCAwIDQgJmludGMgMCAwIDAgNTAyIElS
UV9UWVBFX0xFVkVMX0hJR0g+OwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgaW50ZXJydXB0
LW1hcCBwcm92aWRlIGFuIGluY29ycmVjdCBudW1iZXIgb2YgY2VsbHMgZm9yIHRoZSBwYXJlbnQK
aW50ZXJydXB0IHNwZWNpZmllcj8KClRoZSBrZXJuZWwgcGFyc2VyIGV4cGVjdHMgNCBjZWxscyBm
b3IgdGhlIHBhcmVudCBpbnRlcnJ1cHQgc3BlY2lmaWVyIGJlY2F1c2UKJmludGMgaGFzICNpbnRl
cnJ1cHQtY2VsbHMgPSA8ND4gYW5kIGxhY2tzICNhZGRyZXNzLWNlbGxzIChkZWZhdWx0aW5nIHRv
IDAKZm9yIHRoZSBwYXJlbnQgYWRkcmVzcykuIEhvd2V2ZXIsIDUgY2VsbHMgKDAgMCAwIDQ5OSBJ
UlFfVFlQRV9MRVZFTF9ISUdIKQphcmUgcHJvdmlkZWQgaGVyZS4KCldpbGwgdGhpcyBtaXNhbGln
bm1lbnQgY2F1c2UgcGhhbmRsZSByZXNvbHV0aW9uIHRvIGZhaWwgZm9yIHN1YnNlcXVlbnQKZW50
cmllcywgcGFyc2luZyBjZWxscyBsaWtlIDIgb3IgNCBhcyBwaGFuZGxlcyBhbmQgYnJlYWtpbmcg
UENJZSBpbnRlcnJ1cHQKcm91dGluZyBvbiB0aGlzIHBsYXRmb3JtPwoKWyAuLi4gXQoKPiArCQlw
Y2llX3BoeTogcGh5QDQ1ZWUwMDAgewo+ICsJCQljb21wYXRpYmxlID0gInFjb20sc2hpa3JhLXFt
cC1nZW4yeDEtcGNpZS1waHkiOwo+ICsJCQlyZWcgPSA8MHgwIDB4MDQ1ZWUwMDAgMHgwIDB4MTAw
MD47Cj4gKwo+ICsJCQljbG9ja3MgPSA8JmdjYyBHQ0NfUENJRV9BVVhfQ0xLPiwKPiArCQkJCSA8
JmdjYyBHQ0NfUENJRV9DRkdfQUhCX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0NDX1BDSUVfQ0xLUkVG
X0VOPiwKPiArCQkJCSA8JmdjYyBHQ0NfUENJRV9SQ0hOR19QSFlfQ0xLPiwKPiArCQkJCSA8Jmdj
YyBHQ0NfUENJRV9QSVBFX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0NDX1BDSUVfU0xFRVBfQ0xLPjsK
PiArCQkJY2xvY2stbmFtZXMgPSAiYXV4IiwKPiArCQkJCSAgICAgICJjZmdfYWhiIiwKPiArCQkJ
CSAgICAgICJyZWYiLAo+ICsJCQkJICAgICAgInJlZmdlbiIsCj4gKwkJCQkgICAgICAicGlwZSIs
Cj4gKwkJCQkgICAgICAicGh5X2F1eCI7CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlzIG5vZGUg
dmlvbGF0ZSB0aGUgcWNvbSxzaGlrcmEtcW1wLWdlbjJ4MS1wY2llLXBoeSBEVCBiaW5kaW5nIHNj
aGVtYT8KClRoZSBzY2hlbWEgcWNvbSxzYzgyODB4cC1xbXAtcGNpZS1waHkueWFtbCBsaW1pdHMg
dGhlIG1heGltdW0gbnVtYmVyIG9mIGNsb2Nrcwp0byA1IGZvciBxY29tLHNoaWtyYS1xbXAtZ2Vu
MngxLXBjaWUtcGh5IGFuZCBkb2VzIG5vdCBhbGxvdyB0aGUgcGh5X2F1eCBjbG9jawpuYW1lLgoK
V2hpbGUgdGhlIGRyaXZlciBvcHRpb25hbGx5IGZldGNoZXMgdGhpcyBjbG9jayBzbyB0aGUgaGFy
ZHdhcmUgc3RpbGwgZnVuY3Rpb25zLAp3aWxsIHRoaXMgY2F1c2UgZHRic19jaGVjayBzY2hlbWEg
dmFsaWRhdGlvbiB0byBmYWlsPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgzMS1zaGlrcmEtdXBzdHJlYW0tdjItMC00MDY2NjFk
NzVhZmFAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
