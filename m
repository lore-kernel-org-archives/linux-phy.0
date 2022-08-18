Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37389C00140
	for <linux-phy@archiver.kernel.org>; Thu, 18 Aug 2022 20:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GmHrqoi4DXWzs30kIaQLNT3m7cq9jYf7VZvBk/C+FbM=; b=nt0kZnbcH8WoaA
	lgY5qnWZCG+T/xLr7FxqeQIPMCKLLAiPXmrl6igvZ9cDhY3oWDFCR0yzKJgn6qtm/oryhYaisbIOV
	oKur8Cwa2TV2gD2u1LGOLpzdxfWQtKmph3S28QFt5tSf6hkSPj4WsvDT6zv2bldC6hJ8l/IcZUakq
	LuB+EAC7ixWWFNcIyEjN1+RWuNMvPjuGvcCV262ywztsL+HsR1iv3DwSSicJo71XGC34370Jun55s
	SmK9gT9QYKHauUPLU/wc4poW9fx47QJKQW8PavmJQ6DWIoNKINGSFe+v8eemSnvzLnAy5FR7KKJz+
	IwL3Glq+FCB5rNG78RKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOlkC-008wgJ-Fk; Thu, 18 Aug 2022 20:03:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOlk9-008wdM-Sm
	for linux-phy@lists.infradead.org; Thu, 18 Aug 2022 20:03:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9A43E61348;
	Thu, 18 Aug 2022 20:03:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F3FBC433C1;
	Thu, 18 Aug 2022 20:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660853027;
	bh=IeUfviVB25387GkpWnclXYp8ePJifeEM+3lrJ3qxfwM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ZG4UqLSfbXDvPv8EIV23mRe6BfblTvnqOMdcHvLUKp2+AhZk71SXjlr2EglrMefSs
	 yb0hWyDhJSEa+5W9kB++u/dymS58r7nwgBfYNpKUDpBGjt1dVXFAuMQ7cK7rKM64nH
	 UxiGYtdVFdVYHk3f5SyhG9WsCZ4+SpoN5vtPtKauDQuJifGjmVJqI0W5gvFnBo5nbR
	 B3tVzeUatQt0l+wKQ1GmxAkksTKPgi27iNYFMVnegLKkzKvaE36G12piO0OAB7vFJH
	 nhvaSU2O69ea+fI0VsA8hUHgyKxn/XyP3kMXZbYZqNSwhHk8itVFjgEPRNBKqZt2VG
	 KgH/7SLleK0Ew==
Date: Thu, 18 Aug 2022 22:03:40 +0200
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
Message-ID: <20220818220340.78901438@thinkpad>
In-Reply-To: <CAHp75VfN1_0Wgop3Fx4DP2ECRTi9gUV87eUQhKgs4LfYGTzbpA@mail.gmail.com>
References: <20220817200335.911-1-kabel@kernel.org>
	<20220817200335.911-2-kabel@kernel.org>
	<CAHp75VecURpGCBY3WVKqhd64Ngobjvi-w=PuHQBH2V-MqCzkuw@mail.gmail.com>
	<20220818214828.22023dc7@thinkpad>
	<CAHp75VfN1_0Wgop3Fx4DP2ECRTi9gUV87eUQhKgs4LfYGTzbpA@mail.gmail.com>
X-Mailer: Claws Mail 3.19.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_130354_011410_62D21EA3 
X-CRM114-Status: GOOD (  21.88  )
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
cyBkbyBub3QgaGF2ZSB1c2VycywgZXhjZXB0IGEgc2luZ2xlIG5ld2NvbWVyLAo+IAoKVmVyeSB3
ZWxsLiBUaGFua3MgZm9yIHRoZSByZXZpZXcuCgpNYXJlawoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
