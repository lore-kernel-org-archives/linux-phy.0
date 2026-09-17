Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5CAEC982CC
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 00:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbCFiBn306oEzyU8/bTLrUJV3RihHBNfO3YvnOnkxYE=; b=lHsKzn9w9p64NZ
	RW7BEDPmKA0RHhwuGVNq5UhN/F9sQE05o1RHLOoVKpS9nrh9Op4NmdIxFg9TB42uHC8LaeLYUanGb
	kxQYHAZs9gAAtuWjT0sB32eGUsZgQLQ+kArVLa6fSaVYJhb7qYmxnmc1nwxpnsZ9J2+aFqT5xgLJb
	juApu7lREKUSSej1ORb2E4EcnQplUqOST7p2druo1HNUPGj6GiuGNTFiCb5x9lQpH5ksMsAl+CX8R
	Fj0BTOJOrtg9EfG1ix5QDl/N3FzCvYDLBXGQTeZb3HeEWSyidylLH7IPfw8MiLW1LhjU46YKZ/l+V
	NNIh946ZtZTNyldor7dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6zdE-0000000AJA8-0KDJ;
	Thu, 17 Sep 2026 00:05:40 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6zdD-0000000AJ9v-0vvI
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 00:05:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 91A3442D63;
	Thu, 17 Sep 2026 00:05:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB7241F000FF;
	Thu, 17 Sep 2026 00:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789603538;
	bh=LaTXhBOLpDYl5c0g04j5QXFoyBzEH7zQCsn3AEdnAsk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XdmbdRRkXYoS8TMwuPfBoP8LFQRj3Fh6wAHsUwIFohD/cQoxmnqi8gfhOrQFXbkvT
	 g2bAU6qLtdHX7hhElqXv/dQcPBUCafgU9yFUb2HQWQpkuK0ZVPKlc92CDxMrpb50bf
	 e9X9TZ29aGOpNvqEoU424+WxTd18vIgomStPGhfZNeQzB93P2GnzTpaBfKvVrT0hsr
	 4fcehXg3f+OS1JP+ZmMgiekLzfRrRfVJCkWZoCcz+SDWLTb33g3Ag7dd+CkHZakvI+
	 rHlu9naiSdhXJ1BlNeJ4aC1o1lcIE3VA3piIXi2tpznYct9b0pswW/Nit112sCuBDv
	 vuTSsFc41NM1Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v18 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: neil.armstrong@linaro.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, olteanv@gmail.com, media-ci@linuxtv.org
In-Reply-To: <20260917-x1e-csi2-phy-v18-1-6515b5255fa9@linaro.org>
References: <20260917-x1e-csi2-phy-v18-0-6515b5255fa9@linaro.org>
 <20260917-x1e-csi2-phy-v18-1-6515b5255fa9@linaro.org>
