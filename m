Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A717EC3ABC9
	for <linux-phy@archiver.kernel.org>; Tue, 13 May 2025 20:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23i8g9aPkpqd7h6eyL582CZ0CFtioI6pjbqOKCo5afw=; b=pMZbMRE9qETMcE
	7XovGtG81ofN9pkrGL1SzRkEoSTwDWrKZzts7uwbl57SR6hWGRt8Ki77RvMrW/bxBNCxhjPyxCJdc
	/EcvmXZSog1ZMaGrroaVi7PftEazSAZVwSV8+nZA3in64KYq0TkwTUCKebyYDN+AtWAoHeK28ltag
	B7tlNVWdvDFjRKE+MOovRiwCnNOy0ET4KM+gLmzzuMuKBzX6E9CcGOrbYXpGqdPyFmNGceoGjuSbh
	TxwbXBHaDL5CJvgyLEc5rzCEl1hCzkd74Fzew0Z+PGSp4DUJShUakFBavPKpwSORSda04iNAsW+ri
	agj27AjyrsYm+ls1v07A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEwRX-0000000DV9f-0com;
	Tue, 13 May 2025 20:41:39 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEwPT-0000000DUik-42eK
	for linux-phy@lists.infradead.org;
	Tue, 13 May 2025 20:39:33 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-54c0fa6d455so7325610e87.1
        for <linux-phy@lists.infradead.org>; Tue, 13 May 2025 13:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747168769; x=1747773569; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ksJNTH6X3RjYqiQL98SxXN351ndMYSr8GsRLN552Nlk=;
        b=Xn/nNv4HGDuNWysbH6DWnVNOZFIGdpAVG9wAz+l6A9iNZHGsGQfJLZ1nNmUy1ySc+6
         flNjCCKrGeNDS84beg0eHX7hWgmeQWwhHbIiosI5rgFxqAr3sNRuJdBmbxUvt28HrNkX
         O+zl+wCzsPxVwSGNoJC5RXMXjupwkjm9D43O4+o1sugxeV8EtqG0fy5DbOGnK91nCVVq
         ccEo8Kj6kRiskPse3oOIJkGYdTypW+H+nKRxDmrAANi/gBCmOGdDmofKAlWdVbjV//Eb
         dglb9B572Rwaty45IdquIqqZr3M2LMNA1xaGjJBX9AVWxuDwRzz4ZCmm322zAMP0jBde
         iPgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747168769; x=1747773569;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ksJNTH6X3RjYqiQL98SxXN351ndMYSr8GsRLN552Nlk=;
        b=daWkVxRJ3lUY4kXuWvjxy9DmsM1Tf60H+pQeHU/GQevGtgkVkNj3P0ZS7h0r5E8mAl
         so23/vW3vrhCgz1KBt+1vP+j1pJsBo/kLhNnKvKnVryMbspPvhAiq66nRrOlBQ1lXAJW
         6PuWpYerUJg+rrOlsapumt2qhv82kkcVgQNEXf72a96nQmO5KNk1ghBtveFZHLB2ZROq
         hgMkDm+q19tWwzaimUkHfbyB9b67nLNhhGBISQzDC2sxiVoB71XHc8LFnk0ei2l7tigL
         e0UIZDp2XIIfhH22RGTEiCrS1Ohc4Oho6PJ0MduJW2TXEM46MDRHQ3t4n8XSWhVD43dY
         7eUA==
X-Forwarded-Encrypted: i=1; AJvYcCWQCiUqTr8Rjw7hiuF4L2WozfOkq0/e4PTr2Rj6Vk/s7BHk8Cbmy5S5fQJ6QXPnsJNSkP7ZkeEG2Tc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwdgEK2oly9EyhM9UWu1ImSsu3KhUG+/TndkH8qEuldARtIjilW
	eIJs897E9t6ukrMpP8jqNKMBWdxiWazDUYfBDo5YAl4I2TtVqq7aXtglon7Ai1EABQ/mC8Iep7A
	5OC7S0osbb8ZoyjQxcGh7jfFMkbTQrXNv+fk=
X-Gm-Gg: ASbGnctudTmaWe2V01jjSrgID3h20lQLsOtG43obUqJf8QqG9HXVLzx1EOm1f3e1JHM
	zomWq23Rqi9qjpbvRBnJUlkuYP2jPGFxxCtM7g1c4jIWxOYqEyHsejw5Pp8rKDZQiafbIQAPYW7
	1vjWbLDournisJd9EcG846V0Qt9QSAS0VVgIOqNB/1m/QO
