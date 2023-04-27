Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07193C7EE23
	for <linux-phy@archiver.kernel.org>; Thu, 27 Apr 2023 13:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sB5l+fduVO45u33TDiYU6A/gZCP5d7bE92v0pxIirhU=; b=YKjU5U2a0gB96X
	qycPXLnNzv1gl3IeMnvdYqKyOSBe/yY0R2F2Ka1EekTl7jfpuimrqbwrqSTfh+tsSjBJAKsbM3oD8
	z1ttGGSDuWX8DiEuUjKjj3QD2CfM950hojoL3nHnUemj1J7pPldmmMihcvt6G6+/doE5ZAaeBjQdO
	x5OJqZ8sE6bSfHrmnvj/TSQsZlWynHNjh8KzK6YH2RKVg/poovlNANU8IkayvG07PltjipkOZ8DN/
	b1IiN+NSNILMOQi11mKTH7R/QumjBZulPvtGQFJX/3eO9ZPlhRDv2/DVKEEAXBaBR9/uvrfW5o7sS
	WBD2NLbDQq/dQbS/fn9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps1PE-006bx0-2A;
	Thu, 27 Apr 2023 13:11:28 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps1PA-006bwQ-33
	for linux-phy@lists.infradead.org;
	Thu, 27 Apr 2023 13:11:26 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-50a14564d17so6600914a12.0
        for <linux-phy@lists.infradead.org>; Thu, 27 Apr 2023 06:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682601080; x=1685193080;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bfGyHH2PfPrfkbPBpy+bAVZIzfzjqiyX4dJ97CEcQ98=;
        b=LGlb7KfKTetaiNx8nq8hjUb0MXHmPINSJwSoqGNA0s+/LSzKxdnYhI1vlWSScecZ9k
         jNMs/WnEx3SxLSdRrSqUdiWJYyDVbdypZvroK8vHQol/hJv9/LwAXhwDWxpXh0XxN/mH
         V8dEvpOp+t2j2gwcHVdgIzEfWLTKRb/5zkwfFmO+PhVBABlH4MI4gTLeis/+ra26SlFg
         OmlHWqbOhIlkRZOU0ImB5gFHzjEElhWaKrnprfQ27U/9Y+TgQkK4J6feEYPHM+Md9XyU
         FaRvhunDRmc2yW0RkkFKYHu8Q3zJcRZIy5R26DwnFWeaLK7qmU20lFOF9+2Pj09ztQyT
         2a6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682601080; x=1685193080;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bfGyHH2PfPrfkbPBpy+bAVZIzfzjqiyX4dJ97CEcQ98=;
        b=NSwnsFBRXobamSBrEpbLdKYLoYaDmWBikL+BRQnRkSy5Sud7l2F+F39ffXQ4y8yUno
         Kbn3AoR54NyKftt024GSF4Hj8QtHQ1h3dTg8l9sMEK9v2i2B6IbTqrYO97rtgezGwLH7
         SIZb+FSfaxqpMHLPqTX3t40kZeTzeWJ9b6g1gugXwgwTtN7oNvMA0KUfOsNVjbKzI9lm
         LSa4wcJuNLPAVkBke5SvwQDWWPpFyyAeT18x049xgYQ/xNVG5zDrRaCuoD4dJAFJ662f
         55oiOPDSpPH5fNeR429csBhpiy38yDih1ESRy4BLeu9gVpPSHbp5RoDRh8/TGqPKyJsn
         IAtA==
X-Gm-Message-State: AC+VfDy/pQzS+mplzj312Ot7w7oK3WjutLRx6rRNbZLpJ5FEHgDdO/tj
	7qFM1rVmYOqhXVrreXh9Q0cg3tZ+cF3ScTa43fICFQ==
X-Google-Smtp-Source: ACHHUZ6hVTIRGQCEx219U2/y5EcPf/pvENXLICV19fheSZjd50j2Y4tyz3ajAGBq+d00Ei+IDurZDw==
X-Received: by 2002:a17:906:728e:b0:94e:6eb3:abc4 with SMTP id b14-20020a170906728e00b0094e6eb3abc4mr6184980ejl.4.1682601080416;
        Thu, 27 Apr 2023 06:11:20 -0700 (PDT)
Received: from [172.23.2.82] ([31.221.30.162])
        by smtp.gmail.com with ESMTPSA id y21-20020a17090614d500b0094b87711c9fsm9657296ejc.99.2023.04.27.06.11.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 06:11:20 -0700 (PDT)
