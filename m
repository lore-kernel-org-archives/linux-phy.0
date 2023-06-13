Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8856C7EE29
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 07:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iwo7kRQb+9sONObBmkzCmckiz01Q+y6Iei86plKin94=; b=F6ZUVXga+3D1qR
	MGe2OwptGAIrAyiTgbHIYdghTJsTFhfU74vqWfiytsiJW7p4sfKo+ISl167GduGRwhCwsSLu6qnTA
	nb0zXK7vtSPBluC6r9uGwtWPyCG+Qpyfgkha+UovxmLssj90j4cAC1m7mFZHmV2O0On+p/TQRHtAp
	LrcMzQfGVYYpiOOEKaZSKp1ViMUfz+fr6yYDV8hM8DQFAN5pRcQX4pmFdROnKFXgYEVRa5hqkE0cz
	b3FOQBvyWyeX5bXzmBG00Mxo8rxCMb6F0Uj8lF0RyrNLA2IXt4N6Yhu23hCopErQJlNhPAhIxubSX
	h2a3S1gVBrSYyB+3gahA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yve-007Iqz-14;
	Tue, 13 Jun 2023 07:59:02 +0000
Received: from mail-vs1-xe34.google.com ([2607:f8b0:4864:20::e34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8yva-007IoV-34
	for linux-phy@lists.infradead.org;
	Tue, 13 Jun 2023 07:59:00 +0000
Received: by mail-vs1-xe34.google.com with SMTP id ada2fe7eead31-43b1c483c39so300982137.2
        for <linux-phy@lists.infradead.org>; Tue, 13 Jun 2023 00:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686643135; x=1689235135;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UsJLNzamcvflvt39bJ653iKfbKKP5ytmbnffadMCPyM=;
        b=NzCmxWBnfmLYJE9eX8SGkh9EhG7MM+9AO4XxEFNdYE36a5jCujth0fxlxzD/WRlvI8
         wwHufGE06Z+3m94N+4rDADqMOC4ANpUJorLdPwiUD00X2QXZznGT46ZEvMM0nF5r7Hri
         9GXJltOAClw2tO8tc9BIcNcAmC/T/tpq50YHo40fVChd+g0FeBMUbytkvo7nId5TBP0R
         1L0PMHqcFc6yCQ9/WNDJ5GubKrmAIjPco7+TvVkVgtJNRwxw658g7/AUVJ8UH0JCOH2P
         tjKwFbEn3WJEakotGAE6Gq3ferV6U8Sae8+CLPLCZsmps1TPLgesfq6pbt4z12KWyPjJ
         ekjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686643135; x=1689235135;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UsJLNzamcvflvt39bJ653iKfbKKP5ytmbnffadMCPyM=;
        b=PrJ8IK48d3auTPz5qFgTtR6vm5lnptibV7G0/Y+r33j4oOeMEgUp2041iteFx9lLr9
         OfgqFpnKBXtaIWfWDihKOSQ73ePA0gz+OOMhBTyBu/HRf/IzhQ1AzuYd72FYVHEQUXNi
         EV+JuHHDwMzeG7sUkqYJZf5kZHmdeOUXgerELXY4qDgC1hIYiKPip9/FcVCyI6katMlK
         lA3EZpK2Hcnr/K/fFPUDM+ELejMYHK+9ghz3XwZsGWq0+X2miJ37jeC7WT18WwhMR3VO
         +hxAas6B6klqi9Swoz5FKKz9xLHWT13QHhkCduPj2KzFJvjRGt/titzicFgy9bEe6ICU
         gsLQ==
X-Gm-Message-State: AC+VfDwPfZlGht+hafL5QyZgKcqstgy9yZF+Q8dr8w5Thf17M/MKzrJl
	mFffDox4EECk3qhcFAaYZBHGHUaoByqNCOugoKnZmQ==
X-Google-Smtp-Source: ACHHUZ6UD0q4lBsFYRt1iBzo8nMQl6CBXd1e25IrTyG7lfVFArPC+BBaQLENtHQYb5mOM3DJ18qcoESm5mZWq4y4/aI=
X-Received: by 2002:a67:f610:0:b0:43b:398c:b251 with SMTP id
 k16-20020a67f610000000b0043b398cb251mr6161345vso.5.1686643135653; Tue, 13 Jun
 2023 00:58:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230612092355.87937-1-brgl@bgdev.pl> <20230612092355.87937-14-brgl@bgdev.pl>
 <20230612204042.litbbv23zdb3u5k7@halaney-x13s>
In-Reply-To: <20230612204042.litbbv23zdb3u5k7@halaney-x13s>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 13 Jun 2023 09:58:44 +0200
Message-ID: <CAMRc=MeFnbcpjxNb537t0nb8Gd4ZsGVWZn2j+yHusWjmQQge4w@mail.gmail.com>
Subject: Re: [PATCH 13/26] net: stmmac: dwmac-qcom-ethqos: make the rgmii
 clock optional
To: Andrew Halaney <ahalaney@redhat.com>
Cc: Vinod Koul <vkoul@kernel.org>, Bhupesh Sharma <bhupesh.sharma@linaro.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>, 
	netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_005858_988241_E21B3A79 
X-CRM114-Status: GOOD (  23.80  )
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

T24gTW9uLCBKdW4gMTIsIDIwMjMgYXQgMTA6NDDigK9QTSBBbmRyZXcgSGFsYW5leSA8YWhhbGFu
ZXlAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIEp1biAxMiwgMjAyMyBhdCAxMToyMzo0
MkFNICswMjAwLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4gRnJvbTogQmFydG9zeiBH
b2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgo+ID4KPiA+IE9uIHNh
ODc3NXAgdGhlcmUncyBubyBSR01JSSBjbG9jayBzbyBtYWtlIGl0IG9wdGlvbmFsIGluIHRoZSBk
cml2ZXIuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9z
ei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcWNvbS1ldGhxb3MuYyB8IDIgKy0KPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcWNvbS1ldGhxb3Mu
YyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXFjb20tZXRocW9z
LmMKPiA+IGluZGV4IDM0MzhiNjIyOTM1MS4uMjUyZGNhNDAwMDcxIDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcWNvbS1ldGhxb3MuYwo+
ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcWNvbS1l
dGhxb3MuYwo+ID4gQEAgLTY2Myw3ICs2NjMsNyBAQCBzdGF0aWMgaW50IHFjb21fZXRocW9zX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgICAgICBldGhxb3MtPnJnbWlp
X2NvbmZpZ19sb29wYmFja19lbiA9IGRhdGEtPnJnbWlpX2NvbmZpZ19sb29wYmFja19lbjsKPiA+
ICAgICAgIGV0aHFvcy0+aGFzX2VtYWMzID0gZGF0YS0+aGFzX2VtYWMzOwo+ID4KPiA+IC0gICAg
IGV0aHFvcy0+cmdtaWlfY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgInJnbWlpIik7Cj4gPiArICAg
ICBldGhxb3MtPnJnbWlpX2NsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbChkZXYsICJyZ21paSIp
Owo+Cj4gVGhpcyBtYWtlcyBpdCBvcHRpb25hbCBmb3Igb2xkZXIgcGxhdGZvcm1zIHRvbywgYnV0
IGFzIGZhciBhcyBJIGtub3cgb24KPiB0aG9zZSBwbGF0Zm9ybXMgaXQgaXMgbWFuZGF0b3J5Lgo+
Cj4gVGhpcyBjYW4gYmUgZW5mb3JjZWQgaW4gZHQtYmluZGluZyBjaGVja3MsIGJ1dCBzaG91bGQg
d2UgYWxzbyBlbmZvcmNlCj4gdGhhdCBpbiB0aGUgZHJpdmVyIHN0aWxsPyBIb25lc3RseSBJIGZl
ZWwgbGlrZSB5ZXMsIGJ1dCB0aGVyZSdzIHByb2JhYmx5Cj4gc29tZSBwcmVjZWRlbnQgbWFpbnRh
aW5lcnMgZm9sbG93IG9uIHRoaXMgZnJvbnQgdGhhdCBJIGRvbid0IGtub3cgb2YuCj4KCldoaWxl
IG15IGd1dCBmZWVsaW5nIGlzIHRoYXQgZW5mb3JjaW5nIHRoZSBjbG9jayBsaXN0IG9uIHRoZSBE
VApiaW5kaW5nIGxldmVyIGlzIGVub3VnaCwgd2UgY2FuIGFsc28gZG8gYSBkaWZmZXJlbnQgdGhp
bmc6IHJlbmFtZSB0aGUKY2xvY2sgZnJvbSByZ21paV9jbGsgdG8gbGlua19jbGsgb3Igc29tZXRo
aW5nIHNpbWlsYXIgYW5kIGp1c3QKZGV0ZXJtaW5lIHRoZSBuYW1lIGJhc2VkIG9uIHRoZSBIVyB2
YXJpYW50ICgicmdtaWkiIG9yICJwaHlhdXgiKS4gT3IKZXZlbiBnZXQgdGhlIGNsb2NrIGJ5IGl0
cyBpbmRleD8gdGhpcyB3YXkgd2UgY291bGQgZm9sZCB0aGUgbmV4dCBwYXRjaAppbiB0aGUgc2Vy
aWVzIGludG8gdGhpcyBvbmUgYW5kIHNpbXBsaWZ5IHRoZSBjb2RlLgoKQmFydAoKPgo+ID4gICAg
ICAgaWYgKElTX0VSUihldGhxb3MtPnJnbWlpX2NsaykpIHsKPiA+ICAgICAgICAgICAgICAgcmV0
ID0gUFRSX0VSUihldGhxb3MtPnJnbWlpX2Nsayk7Cj4gPiAgICAgICAgICAgICAgIGdvdG8gb3V0
X2NvbmZpZ19kdDsKPiA+IC0tCj4gPiAyLjM5LjIKPiA+Cj4KCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
