Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10101C79FA1
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 05:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUbmYu4TkGKhLD0D+39O7/HJt1OjgM33/TqX/HfL3B8=; b=b7U+JBVO72YiLE
	zdbgjuDL9KsRan+VUE5rbTwpvPgZ8IQsR4tsBPuIYshZi8x1yDrs8wFnZcerJG+CjML2vckD7SFEI
	0EM6f4hkYwzfYE9oGUHAwwbnr5tx5hzwy7IStVJkx+IMB+Z+JQWoaRKyN/nkngfEFSqVN+vocHwk8
	h4jQkH6geRPJa+Mgy5WvbZLhnZZA3gv2s9MZZ+IF/LfpqfDkm/DgAG/29MplGHGAdmYIWEoNOasWK
	HyKGgZKHlMbh0b6LHNQ9Rmc0J+tPL5qifBxg/ohC2FItM9Q7HYXnTCwGOARjtr/zKI8PbKNXxuyn7
	t3dgh2ywbLlsT/UPhe4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tfV-0000000FrLk-1tQg;
	Fri, 11 Sep 2026 05:19:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tfT-0000000FrLH-1zoK;
	Fri, 11 Sep 2026 05:19:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A0F5460211;
	Fri, 11 Sep 2026 05:19:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDF871F000FF;
	Fri, 11 Sep 2026 05:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789103958;
	bh=HX/WIqnMbATxafvirWBU6MEtc3JzCHTqWHGTjtEKx98=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UIPZ94Y2fHaLGK3NgL80e2cW2pDVV7qnn4o21dkuRO+gxyB/T2NNftpcuajRrLRU2
	 s9I9nia32rI+aki5uWTxwRmzNnWPp6q6EDm701QffqwS5smT2PCVVWu/9SMyR2Is5P
	 M/iTYXkzclQs2oOXVXI4cFxSZUMyr1qrr5hJnI4vjuMw1AFl7OliO9VYReTkFy8tUh
	 INEr2I+Ynb+NJrVYuS8JX3TRxfVJOTb924Jl0Ghy/gLbP98wZeN6H65bJwM3OmTbN/
	 gZg1TwNANF7V5AvHV97cfQ3KDcFzNM4JoXSiIAKIBB5+6PedTWARuLVxyEJrEwMf9m
	 ftMhcV4ABCUpg==
Date: Fri, 11 Sep 2026 07:19:09 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v4 08/12] phy: phy-mtk-dp: Add support for digital and
 analog calibration
Message-ID: <peqvlalospng4dbcldlitpxko53jtnmlphlaogyaiul42lu6wl@pa3avgnnfe4s>
References: <20260910092038.48291-1-angelogioacchino.delregno@collabora.com>
 <20260910092038.48291-9-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260910092038.48291-9-angelogioacchino.delregno@collabora.com>
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

T24gVGh1LCBTZXAgMTAsIDIwMjYgYXQgMTE6MjA6MzRBTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gQWRkIHN1cHBvcnQgZm9yIHJlYWRpbmcgdGhlIGNhbGlicmF0
aW9uIHZhbHVlcyBmcm9tIGVGdXNlOiBpZgo+IHByZXNlbnQsIHdyaXRlIHRob3NlIC0gb3RoZXJ3
aXNlLCByZWx5IG9uIHRoZSBkZWZhdWx0cyBmcm9tCj4gU29DLXNwZWNpZmljIGRhdGEuCj4gVGhp
cyBhbHNvIGFkZHMgc3VwcG9ydCBmb3Igd3JpdGluZyB0aGUgY2FsaWJyYXRpb24gdmFsdWVzIGZv
cgo+IHRoZSBhbmFsb2cgcGFydCBvZiB0aGUgUEhZLgo+IAo+IE5vdGUgdGhhdCBiZWZvcmUgdGhp
cyBjaGFuZ2UsIG9ubHkgZGVmYXVsdCBoYXJkY29kZWQgY2FsaWJyYXRpb24KPiB2YWx1ZXMgd2Vy
ZSBzdXBwb3J0ZWQgZm9yIHRoZSBkaWdpdGFsIGRyaXZpbmcgcGFyYW1ldGVycy4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5k
ZWxyZWdub0Bjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZh
bSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArg
rq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
