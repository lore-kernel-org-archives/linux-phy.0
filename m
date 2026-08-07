Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68C38C5AC7A
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 13:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkRZ/p2Rdn9BZn+EiOYh56BoSumo19/rve7J9dXSn3E=; b=iK86Bk7JNlgrF/
	Pla6ZwTkEE+oJxO/BoNfciV1GH7oF2wa7OaH+r8fvptH48tg8az9/MM09oRh9i28t7vJUQD1v4jro
	x0lVlbFUyNHS4db5FQFnqvFC6t3UmL8m6ONE5ury/Fnyut9Jhzz2gBLK328nXgbiZ7r+t9xzlef9F
	qiLkC6a4Uq01HYhgWvYQQVaGWiAKTgKaY80I6quIA8SozYCyiro+fvknQs8vJJXVWCHhQNJxJJ1gq
	3Cs82DPPXfPs247hpyBOm+9MiA8SSmnjlajZY0PGNXsnxjh79pUWixvxQvjWYWoWvBIkYW9rRnbmv
	GZBb4IJyfE+W4OgpH9+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKJR-000000084lU-47H7;
	Fri, 07 Aug 2026 13:08:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKJQ-000000084kJ-1Arn;
	Fri, 07 Aug 2026 13:08:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B6A8A60A6F;
	Fri,  7 Aug 2026 13:08:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB14B1F000E9;
	Fri,  7 Aug 2026 13:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786108115;
	bh=7Ec8B47hlt2QyQ3zcaph7YMLpbvr6L1xFafTmB3Xq0Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UhRxO5XZ9xogxBPqw8oQ1LnFNfJE3CVSQSz1JgG1PaT4OoET2Vg2zBI/cDDcA5nY5
	 wlbmhJf180BoYgvfS6nzTEkOzXaZkt/C4y5a64FT35mKZE4XySAkdfEB9xrkVaOphc
	 XqByW0/VNyGsdaxpZGmFdO27YXOnTVGpMO13afXShOizn/rIkQ5nqP9zTzTHf0apYT
	 ql6DuR9Q+VyTmVmlwq65S2Aq/P0wHiv3hNZUjkxyXMuCbOU4mMW1PYYxDO2sr9zdEC
	 3aUsHDM1aZ4qIWmmPonBpNHxTCKwfDLdwbPsGUP5Ib/QX3/hAZpD0Uyrd0RiEcpLKo
	 FyLjNOrqVVJ4Q==
Date: Fri, 7 Aug 2026 15:08:26 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Thomas =?utf-8?Q?Niederpr=C3=BCm?= <dubito@online.de>, Simon Wright <simon@symple.nz>, 
	Diederik de Haas <diederik@cknow-tech.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v5 08/10] phy: rockchip: samsung-hdptx: Drop
 restrict_rate_change handling
Message-ID: <lywozahedvcvbyqqxp2heg3cv73qpkrz6tu2k2bt24gpybmtxj@fnuvunfvfwh2>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-8-8e786067865f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-hdptx-clk-fixes-v5-8-8e786067865f@collabora.com>
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

T24gVGh1LCBKdWwgMjMsIDIwMjYgYXQgMTA6NDE6NTFQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIHdyb3RlOgo+IFNpbmNlIGNvbW1pdCA2ZWZiZDBmNDZkZDggKCJwaHk6IHJvY2tjaGlwOiBz
YW1zdW5nLWhkcHR4OiBSZXN0cmljdAo+IGFsdGVyaW5nIFRNRFMgY2hhciByYXRlIHZpYSBDQ0Yi
KSwgYWRqdXN0aW5nIHRoZSByYXRlIHZpYSB0aGUgQ29tbW9uCj4gQ2xvY2sgRnJhbWV3b3JrIEFQ
SSBoYXMgYmVlbiBkaXNhbGxvd2VkLgo+IAo+IFRvIGF2b2lkIGJyZWFraW5nIGV4aXN0aW5nIHVz
ZXJzIHVudGlsIHN3aXRjaGluZyB0byB0aGUgUEhZIGNvbmZpZyBBUEksCj4gaXQgaW50cm9kdWNl
ZCBhIHRlbXBvcmFyeSBleGNlcHRpb24gdG8gdGhlIHJ1bGUsIGNvbnRyb2xsZWQgdmlhIHRoZQo+
ICdyZXN0cmljdF9yYXRlX2NoYW5nZScgZmxhZy4KPiAKPiBBcyB0aGUgQVBJIHRyYW5zaXRpb24g
Y29tcGxldGVkLCByZW1vdmUgdGhlIG5vdyBkZXByZWNhdGVkIGV4Y2VwdGlvbgo+IGxvZ2ljLgo+
IAo+IFRlc3RlZC1ieTogVGhvbWFzIE5pZWRlcnByw7xtIDxkdWJpdG9Ab25saW5lLmRlPgo+IFRl
c3RlZC1ieTogU2ltb24gV3JpZ2h0IDxzaW1vbkBzeW1wbGUubno+Cj4gVGVzdGVkLWJ5OiBEaWVk
ZXJpayBkZSBIYWFzIDxkaWVkZXJpa0Bja25vdy10ZWNoLmNvbT4gICMgTmFub1BDLVQ2IExUUwo+
IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFs
Y29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5j
aW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2
YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK
4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
