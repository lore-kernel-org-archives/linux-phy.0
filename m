Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA637C43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 12:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PXsf+IVNsdaib6G7BGg2WKlQkHsa0gagjz0MEocaArU=; b=dfSdYTCIJD4lKv
	7gtv+xPki6K/qyBqOdh1sp9bMc18XHB7+5rTBCvPuqM1yseEUgXxaoNqz4wxhCrTLarHAvVY7oVcs
	36oSsTYHUOuTEk0rdQBsoKizHWiWWPUphpkwmMWi6wnnD9mVyGn079JASCe3Xjuo7UxNmrN4XZKmJ
	7NnFK5cgGtNunsvkivp7bMkxw7MGyEx0GRnTmVHYzI4BZRjEKRT6dZE2TmzIl28f9KaCQKlkSD9GK
	Z9dCq9x+xOwhZbvZgEZS84YT2aNKBEiNxcqTInrJ0kOahxqG8ZeaIPvkl37T1eieGDMhvSDYReo7+
	PoDWsQvHA/kTygfMUDqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whRQb-0000000H7o8-1gOE;
	Wed, 08 Jul 2026 12:31:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whRQZ-0000000H7o2-3TBw
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 12:30:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4656F60008;
	Wed,  8 Jul 2026 12:30:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 887D01F000E9;
	Wed,  8 Jul 2026 12:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783513859;
	bh=IlRUXPFk2vbTLOIm+kuVmkj1sw5VqyQ4MktpZxd7404=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ay1zj8vZYSav8wjcQ6wosWFhTht8HqV4gL9USLz0d5pLvF5Fbytqzd6zGF7Tt7YuY
	 oUaq8w5bH9DW6RTd/GLtT1o2AHSWbUTPGfzAF6sVHIkX7ZjF5kOvWmBWeQK34TQSLy
	 rsDsf3wLalkYLy0nSt+O64v9Wm2iUY35FeKPEv5eLdsmqm9uZU0+W41psOjRg2rtu1
	 Rr7rdTOHYPq63vmLlRl03MR5NDBZ87+/on/ipWIJDtYSQKyBbGnzvPXY9Le3r3uJoP
	 o6uN0/zmZ93CZdSzVhcA/QKE51JpjA5/XkOc3avCtdlxDDw8/Yqiku7OmbpXqeFiwY
	 sDW3znjm/MGpA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 4/5] arm64: dts: qcom: Add Shikra IQ2390S SoM
 platform
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, robh@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260708-shikra-dt-v7-4-977b65a300c1@oss.qualcomm.com>
References: <20260708-shikra-dt-v7-0-977b65a300c1@oss.qualcomm.com>
 <20260708-shikra-dt-v7-4-977b65a300c1@oss.qualcomm.com>
Date: Wed, 08 Jul 2026 12:30:58 +0000
Message-Id: <20260708123058.887D01F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIHRvcC1sZXZlbCBH
UElPIGtleXMgbm9kZSBpcyBpbmNvcnJlY3RseSBuYW1lZCBgZ3Bpby1rZXlgIGluc3RlYWQgb2Yg
dGhlIHN0YW5kYXJkIGBncGlvLWtleXNgLgotLQoKLS0tIFBhdGNoIFs0XTogW1BBVENIIHY3IDQv
NV0gYXJtNjQ6IGR0czogcWNvbTogQWRkIFNoaWtyYSBJUTIzOTBTIFNvTSBwbGF0Zm9ybSAtLS0K
Y29tbWl0IGUzOWZhMmRkNDcwYzc4ZmQ0ODJlNDA2MWYyYmNlODcyNTBkZGE1MjMKQXV0aG9yOiBL
b21hbCBCYWphaiA8a29tYWwuYmFqYWpAb3NzLnF1YWxjb21tLmNvbT4KCmFybTY0OiBkdHM6IHFj
b206IEFkZCBTaGlrcmEgSVEyMzkwUyBTb00gcGxhdGZvcm0KClRoaXMgY29tbWl0IGFkZHMgdGhl
IGRldmljZSB0cmVlIGluY2x1ZGUgZm9yIHRoZSBJUTIzOTBTIHZhcmlhbnQgb2YgdGhlClNoaWty
YSBTeXN0ZW0tb24tTW9kdWxlLiBJdCBpbmNsdWRlcyB0aGUgY29tbW9uIHNoaWtyYS5kdHNpIGFu
ZCBhZGRzClBNODE1MCBQTUlDIHJlZ3VsYXRvciBkZWZpbml0aW9ucyBzcGVjaWZpYyB0byB0aGlz
IHZhcmlhbnQuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3Jh
LWlxcy1zb20uZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zaGlrcmEtaXFzLXNvbS5k
dHNpCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi43Mzk0NWJm
NDIxMTJkCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9z
aGlrcmEtaXFzLXNvbS5kdHNpCj4gQEAgLTAsMCArMSwxNzAgQEAKPiArLy8gU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IEJTRC0zLUNsYXVzZQo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgKGMpIFF1YWxj
b21tIFRlY2hub2xvZ2llcywgSW5jLiBhbmQvb3IgaXRzIHN1YnNpZGlhcmllcy4KPiArICovCj4g
Kwo+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+Cj4gKyNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9waW5jdHJsL3Fjb20scG1pYy1ncGlvLmg+Cj4gKwo+ICsjaW5jbHVkZSAic2hpa3Jh
LmR0c2kiCj4gKyNpbmNsdWRlICJwbTgxNTAuZHRzaSIKPiArCj4gKy8gewo+ICsJZ3Bpby1rZXkg
ewo+ICsJCWNvbXBhdGlibGUgPSAiZ3Bpby1rZXlzIjsKCltTZXZlcml0eTogTG93XQpUaGlzIGlz
bid0IGEgYnVnLCBidXQgaXMgdGhpcyB0b3AtbGV2ZWwgbm9kZSBuYW1lZCBjb3JyZWN0bHk/IERl
dmljZXRyZWUKY29udmVudGlvbnMgdHlwaWNhbGx5IHVzZSBzdGFuZGFyZCBnZW5lcmljIG5hbWVz
IGxpa2UgZ3Bpby1rZXlzIGFjcm9zcyB0aGUKc3Vic3lzdGVtIHJhdGhlciB0aGFuIHRoZSBzaW5n
dWxhciBncGlvLWtleS4gCgo+ICsJCWxhYmVsID0gImdwaW8ta2V5cyI7Cj4gKwkJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKPiArCQlwaW5jdHJsLTAgPSA8JnZvbF91cF9uPjsKClsgLi4uIF0K
Ci0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjA3MDgtc2hpa3JhLWR0LXY3LTAtOTc3YjY1YTMwMGMxQG9zcy5xdWFsY29tbS5jb20/cGFy
dD00CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
