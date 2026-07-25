Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7B07C531C9
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 05:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TifqZykulpBLY9ywFq5i+2hcBhuBTmvzqGGiWJJXk5o=; b=yFyZKyg3IaQPAR
	thV/VbuhoRioWjch4n5ybZLj5opC/WhRw5jfACu7uZTcDJtakDKmFUDxv0YGGM/m0hzrvvKDSVZ7q
	BudIHDYKDvhSvLEXr7PYhaoJyiGQrbYu2LFeWueSfZQIeg86hhKqcj0bYCbUsKgUyAOWLwuBsB1H4
	FgXEKdx0sBcEsorhvOev8mLoGru/80LbPZGIiC7KJVsFAZrHL8gmrL4wAufhp7Pr2PVAlAnuv/PjV
	qiuzBLCslB2XPPQbe0SThPRlGc5TK9ruMRIfUE61SlJqUFNKFtOKywdIQ4kbQZOrSjZkaFgkwmwjy
	G43qZtmfEb3vgaBmYyiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnUo1-000000004E0-26Dg;
	Sat, 25 Jul 2026 05:20:13 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnUnz-000000004Di-2h3r
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 05:20:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4E70D42A1C;
	Sat, 25 Jul 2026 05:20:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA5FD1F000E9;
	Sat, 25 Jul 2026 05:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784956811;
	bh=IA9z5D4ZArJj0QrrlSo1OconEddOByGPua3AQf+cpZI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kllQWRX2YHFW4STyjT004YbM9wRxyJXpAUDhmB/8Fy0CrS4XPI1XdIekEdsneanYu
	 9dI3ngHRUrinO1L83Ofc/+dbmaW3C6cxV9SftazAzNO/rPFCyM6iqpKBAvw4eGayz0
	 ZSkQIDXDaffH7ceWmMqg5OfRP2qkz8FEvYXtZt97FXBYY95bIBEG0XUY4y0qAGtOW7
	 V90OG0adVIWSB7s3YYPphjMdSe66qWGVyT3oE8lNHE4I3P/acGGA4BEivPFrd2eH7U
	 jg1Hjv169VwuuyT0SAbMyys1GiIS869qT+t0wHo40TiOM7LsQMvjn+wsCyFyaAiwHc
	 0qgmhrrsXeApg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 14/17] riscv: dts: spacemit: k3: add display nodes
To: "Cody Kang" <codykang.hk@gmail.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com, dri-devel@lists.freedesktop.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260724-k3-display-v1-14-f22a10a52867@gmail.com>
References: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
 <20260724-k3-display-v1-14-f22a10a52867@gmail.com>
