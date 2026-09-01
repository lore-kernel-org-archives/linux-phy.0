Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 330B7C624CF
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 10:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrpFaK04Ogt3CGohMnwdSt1hXUOwx3YLb3dIh4ff9SI=; b=CX7cbYsds3BhuZ
	cNtfb6hznigjVTbKEVhFK6AzOtCSQgn8tSjouNfY3nhbP9Yd3eyfVWSlD49iZxSe3/DbLPOYKXEKP
	ILySUw643VWYUiB9TDk377BlsNclGaHN7HlSRX65lGPNGu/y2VIIKY4BuRlaEL7b/JCDfs+p/I30s
	9VYBr1UOFLIRReBNd8PZhjzQpl7Syo3pYqlCf2tRlKv5RElMSTSjPFzZy9bD0vwCxD4SczYmfVsn+
	WGTbbXItP/jsMUMlBYdDEAdvqlVaq+z6HNGta+wjh7OgVPlR2v08eMUvJBCEMu572yAs/vcbpJGPd
	Cml1hc12UPYTNtWPpAXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1LL1-0000000BUuY-3999;
	Tue, 01 Sep 2026 10:03:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1LL1-0000000BUuP-0Cws
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 10:03:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9606141FB8;
	Tue,  1 Sep 2026 10:03:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 014591F00A3D;
	Tue,  1 Sep 2026 10:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788257010;
	bh=5LLIktop48B5ERIKELEwx/5XDd4bDhbbML4kzBzuvxU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Vb5y2VsS2HmvY9IvvtIARcUJpRG2v7q/Crnf+nKaKSE2g+fEbViFnolk9S+DqzQxW
	 6CVBjMKpjVD7h4aYuMsQ2JKIxQ9Jj/g1nGY9Vw7mQIIjfCbGqcbieBiy9uiuc1vPw+
	 B1MHNWGmShtmkmoGGt9GUNRYcKLRftqyQw54FTueRjgs1jPB73XUwzeAinFiPV7+zx
	 mdOIjJYuFkejVajLvw8ARfZK4k8r37++LuN2QQP8uh1WgPGejgdR22YgUcbXt52GUA
	 reruW/4fTm7+h8hMka3zgK2iaFVoEjgzoEQDCu/Xm06XxOt351GKKFoJJxBbev0cSZ
	 TSc2CLg5etVWA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/4] phy: qcom: qmp-combo: Add USB3+DP PHY support for
 Nord
To: "Shawn Guo" <shengchao.guo@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260901095055.42229-5-shengchao.guo@oss.qualcomm.com>
References: <20260901095055.42229-1-shengchao.guo@oss.qualcomm.com>
 <20260901095055.42229-5-shengchao.guo@oss.qualcomm.com>
