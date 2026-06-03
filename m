Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCA10CD6E4A
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 05:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHUjE7qeTNWNF3KcVoowXKlI/kdKZ5h/4pBL0OW7tk0=; b=Z3XXZiSPT4Li7B
	Sokcu77TlbdllKREcICYTBePnn7HTkdMy6EdiOLv4GGZh3E9ribGoTLSBJVuDw8h7x1iRit7cgD43
	wvXercxnTZtE2jcR04VhSOy6a65b6uq0KqP9ksN3VS1tQ4KhpxRx17yIyufQMIvdwa/w3I0bV/Ow7
	E0eH0OIoB/J+nZrAgVGetnthJBhbIIK4bkDtCUA17kV0Z+bsL+oxmjVCmB4Tdw5zKtMRAddNih1tm
	Z7iqoYqmH2pVGkvGllNTV6szW7eM/6BCBqIk48V3ajjWPa273ZDq4q+p72lhFPNmF41LWq7mCEVep
	VUOyYMU0SDRPTepMFkPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUeZR-0000000EKwu-2WwZ;
	Wed, 03 Jun 2026 05:55:17 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUeZQ-0000000EKtj-02IJ
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 05:55:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3570260229;
	Wed,  3 Jun 2026 05:55:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DBDE1F008A1;
	Wed,  3 Jun 2026 05:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780466114;
	bh=m72tQO36EozvSScd6gBkhrOXXAJ3yAsNeXVOSlp17nQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=N2X1t0Xrij37jLSzIK2Pv2l4cU4OKBkuoP8yMiTXCE1sTlBsrYssqZi55WilgvlpI
	 B5zjaYhWtUDtmoBANZpSCPf5ORRI2TAJ/iZGI/vLpCeSv/zeQhlWQVjX0MKJEaKT1d
	 BMJuXyfL76JLKqg/eTOClH0xLtz+8E2QFvfaSiLRiOmasxAVE1cFqddpNgT/zeBWtH
	 CHEZqsc83+6/MIFl/zot6UNGOWu5idPQxrn1qTio1gXiC+WApyj6uExd6mb8zHMzRV
	 QlRrUVrmePhfVDbR0oXHcUn56GMhSYYumv6n0tWVnPmG0ppvhKmcNhr0H9VEi+XVJ1
	 DS+3N6Ocs4NYg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,usb-hs-phy: add
 qcom,vendor-init-seq
