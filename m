Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10BE8C27C77
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 15:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQtmOX/6tvb8sqvncGT61zkEFaHjKTkQLrw4WqCykes=; b=q9rpI/+mGaK2I+
	HV5eInVTC5SQfC1AB69oRElglXEOZQGqw75lo88/ecsIMFaDIS5cC1EV38EyAqhITqJEw7H8hkqqS
	23P7ImKIlLfNcE3mvL00u+aYdxHYY0XiWmc3PNnO+z9XBboCtoOBJZcDF7G95YkZSMNumYTra9zVB
	0GNYwwbanigFvDd5Df51O3C9HSzGDKd/MaBI0aPAfh8Qo9ieq0YybmkGOb/RBBS84jefkOWWwmHur
	St5vtpTYi3wFUkBEDee3bx3qDnM7L+7WaT6YmY25B+4Syw+MnpiSo+s9xQtEcA2JqQ1TnPXUwJVpP
	81drWabgp6kQvotVsjBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHQLl-0000000DGkH-2rJP;
	Wed, 12 Jun 2024 15:57:25 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHQLh-0000000DGhd-3FT0
	for linux-phy@lists.infradead.org;
	Wed, 12 Jun 2024 15:57:23 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-35f225ac23bso57781f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 12 Jun 2024 08:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718207840; x=1718812640; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tFbSRsIQaGUlhWt/inT+U+/jw1j2uBcqaGXsCKApSs0=;
        b=kn+2pA8gd29UuyZPFDBYez+Gr8hFkrgGTk4JXwFZoyen3OkbtnGs++hlVS4ozmNAUb
         84FVke4TR0/K2m4aPOjXxjXt5SR1rnqJZXwl3XS2FzRBwrb9HMDeuXtLmaPkhtNowtlm
         CdMxEcptlTaIPF8Bxw0gN4uY1EutHPV78q+qe6mxvtJACWS+N252Bww+CYfhXGgAAKQc
         rhxlwNcdYL4tRVmBAgvHIvgUUdXYngbhongYz6+e1mG9UH1RObLqjZrxNK+RdKgUsye8
         ViPKNKkRI7websCKeaKXFoxfpFQwmVDk1LWRlLS4kudNZpeWYtHTVnvPKaRHHxBkNKzH
         jz8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718207840; x=1718812640;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tFbSRsIQaGUlhWt/inT+U+/jw1j2uBcqaGXsCKApSs0=;
        b=QuUbdUyYAs9UiMzfbCSmIxquVlzty9z3ajWAQEV2CUOuLYm08js2QFbxSa6SkgAi2n
         cC3pprVPfEq0mr2zN/lTwTBIQYZFyyfVloDjoloJWl9W0JiX1YPxXQo4A5vBzWx+IZv/
         oz9QIGHa2jQTzo8Shey2pqH1wJvIu59kjX7VeMNf16xN95ohTuaPLl7dS1/Jju4EmYXy
         EYC8RSqIFf8qAu1WXT3MspyTFRmWoV1uq/95tcOCpLU5N3vrqpPjg8cr3FZ3jBAZ9Dc+
         QWQj32s+HQf9FgT9r4szxZWPcztMPFkQfTEJP0HUWCzp6HGVLNuh0+1uLsxwUaBJRYjW
         RiHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdic/A0WPN5IBKafBfKnfACYqho/fOoBOt47Q5ePZDMB8AD9XK7C4BH6Yxj0jc22sCzBRmuyv2hNtWtk73lV/cRSYQieH8aVoy9hvw+A==
X-Gm-Message-State: AOJu0YyjkTjHc/vRC51LulLbaOsGSlag/Cve0fFKK1bisn2bUb7hAmZz
	5RFX8zHFXSExxcjQ/Ebdt/z5wYy5JUtAyAwVtf4BGpp9Ji+Uz/cMosq8cQkFt80=
