Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB48DC77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 09:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KkimJCQ7MhPPZREw4u5g1UEMTSKsLA1Q4eT0/IstioU=; b=sKsdpJCNDXsz0w
	zCGfZ4XFXFhyxxZRE99QkUNUxFm3vbE/cPRgPuOzVa35jp/N8QR7wnMfsDK/VEpilzZFei77TFTK7
	S6nFbBVnQFgqMRML6ET7vitijKKbewmeb0LTiYT1wR+xrtSOO8PMqaK5mAlOk1g5B08cIDaY/wVt9
	AVuxptoGjmaqjoVl7xu4SQAuKhewbDFrMjZ6/7pP1YsuJRlS0NyaJiQWrak2R28uNlPnNke5stKcc
	rzNUSCI649CAkjrn+paX/oSczoKiXH9jn6tTBL78G8KjJVCW3rtqCuVb9Esm3ZJeL2z2Kt764JMul
	ZUdFLNB6PP3qL9jQlMrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8zv9-007SZq-1c;
	Tue, 13 Jun 2023 09:02:35 +0000
Received: from mail-vk1-xa31.google.com ([2607:f8b0:4864:20::a31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8zv5-007SY7-2e
	for linux-phy@lists.infradead.org;
	Tue, 13 Jun 2023 09:02:33 +0000
Received: by mail-vk1-xa31.google.com with SMTP id 71dfb90a1353d-461b408594fso3644833e0c.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Jun 2023 02:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686646948; x=1689238948;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IwBARohfXJIkEwsEMMo8aAWiqSvLtM3z2mjs8+NCfXY=;
        b=jT1sJaKn2m880uxpJ5L5ArF3lDcj7fgCTwwBWF6RsaYqX7FePADgzH9Dm/QqjhTK+P
         DkQPUPzU0LxNoxMzS7NHCF9LCuhzZVIoDE2wJgz/RxHAjB3FwuKMnKsaB222ZRFhLIUu
         Ciykd3mFBTL1P7WKtcBDpCQWvECEdUtdaRqHsmBNHOaGKKf7ckFx8fnKMuWlHPX1DAFg
         l3FrMgVgKr1RRtnR5aQwYXQut1mIFSubWfpgQHY41fB/fjLHyTaHIBqSPhElGMgX2CHS
         MbpMz3ivQQDAA3XTNm+c5m5Vn8oEylxUVqdnXb74u+FwpQL9ps8VOpJtL3Q4VSJOGT4a
         U12Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686646948; x=1689238948;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IwBARohfXJIkEwsEMMo8aAWiqSvLtM3z2mjs8+NCfXY=;
        b=EDx8e/BDojz/mAWbuJ3O5er7Gu9j5e3zWbVUIAvh3phSexJtTlciDffs1h1leDRPgj
         toYPPURy+OvX27KhKtT+izlElem5qbRm/CqUWXVyPPB1vrQ31OhQk0DbMi2IeprpLCYZ
         xqTNwpZUy28WtN2/ugFHGr2Fytm6M/I2PpiuoCBJrQgPcDBGoFSx5TckUbJWD7K2dGnZ
         MFmZAni6bSjYCEwgu58q2r/0vEMYovelhw/9GoXFw5cnGyXZF1O6hHMlXEFEKOlgMFiE
         ufuJYNSk+jWNy4DNWctmEAn11O9wmyuaCkadlPVav2MCPEVa+CO32W7QbxCHs30ZdLzF
         aA0g==
X-Gm-Message-State: AC+VfDyk7XM5CxPBzDtrz7CfCuXpXPeELedctOMmmFkg6cxEBEzfT2qP
	hjXJXmWEVh+2ZZfxeIK16y8ECqzRRc3/ubwRWEmiDQ==
X-Google-Smtp-Source: ACHHUZ6FvJtsXqFfHNPsLThg02wzd2x38KBvekdtX3wtsD/RmYrGV5BDkoIlbcyJuuaGSsJlgYZLslwU2yK0B/59L/I=
X-Received: by 2002:a05:6122:d94:b0:458:8ee3:cad9 with SMTP id
 bc20-20020a0561220d9400b004588ee3cad9mr5032322vkb.8.1686646948353; Tue, 13
 Jun 2023 02:02:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230612092355.87937-1-brgl@bgdev.pl> <20230612092355.87937-16-brgl@bgdev.pl>
 <20230612210632.agp4ybeseujblao2@halaney-x13s>
In-Reply-To: <20230612210632.agp4ybeseujblao2@halaney-x13s>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 13 Jun 2023 11:02:17 +0200
Message-ID: <CAMRc=Mc0hJXSazCX-5DQL7LEZ7WkhmZURxK9Kiyf_bR2d+_S3g@mail.gmail.com>
Subject: Re: [PATCH 15/26] net: stmmac: dwmac-qcom-ethqos: add support for the
 optional phy-supply
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
X-CRM114-CacheID: sfid-20230613_020231_859545_001836E9 
X-CRM114-Status: GOOD (  22.06  )
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

T24gTW9uLCBKdW4gMTIsIDIwMjMgYXQgMTE6MDbigK9QTSBBbmRyZXcgSGFsYW5leSA8YWhhbGFu
ZXlAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIEp1biAxMiwgMjAyMyBhdCAxMToyMzo0
NEFNICswMjAwLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4gRnJvbTogQmFydG9zeiBH
b2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgo+ID4KPiA+IE9uIHNh
ODc3NXAtcmlkZSB3ZSBuZWVkIHRvIGVuYWJsZSB0aGUgcG93ZXIgc3VwcGx5IGZvciB0aGUgZXh0
ZXJuYWwgUEhZLgo+Cj4gSXMgdGhpcyBmb3IgdGhlIGV4dGVybmFsIHBoeT8gSXQgZG9lc24ndCBz
ZWVtIGxpa2UgaXQgZnJvbSB0aGUgYm9hcmQKPiBzY2hlbWF0aWMgSSBoYXZlLi4uIHRoZSByZWd1
bGF0b3IgbmV2ZXIgbWFrZXMgaXQgb3V0IG9mIHRoZSBibGFjayBib3ggdGhhdAo+IGlzIHRoZSBT
SVAvU09NIGlmIEknbSByZWFkaW5nIHJpZ2h0Lgo+Cj4gTXkgKHBvb3IpIHVuZGVyc3RhbmRpbmcg
d2FzIHRoaXMgd2FzIGZvciB0aGUgc2VyZGVzIHBoeSB0aGF0J3MgZG9pbmcgdGhlCj4gY29udmVy
c2lvbiB0byBTR01JSSBiZWZvcmUgaGl0dGluZyB0aGUgYm9hcmQuLi4gZ29vZCBjaGFuY2UgSSdt
IHdyb25nCj4gdGhvdWdoLgo+CgpObywgeW91J3JlIHJpZ2h0LiBJbiB3aGljaCBjYXNlIEkgdGhp
bmsgdGhlIHJlZ3VsYXRvciBjYWxscyBzaG91bGQgYmUKbW92ZWQgaW50byB0aGUgc2VyZGVzIGRy
aXZlciBpbnN0ZWFkIGFzIHBoeS1zdXBwbHkgaXMgZGVmaW5lZCBhcyB0aGUKc3VwcGx5IG9mIHRo
ZSBleHRlcm5hbCBQSFkgaW4gc3RtbWFjIGJpbmRpbmdzLgoKQmFydAoKPiA+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiYXJ0b3N6LmdvbGFzemV3c2tpQGxpbmFyby5v
cmc+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21h
Yy1xY29tLWV0aHFvcy5jIHwgNSArKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9z
dG1tYWMvZHdtYWMtcWNvbS1ldGhxb3MuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8v
c3RtbWFjL2R3bWFjLXFjb20tZXRocW9zLmMKPiA+IGluZGV4IDJmNmI5YjQxOTYwMS4uMjFmMzI5
ZDJmN2ViIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1t
YWMvZHdtYWMtcWNvbS1ldGhxb3MuYwo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3Rt
aWNyby9zdG1tYWMvZHdtYWMtcWNvbS1ldGhxb3MuYwo+ID4gQEAgLTgsNiArOCw3IEBACj4gPiAg
I2luY2x1ZGUgPGxpbnV4L3BoeS5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9waHkvcGh5Lmg+Cj4g
PiAgI2luY2x1ZGUgPGxpbnV4L3Byb3BlcnR5Lmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L3JlZ3Vs
YXRvci9jb25zdW1lci5oPgo+ID4KPiA+ICAjaW5jbHVkZSAic3RtbWFjLmgiCj4gPiAgI2luY2x1
ZGUgInN0bW1hY19wbGF0Zm9ybS5oIgo+ID4gQEAgLTY5Miw2ICs2OTMsMTAgQEAgc3RhdGljIGlu
dCBxY29tX2V0aHFvc19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICAg
ICAgaWYgKHJldCkKPiA+ICAgICAgICAgICAgICAgZ290byBvdXRfY29uZmlnX2R0Owo+ID4KPiA+
ICsgICAgIHJldCA9IGRldm1fcmVndWxhdG9yX2dldF9lbmFibGVfb3B0aW9uYWwoZGV2LCAicGh5
Iik7Cj4gPiArICAgICBpZiAocmV0IDwgMCAmJiByZXQgIT0gLUVOT0RFVikKPiA+ICsgICAgICAg
ICAgICAgZ290byBvdXRfY29uZmlnX2R0Owo+ID4gKwo+ID4gICAgICAgZXRocW9zLT5zZXJkZXNf
cGh5ID0gZGV2bV9waHlfb3B0aW9uYWxfZ2V0KGRldiwgInNlcmRlcyIpOwo+ID4gICAgICAgaWYg
KElTX0VSUihldGhxb3MtPnNlcmRlc19waHkpKSB7Cj4gPiAgICAgICAgICAgICAgIHJldCA9IFBU
Ul9FUlIoZXRocW9zLT5zZXJkZXNfcGh5KTsKPiA+IC0tCj4gPiAyLjM5LjIKPiA+Cj4KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
