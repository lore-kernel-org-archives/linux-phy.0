Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9397C742A7
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 08:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLWOQ/igxztVeWy0GYzlYnh1uqrW1cXUULhd2/zAnI4=; b=LrsmB8RhSRlWiu
	5mwaoKjdCs1Gj9c4F+aIr8FcKyClBI5evYtglr49PIyBdYNmpKrtcwGH4CaIEaK44Zsx49oP/w9Mn
	vqhgv9axLCA+2PZB+1yaKu2gdtppGOQacvgYTXrFeECZihh0mLQ4gDExfONLxQxwB2OV08ssCPoTj
	+usyrNrr0L93kFS5gW68hWqZm4qmFsWb56nJpWXOnbYLHsR7Pl+oXSSzLzNWHckHWzv8RH8ixX9/j
	5jf6Qz6l+hHSFHbiReNCn5cxuj3pSICEvdEMzbVqyBVcvRu/VkLcS+Gg4qQ6FcOtBhwN060iT92If
	qCscmdlOzxknmOrOoMQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZoj1-003sqn-UQ; Wed, 08 Mar 2023 08:00:40 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZoiy-003snt-EQ
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 08:00:38 +0000
Received: by mail-pl1-x632.google.com with SMTP id a2so16926854plm.4
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 00:00:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678262430;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jJctsTMSbAff9LHQoujSIdcWG8rrHRROdtWNIfdasOE=;
        b=aLPQ2SJOdWerlloRXkwFX7S53tuyV7yfLO3MjQ9Xln+wVjY1KRdEqBFTNAeQJNsJk1
         3aHj+8eZCX/7npblwQUjL1bCnnzF+N3DfN2pkia1gW3vsHvXErpin5RNr5+c1amyBaT5
         Bz8JqtkWEviAkkFuT/00PQtBVxKLnmWKJqEgSZvnPBrs7Aq01yXjhWFTC+qTl8MDyn5c
         nfeL9pdNJVT6lWWezZ5q8Oh7TtUwLpdFbovbs8exWvsZTYBu2LqpjmtXP+m4DRFILYY6
         +rUnuZUhusL5gGTuOI4gKxBniAeuPyuKu39MDGMcQ/wNz1YLstzT1I/1fxgC56pjziWK
         bEcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678262430;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jJctsTMSbAff9LHQoujSIdcWG8rrHRROdtWNIfdasOE=;
        b=Aon+7ROeDVAP0IXtbb8+xi3OtM59hvDGj0pvKysgPeVjElMAu3lyKvDvNVMnPHOMa5
         Trzg9qROQ/na/gxKwdP3u7TBZ/nqPwo2FGyQif0oTbgQWWXBopyLK6y4Ryv2yh3nFZYj
         rNY9Smw/6QlPrnds4huu/CtbwpAsH41soE/Po6Y2UlOM6jI+8O+61ZtWFmN1t/K21SAs
         MdRvNcXOTRXhzBuyK3Fgqx6uIqhg+E+nD1r8mTasSly+kMht9WAT2n7x0Nq0T6xNTMyi
         uYLC1qzefNuyEynR1e+UG1BjS7ibYlWw7ygUe2m/qCOkgQe39z/HYW+fVfvhYmONQXRf
         P2ZQ==
X-Gm-Message-State: AO0yUKU3zKhNhc/94W7N1Uy5Xx/ECOlcVNpF5wY39hnug+ORfpBpndro
	zW06kWmUCx7dg+VAJnOjS39B
X-Google-Smtp-Source: AK7set/5vFSwxsJD6OsCxklmEx/lSyPeqrb8QmZwXd7ypBS7coinZdPBKKUTNU/Y6ak8ht/ZDJvRmQ==
X-Received: by 2002:a17:902:ec84:b0:19c:c87b:4740 with SMTP id x4-20020a170902ec8400b0019cc87b4740mr20459711plg.34.1678262429975;
        Wed, 08 Mar 2023 00:00:29 -0800 (PST)
Received: from thinkpad ([59.97.52.140])
        by smtp.gmail.com with ESMTPSA id az4-20020a170902a58400b00196807b5189sm9339879plb.292.2023.03.08.00.00.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 00:00:29 -0800 (PST)
Date: Wed, 8 Mar 2023 13:30:22 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Robin Murphy <Robin.Murphy@arm.com>, andersson@kernel.org,
	lpieralisi@kernel.org, kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
	konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 02/13] dt-bindings: PCI: qcom: Add iommu properties
Message-ID: <20230308080022.GA134293@thinkpad>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
 <20230224105906.16540-3-manivannan.sadhasivam@linaro.org>
 <20230227195535.GA749409-robh@kernel.org>
 <20230228082021.GB4839@thinkpad>
 <CAL_JsqJXb1junhU+56ZcqHzAq8g0VN8BzQ2A1C9rB80pZDWJ-w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJXb1junhU+56ZcqHzAq8g0VN8BzQ2A1C9rB80pZDWJ-w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_000036_544363_4FFFF22A 
X-CRM114-Status: GOOD (  22.10  )
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

