Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C28EC98318
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 07:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJ83U7+XQGYsdHxBT2qb3HeDiAnJB565yYg9vuDqSoE=; b=oj+VXVGvIwxCTv
	xgyLhzQquZbhty7tRVS04jG4gojhFL6wOU7wbGXMwEJ/VuS2JEiFx/t4dfSLODNO0iQZdI7V16rRS
	V49/G+KG9GhKKtR5X4h2noSfQfh4S3RjxJviXirbswRJx7+OX+LNMnFFh5bCabl38oPzcsqgIV8Xk
	TR2OsnQnIz5xho7YXrbGk5+wEnby7NnX8x5xNI4Em6wvtD0KyYSB98/9Xz8TmS8m+DIqLtXNcbKcT
	Pe7ho7FdDgzdcgIdUwga3yDcml1oKjE5ny99thHZy3TBly35MrZ/awQad5UbdMk69p/y26r1wGUCz
	iNWwTRKoU2awE6iHpHWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAN8s-0000000F7pK-2i80;
	Sat, 26 Sep 2026 07:48:18 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAN8q-0000000F7oE-3XSn;
	Sat, 26 Sep 2026 07:48:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E9EBB4013E;
	Sat, 26 Sep 2026 07:48:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC7181F000FF;
	Sat, 26 Sep 2026 07:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790408895;
	bh=f58KgYFLlHqoxRMag1PJ40k7YF7iSwH7HFuc7gT+hfk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BKZetOO5Se/CsuiAwVlykgedBosV+jhO0fcjH5fordh3MW+rTaXLVa+hCYaR5CYdg
	 hNK9gwYNvby1aO4zSigICnezRuuf18KGLuFC00fNPoErFQK/mEakb3foqWYssSSxPC
	 RRj4w5kd/+I5mO1hGbT40Tw6RQ4uKSpRw2MRmSUZIpSxAu2mjI/JB7Hbz5LQheI3oJ
	 D0VRSxIgZg33Ftmkxtwv6IoXZp1RTf/I8MwkVww5m8vIpTGg4GeUfvkecpnevNlvWk
	 lePo7TbNcx1B1ZPU2DKlvYj+NCD7n7PxAOOHW9l/vI2RGMEfZAVuBK2x9esZrOUDOZ
	 cbRnMfh7bNOQA==
Date: Sat, 26 Sep 2026 09:47:58 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Igor Paunovic <royalnet026@gmail.com>, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v16 1/6] phy: core: add notifier infrastructure
Message-ID: <vntwi7qi7eok6pryljuryex4jy7qajpidwpzcqavs25deso7kj@eafhk333wtev>
References: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-0-126a2e9133c3@collabora.com>
 <20260924-b4-rockchip-dwc3-rockchip-glue-v16-1-126a2e9133c3@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-1-126a2e9133c3@collabora.com>
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

T24gVGh1LCBTZXAgMjQsIDIwMjYgYXQgMDc6MjU6MzdQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gU29tZSBQSFkgZGV2aWNlcyB3aXRoIG11bHRpcGxlIHBvcnRzIChlLmcuIFVT
QjMgYW5kIERQKSByZXF1aXJlIGEgcmVzZXQKPiBpZiB0aGUgY29uZmlndXJhdGlvbiBjaGFuZ2Vz
IG9yIGNhYmxlIG9yaWVudGF0aW9uIGNoYW5nZXMuIFRoaXMgaXMgYQo+IHByb2JsZW0sIGFzIHRo
ZSBjb25zdW1lciBkZXZpY2Ugd2lsbCBydW4gaW50byB1bmRlZmluZWQgYmVoYXZpb3IuCj4gCj4g
V2l0aCB0aGUgbmV3IFBIWSBub3RpZmllciBBUEkgaW50cm9kdWNlZCBpbiB0aGlzIHBhdGNoLCB0
aGUgY29uc3VtZXIKPiBkcml2ZXIgY2FuIGhvb2sgaW50byByZXNldCBldmVudHMgY29taW5nIGZy
b20gYSBQSFkgZGV2aWNlIHRvIGhhbmRsZSB0aGUKPiBQSFkgZ29pbmcgZG93biBncmFjZWZ1bGx5
Lgo+IAo+IE5vdGUgdGhhdCB0aGlzIHVzZXMgLUVOT1NZUyBpbnN0ZWFkIG9mIHRoZSBtb3JlIHNl
bnNpYmxlIC1FTk9UU1VQIGZvcgo+IHRoZSBzdHViIGZ1bmN0aW9ucyB3aGVuIEdFTkVSSUNfUEhZ
IGlzIGRpc2FibGVkIHRvIHN0YXkgY29uc2lzdGVudCB3aXRoCj4gdGhlIGV4aXN0aW5nIG9uZXMu
Cj4gCj4gVGVzdGVkLWJ5OiBJZ29yIFBhdW5vdmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+ICMg
T3JhbmdlIFBpIDUgUGx1cwo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJh
c3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2Fk
aGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkK
Ci0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+N
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
