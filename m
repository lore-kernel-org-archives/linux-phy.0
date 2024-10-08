Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28346CED278
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 14:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZG85h622Ba9nhoBKv9JqCFVCSs805RyQ+LXJz4TuB4=; b=WauqEpQVkY7Lfh
	YYRmdeq7o1gePPPq5v8jbtEva5NBhpfjwndOX2xzdQpUy47U2hx1x1bgc7Pgq8GKVMf3CNNjUH984
	nKK+A7d+CggzTS92ce/bHDHGvmrDsLf6pv/lbR9TpLjgE0MiJbmgkVINrUDu6unVU4T3fabdEp7dk
	1jeHcok5EBWBNBDUVgBVWFxd6Gxp5Sg79NdB3m83Ln0rnwCGLerSIs3icHJ5HFwv17rprdLfGuA8x
	6I/kzfa+YKJ003IIAvt040ABHj78Zwfvrut+GdXi8ZBYPDPA+vHq/ZfFBHpm3QSldka42i7wC/oGR
	LDPgYsBzX9WNzhaYSz6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syBb2-00000006G7u-30Il;
	Tue, 08 Oct 2024 14:53:56 +0000
Received: from mail-yw1-f178.google.com ([209.85.128.178])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syBUP-00000006ET5-33Ex;
	Tue, 08 Oct 2024 14:47:07 +0000
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6e30ee6788dso9854687b3.2;
        Tue, 08 Oct 2024 07:47:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728398823; x=1729003623;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T5tpkiwx88FstrMnILDOBEQgP7OPo4qJyWyTH6XGvRU=;
        b=a67g7+zeAHNPngggstuRQgC8iW9hnN/FLaebBvPkfroGfQokmpm5kCwleXv7rt5Vea
         UdbimHpAve28z062hx+AiddSPAdC0nTGpwxJ5CTT/jQtrbg1gqMNI/GNvN4JJN7ujuQY
         z9/1PRfh4fp5KEgHA8+W/qqnCAodKTS7dbfreFhNoedE5jha+iIAka0plu/3OPugp6ym
         7bPJk8rjXWGKg46p70GHDQBrEcfh5h4YXYRL9OcQ81ogaE/bUvsthfMrp6bR2JWTC3Pv
         rJ8IF1og2/wI0gslVQ2/joDIOmBA4vzIn3AP7WRy31OcbRfWiADq5eIqs0igKHdaE81R
         EVlg==
X-Forwarded-Encrypted: i=1; AJvYcCW0NQgYNd9jFvjbgqzlnA+sxKo97IL2Pxr8xQ4b6YiAVq8CxY3z7l1mjVLfKSuzr0QtlujrhBI+SbhqZRq8MrV8@lists.infradead.org, AJvYcCX1HOqBlSDOqXcrM1rcRtk8U/x88fLHkwmzkPstsms49dRHsUGQ6VcmVizqd5T27apm/Mdt9kDhmduT@lists.infradead.org
X-Gm-Message-State: AOJu0YzAQO12aUyCd+m6nrxh7R6I5csIO1lBgeHnW1msGTzAhvjMF5Zl
	KEwIDF7r9KP0CfxjUezWbfdGYUwI9m5As8MENp8QgW+BQkW29yB0x/OU2KMb
X-Google-Smtp-Source: AGHT+IEpiABZNoYclEGZpv5M2SK8HUlqr1PdUPt1u2dkT+8TUFqVDNHJX+jWo/nR/lQH8EyNJQBGQw==
X-Received: by 2002:a05:690c:708a:b0:6ac:8cfc:1cbc with SMTP id 00721157ae682-6e2c7339ce1mr109704437b3.45.1728398823003;
        Tue, 08 Oct 2024 07:47:03 -0700 (PDT)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com. [209.85.219.175])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6e2d93e2b76sm14283177b3.109.2024.10.08.07.47.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 07:47:01 -0700 (PDT)
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e260754066cso5295355276.1;
        Tue, 08 Oct 2024 07:47:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV/d+v6ljFvdszytxKbCP/ETXgZ8TdF3kavc34+DzkkpSHtTjnDvY+z8Xmre7mcHeitDdyqw1K7sDZO@lists.infradead.org, AJvYcCVP31tGGUTDlPlynXOVWYExCz0+9XY7d5gYEMazzH9fPT9HwQUfCMZe6UvQZCB+0QxkXCeKb6hHlEOaKFiJn2kl@lists.infradead.org
