Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27C59C00140
	for <linux-phy@archiver.kernel.org>; Thu, 18 Aug 2022 19:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bGkUEeB0Nt7NA3gKcEpGGbXNJPeT9M4tF4TQkxcCV18=; b=Y8DGQVtMAMC2Jt
	vbByrn3ntl7BmmlFuuGg77QxJ+JXnKBAc/+YWzj0QwXubmJUyVqTghJvY8RQC0hjxtNEjiiFp32ml
	Bh2jXSDUhTrIGVbDfKUApmkJOkNF0x1GHdb6BmoLk611vMPamVE5exWYJ0hP3AHLtB8AbZHUeaApt
	ORSSZeaYYh/leLrKS3doD4g0JgGz8aJJ9BmQtrwAkVnvFLc9nBC/2K6a/ZpUxVO+gjH8kqvJF7PuK
	EigU2qHD4bV5xOrXExgetQr2d9YXC2AEty3W/Wl5AUlY4Pq9nWHaOnm27GA+lu7v73rh1QwEQrTSm
	fTjQKybq9OECEiOeljIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOl6n-008X0a-Da; Thu, 18 Aug 2022 19:23:13 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOl6k-008Wzo-AY
	for linux-phy@lists.infradead.org; Thu, 18 Aug 2022 19:23:11 +0000
Received: by mail-qk1-x732.google.com with SMTP id b9so1884503qka.2
        for <linux-phy@lists.infradead.org>; Thu, 18 Aug 2022 12:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=p3cR/K/0vZ/Tc7MLwc8jPl6fy/ZdfnyyXBziXqzK06w=;
        b=Qs/wldAhGABgsNVJIQVPjenaCKMwOh1tRBe4xiX0yQarkhVcyYLOCSl4hmhga/scM6
         /n/gDoix/997EQrUwp+0yzJuIjDi1FzBVfq9IdCtKfOJcFlw1DR4xaYzUhI1/ZsyHem+
         J3ahS7DKEE0mU8vIMMHgT7vHFXTaZDWjJ1w/l67r9zbPBbBEh3ZesuucM0Y+z2dkJY0L
         VwSIK2AwRyKlZisrW/4QusKCynFOeLKGvrShktVVIlRLPHqW1ioATnTi54rjiJAnVqUP
         pEtl+jFD85pGFqB+lvAnQs7VjivPX8NZJRu0BOCsCfiMNxo5ujSNoerKKjqwTcUU9dgj
         x1zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=p3cR/K/0vZ/Tc7MLwc8jPl6fy/ZdfnyyXBziXqzK06w=;
        b=o6wwGZTuI41PtHj5j8/pi2ZAaXUKg+ljfevINHuF1sn/z99pvJ2RSiT+nIvWQ73z4j
         Ue+lpMON+upcvp2AOPqZ619UCl9Oo2jmd6C7Ehg+e37s3jMBpexRS+nQ9fMeIgXY6N0B
         qQDgzaPstA0H/Q8AIdsN+46foHUPRqNzIZODnn/QDc7IcD2PE1OItXAE4xHNUWsrZFQs
         AnW/yfwPhjZ5oMNTNTveS5cms91QHRsDTKo4jMknCI7Zp+QmVeX0dgH2hOhIDIm7DK8d
         ul8ky2xcleT59BSBjfUtd/7IZHZvGMitrVENoB2FDzP0a+O2lLgjbS6POklDBo1CCo2O
         m7Fw==
X-Gm-Message-State: ACgBeo2FJWSZC5Fwl82McEqwr+PnaKGB/CbV+N7AM8i8vvgTJSB5G+xt
	PSqGWkh/65pkpav6epbShvsnqoDNnzrgHZhwCSw=
