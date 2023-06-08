Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 155BEC7EE23
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 08:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQK1JbendHYwavmxU7kkgHGjZNWkOu1MgRmft0FX3lE=; b=fZLuyiGl8qj2gu
	t7+ltF3l+OIi3wWvNHyTfxi1yW05MMzqnDvke+So7HBPtzum+1LBkj6czQyg2qiYx7ji8L0hentqK
	WB6N68G79f7l+A9EbYLMytHjYkVR/7lHernja6rRc8JqciRIypDkuWHsJLTvchd+QJ63qrF+HgQN7
	j3rXbaV5SRaeScHGQdJ5tB/HPTvXpgMtNJSrTaBu+55qEL3nAzBkcZzNYR1ndZGyEmsEx0GxwGHsY
	OiDSQonPGmkV4q3FL0dMoyn8pnBhCJ3qfLRzXtCLWEZ3gWZoliKgp5Qe07yk/T0+yAypdnMoPIUlV
	ZTkvUHbtmuR3bCvFdprA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7B0m-008Xcc-2B;
	Thu, 08 Jun 2023 08:28:52 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7B0k-008XcA-03
	for linux-phy@lists.infradead.org;
	Thu, 08 Jun 2023 08:28:51 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9786fc23505so53529766b.2
        for <linux-phy@lists.infradead.org>; Thu, 08 Jun 2023 01:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686212928; x=1688804928;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mecQ34dk2V9y6dj5rR+/RnPx6Aef7iQYAh5UFotv1xo=;
        b=YOuXdQwTL0HiqsuDJ2OMmCSusM9E5OEW/ovbK+fy8/Ndz8cb5RyF1n1QlhilBzqeuW
         3gh1zTvG7WUB5wCr1NkVXEkhHxJz0Trn77gbdHJJognIYkXNmesScC2h0fmtNIqjfXbx
         x49RK2FCpm0zpnOYjCZCX+484Cl6Pci7GslevrHsQaDcqjg1AlluAsffRhUhYsAlPvKx
         bDSg5N7ErAgUIy61k/pu9d1PUZmuyRcsvKmYRiTlCcht9U3ykifmVK67IUhQx8dMq/uC
         fhw8bo73cYfBu2SDg/LVekXM9dRtn6e+a2whScQPYNpfoMrma0HY+C21DJONkNdMlhb1
         iy1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686212928; x=1688804928;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mecQ34dk2V9y6dj5rR+/RnPx6Aef7iQYAh5UFotv1xo=;
        b=ksHxAgWm8u8lO0M8H4JnHYllXBUXtFwOvnkxc8MagvtOUGf1Tu8XJ2AloufIy4K5M1
         jZQEWX4Kq990e9qx5VgEisI3ZiBYV6IqNXllJ9gw73mus8KY9waQKx3ejjM5SF5outm+
         Yz5OhlGn3Udlpe5dqhPjbCmMrsCqKR76Of4fzVFOEJPoy2b0G3CjFgGpk2dUV3iYaRl+
         YDwCe5TccQ7hcPFKrFCAA/tmfsjrLJImyUr4tBNm/O7wagzcB2t84UW577EQYgkiN5Da
         OMAr60mqsr7n6VBPIxvDqd5S2DR0uhdvQ0xujoxF+kSxu4aH751hVoR7qRTHGgoL660P
         ZbEQ==
X-Gm-Message-State: AC+VfDyppmjEbuKs5P2n9q/TmgsCJS4dqf+zcIGAKXvvaH8b19qsQBdy
	sg2egDNwib+HIHOYFlUFt+uHSQ==
X-Google-Smtp-Source: ACHHUZ5QenQx/QeD/48u6FI2zqKtnWEaRxUQn7l0QY2Xhr1/LIy4nn8DwP/ooeoVFbjEmpIbtoTK5Q==
X-Received: by 2002:a17:907:3f9a:b0:96f:8666:5fc4 with SMTP id hr26-20020a1709073f9a00b0096f86665fc4mr10730952ejc.50.1686212928223;
        Thu, 08 Jun 2023 01:28:48 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id h20-20020a170906855400b009787062d21csm386574ejy.77.2023.06.08.01.28.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jun 2023 01:28:47 -0700 (PDT)
Message-ID: <b941c06f-7f7d-1364-a7f5-be5905112cac@linaro.org>
Date: Thu, 8 Jun 2023 10:28:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 4/5] dt-bindings: phy: realtek: Add the doc about the
 Realtek SoC USB 2.0 PHY
To: =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Ray Chi <raychi@google.com>, Matthias Kaehlcke <mka@chromium.org>,
 Douglas Anderson <dianders@chromium.org>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Mathias Nyman <mathias.nyman@linux.intel.com>,
 Flavio Suligoi <f.suligoi@asem.it>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
