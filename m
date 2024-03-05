Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B49A6C54E41
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 18:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++A4CwgcT4rZq13S1zEw7xFmvv310bhuz9KSiSLcTTE=; b=48SPTwA3sZW4+A
	ToXbpi3pWJ9eQvMwXyvCtM2XvF9waOwRkYy6rF8CUkiDl2yM2RDjc/nWyCRz/TBvXqv5ksfLzyMZU
	f7/8No/R3kW85NXY4NZyaM0/UvRRSmgHMCyX6C4TkLlXOyhXE2XKSG+q55aeXx+W6sdfhas0IrCnO
	JJ9fwwvcvQXf7e6Bv4a/tBiPIxruItiH29ygZgoeWpsa5zbW9HfufpSoLQFtO7xNHefzGlKhFszp6
	A9sgBGPm44l0VHg+8Zd4bGNVWmOdY8nfYoLGDvReAU0B9kdKflQCZhKTuS4htpNrIszZh1nM3gm7F
	0zeRubfoeRfJPsMsMi/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhZv2-0000000EvV9-1aHx;
	Tue, 05 Mar 2024 18:53:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhZuz-0000000EvTI-3fTD
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 18:53:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B309061731
	for <linux-phy@lists.infradead.org>; Tue,  5 Mar 2024 18:53:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 185E2C433A6
	for <linux-phy@lists.infradead.org>; Tue,  5 Mar 2024 18:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709664816;
	bh=UxSg3J7pmXgouiW5qzsuGHpZBdYmHL4bL7FyvyMHf+k=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=VR0Eeyjp/78+DsOUI5efdN9B5bRcF6HFxoyvC5bWeVElq/VWUrAW0m3CZKkWd+/7m
	 EWOsjMwJjrbelAFQUOJd4gCQmEYpb8qQ9o6GAEuNUC4gFQSvpshLsHCOHWJnfuabzm
	 09ANuKESfkHOchOjLYVen0ph1WGHj6dRrgJfEcADIWSzTdYzj95l1MFd+dM71Lnert
	 5UuVIzk/H2GE0K6qCuwKYph1b0GYbZiDzD55PIfVSD2Q6I9awi3YtDqTplCIGvB3C1
	 qCE1U07l+G7WGbfteb5WeCDHyxuR1JjmfzFZTmAwysC+rzXhrRdFSvTrvdqsKZAPpQ
	 aT7NxkPqiKRMw==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d3fb16f1a9so769501fa.0
        for <linux-phy@lists.infradead.org>; Tue, 05 Mar 2024 10:53:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUBQappaGDbXqvOz1pr3Y49JUUDA/zqzrH2SAQYPOZyFto1tIVd1J7spuT10073nLcqunGXfxXrulEhwCGkNYYEzRIXrUj0Vay0QjNgxA==
X-Gm-Message-State: AOJu0Yyvswt3CworeKHT2Qd4sk2q4JwEc0f7nzmdD8EAfJXPP2ucVEQE
	MbYKE/Y8090vJX0CkpC6pgDQEAd2yPmmmyJafkFFHacYSQs6Fu6je58MroAFqqXJSBV+jmzX1c9
	Pvv8oIu16f9F4Axv+rlm3OgPDGw==
X-Google-Smtp-Source: AGHT+IEU/KBPArFsCWKj4b5nW5QhpIEG3gfe02KIC5UhsfknOlWHT6QJ/okiHavM97I63ii3T7OjJZvBcaAb43h3RQs=
X-Received: by 2002:a2e:91d8:0:b0:2d3:9cc2:fca4 with SMTP id
 u24-20020a2e91d8000000b002d39cc2fca4mr971547ljg.15.1709664814125; Tue, 05 Mar
 2024 10:53:34 -0800 (PST)
MIME-Version: 1.0
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
 <20240121-sm7125-upstream-v4-2-f7d1212c8ebb@gmail.com> <20240212222232.GB2655166-robh@kernel.org>
 <CAA8EJpoymmOBc3CfNHJKBT8BNje_s2a5uGPde3QHYv3vQ97=-Q@mail.gmail.com> <CAL_JsqLGVBjiYt5tG0GFxxeHmNDD1PgJx3ab-n2x0nHPEaX9iQ@mail.gmail.com>