X-Google-Smtp-Source: AA6agR4PT/UEFyPsj0FMFVgUCVZDj0ZMBCzQUhV8GCeaTI2G6rwcPtUqRxLFN36qVnZZdMcJNAOTTxdBjzyHWGhgUcA=
X-Received: by 2002:a05:620a:2987:b0:6ba:dc04:11ae with SMTP id
 r7-20020a05620a298700b006badc0411aemr3287627qkp.748.1660850588134; Thu, 18
 Aug 2022 12:23:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220817200335.911-1-kabel@kernel.org> <20220817200335.911-3-kabel@kernel.org>
In-Reply-To: <20220817200335.911-3-kabel@kernel.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 18 Aug 2022 22:22:31 +0300
Message-ID: <CAHp75Vcn1MXEB_+kJuR3qY8qxi6oq0pEFFSFrmKv2-tE-YP-zA@mail.gmail.com>
Subject: Re: [PATCH linux-phy v2 2/4] device property: Add {fwnode/device}_get_tx_p2p_amplitude()
To: =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Linux Phy <linux-phy@lists.infradead.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Gregory Clement <gregory.clement@bootlin.com>, Kees Cook <keescook@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
	josef.schlehofer@nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_122310_419717_0AD79905 
X-CRM114-Status: GOOD (  19.34  )
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

