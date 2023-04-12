Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36E1BC7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 20:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NR67b/9Rxn+toC6+EJsFB7PuVpPtC3qj8HLFJRVzIOs=; b=3wXnrzNPFVQep/
	6nkA/4wyad+566mySJKLiOtYZWWqnAbW/0FTlud/1g53csdtZd7mNlJU6r3uztd5m8TzGo4deWvgP
	zk21vqvWnpKFK7bddZbCykDW1EMH79MuEeUb5Owm8+hDHslV2ESTUAc16lF5VvkHq0DfCFIGXn7uH
	GO/Tq8tkZ8i4hXU5KaPMiZrlGIjGxEfycEOd0pFUHJ/TdnaLO3KQC6RlTdTr/vsV3YwowIMQMSvdF
	SWtNE0/e+zv4yKNkBmL0FoO1aocPcUtIqy0Rfz7PvJsE0LMIcMLooFSzDq4eopLETFkoUDWJe1fRL
	KKgWif+4wyZbaWUaDJ3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmh34-004G8s-2n;
	Wed, 12 Apr 2023 20:26:34 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmh31-004G77-3B
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 20:26:33 +0000
Received: by mail-lj1-x22f.google.com with SMTP id z26so12747855ljq.3
        for <linux-phy@lists.infradead.org>; Wed, 12 Apr 2023 13:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681331188; x=1683923188;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8H9YKn/XNUDyg0V0IfHKOXTMiAPmo1dRrKHaJchsJUE=;
        b=fsnNaJ3fMWvfqjnUgm9M5H+0D2TmDp4cyBYvzYOssEXvtbpAqLnOFds9jKCDvlhXAj
         yimJGk7G9oSRZW5qj5ULdaoI5lT2Vl4CbUMuM6U0MjxfixGU7Z7WzDAA71R5mhRAv+07
         P9TwXtH7Jz42ZeNPp3ZGtS85NR8lYNle7fUFx2LSA25aLyaXFjSi2tgg9REITXjWH0FD
         KrhFFZandn+X/4pyYr36x2Du9HaTxfg/wlR/gxdjvFzZVQ1e5kFDQ5UnpZcB9H3WZXO4
         9mnv4i3puJnsyrGzzu3i892UX+JYhhJVNx0SbyZfKhViPxWxYUxF/NHfzSeJI5W8FqhK
         vT5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681331188; x=1683923188;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8H9YKn/XNUDyg0V0IfHKOXTMiAPmo1dRrKHaJchsJUE=;
        b=ASXER5nk5SZ2mSgtAsKdZYhUUP8xwkds1n6AAfqemB4tEudB7X6Z9SBSofJ20kH1Jy
         NVzNhiekPE/b6GFHRi9wCzIS6jC7d0vVIkX23RA0D6SY1hVoi1PHA+lqkUHeNFMCWBEG
         FekoQqTl5cFjvi447E1wUBVIpNRi0cVsmRbsncmxXVz3Ld7hAFCECuL2e/s72rwaqmg8
         +5Dae07AAsEZSZ8wfDEPAkECJm5sIpnTBIdrcq0N4iqsQSRvU20Bq8bTslQYZToEz3P3
         Pjgw1AfMkJZUm2cJC32cw0/YZ17o84eAwSxn/rILY11aR/TZc70VhqgqVPRyav4ujJKn
         OUWQ==
X-Gm-Message-State: AAQBX9cwBDhvtJD6UDSU3sab13QYMjcXfqxyzvMp08yHWEeZtrHjAkFy
	IayteZgCx17xSg5DNngHKRiFnoAWJcN6zx7Nvdw=
X-Google-Smtp-Source: AKy350aXEj5ixExfpIhCosCnRuDfPdFOXLUsw5Zw5migaoZNzQBU88qmsg7DFqP2/hBysnxxJCHFog==
X-Received: by 2002:a05:651c:115:b0:2a7:a5a4:b878 with SMTP id a21-20020a05651c011500b002a7a5a4b878mr402560ljb.50.1681331187958;
        Wed, 12 Apr 2023 13:26:27 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id r1-20020a2eb601000000b0029c36ebf89asm3411557ljn.112.2023.04.12.13.26.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 13:26:27 -0700 (PDT)
