Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A28DCA9EBE
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 16:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWzZ5WiPjVQ1b0dmcjwdxkImNYLY4jTbkt3k7U0aZKQ=; b=IOi71fBV0O+iGa
	DgTzVJuLeU7YElQSYYDhVxj+v7XeV8sVSFm/MXCktftgP/ZMUecgmUBSB53Tmn0pfyM1/8nnS7Gp7
	LntmcLxs4bk+vEfWd7bXrvT1wxQwt9SHYoqSezDxRCwa9cwlRBJLulAAJY8n+wh9KSqFbXaumWNq2
	NbnyEJPNoctHWj/I1gsBx2zl0C3k5qW0wt0uowh4EnM93v3eEk+HwsXQxrC5cs+m5rW+U2kuOnbci
	aNUcx4zuW4nP3eVpdV9FepvwfJipfLnNTPln0yctTJr8eEiubkuThVPa4uUIuNtvsY1vKK19YV2LI
	3wHkEs7bVTRa5Str1Yxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZpj-00000008Gf7-0Ufl;
	Sat, 10 Oct 2026 16:22:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZpf-00000008Gei-2Npc
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 16:22:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A7A07600D4;
	Sat, 10 Oct 2026 16:21:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEF3F1F000FF;
	Sat, 10 Oct 2026 16:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791649318;
	bh=SPc0/Y6iXNR/DIEa8D4WXg5MQpzuCuz1GeqRFvKKh9I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UY+W7BxlfuScPOq238MIzgEyc1sk4XMFih63d7K121fcPpuvghIsRc4CqWocf2Z0c
	 i0hLZueMIoQLPgkiaASHQlNTnr6zztf0xehdwyot7eZZwCsEaLqDT39+0HXBdrQei0
	 JVGcMVe6PGCG+ZwUbfl6BcWWv5xzmLg0GMyDOQQXrOpf1/FACBObR0NF8GBioOm3OV
	 6610ZHw5jyy7qv1+1iQUZypf+fTPVbnys4SJ0oM1aS2y1mZEkF57NhCnjaqEAgIXM9
	 Cy49zA3KOe/9Hj+J/rx31imvuTj6NjDFuyd8+PWWrX0J81Hg3tcQjAk2Ja4UIdSL9d
	 mY/6Jop8TMR/A==
Message-ID: <sashiko-outbox-166732@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v20 13/13] arm64: dts: qcom:
 kaanapali-mtp-camera-s5kjn5: Add DT overlay
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: vkoul@kernel.org, robh@kernel.org, media-ci@linuxtv.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20261010-kaanapali-camss-v20-13-63e98ce9ac0c@oss.qualcomm.com>
References: <20261010-kaanapali-camss-v20-0-63e98ce9ac0c@oss.qualcomm.com>
 <20261010-kaanapali-camss-v20-13-63e98ce9ac0c@oss.qualcomm.com>
