Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CDE3C531D0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 18:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bshPNpmShKoIO8f8E5VSogNhIDNspcBhwuufY+6zALc=; b=akK46sqTnDEBho
	m8PxIXc+eja4hf5d2SKJcl+GEnhoGez3kjytGKl6+iCjz1uSTsVTEbQRrIEpMEvWjbHVWlsUz9+lS
	9LMZmHjqtsqvmXGZMl/9f5Rp+PlwRR4tClmRG6/RlrnSyn7ZdyUcZntpmEfqumCX4H8XCqJt/UxSy
	Yl13YXtZUbv17F04GWvCLOK4Bi6OqfalOggW5/VqXOE/Eznfhqlof513HA+EvpOAAJbP0rndhBgDu
	iu5SvdnWX25betFnif7X2bGNQFZFHq0YuG4ZgP96uX+DL/AEWztq497ymxsqsODUbx6gRM0+u7AGO
	VwwNdMOq7doYFVC7HXoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQRd-00000003hhI-3diX;
	Mon, 27 Jul 2026 18:52:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQRc-00000003hh1-44Sq
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 18:52:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3CEAE60A5E;
	Mon, 27 Jul 2026 18:52:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60FD51F000E9;
	Mon, 27 Jul 2026 18:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785178375;
	bh=TrMTw9dkljkOMikaGC9bKlvRQ+dvyW6FxMJ4sJKjlUs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=I4aWaWfCmPLGl5ChgyfGxwzFTYAq3PZuRaa1r/zbQYzrT92Miu988DPXsQWcriaX0
	 gmR5jCMDQmArmL2+RS9F/KlIQFISxAtkHbtphGFZ38StjVP0V3zEN19WnOGZcWdMv8
	 m0CLOxvEXAC7H37GzfH3EPBHzqTcwqPKkIQYF6JXLV9/JEstsl8T8V3t6O7KPuBGO3
	 N6OS3p+lrmIQf2nlZKsULa70aL3QZGbj7b4+qLo+s0SFy9M95ZnnCW+Evl1PH4pfMx
	 z7l8QKSAEt48BNzf+hLBWj6LBcvUIfqLL1QPDbFPxDaldwVFh3+zzONtHX3OkMSVHP
	 4wEAN2tBPv2KA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 05/12] clk: zte: Add Clock registration
 infrastructure
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, lee@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, mfd@lists.linux.dev
In-Reply-To: <20260727-zx29clk-v8-5-7a107b00f1dd@gmail.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-5-7a107b00f1dd@gmail.com>
Date: Mon, 27 Jul 2026 18:52:54 +0000
Message-Id: <20260727185255.60FD51F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIElEIHNhbml0
eSBjaGVjayBpbmNvcnJlY3RseSB0cmlnZ2VycyBhIFdBUk5fT04gYW5kIGZhaWxzIHRoZSBwcm9i
ZSBpZiB0aGUgZHJpdmVyIGRvZXMgbm90IGV4cG9ydCBhbnkgY2xvY2tzLgotLQoKLS0tIFBhdGNo
IFs1XTogW1BBVENIIHY4IDA1LzEyXSBjbGs6IHp0ZTogQWRkIENsb2NrIHJlZ2lzdHJhdGlvbiBp
bmZyYXN0cnVjdHVyZSAtLS0KY29tbWl0IGE4NDAxODQ5ODA5MWRmMzUwNzk2YWFkOWQ3MTczNTg4
YTEwZmE3ZWYKQXV0aG9yOiBTdGVmYW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwu
Y29tPgoKY2xrOiB6dGU6IEFkZCBDbG9jayByZWdpc3RyYXRpb24gaW5mcmFzdHJ1Y3R1cmUKClRo
aXMgY29tbWl0IGFkZHMgY29tbW9uIGNsb2NrIHJlZ2lzdHJhdGlvbiBpbmZyYXN0cnVjdHVyZSBh
bmQgaGVscGVycyBmb3IKWlRFIFNvQ3MuIEl0IGluY2x1ZGVzIHN1cHBvcnQgZm9yIHJlZ2lzdGVy
aW5nIFBMTHMsIG11eGVzLCBkaXZpZGVycywgYW5kCmdhdGVzLCBoYW5kbGluZyBib3RoIGV4cG9y
dGVkIGFuZCBpbnRlcm5hbCBjbG9ja3MuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay96dGUv
Y2xrLXp4LmMgYi9kcml2ZXJzL2Nsay96dGUvY2xrLXp4LmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmM5ZTkwNDhkM2FkZTMKPiAtLS0gL2Rldi9udWxsCj4g
KysrIGIvZHJpdmVycy9jbGsvenRlL2Nsay16eC5jClsgLi4uIF0KPiAraW50IHp4X2Nsa19jb21t
b25fcHJvYmUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm9mX25vZGUs
Cj4gKwkJCWNvbnN0IHN0cnVjdCB6eF9jbGtfZGF0YSAqZGF0YSkKPiArewo+ICsJdW5zaWduZWQg
aW50IHB1YmxpY19jbGtfY291bnQgPSAwLCBoaWdoZXN0X2lkID0gMDsKPiArCXN0cnVjdCBjbGtf
aHdfb25lY2VsbF9kYXRhICpjbG9ja3M7Cj4gKwlzdHJ1Y3QgcmVnbWFwICptYXA7Cj4gKwlzdHJ1
Y3QgY2xrICpjbGs7Cj4gKwl1bnNpZ25lZCBpbnQgaTsKPiArCWludCByZXM7Cj4gKwo+ICsJbWFw
ID0gZGV2aWNlX25vZGVfdG9fcmVnbWFwKG9mX25vZGUpOwo+ICsJaWYgKElTX0VSUihtYXApKQo+
ICsJCXJldHVybiBQVFJfRVJSKG1hcCk7Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IGRhdGEtPm51
bV9tdXhlczsgKytpKSB7Cj4gKwkJaWYgKGRhdGEtPm11eGVzW2ldLmlkICE9IFpYMjk3NTIwVjNf
Q0xLX05PX0VYUE9SVCkgewo+ICsJCQlpZiAoZGF0YS0+bXV4ZXNbaV0uaWQgPiBoaWdoZXN0X2lk
KQo+ICsJCQkJaGlnaGVzdF9pZCA9IGRhdGEtPm11eGVzW2ldLmlkOwo+ICsJCQlwdWJsaWNfY2xr
X2NvdW50Kys7Cj4gKwkJfQo+ICsJfQo+ICsJZm9yIChpID0gMDsgaSA8IGRhdGEtPm51bV9nYXRl
czsgKytpKSB7Cj4gKwkJaWYgKGRhdGEtPmdhdGVzW2ldLmlkICE9IFpYMjk3NTIwVjNfQ0xLX05P
X0VYUE9SVCkgewo+ICsJCQlpZiAoZGF0YS0+Z2F0ZXNbaV0uaWQgPiBoaWdoZXN0X2lkKQo+ICsJ
CQkJaGlnaGVzdF9pZCA9IGRhdGEtPmdhdGVzW2ldLmlkOwo+ICsJCQlwdWJsaWNfY2xrX2NvdW50
Kys7Cj4gKwkJfQo+ICsJfQo+ICsKPiArCWlmIChXQVJOX09OKHB1YmxpY19jbGtfY291bnQgIT0g
aGlnaGVzdF9pZCArIDEpKQo+ICsJCXJldHVybiAtRUlOVkFMOwoKW1NldmVyaXR5OiBNZWRpdW1d
CkRvZXMgdGhpcyBjaGVjayB1bmludGVudGlvbmFsbHkgZmFpbCB0aGUgcHJvYmUgaWYgYSBkcml2
ZXIgZG9lc24ndCBleHBvcnQKYW55IGNsb2Nrcz8KClNpbmNlIGhpZ2hlc3RfaWQgaXMgaW5pdGlh
bGl6ZWQgdG8gMCwgaWYgdGhlcmUgYXJlIG5vIGV4cG9ydGVkIGNsb2NrcwpwdWJsaWNfY2xrX2Nv
dW50IHdpbGwgYmUgMC4gVGhlIGNoZWNrICgwICE9IDAgKyAxKSBldmFsdWF0ZXMgdG8gdHJ1ZSwK
dHJpZ2dlcmluZyB0aGUgV0FSTl9PTiBhbmQgcmV0dXJuaW5nIC1FSU5WQUwuCgpQZXJoYXBzIGhp
Z2hlc3RfaWQgY291bGQgYmUgaW5pdGlhbGl6ZWQgdG8gfjBVIGluc3RlYWQsIG9yIGEgY2hlY2sg
Y291bGQgYmUKYWRkZWQgdG8gYnlwYXNzIHRoaXMgd2hlbiBwdWJsaWNfY2xrX2NvdW50IGlzIDA/
CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0
LzIwMjYwNzI3LXp4MjljbGstdjgtMC03YTEwN2IwMGYxZGRAZ21haWwuY29tP3BhcnQ9NQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
