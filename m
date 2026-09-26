Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17D7CC98318
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 08:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhY9badxLLYn8CRmncoR9pXVAmWqqhwQWgCVY16lQew=; b=fMZmY+5oQc/cuO
	zeZ15tjFATPAqEw7cltJrLKprxN0y7m6vATsy474/lHLo56Z7Nj3tGhim8SSiyrhqcuvyAQ7s3r9u
	LH+FBzsXx0t6J7JcNRH/9rEILDNT1c8I+j8dYzvKwYXk/j6aYDfiHOZDb5/ifvrPHuI6bgyNNCKKb
	qSdPo6Q8fi1ISSajwTJk6jHeWzYuma8Dj+Q5xkWo+pGrh470ZDJhg0Vn5yPOaGcOlLLqX2r5xB/GV
	35M1VImF2Ec1KI/XolYwq6GGynnUZ7p4ZhJ68pis8LQ0yptLlO1MxyDCR6875BvBGo93buBgog1DS
	Zonga23/DjKgBzcs2Hgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANKJ-0000000F8s1-2h2l;
	Sat, 26 Sep 2026 08:00:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANKI-0000000F8rb-1Fri;
	Sat, 26 Sep 2026 08:00:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8CC82601E4;
	Sat, 26 Sep 2026 08:00:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A79A1F000FF;
	Sat, 26 Sep 2026 07:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790409604;
	bh=3+eweznmMsk2P2IzCzlZYwI84IrX3waF/RZqKOP1zaw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=d3r2f5xME8FiSRbcMOAzEW0t5VgVeFwMAMDFHU5fGjmONv+NgQ1efmgPYD5bLNVwj
	 4DnOhfOTMaqy6+EBBqEqkhWh4YLTE9SRxp0QHyp0kgEDqMH/jTtsuQNh363jHiyR5Y
	 9HjeOzD+hjx4Vwmjq9fLTR+PiSfKeRgK5VLWh7hCoqoHLlHGZlWfafn4wTxEMrRiHU
	 X1GTK0I7uzmF6tPEu8S1C7XK/D1dBkl6Wb+tq6EVYm/1iGIZywPQ/JR8yUEZFZGz9H
	 OwjPjUE128CxUx4HU5/l4uImHHUIiaMLeAtk6ksVOhQ/c16swTNhHkgn0A5EclI0HI
	 uVKszlRlS6qKA==
Date: Sat, 26 Sep 2026 09:59:44 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 4/6] phy: rockchip: usbdp: Fix power state handling
Message-ID: <o2xcbcpuzetrabvclyyauhrculkevfrmp7eeszlyviiphrcohi@ejg5wc3oq4bb>
References: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-0-9ad90a456953@collabora.com>
 <20260915-b4-rockchip-usbdp-cleanup-part3-v15-4-9ad90a456953@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-4-9ad90a456953@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MzI6NTFQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gUmVzdHJ1Y3R1cmUgcG93ZXIgc3RhdGUgaGFuZGxpbmcgYnkgaW50cm9kdWNp
bmcgc3dfbW9kZSBpbiBhZGRpdGlvbgo+IHRvIHRoZSBod19tb2RlIGZpZWxkLCBzbyB0aGF0IHRo
ZSBQSFkga25vd3MgYWJvdXQgdGhlIGN1cnJlbnRseQo+IHN1cHBvcnRlZCBtb2RlcyBmcm9tIHRo
ZSBoYXJkd2FyZSBwZXJzcGVjdGl2ZSwgdGhlIGN1cnJlbnQgbW9kZXMKPiByZXF1ZXN0ZWQgYnkg
c29mdHdhcmUgYW5kIHRoZSBhY3R1YWwgaGFyZHdhcmUgc3RhdHVzLgo+IAo+IE5vdyBhbnl0aGlu
ZyB1cGRhdGluZyBlaXRoZXIgdGhlIGhhcmR3YXJlIG9yIHNvZnR3YXJlIHN0YXRlIGNhbiBzaW1w
bHkKPiB1cGRhdGUgdGhlIHN0YXR1cyBmaWVsZCBhbmQgY2FsbCBya191ZHBoeV91cGRhdGVfcG93
ZXJfc3RhdGUoKS4KPiAKPiBUaGlzIG1ha2VzIGl0IGEgbG90IG1vcmUgb2J2aW91cyB3aGF0IGlz
IGdvaW5nIG9uIGFuZCBhbHNvIGZpeGVzIGEgZmV3Cj4gcG90ZW50aWFsIHJlc291cmNlIGxlYWtz
IGlkZW50aWZpZWQgYnkgU2FzaGlrbyBhcyBhIHNpZGUtZWZmZWN0LiBGb3IKPiBleGFtcGxlIGlm
IFVTQjMgaXMgcmVxdWVzdGVkIGJ5IHNvZnR3YXJlIHdoaWxlIHRoZSBVU0ItQyBpcyBpbiBEUC1v
bmx5Cj4gbW9kZSwgdGhpbmdzIGFyZSBkZWNlbnRseSBoYW5kbGVkIGFmdGVyIHRoaXMuCj4gCj4g
VGVzdGVkLWJ5OiBJZ29yIFBhdW5vdmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+ICMgT3Jhbmdl
IFBpIDUgUGx1cwo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4u
cmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZh
bSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArg
rq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
