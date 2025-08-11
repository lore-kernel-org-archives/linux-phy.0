Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74182CA0ED1
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 17:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJHu/JhMxpBTU94KOkA4iCSniunL5fcV7rrmuHpwvdQ=; b=xv8p1SsJ77yque
	jbDv9Z31aTNtm3nh2Y34pFPJU81l/hwwGDZvgNKEtGMO0p6mRRMom5UhsGgLc30WsKqZSykh6vTuM
	S3qsHrA7nHzmBiYiwLIDBFMLdwEsT3fBUU8hA0bSjxyYeW0eyk1z8rJ2yNen6PzwLkS15HeNKG0q8
	4F3GK+cnzhe8Zd+5OQ0e5lVDTK5mbsHYy7gGFHzs5MQnzyeH0qMV0UGi6bEJu93TJxhvf/uy8ly3b
	c8DCd+N1SiK4QiV6uf6obapO77KHdz3MKbgv4RsYiNyn2acStj/VzwXw8wQj0U/l9/FAyWk2fIKio
	8mXlSD/lszeC7VteAUrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulWb5-00000008arG-0wPH;
	Mon, 11 Aug 2025 17:46:11 +0000
Received: from mail-ua1-f50.google.com ([209.85.222.50])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulUHj-00000008AOv-2xIl
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 15:18:04 +0000
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-88baa491d52so2348498241.1
        for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 08:18:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754925482; x=1755530282;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eRERaapospbD2j/AINuPZJ+DOhG36AvV/ZTDomBbWC8=;
        b=HJh8P4JSPM3dLES6StOWu0qQdCJKa5vtZkzd5TcpBDVvhXet1cRWWnAEK131OIpqbl
         SjFX6NZpK8sepzE9eFHhkKiVgZ1uINFlI6Ij2EVN9q43zlZGtaaSc8gLuVE/RjQqYdMB
         JD2iALMXkDvFO/lcUrosUk/ewLbkPBmdkCHXQjaZtKsHHZMbL35DYhWpwqXu71AM82xj
         R9TcQZ0wiB4CMkvHhW3XSBxOQCbhP8NqRUg0dQYWayLJ7Wu6oEZTJf6SM2Iq+VAEmXGu
         8YbB90ZgKhFMBPg/djiaohL9FDM5+NEj3YYWlVRfquW1Buc9JqBxMTaVjYfGywXCAbSQ
         TepQ==
X-Forwarded-Encrypted: i=1; AJvYcCX63ooNGkmIo86N85vWxmDmwtGxaT3x9b78CDkdoUQmKCy8WUMc8t/coTmtrovndF324uyIcWqKBSg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyJvBIbVFM0TEIrhbqdzclAQAkHnRYgsXAPpUD/8R1+PAy6MiWV
	ChI7uILBdGmhd08wCpCu8WPcqJEIIc4GrVDZpAvYw6p/gz8uRN6grPLlLvY+vCaz
X-Gm-Gg: ASbGncsn24c2VzGlk/hy3jGyzb7guFhsa3vKQBDVOJTgyzNaffNAmfEitEmJrxOjeQ5
	+NBe7Qf5x7zO3pp109WZZt6mWAp6tQ+HEF+mlq3kkxlqbbK2rw03cRrR8zYP8RrNYCSBLmbOyay
	769RALWcTds5sxim/ReFKg0yUxkfMnA/MPNev6rWIELRnHYRgJeR5wMP9JIK5EP9FDnRvlDfdoc
	wIfAN6bcpR3Abx52Cnu3e7/7i+RuvP6/xupCuzvbUNo9ofnRXMKHXgxG0CPlTXPnuW2M3hOE3Xm
	2W4X2sa6ePneVvH3DiIYgYOqQR7THVOv5g2ANuNyfH4LvzCBYO1/NIM25rsusqjrFuU9ImPahlC
	2+wQXgNXMIepZYFxJSCsANNLkY2ZvxPWlyG1Ms02DhUVbf7rAvdT6tFtXiiBZ