T24gV2VkLCBBdWcgMTcsIDIwMjIgYXQgMTE6MDkgUE0gTWFyZWsgQmVow7puIDxrYWJlbEBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IEFkZCBmdW5jdGlvbnMgZndub2RlX2dldF90eF9wMnBfYW1wbGl0
dWRlKCkgYW5kCj4gZGV2aWNlX2dldF90eF9wMnBfYW1wbGl0dWRlKCkgdGhhdCBwYXJzZSB0aGUg
J3R4LXAycC1taWNyb3ZvbHQnIGFuZAo+ICd0eC1wMnAtbWljcm92b2x0LW5hbWVzJyBwcm9wZXJ0
aWVzIGFuZCByZXR1cm4gcGVhayB0byBwZWFrIHRyYW5zbWl0Cj4gYW1wbGl0dWRlIGluIG1pY3Jv
dm9sdHMgZm9yIGdpdmVuIFBIWSBtb2RlLgo+Cj4gVGhlIGZ1bmN0aW9ucyBzZWFyY2ggZm9yIG1v
ZGUgbmFtZSBpbiAndHgtcDJwLW1pY3Jvdm9sdC1uYW1lcycgcHJvcGVydHksCj4gYW5kIHJldHVy
biBhbXBsaXR1ZGUgYXQgdGhlIGNvcnJlc3BvbmRpbmcgaW5kZXggaW4gdGhlICd0eC1wMnAtbWlj
cm92b2x0Jwo+IHByb3BlcnR5Lgo+Cj4gSWYgZ2l2ZW4gbW9kZSBpcyBub3QgbWF0Y2hlZCBpbiAn
dHgtcDJwLW1pY3Jvdm9sdC1uYW1lcycgYXJyYXksIHRoZSBtb2RlCj4gbmFtZSBpcyBnZW5lcmFs
aXplZCAoZm9yIGV4YW1wbGUgInBjaWUzIiAtPiAicGNpZSIgLT4gImRlZmF1bHQiLCBvcgo+ICJ1
c2Itc3MiIC0+ICJ1c2IiIC0+ICJkZWZhdWx0IikuCj4KPiBJZiB0aGUgJ3R4LXAycC1taWNyb3Zv
bHQtbmFtZXMnIGlzIG5vdCBwcmVzZW50LCB0aGUgJ3R4LXAycC1taWNyb3ZvbHQnCj4gcHJvcGVy
dHkgaXMgZXhwZWN0ZWQgdG8gY29udGFpbiBvbmx5IG9uZSB2YWx1ZSwgd2hpY2ggaXMgY29uc2lk
ZXJlZAo+IGRlZmF1bHQsIGFuZCB3aWxsIGJlIHJldHVybmVkIGZvciBhbnkgbW9kZS4KCkl0J3Mg
dmVyeSBzcGVjaWZpYyB0byBhIGRvbWFpbi4gTkFLIGZvciBwdXR0aW5nIGl0IHRvIHRoZSBnZW5l
cmljCmNvZGUsIG90aGVyd2lzZSBleHBsYWluIGhvdyBpdCBjYW4gYmUgdXNlZnVsIG91dHNpZGUg
b2YgdGhlIFBIWSB3b3JsZC4KCi4uLgoKPiArICAgICAgIGNudCA9IGZ3bm9kZV9wcm9wZXJ0eV9z
dHJpbmdfYXJyYXlfY291bnQoZndub2RlLCBuYW1lc19wcm9wKTsKPiArICAgICAgIGlmICghY250
IHx8IGNudCA9PSAtRUlOVkFMKQo+ICsgICAgICAgICAgICAgICAvKgo+ICsgICAgICAgICAgICAg
ICAgKiBJZiB0aGUgbmFtZXMgcHJvcGVydHkgZG9lcyBub3QgZXhpc3Qgb3IgaXMgZW1wdHksIHdl
IGV4cGVjdAo+ICsgICAgICAgICAgICAgICAgKiB0aGUgdmFsdWVzIHByb3BlcnR5IHRvIGNvbnRh
aW4gb25seSBvbmUsIGRlZmF1bHQgdmFsdWUuCj4gKyAgICAgICAgICAgICAgICAqLwo+ICsgICAg
ICAgICAgICAgICByZXR1cm4gZndub2RlX3Byb3BlcnR5X3JlYWRfdTMyKGZ3bm9kZSwgdmFsc19w
cm9wLCBhbXBsaXR1ZGUpOwo+ICsgICAgICAgZWxzZSBpZiAoY250IDwgMCkKPiArICAgICAgICAg
ICAgICAgcmV0dXJuIGNudDsKCllvdSBtYXkgY291bnQgdGhlIHZhbHVlcyBhbmQgcmVhZCB0aGVt
IGFsbCwgYW5kIHRoZW4gY2hlY2sgdGhlIG5hbWVzCmFuZCBjb21wYXJlIGNvdW50IHRvIHRoZSBy
ZWFkIHZhbHVlcy4gSW4gc3VjaCBhIGNhc2UgeW91IGRvbid0IG5lZWQKdG9vIG1hbnkgKG92ZXJs
YXBwZWQpIGNoZWNrcy4gSSB0aGluayB0aGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiBpcwpmYXIg
ZnJvbSBiZWluZyBvcHRpbWFsLiBUYWtlIHlvdXIgdGltZSBhbmQgdHJ5IHRvIGdldCByaWQgb2Yg
MjAlIG9mCmxpbmVzIGluIHRoaXMgZnVuY3Rpb24uIEkgYmVsaWV2ZSBpdCdzIGRvYWJsZS4KCi4u
LgoKPiArICogR2V0cyB0aGUgcGVhayB0byBwZWFrIHRyYW5zbWl0IGFtcGxpdHVkZSBpbiBtaWNy
b3ZvbHRzIGZvciBhIGdpdmVuIFBIWSBtb2RlCj4gKyAqIGJ5IHBhcnNpbmcgdGhlICd0eC1wMnAt
bWljcm92b2x0JyBhbmQgJ3R4LXAycC1taWNyb3ZvbHQtbmFtZXMnIHByb3BlcnRpZXMuCj4gKyAq
IElmIGFtcGxpdHVkZSBpcyBub3Qgc3BlY2lmaWVkIGZvciBAbW9kZSBleGFjdGx5LCB0cmllcyBh
IG1vcmUgZ2VuZXJpYyBtb2RlLAo+ICsgKiBhbmQgaWYgdGhhdCBpc24ndCBzcGVjaWZpZWQsIHRy
aWVzICJkZWZhdWx0Ii4KCkdldHMgLS0+IEdldAp0cmllcyAtLT4gdHJ5CgpPdGhlcndpc2UgYWRk
IGEgc3ViamVjdCB0byB0aGUgc2VudGVuY2VzLgoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5
IFNoZXZjaGVua28KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
