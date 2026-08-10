Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 823F3C5AD4E
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 07:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WsQBaqw7c7rDcBBBANvjO++uvAvnda98+EmkNI3MKmk=; b=HoV9ZQHm7KegO1
	QjH21sGOWlhAGd1+Msbz1k0UMwfpPzsxUt09C4vQXruioNGM6H7Y56ou9D5fkywlFL9D0B4a/W39a
	xThXLI7UYncrUNElq0hjFWh3zhhr2DY4/ro7aob7xiGHX/0WXrNCJ3hR/5shd0JeFT49CuFHFBXeZ
	NepEnTsN4QmWLIejEySwtXQsJ6rD7PYe49I4/z7kqO56OmNHb6r1nCVmf2vty2QxbGHMUcn5Z6pjL
	pFOXPAy+ClRGzFa8rTEZbilWjtjs/K9yUqV47EcJxeasYGP3wlB3ONQptkxio22BHqC9UIT/T1VFS
	TS9StDayYHaKnrR3eW3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtK9x-0000000BB0q-17lK;
	Mon, 10 Aug 2026 07:10:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtK9w-0000000BB0T-1P3D
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 07:10:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1D26041481;
	Mon, 10 Aug 2026 07:10:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D5ED1F00A3A;
	Mon, 10 Aug 2026 07:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786345856;
	bh=y8BfWpXNpB/ChGe4Ypl83WuwqWbR5zEcrx4/LX/BJN8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ScaIiwnVXkv+gJCEX/+zg/ZPlBeMwGYWagpO5ptOH1qbApYKkb9KmDYJ4rSIbOj9h
	 AmvLHqlRRc3hxFlG+SSxAwBYjPEg9jz5g5iL1kn6oWNAQ1U8zhq6RkHvfIUD3ew4Ln
	 kxspEsgenfDL/oLj7DFGii4uTKBWgeCHFs/PGJSmDOPPY+vIKQWSTVGHbcmL8kiX3J
	 k5yVZlqs76Qsl/OOUcaNtGs33Ord7f9noS08uWKR+aaGeyRuI2xGZd8nnorT0Ew/Hj
	 HlIfOpVWEgoEDVr3r7cY3nVK+CunwmZwVOcRejWX7JzVAoY12rU0aY4CJjG9sxcNpn
	 Hv67UoAOTavHg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 06/12] clk: zte: Add regmap-based clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: lee@kernel.org, mfd@lists.linux.dev, robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260810-zx29clk-v10-6-63846490712c@gmail.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-6-63846490712c@gmail.com>
Date: Mon, 10 Aug 2026 07:10:55 +0000
Message-Id: <20260810071055.6D5ED1F00A3A@smtp.kernel.org>
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

PiBUaGlzIGlzIGJhc2VkIG9uIG1lc29uL2Nsay1yZWdtYXAuYywgYWx0aG91Z2ggc2xpZ2h0bHkg
c2ltcGxpZmllZC4gSQo+IGhhdmUga2VwdCB0aGUgY29weXJpZ2h0IGxpbmVzIGF0IHRoZSB0b3Ag
b2YgdGhlIGZpbGUgdG8gaW5kaWNhdGUgaXRzCj4gb3JpZ2luLgo+IAo+IFJldmlld2VkLWJ5OiBC
cmlhbiBNYXNuZXkgPGJtYXNuZXlAcmVkaGF0LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTdGVmYW4g
RMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgoKU2FzaGlrbyBoYXMgcmV2aWV3
ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEKCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4
MTAtengyOWNsay12MTAtMC02Mzg0NjQ5MDcxMmNAZ21haWwuY29tP3BhcnQ9NgoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
