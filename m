Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF443E75433
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 08:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4a0vkqa/P4m62A/k3Nzee7XL+5NMkzGWqHkRsOJa6SM=; b=TprsAwPbnlwunD
	ptgwkPeuJQWVN287q1m54mAt6XdBBU3TYEgxBjjasXDzvl+TVI4EssthQHAYXVPyUYGBO1uVdPAKS
	USjiFm1cp+I+Hmrtmt+wCCU/pzlGwM+RBo4eQkbCJI7AeYKJxBkVhjT4t/Rcg/GIVOlKLKmivlBez
	/CegzS3++n3RdTt7Eomp4FkmpN+P9R7FW8b0ByF+CVgIJRwaOjNeNbY2YNJU0DEIW9Vc4bRX2Qv9r
	3BFErR5Kak/afqHLXigQiFsHoaewFU50Ddtv0/NQq+0VINCgfMdw7rnDb0WEeEZhT6S+MY1l0ydPc
	wnqNhzihbbpnm3gfYXSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnbE6-00EBXd-1B;
	Tue, 03 Oct 2023 08:57:58 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnbE3-00EBXK-19
	for linux-phy@lists.infradead.org;
	Tue, 03 Oct 2023 08:57:56 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99c3c8adb27so115556566b.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Oct 2023 01:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696323473; x=1696928273; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YekUtMGuAuLPhJaRub1BVu8XcJVB3zd+vt6WHft1/uc=;
        b=iH8u/5tCDf8Q5jZE3Y0gVOrMG6Pi6PdtusZxOc5DiLu/t3WkvxuORuCVd/zXSap1EI
         4wJNk0raV8rHM/n4litjJqQSW7ZC0c1EiRvIem+w3r4+l5UG7IGBFYCTHfsScEMXraAf
         8y/89JldtPT1KEMjaFcTN1hzBARtXpMUHaITsWzYsx323vADw+LQzZJsMN15VFwijtRW
         4gSQ1/acUUgDWq5P0sS2+2BUBoraxITIO0TI14ms1Ylhn5Xuq+KKJch31Q8A7Oy5gDog
         K7PXU7itBqGsbmrfxIZ7owCUv69ywqzi/A/1AGgjhHSobmK6hRjUTm+sjlnUpC02Di9u
         ncRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696323473; x=1696928273;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YekUtMGuAuLPhJaRub1BVu8XcJVB3zd+vt6WHft1/uc=;
        b=UjlZ+sTO6CAEux9Mj5JU6T7OsOso2CaAX9uo36BngFTC0xK198qDCbEElcb5VjqPXV
         hO9POek6j+W5tORxTCSn+16mYU7IfG15vAh25hw7Vs74eZxbhayz7vIgJjGJC/zpPvfN
         1h1eCtxTnWlgGLE25Io2/JicN0jSDAGt8OpAujPOIPPOrEvR6ncG8QDHgKCc1zryQxwl
         uCIN4nLoS4GE3nQe2wziVmwZPQnVQ1UO4n5eIl/5mzjzxYIxvVF2BHBQTpw7QMWMUAOX
         CVTpyVEfBCzNRYJqvfL3ghlIo2NdOhvmHmw8w94WRI54lF2AjIir/3E9pcyR6joKdkKA
         iXTw==
X-Gm-Message-State: AOJu0YzeghYdm7HlMRwuV/RhCEmPJ23BljTw3CKJB1tZk53q5OpKNFIx
	0jd+xU/BdGZL+5A//u1WVF2eBA==
X-Google-Smtp-Source: AGHT+IGlJnKmHXo4nmNzGESB8S2FX5LvMwSS/9V9qKlIR/rRE7l+EVukBPni5jW30bDia9MSSF7Eig==
X-Received: by 2002:a17:907:75e1:b0:9b2:a769:8afc with SMTP id jz1-20020a17090775e100b009b2a7698afcmr11252705ejc.77.1696323473042;
        Tue, 03 Oct 2023 01:57:53 -0700 (PDT)
Received: from [192.168.1.197] (5-157-101-10.dyn.eolo.it. [5.157.101.10])
        by smtp.gmail.com with ESMTPSA id r13-20020a170906350d00b009a9fbeb15f5sm695251eja.46.2023.10.03.01.57.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 01:57:52 -0700 (PDT)
Message-ID: <682e332b-0b86-4b68-acd4-6895fd52038a@linaro.org>
Date: Tue, 3 Oct 2023 10:57:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: phy: Convert PXA1928 USB/HSIC PHY to DT
 schema
Content-Language: en-US
To: =?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20231002-pxa1928-usb-yaml-v2-1-121a7e02d29f@skole.hr>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231002-pxa1928-usb-yaml-v2-1-121a7e02d29f@skole.hr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_015755_422103_A95548D6 
X-CRM114-Status: GOOD (  12.04  )
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

