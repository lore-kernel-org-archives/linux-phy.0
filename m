Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73536C88E53
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5LqCWNMXeLyvZmtnpjnM3S0ebUnLazeCsgiHPpAkHF8=; b=imcorSd/J6Jj+0
	T2OTJITtAOFmH10BgX9ZR6gm/vgSlfcoVVp1OY6zd0nxaIh7sLoKHLRa8g1chsKAt6A7uIbdCx8Ol
	jqcWNnCQwWh+sGgmoHX2e3i+aNDf9t1ukdoFVykgpAde1LWI+AbLsTgoUwThJONyW3RJV+dNSoeSS
	arYLbO5xpzGhFMwn4hRQ9MIEN00W3aukXBz42IqysuNQx8cI9xZTwijI0zLxaJS3z98eRnDcYsU3J
	Wa4H2W5uOYvvbG0fCnxsm2GKlVxbHnqM7xM2wN24ROpYrKdBewYDkb0nF1eIX+H3ZDDJY7UcCojkO
	0PqQR6FdVYuQBbKMLxQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QFE-00000005tEc-0faB;
	Tue, 15 Sep 2026 10:18:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QFB-00000005tEA-2nOg
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:18:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6DF8F413F0;
	Tue, 15 Sep 2026 10:18:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D552F1F000FF;
	Tue, 15 Sep 2026 10:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789467509;
	bh=ByhpDgIefluvieKsbyCL+AsvxJJwFJzyBIxtC7pQ2B4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Sw1iS5Rv3gO3EWYwUUOwrO6eYWvI42jkT1iIXtjtLzArmzdjFwXK8nPJ+jwbRfO3i
	 lM4MMygkBKh7KxjzLIEYou74LiOvI4kIasAfVXoa/k+CJ8HyC8WmyT0wD1SoLflJgo
	 YEYyK5k/WH9btgNvXmDLArabVpRifS4c5XcrNlK0ZkdVKoXL/xQq5W3YfZ7htjU4iE
	 mghgFONe1QVqsXMDCkzGkp3PzHEAKasreoeyxAa2HQ9mh+jcLFJc9+c86lA+0w8SX9
	 aZ9LWv2+ixt7pjplFLU7h9oiPY09n+6XPgRZpDO0bF7eUhUnWcLCnUU5w6W+WN4GeB
	 eCzI3yy3DTevg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: Document MT8196 MediaTek
 PCI-Express Gen4 S-PHY
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260915101022.23852-2-angelogioacchino.delregno@collabora.com>
References: <20260915101022.23852-1-angelogioacchino.delregno@collabora.com>
 <20260915101022.23852-2-angelogioacchino.delregno@collabora.com>
Date: Tue, 15 Sep 2026 10:18:28 +0000
Message-Id: <20260915101828.D552F1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6
IHN0cmljdCBhcnJheSBwcmV2ZW50cyAxLWxhbmUgUy1QSFkgbnZtZW0gY29uZmlndXJhdGlvbgot
LQoKY29tbWl0IGM2ODQxYzIwZDgyYzFkYjk5NzYxZTMzYzE4OWM0NDk2MGI4YjUyODQKQXV0aG9y
OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bj
b2xsYWJvcmEuY29tPgoKZHQtYmluZGluZ3M6IHBoeTogRG9jdW1lbnQgTVQ4MTk2IE1lZGlhVGVr
IFBDSS1FeHByZXNzIEdlbjQgUy1QSFkKClRoaXMgY29tbWl0IGFkZHMgZGV2aWNlIHRyZWUgYmlu
ZGluZ3MgZm9yIHRoZSBNZWRpYVRlayBQQ0ktRXhwcmVzcyBHZW40IFMtUEhZCmZvdW5kIGluIG5l
d2VyIFNvQ3MgbGlrZSB0aGUgTVQ4MTk2LiBUaGUgUEhZIHN1cHBvcnRzIGxpbmsgcmF0ZXMgdXAg
dG8gMTYuMApHVC9zIHBlciBsYW5lLCB1cCB0byB0d28gbGFuZXMsIGFuZCBib3RoIFJvb3QgQ29t
cGxleCBhbmQgRW5kIFBvaW50IG1vZGVzLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxtdDgxOTYtcGNpZS1zcGh5LnlhbWwgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21lZGlhdGVrLG10ODE5Ni1wY2ll
LXNwaHkueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4u
M2ZkMWJmYmMzODIyZgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L21lZGlhdGVrLG10ODE5Ni1wY2llLXNwaHkueWFtbApbIC4uLiBd
Cj4gKyAgbnZtZW0tY2VsbC1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBp
bnQtcgpbIC4uLiBdCj4gKyAgICAgIC0gY29uc3Q6IHR4LWxhbmVzLXBtb3MKPiArICAgICAgLSBj
b25zdDogdHgtbGFuZXMtbm1vcwo+ICsgICAgICAtIGNvbnN0OiB0eC1sbjAtcnN3bgo+ICsgICAg
ICAtIGNvbnN0OiB0eC1sbjEtcnN3bgo+ICsgICAgICAtIGNvbnN0OiBjYWwtdmVyc2lvbgoKW1Nl
dmVyaXR5OiBNZWRpdW1dCkRvZXMgdGhpcyByaWdpZCBhcnJheSBzdHJ1Y3R1cmUgcHJldmVudCB2
YWxpZCAxLWxhbmUgUy1QSFkgY29uZmlndXJhdGlvbnMgZnJvbQpwYXNzaW5nIHNjaGVtYSB2YWxp
ZGF0aW9uPwoKRGVmaW5pbmcgYSBkZXZpY2UgdHJlZSBub2RlIGZvciBhIDEtbGFuZSBQSFkgdHlw
aWNhbGx5IGludm9sdmVzIG9taXR0aW5nIHRoZQp1bnVzZWQgInR4LWxuMS1yc3duIiBlRnVzZSBj
ZWxsLiBIb3dldmVyLCBiZWNhdXNlIHRoZSBpdGVtcyBhcnJheSBlbmZvcmNlcwpzdHJpY3QgcG9z
aXRpb25hbCBjb25zdHJhaW50cywgb21pdHRpbmcgdGhhdCBlbnRyeSBzaGlmdHMgdGhlIGluZGV4
IG9mIHRoZQpnbG9iYWwgImNhbC12ZXJzaW9uIiBjZWxsLiBUaGlzIHdpbGwgY2F1c2UgZHRfYmlu
ZGluZ19jaGVjayB0byBmYWlsIGZvcgpsZWdpdGltYXRlIDEtbGFuZSBjb25maWd1cmF0aW9ucy4K
CkNvdWxkIHRoZSBzY2hlbWEgYmUgYWRqdXN0ZWQgdG8gYWxsb3cgdGhlIHNlY29uZCBsYW5lJ3Mg
ZUZ1c2UgY2VsbCB0byBiZQpvcHRpb25hbCB3aXRob3V0IGJyZWFraW5nIHRoZSBleHBlY3RlZCBw
b3NpdGlvbiBvZiAiY2FsLXZlcnNpb24iPyBPdGhlcndpc2UsCml0IHNlZW1zIERUIGF1dGhvcnMg
YXJlIGZvcmNlZCB0byBlaXRoZXIgZHJvcCBjYWxpYnJhdGlvbiBlbnRpcmVseSBvciBpbmNsdWRl
CmlycmVsZXZhbnQgZHVtbXkgZUZ1c2UgcmVmZXJlbmNlcy4KCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTUxMDEwMjIuMjM4NTIt
MS1hbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20/cGFydD0xCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
