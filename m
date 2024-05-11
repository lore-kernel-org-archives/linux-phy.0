Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3ACAC04FFE
	for <linux-phy@archiver.kernel.org>; Sat, 11 May 2024 06:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vIQmc9jFAejcDsH+0VPM2HXutya5GSyxiZ2vD8LD0P4=; b=uKDkhlMWn/EL2C
	CXEmg5YQ0P1V8OT8/3k3itYSHv1nprjzy0wjKStMgHGvxVnWZkM5aIlkrvFED8TN0/PFq68uOdQGI
	PyYdZKPZ9pY2MYXdJWneNCI5NfrGCn1ZSvY3WAPV3sD5WXWc1sPdvvbJ4MPpZYdaJV8/TPqhrdRyu
	vs/HFr/qz5Ys44gym7O3oWZTs/byfyslgqijoem5a3GXBRmZKP9zeMpASUEH7FC5vMUILTUiyQBGY
	qmCnHpnBw7wqsCS3ssR5q8w8J2XawF+EzdcbwOFeqRbXYsoG3zYCC8fpfgL7b+RjI6JWuYgxKV1a9
	OaFgFiJ7ajNET/GyqSbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5gOY-00000007P08-0Ayk;
	Sat, 11 May 2024 06:39:46 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5gOT-00000007Oyc-2Y7W
	for linux-phy@lists.infradead.org;
	Sat, 11 May 2024 06:39:44 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-53fbf2c42bfso1952080a12.3
        for <linux-phy@lists.infradead.org>; Fri, 10 May 2024 23:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715409575; x=1716014375; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8ZGOyYQlPMjCo7NoBFPkuXTj+4higrK3cJrWnMzKiEg=;
        b=n4ds9K1Y9+ZXjajD4yvn13pe5VrSX9yzhicxSvxg7bd9ud3QZzkpTnN3xgZNEa8+k4
         WA6dE3AKjXbUodOzdGx7hLdEjv4QMvLKcrYq5Sva8z4R8v9NNTyS2RR2tGlhbj7qDcK2
         6UW/R4lJyV0v+5qU+Z7EOcvxXDhJJE2HEwslzIfcAZ9dIe2HDvN+Nh9aKWnhTTAglRCD
         2LoRTTETx+iueaWVUtOgwa9iwn+l+8kkL9DcykRBLpSRAoBlBzFz1cNlmC/LmnKvLL7t
         tP2w3HlC/8HoIHzcD0QK6fzLJmNj0aKk6lUU4tNAEiljlSONi7z9MXWrC95S90CW4Im9
         2hIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715409575; x=1716014375;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8ZGOyYQlPMjCo7NoBFPkuXTj+4higrK3cJrWnMzKiEg=;
        b=fmezqPRAz8h1vcvYYvSzV8WYWIpTbSmFiOcyWDSd6rzp7NXciNbnlhgC/9FpLCjiLT
         ST5yjFtRLD3GN3Gei+h/DtbLJldqBKNzdZy2nW3XwkrX8v3yXWZZDaAmK6D6OE8DFY+f
         p++UqxNhKk49woqgQhCKYULCc6inYDrSZs7zg5nAFnCrG+PoRJOE9dconFalgOMo792k
         WeFpB8zJMwDk7aWK9KBvY+MJL8UCTJg1UAbOHSJL7O7TWOPLZF9J2yywsVLTnD6b3VdB
         tKZbu55QBt3qgHOUr1L5c69GJ3PoRZ/7qsKRzXJy4DwxOQGSa4qNmZ2DyL6Kuis8tP/Z
         7e/g==
X-Forwarded-Encrypted: i=1; AJvYcCUf1QgvKlMRVIEuY3WA1NXONhdLRDSVLwcIBryAoFE9Q4cibTqT8BDbD0k98Vd658pT4lkyKNSu0xfrWksDoETtVp/udI3Yd92Pq9F1zQ==
X-Gm-Message-State: AOJu0YxYt4AtMdwB61SEfZfkmB4VEdDrnnHcBOnvd8TuS8wXj7CDcxo9
	wjJqBynuzkPLwYvKOryBs8gjgXYrJXpDAPfLC65iiNodyratKRhbg7lbzDBjMA==
