Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09D93E7717D
	for <linux-phy@archiver.kernel.org>; Sat,  7 Dec 2024 21:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSdhgtP9VQbfe3s/GxkFfTLK7tMyO11KGrXIETCTyHg=; b=BHOxEwm17X33r6
	vKKSQYRTJtNXQNRGaRbu52tgBG/TRXlnom+r03JIEz6Mwr2v6uwFfjcdjsUnES2TQ3xXJgdIRUk1a
	Z6ZCDMx6YEJmfTa3U9px31vISK8QQ8rmCBlz51QBKvB5/7Y13qSG41ZtEqw4/anSVxw4HoNXl1iUk
	5iY+rzz+UlcmTv+FhN5khvN/kKmIrKZmA24uz8bH9ODPI46QuwKdSsTlyeXpHnRcQllUPakvKEnso
	UGmrmL8vtTVusdzN6SEyGCaRfcCMjOF8zX4qSFx6TGmExQVpCUb/9HPChxJLvYl/+2hAZ7w32A/Mq
	oEqaUG/NKCO//GuUXOpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tK2Pi-00000004RLj-3H3I;
	Sat, 07 Dec 2024 21:32:34 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tK2Of-00000004RGA-3rSY
	for linux-phy@lists.infradead.org;
	Sat, 07 Dec 2024 21:31:32 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-5f29db2614eso326151eaf.0
        for <linux-phy@lists.infradead.org>; Sat, 07 Dec 2024 13:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733607088; x=1734211888; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dfKGW0QrWsaa6qvorIS98f1mLt8WgB4RHKxY9T6NNQ0=;
        b=nBlDmAr+Tl7h0E5VeyeiDSN/NwOpWdXMZUK08pSTnTif/mIC7W84vDFWiPyLqh2HX/
         5wEH6keb2eSle1fhXwLB4xGrD9KMOR4w1RUOX0VMic/OllOVgJYEIIU3oqoATqsfieRn
         KKO+AC9YXUzb2sa2CfRH3ThTkcSwh/SygxKsmq98b39EYBbUlG1GMwnGhGC4GLN50QuG
         9+l3q4V4/9oN3hzMi1cDzrT8THx6kl4CaCFsBncM8bbPaavuqdNmnWGEElZ2NrQFz6Uv
         6QZ56w93HMHHgYhgAjcXJajo8d6jZPHmdGx1zM23ur6g6PrF0rRGJEwF8XSOhhoAjLQL
         iBXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733607088; x=1734211888;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dfKGW0QrWsaa6qvorIS98f1mLt8WgB4RHKxY9T6NNQ0=;
        b=eVyGv3GqBWaKFkAgJjO+m17b1QZA4nuER+bWRskJ8wi8s5lD2B+MKmVk1WtkYAUGUC
         09wPVXJ9EZZNmNwduqB2xQfxAkIv1Tx6UMbL/FYL6/Yh2S3rkoyeo/7klyJ23fXZ/GYx
         dPmxxiqxGrLAB/t2XphUPnzWu5QYBmSz0PzZ4c9PxW871sPsyAB+jSW9ustuLVArJ+PE
         iOT4JiNJGGMoCL3W+JJ6r2auDs7U67/GUN4gnZ/rBQPuH5O8LloDoaonl+s3gUB6BH6E
         /xtZcy1IKr+Bh/mAPquWekI795IBIlfEqQEAHCrdCzsYzczS9qGpwLVT3YaUm/fLe60i
         QXHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYH2JntIaK+bVJ234x1yMTWV9C4/h4MuTOfHp8d2hmpmhu8bCEu9lol6Dy6S/uyQo9z6DWAQqY2GA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrP6Ugr/UYErIYBMk6Bfpp75CQpLHr7dz0TiyAH/sj2G/x7o+g
	AncK7CVI9WC4en++o04mBb21IligWslP67AnK9K1dBWDDPsepFVx/dL/LzaDZJO1vkCGSHz4k2w
	FAq1hxbzdGHmLfZK1JJc5nD0+l2HXQ9S2TfavfA==
X-Gm-Gg: ASbGncsbAtI2QvQwRyM5kKfspEGskwhNh4TzoW6rn0F8DpCWcCvBBQwmAQgXN78XCC1
	RBKnUvSj2oN2k0pLXhXslaA2rDYyIaW0=
X-Google-Smtp-Source: AGHT+IHrxIKj+TInrHyVvrustF8TDSTRjzN9vK1a1fqIMmmjrvizhO/kVBzPl/ZHpL1kwxUVz6dUbaTqxj9Qq62lNHQ=
X-Received: by 2002:a4a:b604:0:b0:5eb:5eff:afbb with SMTP id
 006d021491bc7-5f27737f2a8mr7037701eaf.1.1733607088103; Sat, 07 Dec 2024
 13:31:28 -0800 (PST)
