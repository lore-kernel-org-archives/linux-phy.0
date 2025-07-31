Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED949C87FD2
	for <linux-phy@archiver.kernel.org>; Thu, 31 Jul 2025 21:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eho/3Yn/TT+adT0MxWrYpKOtAnEb0M4ZsT6z5xYzJ1I=; b=demdAjOc7edh6x
	WeYDkhsy+ESs6AytMJ7/C9YPhX+niLPhGyecncVmGXoWa06Rilj7yGxeL8Ze5PsdAxKT3C6ibTKJc
	4LJEKhHotWo72zcgIded1e+btPD/9bJII+kl2ZMi/LzQPHar9zOZb9mSE8pLVWfksvNLz8exlOyyS
	UlPdGH8sHc1hOoH7GOwxaDji4/nygSueqGwLXw4ysFNcmHOcBY4lKY94AFpUeYHvp+O0JWQLQs80v
	ZqcO4X82GgeVg2ItAGbOkhF4RYCwsGBFL/HhVjgplPv5KZ1NnRyTssjPkFkFoeQQLWSaa4OIyPVqF
	TKqeICZGpGtEgoDOLNSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhb6F-00000004Ume-1tQY;
	Thu, 31 Jul 2025 21:46:07 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhb6D-00000004UmI-0YJ8
	for linux-phy@lists.infradead.org;
	Thu, 31 Jul 2025 21:46:06 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-3323afe4804so2050141fa.0
        for <linux-phy@lists.infradead.org>; Thu, 31 Jul 2025 14:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753998363; x=1754603163; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M5O3S8YHjEKxf35I4HemjKP04DsSFKh+k5HBzaaWKAg=;
        b=VxF/PpDsdO2i0CfpaKeeTbadgY2WHsIpKP1crDAmC+wWtY8nTeIlyLZaAbBlOmn9x5
         m8xaE0LcFYErh0x4aLMioloVaHsxJzw/OOEs3siPSxAfd5YwZ1nSE6ZGQKpIsaxbel2F
         K/7bJiI1itxe/ob47whdC3x72DzvS/Zw6F81C7b8TvMdbq22FUDsl6FsbQXqUiuQgA1g
         MROXqkXBxUwRohcXuhKcV/n+cFH+7TSf+NE3vwG57SmAeBbDMJTxv86PurxJF/UtwvRx
         SPP0IopJpv8snjJVIbabdMYYo2lgvNn0WbuPBgR53MhfYe+OCWcLXX2dQKwtAITs7GSf
         zGZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753998363; x=1754603163;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M5O3S8YHjEKxf35I4HemjKP04DsSFKh+k5HBzaaWKAg=;
        b=NactUH4SFb4Mp74ckp2Is2xssBHqyJcvMZ0G2jNF9QBOTHyFGLrOy0oET0i2/Ah8rm
         6Pp5XNIKXWJRTPMP2k0oHGvJZD5/tL1NCVKu/xgh2aCU1g2aVq4lhOoyWd77lmKEIVZs
         +698CeF2ejKsSjSiWBDAfqVUTwHl8TrKtvx9733LNOM0LHFYxhhD54fVFbJQh9nWB0Ud
         Bimbznpu/NwTXjTWsnmnNlRnsDlp0FL6fltu5vbmBeOWfIij1Ot7YhbZxKNc4OfXdfuJ
         rEyEH/GLkFqdP2b9PZ0Xh10aLQuxrH3JXHOgLyuai/zV71L5roIPDro/MpOU8TH/M144
         aZxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlNcPXQAz/prglnr1JJDglJl3k39z22zA5d/wILaJEAvFQl7ZMNtwwt6sedX/cheOKXiXU4QN7Rao=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4tyn3vZXKLW1/WIQQE9dfE0RB4EYwJdOpAbWXc1RgcW8Exay3
	MqEYZH0AqozSGEWWVEPtQ15qk7pAvaBVDQp/Yrr8I1Cp3uO3WjnX9vMobz2fOgqobQuqbyUIYTn
	5vDZUphEn5oJBoFOCT721lxyuX0DzYm0=
X-Gm-Gg: ASbGncuOqZ659F2vWyr4rURGbk9Kc/re8bj2QgFzEfbgCcvKMOpbZFgsxBfCnrBhA3Y
	DDIOJRFOrPJVM4zlfpQ+3FFq0cXUuoUkDDFR8r3PK3ykbqWZ/4xi/KEsTan1vyJcJrSd3r8UgFI
	yaNFyD1QhladfgVDMNaZ2NEig7tA77VizgZyAhTXWxRPwwXCvnXw+WVRO7JMZWlwHLzxskrTTR1
	5iScsZFn3VkmCye57/P+krF5yzB