Date: Sat, 10 Oct 2026 16:21:57 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHRzOiBxY29tOiBt
aXNzaW5nIHZkZG0tc3VwcGx5IGluIHM1a2puNSBjYW1lcmEgbm9kZQotLQoKY29tbWl0IDBhYTk4
ZTlmZmY1NjVlNmNhOWZiM2VmMjU5ODgxMzMwZGRmZmNlM2MKQXV0aG9yOiBIYW5neGlhbmcgTWEg
PGhhbmd4aWFuZy5tYUBvc3MucXVhbGNvbW0uY29tPgoKYXJtNjQ6IGR0czogcWNvbToga2FhbmFw
YWxpLW10cC1jYW1lcmEtczVram41OiBBZGQgRFQgb3ZlcmxheQoKVGhpcyBjb21taXQgZW5hYmxl
cyB0aGUgUzVLSk41IGltYWdlIHNlbnNvciB2aWEgQ0NJIG9uIHRoZSBLYWFuYXBhbGkgTVRQIGJv
YXJkLgpJdCBjcmVhdGVzIGEgRFRCTyB0aGF0IGNvbmZpZ3VyZXMgdGhlIHNlbnNvciBvbiB0aGUg
Q0NJLTAgaW50ZXJmYWNlLgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L2thYW5hcGFsaS1tdHAtY2FtZXJhLXM1a2puNS5kdHNvIGIvYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL2thYW5hcGFsaS1tdHAtY2FtZXJhLXM1a2puNS5kdHNvCj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi43YjU3NGUyZWQzNzMyCj4gLS0tIC9kZXYvbnVsbAo+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9rYWFuYXBhbGktbXRwLWNhbWVyYS1zNWtq
bjUuZHRzbwpbIC4uLiBdCj4gKyZjY2kwX2kyYzEgewo+ICsJY2FtZXJhQDEwIHsKPiArCQljb21w
YXRpYmxlID0gInNhbXN1bmcsczVram41IjsKPiArCQlyZWcgPSA8MHgxMD47Cj4gKwo+ICsJCXJl
c2V0LWdwaW9zID0gPCZ0bG1tIDMgR1BJT19BQ1RJVkVfTE9XPjsKPiArCQlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwo+ICsJCXBpbmN0cmwtMCA9IDwmY2FtX21jbGsyX2RlZmF1bHQgJmNhbV9y
ZXNldDJfZGVmYXVsdD47Cj4gKwo+ICsJCWNsb2NrcyA9IDwmY2FtYmlzdG1jbGtjYyBDQU1fQklT
VF9NQ0xLX0NDX01DTEsyX0NMSz47Cj4gKwkJYXNzaWduZWQtY2xvY2tzID0gPCZjYW1iaXN0bWNs
a2NjIENBTV9CSVNUX01DTEtfQ0NfTUNMSzJfQ0xLPjsKPiArCQlhc3NpZ25lZC1jbG9jay1yYXRl
cyA9IDwxOTIwMDAwMD47Cj4gKwo+ICsJCXZkZGlvLXN1cHBseSA9IDwmdnJlZ19sNG5fMXA4PjsK
PiArCQl2ZGRkLXN1cHBseSA9IDwmdnJlZ19sMW1fMXAwPjsKPiArCQl2ZGRhLXN1cHBseSA9IDwm
dnJlZ19sNG1fMnAyPjsKPiArCQl2ZGRpbzFwMi1zdXBwbHkgPSA8JnZyZWdfbDJuXzFwMj47Cj4g
KwkJYWZ2ZGQtc3VwcGx5ID0gPCZ2cmVnX2w3bV8ycDg+OwoKW1NldmVyaXR5OiBNZWRpdW1dCklz
IHRoZSB2ZGRtLXN1cHBseSBwcm9wZXJ0eSBtaXNzaW5nIGZvciB0aGUgY2FtZXJhQDEwIG5vZGU/
CgpUaGUgczVram41IGRyaXZlciB1bmNvbmRpdGlvbmFsbHkgcmVxdWVzdHMgNiByZWd1bGF0b3Jz
LCBpbmNsdWRpbmcgInZkZG0iLAp2aWEgZGV2bV9yZWd1bGF0b3JfYnVsa19nZXQoKS4gQmVjYXVz
ZSB0aGUgZGV2aWNlIHRyZWUgb3ZlcmxheSBvbWl0cwp2ZGRtLXN1cHBseSwgdGhlIHJlZ3VsYXRv
ciBjb3JlIHdpbGwgcHJpbnQgYSB3YXJuaW5nIGFuZCByZXR1cm4gYSBkdW1teQpyZWd1bGF0b3Is
IG9yIGZhaWwgd2l0aCAtRVBST0JFX0RFRkVSIGlmIGZ1bGwgY29uc3RyYWludHMgYXJlbid0IGFw
cGxpZWQuCgpJZiB0aGUgdmRkbSBwaW4gaXMgbm90IHBoeXNpY2FsbHkgdGllZCB0byBhbm90aGVy
IGFjdGl2ZSBzdXBwbHksIHRoZSBzZW5zb3IncwpNSVBJIFBIWSB3aWxsIG5vdCByZWNlaXZlIHBv
d2VyLCBicmVha2luZyBjYW1lcmEgc3RyZWFtaW5nLgoKPiArCj4gKwkJcG9ydCB7Cj4gKwkJCXM1
a2puNV9vdXRfZXA6IGVuZHBvaW50IHsKPiArCQkJCWRhdGEtbGFuZXMgPSA8MSAyIDMgND47Cj4g
KwkJCQlsaW5rLWZyZXF1ZW5jaWVzID0gL2JpdHMvIDY0IDwxMjQ4MDAwMDAwPjsKPiArCQkJCXJl
bW90ZS1lbmRwb2ludCA9IDwmY3NpcGh5Ml9pbl9lcD47Cj4gKwkJCX07Cj4gKwkJfTsKPiArCX07
Cj4gK307CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYxMDEwLWthYW5hcGFsaS1jYW1zcy12MjAtMC02M2U5OGNlOWFjMGNAb3NzLnF1
YWxjb21tLmNvbT9wYXJ0PTEzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
