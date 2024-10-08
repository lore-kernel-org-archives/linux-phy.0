Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DF21CED278
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 14:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y5TPyyI+HqB0SK6sFhxcVAWP2BwkIEzgbPnO0j9oov0=; b=1D1xBJoXicb8S1
	0ikUHAPDEO6qXqF18TdbQ0Q0X2U1tWu1US/daBDQoB/2poTZ1S+acekKmhmg1GazOSbenxvcBXl9N
	sdut5uGO2TFA7j+33aWxl6cptMKRzY0aCRcMfBAyF8QGTeabrWBFabXIQqrWxfHz2OZNL7OytbwSA
	CQcJoF74WJhAKZmti4TfdUkEFfxZGj8Y981FM4KBSlqBa3kEkt2CHXBgi+VhT/Ug33td8GHysmHnG
	zJdN5kvCN2JHTCDmIM2cJTmUwFF5mZbumXme5ss5pQhL+7NiJnVJJUcB6Utiv5kasjhSuOCV7JBYl
	cK3xegfKzObMqr8baSLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syBas-00000006G62-0fsQ;
	Tue, 08 Oct 2024 14:53:46 +0000
Received: from mail-yb1-f179.google.com ([209.85.219.179])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syBTv-00000006EIn-0Bjf;
	Tue, 08 Oct 2024 14:46:36 +0000
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e25cc9e94eeso4904531276.3;
        Tue, 08 Oct 2024 07:46:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728398792; x=1729003592;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XWmvaZP2QPicvk7Uow1+SNZ9QzFB05BEabMFglqaI/E=;
        b=X6lrpDqgsiv/q8Fuui3KQx54rQfjcETHvxUt7GFLVRbNlVJvjGthHwcbu7CAejDIx3
         mLN76lhX1BNiyMYd3ZeVjB8vo4SVSWuOmJn6q/EFW9H3RB/fwIB9yN+uNY/zvdKT1TE+
         6HcpPHBz7YdFUEc7Brg8bNzF0zgkN5T7Ma8qVCmbP3EP72DwzqMb0L++tPxrdEoFgejq
         BBhX8quZa6S5UeycmO6D3Mg+6U9DsfbDMmYGTNv1z1FaoyYtH7KJB1WQGB796ZZK/DiF
         QXKNYc21+x7oQnjoCymIaJyolgtuXTk9SI/HBn+zob84GCTSoAADSEGZwV+gaWdhrVWH
         hjiA==
X-Forwarded-Encrypted: i=1; AJvYcCWlsFgbDjzNJBOluU84wLs59VveYEycx7jtSeWL3kGIIWFVSFm2yCw1kiJJB80VKOitfnj+1BenSssy@lists.infradead.org, AJvYcCXAtyCaXpl8eR9+wGD3wKo63sW/ej1/jJJjS3iHo4az+SztpEX6Egl1qnIwIIXyFbiEq+Cis75rgzdNyfcp0G7V@lists.infradead.org
X-Gm-Message-State: AOJu0YwfDFcS6VOXf2IQCL+M6jK+QEKLRNJSLiZHHOWZZvmVFYnea2lQ
	y4G1ciBFHp4eHakV9eKw7isSaUaSfXzxHDaPGLNiPUDcfSrHIAScHrgZMSj8
X-Google-Smtp-Source: AGHT+IHmxXdZ7My2TloKEfURW+91qzLqGOWUsCi8taaAvHcJENdiM7NTmKWq3Q0pqfekiN7ytK/LOQ==
X-Received: by 2002:a05:6902:124a:b0:e26:29dc:8dd2 with SMTP id 3f1490d57ef6-e28936c7b84mr12408786276.6.1728398792123;
        Tue, 08 Oct 2024 07:46:32 -0700 (PDT)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com. [209.85.128.177])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e28a5871cc2sm1292575276.0.2024.10.08.07.46.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 07:46:30 -0700 (PDT)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6e2d2447181so31085997b3.1;
        Tue, 08 Oct 2024 07:46:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWEEZnmMy4oPY4QHTpgRTp+hG84luShtMZ/ugxa3hacHWQmQfwyozBWJKHEULDtBSUleOIXPPJ43w3F@lists.infradead.org, AJvYcCXvPHNkiGTruuFiD2mgH0M1tD6EZziCmJKVr7/tBviU5PwGCuFCIPLHJZ6J0AbNhAySHByyEzSKeWuygWul56cj@lists.infradead.org
X-Received: by 2002:a05:690c:5889:b0:6e3:10e7:b418 with SMTP id
 00721157ae682-6e310e7bd0amr12032047b3.46.1728398790349; Tue, 08 Oct 2024
 07:46:30 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-7-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-7-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 8 Oct 2024 16:46:17 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWAX66bRKApsN3kLpp6Cezjx7AjgDt_q2_Lt6Qg3BaQfQ@mail.gmail.com>
