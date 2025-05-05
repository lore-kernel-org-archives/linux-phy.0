Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 890B3C3ABB6
	for <linux-phy@archiver.kernel.org>; Mon,  5 May 2025 10:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQdcjCKVJi0qM4DcE+6MdVNZXxf0LAkpOeVG90BkNsY=; b=V1BgDIB09vadx2
	PTylgZJyGe9YV9hHrQQze9BEqrbQY1hHqaMIxONvwciHURHygSwqd0Li8euCLipFviYK0DiaW+/3I
	Ge+aW8tFFm2a+vbWbxdZGVTFnwASDnyIS+je3sY1vwJFVLZe3ScgkKiMxL1Jg9eP7p81EOjies8or
	1pOE5+kL3PH3dQxl+X4APysX//TmVSa5xyVq1ApFWf6Uv3nIpO31cucNxzHm3oesT30aN2A9MpciF
	2FIIwb8Cq7DiU/LWIuLzpYYwMa2NIDVItivSlNTfZGmqJl4GU8HRMBV9O0ZQcoUSu5YTUlgoVm7R2
	EGjV/jbKbQ6nrtKCIM0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBt6p-000000073lD-3v45;
	Mon, 05 May 2025 10:31:39 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBt6n-000000073kO-2h1d
	for linux-phy@lists.infradead.org;
	Mon, 05 May 2025 10:31:38 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-301918a4e1bso3110182a91.1
        for <linux-phy@lists.infradead.org>; Mon, 05 May 2025 03:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746441096; x=1747045896; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5XUpQWufJgs2kKIw18HiC9UXi+ywi6blxUGeIGBekrE=;
        b=envmnT/CpNGX2UL9vMA1A0XSX/1pKWkJWFiRIFDw73rmmlazSUM2YLeQT/PyWi2kcP
         l51P01GxxdcV4dNQsKLA49sqgCb7kZU/4Fqo0rCuupttybtmEHtc+plrpnKs+HWo4FeX
         fD0MYGkTC2tb/O6vdIVVUMSzY7kYjP6VDL95s9b+TcPaoGTrFrNM1CpOI2xu6rH7qvOX
         h1436Q4vXtTvO/wjyTNfjEhzyXy3fQIQKW7qAkKeo/5otv/w1uqYB+n5Ad3++NAkFEF1
         PsNZ/60yerzHqn1bd3zGQnz99OI+Eex3wrw36CHwx5nZ+hgfQSygI3syeVSPnqsLX3Li
         Umlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746441096; x=1747045896;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5XUpQWufJgs2kKIw18HiC9UXi+ywi6blxUGeIGBekrE=;
        b=E2ge4A8lsHt3Y5d5bpP/nSMuBDCstHHu7shIKgfnwwJu2OkKzRyUepYBNtW9coPhTC
         4TsNFOEKBr11n8A1mMbZ4CtuUIL3qwoH97fUNE1r2AFnKg7B8uOiZYeDp551hxX0xDyX
         KiNZMUFJymru21a41gspsU8ZzYEmc8Sp+/FFPAvrdJcBKNGGc+SWafcPAEQoru+NiDpF
         LBqMlcBCzn30nYvTDMy57DXuQpGF8cCXRoScwCXJsmaU8mKQOb5OxrGOAqsA+hxdUScj
         7gkz9VCN2WzVYcQXaJzzAoEwrYCmMdN3/5WBYIcab2yucLcs6d1XoJ2xxGLbTCGC4KRy
         z2Qg==
X-Forwarded-Encrypted: i=1; AJvYcCWh+ydS1EeDCzc4uKOuyqSzFzZ5Qd5A2z7va68wAnDh6mQNQAH7lCW/IPWKHm7POXZAx3eRpGnUmZA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzK+gmD3BfQNJeaNRKaPJauruYArPARBp6fMHVaXlh+AzhmRHib
	pYC9kp7mV3NfzZkk2PjlRCc7ZWSCUOlzHf1ylLuLLpjJmjC1wXsn+TdU2lJ1sz/c/4jiJdmT2C3
	nU8ts2Wl7iTIOaRd9nkhH2fGxSeI=
X-Gm-Gg: ASbGncuSe84pV4B3JXZB0fZjMwstesSBJewPDXDptfaJ66tYTXQIqVxvAlV/PsnFzqr
	Fnfy9tOh1WkWfeSAnLCcphFa7qaSBb+yQVVrEe+CEQ4+oO4sAbh/n9qtEa0xUX1dgH5cz+lmWHU
	3tcbgmi40PNPM+GnitMdxamg==
X-Google-Smtp-Source: AGHT+IEYlPo2xwoK9jTR3CithZ5yBxrXrdxirztT2/i6xi/HWoODXSwNegDQZi0mDmE9cngDoeuiIrPsTJdQSDWsPK0=
X-Received: by 2002:a17:90b:548c:b0:2ee:ee5e:42fb with SMTP id
 98e67ed59e1d1-30a6198d16cmr10340838a91.13.1746441096338; Mon, 05 May 2025
 03:31:36 -0700 (PDT)
MIME-Version: 1.0
References: <20250310-8ulp_hdmi-v1-1-a2f231e31987@atmark-techno.com>
 <v57uy3gddzcoeg3refyv7h6j3ypx23mobctybt27xzdyqy6bgb@atzdlqlytz3c>
 <Z861gsaGY6bGSisf@atmark-techno.com> <b2qwqacogz5vzfekhk5276owld6isgewu5a2iw3roag3lbtsgm@67vqf54c5tdh>
 <CAHCN7x+q-K067u6o=+E9ybREi_jopwhMTyMN=JKfCS4r6K=HWA@mail.gmail.com> <7wmuggeoslylq266u2bhunz5vcbbwaux4jv7glytxn6yer2nyr@7s3cfixtlau4>
