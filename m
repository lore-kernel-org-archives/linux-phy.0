Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA028C4345F
	for <linux-phy@archiver.kernel.org>; Wed, 17 Apr 2024 07:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3i2QXLraR/+2YJFqRePDIP/91dEiY89R9sluqx9r5Y=; b=PQnQAdYwLdxuuS
	+gTrMtNihZzWUstzHUqpTqD6prcPsSax7n8X0V8Y0w6humkuAD1ijoBuyaKm+d9tu/lkBgtCJrmlx
	Pa+bXVtLjmeT6xPpBgbvdeCBUBgi5s3vRlbQj22jBqfmtHZKw6/A/dd8YBSUsWm2gJoA0O+vMeosM
	ON6kMG0oUCEiFhBggFiHKhX1KU0km8zGz51hmeqJZj8ul+6ssTHn/MDvtFTRc8EQgbVGwbZVQOdz3
	sEyzLJyqAEkMNU/Q0iodZq2ceNyevShD6bBXF2dl6T2J4Nb9osHzcBRrjxKSdT+RZFj/HGBkHY596
	auwcL653KpErMk1ZIEpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwzUq-0000000Ezli-1ewi;
	Wed, 17 Apr 2024 07:14:20 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwzUn-0000000Ezg0-1fwj
	for linux-phy@lists.infradead.org;
	Wed, 17 Apr 2024 07:14:19 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-2331bef249eso2276296fac.3
        for <linux-phy@lists.infradead.org>; Wed, 17 Apr 2024 00:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713338055; x=1713942855; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rds/vSPkCgLztEVJcMBchz0yVanaqr2q9MoqHxNAgzI=;
        b=RlxGX8o2RTAPDVCugbce/1AKeGAD+euOxn4uHgaAxM1w4mL4LJViol8o/OlmcZcQHb
         Sb8ZH6t9TM+Ny+FlsjfmMrZ+zLa5FZeIsnECqV0D0ux7sKZHYb48srOPGWsREIYyepq2
         J5Up+XPsjn6OXn9pfWtqfVUPhtD6BvhHeUsMl7kgQRFe/0sJt4TWJtrI7vSGvUfdM8Gn
         eCtYxbFs05OSn80le6Q6qgsuh82tnBaKV0rUZOXgC44evR538Z1KuTTpC3ck39vzTQwk
         6ZSpM5Jag/mKW2Leiq6beQxrXNi1I64o3PPnoE+gjypj7egb+06EuU7edNiWEfNYIICO
         Wzgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713338055; x=1713942855;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rds/vSPkCgLztEVJcMBchz0yVanaqr2q9MoqHxNAgzI=;
        b=kx/GhMeZwcNMvPMiD8AqYjUxuPEyW9k/DSGqL9P74S4DEg1+nWFap8b3Pr0urVvW6R
         poHFdDCs8UpTaEJQBbiPKH8GkKWSEaGX771kkO2Ix7dkHroeq7Rm9+NlXb+dHYdXG3Cj
         1gGJIQ1WxKbqHDpqzx6AAqLakqOnp0KvGISHcmHW9ixYObWbctiRgbj7SCYwvp6OFdki
         HpxW/ltulALpqMEaXCtAJLYTd7Nw5OuRHg30I+PhYvsyV5uiKS1m/mji+uTZbMGyqFEh
         WSFcVbexQPlyHQGXUkKYB9952mzFfW8bPWDlaYzXaD8nrdDnxlIFNFCI4JzuunfrWZd/
         YAtA==
X-Forwarded-Encrypted: i=1; AJvYcCUM2hJY8I6/9QPPrx0hI3OMA2XBgYzYg1mTgXxfDOIMaIoZIw5UrH+aal4u3+kNcPD6kpQv8oUUsZEe/IkA/RR9M2DXn06GxpVyf3ct7A==
X-Gm-Message-State: AOJu0YxKkk9nWhorsC+8HkIkEGrUJmNUg9dS2piR+umnBPhaJq4q9bt/
	OlGO7VlcqAoEmqZrKMrtBtaZEXxjdyyY1W4c/TT9CuD+xi+90eF+5HaoVaHrIw==
X-Google-Smtp-Source: AGHT+IHaHrm2pb+wT7KKfQkSKKuzy7HKCVhCIyuFy2rzef2uOrb0UaXT1cyILAlN1opmVB/oaR6cAg==
X-Received: by 2002:a05:6870:70a1:b0:22f:70da:1f26 with SMTP id v33-20020a05687070a100b0022f70da1f26mr19032069oae.27.1713338054787;
        Wed, 17 Apr 2024 00:14:14 -0700 (PDT)
Received: from thinkpad ([120.60.54.9])
        by smtp.gmail.com with ESMTPSA id z3-20020aa78883000000b006e5571be110sm9998837pfe.214.2024.04.17.00.14.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 00:14:14 -0700 (PDT)
Date: Wed, 17 Apr 2024 12:44:06 +0530
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
Subject: Re: [PATCH v3 4/7] PCI: qcom: Add support for IPQ9574
Message-ID: <20240417071406.GC3894@thinkpad>
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
 <20240415182052.374494-5-mr.nuke.me@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240415182052.374494-5-mr.nuke.me@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_001417_528590_5EFFF732 
X-CRM114-Status: GOOD (  18.64  )
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

