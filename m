Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFED0C982C3
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 14:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMgoaOS6jG7/cEMZOGwOwLNCYbv/oMkpVIHLgF+XUj4=; b=ftQmr00lPv0aHl
	8dAgvVXpHFEgxKhfyjbjfOU7hx7ouD9nSW1v0l38zqA0saRBA8yxLZzneGsgP+HdCR9Nxv4HFbB9Z
	EJkQTHMDmD86vrzLfpdg2ztSMmZW5C3Hpt1oCKqYMei6jQYoRUNgo9Hn4TFuzrBpBlQ07APUDI4ch
	OgT6my/NPcsKASDemWQEhR9jcpGXzkBR/g1dHL+2j3nWyQJ+9jhElX95mBbj7t6sKSl+AkBS2/5e1
	tucVxMH8cDjbZhU4NKiOM4Tv0Np5yrcdYuWA+9zkZ7YvycT+EWGcDDbnpTLW2Llytt8eTxWQIcx7p
	BbydFDUsdVo9k+EdtPGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6qxn-00000009TIQ-1XtX;
	Wed, 16 Sep 2026 14:50:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6qxl-00000009THr-3Fcd
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 14:50:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 749834048E;
	Wed, 16 Sep 2026 14:50:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00DBA1F000FF;
	Wed, 16 Sep 2026 14:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789570217;
	bh=Gg/SypJTu4ALF9JeRgpvVI3eZRvGFTB62ryl3J9wUYw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bRzbbqYsfdCneqYs1DGHlCPrmfSrGFcoNNH4nHW6iMcKsYp+j6rAjb5EGCm6UVczi
	 qPq5hL0TrU2Ui6CRdpMazeAUvxZfXCPdmEvD5XAsY0JXORFIXa1NhQq/skxLELCzpf
	 LiDbD/5t3AzL0RT+JTNVIdeOKVudYPALhmEMk5oPY/1cGw07ldtmFNiQciQV/Ghf/w
	 4UxV7UM5+4zxlv1LT88PNbKwZLM7+n7Y7JnbQ2sVF18tyBK6FcU/7ZoJ/D+DrKwi0B
	 jhA23wgslS+gbpBKFdcnZ1cRUt+hgGkOt+nEO/chHAkxUBFc8ltWHaWe6BS1XYL//0
	 g4WDCxE/nieiA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v6 05/11] arm64: dts: rockchip: rk3568: add
 XPCS and fixed-clock nodes
To: "Coia Prant" <coiaprant@gmail.com>
Cc: vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, wsa+renesas@sang-engineering.com, olteanv@gmail.com, devicetree@vger.kernel.org, robh@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260915123802.1561724-6-coiaprant@gmail.com>
References: <20260915123802.1561724-1-coiaprant@gmail.com>
 <20260915123802.1561724-6-coiaprant@gmail.com>
