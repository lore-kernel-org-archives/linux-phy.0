Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27284C00140
	for <linux-phy@archiver.kernel.org>; Thu, 18 Aug 2022 19:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ohYOpBl2Mb5WGvOvMdYlXSlExquRUhxAEmcW7lza1g=; b=ezJPc9BCFpYJke
	pPp4lo56GjmBYycWPI/sD+HjuGBkA3waO4cIB+ClqaIwOAhF+fb2pJK2xVIlJShal4Y5n98Yf/2yj
	Hq35c2+9q/q5jRVbJkYmogv966Xcosxkcc+Vei9qTvccAdrWYtN/LscBMycbs3n15Jy+E4H0f7k5m
	w3HKCc5gk9QJp/WBFHQINl+cV7e16LCPe5OjTsIGjq6YkBhewL/OfoXdVGZabKEc5r/tu/eeT/Wn6
	Mn2GDhFo0Lo1J+NvW13x/uT9Pw8vSUIif615DJcyUROh+i6zvQAQuxv50V9x1X0G6onLj8WJNMhGU
	IvaX9j+W/+S9s5hdI4mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOlOm-008kQg-Hq; Thu, 18 Aug 2022 19:41:48 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOlOk-008kOa-7Q
	for linux-phy@lists.infradead.org; Thu, 18 Aug 2022 19:41:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CE78D60C57;
	Thu, 18 Aug 2022 19:41:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FFE4C433D6;
	Thu, 18 Aug 2022 19:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660851704;
	bh=4FgQMLBChYeexHrpum2+OfTBS1r6DlALKEiuH7ZxKDI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=YHY0zAbBPDFN4L8RsInVQ4m+k4k5VJPaoLl2/0QS9nwcUV/mW5/GJx9zGFO9LcbTA
	 g5KzQLlYX9dfc86QvJrtTR8IRe9I2eqB4Tf5o8OfU4ldSwjGev3SFiCUC3S4z1nt89
	 brucRxbGWs79V1FeavgEzOgP2Jx88Uu/rgYBjh4M7lWNV3oZy16leFf/JoppMmaPFx
	 mN5PL2NNNv/6zA+nkDE4xm+4IXN4Py7bEVddgtGoOVICoWKU8zCwtglWl9NRaTOfei
	 H9iW4LSU2N84jDebgaB2uwaMP/zs4MDLosbaLlb5QAxnYcn0i1Y5KpVLpjWs5ZncDT
	 sa54P3PUUqYQA==
Date: Thu, 18 Aug 2022 21:41:37 +0200
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Phy <linux-phy@lists.infradead.org>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Gregory Clement
 <gregory.clement@bootlin.com>, Kees Cook <keescook@chromium.org>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>, Pali =?UTF-8?B?Um9o?=
 =?UTF-8?B?w6Fy?= <pali@kernel.org>, josef.schlehofer@nic.cz
Subject: Re: [PATCH linux-phy v2 2/4] device property: Add
 {fwnode/device}_get_tx_p2p_amplitude()
Message-ID: <20220818214137.29ccb13a@thinkpad>
In-Reply-To: <CAHp75Vcn1MXEB_+kJuR3qY8qxi6oq0pEFFSFrmKv2-tE-YP-zA@mail.gmail.com>
References: <20220817200335.911-1-kabel@kernel.org>
	<20220817200335.911-3-kabel@kernel.org>
	<CAHp75Vcn1MXEB_+kJuR3qY8qxi6oq0pEFFSFrmKv2-tE-YP-zA@mail.gmail.com>
X-Mailer: Claws Mail 3.19.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_124146_374278_3FC7872B 
X-CRM114-Status: GOOD (  31.83  )
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

