Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AF09C4828F
	for <linux-phy@archiver.kernel.org>; Thu,  8 Feb 2024 22:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2+fPG8bFj7XXEHHmGMGZDsyv3ABU95gkivFn/blEtM=; b=xz8D/Yhh4uD82O
	bs4/4nk/fqmCibo8h6uKdH3M3O/YIWIqbV+zYerB1NvfVPmQCx7E2hncTrdV+Xsmc5IBAmZAtu+2s
	5DKTDmIjkdu+YAfJq6/c8vhwR6LBkngKi3WeGp8+BZwWGvDIfE5f8XvWHz4r9oORmH0YuSeXiCYGs
	1CHx0+vIj7umvQDl1wUKOKyVpBaFYo1CDiS8VyPssv+TEqGjspP1kA49HicpPxGp5JzSu/mdgQyDw
	IlyoGhMsEWTWFtkyvnPRgqlV1uS+fF52TZ2b5Hf+AuNl6tRUiYBUd3HK3XhLumL+XlYNLzRgB7vjD
	+S6v670BH0WKwHEEfVCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYCvt-0000000FG4q-3V3m;
	Thu, 08 Feb 2024 22:31:49 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYBxV-0000000Ezps-2ynf
	for linux-phy@lists.infradead.org;
	Thu, 08 Feb 2024 21:29:27 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-604b27e3bd2so2707577b3.1
        for <linux-phy@lists.infradead.org>; Thu, 08 Feb 2024 13:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707427763; x=1708032563; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k4Qjd4VTrme/q3N5w4mBZNedSc5IAlaFUDmOanXt4fs=;
        b=aNdQGX1dcHMZFALAlIwWe6KWY00qi8GXG/4T1GVVmV6DNZk16AjLiyHq7NK+0L3Oqm
         S33mRySlAcIV0sELLTrx17GxHQmAQpFEWmeSwS56MKIfkD93qMd+PQKyPRkMvkZjxcbe
         gfzjq5Semsq8XRN7tcD4nOJrV3vnLTHQnw0ggjL6OfHiMHmfpVRFvw6jieaZRTZTilt7
         +oLkk6sbgF3Xd9DAx8pGwf7xQT7LO0ifO19wy7Q+9NeMN+ZrtR10tznRjWbd9xIaHC3e
         Y3wEca3efI9+CTKw5TCnnZxHNKgHgCtkTKb+EuaFytm3+3HkMALNppHEddFYyWJKDm5x
         zwPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707427763; x=1708032563;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k4Qjd4VTrme/q3N5w4mBZNedSc5IAlaFUDmOanXt4fs=;
        b=oO/VWs61PoPRUUdtXXLuH22ycGB6lhCYnH18j9aacKzEQCBSju8Q9xSdYFhmDKSq8w
         RdXUmDFqni3xOfcHyztoJI4MdPB+UpqgFo7OyPi6CIJG4oY0Y7LXCTyiELVutWlhtVhJ
         au8OfomuXislW4fBf3RlyTKy40SFUQYVpMmGYwxzYXir3XxUKTA/+nFnc+rFDRpvijT7
         X8JpWzF46TTNQJY8vFgguGQXaaD0lc1XFUFjKoOadkUnjT9yk/mhgOlnOuUot4AzobHT
         jea/VSr7dyV0enlkGOaFbqMY58ojnIaogU962RM7NRFgKrHPqB6/Ds7LCXCxsXT3Kw/S
         dpgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQcK8MLKaomBTdZWQxg1JKvWqdi+vXPCZkFBYgb/B6wGvi+1Awep+AFXDskzWqDYauwcQI0UH4v7RqMLBSMyXHlK9Xxpa/EL0KHWo18Q==
X-Gm-Message-State: AOJu0YyqYe3KsISrR2/EC1uGDXTnfXwH0mnZfAJ0rpSHhDxNSU9i06v+
	HwGOIpzgA57rFSJ2ml8HU6tU1FBT0dZwnB/gZCimDVuchS2KbBwql3wUXa/DPgxBc32rws3awzl
	wGWt2amNSFSM55QYMusik3C3Tm0RKzoAEdslWdA==
