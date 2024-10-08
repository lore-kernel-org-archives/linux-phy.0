Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04E30CEF174
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 13:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJ/E1pNVoNydUg+MOA5YdjycZfoB/w6iPtkTeqdH+3E=; b=BYwCEZirPeA1Qu
	OP0dHT7cTONdco/4bLek69yi/kpuwDX8KuXyO/4ov8NoHpB12qPVRcc4FUE/Es+Ef/BOeGH5DosbA
	CMNHpOoy52yyAs2XN1cjT2wCHu3izfHUFGyjF+adHQiXqLRWkQw3lfBOPnoJgBZ4jjhCRlEPrKG9g
	VpiaqT+kAtjjj1SKyAVHVfLlmW/nqJRGdRFgXLk2yu9n7v9a6PQ+Ypf5UFjj4t51vj6r4EE8RaQfu
	O8aw3xpyn1GCOzBQ9cCz2ZPpyvNEQz5zsVLSPitccBnpdZDxH6yUH5draQ2R3LdzeMveFipZmzRpj
	I6be/HaH+gWZu0jDYyUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syAM9-000000060m7-2vCp;
	Tue, 08 Oct 2024 13:34:29 +0000
Received: from mail-yw1-f181.google.com ([209.85.128.181])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syAD9-00000005yQo-1MOd;
	Tue, 08 Oct 2024 13:25:12 +0000
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-6e2d36343caso30993147b3.2;
        Tue, 08 Oct 2024 06:25:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728393908; x=1728998708;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+nSn19YtBYesjA0jHORDHT8Ybkkt74qSl6rAXa4U574=;
        b=qxJ0Se6hVrdCH0H1tAcw2A2vOfhLEw0Rdfnh0NqyNqxqG1Fi7+Iz93YFE1hxjo21BJ
         XitzKNYNIfQ++CwJd0PimyGEEMPUIecihU53fAD3AheVSS9ZXBYcQtsiNavM4Ds4mBtz
         l49ag1tFJqqEsbQQ0MA8ugpYJvudw2VHT04EIjua4f5V4bOvx+83j+QgRfUQh/3+BH88
         e2FRf/2niXjk7yBP2v+AjMvFr3ORli82ENDe/PuoYKFy5mpwhJx2yxLm+gKGOT+KsfBJ
         4c4h/IqaqUuutX0PClHaSXEqPIGJ0QQgQXkRdPtGWYRWgHDjFzAjWeScOgJ8R+PYe85V
         mXNg==
X-Forwarded-Encrypted: i=1; AJvYcCVd5waN8mXGrjF/Ee5AKbjfPI3mK9MbvsKU4+3ILbk7VDpZAcmLi85uACgXSJdLOxgcLDRLTBCMSVW7@lists.infradead.org, AJvYcCXP3/cwABBv8nVNH+jvoE0vG/DhKFYvLQbPJIQbHq20d7ccflzDMKYWrYkRb4ieOMUYzX8kqf70owMuvkO6d0VK@lists.infradead.org
X-Gm-Message-State: AOJu0YzPpt8qO1Pu88D+R+lFBjH3c9oapD0o9l3YiBfZSc9sAihGDw9s
	ospwcDJd+uY+NY7O9wCEkfgE6B4q4xVOSXdpcBNW+FdBdZo0WTkVuIZBrhJ1
X-Google-Smtp-Source: AGHT+IEtPmp80ieCKPJizSxpXD29HlLpeqnarAn1g+Q4V/NTfoDh8Dq0zwjQzyNsP6+TGnomf9SXAw==
X-Received: by 2002:a05:690c:6484:b0:6e3:182f:f974 with SMTP id 00721157ae682-6e3182ffbc9mr8724837b3.45.1728393907575;
        Tue, 08 Oct 2024 06:25:07 -0700 (PDT)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com. [209.85.128.178])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6e2ed4009ebsm9866727b3.125.2024.10.08.06.25.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 06:25:05 -0700 (PDT)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6e2d36343caso30991887b3.2;
        Tue, 08 Oct 2024 06:25:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUXUOThjoGL8VXSlGcfNRjBOBhRy0fmmQpgXEzJKiuwRrxPQpXqG7K888K4M7aAS0Nm+1xxdIZgqWsp@lists.infradead.org, AJvYcCViG1us02MR2bza0RBqOAVgWuxiVNqnDSjNAlGbsC/YFVkmqEJMKwnn/sinrUFvBQEYYP/mhafEF0PbtiyTifxy@lists.infradead.org
X-Received: by 2002:a05:690c:7007:b0:6dd:d407:4568 with SMTP id
 00721157ae682-6e2c7262e78mr141049967b3.26.1728393905298; Tue, 08 Oct 2024
 06:25:05 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-3-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-3-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 8 Oct 2024 15:24:53 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWOTtVcSu36orjrsnNykPcNCmHpXmGz7mV9WGW-aN9WZg@mail.gmail.com>
Message-ID: <CAMuHMdWOTtVcSu36orjrsnNykPcNCmHpXmGz7mV9WGW-aN9WZg@mail.gmail.com>
Subject: Re: [PATCH 02/16] dt-bindings: soc: renesas: renesas,rzg2l-sysc: Add
 #reset-cells for RZ/G3S
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
X-CRM114-CacheID: sfid-20241008_062511_420554_F909C7D2 
X-CRM114-Status: GOOD (  15.04  )
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
LnVqQGJwLnJlbmVzYXMuY29tPgo+Cj4gVGhlIFJaL0czUyBTeXN0ZW0gY29udHJvbGxlciBoYXMg
cmVnaXN0ZXJzIHRvIGNvbnRyb2wgc2lnbmFscyB0aGF0IG5lZWQKPiB0byBiZSBkZS1hc3NlcnRl
ZC9hc3NlcnRlZCBiZWZvcmUvYWZ0ZXIgZGlmZmVyZW50IFNvQyBhcmVhcyBhcmUgcG93ZXIKPiBv
bi9vZmYuIFRoaXMgc2lnbmFscyBhcmUgaW1wbGVtZW50ZWQgYXMgcmVzZXQgc2lnbmFscy4gRm9y
IHRoaXMgZG9jdW1lbnQKPiB0aGUgI3Jlc2V0LWNlbGxzIHByb3BlcnR5Lgo+Cj4gU2lnbmVkLW9m
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
