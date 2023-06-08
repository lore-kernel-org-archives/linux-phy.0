Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C29EEC7EE29
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 07:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJaTWN4Bp4qgv2hVJl61h2S8FuQENSCKREGiDzyDiKM=; b=puLIU00z369Urc
	ahPYdiSgTqIWrrGWVcMu1SMgAcUQ6mjTeTdu85KbAoY0plTDNVa+mZCnilf1TvLKytdJqYtzVgTvS
	zn8JAtjsvx3j5SZBKMVnWqsFc/l1ThX0ssMqTkcDmFyjD2sSgw6fQ7as54NiN0zavCYXBiNrRiR1a
	NxOOst6MK60AvEUTffYZQqckTkV1PbgP5uox9N2OoSHsUYs7vEzcBHv4CUp7bfmcMu8KUSuhTEz4D
	Hzu1cWLnnlFWF8EXaTmD7Q6DKbmyptCeqmcqPTRv4DBg6X0E6RV71yoMEOYLyUHXl9DPHK9ssV8fK
	jTI+lTq3WKmnaY2QhYZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7AOL-008RvY-1U;
	Thu, 08 Jun 2023 07:49:09 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7AOI-008Rv5-1T
	for linux-phy@lists.infradead.org;
	Thu, 08 Jun 2023 07:49:07 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5147f7d045bso400445a12.2
        for <linux-phy@lists.infradead.org>; Thu, 08 Jun 2023 00:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686210545; x=1688802545;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wKXuqqogfGtV6X2iudgEbDe3qPnP59JxR6B3QZM/6Dc=;
        b=bhf+RuA4cxddlwxZKvK2wGkOnl/9IsTFmePcG64J8c5+dhVU8H5Ar6PU7SXUoD134P
         X94MJk/g8AZRGzJdI3PPL2V1bHwEfi5J7Qg825NZjE8x82rCjKx1cQS/z6JUXTXDApM+
         PBucjFaVmiMgyg3Vp9mAk8oy9p+Q+rUsKwjnWIPQms3F9ZxG9ZVPU5a/ru/vldHfmfSn
         +sMw8fBv1FELUTlQcjlkKmHwwski8uJk6bBsfw7qrBeHrOYiaOlqpSyxWqTy3bYMn+Jb
         0njLxhFKb4sFdZLjlURFzZcQ+OPrQSLBjV4dErXv1gcMV54WuJzf9HVlv/4Q8wMzsIM1
         9gjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686210545; x=1688802545;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wKXuqqogfGtV6X2iudgEbDe3qPnP59JxR6B3QZM/6Dc=;
        b=JPTRuFa1Wa+DxqWn6CMLgI10d1zHgMFJK5wZ8p/y0gOJdFKeShdIauvdD56s7AbceA
         20GvNrn8JN5rhthAxSVcKDaZfV5hw/LOvlZsemnhJx7GzMSqQDTTSfPI/pTubjf3ouDZ
         IDyzUPfnBy552rnJ9iVstHuEYTPCyblouidyjdXfQnfLoUxYeOoULgZqSLm8gq1zVYeZ
         rsOnxtAHpd2k2LaE8ey+LUz20FGsLbm6FKJ0Bnu1Q6Maf0HzJNa1gcLv/MvuVI1s20kl
         Zj0EZsTdDUwTkpivV85/IgPhQSHP6fZ3+l5uF0f6gkr+nCOJtY1LkZNoB7aQwf6TVCrv
         ujUg==
X-Gm-Message-State: AC+VfDxPy16DQe1edfBxM6i5G0OK6m3LZGjw/VhtXRsKUbsqIAvU8lyP
	9t6CcrV3EXsL0/0LSnjOmPRl6Q==
