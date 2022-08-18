Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98373C32773
	for <linux-phy@archiver.kernel.org>; Thu, 18 Aug 2022 19:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFLcEoOEqGWGh9P6l6ve8fQ+ZXHPeK3xjLvujOZkvDo=; b=2zOrZvZKEl7N7q
	tyG1934Shm2IH0aMx9M97SqDABK6szaWS9RoFnX/YAAO9xJUAe/UkUxBCsy1RwlSTD0NfMYaUVIcE
	xXPATRIhOx0kC+BONndzd47TXgMcL4LSY/kSiZ+Y+l6rqqRdKBIg5s7B5NC7qv33zRxJJpEHZXIQl
	YyzdJradKe4XioYuJfI5o8YxU6mqBXF15Bj9W2hWJAGqumfekpGacrJbMS6Nu+lNg/RaneZlu3mQu
	cYj3JmkpX8agiLAUF2hcPtBLs8ekHU6croauPhOjd5M9Dgj1Uyy81Dv7g4cVr5ElpYspulTVv4Hm4
	l7rd0ClS2uGnaUykWZFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOldQ-008smq-RV; Thu, 18 Aug 2022 19:56:56 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOldO-008sfD-6O
	for linux-phy@lists.infradead.org; Thu, 18 Aug 2022 19:56:55 +0000
Received: by mail-qv1-xf32.google.com with SMTP id mz1so1970384qvb.4
        for <linux-phy@lists.infradead.org>; Thu, 18 Aug 2022 12:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=x6C9oaqjzTmMIXnSanHNNBqmdNheWpmGgKycJO3HRsM=;
        b=gfAiGgfU47zX+cjYD7NiEzDLnPng/4RgoLNcE7yXZwuQsCkYh6DuL+H6yoGVCTHa2Q
         V/6mVSPdZCfxjUjJTx9DrLZ9Ys2L5yZ79mAjNMm9n8J0PQJHpQvlAGvAyj4Q2SBZxWFZ
         t26GDzke1tpBmCY4TdoEIVXiwp+jlSi/xdhFk20mwHR07fciMFVVM+R7NXLKKCF6U3aU
         OQJyWplK3dXf4JkkWtiG8+Ydaz8pAO/XpBfnXMcL4zPd8S1umrVwdIk6OhAeGDLEMkXx
         7Mg8oWg34Wf/FoY4/Opw7G8NmNG7CRPzYkas+2YD4f+ssZouEsGVRqif0gZc/7BAOzvK
         FRag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=x6C9oaqjzTmMIXnSanHNNBqmdNheWpmGgKycJO3HRsM=;
        b=aDK9g9utkQCx/ORT2vv3rOM1yh5X+2bu+1gv54CLqMbY4L6f7EPgRmSMrcFcBmP/79
         +YLe4f9ZPDsf+zAdz4Ba2ca/UPBji1LdCWReaSdbjQeDvLgmPvDJtNrdPRQdp8uMNz6N
         IHoN9ZP2mvdOMfld5EVrfNL7GvE8CpvIDI/j3bvC++HpcxnSkzSx93MNJ/xXGLebqG5G
         nOnF0+NTRkfiZbgjJaFYxzW25cw0mz8nziUCZoJbCgpOoBrAoY1JpCbx/7HwiWCM+Ulf
         A3647crouT+qQgw6ttod4h6KM7kAITdXUk7K3OYI1F/c2xA2B10+NDhnQeVip2N2EJWq
         itPw==
X-Gm-Message-State: ACgBeo2YP+/dp5WVdglOjYULAq29lbYWkDqmpu97By23MiYd3kNX+nfc
	DT7d07sgYlctEnZzELyQDNamfGGK8JIuSODSAlo=
X-Google-Smtp-Source: AA6agR7RbJOL290Hi3wzTTDdbg3I8cd5NBL3HNzk9tEdeyVn7rbY2UKNuv2cT1h8Th+5tvNhCOhI6OCzCFxR3wEjYSs=
X-Received: by 2002:ad4:5baf:0:b0:476:6a9e:b5e1 with SMTP id
 15-20020ad45baf000000b004766a9eb5e1mr3792263qvq.64.1660852611084; Thu, 18 Aug
 2022 12:56:51 -0700 (PDT)
