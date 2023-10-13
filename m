Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABD05CDB47E
	for <linux-phy@archiver.kernel.org>; Fri, 13 Oct 2023 11:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIvkIyXWHaKkF3MFrVbg9o+C8SeL6uT0R4hMxf1G0F0=; b=0Arbg3NIs7t9Ih
	BRmW1yL6PnquhOZiqfoe3uqOjrz7L+En/1G9ioZdacYE+3p/MxOSuZeZ4RQwsLxmfSIxINuk4t7Eb
	klU8hm5Yt4kM89Hb+yvj4JL+03W+gGzOKHEkvs3Y+TmJzPjmL/7yGE8Jcl5DYeU+UnsK5tszo50eA
	1OtDsG/I5sihbDdv5sijrPwwerrQepZ7/iifaR6Er4P96YvOqBt7SizBZ1puyOJLWxPeP0uEnZSxV
	er+iEoH2BYzdqVIvO4NLoqcm+Cq1XgR3k3c12gkDhWikkk3BqLBQGJS8y9ryRS+zOwl5Qy+nbktqF
	Rkh5+k8xmWO+uBTzWkzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrGn8-003NDm-1O;
	Fri, 13 Oct 2023 11:57:18 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrGn5-003NCm-0A;
	Fri, 13 Oct 2023 11:57:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 6910FB82ACC;
	Fri, 13 Oct 2023 11:57:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37664C433C7;
	Fri, 13 Oct 2023 11:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697198232;
	bh=qmNJK5kb0pjOZzNaO3kMDXlaWvXC+MM1xD16tJxhhBg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=guvnoj8QEFgUXYVa4hApXHh4Edmp7s55USpRL1S7t9YqCWRi1etuNV5xbRZZ4Ogjj
	 KoQwzRKJrrNJBsLubdhan8ogOEbIe6HYkrDpnpBXr0CCZDG7Vae3c1KmiTU7XH/WJz
	 Vc38ykCC5ilmuduuYpjH8UozzxW6XAp0bx4eTx3GrswzzhYHHLoXRZV5nVBRtfgCZ7
	 Zc56AzcSEmGLA6+hkrscfSwSDo9K/kJIVOBaRBOalyvv6g3WdAIJOYbzkocdJ31V7G
	 C6Hthh75FdF6ANntNhoHnYw8pujwNwX3R9yn0bQf3ISDb4Eq66z6PPo2E1bFTMgtuj
	 sPAAsgqfPEbzQ==
Date: Fri, 13 Oct 2023 17:27:08 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] phy: sun4i-usb: Fix a W=1 compilation failure
Message-ID: <ZSkwlILa0fjh7cop@matsya>
References: <0bc81612171baaa6d5dff58c8e009debc03e1ba8.1693735840.git.christophe.jaillet@wanadoo.fr>
 <169719382030.165658.16055633686751767855.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <169719382030.165658.16055633686751767855.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_045715_239024_F512F6F4 
X-CRM114-Status: UNSURE (   8.42  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTMtMTAtMjMsIDE2OjEzLCBWaW5vZCBLb3VsIHdyb3RlOgo+IAo+IE9uIFN1biwgMDMgU2Vw
IDIwMjMgMTI6MTE6MDYgKzAyMDAsIENocmlzdG9waGUgSkFJTExFVCB3cm90ZToKPiA+IFdpdGgg
Z2NjIDEyLjMuMCwgd2hlbiB0aGlzIGZpbGUgaXMgYnVpbHQsIHdlIGdldCBlcnJvcnMgc3VjaCBh
czoKPiA+IAo+ID4gZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2IuYzogSW4gZnVu
Y3Rpb24g4oCYc3VuNGlfdXNiX3BoeV9wcm9iZeKAmToKPiA+IGRyaXZlcnMvcGh5L2FsbHdpbm5l
ci9waHktc3VuNGktdXNiLmM6NzkwOjUyOiBlcnJvcjog4oCYX3ZidXPigJkgZGlyZWN0aXZlIG91
dHB1dCBtYXkgYmUgdHJ1bmNhdGVkIHdyaXRpbmcgNSBieXRlcyBpbnRvIGEgcmVnaW9uIG9mIHNp
emUgYmV0d2VlbiAyIGFuZCAxMiBbLVdlcnJvcj1mb3JtYXQtdHJ1bmNhdGlvbj1dCj4gPiAgIDc5
MCB8ICAgICAgICAgICAgICAgICBzbnByaW50ZihuYW1lLCBzaXplb2YobmFtZSksICJ1c2IlZF92
YnVzIiwgaSk7Cj4gPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIF5+fn5+Cj4gPiBkcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRp
LXVzYi5jOjc5MDoxNzogbm90ZTog4oCYc25wcmludGbigJkgb3V0cHV0IGJldHdlZW4gMTAgYW5k
IDIwIGJ5dGVzIGludG8gYSBkZXN0aW5hdGlvbiBvZiBzaXplIDE2Cj4gPiAgIDc5MCB8ICAgICAg
ICAgICAgICAgICBzbnByaW50ZihuYW1lLCBzaXplb2YobmFtZSksICJ1c2IlZF92YnVzIiwgaSk7
Cj4gPiAgICAgICB8ICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn4KPiA+IAo+ID4gWy4uLl0KPiAKPiBBcHBsaWVkLCB0aGFua3MhCj4g
Cj4gWzEvMV0gcGh5OiBzdW40aS11c2I6IEZpeCBhIFc9MSBjb21waWxhdGlvbiBmYWlsdXJlCj4g
ICAgICAgY29tbWl0OiA5ZTM0YWJjN2FiZmFjNzgxZGY5MDk4OTFjOGQ1Mzc4MWY2MDcxMDVkCgpG
V0lXLCBJIGhhdmUgbW9kaWZpZWQgcGF0Y2ggdGl0bGUgdG8gcmVmbGVjdCB0aGUgY2hhbmdlIGl0
IGludHJvZHVjZXMKd2hpbGUgYXBwbHlpbmcKCi0tIAp+Vmlub2QKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
