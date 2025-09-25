Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 544D9CAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 10:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6J0UKRARFLcFqPg0+HI3Gx8Q7OVm37QY6R29KQa4d4=; b=nkDm8O8CYkJcsE
	d28AcjRa5Zai30/1wgfa9+XbXblGu1FdiK5Qf3CsRvrY6d65MJmeH1ebqD9eK8GVQPA1TaHjwDbNZ
	gI9sY0OhdsLzy4hR6Mg4Zj+6pPdBCeBRZxkplUk8Tvl7WIUq0YkAlzwM99b7mIPv45j5ir5dEan7Y
	OfVzisW4Ut6ZXDlz8+Zq8no/hKVlLA9xqtrmlkJP5FhJ2RbdcKd5p1Z7tVmbL6TIB4fg8YuHRyNgm
	1pjL4yFEadA0rPKhQeFdU1jHA6wQ3z1eVbwYR8eGcayrCKDa81yiDsYkO9uTkUIKWhvKC/t8YzkFR
	41h93IfG1lPWuLa333VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1jIx-0000000889e-46ZE;
	Thu, 25 Sep 2025 10:34:27 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1jIw-0000000888q-1k0t
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 10:34:27 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-45ed646b656so5775935e9.3
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 03:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1758796464; x=1759401264; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w6O7qVDtzfZYudiZbhlwQy20O4vsTVxUZu4CV773opw=;
        b=Bqd1qlBOL8AaxRXxHG3zNMgynqPiXfnMpw/uqiwhPfjMrUKfzyMCtOURFzmTtrriWP
         QbjanUn/fJP88PQ+S0IT30yxu1Ow1aEUGWcXNLPvMdu/m7LT14U0Noz6xlC+CENVI/kC
         iB8q5z/0PVb/JuWyTNxP4WAb5CAgXnwtvsBsj4VLVTqfd+7mRdHawWTCbd0ESLS5ToAW
         W3MAR6ShcampWDbpEBdIJW5/ody5QiKd+GlBsfvbH0zXxBtiv0K4BzaZ6Zs3EGPxR8Ew
         7svngpTA/+/VgaUJ+Qr6cw+td5cLJTLGO2TPFyQbUMAqWtli+rgH6hVtS4vI9lYZipjN
         R6KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758796464; x=1759401264;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w6O7qVDtzfZYudiZbhlwQy20O4vsTVxUZu4CV773opw=;
        b=apHgef73VMNlkBN/7XBJvNZkwg1rUyzXIqJ+kb+vImbcGObxtpXQPwLzGRA2IJng/M
         tfwvaMP9NfuK3/7xYFlGY9y+4LQh7tEzMhMZgv5LYn/nCnTMLKO0+JwXOtKMM5NlqGEp
         jdxZ3C0HNkOUPrB/5cGllej/navtehHO0bVd30wBdwsx1eSZyztS182xHc0GCiI9W0Fe
         OW64HE3X5u956TvAMykTjG332P9fLNC3EftkX4zC7fPnqkkiujkFXwdpmBsdp0ou9Xhb
         G6/lSt4gGXb8Rf1VRVkyZKwUmRF5J5mzzBgvQo3TkcCpZE0z99lcHowb8fJeAYPneLB+
         8tjw==
X-Forwarded-Encrypted: i=1; AJvYcCX0/oJVbUHVKpTpIhwZEUY6M0gO1CLahTaA3SFgg7u6mrU3O2T4RJVN8KOfQITrJBg4AL/WigMcEIQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzpHhqL6QThLC4DDJ5dCnwEz1u8aeXwbXz/Kh81bvhXtKwh9CD8
	H4kOxGoDBdYDC270NLRo2trKmWwikO1zM65VB0gmebDCYvzdPexOcGu4hUua9U4EA1t/DryWaBe
	K4e4a
X-Gm-Gg: ASbGncsa5wUsxoeVYNLbDu1R66memUUvyg+wP9N8XC0ynNLF7MUUF/seun5cAWbHVgD
	ZRmJQmVDvOi95I+maDFhq+g8K72ItXLpHDQ4S+P4/90015DaHnu9IkaJKZeHXUX+9Sf/e4uaGS0
	NmVR0LSewzSVsLzRz8sGMhxsUJlPfBuHxVJQMJHevg24G55ATttj5YNowRZKooRTqB88+HHzeQw
	/5VDWKuM68l3bEXY52/KRq96u52/0XO3lOIiVc01VewSLUAx6KwJMFho8O8cGCkbFOiYHIfK4D1
	6q3AEKopDzcb4Sr3QM3xtvT48GcXtpM0tVvT/lomrS9TNAm3pIhjAvTCiCb4rT8Mu1Nla0cazhx
	gPMDLdsNYB4KpKY5QuqUBOcqZ4chpbeQ=
