Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00337D3B7E2
	for <linux-phy@archiver.kernel.org>; Mon,  8 Dec 2025 16:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Kcebw32H8VXMOrgMaK7VRFICWckWPJWd62KUwyvFoU=; b=G8BCuh6chuzinp
	gm9fGXcFOX5yVJXWg/4no3Pgr2lkL0LL+Rkoexeax7IQF25mbzWCB/ZExQOnwnUj2n7o5579rXahp
	eov10eIH+1nbNOSiMz+N2n7MH57p5/sx2i85vRg4hw4MhWrswk8NN+W5vqvY6L7L5tweoJvHZDTq3
	OB3WvYVk85WfCJluVI5HkZuhmtt4HCq15tRw+3weoCgnRClo9IN7JBWWKG6sMHkWTzNuvFyiYRwvW
	vQyDl/SBdQr86iGXB+aT0dl3Nxid/rOvm3UDDT7Q3+T7EtB0N6E+yxEYyHUVERH8BcKGRH+gOHZmf
	K4cdk2mEN/Qzsr8Huo9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSdnU-0000000DHx8-1lct;
	Mon, 08 Dec 2025 16:09:12 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSdnR-0000000DHwX-1SR8
	for linux-phy@lists.infradead.org;
	Mon, 08 Dec 2025 16:09:10 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-42e2e239ec0so2686309f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Dec 2025 08:09:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765210147; x=1765814947; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zdjba8hBGxOnTGFRvhD4ykuH5Qe1xLO/Pwcd0PhJxyk=;
        b=H8ROCltM11hE+/nvzXoO7D1ZbIJyYq2Q08h+xqQGs76usf5AdY0FI2N45THjG+2HBY
         f5p6VLRKSkcGbe4wkxxPSX36NKESRehWHId9ONMRVal3MeFSqdH8L76P5m4N2OdiGGAf
         Minq4pCZ7DeEmUNyWzLENI5ZANdlJXaKZSysgT4aH9WvJIuu+wojybwAqS/tNtuIvXuT
         oFux7a4drDMny8sPNMglm4aU0KkSFacJDbTq5fZzZTIYuDLXUYRnP4bvbu/g/gsHFk3b
         I2g0zR2nF6jxiybHylEFKaCsiPwXvRvPpcNXkhdpDLzOEUj35VwfjjGhnRuLTwsqE9vz
         9jXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765210147; x=1765814947;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Zdjba8hBGxOnTGFRvhD4ykuH5Qe1xLO/Pwcd0PhJxyk=;
        b=YIVSHc2KI5X4QIlItgiXj8aUBCqdQt4dqtojuG73DAXMWDTKgflNL9DwvuvYhwvmtX
         FqGLIUgI03tkorIkHrLNJmR3rCD08bOEFbOvqLlRyAbDwWj5ylihqEWNLF9HysQJE1hL
         nB/cmSN7ZPlaLlmgVNh5IqcZ0s/+zSpYyIevX6gUd2594nbWmQsROJGTzQjuMx/qq8ZX
         zPJW1l2+elhiFlgMvIFcLJ2Jsdz9+t9PD0Xct7O/fjOrgS7DRaGVsdJLg7oAIIVzruhZ
         wyIB5gmBBfOeCTF97nKVcCCbaFaGkpBG4atiNUNoWZL/3i3qjjBDZQMIHTicX5/Y17cs
         A/Jg==
X-Forwarded-Encrypted: i=1; AJvYcCU+BVR3HIcLnQY1G7D3CIpPINLTfg6qVtY5XDPrYMKL67J0AxReB7vZVGeV/UTvlC2bA3iYe9W8FRo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDh9xpXYNrDnFr6xXWEwtCEeXCtkDIFT4OacmHx24zRRYJ7NV1
	eAyyRsEr4mdanm0ovTqXATO93eGI413yzsdQAGLKjne00hIfLW2JDGs81KXHwrS0PZkk8U76j7h
	7mXaKr1LnfF2hmv928e9tooPYaa1m/2k=
X-Gm-Gg: ASbGncuz/G6EB38NDcbxtxS5GNJU3S1E3WL5YcWioriXCL+WrPP4H1vnSduAALy3S7R
	UkdbgGYF6wl07q1pDHA8lI+ARnARlAODw8pqhHIDQDaOxtI1MxZQTLm55NOLlFe7BZ22vhe1g/J
	OOda6cTLLSHoMMI/XILlHWGRAPh+bz05AoX5AcAjtTVSHe6ZPLbxWqph/Df8xukiAl7S7BOFhEW
	D9zeYp6I9yY1I1dDYIEzkoOxaO1V10/laGJhDtp4oVJTO9dU4p8g/C68B/JcpD3EgWgk5nHL3ch
	RvKZLRP77z7JUS5aF3tVP0lWts4=
X-Google-Smtp-Source: AGHT+IFOBf4kYlCOHQII/gMObV81xnIfGWW6V1LWfsU0I+KfwhAEK2mqEfxsYfyiN0pXHwrxrO9b8QclmlUqc870Mt4=
X-Received: by 2002:a5d:5f95:0:b0:3e9:ee54:af71 with SMTP id
 ffacd0b85a97d-42f89f1703emr8908100f8f.12.1765210147178; Mon, 08 Dec 2025
 08:09:07 -0800 (PST)
