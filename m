Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED4B9C7EE25
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 07:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uIC1x1vyk4R2ipXdNwhJsTT3Ykf7RRi0mCEJdgtWCmA=; b=R4sU3CH2DAW4hB
	4sJ4zAATTgjT7CVGxrx2JCGZ5FFBY4VDG1Q6a8rDphqeOzyz7YjBzI6brmIRUniUZyIzhY3bi9UJA
	8dZUBkd/r6qov7NYCawEpDBbHMJk6nPl/Mg6CrxAAV29dv8vlATqzGqPtcep8jOC/wKBH12P+kH1v
	81dinS8b/eTAV855kK9FSgYlzLGN5AYC/IYItU8s3PVFjPGDTbjpwKgatKia5EUfyDn7J9E+AEeLK
	L7JxE5u1paIAIWt5BkcPJG0nz//9mZjq2zZKxuI+o3RSwm+29/GLj5nWIsxv5LiDFxEmndwhuRbx8
	ebZpj37X5tKeOTBQedQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q79rT-008N2g-23;
	Thu, 08 Jun 2023 07:15:11 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q79rQ-008N1W-2j
	for linux-phy@lists.infradead.org;
	Thu, 08 Jun 2023 07:15:10 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-51640b9ed95so426245a12.2
        for <linux-phy@lists.infradead.org>; Thu, 08 Jun 2023 00:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686208506; x=1688800506;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1sd05CLDYUSvBW3GOCX6CLVAicdJRZHkCzuK6EVK+t4=;
        b=rsu5m2iEH34QOsXVOnjWvmLBFdKyQWc7ps8rhXGL7otj6DyrQPgK6OqmEZyPSctaPr
         9jz74ROAyIx4pNRpN+76HajlmxElGqb+N6JREhMttjIChF+7qmtL3Mbw0FEkuITN7sGf
         Oz67H/s8Y5j5QPgQOsKUnveC1jBjjiozx1WPjhZ7qd5D4Y6L1PXYiH0zjZvnnlWvNcPd
         71ll6RrJfzBFk3PrbXfV56kR1S0i3xiqJ7NSRp6RqiGNNC+O/i5qqsGu0CHoSKP0Pu2/
         da4ZpHaKdWU48GBKpvWcv3CeUBrauB+MsiW+2dCt7lAmmodb4iAMVf0rxpcf/QqPlYPi
         I8GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686208506; x=1688800506;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1sd05CLDYUSvBW3GOCX6CLVAicdJRZHkCzuK6EVK+t4=;
        b=dcpCxngywKNFg0tcry0t9bVg8KBzOLaaVViS+CcOdX8d3jeI3O+clYi/Acm/TGkCHF
         D5DyUm4SRVAQWOHFjTHiYVU9oqogsEjbayjTJ/086IkfpLwflr/PPJC3Ju/bsn93mvy0
         05ICj0bMpdzh6kzROT2hAkQmYcDRLYzEYMpa1JxdzacNvnvwgMN0dPkoGfJYqYnXyHzz
         JqPMWiRZtc5RNJH8Wt37u3nVLXH2SnFD2I0z3lK1/FW6hDeXnpKPKOuP6S1uAtBvPxhe
         nvK/8R2N36Aw1M78nLefD+EmxMqyeeZay3+ze1Ao1gMexEdzTYJJ2Pj921Vl7BHVK59j
         c7Vw==
X-Gm-Message-State: AC+VfDwE1QhGT2tnAHrpsyU3qdWDiygw3gYYN/nrkgBksvZ4kzYroMrc
	YyeTIGbg4bGW8i7nt8GFwADqrw==
X-Google-Smtp-Source: ACHHUZ6o28Ei4sxl7rCD1F+9lYLgiWHAPjBPWLZKnkrR4M1vnXe8LnSs39VAtYvmcENHIY8C+m+XnA==
X-Received: by 2002:a17:907:7da4:b0:974:1c98:d38e with SMTP id oz36-20020a1709077da400b009741c98d38emr8670170ejc.2.1686208506478;
        Thu, 08 Jun 2023 00:15:06 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id p10-20020a170906604a00b009545230e682sm305674ejj.91.2023.06.08.00.15.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jun 2023 00:15:06 -0700 (PDT)
