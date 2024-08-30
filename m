Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D09CC83F0B
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nDFdsC88a1R9vKhIIqAFNDOMPoI25bbWCacze79rJOI=; b=zEo7UWUIpQx5Tq
	WbmT6TlQf0D8p9Wlwf6CR2/4i7Nyp8NRmbhJuvtRQBmrl0FcCpogYDWDiJNriAV2yP0qMrQ78oTxq
	mgIQS9dYshGteYgJBrfbg8TSOtzJ8ptDK1bqIlgibheWH9BRA6if07lthdCnc52lNLMzTPtfXFhdq
	G+3pQ9QPZ+zs06Ew45sC6jg/5cPZExeWF8OuFJSNZnDJf9fAJATyKsH/CmSrjBpqSuCPmO/u35yj2
	WyjmZC0slg4/lWdF3kCicOAFCPxCPWKqfMphOzIt0LYVLPvM1JAfA6YjrS03vpXA1AEqOKk5xod9v
	UNIot3Y/Gf23yx/yE7Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjxAf-00000005Oap-1LVX;
	Fri, 30 Aug 2024 08:39:53 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjx9q-00000005OJE-2QSZ
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 08:39:04 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-20203988f37so15379695ad.1
        for <linux-phy@lists.infradead.org>; Fri, 30 Aug 2024 01:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725007141; x=1725611941; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cCl06/mkbTdzDoh26+WSUkUO8N6VKXw4ZrIDH+64Ass=;
        b=NwDr6VJbiS7aEFnrxXT7q9uRMywvC2y+Dq65zy8oEEUeK1vVgosQTTZvOAaxrfMeRY
         dkxPsniWLH+P+J9DQLorXFzzsUfn85J4Ytvwdu0HILaZhCUBkMkvUYWLNDAO/fnJ5sLS
         +5F9YFt+9trWoeb7BLojiCMtW0cAdBz/YAuXNhmL3zGibsaZyChNgf5ISa6kRrpks9tx
         yuvjXifbG42Ozp0NGrc/EeAhMvMGgDR+AyzR0O4+tlUUCH2q84LKC8JEWq+S4bymnK82
         bhadfa6gwDfDlaHWyJyC18tdnDAnFO3r+7HWdjF7fC4k84hjRDPTJe+THMuLDCjUf2Bi
         7Qag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725007141; x=1725611941;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cCl06/mkbTdzDoh26+WSUkUO8N6VKXw4ZrIDH+64Ass=;
        b=rh8BnYXYNd9xrEZo0/3quWzNjjb4f33npTTRN4VT5ZeKXUeFSYBpzBffBXJx3MuAUZ
         bsk0Pr0/DZmh1eaLp+WSXpRXohuO5HycRBng5ppCm1LrR9DYjuPXHM9Y2UADzPYh+b6E
         UbgH3MGPJtHdaufyD64Wt04jGpmb/hq7ceqgrkG+WaucxRQUgO8HULiDe1uE2/aGSa2P
         sI2szoCu2X7hxqYDPnlkQKVK5ghsYrp356g3MOO1CifcR68xp1dW+x3uNZaGy7+VM/hO
         SIUPV8LYDIXPBO9LWwYTYE6mylQlO9HyK55dkx9Hii0o0v5w1Pd5V6ZzhhJN4IpwMaEI
         8w3w==
X-Forwarded-Encrypted: i=1; AJvYcCXE/f0KED31FoC6JOcXl5xQf9YtispLaEAWFsdLX3DKx4/6814mXH9zVGYz2l4EATZdQd8gyPas6AU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7sk+UzWNDunXb9s2uYezY83rN/g8xIrfVCXdotgpgTscnLgnq
	qexWoOlTLCankB5PBMlNW9f7I7s+h/I2ePS/uLbcHrrNGxoBC6vLUF+ytqVfBg==
