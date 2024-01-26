Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E7BEC47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 21:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JciK7f6071qa5wdFFcSqe5mpLF8C6XxFfL2WV6NjOHQ=; b=SmcuPIyncIuxm0
	0WlVo2lKSworyC4HIJBGZPOpc8P7clO6d3HF/MoawEef8NBH06sKckXju0CggiHCoVUh4Q4bRUYbE
	XnkdFOebgfUSsoZ0XIyZKtGajAdnqgcwp4r8slZgqApGDaq7lV/HPuv8TaxMfgnsBu4EprtkecxnC
	1jRzKDkHaxNr++LoaJIbRTry8VRVDRlvEDQL0jnozro+YbN2sY03lsvhUqiJKRFnCkn3dzYVgvst4
	hoq1fKLfNlZX869s/N+iYCdLY38mQZsiSdot1VaeDXtoAo5dgZneHrSP8psclwVCKIMM6CLKWlz2C
	p58tDhoE8gx3QPNppOJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTU4P-00000005VVI-3NLD;
	Fri, 26 Jan 2024 21:49:05 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTU4M-00000005VUg-3U5t;
	Fri, 26 Jan 2024 21:49:03 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-55790581457so646899a12.3;
        Fri, 26 Jan 2024 13:49:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706305740; x=1706910540; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kbOdcHzZMuqyDhAMb9nNM/y9eQJXm6UnGv0LdTTypoI=;
        b=KTLynBSyhfjaQJOVK2paOUwup7CVbrfczgPoXL47k79OTkByOVRAPYx3VEwM+Or4H4
         P6E7EacIowIUELdqG3NlmWEVK2iNxnUx4vuXa2qPukgMouu4MdYD4ZE/r4Cc6h10pJPz
         9kIczJqCZksrul2dQyxSjRm2N2iQMM5aLyidr0/2+iXK92rrIL9EOF5uUreaZwksDHfe
         B8CFerjFZodrvLuAXGIJ4xznmmvDImZn0FysidEQBSdfLafubcHfRdJCbbF3JPDdUKXF
         a1/7qnak2yNgXjczJrmy+GkyaJGigQ6bpKzvNTlwQbZ8Ue308J/IXFx+Dp+l5trSqf4p
         aZGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706305740; x=1706910540;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kbOdcHzZMuqyDhAMb9nNM/y9eQJXm6UnGv0LdTTypoI=;
        b=YcUoDzw9xGCTMjEjpm/GgG+BfiSOn4eOR/8ridzVXEFxG+OX60NrR5F/EQfM4lKuzj
         OAW580kocFHTgSbaU+OGjdVxEsScvBjbp7gkYzXrez2gnLBT0FSGHkhnGJSb1BfxLIuZ
         IPEd9HXgOAItzSFGyQ6SFeYQscrupXBC4wVPwyCAfMO6Ot9khu+cI0OOV9xNIys6fA0o
         d32/bVW/LzvxsGvy5HsPKlEmyvr5aU/x2ioepprn1fSU4p3Z+6QzkpD9Q3jQkLuXHlHD
         0gCYQ2zb9xO+dxBVddKskDAyHGpg3d4ETkLSZg8kccHl4aa78Yabo+cyP45kMpHnSMkg
         2FtQ==
X-Gm-Message-State: AOJu0Yyp6Ra2xiwK4N9zAV/kBIzl7DlmFSfuTH633TA8iffXksAj+xm4
	D96YhdUvY/3Pt5/Pk1VdYhtAY3KBcJzYxSaSMTY+WmH4CqH0rXz4qPhwq8p3+Nvl5TiL3VytrS+
	C3Cp/sWUetm2GLaaNqrIOlNA+Whg=
X-Google-Smtp-Source: AGHT+IGUA7tu4MH2h0O9HCe7+d+lD7YqcS6Agxx4nkApYTvJ2J/sieq/HbGR7u5mIQMbAOKRYYBLVf2Gii6wM5bwGuo=
X-Received: by 2002:a17:906:4a0c:b0:a30:8bce:2183 with SMTP id
 w12-20020a1709064a0c00b00a308bce2183mr251190eju.3.1706305740240; Fri, 26 Jan
 2024 13:49:00 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com> <20240102-j7200-pcie-s2r-v2-12-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-12-8e4f7d228ec2@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 26 Jan 2024 23:48:24 +0200
Message-ID: <CAHp75Vei9O_mvR7o_esOxko1LnRKWgJ8HmheACtf46bGtWHKug@mail.gmail.com>
Subject: Re: [PATCH v2 12/15] phy: cadence-torrent: add suspend and resume support
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>, 
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
X-CRM114-CacheID: sfid-20240126_134902_893806_B8963B58 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
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

T24gRnJpLCBKYW4gMjYsIDIwMjQgYXQgNDozOOKAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBBZGQgc3VzcGVuZCBhbmQgcmVzdW1lIHN1
cHBvcnQuCj4KPiBUaGUgYWxyZWFkeV9jb25maWd1cmVkIGZsYWcgaXMgY2xlYXJlZCBkdXJpbmcg
c3VzcGVuZCBzdGFnZSB0byBmb3JjZSB0aGUKCnRoZSBzdXNwZW5kCgo+IFBIWSBpbml0aWFsaXph
dGlvbiBkdXJpbmcgdGhlIHJlc3VtZSBzdGFnZS4KCi4uLgoKPiArICAgICAgIGlmICghY2Ruc19w
aHktPmFscmVhZHlfY29uZmlndXJlZCkKPiArICAgICAgICAgICAgICAgY2xrX2Rpc2FibGVfdW5w
cmVwYXJlKGNkbnNfcGh5LT5jbGspOwo+ICsgICAgICAgZWxzZQo+ICsgICAgICAgICAgICAgICBj
ZG5zX3BoeS0+YWxyZWFkeV9jb25maWd1cmVkID0gMDsKCldoYXQncyB3cm9uZyB3aXRoIGEgcG9z
aXRpdmUgY2hlY2s/CldoeSBkbyB5b3UgbmVlZCB1bnByZXBhcmUgY2xvY2s/CgotLSAKV2l0aCBC
ZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