X-Google-Smtp-Source: AGHT+IFXP22UNl6HGodNdyxCVyIl57xwSa1qrcuFLa7AiuRdaK1CrwevQo6eVvRY3I8f1f+LXDY+AXrRH8sbZkURbwY=
X-Received: by 2002:a0d:cc47:0:b0:604:4586:4039 with SMTP id
 o68-20020a0dcc47000000b0060445864039mr2737694ywd.13.1707427763661; Thu, 08
 Feb 2024 13:29:23 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-1-84e55da52400@bootlin.com> <20240116074333.GO5185@atomide.com>
 <31c42f08-7d5e-4b91-87e9-bfc7e2cfdefe@bootlin.com> <CACRpkdYUVbFoDq91uLbUy8twtG_AiD+CY2+nqzCyHV7ZyBC3sA@mail.gmail.com>
 <95032042-787e-494a-bad9-81b62653de52@bootlin.com>
In-Reply-To: <95032042-787e-494a-bad9-81b62653de52@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 8 Feb 2024 22:29:11 +0100
Message-ID: <CACRpkdY2wiw1zH8FsEv7S1FW044PBSXpLPqanF5yyH1R4oteEA@mail.gmail.com>
Subject: Re: [PATCH 01/14] gpio: pca953x: move suspend/resume to suspend_noirq/resume_noirq
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Tony Lindgren <tony@atomide.com>, Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
	Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, 
	gregory.clement@bootlin.com, theo.lebrun@bootlin.com, 
	thomas.petazzoni@bootlin.com, u-kumar1@ti.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240208_132925_791044_C4FAB5A1 
X-CRM114-Status: GOOD (  12.00  )
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

T24gVGh1LCBGZWIgOCwgMjAyNCBhdCA1OjE54oCvUE0gVGhvbWFzIFJpY2hhcmQKPHRob21hcy5y
aWNoYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPiBPbiAxLzI4LzI0IDAxOjEyLCBMaW51cyBXYWxs
ZWlqIHdyb3RlOgoKPiA+IEkgZ3Vlc3MgeW91IGNvdWxkIGRlZmluZSBib3RoIHBjYTk1M3hfc3Vz
cGVuZCgpIGFuZAo+ID4gcGNhOTUzeF9zdXNwZW5kX25vaXJxKCkgYW5kIHNlbGVjdGl2ZWx5IGJh
aWwgb3V0IG9uIG9uZQo+ID4gcGF0aCBvbiBzb21lIHN5c3RlbXM/Cj4KPiBZZXMuCj4KPiBXaGF0
IGRvIHlvdSB0aGluayBpZiBJIHVzZSBhIHByb3BlcnR5IGxpa2UgZm9yIGV4YW1wbGUgInRpLHBt
LW5vaXJxIiB0bwo+IHNlbGVjdCB0aGUgcmlnaHQgcGF0aCA/Cj4gSXMgYSBwcm9wZXJ0eSByZWxl
dmFudCBmb3IgdGhpcyB1c2UgY2FzZSA/CgpUaGF0J3MgYSBMaW51eC1zcGVjaWZpYyBwcm9wZXJ0
eSBhbmQgdGhhdCdzIHVzZWxlc3MgZm9yIG90aGVyIG9wZXJhdGluZwpzeXN0ZW1zIGFuZCBub3Qg
bm9ybWFsbHkgYWxsb3dlZC4gUE0gbm9pcnEgaXMganVzdCBzb21lIExpbnV4IHRoaW5nLgoKKkZJ
UlNUKiB3ZSBzaG91bGQgY2hlY2sgaWYgcHV0dGluZyB0aGUgY2FsbGJhY2tzIHRvIG5vaXJxIGlz
IGZpbmUgd2l0aApvdGhlciBzeXN0ZW1zIHRvbywgYW5kIEkgZG9uJ3Qgc2VlIHdoeSBub3QuIFBl
cmhhcHMgd2UgbmVlZCB0byBldmVuCm1lcmdlIGl0IGlmIHdlIGRvbid0IGdldCBhbnkgdGVzdCBy
ZXN1bHRzLgoKSWYgaXQgZG9lc24ndCB3b3JrIHdlIGNhbiB0aGluayBvZiBvdGhlciBvcHRpb25z
LgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
