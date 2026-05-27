Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EF0ECD4F54
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 16:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3uD7uvQTYhyN76xs04rMyq52LkgDAVkN6EuvL2/B6E=; b=ArS73CTKSQt/sm
	vF6lHcG9qej9TTSg+ZVo6YyXPlHDyN6UO3wJPsEhnFj5gLImk0NfPL56esejWaPpWpxLvTX8B9ZiT
	eYb10QCygi7DzijI6Kh40jS8l0ycgBMtuuUNY7uPBHJRNx9gLtnk+Ae6nsefHYZb351k+UGB0pzfr
	j+l5DGgAmRPUBxycDToa9d+qmQli9Ofs2OzZaYAa/HCMyPIp2VyudpvabdTx/F7GYtvhMy/EtiKb0
	N+thdwiWGMTBnW9/uHDlNsTLz2f7miOTaH/yLO7pFa203n+vCfDmYI5/gieiM1DJruthdFSjuXsMe
	ru7VKDzb/xRXmumnb3mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSH73-00000004VXz-2Cn8;
	Wed, 27 May 2026 16:28:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSH71-00000004VXk-1xKz
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 16:28:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7ABF360541;
	Wed, 27 May 2026 16:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D34B81F000E9;
	Wed, 27 May 2026 16:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779899286;
	bh=HdDWMIHq/mFPYIxqxsWUL3b6Kj+r6u2T786LNFaBe2g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BoTwr1VyZv1jm0ijOTfA7HJD+E5L6/PykqZTLzFnUm87u14CVF/Q0ZdAez2XA1xNb
	 R0Z69/0BVe+u5c5GGb6MUsjKPvPfxs1jeFJVTWwb5QfEE4auSder+48c9jPJHSfkHn
	 9F8B9MZc+6hmZTcNoKMeSWXknzFCC7B75MICIhT4mx5cJTPLpEQw0Fz7KplPUyYhp5
	 H8agxCKMqa/ZKLIuH0PGtvWF2qwQKHD8MhgFZ6F0Hirct4yG5uPuJ3tKtoGVNsox+r
	 Z9gnLDiK9MgDck0IeUp0IwRBKscKEdDZXBbsmyQbS5O6AiVyiUiciOSgI0Stu8d9c3
	 6AKBflpUV4f7Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/5] arm64: dts: qcom: Introduce Shikra SoC base dtsi
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260527-shikra-dt-v4-2-b5ca1fa0b392@oss.qualcomm.com>
References: <20260527-shikra-dt-v4-2-b5ca1fa0b392@oss.qualcomm.com>
Date: Wed, 27 May 2026 16:28:05 +0000
Message-Id: <20260527162805.D34B81F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEluY29ycmVjdCBncm91
cGluZyBvZiBoZXRlcm9nZW5lb3VzIGNvcmVzIGludG8gc2VwYXJhdGUgY2x1c3RlcnMgaW4gYGNw
dS1tYXBgLgotIFtIaWdoXSBNaXNzaW5nIGBjbG9jay1uYW1lc2AgcHJvcGVydHkgaW4gdGhlIEds
b2JhbCBDbG9jayBDb250cm9sbGVyIChHQ0MpIG5vZGUuCi0tCgpjb21taXQgYTg4MzUyZDhkZDVi
NGQxZDNmYzMxM2RhY2U2MjgyZTI1OGU2YjMyNApBdXRob3I6IEtvbWFsIEJhamFqIDxrb21hbC5i
YWphakBvc3MucXVhbGNvbW0uY29tPgoKYXJtNjQ6IGR0czogcWNvbTogSW50cm9kdWNlIFNoaWty
YSBTb0MgYmFzZSBkdHNpCgpUaGlzIGNvbW1pdCBhZGRzIGluaXRpYWwgZGV2aWNlIHRyZWUgc3Vw
cG9ydCBmb3IgdGhlIFF1YWxjb21tIFNoaWtyYSBTb0MuCkl0IGVuYWJsZXMgc3VwcG9ydCBmb3Ig
Q1BVIG5vZGVzLCBnbG9iYWwgYW5kIFJQTS1iYXNlZCBjbG9jay9wb3dlcgpjb250cm9sbGVycywg
aW50ZXJydXB0cywgVExNTSwgVUFSVCwgZU1NQywgYW5kIHN5c3RlbSB0aW1lcnMuCgo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLmR0c2kgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLmR0c2kKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4
IDAwMDAwMDAwMDAwMDAuLmE0MzM0ZDk5YzFmMzUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9xY29tL3NoaWtyYS5kdHNpCgpbIC4uLiBdCgo+ICsJCWNwdS1tYXAg
ewo+ICsJCQljbHVzdGVyMCB7Cj4gKwkJCQljb3JlMCB7Cj4gKwkJCQkJY3B1ID0gPCZjcHUwPjsK
PiArCQkJCX07Cj4gKwo+ICsJCQkJY29yZTEgewo+ICsJCQkJCWNwdSA9IDwmY3B1MT47Cj4gKwkJ
CQl9Owo+ICsKPiArCQkJCWNvcmUyIHsKPiArCQkJCQljcHUgPSA8JmNwdTI+Owo+ICsJCQkJfTsK
PiArCQkJfTsKPiArCj4gKwkJCWNsdXN0ZXIxIHsKPiArCQkJCWNvcmUwIHsKPiArCQkJCQljcHUg
PSA8JmNwdTM+Owo+ICsJCQkJfTsKPiArCQkJfTsKPiArCQl9OwoKW1NldmVyaXR5OiBIaWdoXQpE
b2VzIHRoaXMgY3B1LW1hcCBjb25maWd1cmF0aW9uIGFjY3VyYXRlbHkgcmVmbGVjdCB0aGUgaGFy
ZHdhcmUgdG9wb2xvZ3k/CgpUaGUgQ29ydGV4LUE1NSBjb3JlcyAoY3B1MC1jcHUyKSBhbmQgdGhl
IENvcnRleC1BNzhDIGNvcmUgKGNwdTMpIHBoeXNpY2FsbHkKc2hhcmUgdGhlIHNhbWUgTGFzdCBM
ZXZlbCBDYWNoZSAoJmwzKSwgYW5kIHRoZWlyIHJlZyB2YWx1ZXMgKDB4MCB0byAweDMwMCkKaW5k
aWNhdGUgdGhleSBiZWxvbmcgdG8gdGhlIHNhbWUgcGh5c2ljYWwgY2x1c3Rlci4KClNwbGl0dGlu
ZyB0aGVtIGludG8gY2x1c3RlcjAgYW5kIGNsdXN0ZXIxIG1pZ2h0IGNhdXNlIHRoZSBzY2hlZHVs
ZXIgdG8gd3JvbmdseQphc3N1bWUgdGhlIGNvcmVzIGRvIG5vdCBzaGFyZSBhbiBMTEMsIHdoaWNo
IGNhbiBpbXBhY3QgY2FjaGUgbG9jYWxpdHkgbG9hZApiYWxhbmNpbmcuIFNob3VsZCB0aGVzZSBj
b3JlcyBiZSBncm91cGVkIHVuZGVyIGEgc2luZ2xlIGNsdXN0ZXIgbm9kZT8KClsgLi4uIF0KCj4g
KwkJZ2NjOiBjbG9jay1jb250cm9sbGVyQDE0MDAwMDAgewo+ICsJCQljb21wYXRpYmxlID0gInFj
b20sc2hpa3JhLWdjYyI7Cj4gKwkJCXJlZyA9IDwweDAgMHgwMTQwMDAwMCAweDAgMHgxZjAwMDA+
Owo+ICsJCQljbG9ja3MgPSA8JnJwbWNjIFJQTV9TTURfWE9fQ0xLX1NSQz4sCj4gKwkJCQkgPCZz
bGVlcF9jbGs+LAo+ICsJCQkJIDwwPiwKPiArCQkJCSA8MD4sCj4gKwkJCQkgPDA+LAo+ICsJCQkJ
IDwwPiwKPiArCQkJCSA8MD4sCj4gKwkJCQkgPDA+Owo+ICsJCQlwb3dlci1kb21haW5zID0gPCZy
cG1wZCBSUE1QRF9WRERDWD47Cj4gKwkJCSNjbG9jay1jZWxscyA9IDwxPjsKPiArCQkJI3Jlc2V0
LWNlbGxzID0gPDE+Owo+ICsJCQkjcG93ZXItZG9tYWluLWNlbGxzID0gPDE+Owo+ICsJCX07Cgpb
U2V2ZXJpdHk6IEhpZ2hdCklzIHRoaXMgbm9kZSBtaXNzaW5nIGEgY2xvY2stbmFtZXMgcHJvcGVy
dHk/CgpUaGUgZ2NjIG5vZGUgZGVmaW5lcyBhbiBhcnJheSBvZiA4IGNsb2NrcywgYnV0IG9taXRz
IHRoZSBjb3JyZXNwb25kaW5nCmNsb2NrLW5hbWVzIHByb3BlcnR5LiAKClNpbmNlIFF1YWxjb21t
IEdDQyBjbG9jayBkcml2ZXJzIG1hcCBpbnB1dCBwYXJlbnQgY2xvY2tzIHVzaW5nIHN0cmluZwpt
YXRjaGluZywgY291bGQgdGhlIGRyaXZlciBmYWlsIHRvIHJlc29sdmUgaXRzIHBhcmVudCBjbG9j
a3Mgd2l0aG91dCB0aGlzCmFycmF5LCBwb3RlbnRpYWxseSBjYXVzaW5nIHRoZSBHQ0MgcHJvYmUg
dG8gZmFpbD8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjA1Mjctc2hpa3JhLWR0LXY0LTAtYjVjYTFmYTBiMzkyQG9zcy5xdWFsY29t
bS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