Message-ID: <d1850d73-9d92-c0aa-7cf8-bae4c0e4144b@linaro.org>
Date: Thu, 27 Apr 2023 15:11:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 5/7] phy: qcom-qmp-combo: Introduce drm_bridge
Content-Language: en-US
To: Bryan O'Donoghue <pure.logic@nexus-software.ie>,
 Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Johan Hovold <johan@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-6-quic_bjorande@quicinc.com>
 <CAJB8c04ah3YfK2VGxDhHMHK4KVJ7kZQv0b5JfPBu7jOk3mFQRA@mail.gmail.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <CAJB8c04ah3YfK2VGxDhHMHK4KVJ7kZQv0b5JfPBu7jOk3mFQRA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_061125_050944_758D4214 
X-CRM114-Status: GOOD (  23.48  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjYvMDQvMjAyMyAxMjozMywgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiBUdWUsIEFw
ciAyNSwgMjAyMyBhdCA0OjQw4oCvQU0gQmpvcm4gQW5kZXJzc29uCj4gPHF1aWNfYmpvcmFuZGVA
cXVpY2luYy5jb20+IHdyb3RlOgo+Pgo+PiBUaGUgUU1QIGNvbWJvIFBIWSBzaXRzIGluIGFuIG9m
X2dyYXBoIGNvbm5lY3RlZCBiZXR3ZWVuIHRoZSBEaXNwbGF5UG9ydAo+PiBjb250cm9sbGVyIGFu
ZCBhIFVTQiBUeXBlLUMgY29ubmVjdG9yIChvciBwb3NzaWJseSBhIHJlZHJpdmVyKS4KPj4KPj4g
VGhlIFRDUE0gbmVlZHMgdG8gYmUgYWJsZSB0byBjb252ZXkgdGhlIEhQRCBzaWduYWwgdG8gdGhl
IERpc3BsYXlQb3J0Cj4+IGNvbnRyb2xsZXIsIGJ1dCBubyBkaXJlY3RseSBsaW5rIGlzIHByb3Zp
ZGVkIGJ5IERldmljZVRyZWUgc28gdGhlIHNpZ25hbAo+PiBuZWVkcyB0byAicGFzcyB0aHJvdWdo
IiB0aGUgUU1QIGNvbWJvIHBoeS4KPj4KPj4gSGFuZGxlIHRoaXMgYnkgaW50cm9kdWNpbmcgYSBk
cm1fYnJpZGdlIHdoaWNoIHVwb24gaW5pdGlhbGl6YXRpb24gZmluZHMKPj4gdGhlIG5leHQgYnJp
ZGdlIChpLmUuIHRoZSB1c2ItYy1jb25uZWN0b3IpIGFuZCBjaGFpbiB0aGlzIHRvZ2V0aGVyLiBU
aGlzCj4+IHdheSBIUEQgY2hhbmdlcyBpbiB0aGUgY29ubmVjdG9yIHdpbGwgcHJvcGFnYXRlIHRv
IHRoZSBEaXNwbGF5UG9ydAo+PiBkcml2ZXIuCj4+Cj4+IFRoZSBjb25uZWN0b3IgYnJpZGdlIGlz
IHJlc29sdmVkIGxhemlseSwgYXMgdGhlIFRDUE0gaXMgZXhwZWN0ZWQgdG8gYmUKPj4gYWJsZSB0
byByZXNvbHZlIHRoZSB0eXBlYyBtdXggYW5kIHN3aXRjaCBhdCBwcm9iZSB0aW1lLCBzbyB0aGUg
UU1QIGNvbWJvCj4+IHBoeSB3aWxsIHByb2JlIGJlZm9yZSB0aGUgVENQTS4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogQmpvcm4gQW5kZXJzc29uIDxxdWljX2Jqb3JhbmRlQHF1aWNpbmMuY29tPgo+PiAt
LS0KPj4gICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyB8IDM2ICsr
KysrKysrKysrKysrKysrKysrKysrCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMo
KykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1j
b21iby5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKPj4gaW5k
ZXggNWQ2ZDZlZjM5NDRiLi44NGJjMDgwMDI1MzcgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4+IEBAIC0yMiw2ICsyMiw4IEBACj4+ICAgI2luY2x1
ZGUgPGxpbnV4L3VzYi90eXBlYy5oPgo+PiAgICNpbmNsdWRlIDxsaW51eC91c2IvdHlwZWNfbXV4
Lmg+Cj4+Cj4+ICsjaW5jbHVkZSA8ZHJtL2RybV9icmlkZ2UuaD4KPj4gKwo+PiAgICNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9waHkvcGh5LXFjb20tcW1wLmg+Cj4+Cj4+ICAgI2luY2x1ZGUgInBoeS1x
Y29tLXFtcC5oIgo+PiBAQCAtMTMzMiw2ICsxMzM0LDggQEAgc3RydWN0IHFtcF9jb21ibyB7Cj4+
ICAgICAgICAgIHN0cnVjdCBjbGtfaHcgZHBfbGlua19odzsKPj4gICAgICAgICAgc3RydWN0IGNs
a19odyBkcF9waXhlbF9odzsKPj4KPj4gKyAgICAgICBzdHJ1Y3QgZHJtX2JyaWRnZSBicmlkZ2U7
Cj4+ICsKPj4gICAgICAgICAgc3RydWN0IHR5cGVjX3N3aXRjaF9kZXYgKnN3Owo+PiAgICAgICAg
ICBlbnVtIHR5cGVjX29yaWVudGF0aW9uIG9yaWVudGF0aW9uOwo+PiAgIH07Cj4+IEBAIC0zMTk2
LDYgKzMyMDAsMzQgQEAgc3RhdGljIGludCBxbXBfY29tYm9fcmVnaXN0ZXJfY2xvY2tzKHN0cnVj
dCBxbXBfY29tYm8gKnFtcCwgc3RydWN0IGRldmljZV9ub2RlICoKPj4gICAgICAgICAgcmV0dXJu
IGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldChxbXAtPmRldiwgcGh5X2Nsa19yZWxlYXNlX3Byb3Zp
ZGVyLCBkcF9ucCk7Cj4+ICAgfQo+Pgo+PiArc3RhdGljIGludCBxbXBfY29tYm9fYnJpZGdlX2F0
dGFjaChzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlLAo+PiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGVudW0gZHJtX2JyaWRnZV9hdHRhY2hfZmxhZ3MgZmxhZ3MpCj4+ICt7Cj4+
ICsgICAgICAgc3RydWN0IHFtcF9jb21ibyAqcW1wID0gY29udGFpbmVyX29mKGJyaWRnZSwgc3Ry
dWN0IHFtcF9jb21ibywgYnJpZGdlKTsKPj4gKyAgICAgICBzdHJ1Y3QgZHJtX2JyaWRnZSAqbmV4
dF9icmlkZ2U7Cj4+ICsKPj4gKyAgICAgICBpZiAoIShmbGFncyAmIERSTV9CUklER0VfQVRUQUNI
X05PX0NPTk5FQ1RPUikpCj4+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPj4gKwo+
PiArICAgICAgIG5leHRfYnJpZGdlID0gZGV2bV9kcm1fb2ZfZ2V0X2JyaWRnZShxbXAtPmRldiwg
cW1wLT5kZXYtPm9mX25vZGUsIDAsIDApOwo+PiArICAgICAgIGlmIChJU19FUlIobmV4dF9icmlk
Z2UpKQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIGRldl9lcnJfcHJvYmUocW1wLT5kZXYsIFBU
Ul9FUlIobmV4dF9icmlkZ2UpLCAiZmFpbGVkIHRvIGFjcXVpcmUgZHJtX2JyaWRnZVxuIik7Cj4+
ICsKPj4gKyAgICAgICByZXR1cm4gZHJtX2JyaWRnZV9hdHRhY2goYnJpZGdlLT5lbmNvZGVyLCBu
ZXh0X2JyaWRnZSwgYnJpZGdlLCBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1IpOwo+PiAr
fQo+PiArCj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9icmlkZ2VfZnVuY3MgcW1wX2NvbWJv
X2JyaWRnZV9mdW5jcyA9IHsKPj4gKyAgICAgICAuYXR0YWNoID0gcW1wX2NvbWJvX2JyaWRnZV9h
dHRhY2gsCj4+ICt9Owo+PiArCj4+ICtzdGF0aWMgaW50IHFtcF9jb21ib19kcF9yZWdpc3Rlcl9i
cmlkZ2Uoc3RydWN0IHFtcF9jb21ibyAqcW1wKQo+PiArewo+PiArICAgICAgIHFtcC0+YnJpZGdl
LmZ1bmNzID0gJnFtcF9jb21ib19icmlkZ2VfZnVuY3M7Cj4+ICsgICAgICAgcW1wLT5icmlkZ2Uu
b2Zfbm9kZSA9IHFtcC0+ZGV2LT5vZl9ub2RlOwo+PiArCj4+ICsgICAgICAgcmV0dXJuIGRldm1f
ZHJtX2JyaWRnZV9hZGQocW1wLT5kZXYsICZxbXAtPmJyaWRnZSk7Cj4+ICt9Cj4+ICsKPj4gICBz
dGF0aWMgaW50IHFtcF9jb21ib19wYXJzZV9kdF9sZWNhY3lfZHAoc3RydWN0IHFtcF9jb21ibyAq
cW1wLCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQo+PiAgIHsKPj4gICAgICAgICAgc3RydWN0IGRl
dmljZSAqZGV2ID0gcW1wLT5kZXY7Cj4+IEBAIC0zNDU5LDYgKzM0OTEsMTAgQEAgc3RhdGljIGlu
dCBxbXBfY29tYm9fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gICAgICAg
ICAgaWYgKHJldCkKPj4gICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+Pgo+PiArICAgICAg
IHJldCA9IHFtcF9jb21ib19kcF9yZWdpc3Rlcl9icmlkZ2UocW1wKTsKPj4gKyAgICAgICBpZiAo
cmV0KQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKCkkgdGhpbmsgdGhlIERSTSBwYXJ0
IHNob3VsZCBiZSBvbmx5IGJ1aWx0IGlmIENPTkZJR19EUk0gaXMgZW5hYmxlZCwgSSBkb24ndApo
YXZlIGEgc3Ryb25nIG9waW5pb24gb24gdGhpcywgSSB0aGluayBWaW5vZCBjb3VsZCBoZWxwIGhl
cmUuCgo+PiArCj4+ICAgICAgICAgIC8qIENoZWNrIGZvciBsZWdhY3kgYmluZGluZyB3aXRoIGNo
aWxkIG5vZGVzLiAqLwo+PiAgICAgICAgICB1c2JfbnAgPSBvZl9nZXRfY2hpbGRfYnlfbmFtZShk
ZXYtPm9mX25vZGUsICJ1c2IzLXBoeSIpOwo+PiAgICAgICAgICBpZiAodXNiX25wKSB7Cj4+IC0t
Cj4+IDIuMzkuMgo+Pgo+IAo+IFlvdSBuZWVkIHRvIGFkZCBzb21lIG9yIGFsbCBvZiB0aGVzZQo+
ICAgICAgICAgc2VsZWN0IERSTV9ESVNQTEFZX0RQX0hFTFBFUgo+ICAgICAgICAgc2VsZWN0IERS
TV9ESVNQTEFZX0hFTFBFUgo+ICAgICAgICAgc2VsZWN0IERSTV9EUF9BVVhfQlVTCj4gICAgICAg
ICBzZWxlY3QgRFJNX0tNU19IRUxQRVIKPiAgICAgICAgIHNlbGVjdCBEUk1fTUlQSV9EU0kKPiAg
ICAgICAgIHNlbGVjdCBEUk1fUEFORUwKPiAKPiAKPiAvb3B0L2xpbmFyby9nY2MtbGluYXJvLTcu
NS4wLTIwMTkuMTIteDg2XzY0X2FhcmNoNjQtbGludXgtZ251L2Jpbi9hYXJjaDY0LWxpbnV4LWdu
dS1sZDoKPiBVbmV4cGVjdGVkIEdPVC9QTFQgZW50cmllcyBkZXRlY3RlZCEKPiAvb3B0L2xpbmFy
by9nY2MtbGluYXJvLTcuNS4wLTIwMTkuMTIteDg2XzY0X2FhcmNoNjQtbGludXgtZ251L2Jpbi9h
YXJjaDY0LWxpbnV4LWdudS1sZDoKPiBVbmV4cGVjdGVkIHJ1bi10aW1lIHByb2NlZHVyZSBsaW5r
YWdlcyBkZXRlY3RlZCEKPiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8u
bzogSW4gZnVuY3Rpb24KPiBgcW1wX2NvbWJvX2JyaWRnZV9hdHRhY2gnOgo+IHBoeS1xY29tLXFt
cC1jb21iby5jOigudGV4dCsweGI1MCk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8KPiBgZGV2bV9k
cm1fb2ZfZ2V0X2JyaWRnZScKPiBwaHktcWNvbS1xbXAtY29tYm8uYzooLnRleHQrMHhiNmMpOiB1
bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBkcm1fYnJpZGdlX2F0dGFjaCcKPiBkcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8ubzogSW4gZnVuY3Rpb24gYHFtcF9jb21ib19wcm9i
ZSc6Cj4gcGh5LXFjb20tcW1wLWNvbWJvLmM6KC50ZXh0KzB4MTNmYyk6IHVuZGVmaW5lZCByZWZl
cmVuY2UgdG8KPiBgZGV2bV9kcm1fYnJpZGdlX2FkZCcKCkkgdGhpbmsgQ09ORklHX0RSTV9QQU5F
TF9CUklER0UgaW4gYWRkaXRpb24gdG8gQ09ORklHX0RSTS4gc2hvdWxkIGJlIGVub3VnaC4KCldp
dGggdGhpcyBjb25maWcgYWRkZWQgYW5kIG15IGRybS1icmlkZ2UgaGF0OgoKQWNrZWQtYnk6IE5l
aWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPgoKTmVpbAoKCj4gCj4gLS0t
Cj4gYm9kCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
