Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2B52C44527
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 10:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezhM1b4V8G40eX9ZFXLcx+yENy3XJAcMxaAPqQXs1J0=; b=3DfVN5nf2kuwI0
	wH7s2Dkf9Q5xIZgP3sdK6y9NtK4tkzXl8OmpM8XGniL/RwoPF1QlvE+mJ1qseWTLo0T8YrrYS/+zm
	cqIk4enN8uRV3ogcerMrsgEC6QUJnt8JXx4KayBQ2V9aD+J5I98vZc8IBhnaKLYP5ifJqsMA3Mclj
	EuKeFGUZSkw5ZSVj22nXig81D0ynmbs5XE4ssSHFZTb8FMDYGy9B/BClvRF3cSjF8SpemDyx4nQND
	H6gEE3lDJOix5iy20DGtNCCJdL6biucC6eY/On+3OcSa4REf944wJMeXak9013kpgxZylQEnUm/Mo
	zPaEQHnUGfq8X4h5I9Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wllEX-00000006UIf-1eLk;
	Mon, 20 Jul 2026 10:28:25 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wllEV-00000006UIE-2mmp
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 10:28:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BE96F601D9;
	Mon, 20 Jul 2026 10:28:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 057EF1F000E9;
	Mon, 20 Jul 2026 10:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784543302;
	bh=ZWFD+P/ScLaPhoYyW2AG1C8VHtfDssOAacG8huos2nM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Sg2rsXc+ZFGbVyFT0YySEY7brfWJDD0N6T/Ivd8eyEJ+BTUTwyCTFpBCI1MYg/1AO
	 PahM+6QbAyksLUR5WNEkr3BW+BC4Yh3R4/TP6nfTuJZXGX/mZl3/cdAWMMYQWbvvtb
	 d7Z4yqjOdZ5otUraEy0Wwos0l9X9wRZ6OWQJOBtQ3KGvLXnC7J4wyijQToOh1D2PlK
	 A12vdLAVoZvvFXybDMHWeOwN/M30/6+26ZhHZgPu1FxAuCZx2v3KxGYtmZQBjr98rp
	 Ayax6B35Mqg8vR/xxIUr9Vp2LnWkLpF8RxSVvZ+KF4xicFjLbayS0Xj7yW+bS5iWA/
	 Sy2uUuzlT6XYw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: nuvoton,ma35d1-usb2-phy:
 extend for dual-port and OTG
To: "Joey Lu" <a0987203069@gmail.com>
Cc: robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20260720102222.251179-2-a0987203069@gmail.com>
References: <20260720102222.251179-1-a0987203069@gmail.com>
 <20260720102222.251179-2-a0987203069@gmail.com>
