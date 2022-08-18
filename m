Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A752C00140
	for <linux-phy@archiver.kernel.org>; Thu, 18 Aug 2022 19:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9c0mReDUUqUibQUn1J5eqBit6Y5A3O4XX7lpi8m+isA=; b=SBxakFjKKCwIdh
	tpCSyqgKQXBeC4ZOJTx7or2m5h/emcgu8wH7So4DMztKP8Xn/5B3qVsrkp0uCHieali09kRNnvUNk
	/0rmKlDgcP9v3Z0Q0NbBg06Bmr5vIKr0KcLZZAQPqqzUTqdVZCq73G/2oMNuyIWhZgHmUqDutilj9
	uce0cThSp+KthYkGJX1abtLgELxxKSozFu2cX0Tgh9oiZXf22hCtaaz7vdJqGXSjzgmz92342rlsP
	SH248H7FMpEZBRKyaXNBDpbqI1Bs/pnoBk0/1kfmt180Ib8IrV7dG7SV2lIo/GEoNI7Kve/4RGN5f
	GS9dVbpUROaokE1HAbsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOlVR-008oHe-Ht; Thu, 18 Aug 2022 19:48:41 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOlVN-008oCH-My
	for linux-phy@lists.infradead.org; Thu, 18 Aug 2022 19:48:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 18D2FB8240F;
	Thu, 18 Aug 2022 19:48:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07503C433C1;
	Thu, 18 Aug 2022 19:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660852114;
	bh=LbfCHFjKk6kzGgxEEUBJgU/bUqUM3IB8CCxE0P4a6bY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=OzoOBygBfdk21arMXR12/gapkYCLUl5DIZIjGoyLdNfq6LLBUnayGq4VlmnHl323L
	 iZx3xye5Bssk3Ez9gQME9SMvSAdHMUaNueGBEKGwyKqLyF/Z3A/8vDgmzU7vzj+YNw
	 /dPIV2coNRspoY2u0ns/Kb+OTFDInFA9saWHLRn66nOcXEeVl1eXzOTBvbcjbhI3GX
	 ueICF1IHxevnJkimJ5YUZ3bj14htoUYrdSQTyrUFmGovJVl1rh8VQd6p2LnCzKJO0C
	 M1R/9YezXiYJoWBw/nhVmU/GAhwePb02Ze6VKUNtoKK31e03j8DEFjuqjYdhHvrBBJ
	 bFRPejkcm5irw==
Date: Thu, 18 Aug 2022 21:48:28 +0200
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
Message-ID: <20220818214828.22023dc7@thinkpad>
In-Reply-To: <CAHp75VecURpGCBY3WVKqhd64Ngobjvi-w=PuHQBH2V-MqCzkuw@mail.gmail.com>
References: <20220817200335.911-1-kabel@kernel.org>
	<20220817200335.911-2-kabel@kernel.org>
	<CAHp75VecURpGCBY3WVKqhd64Ngobjvi-w=PuHQBH2V-MqCzkuw@mail.gmail.com>
X-Mailer: Claws Mail 3.19.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_124837_919328_A9F5AA33 
X-CRM114-Status: GOOD (  19.50  )
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

T24gVGh1LCAxOCBBdWcgMjAyMiAyMjoxMDo1OCArMDMwMApBbmR5IFNoZXZjaGVua28gPGFuZHku
c2hldmNoZW5rb0BnbWFpbC5jb20+IHdyb3RlOgoKPiBPbiBXZWQsIEF1ZyAxNywgMjAyMiBhdCAx
MTowNiBQTSBNYXJlayBCZWjDum4gPGthYmVsQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IEFk
ZCBzdHJfaGFzX3Byb3Blcl9wcmVmaXgoKSwgc2ltaWxhciB0byBzdHJfaGFzX3ByZWZpeCgpLCBi
dXQgcmVxdWlyZXMKPiA+IHRoYXQgdGhlIHByZWZpeCBpcyBwcm9wZXI6IHRoZSBzdHJpbmcgaXRz
ZWxmIG11c3QgYmUgbG9uZ2VyIHRoYW4gdGhlCj4gPiBwcmVmaXguCj4gPgo+ID4gU2lnbmVkLW9m
Zi1ieTogTWFyZWsgQmVow7puIDxrYWJlbEBrZXJuZWwub3JnPgo+ID4gLS0tCj4gPiBBbmR5LCBL
ZWVzLCBjb3VsZCB5b3UgYWNrIHRoaXMgaWYgaXQgaXMgb2s/ICAKPiAKPiBTZWVtcyB0byBtZSB0
aGVyZSBhcmUgdG9vIG1hbnkgc3RybGVuKCk6cy4gT25lIGlzIGhpZGRlbiBpbiBzdHJuY21wKCku
CgpJIHRob3VnaHQgdGhpcyB3YXMgb2sgY2F1c2UgZ2NjIGhhcyBvcHRpbWl6YXRpb25zIGZvciB0
aGlzIGluCmh0dHBzOi8vZ2l0aHViLmNvbS9nY2MtbWlycm9yL2djYy9ibG9iL21hc3Rlci9nY2Mv
dHJlZS1zc2Etc3RybGVuLmNjCgpCdXQgbm93IEkgc2VlIHRoYXQga2VybmVsIGRvZXMgbm90IGRl
Y2xhcmUgdGhlc2UgZnVuY3Rpb25zIGFzIGlubGluZQp0aGF0IGNhbGwgX19idWlsdGluX3N0cmxl
bigpLi4uIHNvIHByb2JhYmx5IHRoZSBvcHRpbWl6YXRpb25zIGFyZSBub3QKdXNlZC4KCj4gQmVz
aWRlcyBub3QgdGhlIGdvb2QgbmFtaW5nICh3aGF0ICdwcm9wZXInIG1lYW5zKSwKClRoZSBuYW1p
bmcgY29tZXMgZnJvbSBzaW1pbGFyIG5hbWluZyBpbiBtYXRoOiBwcm9wZXIgc3Vic2V0IGlzIGFz
CnN1YnNldCB0aGF0IGlzIG5vdCBlcXVhbCB0byB0aGUgc3VwZXJzZXQuIFNlZQpodHRwczovL2Vu
Lndpa2lwZWRpYS5vcmcvd2lraS9TdWJzdHJpbmcgOgogICJBIHByb3BlciBwcmVmaXggb2YgYSBz
dHJpbmcgaXMgbm90IGVxdWFsIHRvIHRoZSBzdHJpbmcgaXRzZWxmIgoKPiB0aGUgZW50aXJlIGZ1
bmN0aW9uIGlzIG5vdCBuZWVkZWQuIFlvdSBtYXkgc2ltcGx5IGNhbGwKPiAKPiAgIHN0cl9oYXNf
cHJlZml4KCkgJiYgcFtsZW5dICE9ICdcMCc7Cj4gCj4gQ29ycmVjdD8KCkRvIHlvdSBtZWFuIHRo
YXQgSSBzaG91bGQgaW1wbGVtZW50IHRoaXMgZnVuY3Rpb24gdG8gc2ltcGx5IHJldHVybgogIHN0
cl9oYXNfcHJlZml4KCkgJiYgcFtsZW5dICE9ICdcMCcKb3IgdGhhdCB0aGlzIGZ1bmN0aW9uIHNo
b3VsZCBub3QgZXhpc3QgYXQgYWxsIGFuZCBJIHNob3VsZCBkbyB0aGF0IGluCnRoZSBjb2RlIHdo
ZXJlIEkgd291bGQgaGF2ZSB1c2VkIHRoZSBmdW5jdGlvbj8KClRoYW5rcy4KCk1hcmVrCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