X-Google-Smtp-Source: AGHT+IHau4F6UO3kNe9td6PkKcUo9vv5NbrrryC/ZcyZh3kAbvyhB2r315j1KCNpYtCjGa/wqGEyxg==
X-Received: by 2002:a05:600c:35ce:b0:46e:1ae7:dc11 with SMTP id 5b1f17b1804b1-46e32a2f926mr32643705e9.20.1758796464415;
        Thu, 25 Sep 2025 03:34:24 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e33bede39sm29988955e9.18.2025.09.25.03.34.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 03:34:23 -0700 (PDT)
Message-ID: <accea131-8735-4b67-ac21-06b7950a0417@tuxon.dev>
Date: Thu, 25 Sep 2025 13:34:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/7] reset: rzg2l-usbphy-ctrl: Add support for USB
 PWRRDY
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com,
 yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
 <20250925100302.3508038-5-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdXWMwkEbfjHvuijWzh6CTdHKbceMmE8Y7LPdAMey9gavQ@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdXWMwkEbfjHvuijWzh6CTdHKbceMmE8Y7LPdAMey9gavQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_033426_490319_0F979553 
X-CRM114-Status: GOOD (  23.46  )
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

SGksIEdlZXJ0LAoKT24gOS8yNS8yNSAxMzoxNSwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+
IEhpIENsYXVkaXUsCj4gCj4gT24gVGh1LCAyNSBTZXB0IDIwMjUgYXQgMTI6MDQsIENsYXVkaXUg
PGNsYXVkaXUuYmV6bmVhQHR1eG9uLmRldj4gd3JvdGU6Cj4+IEZyb206IENsYXVkaXUgQmV6bmVh
IDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPj4KPj4gT24gdGhlIFJlbmVzYXMg
UlovRzNTIFNvQywgdGhlIFVTQiBQSFkgYmxvY2sgaGFzIGFuIGlucHV0IHNpZ25hbCBjYWxsZWQK
Pj4gUFdSUkRZLiBUaGlzIHNpZ25hbCBpcyBtYW5hZ2VkIGJ5IHRoZSBzeXN0ZW0gY29udHJvbGxl
ciBhbmQgbXVzdCBiZQo+PiBkZS1hc3NlcnRlZCBhZnRlciBwb3dlcmluZyBvbiB0aGUgYXJlYSB3
aGVyZSBVU0IgUEhZIHJlc2lkZXMgYW5kIGFzc2VydGVkCj4+IGJlZm9yZSBwb3dlcmluZyBpdCBv
ZmYuCj4+Cj4+IE9uIHBvd2VyLW9uIHRoZSBVU0IgUFdSUkRZIHNpZ25hbCBuZWVkIHRvIGJlIGRl
LWFzc2VydGVkIGJlZm9yZSBlbmFibGluZwo+PiBjbG9jayBhbmQgc3dpdGNoaW5nIHRoZSBtb2R1
bGUgdG8gbm9ybWFsIHN0YXRlICh0aHJvdWdoIE1TVE9QIHN1cHBvcnQpLiBUaGUKPj4gcG93ZXIt
b24gY29uZmlndXJhdGlvbiBzZXF1ZW5jZSBtdXN0IGJlOgo+Pgo+PiAxLyBQV1JSRFk9MAo+PiAy
LyBDTEtfT049MQo+PiAzLyBNU1RPUD0wCj4+Cj4+IE9uIHBvd2VyLW9mZiB0aGUgY29uZmlndXJh
dGlvbiBzZXF1ZW5jZSBzaG91bGQgYmU6Cj4+Cj4+IDEvIE1TVE9QPTEKPj4gMi8gQ0xLX09OPTAK
Pj4gMy8gUFdSUkRZPTEKPj4KPj4gVGhlIENMS19PTiBhbmQgTVNUT1AgZnVuY3Rpb25hbGl0aWVz
IGFyZSBjb250cm9sbGVkIGJ5IGNsb2NrIGRyaXZlcnMuCj4+Cj4+IEFmdGVyIGxvbmcgZGlzY3Vz
c2lvbnMgd2l0aCB0aGUgaW50ZXJuYWwgSFcgdGVhbSwgaXQgaGFzIGJlZW4gY29uZmlybWVkCj4+
IHRoYXQgdGhlIEhXIGNvbm5lY3Rpb24gYi93IFVTQiBQSFkgYmxvY2ssIHRoZSBVU0IgY2hhbm5l
bHMsIHRoZSBzeXN0ZW0KPj4gY29udHJvbGxlciwgY2xvY2ssIE1TVE9QLCBQV1JSRFkgc2lnbmFs
IGlzIGFzIGZvbGxvd3M6Cj4+Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICDilIzi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJAKPj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIOKUguKXhOKUgOKU
gCBDUEdfQ0xLT05fVVNCLkNMSzBfT04KPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IOKUgiAgICAgVVNCIENIMCAgICAgICAgICAgICAgICAgIOKUggo+PiDilIzilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilJAgICDilILilIzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJAg4pSC4peE4pSA
4pSAIENQR19DTEtPTl9VU0IuQ0xLMl9PTgo+PiDilIIgICAgICAgICAgICAgICAgIOKUjOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUkCAgIOKUguKUgmhvc3QgY29udHJvbGxlciByZWdpc3RlcnMg
IOKUgiDilIIKPj4g4pSCICAgICAgICAgICAgICAgICDilIIgICAgICAgIOKUgiAgIOKUguKUgmZ1
bmN0aW9uIGNvbnRyb2xsZXIgcmVnaXN0ZXJz4pSCCj4+IOKUgiAgICAgICAgICAgICAgICAg4pSC
IFBIWTAgICDilILil4TilIDilIDilKTilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJgg4pSC
Cj4+IOKUgiAgICAgVVNCIFBIWSAgICAg4pSCICAgICAgICDilIIgICDilJTilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilrLilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilJgKPj4g4pSCICAgICAgICAgICAgICAgICDilJTilIDilIDi
lIDilIDilIDilIDilIDilIDilJggICAgICAgICAgICAgICAg4pSCCj4+IOKUgiAgICAgICAgICAg
ICAgICAgICAgICAgICAg4pSCICAgIENQR19CVVNfUEVSSV9DT01fTVNUT1AuTVNUT1B7NiwgNX1f
T04KPj4g4pSC4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQ
IOKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUkAo+PiDilILilIJVU0hQSFkgY29udHJvbOKU
giDilIIgICAgICAgIOKUggo+PiDilILilIIgIHJlZ2lzdGVycyAgIOKUgiDilIIgUEhZMSAgIOKU
giAgIOKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUkAo+PiDilILilJTilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJgg4pSCICAgICAgICDilILi
l4TilIDilIDilKQgICAgIFVTQiBDSDEgICAgICAgICAgICAgICAgICDilIIKPj4g4pSCICAgICAg
ICAgICAgICAgICDilJTilIDilIDilIDilIDilIDilIDilIDilIDilJggICDilILilIzilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilJAg4pSC4peE4pSA4pSAIENQR19DTEtPTl9VU0IuQ0xLMV9PTgo+
PiDilJTilIDilrLilIDilIDilIDilIDilIDilIDilIDilrLilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilrLilIDilIDilIDilIDilIDilIDilJggICDilILilIIgaG9zdCBjb250cm9sbGVyIHJl
Z2lzdGVycyDilIIg4pSCCj4+ICAg4pSCICAgICAgIOKUgiAgICAgICAgIOKUgiAgICAgICAgICDi
lILilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJgg4pSCCj4+ICAg4pSCICAgICAgIOKUgiAg
ICAgICAgIOKUgiAgICAgICAgICDilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilrLilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lJgKPj4gICDilIIgICAgICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgICDi
lIIKPj4gICDilIIgICAgICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICBDUEdfQlVTX1BFUklf
Q09NX01TVE9QLk1TVE9QN19PTgo+PiAgIOKUglBXUlJEWSDilIIgICAgICAgICDilIIKPj4gICDi
lIIgICAgICAg4pSCICAgQ1BHX0NMS19PTl9VU0IuQ0xLM19PTgo+PiAgIOKUgiAgICAgICDilIIK
Pj4gICDilIIgIENQR19CVVNfUEVSSV9DT01fTVNUT1AuTVNUT1A0X09OCj4+ICAg4pSCCj4+IOKU
jOKUgOKUgOKUgOKUgOKUkAo+PiDilIJTWVND4pSCCj4+IOKUlOKUgOKUgOKUgOKUgOKUmAo+Pgo+
PiB3aGVyZToKPj4gLSBDUEdfQ0xLT05fVVNCLkNMSy5DTEtYX09OIGlzIHRoZSByZWdpc3RlciBi
aXQgY29udHJvbGxpbmcgdGhlIGNsb2NrIFgKPj4gICBvZiBkaWZmZXJlbnQgVVNCIGJsb2Nrcywg
WCBpbiB7MCwgMSwgMiwgM30KPj4gLSBDUEdfQlVTX1BFUklfQ09NX01TVE9QLk1TVE9QWF9PTiBp
cyB0aGUgcmVnaXN0ZXIgYml0IGNvbnRyb2xsaW5nIHRoZQo+PiAgIE1TVE9QIG9mIGRpZmZlcmVu
dCBVU0IgYmxvY2tzLCBYIGluIHs0LCA1LCA2LCA3fQo+PiAtIFVTQiBQSFkgaXMgdGhlIFVTQiBQ
SFkgYmxvY2sgZXhwb3NpbmcgMiBwb3J0cywgcG9ydDAgYW5kIHBvcnQxLCB1c2VkCj4+ICAgYnkg
dGhlIFVTQiBDSDAsIFVTQiBDSDEKPj4gLSBTWVNDIGlzIHRoZSBzeXN0ZW0gY29udHJvbGxlciBi
bG9jayBjb250cm9sbGluZyB0aGUgUFdSUkRZIHNpZ25hbAo+PiAtIFVTQiBDSHggYXJlIGluZGl2
aWR1YWwgVVNCIGJsb2NrIHdpdGggaG9zdCBhbmQgZnVuY3Rpb24gY2FwYWJpbGl0aWVzCj4+ICAg
KFVTQiBDSDAgaGF2ZSBib3RoIGhvc3QgYW5kIGZ1bmN0aW9uIGNhcGFiaWxpdGllcywgVVNCIENI
MSBoYXMgb25seQo+PiAgIGhvc3QgY2FwYWJpbGl0aWVzKQo+Pgo+PiBUaGUgVVNCUEhZIGNvbnRy
b2wgcmVnaXN0ZXJzIGFyZSBjb250cm9sbGVkIHRob3VnaCB0aGUKPj4gcmVzZXQtcnpnMmwtdXNi
cGh5LWN0cmwgZHJpdmVyLiBUaGUgVVNCIFBIWSBwb3J0cyBhcmUgY29udHJvbGxlZCBieQo+PiBw
aHlfcmNhcl9nZW4zX3VzYjIgKGRyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2Iy
LmMgZmlsZSkuIFRoZQo+PiBVU0IgUEhZIHBvcnRzIHJlcXVlc3QgcmVzZXRzIGZyb20gdGhlIHJl
c2V0LXJ6ZzJsLXVzYnBoeS1jdHJsIGRyaXZlci4KPj4KPj4gVGhlIGNvbm5lY3Rpb24gYi93IHRo
ZSBzeXN0ZW0gY29udHJvbGxlciBhbmQgdGhlIFVTQiBQSFkgQ1RSTCBkcml2ZXIgaXMKPj4gaW1w
bGVtZW50ZWQgdGhyb3VnaCB0aGUgcmVuZXNhcyxzeXNjLXB3cnJkeSBkZXZpY2UgdHJlZSBwcm9w
ZXJ0eQo+PiBwcm9wb3NlZCBpbiB0aGlzIHBhdGNoLiBUaGlzIHByb3BlcnR5IHNwZWNpZmllcyB0
aGUgcmVnaXN0ZXIgb2Zmc2V0IGFuZCB0aGUKPj4gYml0bWFzayByZXF1aXJlZCB0byBjb250cm9s
IHRoZSBQV1JSRFkgc2lnbmFsLgo+Pgo+PiBTaW5jZSB0aGUgVVNCIFBIWSBDVFJMIGRyaXZlciBu
ZWVkcyB0byBiZSBwcm9iZWQgYmVmb3JlIGFueSBvdGhlcgo+PiBVU0Itc3BlY2lmaWMgZHJpdmVy
IG9uIFJaL0czUywgY29udHJvbCBvZiBQV1JSRFkgaXMgcGFzc2VkIGV4Y2x1c2l2ZWx5Cj4+IHRv
IGl0LiBUaGlzIGd1YXJhbnRlZXMgdGhlIGNvcnJlY3QgY29uZmlndXJhdGlvbiBzZXF1ZW5jZSBi
ZXR3ZWVuIGNsb2NrcywKPj4gTVNUT1AgYml0cywgYW5kIHRoZSBQV1JSRFkgYml0LiBBdCB0aGUg
c2FtZSB0aW1lLCBjaGFuZ2VzIGFyZSBrZXB0IG1pbmltYWwKPj4gYnkgYXZvaWRpbmcgbW9kaWZp
Y2F0aW9ucyB0byB0aGUgVVNCIFBIWSBkcml2ZXIgdG8gYWxzbyBoYW5kbGUgdGhlIFBXUlJEWQo+
PiBpdHNlbGYuCj4+Cj4+IFRlc3RlZC1ieTogV29sZnJhbSBTYW5nIDx3c2ErcmVuZXNhc0BzYW5n
LWVuZ2luZWVyaW5nLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVk
aXUuYmV6bmVhLnVqQGJwLnJlbmVzYXMuY29tPgo+PiAtLS0KPj4KPj4gQ2hhbmdlcyBpbiB2NzoK
Pj4gLSB1c2VkIHByb3BlciByZWdtYXAgdXBkYXRlIHZhbHVlIG9uIHJ6ZzJsX3VzYnBoeV9jdHJs
X3NldF9wd3JyZHkoKQo+IAo+IFRoYW5rcyBmb3IgdGhlIHVwZGF0ZSEKPiAKPj4gLS0tIGEvZHJp
dmVycy9yZXNldC9yZXNldC1yemcybC11c2JwaHktY3RybC5jCj4+ICsrKyBiL2RyaXZlcnMvcmVz
ZXQvcmVzZXQtcnpnMmwtdXNicGh5LWN0cmwuYwo+IAo+PiBAQCAtMTEwLDYgKzEyNSw0OSBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IHJlZ21hcF9jb25maWcgcnpnMmxfdXNiX3JlZ2NvbmYgPSB7Cj4+
ICAgICAgICAgLm1heF9yZWdpc3RlciA9IDEsCj4+ICB9Owo+Pgo+PiArc3RhdGljIHZvaWQgcnpn
MmxfdXNicGh5X2N0cmxfc2V0X3B3cnJkeShzdHJ1Y3QgcnpnMmxfdXNicGh5X2N0cmxfcHdycmR5
ICpwd3JyZHksCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYm9v
bCBwb3dlcl9vbikKPj4gK3sKPj4gKyAgICAgICB1MzIgdmFsID0gKCFwb3dlcl9vbiA8PCAoZmZz
KHB3cnJkeS0+bWFzaykgLSAxKSkgJiBwd3JyZHktPm1hc2s7Cj4gCj4gZmZzKHgpIC0gMSA9PSBf
X2Zmcyh4KQoKT0ssIHRoYW5rIHlvdSEgSSdtIGdvaW5nIHRvIHdhaXQgZm9yIG1vcmUgZmVlZGJh
Y2sgYmVmb3JlIHVwZGF0aW5nIGl0IGluIGEKbmV3IHZlcnNpb24uCgpUaGFuayB5b3UgZm9yIHlv
dXIgcmV2aWV3LApDbGF1ZGl1Cgo+IAo+PiArCj4+ICsgICAgICAgcmVnbWFwX3VwZGF0ZV9iaXRz
KHB3cnJkeS0+cmVnbWFwLCBwd3JyZHktPm9mZnNldCwgcHdycmR5LT5tYXNrLCB2YWwpOwo+PiAr
fQo+IAo+IEdye29ldGplLGVldGluZ31zLAo+IAo+ICAgICAgICAgICAgICAgICAgICAgICAgIEdl
ZXJ0Cj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
