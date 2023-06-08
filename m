Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97166C7EE29
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 07:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEP7eNNBRibMt2Kkf2braWqqsWUA1qWqcLmmqRZ25vQ=; b=1CRdV5DZGQHSc+
	fiZhRgbFtLX+coUAAlPFJkoLGuEMRrfYY50DuWjMf4fT2ZcLmjewWenjBz8vHQLpA6eIRCkRaERGB
	WNMpPgpZwFu3YlWU23zRvzlmkqQEDxmeQ12xEZbXauluW+CikXNerXD9hE8FvvXrK/xXkskrEoRpu
	jmuoEhXUd1u2IlqBkjarDz/V4fufLEk0vohjZ8EcOzLdyw9KGAdT7npTvz5qRfco9SFxdtuFNLkn8
	M1gUDzgJVRqV45FwOBq0NkH+fYlikEVmYYYN2VPrB4cHmEzzKn7wskfrrNoFmcRNRAec497WUhzTR
	g+up/i8PEr+ZbeJiIAZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7APX-008S2m-0t;
	Thu, 08 Jun 2023 07:50:23 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7APV-008S2C-0x
	for linux-phy@lists.infradead.org;
	Thu, 08 Jun 2023 07:50:22 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-514859f3ffbso416528a12.1
        for <linux-phy@lists.infradead.org>; Thu, 08 Jun 2023 00:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686210619; x=1688802619;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CdtBaZj4Wh7F/cKA1LiZJZb7T0ESxgrV+Q/DGxp5Urg=;
        b=R7Nwox0yH/aJ1X5B1nl0KPyzpfm4V5u26ECctIxgmM0pW6O45RS9p/z6ugEXZHxld3
         DjX41wmgm3W2wiylZ3JH+T9hTIdg2lDIgS7mu6rRvM7G3IHsrfqz3L8JY4TJ7rBIpG9p
         hiswHpGixEop3mJFf6I9aOJg3BUkuBKiOEUlJuYHZJP2o9F2SynFs6qO+/53tX29u3gb
         MvG7qIJbr7uQmWVKbkXVK6ePdE7aRL747Z/lyXf+hWkQRroTD8wIonKX/T05p6g37HDs
         vR1CsfP2ism0Cz604grw/YPBMqkAyHzA8FMPYQWALk1QL/QyaNBlXpOAHHbv3M4H3sdj
         jNag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686210619; x=1688802619;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CdtBaZj4Wh7F/cKA1LiZJZb7T0ESxgrV+Q/DGxp5Urg=;
        b=JMu8EG7hD7KbtojKBLtI5CLxi8KIlr7vP76+KVRUZ0hxZNsjY9eVypWBNmm6EHvmKT
         ZmbDohGHCxJhGsLkGSSZFBs7RhwjtYATe5kiX4ni6AROR7XnIELSiVj4WF0tIfrpSzWH
         yHqRb6O97MboZnTohzM47SsDvq5YqQWAp19txVJahM/fcw4zYSU+53Tba8rHkIBcESZr
         Y9E8WBxc95slIfioTwxYqxplSLU9BvXJC1EdQ0UcXVwTNLdOfrqtdolO12+F6uQmwh2i
         ABYdKG5w3fVi+lcIFgoJRQ1oa/+ODJJeJBat41jUX7B1p2wkPjP1ZQIvw7WUI2Diq/4n
         NMtw==
X-Gm-Message-State: AC+VfDwiul54U55bqXiI5GInWL47rFMopff55iVA+zxa/2kW82lBpLHy
	1M5zF6xLbt+XDpOqOiuXU7yp/g==
X-Google-Smtp-Source: ACHHUZ4NNrwVqtQg76eKybrTKDBwByaBNPg+h0SR5A+VjJVIVBsGpjFs+P41gY1zcmunuv5OV0a0jA==
X-Received: by 2002:aa7:d1d4:0:b0:514:945c:6cea with SMTP id g20-20020aa7d1d4000000b00514945c6ceamr6074596edp.37.1686210619206;
        Thu, 08 Jun 2023 00:50:19 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id x23-20020aa7dad7000000b00516654bf182sm237626eds.41.2023.06.08.00.50.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jun 2023 00:50:18 -0700 (PDT)
Message-ID: <f06d9f97-591b-c76d-0313-49c1b7a1217e@linaro.org>
Date: Thu, 8 Jun 2023 09:50:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 5/5] dt-bindings: phy: realtek: Add the doc about the
 Realtek SoC USB 3.0 PHY
Content-Language: en-US
To: =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Ray Chi <raychi@google.com>, Mathias Nyman <mathias.nyman@linux.intel.com>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Matthias Kaehlcke <mka@chromium.org>, Flavio Suligoi <f.suligoi@asem.it>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
References: <20230607062500.24669-1-stanley_chang@realtek.com>
 <20230607062500.24669-5-stanley_chang@realtek.com>
 <58aea31d-8f47-a558-6e17-17b55059bb23@linaro.org>
 <1f13680401e449a3b9384710206cc2b0@realtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1f13680401e449a3b9384710206cc2b0@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_005021_340442_42157901 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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

T24gMDgvMDYvMjAyMyAwOTozMiwgU3RhbmxleSBDaGFuZ1vmmIzogrLlvrddIHdyb3RlOgo+Pj4g
K2V4YW1wbGVzOgo+Pj4gKyAgLSB8Cj4+PiArICAgIHVzYl9wb3J0Ml91c2IzcGh5OiB1c2ItcGh5
QDEzZTEwIHsKPj4+ICsgICAgICAgIGNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxMzE5ZC11c2Iz
cGh5IiwgInJlYWx0ZWssdXNiM3BoeSI7Cj4+PiArICAgICAgICByZWcgPSA8MHgxM2UxMCAweDQ+
Owo+Pj4gKyAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+PiArICAgICAgICAjc2l6ZS1j
ZWxscyA9IDwwPjsKPj4+ICsgICAgICAgICNwaHktY2VsbHMgPSA8MD47Cj4+PiArCj4+PiArICAg
ICAgICBwaHlAMCB7Cj4+PiArICAgICAgICAgICAgcmVnID0gPDA+Owo+Pj4gKyAgICAgICAgICAg
IHJlYWx0ZWsscGFyYW0gPQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgPDB4MDEgMHhhYzhjPiwK
Pj4+ICsgICAgICAgICAgICAgICAgICAgIDwweDA2IDB4MDAxNz4sCj4+Cj4+IEZpcnN0LCB0aGlz
IGlzIG1hdHJpeCwgbm90IHVpbnQ4IGFycmF5LiBTZWNvbmQsIDB4YWM4YyBpcyBwYXN0IDE2IGJp
dHMgbG9uZywgbm90IDguCj4+IFRoaXJkLCB5b3UgcHV0IHNvbWUgbWFnaWMgcmVnaXN0ZXIgcHJv
Z3JhbW1pbmcgdG8gRFQuCj4+IFBsZWFzZSBkb24ndC4gRHJvcCBhbGwgdGhpcyBmcm9tIERULgo+
IAo+IHJlYWx0ZWsscGFyYW0gaXMgYW4gdWludDMyLW1hdHJ4Lgo+IEkgd2lsbCByZXZpc2VkIHRo
ZSB0eXBlLgoKRHJvcCB0aGUgcHJvcGVydHkuIEl0IGlzIG5vdCBleHBsYWluZWQgYW5kIG5vdCBq
dXN0aWZpZWQgdG8gYmUgaW4gRFQuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
