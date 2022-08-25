Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 186A5ECAAA3
	for <linux-phy@archiver.kernel.org>; Thu, 25 Aug 2022 21:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbJJ/z79SkfY9mLkRShq1UaxA5EdLXiZkY86Zna1uK4=; b=v837pzBvSjI0T0
	O2E8U+8lwzY5JSkE9DVxha8HStWXfUw49zsRHk6kGgglmnQBsK06dcRCZTq/esJ0OcyTfyNGEq8M2
	qxvDAWZMcZCaQlKUtHGMo1Cze8QxPoUdtBrz6ApAXPxm0CbxK39hU+aGJC64MNE05ejk7z0ELcuXk
	f+1uyvoEUjG3BEwnTNCNSzmn7Oj9J3J8XuB9mwhEod2xvvVFAH60KE2fttcyqi3IOcBxrH26tCrow
	ikDUumUtNA9bOr+ZxGF+7cT0s/S6a0MnQ+3BjqMkYCUebzctgHnKD3fc2VXILNbzDWUBMk/ozjFuj
	8xxQhOPNyY5lL5UX+0VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRKUg-003U4h-Ux; Thu, 25 Aug 2022 21:34:31 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRKUe-003U3U-0g; Thu, 25 Aug 2022 21:34:29 +0000
Received: by mail-wr1-x430.google.com with SMTP id t12so853093wrm.8;
        Thu, 25 Aug 2022 14:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=vkI7j/ybscYbFRd8z0ozi0Hl64XiOOmBLsjf3EBHwN0=;
        b=AzUrQhd7gjCn9B5gg5Fzzp909mgOT7in/GTCOa43Oq8F2ADQF2/cUTj2DciK1myF+2
         OFfdLxqbfVj0DgOa+iPD/g3Qjrd3oFPzrqMb0dsUBvI1YxqMikW7DV6KflDzIoLGxaF2
         LQmDWSdkeTRk7uIu+MEhVLz2MlMwEjTuxGs3QPJTaDK5EkTZYFhxJ2fPERhilErN5sUT
         iatRgY63/M5emjQI8Y0usejKpU+NYYDmxLYouEd27eB3M/mMLknzvGn83AE+lFvp3P27
         f36/AQ3gWDsBB9gCbPE/9jWu6W4oLhZODI2nJPh+fdc332B79F9aooHZY+TFu+sL85nf
         dpTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=vkI7j/ybscYbFRd8z0ozi0Hl64XiOOmBLsjf3EBHwN0=;
        b=iwyj655Zbe8MbucXuclE2uVAXFJc+7J2UmaBBWGvMR+4jeFhZLt3eHfb/QhBB/wC/Z
         aFDToxr1ng/Gfwmug9bsPEm/MqgRbTPCfgC6YkmCR31UaIvWa50X0l64XQJUAbhedilm
         l3/sbxgH9ObxsymcsD1KkqepdkB69Vv6+VyEQKG0rVsriyEr3V/Z64Z+sT2qri/kWnqb
         C9UrT2hmvyDVTtAf9ZJAieLxE/lBT5QiFA/H+JDr6ecSBCF03KaMLA5EijZpKlAS3Y6J
         dxQp3JkVbmAxeNYlLuye6WHsOlvm6bXpN/LC7PUDlJpx8hfoWa/9vImE9xtqQLJpylqP
         NR0A==
X-Gm-Message-State: ACgBeo0sRYCUqPWJbPI3RLJ9X2lNir8qQ3pYPl8d/mRSwdPEaBJJvpR1
	ib2xXhIqCVFhwtZW15+WMOw=
X-Google-Smtp-Source: AA6agR5tcJzT/e7p2SOGm8CTPB07sBJctMX85e0eAMx5SoKKJFF38Q2F4xb6D3PqMa00NCibDLvLfg==
X-Received: by 2002:adf:f001:0:b0:225:3a99:3938 with SMTP id j1-20020adff001000000b002253a993938mr3199074wro.111.1661463266826;
        Thu, 25 Aug 2022 14:34:26 -0700 (PDT)
Received: from kista.localnet (82-149-1-172.dynamic.telemach.net. [82.149.1.172])
        by smtp.gmail.com with ESMTPSA id b3-20020a5d40c3000000b0022533c4fa48sm258839wrq.55.2022.08.25.14.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 14:34:26 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-kernel@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] phy: move from strlcpy with unused retval to strscpy
Date: Thu, 25 Aug 2022 23:34:25 +0200
Message-ID: <3506634.R56niFO833@kista>
In-Reply-To: <20220818210056.7205-1-wsa+renesas@sang-engineering.com>
References: <20220818210056.7205-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_143428_079340_C8AE8EAD 
X-CRM114-Status: GOOD (  13.90  )
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

RG5lIMSNZXRydGVrLCAxOC4gYXZndXN0IDIwMjIgb2IgMjM6MDA6NTYgQ0VTVCBqZSBXb2xmcmFt
IFNhbmcgbmFwaXNhbChhKToKPiBGb2xsb3cgdGhlIGFkdmljZSBvZiB0aGUgYmVsb3cgbGluayBh
bmQgcHJlZmVyICdzdHJzY3B5JyBpbiB0aGlzCj4gc3Vic3lzdGVtLiBDb252ZXJzaW9uIGlzIDE6
MSBiZWNhdXNlIHRoZSByZXR1cm4gdmFsdWUgaXMgbm90IHVzZWQuCj4gR2VuZXJhdGVkIGJ5IGEg
Y29jY2luZWxsZSBzY3JpcHQuCj4gCj4gTGluazoKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9y
L0NBSGstPXdnZlJuWHowVzNEMzdkMDFxM0pGa3JfaV91VEw9VjZBNkcxb1VaY3BybWsKPiBud0Bt
YWlsLmdtYWlsLmNvbS8gU2lnbmVkLW9mZi1ieTogV29sZnJhbSBTYW5nCj4gPHdzYStyZW5lc2Fz
QHNhbmctZW5naW5lZXJpbmcuY29tPgoKQWNrZWQtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWou
c2tyYWJlY0BnbWFpbC5jb20+CgpCZXN0IHJlZ2FyZHMsCkplcm5lagoKPiAtLS0KPiAgZHJpdmVy
cy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2IuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMKPiBiL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9w
aHktc3VuNGktdXNiLmMgaW5kZXggZDVmM2I0MmViOGNlLi4zYTM4MzFmNjA1OWEKPiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5jCj4gKysrIGIvZHJp
dmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2IuYwo+IEBAIC03NjgsNyArNzY4LDcgQEAg
c3RhdGljIGludCBzdW40aV91c2JfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UKPiAq
cGRldikgaWYgKGRhdGEtPmNmZy0+ZGVkaWNhdGVkX2Nsb2NrcykKPiAgCQkJc25wcmludGYobmFt
ZSwgc2l6ZW9mKG5hbWUpLCAidXNiJWRfcGh5IiwgCmkpOwo+ICAJCWVsc2UKPiAtCQkJc3RybGNw
eShuYW1lLCAidXNiX3BoeSIsIHNpemVvZihuYW1lKSk7Cj4gKwkJCXN0cnNjcHkobmFtZSwgInVz
Yl9waHkiLCBzaXplb2YobmFtZSkpOwo+IAo+ICAJCXBoeS0+Y2xrID0gZGV2bV9jbGtfZ2V0KGRl
diwgbmFtZSk7Cj4gIAkJaWYgKElTX0VSUihwaHktPmNsaykpIHsKPiAtLQo+IDIuMzUuMQoKCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
