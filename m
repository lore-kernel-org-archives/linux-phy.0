Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB833C7EE29
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 07:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmvwYzbNPuo9QBTJVqDeIajl+mxwuimz6GY6bNn/nx4=; b=fuSAXvJTlfOBL2
	XPGoIuSl0y8AvP/pJtslmD03lYimdUjIAk4Q3yILtQ13Zy2s0BPBH+0tb/EkQL2/x0tpvfqloFvnJ
	O5ybG6bGU6y05zSWOpv2jZ/UmhXPX53IKcjKiGQsKIFH4eU/rMvA5ItDqmsZGgdZYRrBfgpVqoCcv
	Mre+ESaszeC4Npi9jA4J/gZwbgV0MagZKlumbf6Mv4Q4nk+IqJhNre8Yp4JasA2WuwwR4H/qSVxKs
	lSZZ/p4rNvoC8QoPayTGLXiVepy6gW4aS6ZRSNec3mo8JgnWQQDGSS/MfwQ9fRPwkc/NX4OqYDNp0
	BsaLWuy/Ciw2YmBBfsRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7AR3-008SLy-1o;
	Thu, 08 Jun 2023 07:51:57 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7AR1-008SIR-2a
	for linux-phy@lists.infradead.org;
	Thu, 08 Jun 2023 07:51:57 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5149e65c244so371403a12.3
        for <linux-phy@lists.infradead.org>; Thu, 08 Jun 2023 00:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686210714; x=1688802714;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zct6XBCH1Tv2PsNs+IsnqKieyR9/tL3UgrCB0gy4jXs=;
        b=zNT6gX1jbLVwYb5r2yPvDYs7tM00gF/Z/k5vSxU9R26fslPMRem9O0S6Q55m+nZUkS
         HBqyvRrKNGJ+J4V+Cfqiy7uW378Lx3GR4YW4EmNL77thxyF8HXG2QpequMwDfeJ36qQN
         tuzZIbjT6GZwbCZYQG/xOIqjn7Ads3u2nA42BPQBo+wT6a6cRVncw49bwuCDpCCv68nm
         a/GXn7o/58lksvK9wT1DPTy/ImFhtIUwB8/eTE2cejFYbo1ISH8FPwIkV+0L9/aiNv5P
         yrJbsFHHmX4n9EuFQlaSI4cMhXNJsNkoiihvGs1Ywi1Nh6nd6N1V27YtZLF4EGPwD/Rv
         esAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686210714; x=1688802714;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zct6XBCH1Tv2PsNs+IsnqKieyR9/tL3UgrCB0gy4jXs=;
        b=ivP0H+r2fg7jzGRAakANTkmo01KQK9lLg8kedWvASFAB76r3JogJXXCaui8RZJSoPd
         4xryJ7oEzKmD8CWMklBdZkIfFhM9gRTNCegIQDyvMqSv3w3YYgKeEXuXV3BPmIZvkJEI
         crDqwXp/RD6Xz/DWfKF0qnwuOoXXuEzCLyhJ3K/6Sa+l3+NuscRxTXLDucAJ0oNw5zgT
         XZd8yYscBC1EbMCMOrlyIa77hiBarIo7rFyU1h5LkOUJ1hqLADY/T3jYhzBr1tln7b0N
         SbW19W8v1Mo0jvlJJpiCGTv12sP4WcZzG4FOqQP27i2vp6ppeyC5f6diWStb9cvWQCjX
         NmfA==
X-Gm-Message-State: AC+VfDwVgnIqTm6IHLF/Gdb9JtxUtgbdivqXARvq5Kz/ds7mJQlQFAPb
	9EOsF3uyISZJCMi7e1ZtiZJo9g==
X-Google-Smtp-Source: ACHHUZ50i+lzbZ8IfY8FXaq7GRfB2bVlYYuBbsPZqFrBSWvs6gxQ13zoI4jJba8mPl+4LFxqGTYqIQ==
X-Received: by 2002:a17:907:97c1:b0:973:d076:67ab with SMTP id js1-20020a17090797c100b00973d07667abmr10116923ejc.42.1686210714476;
        Thu, 08 Jun 2023 00:51:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id lr26-20020a170906fb9a00b009663115c8f8sm341825ejb.152.2023.06.08.00.51.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jun 2023 00:51:54 -0700 (PDT)
