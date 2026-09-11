Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4415CC79FA1
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 05:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8iBxB8nBhQ2lRlLw+eyRm57StWAYQLc4SfGozucU9Y=; b=Dpya2cF36R0pRq
	9lfFRxLikEBUZRGHpricBymPkSq6XCBFWSzqQlFmTaxfV5ElnBiOtjZzxuxez78wH5nUVXOKYkMkj
	lCOTDcO+erg/nIADTKs8Yj2mL22FO2BHi02iLUQcnd7fpBbU3sZsU6LCEoTeHHXYEHBg2/NqO0QLv
	qPzhtUbBSM5V6HPBZwrEjg/NhlR1+1uz0GlYycCkYctJH7vIKXhDAqFSWwbENTyW3GROu06FwHJDW
	tcLwHb0LvLri8gmG+0ZYMY/nZjUk8+1JQNb6U/krxpzrQpVjayRnNgQCqgevD6sufvzvcogaLJOfZ
	YTHHdA451woyU+11a5Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tnR-0000000FsDZ-3uhn;
	Fri, 11 Sep 2026 05:27:33 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tnP-0000000FsDM-443Y
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 05:27:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 013A7601EF;
	Fri, 11 Sep 2026 05:27:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1AE81F000FF;
	Fri, 11 Sep 2026 05:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789104450;
	bh=RCKkOAoiWDDQl0cPV0565ONJCphPQ0/irxotZB4/flI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GtoDR1n9wRq/zokwNVcO/UZkXFDEQh0TharHM2CxAuKbUYcGF70esFvcVpayckE46
	 qriAmNTdkwnxmbpFTzM8ol79iadbfJlI3pJqUSsj5JnOw6xExRoosG7dqBLKdKDQ2r
	 UqXpm2CXeqxIVwg5f2k0opdYbsSDLK3TYUh4psAYjx1EJbQYn0j/Kdmd1Eg/Z1R18O
	 xSP1M183aRLfveMghutabeFwcam3jLYrizuKL0MBLr0prZwmieJ3Qs+SymVx0OeIp/
	 iNkTSOdR4NvAB7jVfBCeSEt5kDY/MQS36k3nRJKKahzuNp9szlCY8tTxafEhtzO5iP
	 EJbFz0CMmlP3w==
Date: Fri, 11 Sep 2026 07:27:24 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, 
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v4 5/9] phy: qualcomm: qmp-combo: Add v8 PCS-level drive
 level tables for Glymur
Message-ID: <yc6fcxdbhsanbh3bi3e2wkqm5wtewg65wjca7mol4s7iszgblc@sj6ql4s5y3yc>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
 <20260908-glymur-phy-v3-v4-5-ff22e5150538@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260908-glymur-phy-v3-v4-5-ff22e5150538@oss.qualcomm.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBTZXAgMDgsIDIwMjYgYXQgMDc6MzA6NThQTSArMDUzMCwgTmFiaWdlIEFhbGEgd3Jv
dGU6Cj4gRnJvbTogUml0ZXNoIEt1bWFyIDxyaXRlc2gua3VtYXJAb3NzLnF1YWxjb21tLmNvbT4K
PiAKPiBBZGQgUENTLWxldmVsIGRyaXZlIGxldmVsIHRhYmxlcyBmb3IgdGhlIEdseW11ciAoVjgp
IERQIFBIWToKPiAtIHFtcF9kcF92OF9sbl9kcnZfbHZsX2hicjNfaGJyMjogTE4wL0xOMV9EUlZf
TFZMIHNldHRpbmdzIGZvciBIQlIzL0hCUjIKPiAtIHFtcF9kcF92OF9sbl9kcnZfbHZsX2hicl9y
YnI6IExOMC9MTjFfRFJWX0xWTCBzZXR0aW5ncyBmb3IgSEJSL1JCUgo+IC0gcW1wX2RwX3Y4X3By
ZV9lbXBoYXNpc19oYnJfcmJyOiB1cGRhdGVkIFRYX0VNUF9QT1NUMV9MVkwgdmFsdWVzIGZvcgo+
ICBIQlIvUkJSCj4gCj4gQWRkIGxuX2Rydl9sdmxfaGJyX3JiciBhbmQgbG5fZHJ2X2x2bF9oYnIz
X2hicjIgcG9pbnRlciBmaWVsZHMgdG8KPiBxbXBfcGh5X2NmZyB0byBhbGxvdyBwZXItcGxhdGZv
cm0gUENTIGRyaXZlIGxldmVsIHRhYmxlIHNlbGVjdGlvbi4KPiAKPiBXaXJlIHRoZSBuZXcgdGFi
bGVzIGludG8gZ2x5bXVyX3VzYjNkcHBoeV9jZmcsIHJlcGxhY2luZyB0aGUgcHJldmlvdXNseQo+
IHVzZWQgcW1wX2RwX3Y2X3ByZV9lbXBoYXNpc19oYnJfcmJyIHdpdGggdGhlIGNvcnJlY3RlZCB2
OCB0YWJsZS4KPiAKClBhdGNoIGRlc2NyaXB0aW9uIGRvZXNuJ3QgZXhwbGFpbiB3aHkgdGhpcyBj
aGFuZ2UgaXMgbmVlZGVkLCBidXQganVzdCBkZXNjcmliZXMKdGhlIGNoYW5nZS4gSXMgaXQgZml4
aW5nIGFuIGlzc3VlPyBJZiBzbywgdGhlcmUgc2hvdWxkIGJlIGEgcmVsZXZhbnQgZml4ZXMgdGFn
LgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCu
v+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
