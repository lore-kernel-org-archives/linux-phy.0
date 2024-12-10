Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36BF9E7717F
	for <linux-phy@archiver.kernel.org>; Tue, 10 Dec 2024 14:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=felXLcd4KLZeJh5UqanGegLjkbvtxQhjAbmCYgemrRE=; b=GaU7TS4jlR/Kvt
	s8aHPjlF02hSfuBhRyZe8nw5K7SBstwHGbnlpJl/RFX9XA3vEuTZT921b0OoSwb3TPxEo2H2/1EN+
	SftBdw2FsDjnK8MWtzAufKapa2D6fEVmukYMPdrLzhwIoKFjGRKb/Jqb+BxeSavmJMGdArT30miXP
	AJJQZs1fFz3uopm6Doq+P7arIQQV8hX5KyNxYr68F6FwnlrOihoQzFz87OBHUXG14jBKFRnfgIK+z
	op7vawmJN4t5xuZ9WkrUT1pl5mbWxaHpMVn4cUMSDJXSQbO3nls0JE1MwcRS02OxW5dx523LhkOxB
	8r2n9z3B8C9C4tYsrwvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1TB-0000000BpNu-44uJ;
	Tue, 10 Dec 2024 14:44:13 +0000
Received: from mail-vk1-f175.google.com ([209.85.221.175])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1R0-0000000Bocy-48lM
	for linux-phy@lists.infradead.org;
	Tue, 10 Dec 2024 14:42:00 +0000
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-5160f80e652so1029913e0c.2
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 06:41:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733841717; x=1734446517;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sEeS7eW3dOMIbCnO2yWME8t863RN9RbwOU3IJRVX0qU=;
        b=TJmAXjwc1ghWdOrE+aQ8ScS85QCUgmaNCg78FjxJJggmeRkOvplTC7oz2Wroqf+Fm/
         iUgWdca0cah75ROJwl6EN4PHSN8dXugQBve1xcqbQBnOexdRwcnkUIq0+tmErSqBhDMZ
         b3/X/21230/tNTo5yruM9PzUaBf9kZIhGOE9UlWUFCkarCPSANMfjDFfA3H3FJ/bGMUJ
         WExBFfHNKZvoyGfkI+JR4A0YfiQP4NAyTu333BtUT5vayoQHB6bn2L+RA53nwRfg8IAY
         fEP798FQ/kc14Ux8ZGfk4OQTlv/qKuLXw0oFfFcHoHts5XzZPudmO6+3g8p2zhuoYRXa
         BCRw==
X-Forwarded-Encrypted: i=1; AJvYcCUm7Ox2A4FuASc84OGfceGcLQZUC+/Ng5sC//nxpQ9SHWRU8STkzwA3nDdPw49sJwfYZbtNG+7AmIg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxckpnYPV3DaZj/JmSRlhlhGD2pbJdJyXPsYPftzdiJ+QSln0pP
	DkHI02KUpBVtAxFXa1nZQ1ieTU4XrgYzLcN8f0Y7QtuMD2Ccp2NNrrDtQs9x
X-Gm-Gg: ASbGncvt8FdtHzr9cwyf2KVTw3MpbgVtyO8tItb8xWXeUhSgxppQEoSHx6KYcJZQOcq
	/R7WdRePGuclhRE2XeEoYy9hebUT+vgWrS+FNEq6El0Hyw3nHvaOpOmoTT1Q6GiU/QPpc7jGGHK
	FgYvlsUH96CdTl0RNgITIqP4IbFaAePjMXAnq9nsinVge+OrmhBi5terQnxnS6QZq5tJMdK9B+J
	JL6bge4d0n9QUSgoTNtXESz0EePWxgwsTV7qJOSuQ/lObcIvIC5IYqi24rHUbKCwa5Fxgaa3Dk5
	YwjWmJvdhMlKS4D3vTqG
X-Google-Smtp-Source: AGHT+IFjx856EEVI+Zl1/p4mazvHPj34V0t7QlJgIEMS34GXQv4Bzjvc4Brek1bDSVpyAZ+t8si1Eg==
X-Received: by 2002:a05:6122:30a1:b0:516:1b30:8797 with SMTP id 71dfb90a1353d-5161b308baemr9161476e0c.11.1733841716695;
        Tue, 10 Dec 2024 06:41:56 -0800 (PST)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com. [209.85.221.171])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-51886b8c3dasm206463e0c.30.2024.12.10.06.41.56
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 06:41:56 -0800 (PST)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-51882748165so612286e0c.3
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 06:41:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV8saN6ZaiPKUfwWqTPCRY64fopX0pkZvcij6fZYyUuNTfz5gevJn2SL0Wk/4nbC3dctKLIlENosUU=@lists.infradead.org
X-Received: by 2002:a05:6122:169d:b0:518:97c2:f21a with SMTP id
 71dfb90a1353d-51897c2f7dcmr1218484e0c.6.1733841716153; Tue, 10 Dec 2024
 06:41:56 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com> <20241126092050.1825607-4-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20241126092050.1825607-4-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Dec 2024 15:41:44 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUWUw-cAkZ612J0o+0uJ2B8BqC87Q9SjWxay126xqxeDQ@mail.gmail.com>
Message-ID: <CAMuHMdUWUw-cAkZ612J0o+0uJ2B8BqC87Q9SjWxay126xqxeDQ@mail.gmail.com>
Subject: Re: [PATCH v2 03/15] soc: renesas: rz-sysc: Enable SYSC driver for RZ/G3S
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, 
	yoshihiro.shimoda.uh@renesas.com, christophe.jaillet@wanadoo.fr, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-usb@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_064159_050331_AA1A89CA 
X-CRM114-Status: GOOD (  12.89  )
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

T24gVHVlLCBOb3YgMjYsIDIwMjQgYXQgMTA6MjHigK9BTSBDbGF1ZGl1IDxjbGF1ZGl1LmJlem5l
YUB0dXhvbi5kZXY+IHdyb3RlOgo+IEZyb206IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5l
YS51akBicC5yZW5lc2FzLmNvbT4KPgo+IEVuYWJsZSBTWVNDIGRyaXZlciBmb3IgUlovRzNTLiBU
aGlzIGlzIG5lY2Vzc2FyeSBmb3IgVVNCIHN1cHBvcnQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDbGF1
ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+CgpSZXZpZXdlZC1i
eTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KCkdye29ldGpl
LGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0
ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxp
bnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBl
b3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91
cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