MIME-Version: 1.0
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <20241206-gs101-phy-lanes-orientation-phy-v4-6-f5961268b149@linaro.org>
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-6-f5961268b149@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sat, 7 Dec 2024 21:31:17 +0000
Message-ID: <CADrjBPoZqbAM=2zOdgXD_dTrgh-J7yE+OX_JSVJ42Lmzb-DPEw@mail.gmail.com>
Subject: Re: [PATCH v4 6/7] phy: exynos5-usbdrd: subscribe to orientation
 notifier if required
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241207_133129_978024_6347A6C4 
X-CRM114-Status: GOOD (  23.45  )
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

SGkgQW5kcsOpLAoKRmlyc3RseSwgdGhhbmtzIGZvciBhbGwgeW91ciB3b3JrIGdldHRpbmcgVVNC
IG9uIFBpeGVsIDYgLyBnczEwMQp3b3JraW5nIHVwc3RyZWFtIDopCgpPbiBGcmksIDYgRGVjIDIw
MjQgYXQgMTY6MzEsIEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+IHdy
b3RlOgo+Cj4gZ3MxMDEncyBTUyBwaHkgbmVlZHMgdG8gYmUgY29uZmlndXJlZCBkaWZmZXJlbnRs
eSBiYXNlZCBvbiB0aGUKPiBjb25uZWN0b3Igb3JpZW50YXRpb24sIGFzIHRoZSBTUyBsaW5rIGNh
biBvbmx5IGJlIGVzdGFibGlzaGVkIGlmIHRoZQo+IG11eCBpcyBjb25maWd1cmVkIGNvcnJlY3Rs
eS4KPgo+IFRoZSBjb2RlIHRvIGhhbmRsZSBwcm9ncmFtbWluZyBvZiB0aGUgbXV4IGlzIGluIHBs
YWNlIGFscmVhZHksIHRoaXMgY29tbWl0Cj4gbm93IGFkZHMgdGhlIG1pc3NpbmcgcGllY2VzIHRv
IHN1YnNjcmliZSB0byB0aGUgVHlwZS1DIG9yaWVudGF0aW9uCj4gc3dpdGNoIGV2ZW50Lgo+Cj4g
Tm90ZSB0aGF0IGZvciB0aGlzIGFsbCB0byB3b3JrIHdlIHJlbHkgb24gdGhlIFVTQiBjb250cm9s
bGVyCj4gcmUtaW5pdGlhbGlzaW5nIHVzLiBJdCBzaG91bGQgaW52b2tlIG91ciAuZXhpdCgpIHVw
b24gY2FibGUgdW5wbHVnLCBhbmQKPiBkdXJpbmcgY2FibGUgcGx1ZyB3ZSdsbCByZWNlaXZlIHRo
ZSBvcmllbnRhdGlvbiBldmVudCBhZnRlciB3aGljaCB3ZQo+IGV4cGVjdCBvdXIgLmluaXQoKSB0
byBiZSBjYWxsZWQuCj4KPiBBYm92ZSByZWluaXRpYWxpc2F0aW9uIGhhcHBlbnMgaWYgdGhlIERX
QzMgY29udHJvbGxlciBjYW4gZW50ZXIgcnVudGltZQo+IHN1c3BlbmQgYXV0b21hdGljYWxseS4g
Rm9yIHRoZSBEV0MzIGRyaXZlciwgdGhpcyBpcyBhbiBvcHQtaW46Cj4gICAgIGVjaG8gYXV0byA+
IC9zeXMvZGV2aWNlcy8uLi4vMTExMTAwMDAudXNiL3Bvd2VyL2NvbnRyb2wKPiBPbmNlIGRvbmUs
IHRoaW5ncyB3b3JrIGFzIGxvbmcgYXMgdGhlIFVEQyBpcyBub3QgYm91bmQgYXMgb3RoZXJ3aXNl
IGl0Cj4gc3RheXMgYnVzeSBiZWNhdXNlIGl0IGRvZXNuJ3QgY2FuY2VsIC8gc3RvcCBvdXRzdGFu
ZGluZyBUUkJzLiBGb3Igbm93Cj4gd2UgaGF2ZSB0byBtYW51YWxseSB1bmJpbmQgdGhlIFVEQyBp
biB0aGF0IGNhc2U6Cj4gICAgICBlY2hvICIiID4gc3lzL2tlcm5lbC9jb25maWcvdXNiX2dhZGdl
dC8uLi4vVURDCj4KPiBOb3RlIHRoYXQgaWYgdGhlIG9yaWVudGF0aW9uLXN3aXRjaCBwcm9wZXJ0
eSBpcyBtaXNzaW5nIGZyb20gdGhlIERULAo+IHRoZSBjb2RlIHdpbGwgYmVoYXZlIGFzIGJlZm9y
ZSB0aGlzIGNvbW1pdCAobWVhbmluZyBmb3IgZ3MxMDEgaXQgd2lsbAo+IHdvcmsgaW4gU1MgbW9k
ZSBpbiBvbmUgb3JpZW50YXRpb24gb25seSkuIE90aGVyIHBsYXRmb3JtcyBhcmUgbm90Cj4gYWZm
ZWN0ZWQgZWl0aGVyIHdheS4KPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRy
ZS5kcmFzemlrQGxpbmFyby5vcmc+CgpSZXZpZXdlZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIu
Z3JpZmZpbkBsaW5hcm8ub3JnPgpUZXN0ZWQtYnk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZm
aW5AbGluYXJvLm9yZz4KCk5vdGVzIG9uIHRlc3Rpbmc6CgpJIHRlc3RlZCB0aGlzIHNlcmllcyB3
aXRoIHRoZSBjb3JyZXNwb25kaW5nIERUIHVzaW5nIGEgUGl4ZWwgNiBkZXZpY2UKd2l0aCAyIGRp
ZmZlcmVudCBVU0IgaHVicyBhbmQgYWxzbyBwbHVnZ2luZyBkaXJlY3RseSBpbnRvIG15IGxhcHRv
cC4KSSd2ZSB0cmllZCB2YXJpb3VzIGNvbWJpbmF0aW9ucyBvZiBwbHVnZ2luZyAvIHVucGx1Z2dp
bmcgZnJvbSBib3RoCmVuZHMgb2YgdGhlIFVTQiBjYWJsZSBhbmQgY2hhbmdpbmcgY2FibGUgb3Jp
ZW50YXRpb24uIFdpdGggdGhlIGxhdGVzdApzZXJpZXMgdGhlIGRpc2Nvbm5lY3QvcmVjb25uZWN0
IGFsd2F5cyBzZWVtcyByb2J1c3RseSBkZXRlY3RlZCBhbmQKUGl4ZWwgaXMgZW51bWVyYXRlZCBh
cyBhIFVTQiBkZXZpY2UgYnkgdGhlIGhvc3QsIGFkYiBjb25uZWN0aW9uIHRvIHRoZQpwaG9uZSBp
cyBwb3NzaWJsZSBldmVuIHdpdGggdGhlIGNhYmxlIG9yaWVudGF0aW9uIGNoYW5naW5nIGJldHdl
ZW4KZGlzY29ubmVjdC9yZWNvbm5lY3QuCgpPbmUgdGhpbmcgSSBkaWQgbm90aWNlIGR1cmluZyB0
ZXN0aW5nIGlzIHRoYXQgaW4gb25lIGNhYmxlIG9yaWVudGF0aW9uClBpeGVsIGlzIGRldGVjdGVk
IGFzIGEgYFN1cGVyU3BlZWQgVVNCIGRldmljZWAgYnkgdGhlIGhvc3QgYW5kIGluIHRoZQpvdGhl
ciBjYWJsZSBvcmllbnRhdGlvbiBpdCBpcyBkZXRlY3RlZCBhcyBhIGBoaWdoLXNwZWVkIFVTQiBk
ZXZpY2VgLgpXaGljaCBzdWdnZXN0cyB0aGVyZSBpcyBzdGlsbCBhIGxhdGVudCBidWcgaW4gdGhl
IHBoeQpyZS1jb25maWd1cmF0aW9uLiBBbHRob3VnaCBJIHRoaW5rIGl0IGlzIGZpbmUgdG8gZml4
IHRoaXMKaW5jcmVtZW50YWxseSwgYXMgcHJpb3IgdG8gdGhpcyBzZXJpZXMgdGhlIG90aGVyIGNh
YmxlIG9yaWVudGF0aW9uCmRpZG4ndCB3b3JrIGF0IGFsbC4KCkkganVzdCB0ZXN0ZWQgbXkgcGVy
c29uYWwgUGl4ZWwgNiBydW5uaW5nIHRoZSBkb3duc3RyZWFtIHByb2R1Y3Rpb24KZHJpdmVycywg
YW5kIHRoYXQgaXMgZGV0ZWN0ZWQgYXMgYSBgU3VwZXJTcGVlZCBVU0IgZGV2aWNlYCBpbiBib3Ro
CmNhYmxlIG9yaWVudGF0aW9ucy4KClRoYW5rcywKClBldGVyCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