Message-ID: <CAMuHMdWAX66bRKApsN3kLpp6Cezjx7AjgDt_q2_Lt6Qg3BaQfQ@mail.gmail.com>
Subject: Re: [PATCH 06/16] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl:
 Document RZ/G3S SoC
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
X-CRM114-CacheID: sfid-20241008_074635_104904_E99F840D 
X-CRM114-Status: GOOD (  18.75  )
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
bGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPgo+IERvY3VtZW50IHRoZSBSZW5lc2Fz
IFJaL0czUyBVU0IgUEhZIENvbnRyb2wgSVAuIFRoaXMgaXMgc2ltaWxhciB3aXRoIHRoZQo+IG9u
ZSBmb3VuZCBvbiB0aGUgUlovRzJMIFNvQyB0aGUgZXhjZXB0aW9uIGJlaW5nIHRoYXQgdGhlIFNZ
U0MgVVNCIHNwZWNpZmljCj4gc2lnbmFsIG5lZWQgdG8gYmUgY29uZmlndXJlZCBiZWZvcmUgYWNj
ZXNzaW5nIHRoZSBVU0IgYXJlYS4gVGhpcyBpcwo+IGRvbmUgdGhvdWdoIGEgcmVzZXQgc2lnbmFs
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhLnVqQGJw
LnJlbmVzYXMuY29tPgoKVGhhbmtzIGZvciB5b3VyIHBhdGNoIQoKPiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVzZXQvcmVuZXNhcyxyemcybC11c2JwaHktY3RybC55
YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2V0L3JlbmVz
YXMscnpnMmwtdXNicGh5LWN0cmwueWFtbAo+IEBAIC0xNSwxMiArMTUsMTUgQEAgZGVzY3JpcHRp
b246Cj4KPiAgcHJvcGVydGllczoKPiAgICBjb21wYXRpYmxlOgo+IC0gICAgaXRlbXM6Cj4gLSAg
ICAgIC0gZW51bToKPiAtICAgICAgICAgIC0gcmVuZXNhcyxyOWEwN2cwNDMtdXNicGh5LWN0cmwg
IyBSWi9HMlVMIGFuZCBSWi9GaXZlCj4gLSAgICAgICAgICAtIHJlbmVzYXMscjlhMDdnMDQ0LXVz
YnBoeS1jdHJsICMgUlovRzJ7TCxMQ30KPiAtICAgICAgICAgIC0gcmVuZXNhcyxyOWEwN2cwNTQt
dXNicGh5LWN0cmwgIyBSWi9WMkwKPiAtICAgICAgLSBjb25zdDogcmVuZXNhcyxyemcybC11c2Jw
aHktY3RybAo+ICsgICAgb25lT2Y6Cj4gKyAgICAgIC0gY29uc3Q6IHJlbmVzYXMscjlhMDhnMDQ1
LXVzYnBoeS1jdHJsICMgUlovRzNTCj4gKwoKVW5uZWVkZWQgYmxhbmsgbGluZS4KCj4gKyAgICAg
IC0gaXRlbXM6Cj4gKyAgICAgICAgICAtIGVudW06Cj4gKyAgICAgICAgICAgICAgLSByZW5lc2Fz
LHI5YTA3ZzA0My11c2JwaHktY3RybCAjIFJaL0cyVUwgYW5kIFJaL0ZpdmUKPiArICAgICAgICAg
ICAgICAtIHJlbmVzYXMscjlhMDdnMDQ0LXVzYnBoeS1jdHJsICMgUlovRzJ7TCxMQ30KPiArICAg
ICAgICAgICAgICAtIHJlbmVzYXMscjlhMDdnMDU0LXVzYnBoeS1jdHJsICMgUlovVjJMCj4gKyAg
ICAgICAgICAtIGNvbnN0OiByZW5lc2FzLHJ6ZzJsLXVzYnBoeS1jdHJsCgpOaXQ6IHVzdWFsbHkg
dGhlc2UgYXJlIHNvcnRlZCBieSBwYXJ0IG51bWJlciwgc28gdGhlIFJaL0czUyBzZWN0aW9uCnNo
b3VsZCBiZSBsYXN0LgoKRm9yIHRoZSBjb250ZW50czoKUmV2aWV3ZWQtYnk6IEdlZXJ0IFV5dHRl
cmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+CgpHcntvZXRqZSxlZXRpbmd9cywKCiAg
ICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRo
ZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoK
SW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBt
eXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVz
dCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