X-Google-Smtp-Source: AGHT+IEpEDDV5rjvlffnGOmRnvYE/2Zj4m5R1KKf8NISPivJRoIUhXC9RM3SjIRT0ilAhNJnaThFLg==
X-Received: by 2002:adf:fa4e:0:b0:354:df31:6dfc with SMTP id ffacd0b85a97d-35fe89383f8mr1859836f8f.58.1718207839883;
        Wed, 12 Jun 2024 08:57:19 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35f26355d54sm7840904f8f.64.2024.06.12.08.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 08:57:19 -0700 (PDT)
Message-ID: <0b594358c94ebf6d6585005a827e69c274014983.camel@linaro.org>
Subject: Re: [PATCH v2 1/7] dt-bindings: phy: samsung,usb3-drd-phy: add
 gs101 compatible
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,  Sylwester Nawrocki
 <s.nawrocki@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, Sam
 Protsenko <semen.protsenko@linaro.org>, Krzysztof Kozlowski
 <krzk@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker
 <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Arnd Bergmann
 <arnd@arndb.de>, lee@kernel.org
Date: Wed, 12 Jun 2024 16:57:18 +0100
In-Reply-To: <CAL_JsqKDyrYBTTcpmoM-LbQUWch_qd3t47WC0yafVJcz+Se4yA@mail.gmail.com>
References: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org>
	 <20240501-usb-phy-gs101-v2-1-ed9f14a1bd6d@linaro.org>
	 <CAL_JsqKDyrYBTTcpmoM-LbQUWch_qd3t47WC0yafVJcz+Se4yA@mail.gmail.com>
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_085721_877447_3A15CC29 
X-CRM114-Status: GOOD (  11.65  )
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

T24gV2VkLCAyMDI0LTA2LTEyIGF0IDA5OjM3IC0wNjAwLCBSb2IgSGVycmluZyB3cm90ZToKPiBP
biBXZWQsIE1heSAxLCAyMDI0IGF0IDM6MTnigK9BTSBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJh
c3ppa0BsaW5hcm8ub3JnPiB3cm90ZToKPiA+IAo+ID4gQWRkIGEgZGVkaWNhdGVkIGdvb2dsZSxn
czEwMS11c2IzMWRyZC1waHkgY29tcGF0aWJsZSBmb3IgR29vZ2xlIFRlbnNvcgo+ID4gZ3MxMDEg
U29DLgo+ID4gCj4gPiBJdCBuZWVkcyBhZGRpdGlvbmFsIGNsb2NrcyBlbmFibGVkIGZvciByZWdp
c3RlciBhY2Nlc3MsIGFuZCBhZGRpdGlvbmFsCj4gPiBtZW1vcnkgcmVnaW9ucyAoUENTICYgUE1B
KSBhcmUgcmVxdWlyZWQgZm9yIHN1Y2Nlc3NmdWwgY29uZmlndXJhdGlvbi4KPiA+IAo+ID4gU2ln
bmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KPiA+
IAo+ID4gLS0tCj4gPiB2MjogYXZvaWQgaGF2aW5nIG5lc3RlZCBlbHNlL2lmLCBhbmQgaW5zdGVh
ZCBjaGFuZ2UgdGhlIGV4aXN0aW5nICdlbHNlJwo+ID4gwqDCoMKgIHRvIGV4cGxpY2l0bHkgc3Rh
dGUgdGhlIHBsYXRmb3JtcyB1c2luZyAnaWYnCj4gPiAtLS0KPiA+IMKgLi4uL2JpbmRpbmdzL3Bo
eS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1swqDCoMKgwqDCoMKgwqDCoCB8IDYxICsrKysrKysr
KysrKysrKysrKysrKy0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDU5IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4gCj4gR29pbmcgdG8gcmVzcGluIHRoaXM/IEJlY2F1c2UgaXQgaXMgaW4g
dXNlIG5vdyBhbmQgdW5kb2N1bWVudGVkLgoKWWVzLCBJJ2xsIHNlbmQgdjMgdGhpcyB3ZWVrLgoK
Q2hlZXJzLApBbmRyZScKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