T24gTW9uLCBBcHIgMTUsIDIwMjQgYXQgMDE6MjA6NDlQTSAtMDUwMCwgQWxleGFuZHJ1IEdhZ25p
dWMgd3JvdGU6Cj4gQWRkIHN1cHBvcnQgZm9yIHRoZSBQQ0llIG9uIElQUTk1NzQuIFRoZSBtYWlu
IGRpZmZlcmVuY2UgZnJvbSBpcHE2MDE4Cj4gaXMgdGhhdCB0aGUgImlmYWNlIiBjbG9jayBpcyBu
b3QgbmVjZXNzYXJyeS4gQWRkIGEgc3BlY2lhbCBjYXNlIGluCj4gcWNvbV9wY2llX2dldF9yZXNv
dXJjZXNfMl85XzAoKSB0byBoYW5kbGUgdGhpcy4KPiAKCkNvdWxkIHlvdSBhZGQgbW9yZSBpbmZv
cm1hdGlvbiBhYm91dCB0aGUgUENJZSBjb250cm9sbGVyIHVzZWQgaW4gdGhpcyBTb0M/IExpa2UK
Y29udHJvbGxlciB2ZXJzaW9uLCBzdXBwb3J0ZWQgZGF0YSByYXRlLCBQQ0llIGdlbmVyYXRpb24g
ZXRjLi4uCgotIE1hbmkKCj4gU2lnbmVkLW9mZi1ieTogQWxleGFuZHJ1IEdhZ25pdWMgPG1yLm51
a2UubWVAZ21haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LXFjb20uYyB8IDEzICsrKysrKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1xY29tLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFj
b20uYwo+IGluZGV4IDE0NzcyZWRjZjBkMy4uMTA1NjBkNmQ2MzM2IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gKysrIGIvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiBAQCAtMTEwMSwxNSArMTEwMSwxOSBAQCBzdGF0
aWMgaW50IHFjb21fcGNpZV9nZXRfcmVzb3VyY2VzXzJfOV8wKHN0cnVjdCBxY29tX3BjaWUgKnBj
aWUpCj4gIAlzdHJ1Y3QgcWNvbV9wY2llX3Jlc291cmNlc18yXzlfMCAqcmVzID0gJnBjaWUtPnJl
cy52Ml85XzA7Cj4gIAlzdHJ1Y3QgZHdfcGNpZSAqcGNpID0gcGNpZS0+cGNpOwo+ICAJc3RydWN0
IGRldmljZSAqZGV2ID0gcGNpLT5kZXY7Cj4gLQlpbnQgcmV0Owo+ICsJaW50IHJldCwgbnVtX2Ns
a3MgPSBBUlJBWV9TSVpFKHJlcy0+Y2xrcykgLSAxOwo+ICAKPiAtCXJlcy0+Y2xrc1swXS5pZCA9
ICJpZmFjZSI7Cj4gKwlyZXMtPmNsa3NbMF0uaWQgPSAicmNobmciOwo+ICAJcmVzLT5jbGtzWzFd
LmlkID0gImF4aV9tIjsKPiAgCXJlcy0+Y2xrc1syXS5pZCA9ICJheGlfcyI7Cj4gIAlyZXMtPmNs
a3NbM10uaWQgPSAiYXhpX2JyaWRnZSI7Cj4gLQlyZXMtPmNsa3NbNF0uaWQgPSAicmNobmciOwo+
ICAKPiAtCXJldCA9IGRldm1fY2xrX2J1bGtfZ2V0KGRldiwgQVJSQVlfU0laRShyZXMtPmNsa3Mp
LCByZXMtPmNsa3MpOwo+ICsJaWYgKCFvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShkZXYtPm9mX25v
ZGUsICJxY29tLHBjaWUtaXBxOTU3NCIpKSB7Cj4gKwkJcmVzLT5jbGtzWzRdLmlkID0gImlmYWNl
IjsKPiArCQludW1fY2xrcysrOwo+ICsJfQo+ICsKPiArCXJldCA9IGRldm1fY2xrX2J1bGtfZ2V0
KGRldiwgbnVtX2Nsa3MsIHJlcy0+Y2xrcyk7Cj4gIAlpZiAocmV0IDwgMCkKPiAgCQlyZXR1cm4g
cmV0Owo+ICAKPiBAQCAtMTY2NCw2ICsxNjY4LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9k
ZXZpY2VfaWQgcWNvbV9wY2llX21hdGNoW10gPSB7Cj4gIAl7IC5jb21wYXRpYmxlID0gInFjb20s
cGNpZS1pcHE4MDY0LXYyIiwgLmRhdGEgPSAmY2ZnXzJfMV8wIH0sCj4gIAl7IC5jb21wYXRpYmxl
ID0gInFjb20scGNpZS1pcHE4MDc0IiwgLmRhdGEgPSAmY2ZnXzJfM18zIH0sCj4gIAl7IC5jb21w
YXRpYmxlID0gInFjb20scGNpZS1pcHE4MDc0LWdlbjMiLCAuZGF0YSA9ICZjZmdfMl85XzAgfSwK
PiArCXsgLmNvbXBhdGlibGUgPSAicWNvbSxwY2llLWlwcTk1NzQiLCAuZGF0YSA9ICZjZmdfMl85
XzAgfSwKPiAgCXsgLmNvbXBhdGlibGUgPSAicWNvbSxwY2llLW1zbTg5OTYiLCAuZGF0YSA9ICZj
ZmdfMl8zXzIgfSwKPiAgCXsgLmNvbXBhdGlibGUgPSAicWNvbSxwY2llLXFjczQwNCIsIC5kYXRh
ID0gJmNmZ18yXzRfMCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtc2E4NTQwcCIs
IC5kYXRhID0gJmNmZ19zYzgyODB4cCB9LAo+IC0tIAo+IDIuNDAuMQo+IAoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
