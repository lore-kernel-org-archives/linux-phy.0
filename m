Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4CBE606A31C
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 12:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LlhA3nC+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Quvh53VK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=W30Pt/IexqXY/IUv4e7Y/XbkCQbqTzgCnNcV0c/Ksx4=; b=LlhA3nC+R2Upj1IpAtJGyhr+UR
	Xihwio4kl4WvpJYuF11fl7vxWoTD17/+t8PMt56KGjaJTErJQjrfKauR0ZWpWLrf2tFi0+9B+Nh/l
	oi6c+n38yVTwDwiHy3WMxN1M8DFN0g6YbPXcWWYkIv9oZF2wiJSrwP2ezoD+A0Zy1UQWd9evxwyBC
	dP6nWswE42sSIhJasK67jWAzdBKgE51P71CGUjPPMSwKODCeTvYIzptHLCXuV1eaTjqh6DmvPULdi
	oj8ng3BI+hSWfXjVjVdKUgmHODO6xtV4znJHju6l6qigSumv0JTRGWrPQwuPpzW0toFrBINFEpONy
	WgBoLlDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWYI6-0000000D7Ky-2qkx;
	Thu, 26 Nov 2026 12:09:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWYI5-0000000D7Kq-026U
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 12:09:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 24BAC60E4A;
	Thu, 26 Nov 2026 12:09:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58E2D1F000CF;
	Thu, 26 Nov 2026 12:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795694967;
	bh=ufox2MWoi6eY6wvmUNiQ+WJPk+WOfJe/bj+EEBIBUck=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Quvh53VKotfKSVP935WSdNQDjs4m4Z0oHKehb0sQy0Sa37eEyqCn2Y202Q7/aecva
	 G+gIYaEJs7Qc79jOhraSOLUiMCVBNAq9y03iYSqRwrAi04oP3X5olkUDNiof1iB7yt
	 9t9THPVp8wht4fdIUSSu41tyn7eP4jdWUcOgn++1jd2EiBx+rLoeL/xBofJRWP87eH
	 snlLhJpEjR/SUiSqvdk1Q2Iba7nXJVagAxZj3kkjIjuYRwKKKfDUaNxxe1V8RcLJy6
	 EP4V3ywZMqOjV/Bz4RW5inuyXPmsyLZUuN+qqMtZZGmERfup6EgedKa6cD7pRL/Jl6
	 SGtc+7bK8rUwg==
Message-ID: <sashiko-outbox-235479@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: mediatek: hdmi: Fix potential stale PLL provider
 on unbind
To: "Tian Xuechen" <202300460064@mail.sdu.edu.cn>
Cc: dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261126120039.4049943-1-202300460064@mail.sdu.edu.cn>
References: <20261126120039.4049943-1-202300460064@mail.sdu.edu.cn>
Date: Thu, 26 Nov 2026 12:09:26 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogbWVkaWF0ZWs6IGhk
bWk6IG1pc3NpbmcgU2lnbmVkLW9mZi1ieSB0cmFpbGVyIGZvciBjb21taXQKICBhdXRob3IKLS0K
CmNvbW1pdCA3MTg5MTliMjIyZTY3YWRiOWMxNDI1NTUzNzJiYTRmYmI3ZjhlMGM5CkF1dGhvcjog
R3VhbmdzaHVvIExpIDxsaWd1YW5nc2h1b0BtYWlsLnNkdS5lZHUuY24+Cgo+IHBoeTogbWVkaWF0
ZWs6IGhkbWk6IEZpeCBwb3RlbnRpYWwgc3RhbGUgUExMIHByb3ZpZGVyIG9uIHVuYmluZAo+Cj4g
VGhlIEhETUkgUEhZIHJlZ2lzdGVycyBpdHMgUExMIHdpdGggZGV2cmVzIGJ1dCBsZWF2ZXMgdGhl
IE9GIGNsb2NrCj4gcHJvdmlkZXIgcmVnaXN0ZXJlZCBvbiB1bmJpbmQuIFB1Ymxpc2ggdGhlIFBM
TCBoYXJkd2FyZSB0aHJvdWdoIGEKPiBtYW5hZ2VkIHByb3ZpZGVyIHNvIGl0IGlzIHdpdGhkcmF3
biBiZWZvcmUgdGhlIFBMTCBpcyB1bnJlZ2lzdGVyZWQuCj4KPiBUaGlzIGlzc3VlIHdhcyBmb3Vu
ZCBieSBvdXIgc3RhdGljIGFuYWx5c2lzIHRvb2wgdW5kZXIgZGV2ZWxvcG1lbnQuCj4KPiBGaXhl
czogOGY4M2YyNjg5MWUxICgiZHJtL21lZGlhdGVrOiBBZGQgSERNSSBzdXBwb3J0IikKPiBTaWdu
ZWQtb2ZmLWJ5OiBUaWFuIFh1ZWNoZW4gPDIwMjMwMDQ2MDA2NEBtYWlsLnNkdS5lZHUuY24+Cgpb
U2V2ZXJpdHk6IEhpZ2hdClRoZSBjb21taXQgYXV0aG9yIGlzIEd1YW5nc2h1byBMaSA8bGlndWFu
Z3NodW9AbWFpbC5zZHUuZWR1LmNuPiwgYnV0IHRoZQpjb21taXQgbWVzc2FnZSBvbmx5IGNhcnJp
ZXMgYSBTaWduZWQtb2ZmLWJ5IHRyYWlsZXIgZm9yIFRpYW4gWHVlY2hlbi4KVW5kZXIgdGhlIERl
dmVsb3BlcidzIENlcnRpZmljYXRlIG9mIE9yaWdpbiwgYSBtYXRjaGluZyBTaWduZWQtb2ZmLWJ5
IGZyb20KdGhlIHBhdGNoIGF1dGhvciAob3IgYW4gdXBkYXRlZCBBdXRob3IgaGVhZGVyKSBpcyBy
ZXF1aXJlZC4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjExMjYxMjAwMzkuNDA0OTk0My0xLTIwMjMwMDQ2MDA2NEBtYWlsLnNkdS5l
ZHUuY24/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
