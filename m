Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDA39CEFC24
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 15:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2OHFu+7dqOtvay6dXgvIqCl41GS+QsRGQi0NucGCP6Q=; b=vT24ZmGNwO2Qks
	1beYiNnWg9cRQX83NPIZ6WZ9u+vgktBpR9F/T5v4G7Ge3NsqN+Usc/ES/AmHSMn0SH8MkX5Gq4COi
	nj9UOXCNOSD87al+KMo1mG8EBabPQEDTBb9R4JeBLPlrOmgYg3US9LeR8Ie+QxYv47gjxo0mhjL5b
	j1D2fr4PpTcAYtUFuUIvgEzO6grfRyV3/ahncayWn4dshbFDSCXWRgg7rr89YNWGtyGz6zkACsiGh
	Q0FSSs87rMqGa99RB4w89OOkEW8vxDcRqs9GARX/U3X9OwXDSXpsHxrDeAOK3nyNSNSnbX49e9smQ
	S0zvcQjIKIoqUhmOXSbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syByi-00000006L1u-2EWg;
	Tue, 08 Oct 2024 15:18:24 +0000
Received: from mail-yb1-f179.google.com ([209.85.219.179])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syBy2-00000006Kpp-2enJ;
	Tue, 08 Oct 2024 15:17:43 +0000
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e25cf3c7278so5074410276.3;
        Tue, 08 Oct 2024 08:17:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728400661; x=1729005461;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7+Bc4GjkC6icbPY7vgYqwmn4fwzMIGosWjslnYJ1NAQ=;
        b=FBiCpjZ+iycuTgKX1bwJfM6SOa4IRJpd1WVU1TSQOT1Fzy+NkW4w6kyu+9nFzu3kW2
         m50BBf+U+9BLBVt71/RydQezdKDoqh++8rFnvfcPaeaR2cKvrj54X2jPTQxcLA+KIQHu
         fPv3qkrCKJ7OPQqO73gEBYjSnvrRwb+SgoHfY+iXqejLg46WCtDFOcrXu6EKYbxEaglj
         kAs4UEaNCUfVxY8rf16S5KJ+3npE8xiBxFFZOf4S6qoDtQgL+1eRhewlhYWvvbr01Wwl
         /gB9nA+nmkKEJqdiGNvwhBAiSwOIugHwfgcNAOphPtlyDPVERWiXJrSj87raKb/i62Tv
         Fvsg==
X-Forwarded-Encrypted: i=1; AJvYcCW1twzy1fy/VHTlC5zdhrqI75RodPtzK/VGRWVFIxs0YuH0rAlpuLW90KFIXEBMsJp9ZjzcshDiqofl@lists.infradead.org, AJvYcCXUnVXCyi6QfnuABLtVey1JskVfhf8T1Lswafa0+CcFq7QsSUunn/6k6v4JK03Ehazpt/1gt3izjN0QeOJxpHyh@lists.infradead.org
X-Gm-Message-State: AOJu0YyTBPzrBXMSteyhtOMsx5HwCpB5RCiOcFlEd7VlYrk2Rs9YMINP
	cNyJd+Dz2OcskEZZdrVvDFNXRkEtHG960U1kqZAS8Ts6TahX8+iyyLoCyJfi
X-Google-Smtp-Source: AGHT+IGhBgjYpGu84dg4G4B9muYCkD2ffuQvPvAQsbzjtVP0CHw4WB7pqpy1ojhMB2K5KleCqnfE5Q==
X-Received: by 2002:a05:6902:1ac9:b0:e28:6f55:1283 with SMTP id 3f1490d57ef6-e28937e3e02mr12869815276.30.1728400661135;
        Tue, 08 Oct 2024 08:17:41 -0700 (PDT)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com. [209.85.219.170])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e28ee8c438csm255539276.47.2024.10.08.08.17.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 08:17:40 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e28f05bbf93so623686276.1;
        Tue, 08 Oct 2024 08:17:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXPjb3dKXwZPKcvE59WY20sLMuq6d+BL/pKpYcP/vwMuLoMvAYZC+SyQ4rRmKzaiJfeLPxP/1fWuJCrQLfblkbJ@lists.infradead.org, AJvYcCXlbRm5vJ2PZImUYUMwjDZvE9G28LCKPSsYYJFCIyiU79WY7Ukndx84gKos7osdFMvXiBYGbWPIgV85@lists.infradead.org
X-Received: by 2002:a05:690c:fc4:b0:6e3:1a7b:9c9b with SMTP id
 00721157ae682-6e31a7b9d75mr9665837b3.3.1728400660642; Tue, 08 Oct 2024
 08:17:40 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-17-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-17-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 8 Oct 2024 17:17:28 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWqnSGnqUE1qOHBSxh15kOJwssx=sa0gSxRLzGyoFoGCw@mail.gmail.com>
Message-ID: <CAMuHMdWqnSGnqUE1qOHBSxh15kOJwssx=sa0gSxRLzGyoFoGCw@mail.gmail.com>
Subject: Re: [PATCH 16/16] arm64: defconfig: Enable RZ/G3S SYSC reset driver
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
X-CRM114-CacheID: sfid-20241008_081742_694612_882E8F22 
X-CRM114-Status: GOOD (  13.56  )
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
LnVqQGJwLnJlbmVzYXMuY29tPgo+Cj4gRW5hYmxlIFJaL0czUyBTWVNDIHJlc2V0IGRyaXZlci4g
VGhpcyBleHBvcnRzIHRoZSBjb250cm9sIHRvIDIgc2lnbmFscwo+IChvbmUgZm9yIFVTQiwgb25l
IGZvciBQQ0kpLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6
bmVhLnVqQGJwLnJlbmVzYXMuY29tPgoKUmV2aWV3ZWQtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8
Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+CgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAg
ICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90
cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29u
YWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBo
YWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInBy
b2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
