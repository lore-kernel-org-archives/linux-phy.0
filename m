Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17F45C00140
	for <linux-phy@archiver.kernel.org>; Thu, 18 Aug 2022 20:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHIJM2y+bs+GyGb8RBHnt4T164Nlcu5uSOPU+XtEZiM=; b=pgwZ4rzNQEGuah
	9TkmKRHOt38UNt/H9Ir69iaJztl1cTr4mT59VSv1GJpvo/zjwnEZqbX+s6lh5NhBVtPv8WI+/VyVo
	D5NwzSwtFYOH4oz+FSxiKS4iLfyJEt4pbFvnl598ltJKpvIOXYlCaS7xr0totNjTFkzkapUG4xzIv
	waH6hEf9gR4l7ldt0Q7sJ0sBJS/AIZMOh4upYi3WEA0hY6/ojjuF13n+GjgScAWPQ9G3O8HyVNtXX
	PQuwzklaMBuQBxaq5tpo7Kf66TR1BoxZTiRYP3cNWHip+a9v5eGEe/HpIDT3FJBKduFW06Ejw4CTZ
	sB2zxlX56hXvxo/2kfyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOlsl-0093Eq-Gs; Thu, 18 Aug 2022 20:12:47 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOlsj-0093Cx-4y
	for linux-phy@lists.infradead.org; Thu, 18 Aug 2022 20:12:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9DA57B8246E;
	Thu, 18 Aug 2022 20:12:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B010FC433D6;
	Thu, 18 Aug 2022 20:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660853562;
	bh=kqSDJYDlk+GZoTBDy/G+LCULfAbmCJdE3oXWaVevqOc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=KATih+84YFLy5PxMeIZjKJkIsTKk+XKcG8JcMHzR4IJVXlJQRhy82ziejaEos1i7s
	 Y3i0nL2ImEBYVKuHb1X0HbRV+wvGQ1kHwQpDKlfaDqIR8PMCcXCDI1RR+jMP/peh2P
	 G5c/qGo5TKeEtPYrBU5Eym6FeP3HE4VPlG0sdtxo/BZwl75K+jUwmehnTZao5fc/2i
	 D01Nc/SjxwGeEjcXP3I37isiViWdp/03rwNXUw0VWxoqrBkHzwc1PhxhBCk3s5OXUv
	 hZhAbum/QDM9Hi9c7Ic/HJhQ9DtPfuO6NmNQpoxcuFZyMerhxMyiAw2ehuq+BUIrOM
	 EqCq9AVQtztaw==
Date: Thu, 18 Aug 2022 22:12:36 +0200
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Phy <linux-phy@lists.infradead.org>, Kees Cook
 <keescook@chromium.org>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, Pali =?UTF-8?B?Um9ow6Fy?=
 <pali@kernel.org>, josef.schlehofer@nic.cz
Subject: Re: [PATCH linux-phy v2 1/4] string.h: Add str_has_proper_prefix()
Message-ID: <20220818221236.7b16db07@thinkpad>
In-Reply-To: <CAHp75VfN1_0Wgop3Fx4DP2ECRTi9gUV87eUQhKgs4LfYGTzbpA@mail.gmail.com>
References: <20220817200335.911-1-kabel@kernel.org>
	<20220817200335.911-2-kabel@kernel.org>
	<CAHp75VecURpGCBY3WVKqhd64Ngobjvi-w=PuHQBH2V-MqCzkuw@mail.gmail.com>
	<20220818214828.22023dc7@thinkpad>
	<CAHp75VfN1_0Wgop3Fx4DP2ECRTi9gUV87eUQhKgs4LfYGTzbpA@mail.gmail.com>
X-Mailer: Claws Mail 3.19.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_131245_354717_83B939B7 
X-CRM114-Status: GOOD (  23.01  )
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

