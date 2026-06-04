Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42216CD6E4A
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 09:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vsa5LGx628KlNN1Bh6UfgzQaCOO5jc7+Ew8XnLT3YnA=; b=csFglLWBKoNHJS
	CAcnTWoQ/yTw3JfsQbd9wt5xNOX55RHc9Gea1YwEnS56883vOVLH3cNLaYfA5xR8he30slnpxBCQO
	bg8Z+qQVcpr5Tq4j3QzrIOPL6ESpSGZTefaLprZAldpp4R7RvftxJNcFQ7gUf/pnl0Vdk6YHIYosY
	bQsyvZ6z73tzFNbpxlKffKA8vI8V9I0ecgpH89oJ1hJDHPKklO12MFKvQjrFm4TTIl8SmN8CTxUV5
	0QV78o3zeYLMwP1+qu4OobAEgIORpJS7MN5vKInO98s0wgkPu0E5ECkrAWAzXVZvFWJRDNyMdx9rL
	CQnL9/5RG0vN3v3nuE5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV4Fv-0000000GUGi-3VO5;
	Thu, 04 Jun 2026 09:20:51 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV4Ft-0000000GUFH-2qT6
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 09:20:50 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-3968b1e521fso546471fa.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 02:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780564847; x=1781169647; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mmJhxd6Spss8k56OkvnPH6btFz24l1uTr3gxaOR02sU=;
        b=WmMgu6VGuQtqQVZNrUoW7j6IUI48yDDABjQqo+2l2NsqoUkNzAhxVQyzagSJD5mDwr
         arH87BK9pFq+jZLIXU5JpRdqW6oFzbxPnrpY7/jKAAZtNr7FWnSZ8NiC4XDc1a5fL4T7
         SwddXN0lvAdNqcSbInRB/xJqNEbc5ziYO/AYWhOQwip1mKM3AhicL0Ppuf9f+oYuTqAB
         yLkyhhuR39DBnsYgjw7y764Gdvt8LEH7C2/LpQiEPBGw4WZI8A8v99MXqot6667bq1jW
         JirLVIAH34zK2rA1DktaTFAUHiCGgf30JgqKkMsFqqTDMC4NyBUDtxDh60l+TjfxezhN
         hiFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780564847; x=1781169647;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mmJhxd6Spss8k56OkvnPH6btFz24l1uTr3gxaOR02sU=;
        b=a3KuscL4HMqzIWJarMieBrnip8iAkXKmcTMNayJC6in0NkyuwKNiUi4ht20IrM6lEH
         HKEs7cKAnJQTyXQrc0HCN+LZWUbNG9CvU3QxGAvmXBjzOfATv1yZPltcLvERHsl2c/fr
         v9a90QH6e9iVi1YVaffQl4BJh5oXaJ5qGZPAPsXpFnaiWJJf7ASoKe74VTePkK+XzQcR
         iYGXeMWROPAxvKj9dHfPP3b/vvQBxdEA0WUtxhwZklfW4+K5hlMkkR5B3ACO22YueVoS
         M4aBrrujhMt2xCkrmpLdyUvFS6/B52ca4l0hVUBlopygXjdBen1FsGXwOmmBV/l4Tf2z
         3ORQ==
X-Forwarded-Encrypted: i=1; AFNElJ8dInSmpXWHTglBPWqHyEuP9LEVRakGxLMOFyhWdAlf65sOHt2AVt9ROrsaW8JroRXoeUJRgyatfvU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+OZveUP9F1ALNbYaiKABWvOQJxMbLFncMftcMGRHD3hU+q3vG
	NFhJsBbe/DZWl6gfuAIxjCA2/Nt6D6a1FW9Vd/fg+lkD0U3Wqzdon8CqLZSbhqWTZdQ=
X-Gm-Gg: Acq92OHhf0qM6sjTGQy8VaN3tgr096QgyZb0IceCAUftID09n54d5GqO31Xaab9c6gf
	es3wN7fJcDL4DSUTXJaQoy8X9kv3ehV88fucoiT6e/8QPjtFedJcXiH33wJuij2X76rG8oPGabS
	ob+dR8YiYprAd4XvE2051y0kyTo/b2uiqj0+mXbjm5XjMkNn+KYKvqcymJCurrFxHk4eFbEFg1z
	Pj66QRe8gzQs55qUjha4CnKwrgJqKKHg4WTPthzHkx/ST2Y9ebl7sLjXtkOVZT1D6Nzy/QO826Z
	V3VqdO7NrjcQ6iECpAqtZng5mV47ZaIYFMRE1lsyJ+aD2nJRGo2rI9XGFAUJOOrDRFfhFxl92qR
	UEB3uyJBgZcNY36TFnH0RB1mDcX2Sgj1VPvP2SDpoaQf6bhQvLKtCg7E2DRuHZpXgNgi/amnf45
	5qdstaPm2HNTqdEKaK2YKM8e/Wo46TDyhcaunvM5RnI/eErEHuVQpbMGYVjP76jT/jTOPvZpWYu
	kFiaopXZmS4R9xUllvQb2hUfWk=