MIME-Version: 1.0
References: <20220817200335.911-1-kabel@kernel.org> <20220817200335.911-2-kabel@kernel.org>
 <CAHp75VecURpGCBY3WVKqhd64Ngobjvi-w=PuHQBH2V-MqCzkuw@mail.gmail.com> <20220818214828.22023dc7@thinkpad>
In-Reply-To: <20220818214828.22023dc7@thinkpad>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 18 Aug 2022 22:56:14 +0300
Message-ID: <CAHp75VfN1_0Wgop3Fx4DP2ECRTi9gUV87eUQhKgs4LfYGTzbpA@mail.gmail.com>
Subject: Re: [PATCH linux-phy v2 1/4] string.h: Add str_has_proper_prefix()
To: =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Linux Phy <linux-phy@lists.infradead.org>, Kees Cook <keescook@chromium.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Gregory Clement <gregory.clement@bootlin.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
	josef.schlehofer@nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_125654_286058_44A85F6E 
X-CRM114-Status: GOOD (  16.46  )
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

T24gVGh1LCBBdWcgMTgsIDIwMjIgYXQgMTA6NDggUE0gTWFyZWsgQmVow7puIDxrYWJlbEBrZXJu
ZWwub3JnPiB3cm90ZToKPiBPbiBUaHUsIDE4IEF1ZyAyMDIyIDIyOjEwOjU4ICswMzAwCj4gQW5k
eSBTaGV2Y2hlbmtvIDxhbmR5LnNoZXZjaGVua29AZ21haWwuY29tPiB3cm90ZToKPiA+IE9uIFdl
ZCwgQXVnIDE3LCAyMDIyIGF0IDExOjA2IFBNIE1hcmVrIEJlaMO6biA8a2FiZWxAa2VybmVsLm9y
Zz4gd3JvdGU6CgouLi4KCj4gPiBCZXNpZGVzIG5vdCB0aGUgZ29vZCBuYW1pbmcgKHdoYXQgJ3By
b3BlcicgbWVhbnMpLAo+Cj4gVGhlIG5hbWluZyBjb21lcyBmcm9tIHNpbWlsYXIgbmFtaW5nIGlu
IG1hdGg6IHByb3BlciBzdWJzZXQgaXMgYXMKPiBzdWJzZXQgdGhhdCBpcyBub3QgZXF1YWwgdG8g
dGhlIHN1cGVyc2V0LiBTZWUKPiBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9TdWJzdHJp
bmcgOgo+ICAgIkEgcHJvcGVyIHByZWZpeCBvZiBhIHN0cmluZyBpcyBub3QgZXF1YWwgdG8gdGhl
IHN0cmluZyBpdHNlbGYiCgpJdCdzIG5pY2UgdG8gbGVhcm4gc29tZXRoaW5nLCBidXQgSSBzdGls
bCB0aGluayB0aGF0IG5hbWUgaGFzIHRvbwpicm9hZCBtZWFuaW5nKHMpIHRoYXQgbWF5IGVhc2ls
eSBjb25mdXNlIHRoZSBkZXZlbG9wZXJzLgoKPgo+ID4gdGhlIGVudGlyZSBmdW5jdGlvbiBpcyBu
b3QgbmVlZGVkLiBZb3UgbWF5IHNpbXBseSBjYWxsCj4gPgo+ID4gICBzdHJfaGFzX3ByZWZpeCgp
ICYmIHBbbGVuXSAhPSAnXDAnOwo+ID4KPiA+IENvcnJlY3Q/Cj4KPiBEbyB5b3UgbWVhbiB0aGF0
IEkgc2hvdWxkIGltcGxlbWVudCB0aGlzIGZ1bmN0aW9uIHRvIHNpbXBseSByZXR1cm4KPiAgIHN0
cl9oYXNfcHJlZml4KCkgJiYgcFtsZW5dICE9ICdcMCcKPiBvciB0aGF0IHRoaXMgZnVuY3Rpb24g
c2hvdWxkIG5vdCBleGlzdCBhdCBhbGwgYW5kIEkgc2hvdWxkIGRvIHRoYXQgaW4KPiB0aGUgY29k
ZSB3aGVyZSBJIHdvdWxkIGhhdmUgdXNlZCB0aGUgZnVuY3Rpb24/CgpUaGUgbGF0dGVyIHNpbmNl
IHRoaXMgc2VlbXMgZG8gbm90IGhhdmUgdXNlcnMsIGV4Y2VwdCBhIHNpbmdsZSBuZXdjb21lciwK
Ci0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
