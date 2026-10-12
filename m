Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE62BCA9ED2
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 08:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=izUWptOQC3u3ELbJ7081dgQ9x06HbMwg8R70a2shMGU=; b=yYiFPYw07uH9XN
	aXkhe4nPZRibnzp7dU9LMchc033kcuCzt4F9q6FC33r5UBNgAUGPTPdGdBx84TZtrtxxpKenqtXwA
	VFmDZmpwW6ZfSeik3BvlcYYYxHYg/MhOkNl0JjsFO5JsOHRlquYonmuL8PDpmjviZZfkq4tizBF3Y
	KbMNtkCg7Y9yhV5gXIcJPseTQMl50/l5nSpOGNpz2dnRTnLFftvb+re7pHhVj9IcB3jUng0Z62d4l
	6WXIvoBgYzEeU0wztiyqX3L0vsjBOzSZ9Fwv4sBbxCSF683GTS94cjfdbzNW5u7w1tWwKvmz+x55i
	/qFZPYE4f/fqtcbpm7rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBrR-0000000A0ab-0har;
	Mon, 12 Oct 2026 08:58:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBrN-0000000A0YT-2zOR
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 08:58:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0669860DC9;
	Mon, 12 Oct 2026 08:58:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 923901F0089F;
	Mon, 12 Oct 2026 08:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791795496;
	bh=e1jhGbCn69m+FqoYLARBUZEA2QcQMRqtXf2Owfq47Ow=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FVOoBAm7iag08CbogldvyabCM7fqP1HEA5yabYdeECPLA8wddYW5KuUccrDCtCyII
	 2im1ZV2faidPNVcxCXL+hE4kCrg6w+9DmiK5kMfCA/olSFTMEPSVHl7aGyWHwIJhuw
	 8NSCWd2IhFbVuZQ+NhbtHbrPwfiD8GxJ0vptZT59WvQaCUbEQbBJkwaGy+CkIfejrv
	 QgCHtROjD4uVXNaZLKHtqadkihI/7h3M72I0vFAhACMLncA//xO23tNKO6kunb0Eb2
	 7f4H1qlYBD81g8ewY9DWnpUG+2/CILSne23P23urY0h1SN5CRS5Nz8jg02vXgj7W84
	 kt+mYGrKiwPUA==
Date: Mon, 12 Oct 2026 14:28:09 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Felix Gu <ustc.gu@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, 
	=?utf-8?B?5ZGo55Cw5p2wIChaaG91IFlhbmppZSk=?= <zhouyanjie@wanyeetech.com>, Paul Cercueil <paul@crapouillou.net>, 
	=?utf-8?B?5ryG6bmP5oyvIChRaSBQZW5nemhlbik=?= <aric.pzqi@ingenic.com>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: ingenic: fix unbalanced regulator disable in exit
Message-ID: <asyhGGmjvEIxdfsU@debian>
References: <20260906-ingenic-v1-1-2311f3df8ddc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260906-ingenic-v1-1-2311f3df8ddc@gmail.com>
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

T24gU3VuLCBTZXAgMDYsIDIwMjYgYXQgMDk6MzA6MzFQTSArMDgwMCwgRmVsaXggR3Ugd3JvdGU6
Cj4gZXhpdCgpIGFuZCBwb3dlcl9vZmYoKSBib3RoIGRpc2FibGUgdmNjX3N1cHBseSwgc28gdGhl
IHJlZ3VsYXRvcgo+IGdldHMgZGlzYWJsZWQgdHdpY2UgZm9yIGV2ZXJ5IHBvd2VyIGN5Y2xlLCBj
YXVzaW5nIGFuIHVuYmFsYW5jZWQKPiBkaXNhYmxlIFdBUk4uCj4gCj4gRHJvcCB0aGUgcmVndWxh
dG9yX2Rpc2FibGUoKSBjYWxsIGZyb20gdGhlIGV4aXQgY2FsbGJhY2sgYW5kIGxlYXZlCj4gdGhl
IHJlZ3VsYXRvciB0byB0aGUgcG93ZXJfb24vcG93ZXJfb2ZmIHBhaXIuCj4gCj4gRml4ZXM6IDMx
ZGUzMTNkZmRjZiAoIlBIWTogSW5nZW5pYzogQWRkIFVTQiBQSFkgZHJpdmVyIHVzaW5nIGdlbmVy
aWMgUEhZIGZyYW1ld29yay4iKQo+IFNpZ25lZC1vZmYtYnk6IEZlbGl4IEd1IDx1c3RjLmd1QGdt
YWlsLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4u
c2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j
4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
