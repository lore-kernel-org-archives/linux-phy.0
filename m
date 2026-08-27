Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26962C61DC2
	for <linux-phy@archiver.kernel.org>; Thu, 27 Aug 2026 12:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vFo5MoNHWP6S9PEj10mmql+/3exKpWIlDLOw3P1DxjY=; b=J7WUrhbExkKJ++
	/JbYbcTqiHScE+ZR42SGLg54+MLXoXfkOiO8I4PPrRBS0yAW3uF/UlF6sqwoVDg1JeEc15KqTXg98
	an2h4oevt+pSYHl56GIcpDx+J+DiCeNXNmZ1uehtTJ9uCVhfU5JFPRW0McSu6qdxafx7pd0PHI38W
	qj0khioOo+F/i4ywgO6MvGozunmyIJl1bVl9y9bJOdIDSKB/wWdpapOA+US4HV+Iu7aLylOHkMGq8
	xUoZh+xH2BCrL2gEWpN2BG08aOhnZwIaUUmQUKehYQ04yR8CL+tY3JZhZ7LURnQHBNZVHBl7AKcDU
	khC1YhMjlSsIrY59KbIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZCy-00000003xnZ-3aZD;
	Thu, 27 Aug 2026 12:27:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZCx-00000003xnA-0fYC
	for linux-phy@lists.infradead.org;
	Thu, 27 Aug 2026 12:27:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 406FF600D2;
	Thu, 27 Aug 2026 12:27:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85E951F000E9;
	Thu, 27 Aug 2026 12:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787833670;
	bh=xyBFU6QHKR6ecAhSYV8LeuOSeRQ2LwpRS1CYpJvTRZg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=C+P+ANz00L4mj4y0Tl5EnAAXphhAVO2hgAhe9XxzeKMFslNs78LtibbDr6dsn2tb3
	 0Mdu3Q5D2q9QygNGCloqw5pZYtllHypv86piCfntTPOMPndS92LLivv8ptLbhAad5N
	 q6XExqFYvr7rjE07ZHrWhFKGRULUBbP7Oz1AkxNREpfNplZsPi4gfgNnCJomkV9sgl
	 MLAPFWOCoC7x+VxKQT2O4vHW6yMZzmVknnoVtQ4jrYWRjjSm9Lli8SqC0e1SJAKpV5
	 MJq51+IGE35FBdvLI5mMeWntNJ33K1Ku5bqWrJWdLYLeywD5U3RA2i36+L4XIflvV0
	 1tnKX+YdF5hHQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: airoha: Document support for
 AN7583 Gen3 PCIe PHY
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260827122127.18874-2-ansuelsmth@gmail.com>
References: <20260827122127.18874-1-ansuelsmth@gmail.com>
 <20260827122127.18874-2-ansuelsmth@gmail.com>
Date: Thu, 27 Aug 2026 12:27:49 +0000
Message-Id: <20260827122749.85E951F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gSW5jb3JyZWN0IG1lbW9y
eSByZWdpb24gc2l6ZSBpbiB0aGUgZGV2aWNlIHRyZWUgZXhhbXBsZSAoMHhmZmYgaW5zdGVhZCBv
ZiAweDEwMDApLgotLQoKY29tbWl0IDQxYWE2NDJmZDVkZmIxMGVhMmI1MGQ2MmFmOTlmOTVjYzA0
MGZiNTUKQXV0aG9yOiBDaHJpc3RpYW4gTWFyYW5naSA8YW5zdWVsc210aEBnbWFpbC5jb20+Cgpk
dC1iaW5kaW5nczogcGh5OiBhaXJvaGE6IERvY3VtZW50IHN1cHBvcnQgZm9yIEFONzU4MyBHZW4z
IFBDSWUgUEhZCgpEb2N1bWVudCBzdXBwb3J0IGZvciBBTjc1ODMgUENJZSBQSFkgdXNlZCB0byBt
YWtlIHRoZSBHZW4zIFBDSWUgcG9ydAp3b3JrLiBBZGQgdGhlIHJlcXVpcmVkIHJlZ2lzdGVyIHRv
IGNvbmZpZ3VyZSB0aGUgUENJZSBQSFkgYW5kIHByb3ZpZGUgYW4KZXhhbXBsZSBmb3IgaXQuCgo+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2Fpcm9o
YSxhbjc1ODMtcGNpZS1nZW4zLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9haXJvaGEsYW43NTgzLXBjaWUtZ2VuMy1waHkueWFtbAo+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uMDdiYjIwMTUyYzBhNwo+IC0tLSAvZGV2
L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2Fpcm9o
YSxhbjc1ODMtcGNpZS1nZW4zLXBoeS55YW1sCgpbIC4uLiBdCgo+ICtleGFtcGxlczoKPiArICAt
IHwKPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9waHkvcGh5Lmg+Cj4gKwo+ICsgICAgcGh5
QDFmYzdmMDAwIHsKPiArICAgICAgICBjb21wYXRpYmxlID0gImFpcm9oYSxhbjc1ODMtcGNpZS1n
ZW4zLXBoeSI7Cj4gKyAgICAgICAgcmVnID0gPDB4MWZjN2YwMDAgMHhmZmY+LAo+ICsgICAgICAg
ICAgICAgIDwweDFmYzdlMDAwIDB4ZmZmPiwKCltTZXZlcml0eTogTG93XQpBcmUgdGhlc2UgbWVt
b3J5IHJlZ2lvbiBzaXplcyBvZmYtYnktb25lPwoKU2luY2UgdGhlIGJhc2UgYWRkcmVzc2VzICgw
eDFmYzdlMDAwIGFuZCAweDFmYzdmMDAwKSBhcmUgZXhhY3RseSA0S0IgKDB4MTAwMCkKYXBhcnQs
IGEgc2l6ZSBvZiAweGZmZiAoNDA5NSBieXRlcykgbWF0aGVtYXRpY2FsbHkgbGVhdmVzIHRoZSBs
YXN0IGJ5dGUgb2YgdGhlCjRLQiBibG9jayB1bm1hcHBlZC4KCldoaWxlIGlvcmVtYXAgcm91bmRz
IHVwIHRvIHRoZSBwYWdlIHNpemUgbWVhbmluZyB0aGVyZSBpcyBsaWtlbHkgbm8gZnVuY3Rpb25h
bApmYWlsdXJlIGluIHByYWN0aWNlLCBzaG91bGQgdGhpcyBzcGVjaWZ5IDB4MTAwMCBpbnN0ZWFk
IHRvIHByZXZlbnQgcHJvcGFnYXRpbmcKb2ZmLWJ5LW9uZSBzaXplIGVycm9ycyB0byBjb25zdW1l
cnMgb2YgdGhpcyBleGFtcGxlPwoKPiArICAgICAgICAgICAgICA8MHgxZmMzMDA0NCAweDQ+LAo+
ICsgICAgICAgICAgICAgIDwweDFmYzM1MDMwIDB4ND47Cj4gKyAgICAgICAgcmVnLW5hbWVzID0g
ImczLWFuYSIsICJnMy1wbWEiLAo+ICsgICAgICAgICAgICAgICAgICAgICJ4ci1kdGltZSIsICJy
eC1hZXEiOwo+ICsKPiArICAgICAgICBwaHlzID0gPCZwY2llMV9waHkgUEhZX1RZUEVfUENJRT47
Cj4gKwo+ICsgICAgICAgICNwaHktY2VsbHMgPSA8MD47Cj4gKyAgICB9OwoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgyNzEyMjEy
Ny4xODg3NC0xLWFuc3VlbHNtdGhAZ21haWwuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