X-Google-Smtp-Source: AGHT+IHlpggsf7tSkuboEZ0qheweBkapVbaswPCdkm9Yrbizxks2RoZhVMlZXCMW3/Tb4Q46u2G/WrBPGHOaUq4KOGQ=
X-Received: by 2002:a05:6512:31c3:b0:54b:117b:b54e with SMTP id
 2adb3069b0e04-550d61d9e53mr260629e87.57.1747168769279; Tue, 13 May 2025
 13:39:29 -0700 (PDT)
MIME-Version: 1.0
References: <20250506-xusb-peripheral-v2-0-bfbe00671389@gmail.com> <660c781a-6923-4cc9-876a-f33ba782c923@nvidia.com>
In-Reply-To: <660c781a-6923-4cc9-876a-f33ba782c923@nvidia.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Tue, 13 May 2025 15:39:15 -0500
X-Gm-Features: AX0GCFsMkFZOvG05DFLEN3AoDVmlIMlL72GNOhp5XXXvhhtU4WwM20L8uFJicNQ
Message-ID: <CALHNRZ9Li3KzS074dT0ytaEYx7NAMZHYYiuyeoFaBEOEKscR0w@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] phy: tegra: xusb: Default otg mode to peripheral
To: Jon Hunter <jonathanh@nvidia.com>
Cc: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_133932_000998_A21FC9B4 
X-CRM114-Status: GOOD (  19.92  )
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

