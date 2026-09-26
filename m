Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80053C9831E
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 05:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24U52S1eNKFlvcfmtXiyplDeX8xQoOnQY4CrEwsNVmw=; b=0DZifUPM9hYiyu
	X9GWOkOzPZIFDWjZjin9Y+YO1XDgcPSZBusN8kfZpmyGskD3gOECZgQtAALtyngLty9ZsgYyS62sR
	S5DOMJ//LI8j7E90+cWbDrTOHvmtDJD+ZEO0sbm5s/JbZEZmpRl7MR3QV2DDPXspHPmE6EN5Fx71P
	XUGRuE/FgZmYE+H4AzJ01ZOUWesU6qGCfY+XH5Ky26e0wzXL+hFlsa8Pys9Ws4WCRVnWyrqPlKnZ2
	rpLx5PlkQadfdAAmCoy1d3f9KXPe6PCGyncZya/NNyBaJ3P7xoQ/GOnkSiryiq0hRgtR0fuqGweoa
	IigDEDwGswTyrlZ/hW7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKjB-0000000F0Le-0ps5;
	Sat, 26 Sep 2026 05:13:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKjA-0000000F0L9-1IU4;
	Sat, 26 Sep 2026 05:13:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BB1D6429C8;
	Sat, 26 Sep 2026 05:13:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E7451F000FF;
	Sat, 26 Sep 2026 05:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790399615;
	bh=hTWY+ooeNyiWZIlbNSBvzkPlMs8bY8Uu85Mi2iBSvHE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LVxax5kT/EzQtUTGTVG5vpA/i4KOytJk1FF2VhUXhkAW/nkpogLL2pYjoFlQ4/Ypz
	 zPE2jU2PiFP01y50eO71hA8feriHgFOdzjo1jjKKL7F90u87/Q8AhCwS2jvtfKZ6ux
	 WFewFyTOWEcuuT3WqAsESO8ZGp/XLeWqXKBnp9ZwnSgxon26p9oHGc82DbozyW5JXq
	 L9AlHoAKBinszf00wj0114MH+/OZEJSUAJyRO7qTg+FMIb+byx3Mu8GhgEhaG/5tAk
	 L0EJo6CCGrWFMYkQmp+JLQXjZIP0kYdf1C5p4sRwKi0DEVL882qMnJdNrqY9YK5VZD
	 PfVrIgl09/VrA==
Date: Sat, 26 Sep 2026 07:13:16 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 06/11] phy: rockchip: usbdp: Use guard functions for
 mutex
Message-ID: <36mqzbbbmgtvj42n7aebleyk5cl5ydnciuxdoxbmyku2f7mkxz@7q3djm6bkrzy>
References: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
 <20260915-rockchip-usbdp-cleanup-part2-v15-6-8d507cb1174f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-part2-v15-6-8d507cb1174f@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MDY6MDlQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gQ29udmVydCB0aGUgZHJpdmVyIHRvIHVzZSBndWFyZCBmdW5jdGlvbnMgZm9y
IG11dGV4IGhhbmRsaW5nIGFzCj4gYSBzbWFsbCBjbGVhbnVwLiBUaGVyZSBpcyBhIHNtYWxsIGZ1
bmN0aW9uYWwgY2hhbmdlIGluIHRoZSBEUCBQSFkKPiBwb3dlciB1cCBmdW5jdGlvbiwgd2hpY2gg
bm8gbG9uZ2VyIHNsZWVwcyBpZiB0aGUgaW50ZXJuYWwgcG93ZXJ1cAo+IGNvZGUgcmV0dXJucyBh
biBlcnJvci4gVGhpcyBpcyBub3QgYSBwcm9ibGVtIGFzIHRoZSBzbGVlcCBpcyBvbmx5Cj4gcmVs
ZXZhbnQgZm9yIHN1Y2Nlc3NmdWwgcG93ZXItdXAuCj4gCj4gVGVzdGVkLWJ5OiBJZ29yIFBhdW5v
dmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+ICMgT3JhbmdlIFBpIDUgUGx1cwo+IFNpZ25lZC1v
ZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29t
PgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNp
dmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