MIME-Version: 1.0
References: <20251208155019.136076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251208155019.136076-2-prabhakar.mahadev-lad.rj@bp.renesas.com> <aTb2MuGSZvp9d0Al@lizhi-Precision-Tower-5810>
In-Reply-To: <aTb2MuGSZvp9d0Al@lizhi-Precision-Tower-5810>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 8 Dec 2025 16:08:41 +0000
X-Gm-Features: AQt7F2r5YSD8A41drLddmPekNoFw0-x2T7kYVaWOfrZad_IV3a03vwBr52GNX_E
Message-ID: <CA+V-a8tuP-C_0=atz0WXtw2mqNfjsaYCkDdsQE3QwyhFWTSSJg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document TI TCAN1046
To: Frank Li <Frank.li@nxp.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aswath Govindraju <a-govindraju@ti.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_080909_407562_CD271863 
X-CRM114-Status: GOOD (  15.95  )
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

SGkgRnJhbmssCgpUaGFuayB5b3UgZm9yIHRoZSByZXZpZXcuCgpPbiBNb24sIERlYyA4LCAyMDI1
IGF0IDQ6MDHigK9QTSBGcmFuayBMaSA8RnJhbmsubGlAbnhwLmNvbT4gd3JvdGU6Cj4KPiBPbiBN
b24sIERlYyAwOCwgMjAyNSBhdCAwMzo1MDoxOFBNICswMDAwLCBQcmFiaGFrYXIgd3JvdGU6Cj4g
PiBGcm9tOiBMYWQgUHJhYmhha2FyIDxwcmFiaGFrYXIubWFoYWRldi1sYWQucmpAYnAucmVuZXNh
cy5jb20+Cj4gPgo+ID4gRG9jdW1lbnQgdGhlIFRJIFRDQU4xMDQ2IGF1dG9tb3RpdmUgQ0FOIHRy
YW5zY2VpdmVyLiBUaGUgVENBTjEwNDYKPiA+IHByb3ZpZGVzIGR1YWwgaGlnaC1zcGVlZCBDQU4g
Y2hhbm5lbHMgYW5kIGluY2x1ZGVzIFNUQjEvMiBjb250cm9sCj4gPiBsaW5lcy4KPiA+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBMYWQgUHJhYmhha2FyIDxwcmFiaGFrYXIubWFoYWRldi1sYWQucmpAYnAu
cmVuZXNhcy5jb20+Cj4gPiAtLS0KPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L3RpLHRjYW4xMDR4LWNhbi55YW1sIHwgNSArKysrLQo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSx0Y2FuMTA0eC1jYW4ueWFtbCBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvdGksdGNhbjEwNHgtY2FuLnlh
bWwKPiA+IGluZGV4IGM2ODZkMDZmNWY1Ni4uYzUzYzRmNzAzMTAyIDEwMDY0NAo+ID4gLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSx0Y2FuMTA0eC1jYW4ueWFt
bAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSx0Y2Fu
MTA0eC1jYW4ueWFtbAo+ID4gQEAgLTIzLDYgKzIzLDcgQEAgcHJvcGVydGllczoKPiA+ICAgICAg
ICAtIGVudW06Cj4gPiAgICAgICAgICAgIC0gdGksdGNhbjEwNDIKPiA+ICAgICAgICAgICAgLSB0
aSx0Y2FuMTA0Mwo+ID4gKyAgICAgICAgICAtIHRpLHRjYW4xMDQ2Cj4KPiBhY2NvcmRpbmcgdG8g
cGF0Y2gyLCB3aGljaCBpcyB0aGUgY29tcGF0aWJsZSBhcyBueHAsdGphMTA0OC4gd2h5IG5vdCBh
bGxvdwo+IHRpLHRjYW4xMDQ2IGZhbGxiYWNrIHRvIG54cCx0amExMDQ4Lgo+Cj4gU28gbmVlZG4n
dCBjaGFuZ2UgZHJpdmVyIGNvZGUuCj4KQWdyZWVkLCBJJ2xsIGRvIHRoaXMgY2hhbmdlIGFuZCBz
ZW5kIGEgdjIuCgpDaGVlcnMsClByYWJoYWthcgoKPiBGcmFuawo+ID4gICAgICAgICAgICAtIG54
cCx0amExMDQ4Cj4gPiAgICAgICAgICAgIC0gbnhwLHRqYTEwNTEKPiA+ICAgICAgICAgICAgLSBu
eHAsdGphMTA1Nwo+ID4gQEAgLTg0LDcgKzg1LDkgQEAgYWxsT2Y6Cj4gPiAgICAgICAgcHJvcGVy
dGllczoKPiA+ICAgICAgICAgIGNvbXBhdGlibGU6Cj4gPiAgICAgICAgICAgIGNvbnRhaW5zOgo+
ID4gLSAgICAgICAgICAgIGNvbnN0OiBueHAsdGphMTA0OAo+ID4gKyAgICAgICAgICAgIGVudW06
Cj4gPiArICAgICAgICAgICAgICAtIHRpLHRjYW4xMDQ2Cj4gPiArICAgICAgICAgICAgICAtIG54
cCx0amExMDQ4Cj4gPiAgICAgIHRoZW46Cj4gPiAgICAgICAgcHJvcGVydGllczoKPiA+ICAgICAg
ICAgICcjcGh5LWNlbGxzJzoKPiA+IC0tCj4gPiAyLjUyLjAKPiA+CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