X-Google-Smtp-Source: AGHT+IE68ugzaerYztp5XTRePDBYmlv+5hk7MWpjNQloFG3z43Am06Y5klzWQnNYHpsFYONif7VtzQJSYSRafwvOkDU=
X-Received: by 2002:a05:651c:508:b0:32a:8591:6689 with SMTP id
 38308e7fff4ca-33224a725fbmr23822031fa.7.1753998362736; Thu, 31 Jul 2025
 14:46:02 -0700 (PDT)
MIME-Version: 1.0
References: <20250720-t210b01-v2-0-9cb209f1edfc@gmail.com>
In-Reply-To: <20250720-t210b01-v2-0-9cb209f1edfc@gmail.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Thu, 31 Jul 2025 16:45:51 -0500
X-Gm-Features: Ac12FXwmiSNEzxCmapZYKElVAjT1-RsIDF_NIv5WiOavZcEcHwc6rmCyCZHdaRw
Message-ID: <CALHNRZ992mowGjQY7U6hLRsPemaE6AikK-rDp+_CZkGruzP2Qw@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] arm64: tegra: Add Tegra210B01 support
To: webgeek1234@gmail.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Nagarjuna Kristam <nkristam@nvidia.com>, JC Kuo <jckuo@nvidia.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Mathias Nyman <mathias.nyman@intel.com>, Peter De Schrijver <pdeschrijver@nvidia.com>, 
	Prashant Gaikwad <pgaikwad@nvidia.com>, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, 
	Thierry Reding <treding@nvidia.com>, linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, 
	Azkali Manad <a.ffcc7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_144605_173794_7D4D1D3C 
X-CRM114-Status: GOOD (  21.71  )
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