X-Received: by 2002:a05:690c:fd1:b0:6e2:f32:bd2c with SMTP id
 00721157ae682-6e2c72f6ac7mr126767947b3.29.1728398821134; Tue, 08 Oct 2024
 07:47:01 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-8-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-8-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 8 Oct 2024 16:46:49 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWcCGMf0At7=DN_PydZyriiOcpR=YQAqw-xsARSVF6Wyg@mail.gmail.com>
Message-ID: <CAMuHMdWcCGMf0At7=DN_PydZyriiOcpR=YQAqw-xsARSVF6Wyg@mail.gmail.com>
Subject: Re: [PATCH 07/16] reset: rzg2l-usbphy-ctrl: Get reset control array
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org, 
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com, 
	ulf.hansson@linaro.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_074705_786562_178C22D2 
X-CRM114-Status: GOOD (  20.80  )
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

T24gVGh1LCBBdWcgMjIsIDIwMjQgYXQgNToyOOKAr1BNIENsYXVkaXUgPGNsYXVkaXUuYmV6bmVh
QHR1eG9uLmRldj4gd3JvdGU6Cj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVh
LnVqQGJwLnJlbmVzYXMuY29tPgo+Cj4gQmVmb3JlIGFjY2Vzc2luZyB0aGUgVVNCIGFyZWEgb2Yg
dGhlIFJaL0czUyBTb0MgdGhlIFBXUlJEWSBiaXQgb2YgdGhlCj4gU1lTX1VTQl9QV1JSRFkgcmVn
aXN0ZXIgbmVlZCB0byBiZSBjbGVhcmVkLiBXaGVuIFVTQiBhcmVhIGlzIG5vdCB1c2VkIHRoZQo+
IFBXUlJEWSBiaXQgb2YgdGhlIFNZU19VU0JfUFdSUkRZIHJlZ2lzdGVyIG5lZWQgdG8gYmUgc2V0
LiBUaGlzIHJlZ2lzdGVyIGlzCj4gaW4gdGhlIFNZU0MgY29udHJvbGxlciBhZGRyZXNzIHNwYWNl
IGFuZCB0aGUgYXNzZXJ0L2RlLWFzc2VydCBvZiB0aGUKPiBzaWduYWwgaGFuZGxlZCBieSBTWVND
X1VTQl9QV1JSRFkgd2FzIGltcGxlbWVudGVkIGFzIGEgcmVzZXQgc2lnbmFsLgo+Cj4gVGhlIFVT
QiBtb2R1bGVzIGF2YWlsYWJsZSBvbiB0aGUgUlovRzNTIFNvQyB0aGF0IG5lZWQgdGhpcyBiaXQg
c2V0IGFyZToKPiAtIFVTQiBjaDAgKHN1cHBvcnRpbmcgaG9zdCBhbmQgcGVyaXBoZXJhbCBtb2Rl
KQo+IC0gVVNCIGNoMiAoc3VwcG9ydGluZyBob3N0IG1vZGUpCj4gLSBVU0JQSFkgY29udHJvbAo+
Cj4gQXMgdGhlIFVTQlBIWSBjb250cm9sIGlzIHRoZSByb290IGRldmljZSBmb3IgYWxsIHRoZSBv
dGhlciBVU0IgY2hhbm5lbHMKPiAoVVNCIGNoMCwgVVNCIGNoMSkgYWRkIHN1cHBvcnQgdG8gc2V0
IHRoZSBQV1JSRFkgZm9yIHRoZSBVU0IgYXJlYSB3aGVuCj4gaW5pdGlhbGl6aW5nIHRoZSBVU0JQ
SFkgY29udHJvbC4gQXMgdGhpcyBpcyBkb25lIHRob3VnaCByZXNldCBzaWduYWxzCj4gZ2V0IHRo
ZSByZXNldCBhcnJheSBpbiB0aGUgVVNCUEhZIGNvbnRyb2wgZHJpdmVyLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhLnVqQGJwLnJlbmVzYXMuY29tPgoK
UmV2aWV3ZWQtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+
CgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLSAK
R2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAt
LSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRl
Y2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxr
aW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBs
aWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFs
ZHMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