Date: Mon, 20 Jul 2026 10:28:21 +0000
Message-Id: <20260720102822.057EF1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGAjcGh5LWNlbGxz
YCBwcm9wZXJ0eSB1c2VzIGFuIGBlbnVtYCBjb25zdHJhaW50IGluc3RlYWQgb2YgYSBgY29uc3Rg
IGNvbnN0cmFpbnQsIHZpb2xhdGluZyBEZXZpY2UgVHJlZSBCaW5kaW5ncyBndWlkZWxpbmVzLgot
LQoKLS0tIFBhdGNoIFsxXTogW1BBVENIIHY0IDEvM10gZHQtYmluZGluZ3M6IHBoeTogbnV2b3Rv
bixtYTM1ZDEtdXNiMi1waHk6IGV4dGVuZCBmb3IgZHVhbC1wb3J0IGFuZCBPVEcgLS0tCmNvbW1p
dCA2NzZjMzAzMThkZjQwNGI5ZmIyNWI3MTAzMjZiMzU5ZjQxYTVjZjEwCkF1dGhvcjogSm9leSBM
dSA8YTA5ODcyMDMwNjlAZ21haWwuY29tPgoKZHQtYmluZGluZ3M6IHBoeTogbnV2b3RvbixtYTM1
ZDEtdXNiMi1waHk6IGV4dGVuZCBmb3IgZHVhbC1wb3J0IGFuZCBPVEcKClRoaXMgY29tbWl0IHVw
ZGF0ZXMgdGhlIE51dm90b24gTUEzNUQxIFVTQjIgUEhZIGJpbmRpbmcgdG8gc3VwcG9ydCBkdWFs
IHBvcnRzCm1hbmFnZWQgYnkgdGhlIHNhbWUgaGFyZHdhcmUgYmxvY2suIEl0IG1vZGlmaWVzIHRo
ZSAjcGh5LWNlbGxzIHByb3BlcnR5IHRvCmFsbG93IHZhbHVlcyBvZiAwIG9yIDEgZm9yIHBvcnQg
c2VsZWN0aW9uLCB3aGlsZSBwcmVzZXJ2aW5nIGJhY2t3YXJkCmNvbXBhdGliaWxpdHkuIEl0IGFs
c28gaW50cm9kdWNlcyBvcHRpb25hbCBwcm9wZXJ0aWVzIGZvciByZXNpc3RvciBjYWxpYnJhdGlv
bgp0cmltIGNvZGVzIGFuZCBvdmVyLWN1cnJlbnQgZGV0ZWN0IHBvbGFyaXR5LgoKPiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9udXZvdG9uLG1hMzVk
MS11c2IyLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9u
dXZvdG9uLG1hMzVkMS11c2IyLXBoeS55YW1sCj4gaW5kZXggZmZmODU4YzkwOWEwNi4uMWJkMjJk
ZDBlNWZjNSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L251dm90b24sbWEzNWQxLXVzYjItcGh5LnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L251dm90b24sbWEzNWQxLXVzYjItcGh5LnlhbWwKWyAuLi4g
XQo+IEBAIC0xNSw3ICsyNywxMiBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAtIG51dm90b24sbWEz
NWQxLXVzYjItcGh5Cj4gIAo+ICAgICIjcGh5LWNlbGxzIjoKPiAtICAgIGNvbnN0OiAwCj4gKyAg
ICBlbnVtOiBbMCwgMV0KCltTZXZlcml0eTogTG93XQpEb2VzIHRoaXMgdmlvbGF0ZSB0aGUgZGV2
aWNlIHRyZWUgYmluZGluZyBzdWJzeXN0ZW0gcnVsZXMgZm9yIGNlbGwtY291bnQKcHJvcGVydGll
cz8gVGhlIGd1aWRlbGluZXMgc3BlY2lmeSB0aGF0IGVhY2ggY2VsbC1jb3VudCBwcm9wZXJ0eSBt
dXN0IGhhdmUKYSBjb25zdCBjb25zdHJhaW50IG1hdGNoaW5nIHRoZSBoYXJkd2FyZSwgcmF0aGVy
IHRoYW4gYW4gZW51bSBjb25zdHJhaW50LgoKSWYgdGhlIGhhcmR3YXJlIHJlcXVpcmVzIGRpZmZl
cmVudCBjb25maWd1cmF0aW9ucyBkZXBlbmRpbmcgb24gdGhlIHZhcmlhbnQKb3IgYmFja3dhcmQg
Y29tcGF0aWJpbGl0eSwgc2hvdWxkIHRoaXMgYmUgZW5mb3JjZWQgdXNpbmcgY29uZGl0aW9uYWwg
aWYtdGhlbgpibG9ja3MgaW5zdGVhZCBvZiBhbGxvd2luZyBlaXRoZXIgdmFsdWUgdW5jb25kaXRp
b25hbGx5PwoKPiArICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICBXaGVuIDAsIHRoZSBub2RlIGV4
cG9zZXMgUEhZMCBvbmx5IGFuZCBjb25zdW1lcnMgcmVmZXJlbmNlIGl0Cj4gKyAgICAgIHdpdGgg
bm8gY2VsbCBhcmd1bWVudC4gV2hlbiAxLCB0aGUgc2luZ2xlIGNlbGwgc2VsZWN0cyB0aGUgcG9y
dCwKPiArICAgICAgd2l0aCAwIGZvciB0aGUgT1RHIHBvcnQgKFVTQjAsIHNoYXJlZCB3aXRoIERX
QzIgZ2FkZ2V0IGNvbnRyb2xsZXIpCj4gKyAgICAgIGFuZCAxIGZvciB0aGUgaG9zdC1vbmx5IHBv
cnQgKFVTQjEpLgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzIwMTAyMjIyLjI1MTE3OS0xLWEwOTg3MjAzMDY5QGdt
YWlsLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