X-Google-Smtp-Source: AGHT+IEi74VPhx5+CK9xP0unZbBfomTU+7HQnG72bMPEaRM3datbogBpJCKn3/MIIG5P463oEOIZ5w==
X-Received: by 2002:a05:6102:c0c:b0:4e9:963f:2d09 with SMTP id ada2fe7eead31-50cbd7be826mr117328137.10.1754925482061;
        Mon, 11 Aug 2025 08:18:02 -0700 (PDT)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5062b652424sm1770169137.12.2025.08.11.08.18.01
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 08:18:01 -0700 (PDT)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-88dc40608c1so2962084241.2
        for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 08:18:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUGHjBnAZOcLTFdV6XWQn6h0AFHxuyFDjWSdhw81J6gDwU/tfIFj3g30zBdPisa9Lnv9MzNVqfFoOs=@lists.infradead.org
X-Received: by 2002:a05:6102:c0c:b0:4e9:963f:2d09 with SMTP id
 ada2fe7eead31-50cbd7be826mr117273137.10.1754925481152; Mon, 11 Aug 2025
 08:18:01 -0700 (PDT)
MIME-Version: 1.0
References: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250808215209.3692744-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdUWo=hYPWPrweoYn5rFC50aV5EV1xqwFHmLp27GRjEADw@mail.gmail.com> <CA+V-a8vW2-YG8=-u3kUcrou+nPVLn2uhE-W+JOHpu9Cahyw2ZQ@mail.gmail.com>
In-Reply-To: <CA+V-a8vW2-YG8=-u3kUcrou+nPVLn2uhE-W+JOHpu9Cahyw2ZQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 11 Aug 2025 17:17:48 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVXZPhsKSbC1px9c733O-W74EHNOb9+Ag8hgsM2bPg7SQ@mail.gmail.com>
X-Gm-Features: Ac12FXxp-lj0MFbvrPvqguz3Y5JPy4aG-7bqG3-CAFKU8C26rnV-BJ2WrZHG93A
Message-ID: <CAMuHMdVXZPhsKSbC1px9c733O-W74EHNOb9+Ag8hgsM2bPg7SQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: renesas,usb2-phy: Add RZ/T2H and
 RZ/N2H support
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Conor Dooley <conor.dooley@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_081803_746678_9421DD7D 
X-CRM114-Status: GOOD (  27.00  )
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

