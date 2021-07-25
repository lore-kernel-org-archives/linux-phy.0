Return-Path: <SRS0=Oh6o=MR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B5BEC4338F
	for <linux-phy@archiver.kernel.org>; Sun, 25 Jul 2021 02:49:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 929A660E53
	for <linux-phy@archiver.kernel.org>; Sun, 25 Jul 2021 02:49:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 929A660E53
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/9vjjDEa/rhdC8inwB9JnCJOZcKKrtFLixK0K35cvUI=; b=DgGVkNoCaKpYLXrRNYIKV6FuTD
	QwpbDpaSWNYCtPDTgvg8PceUweJIe2aComl0QI/jjY8pT1srH4+v+5xgP2qajH8pP7ffNywDrSrmq
	evu4CsmcQeDI/+ELcrjhVwSVjfAcLUMy6AiYbObmadNmQyF2wRG2RVzzDyWX8ofXvqo0pZlFIAGTo
	rwtbBB0+XE6gIXLElQ0bUfRLykKiuKOw4sU3hGp9JXlVs9YF9YWzbgTQNpXdtZKqriqtr0eO4YG6Z
	kBVSuDzRb4okcdBBhWH4IABXmzqOseZs2hNrnXsamH0vfHMuos6K4Ynr+ycG5TBlqyvPYzPzYVsrK
	rM9azyNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m7UCu-0085Ky-4c; Sun, 25 Jul 2021 02:49:36 +0000
Received: from wnew1-smtp.messagingengine.com ([64.147.123.26])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m7UCr-0085Ke-8S
 for linux-phy@lists.infradead.org; Sun, 25 Jul 2021 02:49:34 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.west.internal (Postfix) with ESMTP id E91192B0117C;
 Sat, 24 Jul 2021 22:49:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sat, 24 Jul 2021 22:49:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm2; bh=0
 YArzRMEkZVJA7cx4IMbm2POjscEV83qSQ0fdLGzAw0=; b=saY3xF7HzgMi/nVhI
 F1/BAx64jTMHVxQpeOSLKh5TO9UvwCXrFxKcNWvd5Qj8OXQNBxnhkA7Grd5Z7S1K
 s9xstLG1mbM4y7MIRwMaqCV+PzSoQWBh2fq/4r6qHx3rWuuCDpPGfOly6dO9ObWQ
 N2u5VMbAh96WlWJMWAaWOw688LTlTdoz/Rwi44O+lTfR+XZA7409Lvi0JnXeJkOJ
 doJU0ROIazWsE2H6kM7ZcWFG52e1f9pDn6+9BtKdj8tDMdrG95Ww93hrTgi8LpSj
 efsm5gtOr8rKjq+3VWH0z14K2V9wiIK1OaIXDqAyPRprsEl7KjVSlSEipGqtV/PV
 QK2lA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=0YArzRMEkZVJA7cx4IMbm2POjscEV83qSQ0fdLGzA
 w0=; b=COx2CF2PAKRb5oVFOhg9pjeu6TelQj1VStflNVvGSDlCKKesfZdXRED5P
 bzlr2pCqTWyBddhsriVxMPR9NWTFUQpFe+RnpYcJhDcpSBvntOXMutEAcXDxHMn8
 /RQkwNubMrjK7JsKyaKtCyh/uQyqv2pZVBtuTTSvZyUokqEi2RLvevT1MD07Tl5G
 P11KdeWutz5+zyQwMojrdrw9xylfgbv+JUdE7XtmILugwWHZhNJ+2d6KZ8HX3DAE
 h7fmUkSHVBo19xvXqONn68TFpAiEPGeA4QrohhSCJI1Y9H5RH1hSRmCkr+cv7xyz
 hALh7PLuDZSIY6mpCg7QTYQK20c6A==
X-ME-Sender: <xms:M9H8YDK8fYYcYnt64PUkhbYpnqBZrLA6JCS4fQaPrAl397GMGUt0UQ>
 <xme:M9H8YHIprFy81vo8iLnWCz9JAUZJ-tGcPDZlKuBcxLozMeHKnO7ghPampD1PbBizA
 GkLDPTwMECoeFu1lww>
X-ME-Received: <xmr:M9H8YLtpAivUe_UbBzp3pb6KqThR-rfmd5yiMavURt30gsVXxuA4O39_vOQlfeDE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrgedugdehkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtkeertddtfeejnecuhfhrohhmpeflihgrgihu
 nhcujggrnhhguceojhhirgiguhhnrdihrghnghesfhhlhihgohgrthdrtghomheqnecugg
 ftrfgrthhtvghrnhepiefhgffhieekudegjeevgfffveegveegheffhfduieeiffffveff
 ueegveefgfefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
 homhepjhhirgiguhhnrdihrghnghesfhhlhihgohgrthdrtghomh
X-ME-Proxy: <xmx:M9H8YMZyTGJrzxG5R33fZPERdX3k1bvx0lm5x6_D9podaM1RYDJQEQ>
 <xmx:M9H8YKaGdkjl__1vI6d8qqflWKE-vyOxBGBEW1dxfvtCdDH4HUfW9w>
 <xmx:M9H8YAAVX-29Dj75B7UKw_9uQ9F8xaGwKEgxRKgYd7F55PmH25wwQw>
 <xmx:NNH8YAnRG-3WFnv40ljg0az6dd3hWEIHVGcAMvp_IB4DAZpKhtVIgbYlrrQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 24 Jul 2021 22:49:19 -0400 (EDT)
Subject: Re: [PATCH 6/9] pinctrl: pistachio: Make it as a option
To: Linus Walleij <linus.walleij@linaro.org>
Cc: linux-mips@vger.kernel.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-phy@lists.infradead.org,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
References: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
 <20210627045631.2882-7-jiaxun.yang@flygoat.com>
 <CACRpkdZkvSg___ZxdE639SMbTs5rJbjHBq-HkTCuv0e645Rssg@mail.gmail.com>
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
Message-ID: <c7de97c3-196b-6bc3-a8b1-d6c6e6ab583d@flygoat.com>
Date: Sun, 25 Jul 2021 10:49:17 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdZkvSg___ZxdE639SMbTs5rJbjHBq-HkTCuv0e645Rssg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210724_194933_410189_9255F0B3 
X-CRM114-Status: UNSURE (   9.62  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CuWcqCAyMDIxLzcvMjQg5LiK5Y2IMTI6MTMsIExpbnVzIFdhbGxlaWog5YaZ6YGTOgo+IE9uIFN1
biwgSnVuIDI3LCAyMDIxIGF0IDY6NTcgQU0gSmlheHVuIFlhbmcgPGppYXh1bi55YW5nQGZseWdv
YXQuY29tPiB3cm90ZToKPgo+PiBTbyBpdCB3aWxsIGJlIGF2aWxhYmxlIGZvciBnZW5lcmljIE1J
UFMga2VybmVsLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKaWF4dW4gWWFuZyA8amlheHVuLnlhbmdA
Zmx5Z29hdC5jb20+Cj4gSXMgdGhpcyBzb2x2ZWQsIG9yIHNob3VsZCBJIGFwcGx5IHRoaXMgcGF0
Y2g/CgpJIGd1ZXNzIHNvLCBidHcgSSB0aGluayBpdCBzaG91bGQgZ28gdmlhIE1JUFMgdHJlZSB0
byBhdm9pZCB0cm91Ymxlcy4KClRoYW5rcy4KCi0gSmlheHVuCgoKPgo+IFlvdXJzLAo+IExpbnVz
IFdhbGxlaWoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