X-Received: by 2002:a05:651c:2108:b0:393:c17d:9cfa with SMTP id 38308e7fff4ca-396bf225a0fmr2871101fa.5.1780564847147;
        Thu, 04 Jun 2026 02:20:47 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-396ac2d503fsm14959581fa.34.2026.06.04.02.20.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2026 02:20:46 -0700 (PDT)
Message-ID: <9ab0d8f4-e1b6-415b-976b-721ab7a29194@linaro.org>
Date: Thu, 4 Jun 2026 12:20:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
 <478df3ed-d4ef-43aa-bb84-e2075798542b@kernel.org>
 <ec98ef2f-02b4-4086-8b4b-07b6953dbd20@oss.qualcomm.com>
 <514cf213-5778-45e1-8d70-d3fe27991fcc@oss.qualcomm.com>
 <7JNJ4dUNz4ennJ5dkzhfLSuVo72JpfZAbprICPRqlRYnSzVDJw6x3h-1nESd_PK-3us9f1V3qOiLiywsTqP8vQ==@protonmail.internalid>
 <f01c0e22-4e5c-44e7-9ea4-4bc8d53aea2e@linaro.org>
 <29e8491f-20e8-4082-8943-66bee7e3af1d@kernel.org>
 <5ca611b1-0663-4975-bd56-b1343851e5fd@linaro.org>
 <83c12dc5-fcb4-4089-9917-9f0fcc4f940d@linaro.org>
 <1b107aca-a857-4e58-a763-39c82af67747@linaro.org>
 <67b6f6ae-bfca-4afd-adfb-6ec1741105d8@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <67b6f6ae-bfca-4afd-adfb-6ec1741105d8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_022049_763175_7CF8D37D 