X-Google-Smtp-Source: AGHT+IHrr8qxwqPpMj/6fjnsb+IBk8CE2csKZT9RjyfDiOO3cnN33KW/WbjOQS6JZ6qagTLq0paL1g==
X-Received: by 2002:a17:903:32d2:b0:203:a0c6:91e7 with SMTP id d9443c01a7336-2050c354a61mr46560005ad.16.1725007141481;
        Fri, 30 Aug 2024 01:39:01 -0700 (PDT)
Received: from thinkpad ([117.193.213.95])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-205152b129dsm22701905ad.42.2024.08.30.01.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 01:39:01 -0700 (PDT)
Date: Fri, 30 Aug 2024 14:08:52 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sricharan R <quic_srichara@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, p.zabel@pengutronix.de,
	dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, robimarko@gmail.com
Subject: Re: [PATCH V2 4/6] PCI: qcom: Add support for IPQ5018
Message-ID: <20240830083852.cwjc6skgypva6u6u@thinkpad>
References: <20240827045757.1101194-1-quic_srichara@quicinc.com>
 <20240827045757.1101194-5-quic_srichara@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240827045757.1101194-5-quic_srichara@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_013902_688912_02CE562A 
X-CRM114-Status: GOOD (  14.48  )
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

T24gVHVlLCBBdWcgMjcsIDIwMjQgYXQgMTA6Mjc6NTVBTSArMDUzMCwgU3JpY2hhcmFuIFIgd3Jv
dGU6Cj4gSW50cm9kdWNlIGEgbmV3IGNvbXBhdGlibGUgYW5kIHJlLXVzZSAyXzlfMCBvcHMuCj4g
CgpXaGlsZSBhZGRpbmcgYSBuZXcgU29DLCBwbGVhc2UgYWRkIG1vcmUgaW5mbyBhYm91dCB0aGUg
Y29udHJvbGxlci4gTGlrZSB0aGUKaGFyZHdhcmUgcmV2aXNpb24gKGludGVybmFsL3N5bm9wc3lz
KSwgbWF4IG51bWJlciBvZiBsYW5lcyBzdXBwb3J0ZWQsIG1heCBsaW5rCnNwZWVkLCBpcyBpdCBh
IGRlcml2YXRpdmUgZXRjLi4uCgotIE1hbmkKCj4gU2lnbmVkLW9mZi1ieTogTml0aGVlc2ggU2Vr
YXIgPHF1aWNfbnNla2FyQHF1aWNpbmMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNyaWNoYXJhbiBS
IDxxdWljX3NyaWNoYXJhQHF1aWNpbmMuY29tPgo+IC0tLQo+ICBbdjJdIFJlYmFzZWQgb24gdG9w
IG9mIGxhdGVzdCB0aXAgYW5kIG9ubHkgY29tcGF0aWFibGUgYWRkaXRpb24gaXMgcmVxdWlyZWQK
PiAKPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgfCAxICsKPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1xY29tLmMKPiBpbmRleCA2Zjk1M2UzMmQ5OTAuLmU4MTRkNmNjMDYyZCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+ICsrKyBiL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gQEAgLTE3MjIsNiArMTcyMiw3IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHFjb21fcGNpZV9tYXRjaFtdID0gewo+
ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtYXBxODA2NCIsIC5kYXRhID0gJmNmZ18yXzFf
MCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtYXBxODA4NCIsIC5kYXRhID0gJmNm
Z18xXzBfMCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtaXBxNDAxOSIsIC5kYXRh
ID0gJmNmZ18yXzRfMCB9LAo+ICsJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtaXBxNTAxOCIs
IC5kYXRhID0gJmNmZ18yXzlfMCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtaXBx
NjAxOCIsIC5kYXRhID0gJmNmZ18yXzlfMCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBj
aWUtaXBxODA2NCIsIC5kYXRhID0gJmNmZ18yXzFfMCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJx
Y29tLHBjaWUtaXBxODA2NC12MiIsIC5kYXRhID0gJmNmZ18yXzFfMCB9LAo+IC0tIAo+IDIuMzQu
MQo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXg
rq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
