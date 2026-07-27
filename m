Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10140C531D0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 19:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mrGRdgW2zgImkOnGN12TBahkR88GHO9ggndZSsL82k=; b=bKZOgyNEPeyVFJ
	4nMj9A/bB314gGpsG5E8BAaeUyyEVxlTtNunDS8LRp+EHB3nGI/b6qCL2EOYz67mm4fcK0vE9QDA8
	l+w131ubZoSOEzNVBru6fBC3w2fWmIUo8cY6ffjX5CmZDg6KtNYmSNfuNMt4l4ChLxNog92Y79Nrb
	M7G2jia8MVwfGWi8NK6PxNP2ke0F8B3S5hS4eNVME9txywF7Z015BS2/92aj9udn7wQpjK4lqD/Fy
	7ICLM7QkroVpYeAEs0KI7r90m2uP7Q9e2A54dErngBSgelfBcv03TvfO9bCGGQa/goYbbS+cV7VX3
	nKD4TVToEuMQr86j0eXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woRUL-00000003naO-2YVr;
	Mon, 27 Jul 2026 19:59:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woRUL-00000003naH-0iv9
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 19:59:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 708DC60008;
	Mon, 27 Jul 2026 19:59:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FB7C1F000E9;
	Mon, 27 Jul 2026 19:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785182388;
	bh=FDiV7rLci69xDNm7Qyr1WpfDhBaxkoOH9fi/2rAGev8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=URKxTNhFx3tEthoSedy3nRshx4iYI4Ed6b0h/2TxnpI2bsCGspjqN8PHIOvTei2tt
	 JVY/rCjbV6BofDYNqKDxHVDnPUxiAEVTaftYn6LYeVh2DPpwpYJjv3PwDP/5sGjcV8
	 /VmKKgtRD5h+wosESaM7Gqmnk0O5gTuSMUq6EZNDk41V5zW2qrCnYAzNe/3M0zbv2F
	 hMIQl3iSI8kNaf9rObspop7TpsMxa65lIsdkCTH+N9DhiWLoLGQFbb7sPZmc+19AbU
	 fI9c9zmO3xUV02rzxdr58mKcg3anWcUdcA3PCmWuV4TIIljwu+LmecoYZfSv5LKrXE
	 033SXbwwhy+JA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 11/12] reset: zte: Add a zx297520v3 reset driver
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: mfd@lists.linux.dev, robh@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, lee@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260727-zx29clk-v8-11-7a107b00f1dd@gmail.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-11-7a107b00f1dd@gmail.com>
Date: Mon, 27 Jul 2026 19:59:47 +0000
Message-Id: <20260727195947.9FB7C1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIEtjb25maWcg
ZW50cnkgc2VsZWN0cyBNRkRfU1lTQ09OIHdpdGhvdXQgaW5oZXJpdGluZyBpdHMgSEFTX0lPTUVN
IGRlcGVuZGVuY3ksIHJpc2tpbmcgYW4gdW5tZXQgZGlyZWN0IGRlcGVuZGVuY3kgd2FybmluZy4K
LS0KCi0tLSBQYXRjaCBbMTFdOiBbUEFUQ0ggdjggMTEvMTJdIHJlc2V0OiB6dGU6IEFkZCBhIHp4
Mjk3NTIwdjMgcmVzZXQgZHJpdmVyIC0tLQpjb21taXQgMTI3NDNhMTMwODIzYzU1YjA5MWUxZGQ2
OTcyNTU4ZWQ0OWMxOWQ2MQpBdXRob3I6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdl
ckBnbWFpbC5jb20+CgpyZXNldDogenRlOiBBZGQgYSB6eDI5NzUyMHYzIHJlc2V0IGRyaXZlcgoK
VGhpcyBjb21taXQgYWRkcyB0aGUgcmVzZXQgZHJpdmVyIGZvciBaVEUgengyOTc1MjB2MyBTb0Nz
IHRvIGRyaXZlIHRoZSBNRkQgCmNoaWxkIGRldmljZXMgY3JlYXRlZCBieSB0aGUgenRlLXp4Mjk3
NTIwdjMtY3JtIGRyaXZlci4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmVzZXQvS2NvbmZpZyBi
L2RyaXZlcnMvcmVzZXQvS2NvbmZpZwo+IGluZGV4IGQwMDllYjA4NDlhM2IuLjk3ZjQxNTc0ZDgx
ZDUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9yZXNldC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9y
ZXNldC9LY29uZmlnClsgLi4uIF0KPiArY29uZmlnIFJFU0VUX1pURV9aWDI5NzUyMFYzCj4gKwl0
cmlzdGF0ZSAiWlRFIHp4Mjk3NTIwdjMgUmVzZXQgRHJpdmVyIgo+ICsJZGVwZW5kcyBvbiBNRkRf
WlRFX1pYMjk3NTIwVjNfQ1JNIHx8IENPTVBJTEVfVEVTVAo+ICsJZGVmYXVsdCBTT0NfWlgyOTc1
MjBWMwo+ICsJc2VsZWN0IE1GRF9TWVNDT04KCltTZXZlcml0eTogTWVkaXVtXQpDb3VsZCB0aGlz
IHNlbGVjdCBzdGF0ZW1lbnQgdHJpZ2dlciBhbiB1bm1ldCBkaXJlY3QgZGVwZW5kZW5jeSB3YXJu
aW5nPwoKU2luY2UgdGhpcyBkcml2ZXIgY2FuIGJlIGJ1aWx0IHdpdGggQ09NUElMRV9URVNULCBp
dCBtaWdodCBiZSBjb21waWxlZCBvbgphcmNoaXRlY3R1cmVzIGxpa2UgVU1MIHRoYXQgZG8gbm90
IGVuYWJsZSBIQVNfSU9NRU0uIE1GRF9TWVNDT04gcmVxdWlyZXMKSEFTX0lPTUVNLCBzbyBzZWxl
Y3RpbmcgaXQgaGVyZSB3aXRob3V0IGluaGVyaXRpbmcgdGhlIEhBU19JT01FTSBkZXBlbmRlbmN5
CmNhbiBjYXVzZSBLY29uZmlnIHdhcm5pbmdzIGFuZCBwb3RlbnRpYWwgYnVpbGQgZmFpbHVyZXMu
CgpXb3VsZCBpdCBiZSBiZXR0ZXIgdG8gYWRkIGEgZGVwZW5kZW5jeSBvbiBIQVNfSU9NRU0/Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNzI3LXp4MjljbGstdjgtMC03YTEwN2IwMGYxZGRAZ21haWwuY29tP3BhcnQ9MTEKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