Date: Wed, 16 Sep 2026 14:50:16 +0000
Message-Id: <20260916145017.00DBA1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHRzOiBpbmNvcnJl
Y3QgZml4ZWQtY2xvY2sgbW9kZWxpbmcgZm9yIFhQQ1MgZ2VuZXJhdGVkIGNsb2NrCi0tCgpjb21t
aXQgMThlZGNhOGE2NzhjMDQ1YmEyZmUzMjcwYjFmM2NhMDUwNWI5NGJhYQpBdXRob3I6IENvaWEg
UHJhbnQgPGNvaWFwcmFudEBnbWFpbC5jb20+Cgphcm02NDogZHRzOiByb2NrY2hpcDogcmszNTY4
OiBhZGQgWFBDUyBhbmQgZml4ZWQtY2xvY2sgbm9kZXMKClRoaXMgY29tbWl0IGFkZHMgdGhlIERl
c2lnbldhcmUgWFBDUyBub2RlIGFuZCBpdHMgc3ViLW5vZGVzIGZvciB0aGUgUkszNTY4ClNvQywg
bWFwcGluZyBpdCB0byB0aGUgQVBCMyBidXMuIEl0IGFsc28gYWRkcyB0d28gZml4ZWQtY2xvY2sg
bm9kZXMgdG8KcHJvdmlkZSByZWZlcmVuY2UgY2xvY2tzIGZvciB0aGUgR01BQ3Mgd2hlbiBvcGVy
YXRpbmcgd2l0aCBYUENTLgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0
c2kKPiBpbmRleCAzYmM2NTNmMDI3ZjFmLi4yMjdkMDNlMzM2MDQzIDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpClsgLi4uIF0KPiArCWNsa19nbWFjMF94cGNz
X21paTogY2xvY2steHBjcy1nbWFjMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7
Cj4gKwkJY2xvY2stZnJlcXVlbmN5ID0gPDEyNTAwMDAwMD47Cj4gKwkJY2xvY2stb3V0cHV0LW5h
bWVzID0gImNsa19nbWFjMF94cGNzX21paSI7Cj4gKwkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+ICsJ
fTsKCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIG1vZGVsaW5nIHRoZSBYUENTLWdlbmVyYXRlZCBj
bG9jayBhcyBhbiBpbmRlcGVuZGVudCBmaXhlZC1jbG9jayBieXBhc3MKcG93ZXIgbWFuYWdlbWVu
dCBhbmQgZGVwZW5kZW5jeSB0cmFja2luZz8gCgpCZWNhdXNlIHRoZSBjbG9jayBmcmFtZXdvcmsg
aGFzIG5vIGRlcGVuZGVuY3kgbGluayB0byB0aGUgWFBDUyBwb3dlciBkb21haW4KKFJLMzU2OF9Q
RF9QSVBFKSwgaXQgc2VlbXMgaXQgd2lsbCBzd2l0Y2ggdGhlIEdNQUMgdG8gdGhpcyBjbG9jayBl
dmVuIGlmIHRoZQpYUENTIGJsb2NrIGhhcyBub3QgeWV0IHByb2JlZCBhbmQgaXMgc3RpbGwgcG93
ZXItZ2F0ZWQuCgpXaGVuIHRoZSBHTUFDIGRldmljZSB1c2VzIHRoaXMgdmlhIGFzc2lnbmVkLWNs
b2NrcywgdGhlIGRyaXZlciBjb3JlIHN3aXRjaGVzCnRoZSBwYXJlbnQgY2xvY2sgYmVmb3JlIHRo
ZSBHTUFDIHByb2JlIGZ1bmN0aW9uIGlzIGV4ZWN1dGVkLiBJZiBYUENTIGlzCmFic2VudCBvciB1
bmluaXRpYWxpemVkLCBjb3VsZCBzd2l0Y2hpbmcgdG8gdGhpcyB1bnBvd2VyZWQgY2xvY2sgaGFu
ZyB0aGUKc3lzdGVtIGF0IGJvb3QgdGltZT8KCldvdWxkIGl0IGJlIHNhZmVyIHRvIGhhdmUgdGhl
IFhQQ1Mgb3IgU2VyRGVzIG5vZGUgaXRzZWxmIGFjdCBhcyB0aGUgY2xvY2sKcHJvdmlkZXIgc28g
dGhlIGNsb2NrIGZyYW1ld29yayBwcm9wZXJseSB0cmFja3MgcG93ZXIgZG9tYWluIGxpZmVjeWNs
ZXM/Cgo+ICsKPiArCWNsa19nbWFjMV94cGNzX21paTogY2xvY2steHBjcy1nbWFjMSB7Cj4gKwkJ
Y29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7Cj4gKwkJY2xvY2stZnJlcXVlbmN5ID0gPDEyNTAw
MDAwMD47Cj4gKwkJY2xvY2stb3V0cHV0LW5hbWVzID0gImNsa19nbWFjMV94cGNzX21paSI7Cj4g
KwkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+ICsJfTsKCltTZXZlcml0eTogTWVkaXVtXQpJcyB0aGlz
IHNlY29uZCBYUENTLWdlbmVyYXRlZCBNQUMgY2xvY2sgc3ViamVjdCB0byB0aGUgc2FtZSBkZWNv
dXBsaW5nIGZyb20KdGhlIFhQQ1MgcG93ZXIgZG9tYWluIGFzIHRoZSBmaXJzdCBjbG9jaz8KCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjA5MTUxMjM4MDIuMTU2MTcyNC0xLWNvaWFwcmFudEBnbWFpbC5jb20/cGFydD01CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
