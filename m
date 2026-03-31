Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA36D109B469
	for <linux-phy@archiver.kernel.org>; Tue, 31 Mar 2026 13:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daGutXUoBHX9t73Kyf6BG+Bk7Q9hBo9X4rAh7e3nb7g=; b=F6S4SFuVhWhRi7
	ysnHiKRltu11DSinNf4NTgXO8uLJsOe/x1BYPYaaU+/Z7oMkEXm+MMIyVGFhU3CtIdrFQNGFwMhUQ
	zF0D1jhBXdyIZyVMb9uiWgr7uPDLC1lxstlz40soXgZWziyoJeo17HioOj6FzkCNNtdSN7MY33P7z
	fwoGPxelCpbdzSjYxcFhHr66kEYBe5EXDx5ieI8FHd0ey0xAHw2g6W3jkc40hWhXYgzMu2g2ZhFt/
	tgfoTE8STrdPjiHrZ1sHAdVPomIDcOQ9Gmj+IOXyp1zbo1G6qWvDadM22F6bhZnR8U9dAKDxYQe5o
	zAh/RBm1tUqttl4ChNEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Z5V-0000000D0Vy-1zPc;
	Tue, 31 Mar 2026 13:24:57 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Z5S-0000000D0Vf-0tgZ
	for linux-phy@lists.infradead.org;
	Tue, 31 Mar 2026 13:24:56 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 3CDBF1A30BD;
	Tue, 31 Mar 2026 13:24:44 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0D85E6029D;
	Tue, 31 Mar 2026 13:24:44 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B317610450244;
	Tue, 31 Mar 2026 15:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1774963483; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=E7Ob140Dq6HTtkbqjecnEQ6w1/azojyDrJ3ReUV8Pq8=;
	b=J9lbY+W8iiXqQLgBspSvxztaUefqdvpIcz6/RM2ykqNthSKO4TBI1cvuu8kK/z+WwMELrr
	htDSvvrheHtOnshkIolBb/ftSRQ6oiXVd82jLTHqo4G2nwex1hD91rdiwCcT2J/LL0BgX8
	ShX1hKuWtgsKPevj6baPfeyR2SVFyf48SZxe1yRg7j15VwBhqBEwrmwTY27RLJrfq4Woy8
	DYQH/TLrZNchzhGQkKq9YdRa09qRcB8lyVlh4ZV5WOLT4vePzuITEpu5b2xm3fpsVVyAZj
	x7yrpuxdP6h+nRUErHkNFDv7aaDw5if7l9DmxFUlMyWe1wPGXMekQ5tauZmWww==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gabor Juhos <j4g8y7@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Igal Liberman <igall@marvell.com>,  Kishon
 Vijay Abraham I <kishon@kernel.org>,  linux-phy@lists.infradead.org,
  linux-kernel@vger.kernel.org
Subject: Re: [PATCH phy-fixes] phy: marvell: mvebu-a3700-utmi: fix incorrect
 USB2_PHY_CTRL register access
In-Reply-To: <20260321-a3700-utmi-fix-usb2_phy_ctrl-access-v1-1-6005ff4b5058@gmail.com>
	(Gabor Juhos's message of "Sat, 21 Mar 2026 15:42:32 +0100")
References: <20260321-a3700-utmi-fix-usb2_phy_ctrl-access-v1-1-6005ff4b5058@gmail.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Tue, 31 Mar 2026 15:24:40 +0200
Message-ID: <87zf3o873b.fsf@bootlin.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_062454_408059_23B3EDAD 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
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

SGkgR2Fib3IsCgpPbiAyMS8wMy8yMDI2IGF0IDE1OjQyOjMyICswMSwgR2Fib3IgSnVob3MgPGo0
Zzh5N0BnbWFpbC5jb20+IHdyb3RlOgoKPiBUaGUgbXZlYnVfYTM3MDBfdXRtaV9waHlfcG93ZXJf
b2ZmKCkgZnVuY3Rpb24gdHJpZXMgdG8gbW9kaWZ5IHRoZQo+IFVTQjJfUEhZX0NUUkwgcmVnaXN0
ZXIgYnkgdXNpbmcgdGhlIElPIGFkZHJlc3Mgb2YgdGhlIFBIWSBJUCBibG9jayBhbG9uZwo+IHdp
dGggdGhlIHJlYWRsL3dyaXRlbCBJTyBhY2Nlc3NvcnMuIEhvd2V2ZXIsIHRoZSByZWdpc3RlciBl
eGlzdCBpbiB0aGUKPiBVU0IgbWlzY2VsbGFuZW91cyByZWdpc3RlciBzcGFjZSwgYW5kIGFzIHN1
Y2ggaXQgbXVzdCBiZSBhY2Nlc3NlZCB2aWEKPiByZWdtYXAgbGlrZSBpdCBpcyBkb25lIGluIHRo
ZSBtdmVidV9hMzcwMF91dG1pX3BoeV9wb3dlcl9vbigpIGZ1bmN0aW9uLgo+Cj4gQ2hhbmdlIHRo
ZSBjb2RlIHRvIHVzZSByZWdtYXBfdXBkYXRlX2JpdHMoKSBmb3IgbW9kw61meWluZyB0aGUgcmVn
aXN0ZXIKClNwdXJpb3VzIGFjY2VudCBoZXJlIDotKSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXgoKRG8geW91IGltcGx5IHRoYXQgdGhlIHJlZ2lzdGVyIGFjY2VzcyB3YXMgbm90IHdvcmtp
bmc/IE9yIHRoYXQgaXQgd2FzCm5vdCB1c2luZyB0aGUgY29ycmVjdCBBUEk/IChoZW5jZSBwb3Rl
bnRpYWwgaXNzdWVzIHdpdGggbG9ja2luZyBtaWdodCBhcmlzZSkKCgpSZXZpZXdlZC1ieTogTWlx
dWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KCk1pcXXDqGwKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
