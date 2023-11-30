Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25747C10DC2
	for <linux-phy@archiver.kernel.org>; Thu, 30 Nov 2023 08:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkXkZYyvpR7A/y7DPu4fkXm8sKtoHJOlaoW7kqFEMCs=; b=DZGaZTQ5cq/rZF
	keJHdmST25LdFW01hwESn3M2ZKTKAaXw90XGVQTZr/sRK5ps+crhMvlorWYiAWgKua5Z65Ae/RIF+
	LBVXyr7Xu3CR/ASpMeg2sInS5zo1ej0lGx3yPjOL1NsBWDV4+DX+B9D1DPQ3xHvsKGqQnFQD5XCPm
	dgE0GQOptCtyuuvisiqmKUU0zuAglKx2/aeHzWEqDKwpz1m6N2szurZZjiigrxMCoeA9C45utmDk3
	igW3c3xAVjMWtSp0pNr34TWylQZyuZ14LFIxwO+efjzAUPs80mEjG42jT4norJ+26UgWED+PvPFFz
	wH/AyZfov4XXAKEAnTfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8c19-00A9sC-2e;
	Thu, 30 Nov 2023 08:03:27 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8c16-00A9nt-2r
	for linux-phy@lists.infradead.org;
	Thu, 30 Nov 2023 08:03:26 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-54afd43c83cso554049a12.0
        for <linux-phy@lists.infradead.org>; Thu, 30 Nov 2023 00:03:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701331399; x=1701936199; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MJd9Uk6t7Y5o+xsifWwLGMs7qEY6VjicjwyZWtTxCgQ=;
        b=aqdUluPQRO4OMdLerXNYtXDapLJZXYbI1Yin6b6+fSyzpZuwlzxfX7ivX3V7ONMOU6
         +FOkxGxzWBsvgnywXUgZIApXsQm3xZifnyhFn8Ox6Icwtb8P4F7LY2xutwaof+9g5hLj
         QWlGn40Lglq3T+MJmwVIpAR5LDYwLTqGFXEf3ViobVLU/kaJn2nfJxmRx9LDR2F5OQUP
         wKGrVOjeLkh1gpbpzz1NXL4cFu+K6LoRV9jCO5ROAyHS3Z8jHVQPU7nM4F1PildwXwJT
         jHZc/0SZeQ6lxssbCrXGjFMyb4Q8b5rxWrl6jgnQ8t2FuAnwVmVPuRweEM+Wwe39jcgo
         Yc3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701331399; x=1701936199;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MJd9Uk6t7Y5o+xsifWwLGMs7qEY6VjicjwyZWtTxCgQ=;
        b=OSSh4pFNvEUMzNri3WuKUG5VMP4RIEJBNnZAW6dUygzvZaKd5pus7+FqHUHqaAcAOT
         6nU5kdKq8Bhng1D3kLficICxLZbVQ5HjnxPzwXXgjWLUva+zIYHpDAzgNtD5WqZJpz5N
         r3ckSiEXT6br/e8nENR/GQcHf5/FiS0jGRCALJ4A+Ok1bo798hyRz7nO5ekBExtVqsXw
         9gRcDw1nVwyiHyCfEx9TMLNY98qYgu6B/PedTXvoOW6N79iioob0UzmSZikIVItM8LDv
         Qef8/4CUNpxH992Z7k0n3Y3aVdX3T1PBSSeQRlMMddbatwMvre0nTsMQ7yqkDACRgid+
         oIBg==
X-Gm-Message-State: AOJu0YzJkmPgz6wdjmJXxmNVgTnW+L2Az+FA9Oj9LwQgieC+KfNACouw
	rQAx73T9YnhSXOFPfSibv1ORWA==
X-Google-Smtp-Source: AGHT+IEahOaCi8GKojER7yMi7nGU5kYLnxeF+eW+RpCQYnWem49rP6WV1WaWzP3okeX8C53lX+WpsA==
X-Received: by 2002:a50:bb63:0:b0:548:55f0:b5f2 with SMTP id y90-20020a50bb63000000b0054855f0b5f2mr14330965ede.6.1701331399465;
        Thu, 30 Nov 2023 00:03:19 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id b22-20020aa7df96000000b0054b3a6243b1sm291363edy.71.2023.11.30.00.03.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Nov 2023 00:03:18 -0800 (PST)
Message-ID: <50e56220-8068-4e2e-a586-9d0474963085@linaro.org>
Date: Thu, 30 Nov 2023 09:03:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: mediatek: tphy: add a property for
 force-mode switch
Content-Language: en-US
To: =?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 =?UTF-8?B?TWFjcGF1bCBMaW4gKOael+aZuuaWjCk=?= <Macpaul.Lin@mediatek.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>
Cc: =?UTF-8?B?UGFibG8gU3VuICjlravmr5Pnv5Qp?= <pablo.sun@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QmVhciBXYW5nICjokKnljp/mg5/lvrcp?= <bear.wang@mediatek.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "angelogioacchino.delregno@collabora.com"
 <angelogioacchino.delregno@collabora.com>
