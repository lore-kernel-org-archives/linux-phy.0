Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B11ACED278
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 14:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Clkmh3rYI1SBH53UH/ELX7EZCWUzfw3woK69cbKjMQg=; b=0/kYfRiysUVDxs
	g+yy4XX8nQcEdpbHhj6LKNVE2iqbEv++3BSoloYRfYXu16kq/HrWAQ6Hdda6/UckdATGHOc/+4DKo
	CKMs2xCusR181dY+JGCPLCl9fNR7Wpb21tCR+9f+yD7LWkuy2Q68nSDwckPmh2IHhrp6+f/oD/axC
	pqcMGGh/LwXEYfgLYsqaTxG51Bts8QadkRdPAGdt1P4qFQaQ+4bOiT/X7b9sJJW0qy4CsLz0bT+rz
	wuFtwjCuGXQslUu0CXfytnQub2PEeMqSDevSAkCCnmQ+99wqaqrH6hMGdbT0S7pdS4am096U9+uAU
	MWlDKcj2eRKzPK2nQ8Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syBey-00000006H00-0Zcz;
	Tue, 08 Oct 2024 14:58:00 +0000
Received: from mail-yw1-f174.google.com ([209.85.128.174])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syBZ3-00000006Fgf-3w2X;
	Tue, 08 Oct 2024 14:51:55 +0000
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-6e25f3748e0so58030257b3.0;
        Tue, 08 Oct 2024 07:51:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728399111; x=1729003911;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LiAdTqgkCeMAY5igeCqnTzclkAkkQ30H915zKiiXQ2s=;
        b=EoNDMmYpNi2n0CDo5MDV+yOZQsE1479bgPLXR+5aHgHolNxZq2kiMP8sNprsS7FSf/
         9IfOLo0BEY3oqcKpbCxE7YLufpXfB4n5EjEfVLL/Bht2y1rXWrSvpD4CilzHfFzGILae
         N3o1ZK9VmgeXqAsPNxqCb4gDZH7igUeGbZlCjl4u0q9uuijYHBQEOyNaO7y4lGbl8INI
         Gf3S7Lc0KYXZMBl4wA7XOGewY6DzsWWmcXMKhIjhussWCNjY68z9VYYa7FQ3/YKwFNww
         XQMMKTVNlPthGV4KVa7qGR+gqdQ23/IKVz40IYJFNCScdyg0uC/W1spIGW+iw0uOAWI+
         v88Q==
X-Forwarded-Encrypted: i=1; AJvYcCW5xNT61cL5Ao0aEKvnyBVFUBOyV9DBl6nHxw5f4rAaHH1tk07gWrTfOzPjpnYdyJSgFyZ4chvErBYPa7Zsktc9@lists.infradead.org, AJvYcCXuHWI6BfMS7o4tg48QZsFzjIGbx4eRLfaaDWMcjv6/BcDGfIZlvtycZ9bIiekBgqTzHWkcJgvdiUiu@lists.infradead.org
X-Gm-Message-State: AOJu0Yx51yXl4fMxr/ZkWmyMMQ6KxXULUNvLKECYip2pGIzuH66fDcY7
	w/FknY5Ar7/JDKAoEdHWrIYPFPOAQLoyd9Iqi71YS1sAwFFya9KAA593zBuQ
X-Google-Smtp-Source: AGHT+IG7Bm2Rn1SHPfK2jP/0hqudXw6RkPx8p25Ocp2MmjZ+IYn+lq21jYGdVrWTZH5In/FvSSmIJQ==
X-Received: by 2002:a05:690c:112:b0:6e3:1050:5a46 with SMTP id 00721157ae682-6e310505dbamr20461457b3.22.1728399111477;
        Tue, 08 Oct 2024 07:51:51 -0700 (PDT)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com. [209.85.128.174])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6e2d93d75b7sm14454877b3.97.2024.10.08.07.51.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 07:51:49 -0700 (PDT)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-6e2d2447181so31144967b3.1;
        Tue, 08 Oct 2024 07:51:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUHCQMbpno5hl5SvGaisDLk7+6krXiTU51hNBVreecf1A5htN9N8lTEl1Qrm3run2glmQOy7P++Jac7@lists.infradead.org, AJvYcCWT5+7/O8LqquCbO3J0W7W4FGtBfWtxmoxn2w08xCTq+LxQ0nldKjcTw9NWlneECfjChIlvdi3w8fDJSfXVk85q@lists.infradead.org
