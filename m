Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FADFC7EE23
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 07:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQCzBMdIAqlLU7c1TfT0RUAqp7QDJU6EuVsO9H8YVEI=; b=KpuBvzJo+4HY4D
	Oc388PGsssJ1Qc/krirT3SK2T/w3YlyB/7oFp7+hczeGq8+5+DdZm3b7OEY+O7qMiOeHpm4jFo0ip
	HgrVBLiICr5myiZ13jNnDr/adC2gyAhJhvlW8WF3FcHUjQUy8lqkTzgenpIO14a9qMuMxC+i4bRer
	uUKEM8b+Dd7peWcQJ8srl7sTAHs2zGH9WJVNa5w1VgxvYvSC8oZ93XYIg0ni4weUUi32VDwVB6Cq6
	BMSyrulqKsgjIZCxI2RSSbN0MTCnK7Io4JpLnzVkHBfXgeyT/QZtX2RH0RBnYu/9KFbnoof9v7CLv
	a9SB2tz5JZVDDFgDlcyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q79d9-008KoK-0X;
	Thu, 08 Jun 2023 07:00:23 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q79d7-008Knk-02
	for linux-phy@lists.infradead.org;
	Thu, 08 Jun 2023 07:00:22 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-977ed383b8aso52327366b.3
        for <linux-phy@lists.infradead.org>; Thu, 08 Jun 2023 00:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686207617; x=1688799617;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+VCYQ0Vq8Rf6ius+6VmSoJHA+8MpI2G4Z5DYwrvA2w0=;
        b=gT5J/WnKL6bPKZtMDM0WF70NGnKhfxOX30KwqIV0lfYTwjVng5Ke0xgwxOEJULD6MK
         Lgf0teDYptJs0TaXdNmSJN+dKsZoFd8JUcfWVBob+KeGJ7oQeqMJ9WcfSmq7oGFsGLxr
         4irYaNprpTOLvFtGPVOkL14vE0pPVRE0QMW2JdRjVAQ29zp7L7dNg3eIULwYODZoqPoo
         GTrW7VMuyM9kV67sLILcPNqzlyqWQmbWdHhNuSE2U4474CmVf+2yYbzzXQb0Oma/7OhB
         wwGcFkw8+ZnXmyw9fA8WmDxJP4UHC5lLEdRR64KaXXqLuv1FVBugpbu7zcHPEAspxzN4
         c3iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686207617; x=1688799617;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+VCYQ0Vq8Rf6ius+6VmSoJHA+8MpI2G4Z5DYwrvA2w0=;
        b=Mh7mAJ/qAFRKGj5ym++MlXI5biHksR9RtaihafY2HSB55rmGz9LtJF2HSHlVfzpp98
         8KhDrpkqPxuBZz/pBjiXOWtIvJcom5Vw5TxbGEuaTwVLuG/wxnhtEHkC0Kdt4xbKc112
         CW2Jco6PIaWgOmFpM5mRud1IuAjtdTabYVERJhxUXps/uo+5chnW81nsnzWAbxro8fj5
         JlLcNomLguLPAMmS8dS+YtXll8YBqzVolgKf33HFAnYl4JRTzZ+PX+xze3D8Dw3HDcCP
         iasHv4P3+lya6vLzFvz5TnSjOWNc7mb5UWJ7PdZFo1KBIhzNVUMHzOg2TY21gUt6gr2N
         FvoA==
X-Gm-Message-State: AC+VfDy95s+BkN716T0sFcbPA0HsuxzljspOKUHckPUoK5Joz6DQB2f8
	pF1ykSflnfIDW/VKH133jFkDHQ==
X-Google-Smtp-Source: ACHHUZ493r0raQo9iLcIeZCRDNBkBWvXhgo1i70ZDsHouZkiTOZ1xbXiIw0DC6QAuKQHWQwMhf2A7Q==
X-Received: by 2002:a17:906:9753:b0:968:1e8:a754 with SMTP id o19-20020a170906975300b0096801e8a754mr7610497ejy.72.1686207617176;
        Thu, 08 Jun 2023 00:00:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id w8-20020a170906b18800b00965a56f82absm281860ejy.212.2023.06.08.00.00.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jun 2023 00:00:16 -0700 (PDT)
Message-ID: <0d4d77db-3d09-a5ab-b3e6-93da771b4b2d@linaro.org>
Date: Thu, 8 Jun 2023 09:00:14 +0200
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
X-CRM114-CacheID: sfid-20230608_000021_080932_45250B03 
X-CRM114-Status: GOOD (  12.11  )
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
YWRkIGl0IGFkZCBhbmQgY2hlY2sgYWdhaW4uCj4gMi4gRG8gdGhlIGRlYnVnZnMgaW50ZXJmYWNl
cyBuZWVkIHRvIHByb3ZpZGUgYSBkb2N1bWVudD8KPiBJIGRvbid0IGZpbmQgYW55IHJlZmVyZW5j
ZSBhYm91dCB0aGlzLgoKZGVidWdmcyBpbnRlcmZhY2UgaXMgZm9yIGRlYnVnIGJ1dCBpbiB5b3Vy
IGNhc2UgeW91IGRvbid0IHVzZSBpdCB0aGF0IHdheS4KCgoKQmVzdCByZWdhcmRzLApLcnp5c3p0
b2YKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