Date: Thu, 17 Sep 2026 00:05:37 +0000
Message-Id: <20260917000537.EB7241F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IHBo
eTogcWNvbTogSW5jb21wbGV0ZSBjb25zdHJhaW50cyBmb3IgRFBIWSBzcGxpdC1tb2RlCi0tCgpj
b21taXQgZjRhOTViYjlmY2NlNmVlNzdhM2MzZjhlMGIwYmMwYmM1MzhhMGFhNwpBdXRob3I6IEJy
eWFuIE8nRG9ub2dodWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgoKZHQtYmluZGluZ3M6
IHBoeTogcWNvbTogQWRkIENTSTIgQy1QSFkvRFBIWSBzY2hlbWEKCkFkZCBhIGJhc2Ugc2NoZW1h
IGZvciB0aGUgTUlQSSBDU0kyIFBIWXMgb24gUXVhbGNvbW0gU29Dcy4gVGhlIHNjaGVtYQpzdXBw
b3J0cyBib3RoIEMtUEhZIGFuZCBELVBIWSBtb2RlcywgYXMgd2VsbCBhcyBhIHNwbGl0LW1vZGUg
YWxsb3dpbmcgdHdvCnNlbnNvcnMgdG8gYmUgY29ubmVjdGVkIHRvIG9uZSBQSFkuCgo+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20seDFlODAx
MDAtY3NpMi1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cWNvbSx4MWU4MDEwMC1jc2kyLXBoeS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRl
eCAwMDAwMDAwMDAwMDAwLi5kYzY0YWY5N2RhNmM2Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSx4MWU4MDEwMC1jc2kyLXBo
eS55YW1sClsgLi4uIF0KPiArICAgICAgICBhbGxPZjoKPiArICAgICAgICAgIC0gaWY6Cj4gKyAg
ICAgICAgICAgICAgcmVxdWlyZWQ6Cj4gKyAgICAgICAgICAgICAgICAtIGVuZHBvaW50QDEKPiAr
ICAgICAgICAgICAgdGhlbjoKPiArICAgICAgICAgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAg
ICAgICAgICAgZW5kcG9pbnRAMDoKPiArICAgICAgICAgICAgICAgICAgcHJvcGVydGllczoKPiAr
ICAgICAgICAgICAgICAgICAgICBkYXRhLWxhbmVzOgo+ICsgICAgICAgICAgICAgICAgICAgICAg
bWF4SXRlbXM6IDIKPiArICAgICAgICAgICAgICAgICAgICAgIGl0ZW1zOgo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICBtYXhpbXVtOiAyCj4gKyAgICAgICAgICAgICAgICBlbmRwb2ludEAxOgo+
ICsgICAgICAgICAgICAgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgICAgICAgICAgICAgIGRh
dGEtbGFuZXM6Cj4gKyAgICAgICAgICAgICAgICAgICAgICBpdGVtczoKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgLSBjb25zdDogMwoKW1NldmVyaXR5OiBMb3ddCkRvZXMgdGhpcyBzY2hlbWEg
bGFjayBzdWZmaWNpZW50IGNvbnN0cmFpbnRzIGZvciB0aGUgc3BsaXQtbW9kZSBlbmRwb2ludHM/
CgpUaGUgc3BsaXQtbW9kZSBkZWZpbml0aW9uIGluIHByb3BlcnRpZXMucG9ydHMucHJvcGVydGll
cy5wb3J0QDAuYWxsT2YgYXBwZWFycwp0byBiZSBtaXNzaW5nIGJ1cy10eXBlIHJlc3RyaWN0aW9u
cywgY2xvY2stbGFuZXMgY29uc3RyYWludHMsIGFuZCBhbiBleHBsaWNpdAptYXhJdGVtcyByZXN0
cmljdGlvbiBmb3IgZW5kcG9pbnRAMS4gV2l0aG91dCB0aGVzZSwgYSBtaXNjb25maWd1cmVkIGRl
dmljZQp0cmVlIHV0aWxpemluZyBzcGxpdC1tb2RlIHdpdGggYW4gaW52YWxpZCBidXMtdHlwZSwg
aW5jb3JyZWN0IGNsb2NrLWxhbmVzLCBvcgpleHRyYSBkYXRhLWxhbmVzIG9uIGVuZHBvaW50QDEg
d2lsbCBwYXNzIGR0LXNjaGVtYSB2YWxpZGF0aW9uIHNpbGVudGx5LgoKQ291bGQgZXhwbGljaXQg
Y29uc3RyYWludHMgYmUgYWRkZWQgaGVyZSB0byBlbmZvcmNlIHRoZSBELVBIWSBidXMtdHlwZSwK
cmVzdHJpY3QgdGhlIGNsb2NrLWxhbmVzIHBvc2l0aW9ucywgYW5kIHN0cmljdGx5IGxpbWl0IG1h
eEl0ZW1zPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDkxNy14MWUtY3NpMi1waHktdjE4LTAtNjUxNWI1MjU1ZmE5QGxpbmFyby5v
cmc/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
