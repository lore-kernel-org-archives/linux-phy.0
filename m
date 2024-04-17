Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C18E7C4345F
	for <linux-phy@archiver.kernel.org>; Wed, 17 Apr 2024 07:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jdObaZN4b+SbMEHNQPVVM2+Dzx2EZRp+VYwvHPBHBdA=; b=1WbPu3jcCiATDo
	BDiIG5wfay1byp1KP18p8OJ22M12aLKRPkr6DFCtTaExxE/7kqbvRJv1jJgC9pJyzEpXGlDfZ9XFM
	az3ROmidYlMmNHyPKnFc366+UIbVHbqTRKCEYlZ1hGlvKfwzBnFO6gwX8J5o9f4VsAXv9JRC8eFCb
	wbbtjxEBJ713NJGvirWQspfbUCIAABIHp6LFCYBGUyq6M1J84asp/kXSqXHXZNNTye/4ONT9hMb3S
	/llJujdtMbBqs9ppjCwEampEvRpjqz6lje0zoRC8knznAxaLknSN41hxqoY0ExRogyoa8Zxe6tphI
	SUwrAkVfX+4ZfeHMoOrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwzNP-0000000Exp2-1ox7;
	Wed, 17 Apr 2024 07:06:39 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwzNI-0000000Exmk-2H6D
	for linux-phy@lists.infradead.org;
	Wed, 17 Apr 2024 07:06:38 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6ed2dc03df6so4642146b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 17 Apr 2024 00:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713337590; x=1713942390; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Id9wk8bOD3jpvQHQWy0txCOh7lELBvXiW74KprcLKWE=;
        b=NWxBMy1jYUs+ap8ImN+ZDTcHDiTyei3dgLDRoa+2+B6ePi3vJ/Mouu1H1azQUT5Yug
         35rOIwGFKNaA0IM4zZC1CCYN0AIRpt7MwJ5vuKxrC2ku4n0Gw7LGIXT2+Qw9F/oTsIK9
         rA1Nqx+b9NtNwiFGTYSman/ArD8xba/slg3U+BJnROFxdLLxzDJUSzssnidWYOrlUO+E
         c68/Rk5XQEZpRemhaMe0Z7uOpDge80QuJszE7yLtXR2pCQvBAUfou4AiPZGxZOp6BKxc
         lEb10m/z4CVcObX+GWCLljySnH00C+5OcFadsbzWbv7cfTKIXf0iVHRFgvNskc03N8bv
         RBZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713337590; x=1713942390;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Id9wk8bOD3jpvQHQWy0txCOh7lELBvXiW74KprcLKWE=;
        b=PdgOegbcxHAi84F57XMshKRCYb3I+76d7Z7ZtEHsLJ07KMOPHcR2Vib3kqeepNNQXv
         e8YAu4vxcJGNJ3U9b39x6bKtLef1gCT5GlK43M2P5LRNxevwGHTpFmnaUUfNgydcL1Yw
         rhEJiaxTA6X6Qs1HgusSKQTb2s5CUhLL0xdG7RXH8AZ4gGK4a9c+5WBkKisotTVzwfZ6
         px3cm23O82mk4Mk3BuLACuE58BbKwNnE8cQfnMMFxiOmgOtYoW+R++pv5GGzku8TgGyP
         aNpoKyuPrUTjspYV9fz1W3wTwFQYbLbsZaiKixHhI1/mqon8f58p3RTqOiD1ipQLbgww
         hiZg==
X-Forwarded-Encrypted: i=1; AJvYcCW+liGhoAsQSLvZ1syws1lMKuE61/FHycA1C4UDnK+LCZu81karbDgtkhYGeiXr8vpNmdH4tIo2/GGluwOI1RRYU+ww21hpZLNDYO+grQ==
X-Gm-Message-State: AOJu0YxEgrMpbM3L/yuWAn2CDCHJp7elWJaImIQUtonSKhcbn32TA33L
	5KrNbgUjgE92qhENPdxncJwHLvc4INjoFUu6tTBX9nD0dDyRZsxfmTHtR6AA7g==
X-Google-Smtp-Source: AGHT+IH83KUdU6BtzRYL1t2NbRvI4qrrCGxtRd9cEdm+JtEHXxziFKFvGoFUMzWi78eYTsfdqTGaMA==
X-Received: by 2002:a05:6a21:3a85:b0:1aa:755f:1746 with SMTP id zv5-20020a056a213a8500b001aa755f1746mr911915pzb.22.1713337589983;
        Wed, 17 Apr 2024 00:06:29 -0700 (PDT)