T24gVGh1LCAxOCBBdWcgMjAyMiAyMjoyMjozMSArMDMwMApBbmR5IFNoZXZjaGVua28gPGFuZHku
c2hldmNoZW5rb0BnbWFpbC5jb20+IHdyb3RlOgoKPiBPbiBXZWQsIEF1ZyAxNywgMjAyMiBhdCAx
MTowOSBQTSBNYXJlayBCZWjDum4gPGthYmVsQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IEFk
ZCBmdW5jdGlvbnMgZndub2RlX2dldF90eF9wMnBfYW1wbGl0dWRlKCkgYW5kCj4gPiBkZXZpY2Vf
Z2V0X3R4X3AycF9hbXBsaXR1ZGUoKSB0aGF0IHBhcnNlIHRoZSAndHgtcDJwLW1pY3Jvdm9sdCcg
YW5kCj4gPiAndHgtcDJwLW1pY3Jvdm9sdC1uYW1lcycgcHJvcGVydGllcyBhbmQgcmV0dXJuIHBl
YWsgdG8gcGVhayB0cmFuc21pdAo+ID4gYW1wbGl0dWRlIGluIG1pY3Jvdm9sdHMgZm9yIGdpdmVu
IFBIWSBtb2RlLgo+ID4KPiA+IFRoZSBmdW5jdGlvbnMgc2VhcmNoIGZvciBtb2RlIG5hbWUgaW4g
J3R4LXAycC1taWNyb3ZvbHQtbmFtZXMnIHByb3BlcnR5LAo+ID4gYW5kIHJldHVybiBhbXBsaXR1
ZGUgYXQgdGhlIGNvcnJlc3BvbmRpbmcgaW5kZXggaW4gdGhlICd0eC1wMnAtbWljcm92b2x0Jwo+
ID4gcHJvcGVydHkuCj4gPgo+ID4gSWYgZ2l2ZW4gbW9kZSBpcyBub3QgbWF0Y2hlZCBpbiAndHgt
cDJwLW1pY3Jvdm9sdC1uYW1lcycgYXJyYXksIHRoZSBtb2RlCj4gPiBuYW1lIGlzIGdlbmVyYWxp
emVkIChmb3IgZXhhbXBsZSAicGNpZTMiIC0+ICJwY2llIiAtPiAiZGVmYXVsdCIsIG9yCj4gPiAi
dXNiLXNzIiAtPiAidXNiIiAtPiAiZGVmYXVsdCIpLgo+ID4KPiA+IElmIHRoZSAndHgtcDJwLW1p
Y3Jvdm9sdC1uYW1lcycgaXMgbm90IHByZXNlbnQsIHRoZSAndHgtcDJwLW1pY3Jvdm9sdCcKPiA+
IHByb3BlcnR5IGlzIGV4cGVjdGVkIHRvIGNvbnRhaW4gb25seSBvbmUgdmFsdWUsIHdoaWNoIGlz
IGNvbnNpZGVyZWQKPiA+IGRlZmF1bHQsIGFuZCB3aWxsIGJlIHJldHVybmVkIGZvciBhbnkgbW9k
ZS4gIAo+IAo+IEl0J3MgdmVyeSBzcGVjaWZpYyB0byBhIGRvbWFpbi4gTkFLIGZvciBwdXR0aW5n
IGl0IHRvIHRoZSBnZW5lcmljCj4gY29kZSwgb3RoZXJ3aXNlIGV4cGxhaW4gaG93IGl0IGNhbiBi
ZSB1c2VmdWwgb3V0c2lkZSBvZiB0aGUgUEhZIHdvcmxkLgoKVGhlIHByb3BlcnR5IG1heSBiZSBh
bHNvIHVzZWZ1bCBmb3IgZHJpdmVycyB0aGF0IGRvbid0IGRlcGVuZCBvbgpnZW5lcmljIFBIWSBz
dWJzeXN0ZW0uIEF0IGxlYXN0IHRoZSBtdjg4ZTZ4eHggRFNBIGRyaXZlciBhbHJlYWR5IHJlYWRz
CnRoZSBwcm9wZXJ0eSBbMV0gYWx0aG91Z2ggaXQgc2ltcGx5IHVzZXMgb2ZfcHJvcGVydHlfcmVh
ZF91MzIoKSwKYmVjYXVzZSBpdCBkb2VzIG5vdCBleHBlY3QgbW9yZSBjb21wbGljYXRlZCBkZWZp
bml0aW9uIHlldC4KClRoZXJlIGFyZSB0aHJlZSBzdWJzeXN0ZW0gd2hpY2ggbWF5IHdhbnQgdG8g
dXNlIHRoaXMgZnVuY3Rpb246IGdlbmVyaWMKUEhZLCBldGhlcm5ldCBQSFkgYW5kIERTQS4gU2lu
Y2UgZXRoZXJuZXQgUEhZIHN1YnN5c3RlbSBub3IgRFNBCnN1YnN5c3RlbSBkbyBub3QgZGVwZW5k
IG9uIGdlbmVyaWMgUEhZLCBJIHRob3VnaHQgcHV0dGluZyBpdCBpbiBiYXNlCndvdWxkIGJlIHNl
bnNpYmxlLgoKSWYgeW91IHRoaW5rIGl0IHNob3VsZCBiZSBpbiBnZW5lcmljIFBIWSBzdWJzeXN0
ZW0gYW55d2F5LCBhbmQgdGhhdApvdGhlciBkcml2ZXJzIG5lZWRpbmcgaXQgc2hvdWxkIGRlcGVu
ZCBvbiBHRU5FUklDX1BIWSwgSSBjYW4gbW92ZSBpdC4KClsxXQpodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2
ZXJzL25ldC9kc2EvbXY4OGU2eHh4L2NoaXAuYz9oPXY2LjAtcmMxI24zNTA0Cgo+IAo+IC4uLgo+
IAo+ID4gKyAgICAgICBjbnQgPSBmd25vZGVfcHJvcGVydHlfc3RyaW5nX2FycmF5X2NvdW50KGZ3
bm9kZSwgbmFtZXNfcHJvcCk7Cj4gPiArICAgICAgIGlmICghY250IHx8IGNudCA9PSAtRUlOVkFM
KQo+ID4gKyAgICAgICAgICAgICAgIC8qCj4gPiArICAgICAgICAgICAgICAgICogSWYgdGhlIG5h
bWVzIHByb3BlcnR5IGRvZXMgbm90IGV4aXN0IG9yIGlzIGVtcHR5LCB3ZSBleHBlY3QKPiA+ICsg
ICAgICAgICAgICAgICAgKiB0aGUgdmFsdWVzIHByb3BlcnR5IHRvIGNvbnRhaW4gb25seSBvbmUs
IGRlZmF1bHQgdmFsdWUuCj4gPiArICAgICAgICAgICAgICAgICovCj4gPiArICAgICAgICAgICAg
ICAgcmV0dXJuIGZ3bm9kZV9wcm9wZXJ0eV9yZWFkX3UzMihmd25vZGUsIHZhbHNfcHJvcCwgYW1w
bGl0dWRlKTsKPiA+ICsgICAgICAgZWxzZSBpZiAoY250IDwgMCkKPiA+ICsgICAgICAgICAgICAg
ICByZXR1cm4gY250OyAgCj4gCj4gWW91IG1heSBjb3VudCB0aGUgdmFsdWVzIGFuZCByZWFkIHRo
ZW0gYWxsLAoKV2hhdCBkbyB5b3UgbWVhbj8gQ291bnQgdGhlIHZhbHVlcyBhbmQgcmVhZCB0aGVt
IGFsbCB2aWEgb25lCmNhbGwgdG8gZndub2RlX3Byb3BlcnR5X3N0cmluZ19hcnJheV9jb3VudCgp
ID8KCj4gYW5kIHRoZW4gY2hlY2sgdGhlIG5hbWVzCj4gYW5kIGNvbXBhcmUgY291bnQgdG8gdGhl
IHJlYWQgdmFsdWVzLiBJbiBzdWNoIGEgY2FzZSB5b3UgZG9uJ3QgbmVlZAo+IHRvbyBtYW55IChv
dmVybGFwcGVkKSBjaGVja3MuIEkgdGhpbmsgdGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gaXMK
PiBmYXIgZnJvbSBiZWluZyBvcHRpbWFsLiBUYWtlIHlvdXIgdGltZSBhbmQgdHJ5IHRvIGdldCBy
aWQgb2YgMjAlIG9mCj4gbGluZXMgaW4gdGhpcyBmdW5jdGlvbi4gSSBiZWxpZXZlIGl0J3MgZG9h
YmxlLgo+Cj4gLi4uCj4gCj4gPiArICogR2V0cyB0aGUgcGVhayB0byBwZWFrIHRyYW5zbWl0IGFt
cGxpdHVkZSBpbiBtaWNyb3ZvbHRzIGZvciBhIGdpdmVuIFBIWSBtb2RlCj4gPiArICogYnkgcGFy
c2luZyB0aGUgJ3R4LXAycC1taWNyb3ZvbHQnIGFuZCAndHgtcDJwLW1pY3Jvdm9sdC1uYW1lcycg
cHJvcGVydGllcy4KPiA+ICsgKiBJZiBhbXBsaXR1ZGUgaXMgbm90IHNwZWNpZmllZCBmb3IgQG1v
ZGUgZXhhY3RseSwgdHJpZXMgYSBtb3JlIGdlbmVyaWMgbW9kZSwKPiA+ICsgKiBhbmQgaWYgdGhh
dCBpc24ndCBzcGVjaWZpZWQsIHRyaWVzICJkZWZhdWx0Ii4gIAo+IAo+IEdldHMgLS0+IEdldAo+
IHRyaWVzIC0tPiB0cnkKPiAKPiBPdGhlcndpc2UgYWRkIGEgc3ViamVjdCB0byB0aGUgc2VudGVu
Y2VzLgo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
