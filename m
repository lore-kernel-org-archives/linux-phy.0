Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43904CA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 12:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=esT3kJt34crumSR10Z59oIbmQs/zHpe6ELuRTQLQr30=; b=saOJtal900vqEC
	pSYD2RVCoqDzVTJMm6ULCvEdEjQo289rGJqbYdP02EffYux864RRsqdqEnRgmqTpnBGfscJAtvxAC
	L3D0n+VuFk8Yy3h+W7iHlkHl3w8CPTm8CWX9Xm5DszyCRtrE8s2m58kOliQCUkfCTzOPIlm8Cf7IT
	15+a3uyODanO3YSnH2M1M8ilJ7BgnDhtb0S4z3zrX192Am15Qckru0PyWefDjz8D/O/iqZXoEme3K
	NCQmL59znLIngvHmaP9+U/G53HKiY+YbqHyUt9deZZO3ZKWAhCJpZEFTfvb/yGSG9S3JuO7jzXkYi
	G7Eixpn4VzaqrU/uMUpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFZc-0000000AVcF-3PRY;
	Mon, 12 Oct 2026 12:56:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFZa-0000000AVbn-38XK
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 12:56:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D2AA660AA2;
	Mon, 12 Oct 2026 12:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38E221F0089B;
	Mon, 12 Oct 2026 12:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791809769;
	bh=Ib8A78xeZlcVLWl71P+eBDWU00+aCJZSmbdI9EMbj0c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VBRKvTJYnETdUH/8YKPE5x3wlitUAS4JV03s52xDY9mSlaA3oFnJCvOhCnnZ5Ten2
	 9annwOEKPh5ZhQ3K99DfYMNUpwV771RvvLAvpK2Sv193G2kU4Ix8HV+C6qX4Ma0m/Y
	 Jcrgf2OyagtSKZusRJJ8tV1BHA+nlCX6CBqDacW/dwGPm/qcMNBiLM6GKuLAOWpA4i
	 aH35j9CtXwqStt5uAINtgGofCumYQI36+iKMVYioGp184Vn1/4lptjEvJEZyqnnrjk
	 ds27YnCgNrvekilyN9xqJSLc7zLHVbnTO5z90kG7jYSy3+DniGGvaYlZRjTveNLFNh
	 tZgLHQGqWi9cg==
Date: Mon, 12 Oct 2026 18:26:01 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, johan@kernel.org, 
	kishon@kernel.org, rogerq@ti.com, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, zhongling0719@126.com
Subject: Re: [PATCH v8 2/4] phy: ti: pipe3: Fix clock resource leak on probe
 errors
Message-ID: <aszYBh49xgeByYlU@debian>
References: <20260909122630.1313205-1-zenghongling@kylinos.cn>
 <20260909122630.1313205-3-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260909122630.1313205-3-zenghongling@kylinos.cn>
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

T24gV2VkLCBTZXAgMDksIDIwMjYgYXQgMDg6MjY6MjhQTSArMDgwMCwgSG9uZ2xpbmcgWmVuZyB3
cm90ZToKPiBXaGVuIGRldm1fcGh5X2NyZWF0ZSgpIG9yIGRldm1fb2ZfcGh5X3Byb3ZpZGVyX3Jl
Z2lzdGVyKCkgZmFpbHMsCj4gdGhlIHJlZmNsayB0aGF0IHdhcyBlbmFibGVkIGVhcmxpZXIgaXMg
bm90IGRpc2FibGVkLCBjYXVzaW5nIGEKPiByZXNvdXJjZSBsZWFrLgo+IAo+IEZpeCB0aGlzIGJ5
IGFkZGluZyBhbiBlcnJvciBoYW5kbGluZyBwYXRoIHRvIGRpc2FibGUgdGhlIGNsb2NrCj4gd2hl
biB0aGVzZSBmdW5jdGlvbnMgZmFpbC4KPiAKPiBGaXhlczogMjM0NzM4ZWEzMzkwICgicGh5OiB0
aS1waXBlMzogbW92ZSBjbGsgaW5pdGlhbGl6YXRpb24gdG8gYSBzZXBhcmF0ZSBmdW5jdGlvbiIp
Cj4gU2lnbmVkLW9mZi1ieTogSG9uZ2xpbmcgWmVuZyA8emVuZ2hvbmdsaW5nQGt5bGlub3MuY24+
CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2
YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+Cu
qeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