SGkgUHJhYmhha2FyLAoKT24gTW9uLCAxMSBBdWcgMjAyNSBhdCAxNzowOCwgTGFkLCBQcmFiaGFr
YXIgPHByYWJoYWthci5jc2VuZ2dAZ21haWwuY29tPiB3cm90ZToKPiBPbiBNb24sIEF1ZyAxMSwg
MjAyNSBhdCAyOjM04oCvUE0gR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhrLm9y
Zz4gd3JvdGU6Cj4gPiBPbiBGcmksIDggQXVnIDIwMjUgYXQgMjM6NTIsIFByYWJoYWthciA8cHJh
Ymhha2FyLmNzZW5nZ0BnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiBGcm9tOiBMYWQgUHJhYmhha2Fy
IDxwcmFiaGFrYXIubWFoYWRldi1sYWQucmpAYnAucmVuZXNhcy5jb20+Cj4gPiA+Cj4gPiA+IERv
Y3VtZW50IHRoZSBVU0IyIFBIWSBjb250cm9sbGVyIGZvciB0aGUgUmVuZXNhcyBSWi9UMkggKHI5
YTA5ZzA3NykgYW5kCj4gPiA+IFJaL04ySCAocjlhMDlnMDg3KSBTb0NzLiBUaGVzZSBTb0NzIHNo
YXJlIHRoZSBzYW1lIFBIWSBibG9jaywgd2hpY2ggaXMKPiA+ID4gc2ltaWxhciB0byB0aGUgb25l
IG9uIFJaL0cyTCBidXQgZGlmZmVycyBpbiBjbG9ja3MsIHJlc2V0cywgYW5kIHJlZ2lzdGVyCj4g
PiA+IGJpdHMuIFRvIGFjY291bnQgZm9yIHRoZXNlIGRpZmZlcmVuY2VzLCBhIG5ldyBjb21wYXRp
YmxlIHN0cmluZwo+ID4gPiBgcmVuZXNhcyx1c2IyLXBoeS1yOWEwOWcwNzdgIGlzIGludHJvZHVj
ZWQuCj4gPiA+Cj4gPiA+IFRoZSBSWi9OMkggU29DIHVzZXMgdGhlIHNhbWUgUEhZIGFzIFJaL1Qy
SCwgc28gaXQgcmV1c2VzIHRoZSBSWi9UMkgKPiA+ID4gY29tcGF0aWJsZSBzdHJpbmcgYXMgYSBm
YWxsYmFjay4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogTGFkIFByYWJoYWthciA8cHJhYmhh
a2FyLm1haGFkZXYtbGFkLnJqQGJwLnJlbmVzYXMuY29tPgo+ID4gPiBBY2tlZC1ieTogQ29ub3Ig
RG9vbGV5IDxjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbT4KPiA+Cj4gPiBUaGFua3MgZm9yIHlv
dXIgcGF0Y2ghCj4gPgo+ID4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L3JlbmVzYXMsdXNiMi1waHkueWFtbAo+ID4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3JlbmVzYXMsdXNiMi1waHkueWFtbAo+ID4KPiA+ID4gQEAg
LTEyMCw2ICsxMjYsMTcgQEAgYWxsT2Y6Cj4gPiA+ICAgICAgICByZXF1aXJlZDoKPiA+ID4gICAg
ICAgICAgLSByZXNldHMKPiA+ID4KPiA+ID4gKyAgLSBpZjoKPiA+ID4gKyAgICAgIHByb3BlcnRp
ZXM6Cj4gPiA+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4gPiA+ICsgICAgICAgICAgY29udGFpbnM6
Cj4gPiA+ICsgICAgICAgICAgICBjb25zdDogcmVuZXNhcyx1c2IyLXBoeS1yOWEwOWcwNzcKPiA+
ID4gKyAgICB0aGVuOgo+ID4gPiArICAgICAgcHJvcGVydGllczoKPiA+ID4gKyAgICAgICAgY2xv
Y2tzOgo+ID4gPiArICAgICAgICAgIG1pbkl0ZW1zOiAyCj4gPiA+ICsgICAgICAgIHJlc2V0czog
ZmFsc2UKPiA+Cj4gPiBCeSB0aGUgdGltZSB0aGlzIGhpdHMgdXBzdHJlYW0sIHlvdSB3aWxsIHBy
b2JhYmx5IGhhdmUgcmVzZXQgc3VwcG9ydAo+ID4gZm9yIFJaL1QySCBhbmQgUlovTjJILCBzbyB5
b3UganVzdCBhZGQgcmVuZXNhcyx1c2IyLXBoeS1yOWEwOWcwNzcKPiA+IHRvIHRoZSBjb25kaXRp
b25hbCBzZWN0aW9uIGFib3ZlPwo+ID4KPiBCdXQgdGhlIGFib3ZlIHdpbGwgc3RpbGwgYmUgdHJ1
ZSBhcyBNUkNUTEEvRS9JL00gcmVnaXN0ZXIgZG9lc24ndCBoYXZlCj4gYW55IGJpdHMgdG8gcmVz
ZXQgVVNCe1BIWX0gb3IgYW0gSSBtaXNzaW5nIHNvbWV0aGluZz8KCllvdSBhcmUgY29ycmVjdC4g
SSBvdmVybG9va2VkIHRoYXQgc29tZSBtb2R1bGVzIGxhY2sgcmVzZXQgYml0cy4KCkdye29ldGpl
LGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0
ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxp
bnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBl
b3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91
cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
