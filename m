Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28F29C9832F
	for <linux-phy@archiver.kernel.org>; Mon, 28 Sep 2026 01:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vilB+Q5nLQjDY+5lY6+mpOhtrfZTn2CYZca+o+4soGI=; b=SBgvvTrDmfIDyZ
	B3ZiXY2jUFbj5fxp9rteT/crAu+I8R8CSxtwhdZF6F/zBTwVP2FJ8ywlAP1PVwrazL801gsbIm6Gv
	bsCiw6RnqT4P/e/oVaLuljKVQ8yFn1w+VWm++c3GAtAw13rcGc7otiyLsxfAA/Jug+l6M1FVLy1IC
	jTwxerh/cjVeE/7E1WuD1v75vrKFRKxRLbCElrCZU7VT1F/B2F2HHaBzshypBeT92npOxK7hOkisa
	RUQ4rYu/QlAIBb7szKjjozp8x38D2jmqZPaoZa7/Q9OAL+JRz9DQZdXPNokfn9+0KpvgXM4N7cSwe
	qwvxbCKNKnXzKm0ynlzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB0Xg-0000000H9J2-2hnc;
	Mon, 28 Sep 2026 01:52:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB0Xf-0000000H9In-1Boe
	for linux-phy@lists.infradead.org;
	Mon, 28 Sep 2026 01:52:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9844942A44;
	Mon, 28 Sep 2026 01:52:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5024C1F000FF;
	Mon, 28 Sep 2026 01:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790560350;
	bh=g4qrWy3y9uJPbY/OvSLN+16ssruOHCwhOSiPWblXYLI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HvYvrmvkJWMwBO+WhRnWuCQbCsMwmrNOsEeVCzwcxQIbvj0ZBWGVgAUbSVOK1xSyf
	 J7nlySDhq7nKs6pZzXtntzhxyMRztP9wi90657FA/E0kfku9uZgQrUdPmXfjOuiMqg
	 SOPSrK+D3yQzyr3NG6kSyq2/6l8CnXtjc8CJbjBC15cofD6+wn2+0rsVvXzQOiNOfR
	 Mu2L2445KOwySBNVRCGPSwXO4QPVPtfh1emZp42aEPgxmG3lipRE3/qldvhblor3fG
	 Fc+KiGjJNAvJO1bx3yCFbdpWs5gGT2Lwn2VFdsVH92N7agBJSiY7Pjm6veLk7NECqB
	 PsM3eidw2onfg==
Date: Mon, 28 Sep 2026 03:52:11 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Matthias Goergens <matthias.goergens@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-phy@lists.infradead.org
Subject: Re: [PATCH] MAINTAINERS: name the phy/linux-phy next branch
Message-ID: <3zhlyj7yz5wkd3yh3p6t6dhck2kta5ksjgoci3b26li5szna6n@jpen4lp6swz7>
References: <20260927051252.2751812-1-matthias.goergens@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260927051252.2751812-1-matthias.goergens@gmail.com>
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

T24gU3VuLCBTZXAgMjcsIDIwMjYgYXQgMDE6MTI6NTJQTSArMDgwMCwgTWF0dGhpYXMgR29lcmdl
bnMgd3JvdGU6Cj4gVGhlIFQ6IGVudHJ5IGZvciBHRU5FUklDIFBIWSBGUkFNRVdPUksgbmFtZXMg
cGh5L2xpbnV4LXBoeSB3aXRob3V0IGEKPiBicmFuY2guICBUaGUgcmVwb3NpdG9yeSdzIEhFQUQg
cG9pbnRzIHRvIGJyYW5jaCBtYXN0ZXIsIHdoaWNoIG1haW5saW5lCj4gYWxyZWFkeSBjb250YWlu
cy4gIGxpbnV4LW5leHQgbWVyZ2VzIHRoZSBuZXh0IGJyYW5jaCBvZiB0aGlzIHJlcG9zaXRvcnkK
PiAoTmV4dC9UcmVlcykuICBOYW1lIHRoYXQgYnJhbmNoIGluIHRoZSBlbnRyeS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBNYXR0aGlhcyBHb2VyZ2VucyA8bWF0dGhpYXMuZ29lcmdlbnNAZ21haWwuY29t
PgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNp
dmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