T24gMDIvMTAvMjAyMyAyMTozNCwgRHVqZSBNaWhhbm92acSHIHdyb3RlOgo+IENvbnZlcnQgdGhl
IGJpbmRpbmcgZm9yIHRoZSBNYXJ2ZWxsIFBYQTE5MjggVVNCIGFuZCBIU0lDIFBIWXMgZnJvbSBU
WFQKPiB0byBEVCBzY2hlbWEuCj4gCj4gU2lnbmVkLW9mZi1ieTogRHVqZSBNaWhhbm92acSHIDxk
dWplLm1paGFub3ZpY0Bza29sZS5ocj4KPiAtLS0KPiBDaGFuZ2VzIGluIHYyOgo+IC0gQWRkIG15
c2VsZiBhcyBtYWludGFpbmVyCj4gLSBDb21iaW5lIEhTSUMgYW5kIFVTQiBiaW5kaW5ncyBpbnRv
IG9uZQo+IC0gRHJvcCB1bm5lZWRlZCBxdW90ZXMKPiAtIFJlbW92ZSBleGFtcGxlIGFzIGl0IGNh
bid0IGNvbXBpbGUgKHByb2JhYmx5IGJlY2F1c2Ugb2YgY2xvY2sKPiAgIHJlZmVyZW5jZSkKPiAt
IExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMzEwMDEtcHhhMTkyOC11
c2IteWFtbC12MS0xLTkzMDlhOGMwYzAzZkBza29sZS5ocgoKVGhhbmsgeW91IGZvciB5b3VyIHBh
dGNoLiBUaGVyZSBpcyBzb21ldGhpbmcgdG8gZGlzY3Vzcy9pbXByb3ZlLgoKCj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tYXJ2ZWxsLHB4YTE5MjgtdXNiLXBo
eS55YW1sCj4gQEAgLTAsMCArMSw0MSBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAo
R1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiArJVlBTUwgMS4yCj4gKy0tLQo+ICskaWQ6
IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BoeS9tYXJ2ZWxsLHB4YTE5MjgtdXNiLXBo
eS55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2Nv
cmUueWFtbCMKPiArCj4gK3RpdGxlOiBNYXJ2ZWxsIFBYQTE5MjggVVNCL0hTSUMgUEhZCj4gKwo+
ICttYWludGFpbmVyczoKPiArICAtIER1amUgTWloYW5vdmnEhyA8ZHVqZS5taWhhbm92aWNAc2tv
bGUuaHI+Cj4gKwo+ICtwcm9wZXJ0aWVzOgo+ICsgICRub2RlbmFtZToKPiArICAgIHBhdHRlcm46
ICdecGh5QFthLWYwLTldKyQnCgpEcm9wIG5vZGVuYW1lLCB3ZSBkbyBubyBuZWVkIGVuZm9yY2Ug
aW4gZWFjaCBkZXZpY2Ugc2NoZW1hcy4KCj4gKwo+ICsgIGNvbXBhdGlibGU6Cj4gKyAgICBvbmVP
ZjoKPiArICAgICAgLSBpdGVtczoKPiArICAgICAgICAgIGNvbnN0OiBtYXJ2ZWxsLHB4YTE5Mjgt
dXNiLXBoeQo+ICsgICAgICAtIGl0ZW1zOgo+ICsgICAgICAgICAgY29uc3Q6IG1hcnZlbGwscHhh
MTkyOC1oc2ljLXBoeQoKRW50aXJlIG9uZU9mIGlzIGp1c3QgYW4gZW51bSAod2l0aG91dCBpdGVt
cywgbm8gY29uc3QpOgplbnVtOgogIC0gZm9vCiAgLSBiYXIKCj4gKwo+ICsgIHJlZzoKPiArICAg
IG1heEl0ZW1zOiAxCj4gKwo+ICsgIGNsb2NrczoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsg
ICcjcGh5LWNlbGxzJzoKPiArICAgIGNvbnN0OiAwCj4gKwo+ICsgIHJlc2V0czoKPiArICAgIG1h
eEl0ZW1zOiAxCj4gKwo+ICtyZXF1aXJlZDoKPiArICAtIGNvbXBhdGlibGUKPiArICAtIHJlZwo+
ICsgIC0gY2xvY2tzCj4gKyAgLSAnI3BoeS1jZWxscycKPiArCj4gK2FkZGl0aW9uYWxQcm9wZXJ0
aWVzOiBmYWxzZQoKUGxlYXNlIGFkZCBleGFtcGxlIERUUy4KCkJlc3QgcmVnYXJkcywKS3J6eXN6
dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