In-Reply-To: <CAL_JsqLGVBjiYt5tG0GFxxeHmNDD1PgJx3ab-n2x0nHPEaX9iQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 5 Mar 2024 12:53:21 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+wdu20iU5c-j6-V61nm6zuBOfDDqGdunjaGQLbc9BRmA@mail.gmail.com>
Message-ID: <CAL_Jsq+wdu20iU5c-j6-V61nm6zuBOfDDqGdunjaGQLbc9BRmA@mail.gmail.com>
Subject: Re: [PATCH v4 2/8] dt-bindings: ufs: qcom: Add SC7180 compatible string
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, David Wronek <davidwronek@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	"David S. Miller" <davem@davemloft.net>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	linux-phy@lists.infradead.org, ~postmarketos/upstreaming@lists.sr.ht, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_105338_034265_F65AFDBE 
X-CRM114-Status: GOOD (  18.90  )
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

T24gVHVlLCBGZWIgMTMsIDIwMjQgYXQgMTI6MTHigK9QTSBSb2IgSGVycmluZyA8cm9iaEBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgRmViIDEzLCAyMDI0IGF0IDQ6MzDigK9BTSBEbWl0
cnkgQmFyeXNoa292Cj4gPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPgo+
ID4gT24gVHVlLCAxMyBGZWIgMjAyNCBhdCAwMDoyMiwgUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIFN1biwgSmFuIDIxLCAyMDI0IGF0IDA1OjU3OjQy
UE0gKzAxMDAsIERhdmlkIFdyb25layB3cm90ZToKPiA+ID4gPiBEb2N1bWVudCB0aGUgY29tcGF0
aWJsZSBmb3IgdGhlIFVGUyBmb3VuZCBvbiBTQzcxODAuCj4gPiA+ID4KPiA+ID4gPiBSZXZpZXdl
ZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3Jn
Pgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IERhdmlkIFdyb25layA8ZGF2aWR3cm9uZWtAZ21haWwu
Y29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvdWZzL3Fjb20sdWZzLnlhbWwgfCAyICsrCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKPiA+ID4KPiA+ID4gU2hvdWxkIGhhdmUgYmVlbiBwaWNrZWQgdXAgYnkgU0NT
SS9VRlMgbWFpbnRhaW5lcnMsIGJ1dCBpdAo+ID4gPiBoYXNuJ3QsIHNvIEkgYXBwbGllZCBpdC4K
PiA+Cj4gPiBBbmQgaXQgbm93IHRyaWdnZXJzIHNjaGVtYSB3YXJuaW5ncywgYmVjYXVzZSBzYzcx
ODAtdWZzaGMgaGFzIDcgY2xvY2tzCj4gPiBhbmQgMSByZWcgZW50cmllcy4KPgo+IEFuZCBub3cg
ZHJvcHBlZC4uLiBQZXJoYXBzIHRoZSBkdHMgY2hhbmdlcyBzaG91bGQgYmUgdG9vLgo+Cj4gTWF5
YmUgUUNvbSBtYWludGFpbmVycyBzaG91bGQgcmVxdWlyZSBhIHJlcG9ydCBvZiBkdGJzX2NoZWNr
IG9uIG5ldwo+IGJvYXJkcy4gTXkgY29tcGFyaXNvbnMgb2YgTGludXMgdnMuIG5leHQgd2Fybmlu
Z3Mgb2Z0ZW4gc2hvdyBhbgo+IGluY3JlYXNlIGluIFFDb20gd2FybmluZ3MuIExpa2UgcmlnaHQg
bm93Ogo+Cj4gbGludXM6IGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbToxOTkwOjI2NQo+IG5leHQ6
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbToxNjEwOjI5OAoKU3RpbGwgYSBidW5jaCBvZiB3YXJu
aW5ncyBpbiBuZXh0LiBUaGlzIGJpbmRpbmcgc2hvdWxkIGJlIHJlc3VibWl0dGVkCndpdGggZml4
ZXMgb3IgdGhlIGR0cyBjaGFuZ2VzIGRyb3BwZWQuCgpSb2IKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
