Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 708EFC678D4
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 13:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5jNoF2OaujAicOIwSiTkMC7qhuNAx4GmUOiQxMZHCk=; b=lMAg/vouotJnCm
	ixISjdbxE1i9LSdGlly/TmJOkNa/LAgx8FTvl52k5q2InEvBlC58KfCNI5tpF4jG74O02cJ6WqInl
	noCKKWed1KELOu2HMRnvnfM0pV6FMmscnCBf7/fjr1yKjYOAQHRFqy7bqe2db/4PuwytvQjusIoJL
	M0sDov7QksphT5SBd7l3VUrENBJdMjbtrdFwBwZWIeTwwjTMRVdB4P8IBHnpHYNEhsIjA4cBxsd+I
	S0arZsFGznXfci+6wygiFTPMOsG6cjOQOSr2zLIbL5QdgJJp1cVryBs9PYkZZvfxSCOa5Z1Tqn5Hp
	vczVAzddiKytmYuejNLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZXcy-000UTW-KM; Tue, 07 Mar 2023 13:45:16 +0000
Received: from mail-qt1-f169.google.com ([209.85.160.169])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZXTq-000Qye-96
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 13:35:52 +0000
Received: by mail-qt1-f169.google.com with SMTP id d7so14198012qtr.12
        for <linux-phy@lists.infradead.org>; Tue, 07 Mar 2023 05:35:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678196148;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=urULbQUOPfOIWbeWwu/UVMWyxPeVZ3I2kroq681pdYA=;
        b=Pag8ctP8G5s7yYYuh47Su/exRuOvVIyluOwHML/OcxBPvk1/JOWmTzjn1UHMcbTn65
         MEZXfoqRiqPuUxzFl+HkI2zuuJSOJ350EQogfFAfLy21R0sIIJdGehFfJG28cRi5tM4y
         cgL2OzGBBxqTLZaME5Fz+UZpXyw23kMGfYRyp2KCLYDDsYLUouyEggIiiG+DdUXCmdMo
         2PS1FYSwzer6GkdBqLnFcq0EhZtjOG4hSOgLxSyeC1PFrG2QTc+XTE67rwGtQaVNzSqg
         9R7zElwEZfavPRrz+idr68lU2HejelhIkUWx04+9eRujccArkCE46Z5521FxkCWB2m/l
         YW6A==
X-Gm-Message-State: AO0yUKXNjmLc7pbf+lPi+DTQMnmnSdv31zbxrC+KiDGEOY5+rqMXLkFp
	tTwK5lQroSSFLF40z+JOCVBSYQFpTos/1Q==
X-Google-Smtp-Source: AK7set+o4Qg35Lm4DhYofRlJmgUJ049hKf2aHneWIs3yf4OQp/7+a7lfJEMSegWRBvSMu/wPCQdf4g==
X-Received: by 2002:a05:622a:1213:b0:3bf:a7c1:46a9 with SMTP id y19-20020a05622a121300b003bfa7c146a9mr21783209qtx.40.1678196148524;
        Tue, 07 Mar 2023 05:35:48 -0800 (PST)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com. [209.85.128.171])
        by smtp.gmail.com with ESMTPSA id o5-20020a374105000000b007429ee9482dsm9260499qka.134.2023.03.07.05.35.47
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 05:35:48 -0800 (PST)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-536b7ffdd34so244882317b3.6
        for <linux-phy@lists.infradead.org>; Tue, 07 Mar 2023 05:35:47 -0800 (PST)
X-Received: by 2002:a81:ad66:0:b0:52e:cacb:d7c4 with SMTP id
 l38-20020a81ad66000000b0052ecacbd7c4mr9161804ywk.5.1678196147478; Tue, 07 Mar
 2023 05:35:47 -0800 (PST)
MIME-Version: 1.0
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de> <20230307115900.2293120-17-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20230307115900.2293120-17-u.kleine-koenig@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 7 Mar 2023 14:35:36 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWhawtm1JGQczs4CTW7SUSVuSRwk9bqioPuX-3SgfG22A@mail.gmail.com>
Message-ID: <CAMuHMdWhawtm1JGQczs4CTW7SUSVuSRwk9bqioPuX-3SgfG22A@mail.gmail.com>
Subject: Re: [PATCH 16/31] phy: renesas: phy-rcar-gen3-usb2: Convert to
 platform remove callback returning void
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-renesas-soc@vger.kernel.org, 
	linux-phy@lists.infradead.org, kernel@pengutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_053550_396001_42606854 
X-CRM114-Status: GOOD (  17.85  )
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

T24gVHVlLCBNYXIgNywgMjAyMyBhdCAxOjEx4oCvUE0gVXdlIEtsZWluZS1Lw7ZuaWcKPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gVGhlIC5yZW1vdmUoKSBjYWxsYmFj
ayBmb3IgYSBwbGF0Zm9ybSBkcml2ZXIgcmV0dXJucyBhbiBpbnQgd2hpY2ggbWFrZXMKPiBtYW55
IGRyaXZlciBhdXRob3JzIHdyb25nbHkgYXNzdW1lIGl0J3MgcG9zc2libGUgdG8gZG8gZXJyb3Ig
aGFuZGxpbmcgYnkKPiByZXR1cm5pbmcgYW4gZXJyb3IgY29kZS4gSG93ZXZlciB0aGUgdmFsdWUg
cmV0dXJuZWQgaXMgKG1vc3RseSkgaWdub3JlZAo+IGFuZCB0aGlzIHR5cGljYWxseSByZXN1bHRz
IGluIHJlc291cmNlIGxlYWtzLiBUbyBpbXByb3ZlIGhlcmUgdGhlcmUgaXMgYQo+IHF1ZXN0IHRv
IG1ha2UgdGhlIHJlbW92ZSBjYWxsYmFjayByZXR1cm4gdm9pZC4gSW4gdGhlIGZpcnN0IHN0ZXAg
b2YgdGhpcwo+IHF1ZXN0IGFsbCBkcml2ZXJzIGFyZSBjb252ZXJ0ZWQgdG8gLnJlbW92ZV9uZXco
KSB3aGljaCBhbHJlYWR5IHJldHVybnMKPiB2b2lkLgo+Cj4gVHJpdmlhbGx5IGNvbnZlcnQgdGhp
cyBkcml2ZXIgZnJvbSBhbHdheXMgcmV0dXJuaW5nIHplcm8gaW4gdGhlIHJlbW92ZQo+IGNhbGxi
YWNrIHRvIHRoZSB2b2lkIHJldHVybmluZyB2YXJpYW50Lgo+Cj4gU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KClJldmlld2Vk
LWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgoKR3J7b2V0
amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5
dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRA
bGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwg
cGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBq
b3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0
LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