Message-ID: <497d7ea1-6824-314b-7165-d72e0ce55027@linaro.org>
Date: Wed, 12 Apr 2023 23:26:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 3/5] arm64: dts: qcom: sm8150: turn first USB PHY into
 USB+DP PHY
Content-Language: en-GB
To: Konrad Dybcio <konrad.dybcio@linaro.org>, neil.armstrong@linaro.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
 <20230324215550.1966809-4-dmitry.baryshkov@linaro.org>
 <70957e67-e570-3800-e679-d7c291295999@linaro.org>
 <cfa6af3e-c7bc-894a-119c-5c6c5ea82ec0@linaro.org>
 <85d75550-66f4-2680-c6fe-9c575e916b40@linaro.org>
 <6a545494-832b-d1d9-ad5a-9ed0a724703b@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <6a545494-832b-d1d9-ad5a-9ed0a724703b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_132632_031618_D8FBED9C 
X-CRM114-Status: GOOD (  13.21  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjcvMDMvMjAyMyAxMzo1MiwgS29ucmFkIER5YmNpbyB3cm90ZToKPiAKPiAKPiBPbiAyNy4w
My4yMDIzIDEyOjE0LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+PiBPbiAyNy8wMy8yMDIzIDEx
OjA1LCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4+IE9uIDI3LzAzLzIwMjMgMDk6NTksIE5laWwg
QXJtc3Ryb25nIHdyb3RlOgo+Pj4+IE9uIDI0LzAzLzIwMjMgMjI6NTUsIERtaXRyeSBCYXJ5c2hr
b3Ygd3JvdGU6Cj4+Pj4+IFRoZSBmaXJzdCBVU0IgUEhZIG9uIHRoZSBzbTgxNTAgcGxhdGZvcm0g
aXMgcmVhbGx5IHRoZSBVU0IrRFAgY29tYm8KPj4+Pj4gUEhZLiBBZGQgdGhlIERQIHBhcnQgb2Yg
dGhlIFBIWS4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1p
dHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPgo+Pj4+PiAtLS0KPj4+Pj4gIMKgIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcWNvbS9zbTgxNTAuZHRzaSB8IDE3ICsrKysrKysrKysrKystLS0tCj4+Pj4+ICDC
oCAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4+Pj4K
Pj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTgxNTAuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTgxNTAuZHRzaQo+Pj4+PiBpbmRleCA5NDkxYmU0
YTZiZjAuLmE2MTgyMThmN2I2OCAxMDA2NDQKPj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL3NtODE1MC5kdHNpCj4+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9z
bTgxNTAuZHRzaQo+Pj4+PiBAQCAtMzM5MiwyMCArMzM5MiwxOSBAQCB1c2JfMl9oc3BoeTogcGh5
QDg4ZTMwMDAgewo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+Pj4+ICDCoMKgwqDCoMKg
wqDCoMKgwqAgdXNiXzFfcW1wcGh5OiBwaHlAODhlOTAwMCB7Cj4+Pj4+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicWNvbSxzbTgxNTAtcW1wLXVzYjMtcGh5IjsKPj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJxY29tLHNtODE1MC1xbXAtdXNi
My1kcC1waHkiOwo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDAgMHgw
ODhlOTAwMCAwIDB4MThjPiwKPj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPDAgMHgwODhlODAwMCAwIDB4MTA+Owo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCA8MCAweDA4OGU4MDAwIDAgMHgzOD4sCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDwwIDB4MDg4ZWEwMDAgMCAweDQwPjsKPj4+Pj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+Pj4+ICDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAjYWRkcmVzcy1jZWxscyA9IDwyPjsKPj4+Pj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICNzaXplLWNlbGxzID0gPDI+Owo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmFuZ2VzOwo+Pj4+PiAtCj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjbG9ja3MgPSA8JmdjYyBHQ0NfVVNCM19QUklNX1BIWV9BVVhfQ0xLPiwKPj4+Pj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JnJwbWhjYyBSUE1IX0NYT19DTEs+
LAo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19V
U0IzX1BSSU1fQ0xLUkVGX0NMSz4sCj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgPCZnY2MgR0NDX1VTQjNfUFJJTV9QSFlfQ09NX0FVWF9DTEs+Owo+Pj4+PiAgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMgPSAiYXV4IiwgInJlZl9jbGtfc3Jj
IiwgInJlZiIsICJjb21fYXV4IjsKPj4+Pj4gLQo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmVzZXRzID0gPCZnY2MgR0NDX1VTQjNfRFBfUEhZX1BSSU1fQkNSPiwKPj4+Pj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfVVNCM19QSFlfUFJJ
TV9CQ1I+Owo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVzZXQtbmFtZXMgPSAi
cGh5IiwgImNvbW1vbiI7Cj4+Pj4+IEBAIC0zNDIzLDYgKzM0MjIsMTYgQEAgdXNiXzFfc3NwaHk6
IHBoeUA4OGU5MjAwIHsKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Y2xvY2stbmFtZXMgPSAicGlwZTAiOwo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjbG9jay1vdXRwdXQtbmFtZXMgPSAidXNiM19waHlfcGlwZV9jbGtfc3JjIjsKPj4+
Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+Pj4+ICsKPj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgdXNiXzFfZHBwaHk6IHBoeUA4OGVhMjAwIHsKPj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MCAweDA4OGVhMjAwIDAgMHgyMDA+LAo+Pj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwwIDB4MDg4ZWE0
MDAgMCAweDIwMD4sCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPDAgMHgwODhlYWEwMCAwIDB4MjAwPiwKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MCAweDA4OGVhNjAwIDAgMHgyMDA+LAo+Pj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwwIDB4MDg4ZWE4MDAgMCAw
eDIwMD47Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI2Nsb2NrLWNlbGxz
ID0gPDE+Owo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNwaHktY2VsbHMg
PSA8MD47Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+Pj4KPj4+PiBJcyB0aGVy
ZSBhIHJlYXNvbiB3aHkgdGhlIG5ldyBmbGF0IGJpbmRpbmdzIGZyb20gcWNvbSxzYzgyODB4cC1x
bXAtdXNiNDNkcC1waHkueWFtbCBhcmUgbm90IHVzZWQgaW5zdGVhZCA/Cj4+Pj4KPj4+Cj4+PiBP
aCBvayBJIHNlZSAicGh5OiBxY29tLXFtcC1jb21ibzogY29udmVydCB0byBuZXdlciBzdHlsZSBv
ZiBiaW5kaW5ncyIgaXMgdGhlIGZvbGxvd3VwIG9mIHRoaXMgc2VyaWUsCj4+PiBwbGVhc2Ugc3Bl
Y2lmeSBpdCBiZWNhdXNlIGl0IHdhc24ndCBvYnZpb3VzLi4uCj4+Cj4+IEkgdGhvdWdodCB0aGF0
IGEgbm90ZSBpbiB0aGUgY292ZXIgbGV0dGVyIHdhcyBnb29kIGVub3VnaCwgYnV0IHllYWgsIG1h
eWJlIGl0IHNob3VsZCBiZSBtb3JlIGV4cGxpY2l0LiBEbyB5b3UgdGhpbmsgaXQgd2FycmFudHMg
djI/IEkgY2FuIHNlbmQgb25lLgo+IElNTyBpdCdzIHVubmVjZXNzYXJ5IHNvIGxvbmcgYXMgYm90
aCBnZXQgaW4uCgpBbmQgc28gbm9ib2R5IHJlc3BvbmRlZCB3aXRoIFItQiA6LSkKCi0tIApXaXRo
IGJlc3Qgd2lzaGVzCkRtaXRyeQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