To: "Herman van Hazendonk" <github.com@herrie.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260603054809.565723-2-github.com@herrie.org>
References: <20260603054809.565723-2-github.com@herrie.org>
Date: Wed, 03 Jun 2026 05:55:14 +0000
Message-Id: <20260603055514.7DBDE1F008A1@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGBxY29tLHZlbmRv
ci1pbml0LXNlcWAgcHJvcGVydHkgdXNlcyBhIGZsYXQgYHVpbnQ4LWFycmF5YCB0eXBlIGluc3Rl
YWQgb2YgYHVpbnQ4LW1hdHJpeGAsIHByZXZlbnRpbmcgZHQtc2NoZW1hIGZyb20gZW5mb3JjaW5n
IGl0cyByZXF1aXJlZCBhZGRyZXNzLXZhbHVlIHBhaXIgc3RydWN0dXJlLgotLQoKY29tbWl0IGMz
MTUwMWY4ZDE3MWQxMDBlYTgyYzU1NDk2NmIzMGZjODJhOGJjMmMKQXV0aG9yOiBIZXJtYW4gdmFu
IEhhemVuZG9uayA8Z2l0aHViLmNvbUBoZXJyaWUub3JnPgoKZHQtYmluZGluZ3M6IHBoeTogcWNv
bSx1c2ItaHMtcGh5OiBhZGQgcWNvbSx2ZW5kb3ItaW5pdC1zZXEKClRoaXMgY29tbWl0IGludHJv
ZHVjZXMgdGhlIHFjb20sdmVuZG9yLWluaXQtc2VxIHByb3BlcnR5IHRvIHRoZSBRdWFsY29tbQpV
U0IgSFMgUEhZIGJpbmRpbmcuIEl0IGFsbG93cyBwYXNzaW5nIHJhdyBVTFBJIChhZGRyZXNzLCB2
YWx1ZSkgcGFpcnMgdG8KYmUgd3JpdHRlbiBhZnRlciBQSFkgcmVzZXQsIHRhcmdldGluZyB0aGUg
c3RhbmRhcmQgVUxQSSB2ZW5kb3IgcmVnaXN0ZXIKcmFuZ2UgZm9yIE1TTTh4NjAtY2xhc3MgaGFy
ZHdhcmUgY29uZmlndXJhdGlvbi4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvcWNvbSx1c2ItaHMtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sdXNiLWhzLXBoeS55YW1sCj4gaW5kZXggZTAzYjUx
NmM2OThjYy4uYjllY2E2NzA0MTlhOCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sdXNiLWhzLXBoeS55YW1sCj4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHVzYi1ocy1waHkueWFtbAo+IEBAIC04
NSw2ICs4NSwyMCBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAgICAgICB0aGUgYWRkcmVzcyBpcyBv
ZmZzZXQgZnJvbSB0aGUgVUxQSV9FWFRfVkVORE9SX1NQRUNJRklDIGFkZHJlc3MKPiAgICAgICAg
ICAtIGRlc2NyaXB0aW9uOiB2YWx1ZQo+ICAKPiArICBxY29tLHZlbmRvci1pbml0LXNlcToKPiAr
ICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQ4LWFycmF5Cgpb
U2V2ZXJpdHk6IExvd10KU2luY2UgdGhlIHNlcXVlbmNlIGNvbnNpc3RzIG9mIChhZGRyZXNzLCB2
YWx1ZSkgcGFpcnMsIHNob3VsZCB0aGlzIHVzZQovc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0
aW9ucy91aW50OC1tYXRyaXggaW5zdGVhZCBvZiB1aW50OC1hcnJheT8KClVzaW5nIGEgdWludDgt
bWF0cml4IHdpdGggYW4gaW5uZXIgaXRlbXMgbGlzdCB3b3VsZCBhbGxvdyB0aGUgZHQtc2NoZW1h
CnZhbGlkYXRpb24gdG9vbCB0byBzdGF0aWNhbGx5IGNhdGNoIG1hbGZvcm1lZCBwcm9wZXJ0aWVz
IHRoYXQgZG8gbm90IGhhdmUKYW4gZXZlbiBudW1iZXIgb2YgYnl0ZXMuIFRoaXMgd291bGQgc3Ry
dWN0dXJhbGx5IGVuZm9yY2UgdGhlIHR3by1ieXRlIHR1cGxlCmxheW91dCBiZWZvcmUgcnVudGlt
ZSwgc2ltaWxhciB0byB0aGUgZXhpc3RpbmcgcWNvbSxpbml0LXNlcSBwcm9wZXJ0eS4KCj4gKyAg
ICBkZXNjcmlwdGlvbjogPgo+ICsgICAgICBGbGF0IHNlcXVlbmNlIG9mIHJhdyBVTFBJIGFkZHJl
c3MvdmFsdWUgYnl0ZSBwYWlycyB3cml0dGVuIGFmdGVyCj4gKyAgICAgIHRoZSBQSFkgcmVzZXQu
IEVhY2ggcGFpciBpcyB0d28gY29uc2VjdXRpdmUgYnl0ZXM6Cj4gKyAgICAgIFthZGRyMCwgdmFs
MCwgYWRkcjEsIHZhbDEsIC4uLl0uIFRvdGFsIGxlbmd0aCBtdXN0IGJlIGV2ZW4gYW5kCj4gKyAg
ICAgIG5vIG1vcmUgdGhhbiA2NCBieXRlcyAoMzIgcGFpcnMpLiBVbmxpa2UgcWNvbSxpbml0LXNl
cSB0aGUKPiArICAgICAgYWRkcmVzcyBmaWVsZCBpcyBub3Qgb2Zmc2V0IGJ5IFVMUElfRVhUX1ZF
TkRPUl9TUEVDSUZJQywgc28gdGhpcwo+ICsgICAgICBwcm9wZXJ0eSBjYW4gcmVhY2ggdGhlIHN0
YW5kYXJkIFVMUEkgdmVuZG9yIHJhbmdlICgweDMwLTB4M2YpIOKAlAo+ICsgICAgICB1c2VkIG9u
IE1TTTh4NjAtY2xhc3MgaGFyZHdhcmUgdG8gcHJvZ3JhbSBwcmUtZW1waGFzaXMsIEhTCj4gKyAg
ICAgIGRyaXZlciBzbG9wZSBhbmQgQ0RSIGF1dG8tcmVzZXQgYml0cyB0aGUgbGVnYWN5IG1zbV9v
dGcgZHJpdmVyCj4gKyAgICAgIHVzZWQgdG8gc2V0IHZpYSBwbGF0Zm9ybSBkYXRhLgo+ICsgICAg
bWF4SXRlbXM6IDY0Cj4gKwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDYwMzA1NDgwOS41NjU3MjMtMS1naXRodWIuY29tQGhlcnJp
ZS5vcmc/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
