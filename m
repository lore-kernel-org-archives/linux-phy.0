Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A130C5AC7A
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 13:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3uE5pS4w+YeaEVG1ugUcw2YAUvRlC4TBjT9K6gELU8=; b=etO7PKctSfTwWk
	/WTmIITI0z5xonMemlfNEz9KxaasptwcWYW0x6X1bVvOCkRzjB4vW7v99FbY6cvI8Ak8TTwHF/pTs
	RDXqTs/yxIUYwRwsXzHPmtR+MB6ZKNWajMYLTNlCGtzrFhSUqxa9tO72kHyIJOnQhLVt7RsJhmjYE
	O25nk1ntleHH2XErL4fj9dyR/rNw/dpVqqA+qQtc629/napZEL2uKxLtWfO22hmiFVuI531wAqYSq
	8K02c9Z8EskjSXN7MR1w7fLEfa90DcUHr5Z0t4H76W+2S7Exsoc1eaCBkMI2S74jdDXSdfmNqcozR
	ooFS3GANI+DbpR1b0itQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKNi-000000085LC-0Arz;
	Fri, 07 Aug 2026 13:13:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKNg-000000085KR-1q8J;
	Fri, 07 Aug 2026 13:13:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F18E840322;
	Fri,  7 Aug 2026 13:12:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 902CE1F000E9;
	Fri,  7 Aug 2026 13:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786108379;
	bh=+L54xcPOgo3Tl3OhdKxub7XjEMxQHH+MtkMzQBJzPXo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=lvDs/XdRGELCpxPDY+CqZcFscBtADM91yf2QFo8Juvy9Xitth1PAXc+b+e5zbdSbB
	 GT/85QUi8gKbticjPvB42HXh7nk90rGn1SrNPryO+CyWR//oSWkPRYV0gwZ6xsQZh6
	 RkVGVs6LZhKMN1iuszhp4eJfF86/4its6Pj00LD9qEr6/lRD/PqmCJ913gcgyIzY8w
	 aGOFTyGoQ40vh+K3FHFzowidnrBQrxrtbIm4UywBkRw/rmFZ5I6Y49Yi5lhIGbZx/Z
	 YqAuD/0PLTPpGKZHlQOW4AFirL2A5S14JWb0h3jxTzg00rVvwZoD62iSw+wk9/Oe12
	 h0PLOXQxooOXw==
Date: Fri, 7 Aug 2026 15:12:50 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Thomas =?utf-8?Q?Niederpr=C3=BCm?= <dubito@online.de>, Simon Wright <simon@symple.nz>, 
	Diederik de Haas <diederik@cknow-tech.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v5 10/10] phy: rockchip: samsung-hdptx: Consistently use
 bitfield macros
Message-ID: <pemlt3unw2rp6womindyxpdpcw6xnrkn63xkhk26xns6iht42r@lee2spi4j5jo>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-10-8e786067865f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-hdptx-clk-fixes-v5-10-8e786067865f@collabora.com>
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

T24gVGh1LCBKdWwgMjMsIDIwMjYgYXQgMTA6NDE6NTNQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIHdyb3RlOgo+IE1ha2UgdGhlIGNvZGUgbW9yZSByb2J1c3QgYW5kIGltcHJvdmUgcmVhZGFi
aWxpdHkgYnkgdXNpbmcgdGhlIGF2YWlsYWJsZQo+IGJpdGZpZWxkIG1hY3JvcyAoZS5nLiBGSUVM
RF9QUkVQLCBGSUVMRF9HRVQpIHdoZW5ldmVyIHBvc3NpYmxlLCBpbnN0ZWFkCj4gb2Ygb3BlbiBj
b2RpbmcgdGhlIHJlbGF0ZWQgYml0IG9wZXJhdGlvbnMuCj4gCj4gVGVzdGVkLWJ5OiBUaG9tYXMg
TmllZGVycHLDvG0gPGR1Yml0b0BvbmxpbmUuZGU+Cj4gVGVzdGVkLWJ5OiBTaW1vbiBXcmlnaHQg
PHNpbW9uQHN5bXBsZS5uej4KPiBUZXN0ZWQtYnk6IERpZWRlcmlrIGRlIEhhYXMgPGRpZWRlcmlr
QGNrbm93LXRlY2guY29tPiAgIyBOYW5vUEMtVDYgTFRTCj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBC
YXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29t
PgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNp
dmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
