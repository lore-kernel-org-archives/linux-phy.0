Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9167ECEF172
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 14:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DC1QOZT763M8geIPMKyp4xkGfSpshhvS+B+P974cemU=; b=Cg/HQPwyrb4adV
	UHzmhaCSXgsELrkJ9Wp8LF6fvsRjBBewOmIkQ8qyveQGHDDT1xLEq9lo45VG8n+UA3kZRglRsBJ+G
	cSo401joSiJbKZ92meCwj80Sv2SSu6b3p+jtU5BpCnBPmYtQq87cLHblR2/TDzqXM+apPgaYNCkqQ
	kUDvq8ScQOnn2u/I2YRIdlg5pRUAzemQRvR1X1tlZTSDhm6OhBjBAxVUyY17FpqUOnBefwNxeBYxw
	aLTzpAjp+JHHsPBLJU/GnPVQH6+EucVX6+kxgEto4M4QzKdsU6tND7u82MkgnsBb32liQnPszgtGd
	MejUj+hCp+FbWkfui6+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syBcN-00000006GQ5-0mAe;
	Tue, 08 Oct 2024 14:55:19 +0000
Received: from mail-yw1-f179.google.com ([209.85.128.179])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syBVM-00000006Ehj-2FIp;
	Tue, 08 Oct 2024 14:48:05 +0000
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6e20a8141c7so48096597b3.0;
        Tue, 08 Oct 2024 07:48:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728398881; x=1729003681;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=13A9KYVntAG0o1ZVX0Og5yF6VCHjDAzxxd3dckxxILc=;
        b=srkhOTcVHjko95JSoXuxP+dh0JHUwRWEWGjYcfp6tEqXFjZsj6Pp+pFhWh0BPvaQxK
         gJzyrGPxeNoJ11+6EkK797Fl0YMlR5PZa2HybwCZl4DZseC/4Y71evslL8+5V38hOEdm
         UX7gWHC8oChIDcTMw75VZcvzb9PQU4bgDzQQ8ar5ZcQypux5nFbKxnfYeAIsWaqAhEY6
         XvnwHUvUT+ZIG73FFvwbsFhX/Ch94lotVa3T238xIjj6X9n+aNozocwiSp+1j1bwSXLT
         xGoXlI/VWGTDHXRJNza/2IcjCvDr3L7ZFojIFxV5LQZUbFw5bVyGH98bbhfOrCDrXQR3
         NpGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrCPw6+Dxi1Fuznc8zyypFAW+cPFBQLT4l+b1RRnvY1undTNAr93ZN6h7cgRKd5AxJCrUyFOZlaXIk@lists.infradead.org, AJvYcCWwRF8D8jU6JCABt3nbDNq24WMrxGioaRTurqaKUDC85mHck5ZDRvoMh2AExJ2s9udyAiGctNrnmn+CNJfMwiXb@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8i9ZRAqcpM2Gp9uyMcoIHEG28hQxeh98VLWwfShfAIxI3hP9Z
	Aqs+cWLjbYfZUzAxf8TjQleFpROOQooAz0M3VGEymSCnnPii/vIiEyTwDEJO
X-Google-Smtp-Source: AGHT+IGzmzl8dTFM0a3ZLuof8vcnJxmx+As/M23pzISYa+mlxpV5DvsDZvy5lqDDTDGUkvBkuMs0fw==
X-Received: by 2002:a05:690c:7487:b0:6e3:10b7:b14b with SMTP id 00721157ae682-6e310b7b2e9mr22092357b3.37.1728398881318;
        Tue, 08 Oct 2024 07:48:01 -0700 (PDT)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com. [209.85.128.182])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6e2d9280149sm14591127b3.48.2024.10.08.07.47.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 07:47:59 -0700 (PDT)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-6e30ee6788dso9863847b3.2;
        Tue, 08 Oct 2024 07:47:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX+dEeh4/JQJq+UXsVbdUqYaV2FoQ02fyfEvzjgc+buS2PRwfc3KrlGkO0rqffaVG9bUrZGHnZ31Ij0@lists.infradead.org, AJvYcCX38XSf4gNMf6urOtN+N0KT6WbNwPPkx4SvDRJ60oachgAZWIwcD6+p4xybR//Jc1W6yoyrHybXRgzZAhJN9B2X@lists.infradead.org
X-Received: by 2002:a05:690c:4c8c:b0:6e3:18be:48f7 with SMTP id
 00721157ae682-6e318be4f52mr11579967b3.44.1728398878489; Tue, 08 Oct 2024
 07:47:58 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-9-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-9-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 8 Oct 2024 16:47:46 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXD86=6_tD2dQAz5i0TUcCgF5w69h9JFQqoEMXPkM77yA@mail.gmail.com>
Message-ID: <CAMuHMdXD86=6_tD2dQAz5i0TUcCgF5w69h9JFQqoEMXPkM77yA@mail.gmail.com>
Subject: Re: [PATCH 08/16] reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S
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
X-CRM114-CacheID: sfid-20241008_074804_594756_D031D927 
X-CRM114-Status: GOOD (  16.21  )
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
LnVqQGJwLnJlbmVzYXMuY29tPgo+Cj4gQWRkIHN1cHBvcnQgZm9yIFJaL0czUyBTb0MuIEl0IG5l
ZWRzIGl0cyBvd24gY29tcGF0aWJsZSBhcyBpdCB1c2VzIDIKPiByZXNldCBzaWduYWxzIGFuZCBp
dCBjYW5ub3Qgd29yayB3L28gYm90aCBvZiB0aGVtLiBUbyBiZSBhYmxlIHRvCj4gZnVsbHkgdmFs
aWRhdGUgdGhpcyBvbiBEVCBzY2hlbWEsIHRvbywgdGhlIFJaL0czUyB1c2VzIGl0J3Mgb3duIGNv
bXBhdGlibGUKCml0cwoKPiB3L28gYSBmYWxsYmFjayAoYXMgaWYgdGhlIGZhbGxiYWNrIHdpbGwg
YmUgdXNlZCB0aGUgUlovRzNTIHdpbGwgbm90IHdvcmsKPiBhbnl3YXkpLgo+Cj4gU2lnbmVkLW9m
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