References: <20231125012303.760-1-chunfeng.yun@mediatek.com>
 <e34c2746-8e93-48b8-9c96-690242fbf6e9@linaro.org>
 <239def9b-437b-9211-7844-af4332651df0@mediatek.com>
 <0dc24d82-e09d-45bc-98ae-1dfb6318cb96@linaro.org>
 <74957a9cc4663815e200d222483541a1eec43bbe.camel@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <74957a9cc4663815e200d222483541a1eec43bbe.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_000324_932368_E0000D9E 
X-CRM114-Status: GOOD (  10.18  )
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

T24gMzAvMTEvMjAyMyAwMjo1MSwgQ2h1bmZlbmcgWXVuICjkupHmmKXls7ApIHdyb3RlOgo+Pj4g
My4gSG93IGFib3V0IHdlIHJldmlzZSB0aGUgZGVzY3JpcHRpb24gYXMgZm9sbG93cyBmb3IgbW9y
ZQo+PiBwcmVjaXNlbHk/Cj4+Pgo+Pj4gbWVkaWF0ZWssZm9yY2UtbW9kZToKPj4+ICAgIGRlc2Ny
aXB0aW9uOgo+Pj4gICAgICBUaGUgZm9yY2UgbW9kZSBpcyB1c2VkIHRvIG1hbnVhbGx5IHN3aXRj
aCB0aGUgc2hhcmVkIFBIWSBtb2RlCj4+PiAgICAgIGJldHdlZW4gVVNCIGFuZCBQQ0llLiBXaGVu
IGZvcmNlLW1vZGUgaXMgc2V0LCB0aGUgVVNCIDMuMCBtb2RlCj4+PiAgICAgIHdpbGwgYmUgc2Vs
ZWN0ZWQuIFRoaXMgaXMgdHlwaWNhbGx5IHJlcXVpcmVkIGZvciBvbGRlciBTb0NzCj4+PiAgICAg
IHRoYXQgZG8gbm90IGF1dG9tYXRpY2FsbHkgbWFuYWdlIFBIWSBtb2RlIHN3aXRjaGluZy4KPj4+
ICAgICAgRm9yIG5ld2VyIFNvQ3MgdGhhdCBzdXBwb3J0IGl0LCBpdCBpcyBwcmVmZXJhYmxlIHRv
IHVzZSB0aGUKPj4+ICAgICAgIm1lZGlhdGVrLHN5c2Nvbi10eXBlIiBwcm9wZXJ0eSBpbnN0ZWFk
Lgo+Pj4gICAgdHlwZTogYm9vbGVhbgo+Pgo+PiBBZ2Fpbiwgd2hhdCBpcyBmb3JjZS1tb2RlPyAK
PiBPdXIgREUgZGVzY3JpYmUgdGhpcyBiZWhhdmlvciBhcyBmb3JjZS1tb2RlLCBhcyB5b3Ugc2Vl
LCB0aGUgZHJpdmVyCgpXaGF0IGlzICJERSI/Cgo+IHBvd2VyIGRvd24gY29udHJvbGxlciBhbmQg
cmVzZXQgcGlwZSB0byBzZXQgdGhlIG1vZGUgZGlyZWN0bHkgd2Ugd2FudCwKClNvIGZvcmNlLW1v
ZGUgaXMgZHJpdmVyIGJlaGF2aW9yPwoKPiBidXQgdXN1YWxseSB0aGUgcGh5IGNvbnRyb2xsZXIg
c3dpdGNoIHRvIHRoZSBtb2RlIGF1dG9tYXRpY2FsbHkKPiBhY2NvcmRpbmcgdG8gdGhlIGV4dGVy
bmFsIHNpZ25hbCwgZS5nLiB0cmFwcGluZyBwaW4sIGVmdXNlIGV0Yy4KPiAKPj4gSXQgbG9va3Mg
bGlrZSB5b3Ugd3JvdGUgYmluZGluZ3MgZm9yIHRoZQo+PiBkcml2ZXIgYmVoYXZpb3IuIEJpbmRp
bmdzIGRlc2NyaWJlIGhhcmR3YXJlLCBub3QgaG93IHRoZSBkcml2ZXIKPj4gc2hvdWxkCj4+IGJl
aGF2ZS4gVGhlIHByb3BlcnR5IG1pZ2h0IGJlIHJlYXNvbmFibGUsIGJ1dCB5b3UgbXVzdCBkZXNj
cmliZSBoZXJlCj4+IGhhcmR3YXJlIGNoYXJhY3RlcmlzdGljcy9pc3N1ZS9ldGMuCgpZb3UgbXVz
dCBhZGRyZXNzIHRoaXMsIGluIHN1Y2ggY2FzZS4KCgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