In-Reply-To: <7wmuggeoslylq266u2bhunz5vcbbwaux4jv7glytxn6yer2nyr@7s3cfixtlau4>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 5 May 2025 05:31:24 -0500
X-Gm-Features: ATxdqUHfUWoPkX7ywp5TdexqQkSq6Rqa-aZ0I--IAftxx0IXeyn79h1aP8dyKxk
Message-ID: <CAHCN7xLcQPvZp_fJu-1gj4H47vb64k9dw1efqe_yQQ73LQwF6w@mail.gmail.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: return closest rate
 instead LUT
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Dominique Martinet <dominique.martinet@atmark-techno.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Frieder Schrempf <frieder.schrempf@kontron.de>, 
	Marco Felsch <m.felsch@pengutronix.de>, Lucas Stach <l.stach@pengutronix.de>, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Makoto Sato <makoto.sato@atmark-techno.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_033137_699008_D4937692 
X-CRM114-Status: GOOD (  20.90  )
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

T24gTW9uLCBNYXkgNSwgMjAyNSBhdCAyOjU14oCvQU0gVXdlIEtsZWluZS1Lw7ZuaWcKPHUua2xl
aW5lLWtvZW5pZ0BiYXlsaWJyZS5jb20+IHdyb3RlOgo+Cj4gSGVsbG8gQWRhbSwKPgo+IE9uIFN1
biwgTWF5IDA0LCAyMDI1IGF0IDAzOjQ0OjI2UE0gLTA1MDAsIEFkYW0gRm9yZCB3cm90ZToKPiA+
IE9uIE1vbiwgTWFyIDEwLCAyMDI1IGF0IDExOjEy4oCvQU0gVXdlIEtsZWluZS1Lw7ZuaWcKPiA+
IDx1LmtsZWluZS1rb2VuaWdAYmF5bGlicmUuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gSGVsbG8g
RG9taW5pcXVlLAo+ID4gPgo+ID4gPiBPbiBNb24sIE1hciAxMCwgMjAyNSBhdCAwNjo0ODo1MFBN
ICswOTAwLCBEb21pbmlxdWUgTWFydGluZXQgd3JvdGU6Cj4gPiA+ID4gWy4uLl0gYW5kIEknbSBz
dXJlIHRoZXJlIGFyZSBvdGhlciBpbXByb3ZlbWVudHMgdGhhdCBjb3VsZCBiZSBtYWRlIGF0Cj4g
PiA+ID4gdGhlIGVkZ2VzLgo+ID4gPgo+ID4gPiBPbmUgdGhpbmcgdGhhdCBpcnJpdGF0ZWQgbWUg
aXMgdGhlIGZ1bmN0aW9uIG5hbWVzLiBgcGh5X2Nsa19yb3VuZF9yYXRlYAo+ID4gPiBzb3VuZHMg
dG9vIGdlbmVyaWMuIGBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jbGtfcm91bmRfcmF0ZWAgaXMgbG9u
ZywgYnV0Cj4gPiA+IEknZCBzYXkgd291bGQgYmUgYSBiZXR0ZXIgbWF0Y2guCj4gPiBVd2UsCj4g
Pgo+ID4gSSBqdXN0IHNlbnQgYSBwYXRjaCB0byByZW5hbWUgcm91bmRfcmF0ZSBhbmQgc2V0IHJh
dGUgZnVuY3Rpb25zIHRvIGJlCj4gPiBtb3JlIGV4cGxpY2l0LiAgSSBhbHNvIHRyaWVkIHRvIHJl
ZmFjdG9yIHRoZSBkcml2ZXIgYXMgeW91IHJlcXVlc3RlZAo+ID4gYnkgc2ltcGxpZnlpbmcgdGhl
IGNvZGUsIGJ1dCBJIGRpZG4ndCBoYXZlIHRpbWUgdG8gaW50ZWdyYXRlIG15Cj4gPiBmcmFjdGlv
bmFsLWRpdmRlciBjb2RlIHlldC4KPiA+Cj4gPiBJIHdpbGwgYmUgdHJhdmVsaW5nIGZvciBtb3N0
IG9mIE1heSwgc28gSSB3b24ndCBiZSBhYmxlIHRvIHJldmlzaXQKPiA+IHRoaXMgYWdhaW4gdW50
aWwgYWZ0ZXIgTWF5IDI0LiAgSG9wZWZ1bGx5IHRoZSBwYXRjaGVzIEkgc3VibWl0dGVkIG1lZXQK
PiA+IHlvdXIgc2F0aXNmYWN0aW9uLAo+Cj4gSSBkb24ndCBmZWVsIGF1dGhvcml0YXRpdmUgZm9y
IHRoYXQgZHJpdmVyLCBzbyBwbGVhc2UgZG8gc3R1ZmYgdG8gcGxlYXNlCj4gdGhlIHBoeSBtYWlu
dGFpbmVycyBhbmQgY29uc2lkZXIgbXkgY29tbWVudHMgYXMgc3VnZ2VzdGlvbiBmcm9tIHRoZSBz
aWRlCj4gbGluZS4KCkkgdGhvdWdodCB5b3UgaGFkIGEgZ29vZCBpZGVhLCBhbmQgeW91ciBzdWdn
ZXN0aW9uIG1hZGUgc2Vuc2UuCkdldHRpbmcgdGhhdCBraW5kIG9mIGZlZWRiYWNrIG1ha2VzIG1l
IGEgYmV0dGVyIHByb2dyYW1tZXIuCgphZGFtCgo+Cj4gQmVzdCByZWdhcmRzCj4gVXdlCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
