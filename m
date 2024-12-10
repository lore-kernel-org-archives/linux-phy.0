Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B52EE7717F
	for <linux-phy@archiver.kernel.org>; Tue, 10 Dec 2024 15:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AO4guTbGzxxY0LLjA+sBIF9nWAT1Z09T+8lNIVUpOfo=; b=pd9dC/r2jmODHO
	PaxZ/a08IxiXCqYknXdhFIetgisuYe3SC0Yr0gvKkK0JBQBB4/S/ME3qRvK/DE49oc+P//WHVeL8t
	jhNyWAe9Oy/NcWgDz/oAnfS8xhajP19cq4HSPuI4yzmMrp3UKx2N/X0KSukkCDDbks7jEGNGH+fX1
	o6tCwKMOhy2p2sRmtBQ3o8y20MAqFpyiyK4sQq27WmcK5OPK5MHpux0Ww/nUGvO7vAjnBdggt53ep
	xqMuEq63u+G8bYwPdcnsljJb+D7jk7keUKVnztWR1kruYsnoLr41TgN3SPUxJVO0o7Akffpo8zCUU
	vpXYLWp8jn8aIBanLzVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL2MW-0000000ByMc-03IR;
	Tue, 10 Dec 2024 15:41:24 +0000
Received: from mail-vs1-f42.google.com ([209.85.217.42])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL2MS-0000000ByLA-2qvd
	for linux-phy@lists.infradead.org;
	Tue, 10 Dec 2024 15:41:22 +0000
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-4afe99e5229so806960137.3
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:41:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733845279; x=1734450079;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UiU6dol6+4XO9aWJR+hvjMjVBST+e1yHPKcE/OhwbvU=;
        b=iHVaUXUYd/t33TFLvhdwDe8EeTh64wYXd3uayT+RIK6ScbWVFVrb/5c1KwXfj5sxw2
         xeyQHLLIZe3BPp4Hvrp8ROj6oRetx6fcQkAhhBSAiux5V1Bz3DqrA6cLPAO8sKaR+VPG
         UtZA7UgGZplz5tHlwYPb9N2y65eYglX6F/A98KZeczeU33lfDbZP24N2LzsIfBIAe+M6
         DPyb/Ath4dPtJz6L8ScnHemH9hSkdzaRWfngMgjRYboPLalPnIaM7/zNP/d7/bvkpA7L
         OCPSTX/b65uU78H7NL9+SWKjDQkcFTO2aRFgrLGuxbM1RE9Eaf9ZAyxsK0exdmRMVGJC
         XEtg==
X-Forwarded-Encrypted: i=1; AJvYcCVAJlsO6CHN6gTITeMTb6KlU+d7doDtd9B93QsVp7MV1Y1J/LBxUyQGXBLXKU0GG8lPCBylNt4MCdY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1w/L6YD5+uA2yylEayJdiQ/eYE1WFVukb6ADbQg4jLAARze3o
	sifY1x8asS9PNQkn7PfWlsAYLOiC993g2xL1YowTSkdbiXx1OvSnkKwMsEKX
X-Gm-Gg: ASbGnctyLA23/nEkFnu5Plteey1qjk/3yJiHQMTsN3TUqux3nRW3fQRMfRBaNezALNm
	0q+z8iCB4zAbd/COyGmGLoD+yZmJaDbofpt1MwWZhKpGzUWbbHVENEMQmIzjOtnh2IHXZeDWPk4
	1BXmSVMp8AaNanNOBGuMjHd7/G4tK01lMXfhNdPENKjeJMXYxr3X7x1785zJK8Iq1EqsptACMrv
	P/P3yFYVOixu1dhWMIiSdtltLFSfKtDAVFU1iE9d8N+JQwnw40sXv6CBDtLQ0NhDmwcvMmiB18E
	qH1HE1/oHcbbPy8u
X-Google-Smtp-Source: AGHT+IEVzKYXtFd9nb/9EdRObkhktmqUxmLhr5Q/+csMqakED49ii1fkefdIbyqNQaaH5UmMclLi6g==
X-Received: by 2002:a05:6102:510d:b0:4b1:1a23:aef1 with SMTP id ada2fe7eead31-4b11a23af3dmr2826128137.19.1733845278823;
        Tue, 10 Dec 2024 07:41:18 -0800 (PST)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-85c2bcf3509sm1452913241.25.2024.12.10.07.41.17
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 07:41:18 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-4afdfefc6c1so932102137.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:41:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU/8J4tpd4jKIVPsmEGhnFpr0ugOheLZgMgWn3jIe2JAhDSbo8DYIBtoFEkw4b+vPM3nhifTfocXds=@lists.infradead.org
X-Received: by 2002:a05:6102:5494:b0:4b1:14f3:5d6d with SMTP id
 ada2fe7eead31-4b114f36884mr5547677137.6.1733845277603; Tue, 10 Dec 2024
 07:41:17 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com> <20241126092050.1825607-16-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20241126092050.1825607-16-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Dec 2024 16:41:06 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUAXG9yLq0L-w7LOaURfPXVka+Bwt9oGoNVS_PJcd+aEw@mail.gmail.com>
Message-ID: <CAMuHMdUAXG9yLq0L-w7LOaURfPXVka+Bwt9oGoNVS_PJcd+aEw@mail.gmail.com>
Subject: Re: [PATCH v2 15/15] arm64: dts: renesas: rzg3s-smarc: Enable USB support
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, 
	yoshihiro.shimoda.uh@renesas.com, christophe.jaillet@wanadoo.fr, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-usb@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_074120_715191_1E430FFB 
X-CRM114-Status: GOOD (  15.33  )
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
YS51akBicC5yZW5lc2FzLmNvbT4KPgo+IEVuYWJsZSBVU0Igc3VwcG9ydCAoaG9zdCwgZGV2aWNl
LCBVU0IgUEhZcykuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5i
ZXpuZWEudWpAYnAucmVuZXNhcy5jb20+Cj4gLS0tCj4KPiBDaGFuZ2VzIGluIHYyOgo+IC0gdGhp
cyB3YXMgcGF0Y2ggMTUvMTYgaW4gdjE6Cj4gLSBkcm9wcGVkIHN5c2MgZW5hYmxlbWVudCBhcyBp
dCBpcyBub3cgZG9uZSBpbiBTb0MgZHRzaSBmaWxlCgpSZXZpZXdlZC1ieTogR2VlcnQgVXl0dGVy
aG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KCkdye29ldGplLGVldGluZ31zLAoKICAg
ICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhl
cmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJ
biBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15
c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0
IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
