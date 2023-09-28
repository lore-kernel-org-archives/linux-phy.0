Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 609D0CE7B05
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 07:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxJwpvlcnrVxCdoYF7o0++/Ks+FMaE/40TyI+F1otxM=; b=nwndYoN6LMyK1E
	YESK3QDJ+broyhHGE2sGYNS4CDqvEQLM+1IEXTIFbiuB7vV3BEknSxrjca3rXmZJfxyMMTGbTdD8c
	aijq1/HwU6o25XT/imYTc5mKP0PcWPPrVw8tuJG8QnGkX49qqAqs9uvWfAqX185JIMshv8xz4I7Jh
	/WA0Nf4H+juTVQAYQJRB6297gmXS6X5SX9KCCdECB7pHQtbHaL54o/VStJSriwQh4Vjq3Zxs5xiBO
	lM0XYt7SB75AjR3LZN50yi8mY7JnExINd28mBEUehq6OaYp/iG7UOCSEbuHb4Tzs5rLYP3hhamyf4
	BANrWnIksS8vfGWeEIVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qllt2-002ZX1-3C;
	Thu, 28 Sep 2023 07:56:41 +0000
Received: from mail-yb1-f171.google.com ([209.85.219.171])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qllsx-002ZVn-2S
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 07:56:39 +0000
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-d89491dab33so7702568276.0
        for <linux-phy@lists.infradead.org>; Thu, 28 Sep 2023 00:56:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695887790; x=1696492590;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=///6BZDQGo/3wRvsKomS4kW8ql3SPch+OsrNejAumIA=;
        b=MP1tBQ454VXL5twB0mDECv5sY/m22g1MNIb8hxl5vHtlYX8gHDxjEmmciuotTPhnZe
         Mq40CyduB1SXKDBij2OCCcGLxYuhLWWYYZ8EAEh5c7l00baASz8vgKT2Fwb+UtAkKYvv
         PM7S72SnGUofecK0I6B46eoBkH2kr36Vo5mdC+ybU8ZS56XLj+dvkI84Z2C3damIEXlI
         XD8BvKXtD83iRR5Gtumo/5TM3meDf2bxSalZG64UyOFp2S/1tQgs7cTu4ikAXcE51pgS
         7B9p6VUOpgLbrHtMclD1xAsG3XwtmJszmZs1o4qxkcLhZPtuSNbYxmQltxkHj3M4MjEk
         yfOA==
X-Gm-Message-State: AOJu0YxGTmQwcMIcycxRrtiANEAGI8HGzjsvTqj8pRGndkeqiAyiY8XW
	CplYiyHrzeuqBh4asNBlCC3GDfYvseXVqA==
X-Google-Smtp-Source: AGHT+IHU2ZQBTU6CouLfSvR/6igODtlDLEhGhRER7cHiStJn2NBYCCekFpFWQbxcNYY2Aa7E2rdhYQ==
X-Received: by 2002:a25:d204:0:b0:d81:69f9:61ea with SMTP id j4-20020a25d204000000b00d8169f961eamr433852ybg.46.1695887790617;
        Thu, 28 Sep 2023 00:56:30 -0700 (PDT)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com. [209.85.128.169])
        by smtp.gmail.com with ESMTPSA id a18-20020a258712000000b00d7b9fab78bfsm3832568ybl.7.2023.09.28.00.56.30
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Sep 2023 00:56:30 -0700 (PDT)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-59f6e6b206fso105937387b3.3
        for <linux-phy@lists.infradead.org>; Thu, 28 Sep 2023 00:56:30 -0700 (PDT)
X-Received: by 2002:a0d:ebd6:0:b0:592:9035:8356 with SMTP id
 u205-20020a0debd6000000b0059290358356mr542647ywe.26.1695887790180; Thu, 28
 Sep 2023 00:56:30 -0700 (PDT)
MIME-Version: 1.0
References: <202308161422.37GEMlZkA018197@rtits1.realtek.com.tw>
 <6c02765f89eb4455806b895a6e0cb763@realtek.com> <ZN3CQ1Y3yC9p/01Y@matsya>