X-CRM114-Status: GOOD (  30.67  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gNi80LzI2IDEyOjA2LCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+IE9uIDA0LzA2LzIwMjYg
MDk6NDYsIFZsYWRpbWlyIFphcG9sc2tpeSB3cm90ZToKPj4gT24gNi80LzI2IDAzOjMwLCBCcnlh
biBPJ0Rvbm9naHVlIHdyb3RlOgo+Pj4gT24gMDQvMDYvMjAyNiAwMTowNywgVmxhZGltaXIgWmFw
b2xza2l5IHdyb3RlOgo+Pj4+IE9uIDYvNC8yNiAwMDoxOCwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90
ZToKPj4+Pj4gT24gMDMvMDYvMjAyNiAyMTo1MSwgVmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+
Pj4+Pj4+IEFjdHVhbGx5LCBvbmUgbW9yZSB0aGluZywgV2h5IGlzbid0IFRJVEFOIFRPUCBHRFND
IGhlcmU/Pj4+PiArCj4+Pj4+PiBJZiBDU0lQSFlzIGFyZSB0cnVlIHN1YmRldmljZXMgdW5kZXIg
dGhlIHVtYnJlbGxhIENBTVNTIGRldmljZSBhbmQKPj4+Pj4+IHdlbGwKPj4+Pj4+IGRlc2NyaWJl
ZCBhcyBzdWJub2RlcywgdGhlbiBsaWtlbHkgbm9uZSBvZiBwb3dlciBkb21haW5zIGFyZSBuZWVk
ZWQKPj4+Pj4+IHRvIGJlCj4+Pj4+PiByZXBlYXRlZGx5IGRlc2NyaWJlZCBpbiB0aGUgY2hpbGRy
ZW4gZGV2aWNlIG5vZGVzLCBzaW5jZSB0aGlzCj4+Pj4+PiBpbmZvcm1hdGlvbgo+Pj4+Pj4gY2Fu
IGJlIG9idGFpbmVkIGZyb20gdGhlIHBhcmVudCBkZXZpY2UgYnkgdGhlIGRyaXZlci4KPj4+Pj4+
Cj4+Pj4+PiBUZWNobmljYWxseSAncG93ZXItZG9tYWlucycgcHJvcGVydHkgY2FuIGJlIHNhZmVs
eSByZW1vdmVkLCBJIGJlbGlldmUuCj4+Pj4+Cj4+Pj4+IFRoZSBwb2xpY3kgaXMgdG8gZGVzY3Jp
YmUgdGhlIHBvd2VyLWRvbWFpbiBkZXBlbmRlbmN5IGZ1bGx5IHNpbmNlIERUCj4+Pj4+IGRlc2Ny
aWJlcyBoYXJkd2FyZSBub3Qgc29mdHdhcmUgYXJjaGl0ZWN0dXJlLgo+Pj4+Cj4+Pj4gSXQgYnJp
bmdzIG5vIGNvbnRhcmRpY3Rpb24gdG8gdGhlIHN0YXRlbWVudCBJJ3ZlIGdpdmVuIGFib3ZlLCB0
aGUgbmVlZGVkCj4+Pj4gcG93ZXIgZG9tYW5zIHdpbGwgYmUgcHJvcGVybHkgZGVzY3JpYmVkIGlu
IHRoZSBwYXJlbnQgZGV2aWNlLCBhbmQgdGhlcmUKPj4+PiBpcyBubwo+Pj4+IHNlbnNlIHRvIHJl
cGVhdCB0aGUgcHJvcGVydGllcyBpdCBhZ2FpbiBhbmQgYWdhaW4gaW4gZXZlcnkgY2hpbGQKPj4+
PiBzdWJkZXZpY2UuCj4+Pj4KPj4+Pj4gQWxzbyBmb3IgYSB2ZXJ5IHByYWN0aWNhbCByZWFzb24g
YSBzdWItZGV2aWNlcyBjYW4gcHJvYmUvcnVuCj4+Pj4+IGFzeW5jaHJvbm91c2x5IG9mIHRoZSBw
YXJlbnQgZGV2aWNlIGJlaW5nIGFjdGl2ZSBzbyBpbiBmYWN0IHdlIGRvIG5lZWQKPj4+Pj4gdG8g
ZGVzY3JpYmUgdGhlIFBEcyBmdWxseS4KPj4+Pgo+Pj4+IEluIG9wcG9zaXRlIHRvIHRoZSBhYm92
ZSB0aGlzIG9uZSBpcyBwcmVjaXNlbHkgYSBzb2Z0d2FyZSBjZW50cmljCj4+Pj4gYXJndW1lbnQs
Cj4+Pj4gd2hpY2ggc2hvdWxkIGJlIGV4Y2x1ZGVkIGZyb20gdGhlIGNvbnNpZGVyYXRpb24sIGFz
IHdlbGwgaXQncyBub3QgYSBiaWcKPj4+PiBkZWFsIHRvIG1ha2UgYSBwcm9wZXIgYXN5bmMgaW5p
dGlhbGl6YXRpb24sIHJlbW92aW5nIGV4Y2Vzc2l2ZSBkdAo+Pj4+IHByb3BlcnRpZXMKPj4+PiBp
cyB3b3J0aCBpdC4KPj4+Pgo+Pj4KPj4+IFJpZ2h0IGxvb2sgZm9yZ2V0IGFib3V0IHRoYXQuCj4+
Pgo+Pj4gLSBEVCByZXF1aXJlcyB5b3UgdG8gZGVzY3JpYmUgeW91ciBoYXJkd2FyZS4gWW91J3Jl
IG5vdCBlbnRpdGxlZCB0byBoYXZlCj4+PiAgwqDCoMKgIHNvbWUgb3RoZXIgZGV2aWNlIHZvdGUg
Zm9yIGEgY2xvY2sgb3IgYSBQRCB5b3UgcmVseSBvbi4KPj4+Cj4+Cj4+IEFib3ZlIGFyZSB0d28g
dW5jb3JyZWxhdGVkIGJldHdlZW4gZWFjaCBvdGhlciBzZW50ZW5jZXMuCj4+Cj4+IEEgZGV2aWNl
ICgiY29uc3VtZXIiKSBjYW4gYXNrIGFub3RoZXIgZGV2aWNlICgicHJvdmlkZXIiKSB0byBiZWhh
dmUgaW4KPj4gb25lIG9yIGFub3RoZXIgd2F5LCB0aGlzIGlzIHRoZSBvbmx5IHBvc3NpYmxlIGFu
ZCB0aHVzIG5hdHVhbGx5IHNlbGVjdGVkCj4+IHN5c3RlbSBkZXNpZ24sIGFuZCBub3RoaW5nIGJl
aGluZCBpdCB3YXMgYXNrZWQuIFRoZXJlIGlzIG5vIGp1c3RpZmljYXRpb24KPj4gZm9yIHRoZSBw
cm9wb3NlZCBmbG9vZCBvZiBtdWx0aXBseSByZXBlYXRlZCBkYXRhLCBpdCdzIGF2b2lkYWJsZS4K
PiAKPiBDQU1TUyBvciByYXRoZXIgdGhlIGNvbXBvbmVudHMgb2YgQ0FNU1MgbW9kZWxsZWQgaW4g
dGhlIGN1cnJlbnQgbm9kZSwKPiBpcy9hcmUgbm90IHRoZSBwcm92aWRlciBvZiB0aGUgR0RTQ3Mg
b3IgdGhlIHBvd2VyLWRvbWFpbnMsIGl0L3RoZXkgYXJlCj4gY29uc3VtZXJzIHRoZW1zZWx2ZXMg
ZnJvbSBDQU1DQy4KCldlbGwsIHRoaXMgaXMgdGhlIGFyZ3VtZW50IGFib3V0IHNvZnR3YXJlLCBh
bmQgc29mdHdhcmUgY2FuIGJlIGNoYW5nZWQuCgo+IFRoZSBwcm9kdWNlci9jb25zdW1lciBtb2Rl
bCBpcyBDQU1DQyB0byBjb21wb25lbnRzIHdpdGhpbiB0aGUgQ2FtZXJhCj4gYmxvY2suIFNvbWUg
Y29tcG9uZW50cyBkZXBlbmQgb24gc2F5IE1YQSwgTVhDLCBzb21lIGRvIG5vdC4gTm90aGluZyBp
bgo+IENBTVNTIGl0c2VsZiBpcyBhIHBvd2VyLWRvbWFpbiBwcm92aWRlci4KPj4+ICDCoMKgwqAg
VGhhdCdzIGV4YWN0bHkgdGhlIHR5cGUgb2YgZG93bnN0cmVhbSBzaG9ydCBjdXQgd2UgYXJlIHRy
eWluZyB0byB6YXAuCj4+Pgo+Pj4gLSBJbiBvdXIgY2FzZSB3ZSBhbHNvIG5lZWQgdG8gdm90ZSBv
biBQRHMgaW5kaXZpZHVhbGx5IHdoZW4gdGhlIFBIWQo+Pj4gIMKgwqDCoCBpcyBhY3RpdmUuCj4+
Pgo+Pj4gSW4gZXh0cmVtaXMgc2F5IHdlIGFyZSBvbmx5IHJ1bm5pbmcgdGhlIFRQRyB0aGVuIHdl
IGhhdmUgbm8gcmVhc29uIHRvCj4+PiB2b3RlIGZvciBDU0lQSFkgc3BlY2lmaWMgcmFpbHMgb3Ig
b3BlcmF0aW5nIHBvaW50cyBpbiB0aGUgcGFyZW50IGRldmljZS4KPj4KPj4gU28sIFRQRyBzaGFs
bCBjb21tdW5pY2F0ZSB3aXRoIENBTVNTLCB0aGVyZSBpcyBubyBDU0lQSFkgaW4gdGhlIGVxdWF0
aW9uLgo+IAo+IFJpZ2h0IGJ1dCBpdCB3b3VsZCBiZSBpbmFwcHJvcHJpYXRlIHRvIGVuYWJsZSBh
bGwgb2YgdGhlIFBEcyBmb3IgYWxsIG9mCj4gdGhlIGNvbXBvbmVudHMgaW4gdGhlIENBTVNTIGJs
b2NrIHdoZW4gd2UgY2FuIGRvIHNvIG1vcmUgZ3JhbnVsYXJseS4KCldoZW5ldmVyIGl0IGlzIGFj
dHVhbGx5IG5lY2Vzc2FyeSwgaXQgc2hvdWxkIGJlIHBvc3NpYmxlIHRvIHNwbGl0IFBEcyBpbnRv
CmdlbmVyaWMvcGFyZW50IGFuZCBzdWJkZXZpY2Ugc3BlY2lmaWMgZ3JvdXBzLCBpdCdzIGEgcGFy
dCBvZiBzb2Z0d2FyZQppbXBsZW1lbnRhdGlvbi4gSW4gc29tZSBjYXNlcyB0aGVyZSBtaWdodCBi
ZSBubyBuZWVkIHRvIGRlZmluZSBhbnkgY2hpbGQKc2lkZSBQRHMsIGxpa2VseSBDU0lQSFkgZmFs
bHMgaW50byB0aGlzIGNhdGVnb3J5LgoKPiBJZiB5b3UgZHJpdmUgdGhlIENTSUQgd2l0aCBhIFRQ
RyB5b3Ugc2hvdWxkbid0IGJlIHZvdGluZyBmb3IgTVhBIG9yIE1YQwo+IHNpbmNlIHRoZXNlIGFy
ZSBQRHMgcmVsYXRlZCB0byB0aGUgQ1NJUEhZIG9ubHkgYW5kIFRQRyBhbmQgQ1NJUEhZIGRvIHRo
ZQo+IHNhbWUgdGhpbmcgZnJvbSB0aGUgQ1NJRCBwZXJzcGVjdGl2ZSAtIGlucHV0IGRhdGEuCj4g
Cj4+Cj4+PiBXZSBjb3VsZCBtYWtlIHRoZSBwYXJlbnQgcG93ZXItZG9tYWluIGFyZ3VtZW50IGZv
ciBDQU1TUyBhbmQgQ0NJIGJ1dCB3ZQo+Pj4gaGF2ZSBUSVRBTl9UT1BfR0RTQyBpbiBDQ0kgc3Bl
Y2lmaWNhbGx5IGJlY2F1c2Ugd2UgaGF2ZSB0byBtb2RlbCB0aGUKPj4+IGhhcmR3YXJlIC0gaW5j
bHVkaW5nIHRoZSBQRHMgZm9yIHRoYXQgZGV2aWNlLgo+Pgo+PiBDQ0kgaXMgbm90IGRlc2NyaWJl
ZCBhcyBhIGNoaWxkIG9mIENBTVNTLCBoZXJlIHRoZSBzaXR1YXRpb24gaXMgZGlmZmVyZW50Lgo+
IAo+IENDSSBwcm9iYWJseSBfc2hvdWxkXyBiZSBhIGNoaWxkIG9mIENBTVNTIGdpdmVuIHRoZSBk
ZXNpZ24gd2UgYXJlIGdvaW5nCj4gZm9yIGhlcmUuCj4gCj4gTGVhdmluZyB0aGF0IGFzaWRlIGl0
IGRvZXNuJ3QgbWF0dGVyIGlmIGEgbm9kZSBhcHBlYXJzIGFzIGEgY2hpbGQgbm9kZQo+IG9yIGEg
cGVlciBub2RlIC0gdGhlIERUIHNob3VsZCBkZXNjcmliZSB0aGUgaGFyZHdhcmUgc2V0dXAuCgpJ
ZiBhIG5vZGUgaXMgY2hpbGQgb3IgYSBzaWJsaW5nIGlzIGEgaGFyZHdhcmUgZGVzY3JpcHRpb24s
IGRpZmZlcmVudApoYXJkd2FyZSBkZXNjcmlwdGlvbnMgYnJpbmcgZGlmZmVyZW50IGR0IHByb3Bl
cnRpZXMsIHRoaXMgaXMgbm9ybWFsLgoKPiBJIGNhbid0IGltYWdpbmUgYSBwYXRjaCB0aGF0IHdv
dWxkIHJlbW92ZSBhIHBvd2VyLWRvbWFpbiBmcm9tIGEgZGV2aWNlCj4gYmVpbmcgYWNjZXB0ZWQg
c2ltcGx5IGJlY2F1c2UgdGhlIG5vZGUgYmVpbmcgbW92ZWQgaXMgZXhwcmVzc2VkIGFzIGEKPiBj
aGlsZCBvZiBhbm90aGVyIG5vZGUuCgpJIHN0cm9uZ2x5IGJlbGlldmUgZXZlcnkgZHQgYmluZGlu
ZyBkZXNjcmliaW5nIGFjdHVhbCBoYXJkd2FyZSB3aWxsIGZpbmQKaXRzIHdheSB0byBiZSBpbXBs
ZW1lbnRlZCBpbiBzb2Z0d2FyZSBpbiBhIHByb3BlciB3YXksIGl0IHNob3VsZCBiZSBkb2FibGUu
Cgo+Pj4gSWYgdG9tb3Jyb3cgd2UgcHV0IENDSSBhcyBhIHN1Yi1kZXZpY2Ugb2YgdG9wLWxldmVs
IENBTVNTLCB0aGF0IHdvbid0Cj4+PiBuZWdhdGUgdGhlIG5lZWQgdG8gaW5jbHVkZSB0aGF0IEdE
U0MuCj4+Cj4+IE9mIGNvdXJzZSBpbiB0aGlzIGNhc2UgYSBwaGFuZGxlIHRvIFRpdGFuIEdEU0Mg
d2lsbCBiZSBtYXJrZWQgYXMgb2Jzb2xldGUKPj4gb3IgdW51c2VkIGZvciBDQ0ksIG5vIHByb2Js
ZW0gaGVyZS4KPj4KLS0gCkJlc3Qgd2lzaGVzLApWbGFkaW1pcgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