Received: from thinkpad ([120.60.54.9])
        by smtp.gmail.com with ESMTPSA id a21-20020aa78655000000b006e6c16179dbsm10134759pfo.24.2024.04.17.00.06.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 00:06:29 -0700 (PDT)
Date: Wed, 17 Apr 2024 12:36:16 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mr.nuke.me@gmail.com
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
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
Message-ID: <20240417070616.GB3894@thinkpad>
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
 <20240415182052.374494-5-mr.nuke.me@gmail.com>
 <CAA8EJpqKWJBqDUacE0xTLzxny32ZTStiRgXsd2LBD=Hou_CRBw@mail.gmail.com>
 <3cfc26e6-5587-d4a2-f217-1a30169ad1a0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3cfc26e6-5587-d4a2-f217-1a30169ad1a0@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_000632_708725_CF2B2DED 
X-CRM114-Status: GOOD (  22.41  )
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

T24gTW9uLCBBcHIgMTUsIDIwMjQgYXQgMDM6MDc6MDJQTSAtMDUwMCwgbXIubnVrZS5tZUBnbWFp
bC5jb20gd3JvdGU6Cj4gCj4gCj4gT24gNC8xNS8yNCAxNTowNCwgRG1pdHJ5IEJhcnlzaGtvdiB3
cm90ZToKPiA+IE9uIE1vbiwgMTUgQXByIDIwMjQgYXQgMjE6MjIsIEFsZXhhbmRydSBHYWduaXVj
IDxtci5udWtlLm1lQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+IAo+ID4gPiBBZGQgc3VwcG9ydCBm
b3IgdGhlIFBDSWUgb24gSVBROTU3NC4gVGhlIG1haW4gZGlmZmVyZW5jZSBmcm9tIGlwcTYwMTgK
PiA+ID4gaXMgdGhhdCB0aGUgImlmYWNlIiBjbG9jayBpcyBub3QgbmVjZXNzYXJyeS4gQWRkIGEg
c3BlY2lhbCBjYXNlIGluCj4gPiA+IHFjb21fcGNpZV9nZXRfcmVzb3VyY2VzXzJfOV8wKCkgdG8g
aGFuZGxlIHRoaXMuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kcnUgR2Fnbml1
YyA8bXIubnVrZS5tZUBnbWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgIGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIHwgMTMgKysrKysrKysrLS0tLQo+ID4gPiAgIDEgZmls
ZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgYi9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+ID4gPiBpbmRleCAxNDc3MmVkY2Yw
ZDMuLjEwNTYwZDZkNjMzNiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS1xY29tLmMKPiA+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1xY29tLmMKPiA+ID4gQEAgLTExMDEsMTUgKzExMDEsMTkgQEAgc3RhdGljIGludCBxY29t
X3BjaWVfZ2V0X3Jlc291cmNlc18yXzlfMChzdHJ1Y3QgcWNvbV9wY2llICpwY2llKQo+ID4gPiAg
ICAgICAgICBzdHJ1Y3QgcWNvbV9wY2llX3Jlc291cmNlc18yXzlfMCAqcmVzID0gJnBjaWUtPnJl
cy52Ml85XzA7Cj4gPiA+ICAgICAgICAgIHN0cnVjdCBkd19wY2llICpwY2kgPSBwY2llLT5wY2k7
Cj4gPiA+ICAgICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9IHBjaS0+ZGV2Owo+ID4gPiAtICAg
ICAgIGludCByZXQ7Cj4gPiA+ICsgICAgICAgaW50IHJldCwgbnVtX2Nsa3MgPSBBUlJBWV9TSVpF
KHJlcy0+Y2xrcykgLSAxOwo+ID4gPiAKPiA+ID4gLSAgICAgICByZXMtPmNsa3NbMF0uaWQgPSAi
aWZhY2UiOwo+ID4gPiArICAgICAgIHJlcy0+Y2xrc1swXS5pZCA9ICJyY2huZyI7Cj4gPiA+ICAg
ICAgICAgIHJlcy0+Y2xrc1sxXS5pZCA9ICJheGlfbSI7Cj4gPiA+ICAgICAgICAgIHJlcy0+Y2xr
c1syXS5pZCA9ICJheGlfcyI7Cj4gPiA+ICAgICAgICAgIHJlcy0+Y2xrc1szXS5pZCA9ICJheGlf
YnJpZGdlIjsKPiA+ID4gLSAgICAgICByZXMtPmNsa3NbNF0uaWQgPSAicmNobmciOwo+ID4gPiAK
PiA+ID4gLSAgICAgICByZXQgPSBkZXZtX2Nsa19idWxrX2dldChkZXYsIEFSUkFZX1NJWkUocmVz
LT5jbGtzKSwgcmVzLT5jbGtzKTsKPiA+ID4gKyAgICAgICBpZiAoIW9mX2RldmljZV9pc19jb21w
YXRpYmxlKGRldi0+b2Zfbm9kZSwgInFjb20scGNpZS1pcHE5NTc0IikpIHsKPiA+ID4gKyAgICAg
ICAgICAgICAgIHJlcy0+Y2xrc1s0XS5pZCA9ICJpZmFjZSI7Cj4gPiA+ICsgICAgICAgICAgICAg
ICBudW1fY2xrcysrOwo+ID4gPiArICAgICAgIH0KPiA+ID4gKwo+ID4gPiArICAgICAgIHJldCA9
IGRldm1fY2xrX2J1bGtfZ2V0KGRldiwgbnVtX2Nsa3MsIHJlcy0+Y2xrcyk7Cj4gPiAKPiA+IEp1
c3QgdXNlIGRldm1fY2xrX2J1bGtfZ2V0X29wdGlvbmFsKCkgaGVyZS4KPiAKPiBUaGFuayB5b3Uh
IEkgd2Fzbid0IHN1cmUgaWYgdGhpcyB3YXMgdGhlIGNvcnJlY3Qgc29sdXRpb24gaGVyZS4gSSB3
aWxsIGdldAo+IHRoaXMgdXBkYXRlZCBpbiB2NC4KPiAKClBsZWFzZSByZWJhc2Ugb24gdG9wIG9m
IFsxXSBhbmQgbWVudGlvbiB0aGUgZGVwZW5kZW5jeSBpbiBjb3ZlciBsZXR0ZXIuCgotIE1hbmkK
ClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1wY2kvMjAyNDA0MTctcGNpLXFjb20t
Y2xrLWJ1bGstdjEtMS01MmNhMTliM2Q2YjJAbGluYXJvLm9yZy8KCj4gQWxleAo+IAo+ID4gPiAg
ICAgICAgICBpZiAocmV0IDwgMCkKPiA+ID4gICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+
ID4gPiAKPiA+ID4gQEAgLTE2NjQsNiArMTY2OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2Zf
ZGV2aWNlX2lkIHFjb21fcGNpZV9tYXRjaFtdID0gewo+ID4gPiAgICAgICAgICB7IC5jb21wYXRp
YmxlID0gInFjb20scGNpZS1pcHE4MDY0LXYyIiwgLmRhdGEgPSAmY2ZnXzJfMV8wIH0sCj4gPiA+
ICAgICAgICAgIHsgLmNvbXBhdGlibGUgPSAicWNvbSxwY2llLWlwcTgwNzQiLCAuZGF0YSA9ICZj
ZmdfMl8zXzMgfSwKPiA+ID4gICAgICAgICAgeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtaXBx
ODA3NC1nZW4zIiwgLmRhdGEgPSAmY2ZnXzJfOV8wIH0sCj4gPiA+ICsgICAgICAgeyAuY29tcGF0
aWJsZSA9ICJxY29tLHBjaWUtaXBxOTU3NCIsIC5kYXRhID0gJmNmZ18yXzlfMCB9LAo+ID4gPiAg
ICAgICAgICB7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS1tc204OTk2IiwgLmRhdGEgPSAmY2Zn
XzJfM18yIH0sCj4gPiA+ICAgICAgICAgIHsgLmNvbXBhdGlibGUgPSAicWNvbSxwY2llLXFjczQw
NCIsIC5kYXRhID0gJmNmZ18yXzRfMCB9LAo+ID4gPiAgICAgICAgICB7IC5jb21wYXRpYmxlID0g
InFjb20scGNpZS1zYTg1NDBwIiwgLmRhdGEgPSAmY2ZnX3NjODI4MHhwIH0sCj4gPiA+IC0tCj4g
PiA+IDIuNDAuMQo+ID4gPiAKPiA+ID4gCj4gPiAKPiA+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+Cv
jeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