X-Received: by 2002:a05:690c:2f05:b0:6db:db51:1a6f with SMTP id
 00721157ae682-6e2c703c243mr96576937b3.26.1728399109490; Tue, 08 Oct 2024
 07:51:49 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-10-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-10-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 8 Oct 2024 16:51:37 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW5asr8ppnfxKT2zXq-9ScK1zZUJ9Fw1fZZeU22jbTuWw@mail.gmail.com>
Message-ID: <CAMuHMdW5asr8ppnfxKT2zXq-9ScK1zZUJ9Fw1fZZeU22jbTuWw@mail.gmail.com>
Subject: Re: [PATCH 09/16] dt-bindings: usb: renesas,usbhs: Document RZ/G3S SoC
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
X-CRM114-CacheID: sfid-20241008_075153_997837_4BD1C648 
X-CRM114-Status: GOOD (  17.30  )
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

SGkgQ2xhdWRpdSwKCk9uIFRodSwgQXVnIDIyLCAyMDI0IGF0IDU6MjjigK9QTSBDbGF1ZGl1IDxj
bGF1ZGl1LmJlem5lYUB0dXhvbi5kZXY+IHdyb3RlOgo+IEZyb206IENsYXVkaXUgQmV6bmVhIDxj
bGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPgo+IFRoZSBVU0JIUyBJUCBibG9jayBv
biBSWi9HM1MgU29DIGlzIGlkZW50aXRjYWwgdG8gdGhlIG9uZSBmb3VuZCBvbiB0aGUKPiBSWi9H
MkwgZGV2aWNlLiBEb2N1bWVudCB0aGUgUlovRzNTIFVTQkhTIElQIGJsb2NrLgo+Cj4gU2lnbmVk
LW9mZi1ieTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhLnVqQGJwLnJlbmVzYXMuY29t
PgoKUmV2aWV3ZWQtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIu
YmU+Cgo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvcmVuZXNh
cyx1c2Jocy55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vz
Yi9yZW5lc2FzLHVzYmhzLnlhbWwKPiBAQCAtMjYsNiArMjYsNyBAQCBwcm9wZXJ0aWVzOgo+ICAg
ICAgICAgICAgICAgIC0gcmVuZXNhcyx1c2Jocy1yOWEwN2cwNDMgIyBSWi9HMlVMIGFuZCBSWi9G
aXZlCj4gICAgICAgICAgICAgICAgLSByZW5lc2FzLHVzYmhzLXI5YTA3ZzA0NCAjIFJaL0cye0ws
TEN9Cj4gICAgICAgICAgICAgICAgLSByZW5lc2FzLHVzYmhzLXI5YTA3ZzA1NCAjIFJaL1YyTAo+
ICsgICAgICAgICAgICAgIC0gcmVuZXNhcyx1c2Jocy1yOWEwOGcwNDUgIyBSWi9HM1MKPiAgICAg
ICAgICAgIC0gY29uc3Q6IHJlbmVzYXMscnpnMmwtdXNiaHMKPgo+ICAgICAgICAtIGl0ZW1zOgoK
U28gd2UgZG8gaGF2ZSBuZXcgdXNlcnMgb2YgdGhlIEhTLVVTQiBibG9jayEKSWYgeW91IGRvIGhh
dmUgYSBuZWVkIGZvciByZW5lc2FzLGVuYWJsZS1ncGlvcywgaXQgbWF5IGJlIGEgZ29vZCBpZGVh
CnRvIHByb2NlZWQgYXMgcGVyIHRoZSBkaXNjdXNzaW9uIGluICJbUEFUQ0ggMS8yXSBkdC1iaW5k
aW5nczogdXNiOgpyZW5lc2FzLHVzYmhzOiBEZXByZWNhdGUgcmVuZXNhcyxlbmFibGUtZ3BpbyIK
KGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MTAwMjIxMzY1Mi5HQTEzMzAwMDQtcm9i
aEBrZXJuZWwub3JnLykuCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAg
ICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51
eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVy
c2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1
dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIi
IG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
LS0gTGludXMgVG9ydmFsZHMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