Message-ID: <7390105c-dad9-2785-1768-7f50b067633a@linaro.org>
Date: Thu, 8 Jun 2023 09:51:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 4/5] dt-bindings: phy: realtek: Add the doc about the
 Realtek SoC USB 2.0 PHY
Content-Language: en-US
To: =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
 <0c405afedbcf4e468add480399775ebd@realtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0c405afedbcf4e468add480399775ebd@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_005155_844069_BBB83BC9 
X-CRM114-Status: GOOD (  13.91  )
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

T24gMDgvMDYvMjAyMyAwOTo0NywgU3RhbmxleSBDaGFuZ1vmmIzogrLlvrddIHdyb3RlOgo+IEhp
IEtyenlzenRvZiwKPiAKPiAKPj4+ICsgICAgICBGb3IgbW9zdCBSZWxhdGVrIFNvQ3MsIG9uZSBY
SENJIGNvbnRyb2xsZXIgb25seSBzdXBwb3J0IG9uZSB0aGUgVVNCCj4+IDIuMAo+Pj4gKyAgICAg
IHBoeS4gRm9yIFJURDEzOTUgU29DLCB0aGUgb25lIFhIQ0kgY29udHJvbGxlciBoYXMgdHdvIFVT
QiAyLjAKPj4gUEhZcy4KPj4+ICsgICAgcHJvcGVydGllczoKPj4+ICsgICAgICByZWFsdGVrLHBh
Z2UwLXBhcmFtOgo+Pj4gKyAgICAgICAgZGVzY3JpcHRpb246IFBIWSBwYXJhbWV0ZXIgYXQgcGFn
ZSAwLiBUaGUgZGF0YSBhcmUgdGhlIHBhaXIgb2YKPj4gdGhlCj4+PiArICAgICAgICAgIG9mZnNl
dCBhbmQgdmFsdWUuCj4+Cj4+IFRoaXMgbmVlZHMgdG8gYmUgc3BlY2lmaWMuIFdoYXQgdGhlIGhl
Y2sgaXMgIlBIWSBwYXJhbWV0ZXIiPwo+Pgo+IEl0IGNvbnRhaW5zIG1vcmUgcGFyYW1ldGVycwo+
IHBhZ2UwIGhhcyAxNiBwYXJhbWV0ZXJzCj4gcGFnZTEgaGFzIDggcGFyYW1ldGVycwo+IHBhZ2Uy
IGhhcyA4IHBhcmFtZXRlcnMKPiBJdCdzIHRlZGlvdXMgaWYgd2UgbGlzdCB0aGVtIGFsbC4KClN1
cmUsIGlmIHlvdSBwcmVmZXIgbm90IHRvIGxpc3QgdGhlbSwgdGhlbiB0aGV5IHNob3VsZCBiZSBy
ZW1vdmVkIGZyb20gRFQuCgo+IEFuZCB3ZSBvbmx5IHNldCB0aGUgcGFydCB0aGF0IGRpZmZlcnMg
ZnJvbSB0aGUgZGVmYXVsdC4KPiBJdCdzIGhhcmQgdG8gZXhwbGFpbiB3aGljaCBwYXJhbWV0ZXJz
IHdlcmUgY2hhbmdlZCBiZWNhdXNlIGVhY2ggcGxhdGZvcm0gaXMgZGlmZmVyZW50LgoKSWYgdGhp
cyBpcyBwaHkgdHVuaW5nIHBlciBib2FyZCwgeW91IG5lZWQgdG8gZXhwbGFpbiBhbmQganVzdGlm
eSB0aGVtLgpJZiB0aGlzIGlzIHBlciBwbGF0Zm9ybSwgdGhlbiBkcm9wIGl0IC0gbm90IGV2ZW4g
bmVlZGVkLCBiZWNhdXNlIHlvdQpoYXZlIGNvbXBhdGlibGUgZm9yIHRoaXMuCgoKQmVzdCByZWdh
cmRzLApLcnp5c3p0b2YKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