T24gU3VuLCBKdWwgMjAsIDIwMjUgYXQgOToxN+KAr1BNIEFhcm9uIEtsaW5nIHZpYSBCNCBSZWxh
eQo8ZGV2bnVsbCt3ZWJnZWVrMTIzNC5nbWFpbC5jb21Aa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBB
bHNvIGtub3duIGFzIFRlZ3JhIFgxKywgdGhlIFRlZ3JhMjEwQjAxIGhhcyBoaWdoZXIgQ1BVIGFu
ZCBHUFUgY2xvY2tzCj4gdGhhbiB0aGUgb3JpZ2luYWwgVGVncmEyMTAuCj4KPiBUaGlzIHNlcmll
cyBhZGRzIFRlZ3JhMjEwQjAxIHN1cHBvcnQgdG8gc2V2ZXJhbCBkcml2ZXJzLCBhcyBhIHNsaWdo
dAo+IGV4dGVuc2lvbiB0byB0aGUgZXhpc3RpbmcgVGVncmEyMTAgc3VwcG9ydC4gVGhlbiBhZGRz
IGEgZ2VuZXJpYyBzb2MgZHRzaQo+IGluIHRoZSBzYW1lIHZlaW4gYXMgb3RoZXIgdGVncmEgYXJj
aHMuIEFuZCBmaW5hbGx5IGFkZHMgYSBiYXJlYm9uZXMKPiBkZXZpY2UgZHRzIHRvIGJlIHVzZWQg
Zm9yIGR0IGNoZWNrcy4gRnVydGhlciBkZXZpY2Ugc3VwcG9ydCB3aWxsIGJlCj4gc3VibWl0dGVk
IGluIGxhdGVyIHNlcmllcy4KPgo+IEVhcmxpZXIgaW50ZXJuYWwgcmV2aXNpb25zIG9mIHRoaXMg
c2VyaWVzIGluY2x1ZGVkIGNoYW5nZXMgdG8gdGhlIGRmbGwKPiBkcml2ZXIgdG8gc3VwcG9ydCBU
ZWdyYTIxMEIwMSwgYnV0IHRob3NlIGRpZCBub3Qgd29yayBpbiB0ZXN0aW5nLCB0aHVzCj4gd2Fz
IGRyb3BwZWQgZnJvbSB0aGUgc2VyaWVzLiBBIGJpbmRpbmdzIHVwZGF0ZSB0byBtYXRjaCBpcyBz
dGlsbCBpbiB0aGUKPiBzZXJpZXMgc28gdGhlIHNvYyBkdHNpIGNhbiBkZWNsYXJlIGEgc2VwYXJh
dGUgY29tcGF0aWJsZSBmcm9tIFRlZ3JhMjEwLAo+IHByZXZlbnRpbmcgdGhlIGRyaXZlciBmcm9t
IGF0dGVtcHRpbmcgaW5jb3JyZWN0IGluaXRpYWxpemF0aW9uIG9uCj4gVGVncmEyMTBCMDEuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBBYXJvbiBLbGluZyA8d2ViZ2VlazEyMzRAZ21haWwuY29tPgo+IC0t
LQo+IENoYW5nZXMgaW4gdjI6Cj4gLSBGaXggcGF0Y2ggMSBzdWJqZWN0Cj4gLSBBZGQgZGVzY3Jp
cHRpdmUgbmFtZSBpbiBwYXRjaCA4Cj4gLSBGaXggY29weS1wYXN0ZSBlcnJvciBpbiBwYXRjaCAx
MywgZGlzY292ZXJlZCBieSBrZXJuZWwgY2kKPiAtIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3IvMjAyNTA3MTQtdDIxMGIwMS12MS0wLWUzZjVmN2RlNWRjZUBnbWFpbC5jb20K
Pgo+IC0tLQo+IEFhcm9uIEtsaW5nICgxNik6Cj4gICAgICAgZHQtYmluZGluZ3M6IHNvYzogdGVn
cmE6IHBtYzogRG9jdW1lbnQgVGVncmEyMTBCMDEKPiAgICAgICBkdC1iaW5kaW5nczogcGh5OiB0
ZWdyYS14dXNiOiBEb2N1bWVudCBUZWdyYTIxMEIwMQo+ICAgICAgIGR0LWJpbmRpbmdzOiB1c2I6
IHRlZ3JhLXh1c2I6IERvY3VtZW50IFRlZ3JhMjEwQjAxCj4gICAgICAgZHQtYmluZGluZ3M6IHVz
YjogdGVncmEteHVkYzogRG9jdW1lbnQgVGVncmEyMTBCMDEKPiAgICAgICBkdC1iaW5kaW5nczog
dGhlcm1hbDogdGVncmE6IERvY3VtZW50IFRlZ3JhMjEwQjAxCj4gICAgICAgZHQtYmluZGluZ3M6
IGNsb2NrOiB0ZWdyYTogRG9jdW1lbnQgVGVncmEyMTBCMDEKPiAgICAgICBkdC1iaW5kaW5nczog
Y2xvY2s6IHRlZ3JhMTI0LWRmbGw6IERvY3VtZW50IFRlZ3JhMjEwQjAxCj4gICAgICAgZHQtYmlu
ZGluZ3M6IHRlZ3JhOiBEb2N1bWVudCBTaGllbGQgVFYgMjAxOQo+ICAgICAgIHBoeTogdGVncmE6
IHh1c2I6IEFkZCBUZWdyYTIwMUIwMSBTdXBwb3J0Cj4gICAgICAgdXNiOiB4aGNpOiB0ZWdyYTog
QWRkIFRlZ3JhMjEwQjAxIHN1cHBvcnQKPiAgICAgICB1c2I6IGdhZGdldDogdGVncmEteHVkYzog
QWRkIFRlZ3JhMjEwQjAxIFN1cHBvcnQKPiAgICAgICB0aGVybWFsOiB0ZWdyYTogQWRkIFRlZ3Jh
MjEwQjAxIFN1cHBvcnQKPiAgICAgICBjbGs6IHRlZ3JhOiBBZGQgVGVncmEyMTBCMDEgc3VwcG9y
dAo+ICAgICAgIGFybTY0OiB0ZWdyYTogQWRkIEJQTVAgbm9kZSBmb3IgVGVncmEyMTAKPiAgICAg
ICBhcm02NDogdGVncmE6IEFkZCBUZWdyYTIxMEIwMSBzdXBwb3J0Cj4gICAgICAgYXJtNjQ6IHRl
Z3JhOiBBZGQgc3VwcG9ydCBmb3IgTlZJRElBIFNoaWVsZCBUViBQcm8gMjAxOQo+Cj4gQXprYWxp
IE1hbmFkICgxKToKPiAgICAgICBzb2MvdGVncmE6IHBtYzogQWRkIFRlZ3JhMjEwQjAxIHN1cHBv
cnQKPgo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3RlZ3JhLnlhbWwg
ICB8ICAgIDYgKwo+ICAuLi4vYmluZGluZ3MvY2xvY2svbnZpZGlhLHRlZ3JhMTI0LWRmbGwudHh0
ICAgICAgICB8ICAgIDEgKwo+ICAuLi4vYmluZGluZ3MvY2xvY2svbnZpZGlhLHRlZ3JhMjAtY2Fy
LnlhbWwgICAgICAgICB8ICAgIDEgKwo+ICAuLi4vYmluZGluZ3MvcGh5L252aWRpYSx0ZWdyYTIx
MC14dXNiLXBhZGN0bC55YW1sICB8ICAgIDQgKy0KPiAgLi4uL2JpbmRpbmdzL3NvYy90ZWdyYS9u
dmlkaWEsdGVncmEyMC1wbWMueWFtbCAgICAgfCAgICA1ICstCj4gIC4uLi9iaW5kaW5ncy90aGVy
bWFsL252aWRpYSx0ZWdyYTEyNC1zb2N0aGVybS55YW1sIHwgICAgMiArCj4gIC4uLi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3VzYi9udmlkaWEsdGVncmEteHVkYy55YW1sIHwgICAgMiArCj4gIC4uLi9i
aW5kaW5ncy91c2IvbnZpZGlhLHRlZ3JhMjEwLXh1c2IueWFtbCAgICAgICAgIHwgICAgNCArLQo+
ICBhcmNoL2FybTY0L2Jvb3QvZHRzL252aWRpYS9NYWtlZmlsZSAgICAgICAgICAgICAgICB8ICAg
IDEgKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL252aWRpYS90ZWdyYTIxMC5kdHNpICAgICAgICAg
ICB8ICAgMTEgKwo+ICAuLi4vYm9vdC9kdHMvbnZpZGlhL3RlZ3JhMjEwYjAxLXAyODk0LTAwNTAt
YTA4LmR0cyB8ICAgMTAgKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL252aWRpYS90ZWdyYTIxMGIw
MS1wMjg5NC5kdHNpICB8ICAgNzAgKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL252aWRpYS90ZWdy
YTIxMGIwMS5kdHNpICAgICAgICB8ICAgNjQgKwo+ICBkcml2ZXJzL2Nsay90ZWdyYS9NYWtlZmls
ZSAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgIDEgKwo+ICBkcml2ZXJzL2Nsay90ZWdyYS9j
bGstdGVncmEtcGVyaXBoLmMgICAgICAgICAgICAgICB8ICAgIDMgKwo+ICBkcml2ZXJzL2Nsay90
ZWdyYS9jbGstdGVncmEyMTBiMDEuYyAgICAgICAgICAgICAgICB8IDM3NTggKysrKysrKysrKysr
KysrKysrKysKPiAgZHJpdmVycy9jbGsvdGVncmEvY2xrLXV0aWxzLmMgICAgICAgICAgICAgICAg
ICAgICAgfCAgICA1ICstCj4gIGRyaXZlcnMvY2xrL3RlZ3JhL2Nsay5jICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgICAxOSArLQo+ICBkcml2ZXJzL2Nsay90ZWdyYS9jbGsuaCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICAgIDYgKwo+ICBkcml2ZXJzL3BoeS90ZWdyYS94dXNiLXRl
Z3JhMjEwLmMgICAgICAgICAgICAgICAgICB8ICAgNDEgKwo+ICBkcml2ZXJzL3BoeS90ZWdyYS94
dXNiLmMgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgIDQgKwo+ICBkcml2ZXJzL3BoeS90
ZWdyYS94dXNiLmggICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgIDEgKwo+ICBkcml2ZXJz
L3NvYy90ZWdyYS9wbWMuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxMTcgKwo+ICBk
cml2ZXJzL3RoZXJtYWwvdGVncmEvc29jdGhlcm0uYyAgICAgICAgICAgICAgICAgICB8ICAgIDQg
Kwo+ICBkcml2ZXJzL3RoZXJtYWwvdGVncmEvc29jdGhlcm0uaCAgICAgICAgICAgICAgICAgICB8
ICAgIDEgKwo+ICBkcml2ZXJzL3RoZXJtYWwvdGVncmEvdGVncmEyMTAtc29jdGhlcm0uYyAgICAg
ICAgICB8ICAgNzggKwo+ICBkcml2ZXJzL3VzYi9nYWRnZXQvdWRjL3RlZ3JhLXh1ZGMuYyAgICAg
ICAgICAgICAgICB8ICAgMjAgKwo+ICBkcml2ZXJzL3VzYi9ob3N0L3hoY2ktdGVncmEuYyAgICAg
ICAgICAgICAgICAgICAgICB8ICAgMjUgKwo+ICBpbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3Rl
Z3JhMjEwLWNhci5oICAgICAgICAgICB8ICAgIDUgKy0KPiAgMjkgZmlsZXMgY2hhbmdlZCwgNDI2
MiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IC0tLQo+IGJhc2UtY29tbWl0OiAzNDdl
OWY1MDQzYzg5Njk1YjAxZTY2YjNlZDExMTc1NWFmY2YxOTExCj4gY2hhbmdlLWlkOiAyMDI1MDUw
OS10MjEwYjAxLWMxNTRjYTBmODk5NAo+Cj4gQmVzdCByZWdhcmRzLAo+IC0tCj4gQWFyb24gS2xp
bmcgPHdlYmdlZWsxMjM0QGdtYWlsLmNvbT4KPgo+CgpSZW1pbmRlciBhYm91dCB0aGlzIHNlcmll
cy4KCkFhcm9uCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