T24gV2VkLCBNYXIgMDEsIDIwMjMgYXQgMDg6NTg6NTFBTSAtMDYwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gK1JvYmluCj4gCj4gT24gVHVlLCBGZWIgMjgsIDIwMjMgYXQgMjoyMOKAr0FNIE1hbml2
YW5uYW4gU2FkaGFzaXZhbQo+IDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4gd3Jv
dGU6Cj4gPgo+ID4gT24gTW9uLCBGZWIgMjcsIDIwMjMgYXQgMDE6NTU6MzVQTSAtMDYwMCwgUm9i
IEhlcnJpbmcgd3JvdGU6Cj4gPiA+IE9uIEZyaSwgRmViIDI0LCAyMDIzIGF0IDA0OjI4OjU1UE0g
KzA1MzAsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+ID4gPiBNb3N0IG9mIHRoZSBQ
Q0llIGNvbnRyb2xsZXJzIHJlcXVpcmUgaW9tbXUgc3VwcG9ydCB0byBmdW5jdGlvbiBwcm9wZXJs
eS4KPiA+ID4gPiBTbyBsZXQncyBhZGQgdGhlbSB0byB0aGUgYmluZGluZy4KPiA+ID4gPgo+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRo
YXNpdmFtQGxpbmFyby5vcmc+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwgfCA1ICsrKysrCj4gPiA+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUueWFtbAo+ID4g
PiA+IGluZGV4IGEzNjM5OTIwZmNiYi4uZjQ4ZDA3OTJhYTU3IDEwMDY0NAo+ID4gPiA+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwKPiA+
ID4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNp
ZS55YW1sCj4gPiA+ID4gQEAgLTY0LDYgKzY0LDExIEBAIHByb3BlcnRpZXM6Cj4gPiA+ID4KPiA+
ID4gPiAgICBkbWEtY29oZXJlbnQ6IHRydWUKPiA+ID4gPgo+ID4gPiA+ICsgIGlvbW11czoKPiA+
ID4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiA+ID4gKwo+ID4gPiA+ICsgIGlvbW11LW1hcDogdHJ1
ZQo+ID4gPiA+ICsKPiA+ID4KPiA+ID4gSSB0aGluayBib3RoIHByb3BlcnRpZXMgdG9nZXRoZXIg
ZG9lc24ndCBtYWtlIHNlbnNlIHVubGVzcyB0aGUgUENJIGhvc3QKPiA+ID4gaXRzZWxmIGRvZXMg
RE1BIGluIGFkZGl0aW9uIHRvIFBDSSBidXMgZGV2aWNlcyBkb2luZyBETUEuCj4gPiA+Cj4gPgo+
ID4gSG93PyBXaXRoICJpb21tdXMiLCB3ZSBzcGVjaWZ5IHRoZSBTTVIgbWFzayBhbG9uZyB3aXRo
IHRoZSBzdGFydGluZyBTSUQgYW5kIHdpdGgKPiA+IGlvbW11LW1hcCwgdGhlIGluZGl2aWR1YWwg
U0lEPC0+QkRGIG1hcHBpbmcgaXMgc3BlY2lmaWVkLiBUaGlzIGhhcyBub3RoaW5nIHRvCj4gPiBk
byB3aXRoIGhvc3QgRE1BIGNhcGFiaWxpdGllcy4KPiAKPiBJIHNwb2tlIHdpdGggUm9iaW4gb2Zm
bGluZSBhbmQgaGUgYWdyZWVzIHRoYXQgaGF2aW5nIGJvdGggaXMgYnJva2VuIGF0Cj4gbGVhc3Qg
aW4gUkMgbW9kZS4gSGUgcG9pbnRlZCBvdXQgdGhlIGlzc3VlIGlzIHNpbWlsYXIgdG8gdGhpcyBv
bmUgb24KPiBUZWdyYVsxXS4KPiAKCkxvb2tlZCBpbnRvIHRoYXQgdGhyZWFkIGFuZCBjb25jbHVk
ZWQgdGhhdCAiaW9tbXVzIiBwcm9wZXJ0eSBzaG91bGQgZ28gYXdheS4KU3VibWl0dGVkIGEgcGF0
Y2ggWzFdIHRvIHJlbW92ZSB0aGF0IHByb3BlcnR5IGZyb20gUENJZSBub2RlcyBvZiBhbGwgUXVh
bGNvbW0KU29Dcy4KClRoYW5rcyBmb3IgcG9pbnRpbmcgb3V0ISBXaWxsIHVwZGF0ZSB0aGlzIGJp
bmRpbmdzIHBhdGNoIGluIG5leHQgcmV2aXNpb24uCgotIE1hbmkKClsxXSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1hcm0tbXNtLzIwMjMwMzA4MDc1NjQ4LjEzNDExOS0xLW1hbml2YW5u
YW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnLwoKPiBSb2IKPiAKPiBbMV0gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvYWxsL0FTOFAxOTNNQjIwOTU2NDAzNTc3NzlBN0Y5QjYwMjZGOEQyQTE5QEFTOFAx
OTNNQjIwOTUuRVVSUDE5My5QUk9ELk9VVExPT0suQ09NLwoKLS0gCuCuruCuo+Cuv+CuteCuo+Cv
jeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