T24gVGh1LCAxOCBBdWcgMjAyMiAyMjo1NjoxNCArMDMwMApBbmR5IFNoZXZjaGVua28gPGFuZHku
c2hldmNoZW5rb0BnbWFpbC5jb20+IHdyb3RlOgoKPiBPbiBUaHUsIEF1ZyAxOCwgMjAyMiBhdCAx
MDo0OCBQTSBNYXJlayBCZWjDum4gPGthYmVsQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gT24gVGh1
LCAxOCBBdWcgMjAyMiAyMjoxMDo1OCArMDMwMAo+ID4gQW5keSBTaGV2Y2hlbmtvIDxhbmR5LnNo
ZXZjaGVua29AZ21haWwuY29tPiB3cm90ZTogIAo+ID4gPiBPbiBXZWQsIEF1ZyAxNywgMjAyMiBh
dCAxMTowNiBQTSBNYXJlayBCZWjDum4gPGthYmVsQGtlcm5lbC5vcmc+IHdyb3RlOiAgCj4gCj4g
Li4uCj4gCj4gPiA+IEJlc2lkZXMgbm90IHRoZSBnb29kIG5hbWluZyAod2hhdCAncHJvcGVyJyBt
ZWFucyksICAKPiA+Cj4gPiBUaGUgbmFtaW5nIGNvbWVzIGZyb20gc2ltaWxhciBuYW1pbmcgaW4g
bWF0aDogcHJvcGVyIHN1YnNldCBpcyBhcwo+ID4gc3Vic2V0IHRoYXQgaXMgbm90IGVxdWFsIHRv
IHRoZSBzdXBlcnNldC4gU2VlCj4gPiBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9TdWJz
dHJpbmcgOgo+ID4gICAiQSBwcm9wZXIgcHJlZml4IG9mIGEgc3RyaW5nIGlzIG5vdCBlcXVhbCB0
byB0aGUgc3RyaW5nIGl0c2VsZiIgIAo+IAo+IEl0J3MgbmljZSB0byBsZWFybiBzb21ldGhpbmcs
IGJ1dCBJIHN0aWxsIHRoaW5rIHRoYXQgbmFtZSBoYXMgdG9vCj4gYnJvYWQgbWVhbmluZyhzKSB0
aGF0IG1heSBlYXNpbHkgY29uZnVzZSB0aGUgZGV2ZWxvcGVycy4KPiAKPiA+ICAKPiA+ID4gdGhl
IGVudGlyZSBmdW5jdGlvbiBpcyBub3QgbmVlZGVkLiBZb3UgbWF5IHNpbXBseSBjYWxsCj4gPiA+
Cj4gPiA+ICAgc3RyX2hhc19wcmVmaXgoKSAmJiBwW2xlbl0gIT0gJ1wwJzsKPiA+ID4KPiA+ID4g
Q29ycmVjdD8gIAo+ID4KPiA+IERvIHlvdSBtZWFuIHRoYXQgSSBzaG91bGQgaW1wbGVtZW50IHRo
aXMgZnVuY3Rpb24gdG8gc2ltcGx5IHJldHVybgo+ID4gICBzdHJfaGFzX3ByZWZpeCgpICYmIHBb
bGVuXSAhPSAnXDAnCj4gPiBvciB0aGF0IHRoaXMgZnVuY3Rpb24gc2hvdWxkIG5vdCBleGlzdCBh
dCBhbGwgYW5kIEkgc2hvdWxkIGRvIHRoYXQgaW4KPiA+IHRoZSBjb2RlIHdoZXJlIEkgd291bGQg
aGF2ZSB1c2VkIHRoZSBmdW5jdGlvbj8gIAo+IAo+IFRoZSBsYXR0ZXIgc2luY2UgdGhpcyBzZWVt
cyBkbyBub3QgaGF2ZSB1c2VycywgZXhjZXB0IGEgc2luZ2xlIG5ld2NvbWVyLAo+IAoKSnVzdCBv
dXQgb2YgY3VyaW9zaXR5IEkgZ3JlcHBlZCBmb3IgYWxsIHVzYWdlcyBvZiBzdHJfaGFzX3ByZWZp
eCgpIGFuZAp0aGVyZSBhcmUgc29tZSB3aGVyZSBpdCBzdHJfaGFzX3Byb3Blcl9wcmVmaXgoKSBj
b3VsZCBkZXRlY3QgZmFpbHVyZQplYXJsaWVyLiBGb3IgZXhhbXBsZSBpbiBrZXJuZWwvdHJhY2Uv
dHJhY2VfZXZlbnRzX3VzZXIuYyBpbiBmdW5jdGlvbgp1c2VyX2ZpZWxkX3NpemUoKS4KCkRvIHlv
dSB0aGluayBJIHNob3VsZCBwcm9wb3NlIGNvbnZlcnRpbmcgdGhvc2U/IFRoZXJlIGFyZW4ndCB0
aGF0IG1hbnkKdXNlcywgc28gcHJvYmFibHkgbm90LgoKTWFyZWsKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
