Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0E0FC61DB9
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 21:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lz243WrYTFMFAjwhYy20H2IS+G3gb8K5x2jRwC3e8B0=; b=RV58d9WLaM7paM
	aikm32Mcdd3blIbBQcCrKONWhwLb2U1/dywSvY5fF8G6JezeiahkmMEC0tmDdI7gEr/jiW02N8jDd
	6/tolaROcggZAThmoagmbJu9H7btEW2kwZbZTFUh1IRSMlGtbie9FRRfN8EXWCiGjqVohaSfc/1AI
	qnjnzI+GBzPNWRR5F3bMCEyfH2YRzss8s+leyOhOMIQH0d/0+FSqqJrLpsiPANKCJn8XYn3pmeqY/
	KFslc7dPfUUn7u0UUKDBMrVNUDYCZ9lANvqtbX0Uryt3zGbUKtBW5EhYVSFTiMEvrAW/aRVYG3y8n
	cGeCbc62e82cEYZOOycA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyoG-00000001XhV-3dD1;
	Tue, 25 Aug 2026 21:35:56 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyoG-00000001XhN-0qKa
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 21:35:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9970641480;
	Tue, 25 Aug 2026 21:35:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C20161F000E9;
	Tue, 25 Aug 2026 21:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787693755;
	bh=PiuyAAnXTD/FBHz2Q4sESKePsIDGYD5uWtmcS3Qb9C8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YEG+cxRu/gZezdrrROsY1yDw2/CBLeZBckjfWwYOfctkVwTLPpvNA6YXyn4uoN64h
	 nT/0bWbUBsLeps68OD487q4cwteBTVANpk10jt5Pmi9In12O9f5w7HuQHv/l7DAEL3
	 Nv94kTFQvbDpHmZDv4loHjPDLc0sOXnjE83YwkMMm1m3GaSV9DtQSTeRdixhNDBJG4
	 wOCIKMgH3wSXbFOkvf9VlN7TYf8v/s4jU+OG3300zk2zqGrorcscLwgPwp/Eo2vp7q
	 y6s6rI3pxWlOpxnPsuAIE90tlGWJw/OIkkA3v5dFjvROXzbjmmxTKYZD/jXFltb5GT
	 pWIzZFKauTy2A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 08/12] clk: zte: Add zx PLL support infrastructure
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, lee@kernel.org, mfd@lists.linux.dev, vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, robh@kernel.org, linux-clk@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260826-zx29clk-v11-8-f8ad59c6426c@gmail.com>
References: <20260826-zx29clk-v11-0-f8ad59c6426c@gmail.com>
 <20260826-zx29clk-v11-8-f8ad59c6426c@gmail.com>
Date: Tue, 25 Aug 2026 21:35:54 +0000
Message-Id: <20260825213554.C20161F000E9@smtp.kernel.org>
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

PiBUaGlzIHBhdGNoIGFkZHMgY29kZSB0byBkZWNvZGUgYW5kIHByb2dyYW0gUExMIHNldHRpbmdz
IG9uIFpURSdzCj4gengyOTc1MjB2MyBTb0MuIFRoZSBQTExzIG9uIHRoaXMgU29DIGFyZSB1c3Vh
bGx5IHByb2dyYW1tZWQgdG8gc3RhdGljCj4gdmFsdWVzIGJ5IHRoZSBib290IGxvYWRlci4gVGhl
IG9ubHkgc2l0dWF0aW9uIHdoZXJlIC5zZXRfcmF0ZSBtYXR0ZXJzIGlzCj4gZHBsbCwgd2hpY2gg
aXMgbm90IHByb2dyYW1tZWQgaW4gc29tZSBjYXNlcy4gVGhlIGJvb3Rsb2FkZXIgYWx3YXlzIHNl
dHMKPiBmaXhlZCByYXRlcyB0aG91Z2g6IDYyNCBNSHogZm9yIG1wbGwsIDIwMCBmb3IgZ3BsbCwg
NDgwIGZvciB1cGxsLgo+IAo+IFBhcnNpbmcgdGhlIGJvb3Rsb2FkZXItcHJvZ3JhbW1lZCB2YWx1
ZXMgYWxsb3dzIHRoZSBjbG9jayBkcml2ZXIgdG8gZmlsbAo+IHRoZSBjbG9jayB0cmVlIHdpdGgg
YXBwcm9wcmlhdGVseSBjbG9ja2VkIHBhcmVudCBjbG9ja3MgaW5zdGVhZCBvZgo+IHJlZ2lzdGVy
aW5nIGZpeGVkIGNsb2NrcyB3aXRoIGhhcmRjb2RlZCByYXRlcy4KPiAKPiBJIG9ubHkgdGVzdGVk
IHRoZSBjb2RlIG9uIHp4Mjk3NTIwdjMuIEZyb20gbG9va2luZyBhdCB0aGUgaGFyZGNvZGVkIFBM
TAo+IHZhbHVlcyBpbiB0aGUgb2xkIHp4Mjk2NzAyIC8gengyOTY3MTggY29kZSBJIGJlbGlldmUg
dGhhdCB0aGVzZSBQTExzIHVzZQo+IHRoZSBzYW1lIGVuY29kaW5nLCBzbyB0aGUgY29kZSBhZGRl
ZCBieSB0aGlzIHBhdGNoIHNob3VsZCBiZSByZXVzYWJsZQo+IGFuZCB0aGUgZmlsZSBoYXMgYSBy
ZWxhdGl2ZWx5IGdlbmVyaWMgbmFtZSBwbGwtenguYy4KPiAKPiBSZXZpZXdlZC1ieTogQnJpYW4g
TWFzbmV5IDxibWFzbmV5QHJlZGhhdC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIETDtnNp
bmdlciA8c3RlZmFuZG9lc2luZ2VyQGdtYWlsLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRo
aXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlr
byBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODI2LXp4
MjljbGstdjExLTAtZjhhZDU5YzY0MjZjQGdtYWlsLmNvbT9wYXJ0PTgKCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