T24gV2VkLCBNYXkgNywgMjAyNSBhdCA1OjQ44oCvQU0gSm9uIEh1bnRlciA8am9uYXRoYW5oQG52
aWRpYS5jb20+IHdyb3RlOgo+Cj4KPiBPbiAwNi8wNS8yMDI1IDE4OjA5LCBBYXJvbiBLbGluZyB2
aWEgQjQgUmVsYXkgd3JvdGU6Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBYXJvbiBLbGluZyA8d2ViZ2Vl
azEyMzRAZ21haWwuY29tPgo+ID4gLS0tCj4gPiBDaGFuZ2VzIGluIHYyOgo+ID4gLSBBZGQgbmV3
IHBhdGNoIHRvIGRvY3VtZW50IHJvbGUtc3dpdGNoLWRlZmF1bHQtbW9kZSBpbiB4dXNiIHBhZGN0
bAo+ID4gLSBTaW1wbGlmeSBjb2RlIGNoYW5nZSwgcGVyIHJldmlldwo+ID4gLSBDb21tZW50IGlu
IGNvZGUgd2h5IGRldmljZSBtb2RlIGlzIGRlZmF1bHQKPiA+IC0gTGluayB0byB2MTogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDQwNC14dXNiLXBlcmlwaGVyYWwtdjEtMS05OWMxODRi
OWJmNWZAZ21haWwuY29tCj4KPgo+IEkgaGF2ZSBiZWVuIGFza2luZyBvdXIgdGVhbSBhYm91dCB0
aGlzIGFuZCB0aGlzIGlzIHRoZSBmZWVkYmFjayBJCj4gcmVjZWl2ZWQgLi4uCj4KPiAiQnkgZGVz
aWduLCBhIHBvcnTigJlzIGRhdGEgcm9sZSBzdGFydHMgb3V0IGFzIFVTQl9ST0xFX05PTkUuCj4g
SXQgcmVtYWlucyBpbiB0aGF0IHN0YXRlIHVudGlsIGEgZGVkaWNhdGVkIHJvbGXigJBzd2l0Y2gg
ZHJpdmVyLCBzdWNoIGFzCj4gdGhlIEdQSU8tYmFzZWQgZHJpdmVyLCB1c2ItY29ubi1ncGlvLCBv
ciBhIFR5cGUtQyBjb250cm9sbGVyIGRyaXZlciwKPiBDQ0csIHByb2JlcyBWQlVTL0lEIG9yIEND
IGxpbmVzIGFuZCB0ZWxscyB0aGUgVVNCIGNvcmUgd2hldGhlciB0byBzd2l0Y2gKPiB0byBob3N0
IG9yIGRldmljZS4KPiBUaGUgcm9sZS1zd2l0Y2gtZGVmYXVsdC1tb2RlIERUIHByb3BlcnR5IGV4
aXN0cyBwcmVjaXNlbHkgZm9yIGNvbnRyb2xsZWQKPiB1c2UgY2FzZXMgd2hlcmUgYSBib2FyZCB0
cnVseSBvbmx5IGV2ZXIgbmVlZHMgb25lIHJvbGUgYW5kIGRvZXNu4oCZdAo+IGluY2x1ZGUgYW55
IHJvbGUtZGV0ZWN0aW9uIGhhcmR3YXJlLgo+IEluIHRoYXQgc2NlbmFyaW8sIHlvdeKAmXJlIGVm
ZmVjdGl2ZWx5IG9wdGluZyBvdXQgb2YgZHluYW1pYyByb2xlIHN3aXRjaGluZy4KPiBJbiB0aGUg
Z2VuZXJhbCBPVEcgY2FzZSwgdGhvdWdoLCB3ZSBzaG91bGRu4oCZdCBhc3N1bWUgdGhlIGRhdGEg
cm9sZSBvZiBhbgo+IE9URyBwb3J0Lgo+Cj4gSW4gaGlzIGNhc2UsIGhlIHNob3VsZCB3b3JrIG91
dAo+IDEuIElmIGhpcyBwbGF0Zm9ybSBoYXMgYSByb2xlLXN3aXRjaCBjb21wb25lbnQsIHRoZW4g
aGUgc2hvdWxkIGVuYWJsZSBpdAo+IHJhdGhlciB0aGFuIGFkZGluZyB0aGlzIGNoYW5nZS4KPiAy
LiBJZiBoaXMgcGxhdGZvcm0gZG9lc27igJl0IGhhdmUgYSByb2xlLXN3aXRjaCBjb250cm9sbGVy
LCBhZGQKPiByb2xlLXN3aXRjaC1kZWZhdWx0LW1vZGUgPSAicGVyaXBoZXJhbCI7IHRvIHRoZSBQ
SFkgbm9kZSBpbnN0ZWFkIG9mCj4gY2hhbmdpbmcgdGhlIGNvcmUgZHJpdmVyLiIKPgo+IFNvIEkg
Z3Vlc3MgdGhlIHF1ZXN0aW9uIGlzLCBkb2VzIHlvdXIgcGxhdGZvcm0gaGF2ZSBhIHJvbGUtc3dp
dGNoCj4gY29udHJvbGxlcj8KPgo+IFRoZSBib3R0b20gbGluZSBoZXJlIGlzIHRoYXQgd2UgZG9u
J3Qgd2FudCB0byBtYWtlIHRoaXMgY2hhbmdlIGJ5Cj4gZGVmYXVsdCBmb3IgYWxsIFRlZ3JhIHBs
YXRmb3Jtcy4KCkkgd2Fzbid0IGZhbWlsaWFyIHdpdGggcm9sZS1zd2l0Y2ggY29udHJvbGxlcnMg
YW5kIHRoYXQgc2VlbXMgdG8gaGF2ZQpiZWVuIG15IHByb2JsZW0uIEkgd2Fzbid0IGxvYWRpbmcg
dGhlIHVzYi1jb25uLWdwaW8gb3IgdWNzaV9jY2cKbW9kdWxlcyB3aGljaCB3YXMgd2h5IHRoZSBj
dXJyZW50IHJvbGUgd2Fzbid0IGJlaW5nIGF1dG8tZGV0ZWN0ZWQuCkFmdGVyIGxvYWRpbmcgdGhv
c2UsIHRoZSBtYWpvcml0eSBvZiB0aGUgSmV0c29uIGRldmtpdHMgYW5kIFNoaWVsZApkZXZpY2Vz
IEknbSB0YXJnZXRpbmcgd29ya2VkIGFzIGV4cGVjdGVkIHdpdGhvdXQgdGhpcyBjaGFuZ2UuIFRo
ZSBvbmx5CmZhaWx1cmUgSSd2ZSBzZWVuIHNvIGZhciBpcyBwMzUwOStwMzYzNi4gQW5kIEkndmUg
Z290IGEgZml4IEknbGwgcHVzaApzZXBhcmF0ZWx5IGZvciB0aGF0LiBTbyB0aGlzIHNlcmllcyBj
YW4gYmUgYWJhbmRvbmVkLgoKU2luY2VyZWx5LApBYXJvbgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
