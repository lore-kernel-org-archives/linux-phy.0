Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 026EEC77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 10:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDexEJYdH/megtGpUkHpDdmVsyeP6li5lZsULp5kzJs=; b=Ih5n2XYikaJJYB
	aEXqM1ZwkUvLGhIP/CijP2KiUgmx8t09+BNu60BHTl0cBFH2JlbQ5kLGIA/BZT7mWK0xW3IDIR7H+
	Ue57/NNL/8F+EV2x9DeNslAcuamK3oQ7X5ZZWd9L9U0oUz5+rwtrRRKIK70QvUatXw+mSlP5pNL3D
	ypory6r3ARcW/PRiDdXsuY464cgZ7N3OxHK/84VH3JTPh8jPMhCXxyd8+h3N3U5AEjToZL57TGxcq
	g1nFhiBombUgo2ffQWqjpZGBz7r2lawkt1rD+NvRaJAzhxTT0hmiaQ1MWZB6oe8QbLOI3ZwcTygjT
	TK0GGHvFd34gWEUXpDWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyrZy-005Bya-1f;
	Tue, 16 May 2023 10:06:50 +0000
Received: from mail-vs1-xe32.google.com ([2607:f8b0:4864:20::e32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyrZv-005Bvy-0c
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 10:06:48 +0000
Received: by mail-vs1-xe32.google.com with SMTP id ada2fe7eead31-436750830efso173625137.3
        for <linux-phy@lists.infradead.org>; Tue, 16 May 2023 03:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1684231605; x=1686823605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KJ5WDN3DjxlHoC+PKB9u34xmvDgAcgwNKb6XXaL35hE=;
        b=Ay2WSygufTNGqJabs/hjybJoiCVEv5RB7deFGPO2wuiw82jcAjVGUPAk7ujp74Cuwu
         zPXb72C8QBKF6Z3bSsQpMYRTjwdtJ+jE1UNHEWSZUewTFbOXNqz9T8RmhhQ1RA948NTi
         5GvtNQaSjGhivq/iCXdWUD1gIWv5ptIbZ5juMHuSYaMHMVf1425SHrm7sFVnRpyeFJ0o
         toJIl/DVnGigxkUyyN076kaX+jqR5MjeCpcrE1kdrI8I/himhE/tgyxC3g9+6UdMl3BZ
         0npZtA+DUJoELA8vd1lEIwieaoV+WP/feF++QWavd6HdEp55kVcfjGX+ry4DbheKCLtT
         I47A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684231605; x=1686823605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KJ5WDN3DjxlHoC+PKB9u34xmvDgAcgwNKb6XXaL35hE=;
        b=aWJkqm7HimhnjPhj1GzfN/YHu4Bjn6ubk+1LsisWECkXSMvdV7hsv6XecETPPKfnP6
         P6TDPWMqjDvcvMJ4gZ3TZ5Y18Qzuz5oh/Mdq8ob2SdgqQrxV1fFYX/JfWRSYhnraiuEj
         D1PQBEFZB1bo5+cV3kWpJb9xCKKkfnI5feN8fM7te4HQtJUHXbp5UyvxfH3v95TvcQq8
         TuQBWmbjOJmgxLHc52kKg529KNG4DMnEke7WUznsKikWpcxp0TDTEPNML+PSdiw4SpXL
         Q7ibQ4wJK0onQo2WW5lEDGEyfZwg4CRheqW9Q2lqdxyvBcBxgEaUCSgXEq7h3pGHFoJE
         dgAA==
X-Gm-Message-State: AC+VfDwcKZ/uxauNj7lG9kQsWPaPzxlWVYdIsxNinQ4UuNsgdOHt2Lsr
	jnD8MYy6v+cF1arDjF7OoDiLBTA2Jozh/Y4tFecU0w==
X-Google-Smtp-Source: ACHHUZ40MVTgx2lo2t3GLhWu3fMQszo4IcN1i2bu2E0cau1DdmwzovAd8/IssRIkFf3sD6YNFEWt3bJl0EHQ5B+V28M=
X-Received: by 2002:a05:6102:534:b0:42e:3b16:8695 with SMTP id
 m20-20020a056102053400b0042e3b168695mr14042762vsa.3.1684231604875; Tue, 16
 May 2023 03:06:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230411130446.401440-1-brgl@bgdev.pl> <20230411130446.401440-2-brgl@bgdev.pl>
In-Reply-To: <20230411130446.401440-2-brgl@bgdev.pl>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 16 May 2023 12:06:34 +0200
Message-ID: <CAMRc=MdDct0UzJPpOTuKHmm23Jc529NwkBWJJmXfeevpkQaSxQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: ufs: qcom: add compatible for sa8775p
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_030647_456438_EBBC2FFD 
X-CRM114-Status: GOOD (  13.79  )
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

T24gVHVlLCBBcHIgMTEsIDIwMjMgYXQgMzowNOKAr1BNIEJhcnRvc3ogR29sYXN6ZXdza2kgPGJy
Z2xAYmdkZXYucGw+IHdyb3RlOgo+Cj4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9z
ei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgo+Cj4gQWRkIHRoZSBjb21wYXRpYmxlIHN0cmluZyBm
b3IgdGhlIFVGUyBvbiBzYTg3NzVwIHBsYXRmb3Jtcy4KPgo+IFNpZ25lZC1vZmYtYnk6IEJhcnRv
c3ogR29sYXN6ZXdza2kgPGJhcnRvc3ouZ29sYXN6ZXdza2lAbGluYXJvLm9yZz4KPiBSZXZpZXdl
ZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3Jn
Pgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sdWZz
LnlhbWwgfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPgo+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sdWZzLnlh
bWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sdWZzLnlhbWwK
PiBpbmRleCBjNWEwNmMwNDgzODkuLmIxYzAwNDI0YzJiMCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sdWZzLnlhbWwKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sdWZzLnlhbWwKPiBAQCAtMjYs
NiArMjYsNyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAgICAgLSBxY29tLG1zbTg5OTQtdWZzaGMK
PiAgICAgICAgICAgIC0gcWNvbSxtc204OTk2LXVmc2hjCj4gICAgICAgICAgICAtIHFjb20sbXNt
ODk5OC11ZnNoYwo+ICsgICAgICAgICAgLSBxY29tLHNhODc3NXAtdWZzaGMKPiAgICAgICAgICAg
IC0gcWNvbSxzYzgyODB4cC11ZnNoYwo+ICAgICAgICAgICAgLSBxY29tLHNkbTg0NS11ZnNoYwo+
ICAgICAgICAgICAgLSBxY29tLHNtNjM1MC11ZnNoYwo+IEBAIC0xMDUsNiArMTA2LDcgQEAgYWxs
T2Y6Cj4gICAgICAgICAgICBjb250YWluczoKPiAgICAgICAgICAgICAgZW51bToKPiAgICAgICAg
ICAgICAgICAtIHFjb20sbXNtODk5OC11ZnNoYwo+ICsgICAgICAgICAgICAgIC0gcWNvbSxzYTg3
NzVwLXVmc2hjCj4gICAgICAgICAgICAgICAgLSBxY29tLHNjODI4MHhwLXVmc2hjCj4gICAgICAg
ICAgICAgICAgLSBxY29tLHNtODI1MC11ZnNoYwo+ICAgICAgICAgICAgICAgIC0gcWNvbSxzbTgz
NTAtdWZzaGMKPiAtLQo+IDIuMzcuMgo+CgpCam9ybiwKCkFyZSB5b3UgcGlja2luZyB0aGlzIG9u
ZSB1cCBhcyB3ZWxsIG9yIHNob3VsZCBpdCBnbyB0aHJvdWdoIFJvYidzIHRyZWU/CgpCYXJ0Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
