Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26ACEC624D6
	for <linux-phy@archiver.kernel.org>; Wed,  2 Sep 2026 13:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c98Ieka8pikYqcrtEl47FZBl5TomHzgM61lDBKlSe+o=; b=zaruuAd6usGpgi
	QMx/WYouw28ZCPy8DHkIGUZ1S7iyMjxWIdrT6gFp2uSLwVwl5XRtsaWYFbTOD7LiWbDy7iHTln5T9
	ItWSej/5Dxtlni2rwVVnTtJQVioIS155/DiC5Yz1u/sR/+fkwMfXr71//FGH7/MWLr1rPVNGE3hAh
	DUfclI7Y/p5ccBPgkL+IeWvi4xPpxlZEZkwaE+JG0EqBYo0DS1JtZv+JIbzZa3AJmRwNbG9knZpye
	/njGV5KrwweKBlb0X1A0JI4Nb7bzjtl62tsxzl2lTC38oGbTg+UTl7J5ZywCjCA+VkuLuCIILBgUp
	wtcgsmRARzLtJsTIg4qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1lSX-0000000Err3-2nV7;
	Wed, 02 Sep 2026 13:57:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1lSW-0000000Erqd-1JCT
	for linux-phy@lists.infradead.org;
	Wed, 02 Sep 2026 13:57:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 03E4F43627;
	Wed,  2 Sep 2026 13:57:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FB5E1F000E9;
	Wed,  2 Sep 2026 13:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788357419;
	bh=jLZ9BFi7/CtxeBmTeS1rDSLvBn53L3jWlimsW0IktjI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SmGCrY7/iGuSRgoy/NFoOzou0NKw8yjgS81iAhveT4baERvWmRyDtD110vTDo1XX3
	 3gClpdnJ5DpvyBBdd6zIYEGQD79TqOIkFL0cquLORKV6oUhDTjQ03P0gSiHdb4nb4A
	 SmDPawIYUYH2hfwaLH96jiKawXScBDY9RpsbQ/MUYwpMmvO/wj2WuBFQVoJQU8Nwvg
	 2DgGdo6aQne51Tzk2s58piPpgdGta9HbS8/fPmiH42jiwuKP5DakAbduU7y4bVdAfs
	 ryLOFUo+dHsC/XbLhXZXbOy5S7m66TzIY92mMPSoqfVf58gS6xkM1qAPld3dXIlfeQ
	 A9cIZsGgQR47Q==
Date: Wed, 2 Sep 2026 15:56:42 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: David Carlier <devnexen@gmail.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, qiang.yu@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com, linux-phy@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: qcom: qmp-pcie: Select MFD_SYSCON for the
 multi-PHY driver
Message-ID: <zsu6kqnnyjoqs44aihc3e6w2mqrwbwovk23mmr6svj7n2tkdpp@k67xkbgmdm2c>
References: <20260825225729.230493-1-devnexen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260825225729.230493-1-devnexen@gmail.com>
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

T24gVHVlLCBBdWcgMjUsIDIwMjYgYXQgMTE6NTc6MjhQTSArMDEwMCwgRGF2aWQgQ2FybGllciB3
cm90ZToKPiBUaGUgZHJpdmVyIHJlYWRzIHRoZSBhY3RpdmUgbGluayBtb2RlIHRocm91Z2gKPiBz
eXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlX2FyZ3MoKS4gV2l0aG91dCBDT05GSUdfTUZE
X1NZU0NPTiB0aGUKPiBzdHViIHJldHVybmluZyAtRU5PVFNVUFAgaXMgY29tcGlsZWQgaW4gaW5z
dGVhZCwgc28gcHJvYmUgZmFpbHMgZm9yCj4gZXZlcnkgZGV2aWNlIGFuZCBubyBQSFkgaXMgZXZl
ciByZWdpc3RlcmVkLgo+IAo+IE5vdGhpbmcgaW4gdGhlIGJ1aWxkIGNhdGNoZXMgdGhpczogdGhl
IGRyaXZlciBzdGlsbCBjb21waWxlcywgYW5kIGFybTY0Cj4gZGVmY29uZmlnIGhhcHBlbnMgdG8g
ZW5hYmxlIE1GRF9TWVNDT04gdGhyb3VnaCBhbiB1bnJlbGF0ZWQgc2VsZWN0Lgo+IAo+IEZpeGVz
OiAxNzgxYmUzYzhhNWQgKCJwaHk6IHFjb206IHFtcC1wY2llOiBBZGQgUU1QIFBDSWUgTXVsdGkt
UEhZIGRyaXZlciIpCj4gU2lnbmVkLW9mZi1ieTogRGF2aWQgQ2FybGllciA8ZGV2bmV4ZW5AZ21h
aWwuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5z
YWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPg
r43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