Message-ID: <f2e17e0e-9c2e-3693-54fa-de3ba5eac846@linaro.org>
Date: Thu, 8 Jun 2023 09:15:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 2/5] phy: realtek: usb: Add driver for the Realtek SoC
 USB 2.0 PHY
Content-Language: en-US
To: =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Mathias Nyman <mathias.nyman@linux.intel.com>,
 Bagas Sanjaya <bagasdotme@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 Ray Chi <raychi@google.com>, Flavio Suligoi <f.suligoi@asem.it>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
References: <20230607062500.24669-1-stanley_chang@realtek.com>
 <20230607062500.24669-2-stanley_chang@realtek.com>
 <79201bd6-6048-7013-aeb7-34d218139844@linaro.org>
 <8cb2d82c3b484262aa866c5e989fc8cd@realtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8cb2d82c3b484262aa866c5e989fc8cd@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_001508_892997_981B8A4B 
X-CRM114-Status: GOOD (  12.32  )
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

T24gMDgvMDYvMjAyMyAwODo1OSwgU3RhbmxleSBDaGFuZ1vmmIzogrLlvrddIHdyb3RlOgo+IEhp
IEtyenlzenRvZiwKPiAKPiAKPj4gSSBjb21tZW50ZWQgb24geW91ciBzZWNvbmQgcGF0Y2gsIGJ1
dCBldmVyeXRoaW5nIGlzIGFwcGxpY2FibGUgaGVyZSBhcyB3ZWxsLgo+PiBZb3UgaGF2ZSBtYW55
IHVzZWxlc3MgZGVidWcgbWVzc2FnZXMuIE1hbnkgaW5jb3JyZWN0IG9yIHVzZWxlc3MKPj4gImlm
KCkgcmV0dXJuIiB3aGljaCBwb2ludCB0byBicm9rZW4gZHJpdmVyIGRlc2lnbiAoZS5nLiBjb25j
dXJyZW50IGFjY2VzcyB0byBoYWxmCj4+IGluaXRpYWxpemVkIHN0cnVjdHVyZXMgd2hlcmUgeW91
IHN1YnN0aXR1dGUgbGFjayBvZiBzeW5jaHJvbml6YXRpb24gd2l0aAo+PiBpbmNvcnJlY3QgImlm
KCkgcmV0dXJuIikuIFVuZG9jdW1lbnRlZCB1c2VyIGludGVyZmFjZSBpcyBvbmUgbW9yZSBiaWcg
dHJvdWJsZS4KPj4KPj4gSSBkb3VidCB5b3UgcnVuIGNoZWNrcGF0Y2ggb24gdGhpcyAoYmUgc3Vy
ZSB0byBydW4gaXQgd2l0aCAtLXN0cmljdCBhbmQgZml4IGFsbW9zdAo+PiBldmVyeXRoaW5nKS4K
Pj4KPj4KPiAxLiBJIHVzZSBjaGVja3BhdGNoIGJ1dCB3aXRob3V0IC0tc3RyaWN0LiBJIHdpbGwg
YWRkIGl0IGFkZCBhbmQgY2hlY2sgYWdhaW4uCgpBcm91bmQgMzAwIGlzc3VlcyBwb2ludGVkIG91
dC4uLgoKPiAyLiBEbyB0aGUgZGVidWdmcyBpbnRlcmZhY2VzIG5lZWQgdG8gcHJvdmlkZSBhIGRv
Y3VtZW50Pwo+IEkgZG9uJ3QgZmluZCBhbnkgcmVmZXJlbmNlIGFib3V0IHRoaXMuCgpOb3Qgc3Vy
ZSBpZiB3ZSBoYXZlIGl0IGluIGRvY3MsIGJ1dCBpdCBpcyBkaXNjdXNzZWQgZXZlcnkgbm93IGFu
ZCB0aGVuLi4uCgpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvQ0FNdUhNZFVhdWdRNStaaG1n
PW9lPVgyd3ZoYXpNaVQ9Sy1zdTBFSllLekQ0SGR5bjNRQG1haWwuZ21haWwuY29tLwpodHRwczov
L2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzA2MDIwOS1zY291dHMtYWZmZWN0aW9uLWY1NGRAZ3Jl
Z2toLwoKCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