Date: Tue, 01 Sep 2026 10:03:29 +0000
Message-Id: <20260901100330.014591F00A3D@smtp.kernel.org>
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
IFtIaWdoXSBWMTAgUEhZIGZhaWxzIHRvIGNvbmZpZ3VyZSBBT05fVE9HR0xFX0VOQUJMRSBiZWNh
dXNlIGl0cyB2YWxpZCByZWdpc3RlciBvZmZzZXQgaXMgMHgwMC4KLS0KCmNvbW1pdCA0OGFkNjJl
NTQzZjcyMzY0ZmE2NmFiYjhlYmNiYzk3ZDY2MTI3ZjY2CkF1dGhvcjogQmFydG9zeiBHb2xhc3pl
d3NraSA8YmFydG9zei5nb2xhc3pld3NraUBvc3MucXVhbGNvbW0uY29tPgoKcGh5OiBxY29tOiBx
bXAtY29tYm86IEFkZCBVU0IzK0RQIFBIWSBzdXBwb3J0IGZvciBOb3JkCgpUaGlzIHBhdGNoIGFk
ZHMgVVNCMytEUCBQSFkgc3VwcG9ydCBmb3IgdGhlIE5vcmQgU29DLCB3aGljaCBwcm92aWRlcyB0
d28KY29tYm8gUEhZcy4gSXQgaW50cm9kdWNlcyBhIG5ldyBxbXBfY29tYm9fb2Zmc2V0c192NiBz
dHJ1Y3R1cmUgdG8gaGFuZGxlCnRoZSBzcGVjaWZpYyBoYXJkd2FyZSBsYXlvdXQsIGluY2x1ZGlu
ZyBhIGRlZGljYXRlZCB1c2IzX3Bjc19hb24gcmVnaW9uIGF0Cm9mZnNldCAweDFlMDAuCgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyBiL2Ry
aXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gaW5kZXggYzM5Y2VkMTY4
ZDAzNS4uZGU4MmM3MTA3YzkyZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1xbXAtY29tYm8uYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC1jb21iby5jClsgLi4uIF0KPiBAQCAtNTM1OSw2ICs1NDIxLDEwIEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHFtcF9jb21ib19vZl9tYXRjaF90YWJsZVtdID0gewo+ICAJ
CS5jb21wYXRpYmxlID0gInFjb20saGF3aS1xbXAtdXNiMy1kcC1waHkiLAo+ICAJCS5kYXRhID0g
Jmhhd2lfdXNiM2RwcGh5X2NmZywKPiAgCX0sCj4gKwl7Cj4gKwkJLmNvbXBhdGlibGUgPSAicWNv
bSxub3JkLXFtcC11c2IzLWRwLXBoeSIsCj4gKwkJLmRhdGEgPSAmbm9yZF91c2IzZHBwaHlfY2Zn
LAo+ICsJfSwKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwg
YnV0IEkgbm90aWNlZCBhIHBvdGVudGlhbCBwcm9ibGVtIGZvciBWMTAKUEhZcyBsaWtlIGhhd2kg
ZHVyaW5nIGluaXRpYWxpemF0aW9uIGluIHFtcF9jb21ib19wb3dlcl9vbigpLgoKTG9va2luZyBh
dCBxbXBfY29tYm9fcG93ZXJfb24oKToKCmRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC1jb21iby5jOnFtcF9jb21ib19wb3dlcl9vbigpIHsKCS4uLgoJLyogb3ZlcnJpZGUgaGFyZHdh
cmUgY29udHJvbCBmb3IgcmVzZXQgb2YgcW1wIHBoeSAqLwoJaWYgKGFvbl90b2dnbGUgJiYgY2Zn
LT5yZWdzW1FQSFlfQU9OX1RPR0dMRV9FTkFCTEVdKSB7CgkJcXBoeV9jbHJiaXRzKGFvbl90b2dn
bGUsIGNmZy0+cmVnc1tRUEhZX0FPTl9UT0dHTEVfRU5BQkxFXSwgMHgxKTsKCQlxcGh5X2NscmJp
dHMoYW9uX3RvZ2dsZSwgY2ZnLT5yZWdzW1FQSFlfRFBfQU9OX1RPR0dMRV9FTkFCTEVdLCAweDEp
OwoJfQoJLi4uCn0KCkZvciBWMTAgUEhZcywgY2ZnLT5yZWdzW1FQSFlfQU9OX1RPR0dMRV9FTkFC
TEVdIGlzIGFzc2lnbmVkClFQSFlfVjEwX0NPTV9BT05fVVNCM19BT05fVE9HR0xFX0VOQUJMRSwg
d2hpY2ggZXZhbHVhdGVzIHRvIDB4MDAuIFNpbmNlIDB4MDAKZXZhbHVhdGVzIHRvIGZhbHNlLCB0
aGUgY29uZGl0aW9uIHNpbGVudGx5IHNraXBzIHRoZSBtYW5kYXRvcnkgQU9OIHRvZ2dsZQpjb25m
aWd1cmF0aW9uLgoKRmFpbGluZyB0byBvdmVycmlkZSB0aGUgaGFyZHdhcmUgcmVzZXQgZm9yIHRo
ZSBRTVAgUEhZIGNvdWxkIGNhdXNlIHRoZQpVU0IzL0RQIFBIWSB0byBmYWlsIHRvIGluaXRpYWxp
emUgcHJvcGVybHkgb24gVjEwIHBsYXRmb3Jtcy4KCklzIGl0IGludGVudGlvbmFsIHRoYXQgYSB2
YWxpZCBvZmZzZXQgb2YgMHgwMCB3aWxsIGNhdXNlIHRoaXMgY2hlY2sgdG8gZmFpbD8KCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5
MDEwOTUwNTUuNDIyMjktMS1zaGVuZ2NoYW8uZ3VvQG9zcy5xdWFsY29tbS5jb20/cGFydD00Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
