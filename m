Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8912C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 17:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ict2U327YOhTs0ah7Ffwqgf3nFH7Lbc8FUjVkAt/q14=; b=GyyKLnHg2Y+0gV
	42mbzKDfedK7efauuYVt46JdRc2uDCJVWEozvQdxqcPQBmvqKO0muphBJ6dzbC3bjkd05LAyOtkul
	c4e3yvIdcmd5T2w8Y63VXPFdLSXnllCgdz/5mhcSJszEQyA+tbZ7wo/fuH2NhVAJRvwL+ElcZO/k5
	IBEvEUZdNo8K3IFC9+XViRbXJYg6KqrisIvnpAgModKHOhWit8O1fYJPe7OBUFOXs7NKyLoejS5lZ
	0UaIwoGtxepAIBDmDUaaE5HfwfKIIJOzGb0tFYokRRYGZFf57sXgF0MS8hqoJVS/YT8X04hjjIamO
	s4DiwGaSisEu7O+xqBgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxXz8-0023rC-9r; Wed, 15 Dec 2021 17:22:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxXz4-0023p5-1U
 for linux-phy@lists.infradead.org; Wed, 15 Dec 2021 17:22:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8F9E0619EE;
 Wed, 15 Dec 2021 17:22:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB3A3C36AE3;
 Wed, 15 Dec 2021 17:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639588949;
 bh=VE31AO0Y6HSFW19USLM3ndbP3bk8jXc4yVGR74QSJyI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WDQZgNHg21BAH+k1U4s5WXQAuvFlLYKpVq/MCL+YXkDAHjL+GKX5kMDazKzo9E0vN
 hxY+HIWzPorm2wxBOTR1i1IfyfKL8SfjE4n3Dc2SjCO6Nqe9+N1blCxRuoho9L7wWx
 Ub8TUyz9hKaNlW3vnCsN/+iIJeMZc5gu01TbMnxBiX43HHpIPFZmll94KyPicoqDOC
 Sw6+hFNVZlhHGrT26rJ6sW8o+HqDzVY6KDCyS0KUnTOkxUqN9a4fkODjC7ZeGUjKEr
 iJnpl7JF5j4wBFOf4m50H5YwEDAOz1b0pMbCOsALiXlvk3SJkDiwiyRuI1MGUhFBwU
 H8H06fqTgQHlQ==
Date: Wed, 15 Dec 2021 18:22:22 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, Vladimir
 Oltean <olteanv@gmail.com>, Holger Brunck
 <holger.brunck@hitachienergy.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@ti.com>
Subject: Re: [PATCH devicetree 2/2] dt-bindings: phy: Add
 `tx-amplitude-microvolt` property binding
Message-ID: <20211215182222.620606a0@thinkpad>
In-Reply-To: <YbnJhI2Z3lwC3vF9@lunn.ch>
References: <20211214233432.22580-1-kabel@kernel.org>
 <20211214233432.22580-3-kabel@kernel.org>
 <YbnJhI2Z3lwC3vF9@lunn.ch>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_092230_184072_8AA3AE82 
X-CRM114-Status: GOOD (  15.90  )
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

T24gV2VkLCAxNSBEZWMgMjAyMSAxMTo1NTowMCArMDEwMApBbmRyZXcgTHVubiA8YW5kcmV3QGx1
bm4uY2g+IHdyb3RlOgoKPiBPbiBXZWQsIERlYyAxNSwgMjAyMSBhdCAxMjozNDozMkFNICswMTAw
LCBNYXJlayBCZWjDum4gd3JvdGU6Cj4gPiBDb21tb24gUEhZcyBvZnRlbiBoYXZlIHRoZSBwb3Nz
aWJpbGl0eSB0byBzcGVjaWZ5IHBlYWstdG8tcGVhayB2b2x0YWdlCj4gPiBvbiB0aGUgZGlmZmVy
ZW50aWFsIHBhaXIgLSB0aGUgZGVmYXVsdCB2b2x0YWdlIHNvbWV0aW1lcyBuZWVkcyB0byBiZQo+
ID4gY2hhbmdlZCBmb3IgYSBwYXJ0aWN1bGFyIGJvYXJkLiAgCj4gCj4gSGkgTWFyZWsKPiAKPiBD
b21tb24gUEhZcyBhcmUgbm90IHRoZSBvbmx5IHVzZXIgb2YgdGhpcy4gRXRoZXJuZXQgUEhZcyBj
YW4gYWxzbyB1c2UKPiBpdCwgYXMgd2VsbCBhcyBTRVJERVNlcyBlbWJlZGRlZCB3aXRoaW4gRXRo
ZXJuZXQgc3dpdGNoZXMuCj4gCj4gVGhhdCBpcyB3aHkgaSBzdWdnZXN0ZWQgdGhlc2UgcHJvcGVy
dGllcyBnbyBpbnRvIHNvbWV0aGluZyBsaWtlCj4gc2VyZGVzLnlhbWwuIFRoYXQgY2FuIHRoZW4g
YmUgaW5jbHVkZWQgaW50byBDb21tb24gUEhZLCBFdGhlcm5ldCBQSFlzLAo+IHN3aXRjaCBkcml2
ZXJzIGV0Yy4KPiAKPiBQbGVhc2UgY291bGQgeW91IG1ha2Ugc3VjaCBhIHNwbGl0Pwo+IAo+ICAg
ICAgICBBbmRyZXcKCkhpIEFuZHJldywKCmFuZCB3aGVyZSAoaW50byB3aGljaCBkaXJlY3Rvcnkp
IHNob3VsZCB0aGlzIHNlcmRlcy55YW1sIGZpbGUgZ28/CgpNeSBpZGVhIHdhcyB0byBwdXQgdGhl
IHByb3BlcnRpZXMgaW50byBjb21tb24gUEhZIGFuZCB0aGVuIHJlZmVyIHRvCnRoZW0gZnJvbSBv
dGhlciBwbGFjZXMsIHNvIGZvciBleGFtcGxlIHRoaXMgd291bGQgYmUgcHV0IGludG8gZXRoZXJu
ZXQKUEhZIGJpbmRpbmc6CgogIHNlcmRlcy10eC1hbXBsaXR1ZGUtbWljcm92b2x0OgogICAgJHJl
ZjogJy9zY2hlbWFzL3BoeS9waHkueWFtbCMvcHJvcGVydGllcy90eC1hbXBsaXR1ZGUtbWljcm92
b2x0JwoKTWFyZWsKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