In-Reply-To: <ZN3CQ1Y3yC9p/01Y@matsya>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 28 Sep 2023 09:56:16 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWor=u72E_ZfERyH3dUw3r0dsd43VsVTkx2w+DiJvyLGA@mail.gmail.com>
Message-ID: <CAMuHMdWor=u72E_ZfERyH3dUw3r0dsd43VsVTkx2w+DiJvyLGA@mail.gmail.com>
Subject: Re: [PATCH] phy: realtek: Realtek PHYs should depend on ARCH_REALTEK
To: Vinod Koul <vkoul@kernel.org>
Cc: =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_005635_796397_4C0D2FE9 
X-CRM114-Status: GOOD (  24.02  )
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

SGkgVmlub2QsCgpPbiBUaHUsIEF1ZyAxNywgMjAyMyBhdCA4OjQ24oCvQU0gVmlub2QgS291bCA8
dmtvdWxAa2VybmVsLm9yZz4gd3JvdGU6Cj4gT24gMTctMDgtMjMsIDAyOjA2LCBTdGFubGV5IENo
YW5nW+aYjOiCsuW+t10gd3JvdGU6Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yZWFs
dGVrL0tjb25maWcgYi9kcml2ZXJzL3BoeS9yZWFsdGVrL0tjb25maWcgaW5kZXgKPiA+ID4gNjUw
ZTIwZWQ2OWFmNDFkMi4uNzVhYzdlN2MzMWFlYzZmMiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVy
cy9waHkvcmVhbHRlay9LY29uZmlnCj4gPiA+ICsrKyBiL2RyaXZlcnMvcGh5L3JlYWx0ZWsvS2Nv
bmZpZwo+ID4gPiBAQCAtMiw2ICsyLDkgQEAKPiA+ID4gICMKPiA+ID4gICMgUGh5IGRyaXZlcnMg
Zm9yIFJlYWx0ZWsgcGxhdGZvcm1zCj4gPiA+ICAjCj4gPiA+ICsKPiA+ID4gK2lmIEFSQ0hfUkVB
TFRFSyB8fCBDT01QSUxFX1RFU1QKPiA+ID4gKwo+ID4gPiAgY29uZmlnIFBIWV9SVEtfUlREX1VT
QjJQSFkKPiA+ID4gICAgICAgICB0cmlzdGF0ZSAiUmVhbHRlayBSVEQgVVNCMiBQSFkgVHJhbnNj
ZWl2ZXIgRHJpdmVyIgo+ID4gPiAgICAgICAgIGRlcGVuZHMgb24gVVNCX1NVUFBPUlQKPiA+ID4g
QEAgLTI1LDMgKzI4LDUgQEAgY29uZmlnIFBIWV9SVEtfUlREX1VTQjNQSFkKPiA+ID4gICAgICAg
ICAgIFRoZSBESEMgKGRpZ2l0YWwgaG9tZSBjZW50ZXIpIFJURCBzZXJpZXMgU29DcyB1c2VkIHRo
ZSBTeW5vcHN5cwo+ID4gPiAgICAgICAgICAgRFdDMyBVU0IgSVAuIFRoaXMgZHJpdmVyIHdpbGwg
ZG8gdGhlIFBIWSBpbml0aWFsaXphdGlvbgo+ID4gPiAgICAgICAgICAgb2YgdGhlIHBhcmFtZXRl
cnMuCj4gPiA+ICsKPiA+ID4gK2VuZGlmICMgQVJDSF9SRUFMVEVLIHx8IENPTVBJTEVfVEVTVAo+
ID4KPiA+IFRoYW5rcyBmb3IgeW91ciBwYXRjaC4KPiA+IFdoeSBub3QgdXNlICJkZXBlbmRzIG9u
Ij8KPiA+IGRlcGVuZHMgb24gQVJDSF9NRURJQVRFSyB8fCBDT01QSUxFX1RFU1QKPgo+IEkgdGhp
bmsgdGhpcyBwYXRjaCBpcyBiZXR0ZXIsIHRoaXMgd2F5IGFsbCBmdXR1cmUgcnRlayBkcml2ZXJz
IHdpbGwgYmUKPiBmaXhlZCBhcyB3ZWxsLCBubyBuZWVkIHRvIGFkZCBmb3IgZWFjaCBkcml2ZXIK
CklzIHRoZXJlIGFueXRoaW5nIHN0aWxsIGJsb2NraW5nIHRoaXMgcGF0Y2g/CkRvIHlvdSB3YW50
IG1lIHRvIHJlc2VuZD8KVGhhbmtzIQoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAg
ICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMg
b2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFs
IGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFj
a2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9n
cmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