X-Google-Smtp-Source: AGHT+IFcPHdwaLWt2eocdN1RJhFnTd98pYEBepeLkuj7kAaEyXPW4pVze6C7JF/k2OT36e+fxjw+tA==
X-Received: by 2002:a05:6a20:dc95:b0:1a7:60d8:a6dd with SMTP id adf61e73a8af0-1afde1df3b4mr5538644637.53.1715409575282;
        Fri, 10 May 2024 23:39:35 -0700 (PDT)
Received: from thinkpad ([220.158.156.38])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2b671056629sm4242175a91.7.2024.05.10.23.39.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 23:39:34 -0700 (PDT)
Date: Sat, 11 May 2024 12:09:29 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v4 RESEND 5/8] PCI: qcom: Add support for IPQ9574
Message-ID: <20240511063929.GB6672@thinkpad>
References: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
 <20240501042847.1545145-6-mr.nuke.me@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240501042847.1545145-6-mr.nuke.me@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240510_233941_778296_7B6C317A 
X-CRM114-Status: GOOD (  16.38  )
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

T24gVHVlLCBBcHIgMzAsIDIwMjQgYXQgMTE6Mjg6NDRQTSAtMDUwMCwgQWxleGFuZHJ1IEdhZ25p
dWMgd3JvdGU6Cj4gSVBROTU3NCBoYXMgZm91ciBQQ0llIGNvbnRyb2xsZXJzOiB0d28gc2luZ2xl
LWxhbmUgR2VuMywgYW5kIHR3bwo+IGR1YWwtbGFuZSBHZW4zLiBUaGUgY29udHJvbGxlcnMgYXJl
IGlkZW50aWNhbCBmcm9tIGEgc29mdHdhcmUKCllvdSBtZWFuIHRvIHNheSwgJ2lkZW50aWNhbCB0
byBJUFE4MDc0IEdlbjMgcGxhdGZvcm0nIHNpbmNlIHlvdSBhcmUgcmV1c2luZyB0aGUKMl85XzAg
Y2ZnPwoKPiBwZXJzcGVjdGl2ZSwgd2l0aCB0aGUgZGlmZmVyZW5jZXMgYXBwZWFyaW5nIGluIHRo
ZSBQSFlzLgo+IAo+IEFkZCBhIGNvbXBhdGlibGUgZm9yIHRoZSBQQ0llIG9uIElQUTk1NzQuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogQWxleGFuZHJ1IEdhZ25pdWMgPG1yLm51a2UubWVAZ21haWwuY29t
PgoKQnV0IHRoZSBjaGFuZ2UgbG9va3MgZ29vZCB0byBtZS4KClJldmlld2VkLWJ5OiBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoKLSBNYW5p
Cgo+IC0tLQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYyB8IDEgKwo+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLXFjb20uYwo+IGluZGV4IGVhODFmZjY4ZDQzMy4uZTYxODg4ZTZjNjNkIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gKysrIGIv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiBAQCAtMTU1MSw2ICsxNTUx
LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcWNvbV9wY2llX21hdGNoW10g
PSB7Cj4gIAl7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS1pcHE4MDY0LXYyIiwgLmRhdGEgPSAm
Y2ZnXzJfMV8wIH0sCj4gIAl7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS1pcHE4MDc0IiwgLmRh
dGEgPSAmY2ZnXzJfM18zIH0sCj4gIAl7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS1pcHE4MDc0
LWdlbjMiLCAuZGF0YSA9ICZjZmdfMl85XzAgfSwKPiArCXsgLmNvbXBhdGlibGUgPSAicWNvbSxw
Y2llLWlwcTk1NzQiLCAuZGF0YSA9ICZjZmdfMl85XzAgfSwKPiAgCXsgLmNvbXBhdGlibGUgPSAi
cWNvbSxwY2llLW1zbTg5OTYiLCAuZGF0YSA9ICZjZmdfMl8zXzIgfSwKPiAgCXsgLmNvbXBhdGli
bGUgPSAicWNvbSxwY2llLXFjczQwNCIsIC5kYXRhID0gJmNmZ18yXzRfMCB9LAo+ICAJeyAuY29t
cGF0aWJsZSA9ICJxY29tLHBjaWUtc2E4NTQwcCIsIC5kYXRhID0gJmNmZ19zYzgyODB4cCB9LAo+
IC0tIAo+IDIuNDAuMQo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTg
rr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