References: <20230607062500.24669-1-stanley_chang@realtek.com>
 <20230607062500.24669-4-stanley_chang@realtek.com>
 <7cce1d72-6b4d-9fff-32bc-942193388134@linaro.org>
 <8a88cbee5c6245f2941c700b2bb30697@realtek.com>
 <7df8ffb6-a544-d10e-5273-fd6c4b368b20@linaro.org>
 <7d503e3028a7487a9a087cfa061fff9d@realtek.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7d503e3028a7487a9a087cfa061fff9d@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_012850_062052_D7A70198 
X-CRM114-Status: GOOD (  20.26  )
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

T24gMDgvMDYvMjAyMyAxMDoyMSwgU3RhbmxleSBDaGFuZ1vmmIzogrLlvrddIHdyb3RlOgo+IAo+
Pj4gTWF5YmUgSSB1c2UgdGhlIHdvcmQgImNvbnRyb2wgcG93ZXIgZG9tYWluIiBpcyBub3Qgd2Vs
bCwgSSBqdXN0IHdhbnQgdG8KPj4gY29udHJvbCB0aGUgbGRvIG9mIHVzYiBwaHkuCj4+PiBSZXZp
c2VkOgo+Pj4gVGhlIHBoYW5kbGUgb2Ygc3lzY29uIHVzZWQgdG8gY29udHJvbCB0aGUgbGRvIG9m
IFVTQiBQSFkuCj4+Cj4+IElzbid0IHRoaXMgc3RpbGwgYSBwb3dlciBkb21haW4/Cj4gCj4gSSBv
bmx5IGNvbnRyb2wgYSByZWdpc3RlciwgaXQgaXMgbm90IG5lZWRlZCBhIGRyaXZlciBvZiBwb3dl
ciBkb21haW4uCgpBcmVuJ3QgbWFueSBwb3dlciBkb21haW5zIGp1c3QgYSByZWdpc3RlcnM/IFdo
YXQgYWJvdXQgb3RoZXIgZHJpdmVycz8KRG9uJ3QgeW91IHdhbnQgaW4gb3RoZXIgZHJpdmVyIGNv
bnRyb2wgTERPIG9mIHNvbWV0aGluZyBlbHNlPyBBbmQgaW4Kb3RoZXIgc29tZXRoaW5nIGVsc2U/
Cgo+IAo+IAo+Pj4KPj4+Pj4gKwo+Pj4+PiArcGF0dGVyblByb3BlcnRpZXM6Cj4+Pj4+ICsgICJe
cGh5QFswLTNdKyQiOgo+Pj4+PiArICAgIHR5cGU6IG9iamVjdAo+Pj4+PiArICAgIGRlc2NyaXB0
aW9uOgo+Pj4+PiArICAgICAgRWFjaCBzdWItbm9kZSBpcyBhIFBIWSBkZXZpY2UgZm9yIG9uZSBY
SENJIGNvbnRyb2xsZXIuCj4+Pj4KPj4+PiBJIGRvbid0IHRoaW5rIGl0IGlzIHRydWUuIFlvdSBj
bGFpbSBhYm92ZSB0aGF0IHlvdSBoYXZlIDAgYXMKPj4+PiBwaHktY2VsbHMsIG1lYW5zIHlvdSBo
YXZlIG9uZSBwaHkuIEhlcmUgeW91IHNheSB5b3UgY2FuIGhhdmUgdXAgdG8gNCBwaHlzLgo+Pj4K
Pj4+IEkgbWVhbiB0aGUgZHJpdmVyIGNhbiBzdXBwb3J0IHVwIHRvIDQgcGh5cy4KPj4KPj4gV2hh
dCBkcml2ZXIgY2FuIG9yIGNhbm5vdCBkbywgZG9lcyBub3QgbWF0dGVyLiBUaGlzIGlzIGFib3V0
IGhhcmR3YXJlLgo+Pgo+Pj4gRm9yIFJURDEyOTUgaGFzIG9ubHkgb25lIHBoeS4KPj4+IEZvciBS
VEQxMzk1IGhhcyB0d28gcGh5cy4KPj4KPj4gVHdvIHBoeXM/IFNvIGhvdyBkbyB5b3UgcmVmZXJl
bmNlIHRoZW0gd2hlbiBjZWxscz0wPwo+IAo+IAo+IEFib3V0IFJURDEzOTUgU29DcyBVU0IKPiAg
IFhIQ0kgY29udHJvbGxlciMxIC0tIHVzYjJwaHkgLS0gcGh5IzAKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwtIHBoeSMxCj4gT25lIHhoY2kgY29udHJvbGxlciBtYXAgdG8gb25lIHBoeSBk
cml2ZXIuCj4gQW5kIG9uZSBwaHkgZHJpdmVyIGhhdmUgdHdvIHBoeXMgKHBoeUAwIGFuZCBwaHlA
MSkuCj4gCj4gTWF5YmUgdGhlICJwaHkiIG5hbWUgaXMgY29uZnVzaW5nLgo+IFRoaXMgInBoeSIg
bm90IG1lYW4gYSBwaHkgZHJpdmVyLgoKV2UgZG8gbm90IHRhbGsgYWJvdXQgZHJpdmVycywgYnV0
IERUUyBhbmQgaGFyZHdhcmUuCgo+IFdvdWxkICJwb3J0IiBiZSBtb3JlIGFwcHJvcHJpYXRlPyAK
PiAKPiBGb3IgZXhhbXBsZSwKPiBVc2luZyBwaHlAMCBhbmQgcGh5QDE6Cj4gICAgIHVzYl9wb3J0
MV91c2IycGh5OiB1c2ItcGh5QDEzYzE0IHsKPiAgICAgICAgIGNvbXBhdGlibGUgPSAicmVhbHRl
ayxydGQxMzk1LXVzYjJwaHkiLCAicmVhbHRlayx1c2IycGh5IjsKPiAgICAgICAgIHJlZyA9IDww
eDEzMmM0IDB4ND4sIDwweDMxMjgwIDB4OD47Cj4gICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwx
PjsKPiAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+ICAgICAgICAgI3BoeS1jZWxscyA9IDww
PjsKPiAgICAgICAgIHJlYWx0ZWssdXNiLWN0cmwgPSA8JnVzYl9jdHJsPjsKPiAKPiAgICAgICAg
IHBoeUAwIHsKPiAgICAgICAgICAgICByZWcgPSA8MD47CgpTbyBzdWNoIGNoaWxkIGlzIGEgTkFL
Li4uIHlvdSBoYXZlIG5vdGhpbmcgaGVyZS4gQnV0IGl0J3MgdW5yZWxhdGVkIHRvcGljLgoKPiAg
ICAgICAgIH07Cj4gICAgICAgICBwaHlAMSB7Cj4gICAgICAgICAgICAgcmVnID0gPDE+Owo+ICAg
ICAgICAgfTsKPiAgICAgfTsKPiAKPiBDaGFuZ2U6IHBvcnRAMCBhbmQgcG9ydEAxCj4gICAgIHVz
Yl9wb3J0MV91c2IycGh5OiB1c2ItcGh5QDEzYzE0IHsKPiAgICAgICAgIGNvbXBhdGlibGUgPSAi
cmVhbHRlayxydGQxMzk1LXVzYjJwaHkiLCAicmVhbHRlayx1c2IycGh5IjsKPiAgICAgICAgIHJl
ZyA9IDwweDEzMmM0IDB4ND4sIDwweDMxMjgwIDB4OD47Cj4gICAgICAgICAjYWRkcmVzcy1jZWxs
cyA9IDwxPjsKPiAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+ICAgICAgICAgI3BoeS1jZWxs
cyA9IDwwPjsKPiAgICAgICAgIHJlYWx0ZWssdXNiLWN0cmwgPSA8JnVzYl9jdHJsPjsKPiAKPiAg
ICAgICAgIHByb3RAMCB7Cj4gICAgICAgICAgICAgcmVnID0gPDA+Owo+ICAgICAgICAgfTsKPiAg
ICAgICAgIHBvcnRAMSB7Cj4gICAgICAgICAgICAgcmVnID0gPDE+Owo+ICAgICAgICAgfTsKPiAg
ICAgfTsKClRoaXMgaXMgbm90IHRoZSBhbnN3ZXIuIFRoaXMgaXMgdGhlIHByb3ZpZGVyLiBIb3cg
ZG8geW91IHJlZmVyZW5jZSBpdApmcm9tIHRoZSBjb25zdW1lci4KClVwc3RyZWFtIHlvdXIgZW50
aXJlIERUUy4gSXQncyBmcnVzdHJhdGluZyB0byB0cnkgdG8gdW5kZXJzdGFuZCB5b3VyIERUUwpm
cm9tIHBpZWNlcyBvZiBpbmZvcm1hdGlvbiB5b3UgYXJlIHNoYXJpbmcuIEFsc28gdmVyeSB0aW1l
IGNvbnN1bWluZyBhbmQKeW91IGFyZSBub3QgdGhlIG9ubHkgb25lIHNlbmRpbmcgcGF0Y2hlcyBm
b3IgcmV2aWV3Li4uCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