X-Google-Smtp-Source: ACHHUZ6yjUk/Bupi3XuBm3zPQr5L3cn8gW6giSpWJdT5x1Wi4H/8UZ3u8kE/ol+rO20wF6MKqMUrxA==
X-Received: by 2002:a05:6402:6c6:b0:50b:d75d:3155 with SMTP id n6-20020a05640206c600b0050bd75d3155mr7195595edy.37.1686210544721;
        Thu, 08 Jun 2023 00:49:04 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u11-20020aa7db8b000000b00514b3a2008esm238999edt.2.2023.06.08.00.49.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jun 2023 00:49:04 -0700 (PDT)
Message-ID: <7df8ffb6-a544-d10e-5273-fd6c4b368b20@linaro.org>
Date: Thu, 8 Jun 2023 09:49:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 4/5] dt-bindings: phy: realtek: Add the doc about the
 Realtek SoC USB 2.0 PHY
Content-Language: en-US
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
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8a88cbee5c6245f2941c700b2bb30697@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_004906_499352_E983306C 
X-CRM114-Status: GOOD (  24.30  )
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

T24gMDgvMDYvMjAyMyAwOToyNCwgU3RhbmxleSBDaGFuZ1vmmIzogrLlvrddIHdyb3RlOgo+Pj4g
KyAgcmVhbHRlayx1c2ItY3RybDoKPj4+ICsgICAgZGVzY3JpcHRpb246IFRoZSBwaGFuZGxlIG9m
IHN5c2NvbiB1c2VkIHRvIGNvbnRyb2wgVVNCIFBIWSBwb3dlcgo+PiBkb21haW4uCj4+PiArICAg
ICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUKPj4KPj4gTm8s
IHdlIGhhdmUgcG93ZXItZG9tYWlucyBmb3IgdGhpcy4KPiAKPiBNYXliZSBJIHVzZSB0aGUgd29y
ZCAiY29udHJvbCBwb3dlciBkb21haW4iIGlzIG5vdCB3ZWxsLCBJIGp1c3Qgd2FudCB0byBjb250
cm9sIHRoZSBsZG8gb2YgdXNiIHBoeS4KPiBSZXZpc2VkOgo+IFRoZSBwaGFuZGxlIG9mIHN5c2Nv
biB1c2VkIHRvIGNvbnRyb2wgdGhlIGxkbyBvZiBVU0IgUEhZLgoKSXNuJ3QgdGhpcyBzdGlsbCBh
IHBvd2VyIGRvbWFpbj8KCj4gCj4+PiArCj4+PiArcGF0dGVyblByb3BlcnRpZXM6Cj4+PiArICAi
XnBoeUBbMC0zXSskIjoKPj4+ICsgICAgdHlwZTogb2JqZWN0Cj4+PiArICAgIGRlc2NyaXB0aW9u
Ogo+Pj4gKyAgICAgIEVhY2ggc3ViLW5vZGUgaXMgYSBQSFkgZGV2aWNlIGZvciBvbmUgWEhDSSBj
b250cm9sbGVyLgo+Pgo+PiBJIGRvbid0IHRoaW5rIGl0IGlzIHRydWUuIFlvdSBjbGFpbSBhYm92
ZSB0aGF0IHlvdSBoYXZlIDAgYXMgcGh5LWNlbGxzLCBtZWFucyB5b3UKPj4gaGF2ZSBvbmUgcGh5
LiBIZXJlIHlvdSBzYXkgeW91IGNhbiBoYXZlIHVwIHRvIDQgcGh5cy4KPiAKPiBJIG1lYW4gdGhl
IGRyaXZlciBjYW4gc3VwcG9ydCB1cCB0byA0IHBoeXMuCgpXaGF0IGRyaXZlciBjYW4gb3IgY2Fu
bm90IGRvLCBkb2VzIG5vdCBtYXR0ZXIuIFRoaXMgaXMgYWJvdXQgaGFyZHdhcmUuCgo+IEZvciBS
VEQxMjk1IGhhcyBvbmx5IG9uZSBwaHkuCj4gRm9yIFJURDEzOTUgaGFzIHR3byBwaHlzLgoKVHdv
IHBoeXM/IFNvIGhvdyBkbyB5b3UgcmVmZXJlbmNlIHRoZW0gd2hlbiBjZWxscz0wPwoKPiAKPj4+
ICsgICAgICBGb3IgbW9zdCBSZWxhdGVrIFNvQ3MsIG9uZSBYSENJIGNvbnRyb2xsZXIgb25seSBz
dXBwb3J0IG9uZSB0aGUgVVNCCj4+IDIuMAo+Pj4gKyAgICAgIHBoeS4gRm9yIFJURDEzOTUgU29D
LCB0aGUgb25lIFhIQ0kgY29udHJvbGxlciBoYXMgdHdvIFVTQiAyLjAKPj4gUEhZcy4KPj4+ICsg
ICAgcHJvcGVydGllczoKPj4+ICsgICAgICByZWFsdGVrLHBhZ2UwLXBhcmFtOgo+Pj4gKyAgICAg
ICAgZGVzY3JpcHRpb246IFBIWSBwYXJhbWV0ZXIgYXQgcGFnZSAwLiBUaGUgZGF0YSBhcmUgdGhl
IHBhaXIgb2YKPj4gdGhlCj4+PiArICAgICAgICAgIG9mZnNldCBhbmQgdmFsdWUuCj4+Cj4+IFRo
aXMgbmVlZHMgdG8gYmUgc3BlY2lmaWMuIFdoYXQgdGhlIGhlY2sgaXMgIlBIWSBwYXJhbWV0ZXIi
Pwo+Pgo+Pj4gKyAgICAgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMv
dWludDMyLWFycmF5Cj4+Cj4+IEFycmF5PyBUaGVuIG1heEl0ZW1zLgo+IEkgaGF2ZSBmb3VuZCBv
dGhlciBkb2N1bWVudC4KPiBJdCBzaG91bGQgYmUgYSB1aW50MzItbWF0cml4Lgo+IEkgd2lsbCBh
ZGQgdGhlIG1heEl0ZW1zLgoKRW50aXJlIHByb3BlcnR5IHNob3VsZCBiZSBkcm9wcGVkLgoKPiAK
Pj4+ICsKPj4+ICsgICAgICByZWFsdGVrLHBhZ2UxLXBhcmFtOgo+Pj4gKyAgICAgICAgZGVzY3Jp
cHRpb246IFBIWSBwYXJhbWV0ZXIgYXQgcGFnZSAxLiBUaGUgZGF0YSBhcmUgdGhlIHBhaXIgb2YK
Pj4gdGhlCj4+PiArICAgICAgICAgIG9mZnNldCBhbmQgdmFsdWUuCj4+PiArICAgICAgICAkcmVm
OiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzItYXJyYXkKPj4+ICsKPj4+
ICsgICAgICByZWFsdGVrLHBhZ2UyLXBhcmFtOgo+Pj4gKyAgICAgICAgZGVzY3JpcHRpb246IFBI
WSBwYXJhbWV0ZXIgYXQgcGFnZSAyLiBUaGUgZGF0YSBhcmUgdGhlIHBhaXIgb2YKPj4gdGhlCj4+
PiArICAgICAgICAgIG9mZnNldCBhbmQgdmFsdWUuIElmIHRoZSBQSFkgc3VwcG9ydCB0aGUgcGFn
ZSAyIHBhcmFtZXRlci4KPj4+ICsgICAgICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2Rl
ZmluaXRpb25zL3VpbnQzMi1hcnJheQo+Pj4gKwo+Pj4gKyAgICAgIHJlYWx0ZWssc3VwcG9ydC1w
YWdlMi1wYXJhbToKPj4+ICsgICAgICAgIGRlc2NyaXB0aW9uOiBTZXQgdGhpcyBmbGFnIGlmIFBI
WSBzdXBwb3J0IHBhZ2UgMiBwYXJhbWV0ZXIuCj4+Cj4+IFdoeSB0aGlzIGNhbm5vdCBiZSBkZWR1
Y3RlZCBmcm9tIGNvbXBhdGlibGU/Cj4gSXQgY2FuIGlkZW50aWZ5IGJ5IGNvbXBhdGlibGUuCgpT
byBkcm9wIGl0LgoKPiAKPj4KPj4+ICsgICAgICAgIHR5cGU6IGJvb2xlYW4KPj4+ICsKPj4+ICsg
ICAgICByZWFsdGVrLGRvLXRvZ2dsZToKPj4+ICsgICAgICAgIGRlc2NyaXB0aW9uOiBTZXQgdGhp
cyBmbGFnIHRvIGVuYWJsZSBQSFkgcGFyYW1ldGVyIHRvZ2dsZSB3aGVuCj4+IHBvcnQKPj4+ICsg
ICAgICAgICAgc3RhdHVzIGNoYW5nZS4KPj4KPj4gRG8gbm90IGluc3RydWN0IE9TIHdoYXQgdG8g
ZG8uIEV4cGxhaW4gd2h5IHRoaXMgaXMgYSBoYXJkd2FyZSBjaGFyYWN0ZXJpc3RpYy4KPiAKPiBJ
biBteSBvcmlnaW5hbCBpbnRlbnRpb24sIHdlIGhvcGUgdGhhdCB0aGlzIHByb3BlcnR5IGNhbiBi
ZSB1c2VkIHRvIGNvbnRyb2wgdGhlIHBoeSBkcml2ZXIgZG8gcGFyYW1ldGVyIHRvZ2dsZS4KPiBJ
cyBpdCBhIGhhcmR3YXJlIGNoYXJhY3RlcmlzdGljPyBJIGRvbid0IHRoaW5rIGl0J3MgZXhhY3Rs
eSBhIGhhcmR3YXJlIGZlYXR1cmUuCj4gTWF5YmUgaXQgY2FuIGJlIHNwZWNpZmllZCBieSB0aGUg
Y29tcGF0aWJsZS4KCkRyb3AgaXQuCgo+IAo+Pj4gKyAgICAgICAgdHlwZTogYm9vbGVhbgo+Pj4g
Kwo+Pj4gKyAgICAgIHJlYWx0ZWssZG8tdG9nZ2xlLWRyaXZpbmc6Cj4+PiArICAgICAgICBkZXNj
cmlwdGlvbjogU2V0IHRoaXMgZmxhZyB0byBlbmFibGUgUEhZIHBhcmFtZXRlciB0b2dnbGUgZm9y
Cj4+IGFkanVzdAo+Pj4gKyAgICAgICAgICB0aGUgZHJpdmluZyB3aGVuIHBvcnQgc3RhdHVzIGNo
YW5nZS4KPj4KPj4gRG8gbm90IGluc3RydWN0IE9TIHdoYXQgdG8gZG8uIEV4cGxhaW4gd2h5IHRo
aXMgaXMgYSBoYXJkd2FyZSBjaGFyYWN0ZXJpc3RpYy4KPj4KPj4KPj4+ICsgICAgICAgIHR5cGU6
IGJvb2xlYW4KPj4+ICsKPj4+ICsgICAgICByZWFsdGVrLGNoZWNrLWVmdXNlOgo+Pj4gKyAgICAg
ICAgZGVzY3JpcHRpb246IEVuYWJsZSB0byB1cGRhdGUgUEhZIHBhcmFtZXRlciBmcm9tIHJlYWRp
bmcgb3RwCj4+IHRhYmxlLgo+Pgo+PiBEbyBub3QgaW5zdHJ1Y3QgT1Mgd2hhdCB0byBkby4gRXhw
bGFpbiB3aHkgdGhpcyBpcyBhIGhhcmR3YXJlIGNoYXJhY3RlcmlzdGljLgo+IAo+IFNhbWUgYWJv
dmUuCgpTbyBkcm9wIGFsbCBvZiB0aGVzZS4KCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