Date: Sat, 25 Jul 2026 05:20:10 +0000
Message-Id: <20260725052010.AA5FD1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEN5Y2xpYyBEVCBkZXBl
bmRlbmN5IGJldHdlZW4gRFAgY29udHJvbGxlcnMsIHRoZWlyIGNoaWxkIFBIWSBub2RlcywgYW5k
IHRoZSBBUE1VIHN5c2NvbiB3aWxsIGNhdXNlIGEgZndfZGV2bGluayB3YXJuaW5nIGFuZCBhIHBv
dGVudGlhbCAtRVBST0JFX0RFRkVSIGRlYWRsb2NrLgotIFtNZWRpdW1dIEZyYWdpbGUgYXJyYXkg
b3ZlcnJpZGUgb2YgYHN5c2Nvbl9hcG11YCBjbG9ja3MgY3JlYXRlcyBhIHNldmVyZSBtYWludGVu
YW5jZSBoYXphcmQuCi0tCgotLS0gUGF0Y2ggWzE0XTogW1BBVENIIDE0LzE3XSByaXNjdjogZHRz
OiBzcGFjZW1pdDogazM6IGFkZCBkaXNwbGF5IG5vZGVzIC0tLQpjb21taXQgYzEyYzZhYjkzMjM3
NGY1MmJmYzNjZTNkMDQ2NDBkODE5M2E5YmZlYQpBdXRob3I6IENvZHkgS2FuZyA8Y29keWthbmcu
aGtAZ21haWwuY29tPgoKcmlzY3Y6IGR0czogc3BhY2VtaXQ6IGszOiBhZGQgZGlzcGxheSBub2Rl
cwoKQWRkIHRoZSBTb0MtbGV2ZWwgZGlzcGxheSBub2RlczogdGhlIHR3byBTYXR1cm4gRFBVcywg
dGhlIHR3byBEUC9lRFAKY29udHJvbGxlcnMgd2l0aCB0aGVpciBQSFkgY2hpbGRyZW4uCgo+IGRp
ZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2Jvb3QvZHRzL3NwYWNlbWl0L2szLWRpc3BsYXkuZHRzaSBi
L2FyY2gvcmlzY3YvYm9vdC9kdHMvc3BhY2VtaXQvazMtZGlzcGxheS5kdHNpCj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi40ODkyZWU2YWNkYTIyCj4gLS0tIC9k
ZXYvbnVsbAo+ICsrKyBiL2FyY2gvcmlzY3YvYm9vdC9kdHMvc3BhY2VtaXQvazMtZGlzcGxheS5k
dHNpCgpbIC4uLiBdCgo+ICsJZWRwMDogZWRwQGNhYzg0MDAwIHsKPiArCQljb21wYXRpYmxlID0g
InNwYWNlbWl0LGszLWlubm8tZHAiOwo+ICsJCXJlZyA9IDwweDAgMHhjYWM4NDAwMCAweDAgMHg0
MDAwPjsKPiArCQlpbnRlcnJ1cHRzID0gPDEzMiBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiArCQlj
bG9ja3MgPSA8JnN5c2Nvbl9hcG11IENMS19BUE1VX0VEUDBfUFhDTEs+LCA8JmVkcDBfcGh5PjsK
CltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGNyZWF0ZSBhIGN5Y2xpY2FsIGRlcGVuZGVuY3kg
dGhhdCBjb3VsZCBjYXVzZSBhIGZ3X2Rldmxpbmsgd2FybmluZwpvciBhIHBlcm1hbmVudCBwcm9i
ZSBkZWFkbG9jaz8KCmVkcDAgZGVwZW5kcyBvbiBzeXNjb25fYXBtdSBoZXJlLCB3aGlsZSBzeXNj
b25fYXBtdSBkZXBlbmRzIG9uIHRoZSBlZHAwX3BoeQpjaGlsZCBub2RlIGJlbG93LiBTaW5jZSBl
ZHAwX3BoeSBpcyBhIGNoaWxkIG9mIGVkcDAsIGl0IHdvbid0IGJlIHBvcHVsYXRlZAp1bnRpbCBl
ZHAwIHByb2Jlcy4gSWYgZndfZGV2bGluayBicmVha3MgdGhlIGN5Y2xlIGJ5IGRyb3BwaW5nIHRo
ZSBlZHAwIC0+CnN5c2Nvbl9hcG11IGxpbmssIGVkcDAgd2lsbCBhdHRlbXB0IHRvIHByb2JlIGZp
cnN0LCBmYWlsIHRvIGdldCBpdHMgY2xvY2ssIGFuZApkZWZlciBmb3JldmVyIGJlY2F1c2UgaXQg
d2lsbCBub3QgcHJvY2VlZCB0byBwb3B1bGF0ZSB0aGUgY2hpbGQgUEhZLgoKPiArCQljbG9jay1u
YW1lcyA9ICJweGNsayIsICJwbGwiOwo+ICsJCXJlc2V0cyA9IDwmc3lzY29uX2FwbXUgUkVTRVRf
QVBNVV9FRFAwPjsKPiArCQlwaHlzID0gPCZlZHAwX3BoeT47Cj4gKwkJcGh5LW5hbWVzID0gImRw
IjsKPiArCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsKPiArCQllZHAwX3BoeTogcGh5IHsKPiAr
CQkJY29tcGF0aWJsZSA9ICJzcGFjZW1pdCxrMy1pbm5vLWRwLXBoeSI7Cj4gKwkJCSNwaHktY2Vs
bHMgPSA8MD47Cj4gKwkJCSNjbG9jay1jZWxscyA9IDwwPjsKPiArCQkJY2xvY2stb3V0cHV0LW5h
bWVzID0gImVkcDBfcGxsX3B4Y2xrIjsKPiArCQl9OwoKWyAuLi4gXQoKPiArLyoKPiArICogRmVl
ZCB0aGUgUEhZIFBMTCBwaXhlbCBjbG9ja3MgYmFjayBpbiBhcyB0aGUgQVBNVSBtdXggcGFyZW50
cy4gVGhpcyBsaXZlcwo+ICsgKiBoZXJlLCBub3QgaW4gazMuZHRzaTogdGhlIFBIWXMgb25seSBl
eGlzdCB3aGVyZSB0aGlzIGZpbGUgaXMgaW5jbHVkZWQuCj4gKyAqLwo+ICsmc3lzY29uX2FwbXUg
ewo+ICsJY2xvY2tzID0gPCZvc2NfMzJrPiwgPCZ2Y3RjeG9fMW0+LCA8JnZjdGN4b18zbT4sIDwm
dmN0Y3hvXzI0bT4sCj4gKwkJIDwmZWRwMF9waHk+LCA8JmRwMV9waHk+Owo+ICsJY2xvY2stbmFt
ZXMgPSAib3NjIiwgInZjdGN4b18xbSIsICJ2Y3RjeG9fM20iLCAidmN0Y3hvXzI0bSIsCj4gKwkJ
ICAgICAgImVkcDBfcGxsX3B4Y2xrIiwgImVkcDFfcGxsX3B4Y2xrIjsKCltTZXZlcml0eTogTWVk
aXVtXQpXaWxsIG92ZXJyaWRpbmcgdGhlIGNsb2NrcyBwcm9wZXJ0eSBjb21wbGV0ZWx5IGRyb3Ag
YW55IGZ1dHVyZSBhZGRpdGlvbnMgbWFkZSB0bwp0aGUgc3lzY29uX2FwbXUgbm9kZSBpbiB0aGUg
YmFzZSBrMy5kdHNpPwoKRGV2aWNlIHRyZWUgZG9lc24ndCBzdXBwb3J0IGFwcGVuZGluZyB0byBh
cnJheSBwcm9wZXJ0aWVzLCBzbyBpZiBhbnkgbmV3IGNsb2NrcwphcmUgYWRkZWQgdG8gdGhlIGJh
c2Ugc3lzY29uX2FwbXUgbm9kZSBsYXRlciwgdGhpcyBmaWxlIHdpbGwgc2lsZW50bHkgb3ZlcnJp
ZGUKdGhlbSBhbmQgYnJlYWsgb3RoZXIgc3Vic3lzdGVtcyByZWx5aW5nIG9uIHRob3NlIGNsb2Nr
cy4KCj4gK307CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwNzI0LWszLWRpc3BsYXktdjEtMC1mMjJhMTBhNTI4NjdAZ21haWwuY29t
P3BhcnQ9MTQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
