Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02543C98332
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 14:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjWC/FVElnzGOih4qw9+EM7c1LwR8k5V8dfSIiLKbso=; b=UY9gvUGyaaQmQj
	QcA0T8MUo4B7DSr9aBN5qfplu75ZdFWwJL2ayHF5KQ35LNd6XCfKhbnrNZm8lOD7B6MDAPED4HLyD
	plaV02mBk6HqVsaJ4xMgB4qyKqyguTmu9DDvy4kV+JBwro1dSE9+jotp+eYsve4thORqqJNch/8yI
	I1tKBSue2/lDlQWfRGZWpGr2IhxF7Fm7uFU54fgrqjg1VIQ326Nxj+AIqmmeEUVlCC9oYvAEts5TL
	c4ns24rjObN7iGJcKblwCNx23m/hP1RCuiIX2PaY3xrK+EQMtENdRm+/v36OPA3DKPOpw8eGJkQ8q
	uT7REqcFnfPls6ConPmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xATBV-0000000FVjG-205p;
	Sat, 26 Sep 2026 14:15:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xATBU-0000000FVj7-2NQZ
	for linux-phy@lists.infradead.org;
	Sat, 26 Sep 2026 14:15:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D9FC940410;
	Sat, 26 Sep 2026 14:15:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F38361F000FF;
	Sat, 26 Sep 2026 14:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790432123;
	bh=Gr/iacFCwh+sjRpNoj5szNI+DOV5L3jvvj4xWWMPkj0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=R22D8EukaVpS7Cx1OTfzPl+uOuOpFbHV/kp4FDLM3USJ/7Epd2SgFAFFgH5tFoQT0
	 8bse+IHrRvIkJVR2AZp1OtJohR8JP5V1llvYwytQTcFre2hPhYHm1+QewJ+hK0lPsN
	 WB2qBTzZiCeVSl5hvCUx+hF9Io/0bq+eh2BQO/ZD1un3kXirVrXUYThpQyfiF5K4pl
	 vFNabkTiLrJy+BgXDtciEAlcQxThfXq6WZ8GfpVYoUMZJd92+cAvJnIY857251B7kM
	 tscuP2/tD8sEwI94x/3+yHSgnU3hzH+vVwWfNjNA9CrlUFq+oFRxdQ2UTjrTAX75gM
	 QoDN27gvZKC3A==
Date: Sat, 26 Sep 2026 16:15:11 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Guangshuo Li <lgs201920130244@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Johan Hovold <johan@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: ti: omap-usb2: fix OF node leak at probe
Message-ID: <3ehunghv42o7kbfb3t6vb6gzoxm4wvmb3i4cyvldxis3xaifwx@aj5dtsuyxpyr>
References: <20260708081254.734892-1-lgs201920130244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260708081254.734892-1-lgs201920130244@gmail.com>
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

T24gV2VkLCBKdWwgMDgsIDIwMjYgYXQgMDQ6MTI6NTRQTSArMDgwMCwgR3VhbmdzaHVvIExpIHdy
b3RlOgo+IG9tYXBfdXNiMl9wcm9iZSgpIHBhcnNlcyB0aGUgY3RybC1tb2R1bGUgcGhhbmRsZSBh
bmQgdGhlbiBsb29rcyB1cCB0aGUKPiBjb3JyZXNwb25kaW5nIHBsYXRmb3JtIGRldmljZS4KPiAK
PiBvZl9wYXJzZV9waGFuZGxlKCkgcmV0dXJucyBhIGRldmljZSBub2RlIHdpdGggYSByZWZlcmVu
Y2UgdGhhdCBtdXN0IGJlCj4gZHJvcHBlZCBieSB0aGUgY2FsbGVyLiBUaGUgZHJpdmVyIGN1cnJl
bnRseSBrZWVwcyB0aGUgZGV2aWNlIHJlZmVyZW5jZQo+IHRha2VuIGJ5IG9mX2ZpbmRfZGV2aWNl
X2J5X25vZGUoKSB1bnRpbCB1bmJpbmQsIGJ1dCBuZXZlciBkcm9wcyB0aGUKPiB0ZW1wb3Jhcnkg
T0Ygbm9kZSByZWZlcmVuY2UgdGFrZW4gYnkgb2ZfcGFyc2VfcGhhbmRsZSgpLgo+IAo+IERyb3Ag
dGhlIE9GIG5vZGUgcmVmZXJlbmNlIGFmdGVyIG9mX2ZpbmRfZGV2aWNlX2J5X25vZGUoKSBoYXMg
Y29uc3VtZWQKPiB0aGUgbm9kZS4gVGhpcyBjb3ZlcnMgYm90aCB0aGUgc3VjY2Vzc2Z1bCBsb29r
dXAgcGF0aCBhbmQgdGhlCgpUaGlzIHNlbnRlbmNlIGlzIGFicnVidGx5IGN1dC1vZmYuCgo+IAo+
IEZpeGVzOiA5OTU1YTc4MzViZjMgKCJwaHk6IG9tYXAtdXNiMjogdXNlICpzeXNjb24qIGZyYW1l
d29yayBBUEkgdG8gcG93ZXIgb24vb2ZmIHRoZSBQSFkiKQoKVGhpcyBmaXhlcyB0YWcgbG9va3Mg
d3JvbmcuIEl0IGp1c3QgdXNlcyB0aGUgc3lzY29uIEFQSSBidXQgdGhlIGxlYWsgcHJlZGF0ZXMK
dGhhdCBjb21taXQuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a
4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
