Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EEE3C77B7F
	for <linux-phy@archiver.kernel.org>; Thu, 11 May 2023 09:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTEcMeZXzbTpypRbEvuynlU2DZV4Vjd0Iz1qYiQBlvg=; b=j9My6H+4fUz1dq
	inHkpc7KkShKpy2JL3cv+1tqHFqP4iUXYrDF6ljs+b31mj9+/Rj3GG0WuSZ3QAQZfBTZkJ7jh1AjO
	p78j9QJ8jHHeAuKWE+VRxQVSA4TBLQqbQ61JW7bSQHGiANm2M+DvD8amsrq+VoL2DZhbLM3YXCRxU
	HuNhjK6+Ddr1CDaj5F6EveAOI5Ubn1N/B3O/1DgjeKbI0NtNkt4HhKY2BGZXikuEaqZl5hvCi/wgx
	A/hrQNgLe9aZKcyidBOU01vosKr4OOkfxjSM5OlLBeP6oJPmzaqFAGREWHWlNskH3vqHE+0VvsmsI
	Zlnq2j3pKy0ACU0rJGIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1px2Rp-008KUV-2G;
	Thu, 11 May 2023 09:18:53 +0000
Received: from mail-ua1-x935.google.com ([2607:f8b0:4864:20::935])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1px2Rl-008KRr-31
	for linux-phy@lists.infradead.org;
	Thu, 11 May 2023 09:18:51 +0000
Received: by mail-ua1-x935.google.com with SMTP id a1e0cc1a2514c-77d0160ed4cso2219568241.0
        for <linux-phy@lists.infradead.org>; Thu, 11 May 2023 02:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1683796727; x=1686388727;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mCpJk3R8UEUc900fWaZ36e4XkCAv/PqWqpOGayqH3do=;
        b=IJ2xCqITqQxYd2j21guIc8CZ8a3qzOQddlNmBPpwRr3wVfJWaXyJI/ZKssRhmcOTgA
         ilyj2rg2fCrteFz+fjY/juhlucDO3hu6UGVP/mhHZ/5db2Ph3NG2SEHP5q6avENqPQEw
         vd7GdnA5jMAlyOsQA09qOdBp7bqPEQ/s8ZXp8QFwSB7RC/I3DqQbtiDdGq6uemVS2Ld0
         x0bGAOvDLv5PbDm8I88MTMA4AP3yIQlfKTU+4zyo27lkONLtPWZOXMYYdHg9qekj+JYY
         lSKV46S0nCXogvNJCBGFhU8sEupT0DaXqxj9jwiG6qCwOmNnPzyk2uadn5QFM2mO4lxW
         LegQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683796727; x=1686388727;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mCpJk3R8UEUc900fWaZ36e4XkCAv/PqWqpOGayqH3do=;
        b=X5eZRpO4RlLC1R8n6AIKMMO6FhASJnY/yw0JN0S1b1cnf9AGhxsZ9o2cwdop7S6vqb
         6aNp7TFO4pEYVYQm1u4j/ArxprVeF5vWZpUj/SYQsA4UTj6Z7O+nnbtqWKYgV2mle9Yg
         OagLRPbIVL3122ZPmuJuvpFT1mSV5M0JUGFLlrd4irMOdk8QTytfDaaHWd58d1+Afy3/
         U6xP6nKUE9bXWUYQps9njytq9znFo2vSOYBG39fbKJJ3mMqw9oIc4UADJpyf6Vp1VYml
         JWKWGGV7LN82jpzpv4ySOYtIuA18hLYAPn/DKkIK8yHY7XYhDl3iT/7T0qAGrXdriJ0t
         +erA==
X-Gm-Message-State: AC+VfDw1z8cWihVVlCxBAua2U1QRHqtvYJQA6lVqXQ6HSV67cDg1Nfv6
	W2W7z7nJT8iPQKI2/cERZjX6sG2jWdxMBnm1Add6JQ==
X-Google-Smtp-Source: ACHHUZ7PfcbhhIISYu9xCWNbAAg7XKAZcsN35LL5BB55uAZP1vndrSeFKFLrjV9j0Mzf8/9C95DuBCkC6LahVX2mBwE=
X-Received: by 2002:a05:6102:2857:b0:436:158:cf6c with SMTP id
 az23-20020a056102285700b004360158cf6cmr4794491vsb.6.1683796727674; Thu, 11
 May 2023 02:18:47 -0700 (PDT)
MIME-Version: 1.0
References: <20230413160607.4128315-1-sean.anderson@seco.com> <20230413160607.4128315-4-sean.anderson@seco.com>
In-Reply-To: <20230413160607.4128315-4-sean.anderson@seco.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 11 May 2023 11:18:36 +0200
Message-ID: <CAMRc=Mft9a3PNo78jiSGfKaZDhAkpPTrcTfarcr=tSmLWzj-Qw@mail.gmail.com>
Subject: Re: [PATCH v14 03/15] dt-bindings: Convert gpio-mmio to yaml
To: Sean Anderson <sean.anderson@seco.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, 
	Madalin Bucur <madalin.bucur@nxp.com>, linux-arm-kernel@lists.infradead.org, 
	Camelia Alexandra Groza <camelia.groza@nxp.com>, devicetree@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, linuxppc-dev@lists.ozlabs.org, 
	Bagas Sanjaya <bagasdotme@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Ioana Ciornei <ioana.ciornei@nxp.com>, 
	Linus Walleij <linus.walleij@linaro.org>, =?UTF-8?Q?Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>, 
	Jonas Gorski <jonas.gorski@gmail.com>, linux-gpio@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230511_021849_974842_086D1D4B 
X-CRM114-Status: GOOD (  13.75  )
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

T24gVGh1LCBBcHIgMTMsIDIwMjMgYXQgNjowNuKAr1BNIFNlYW4gQW5kZXJzb24gPHNlYW4uYW5k
ZXJzb25Ac2Vjby5jb20+IHdyb3RlOgo+Cj4gVGhpcyBpcyBhIGdlbmVyaWMgYmluZGluZyBmb3Ig
c2ltcGxlIE1NSU8gR1BJTyBjb250cm9sbGVycy4gQWx0aG91Z2ggd2UKPiBoYXZlIGEgc2luZ2xl
IGRyaXZlciBmb3IgdGhlc2UgY29udHJvbGxlcnMsIHRoZXkgd2VyZSBwcmV2aW91c2x5IHNwcmVh
ZAo+IG92ZXIgc2V2ZXJhbCBmaWxlcy4gQ29uc29saWRhdGUgdGhlbS4gVGhlIHJlZ2lzdGVyIGRl
c2NyaXB0aW9ucyBhcmUKPiBhZGFwdGVkIGZyb20gdGhlIGNvbW1lbnRzIGluIHRoZSBzb3VyY2Uu
IFRoZXJlIGlzIG5vIHNldCBvcmRlciBmb3IgdGhlCj4gcmVnaXN0ZXJzLCBhbmQgc29tZSByZWdp
c3RlcnMgbWF5IGJlIG9taXR0ZWQuIEJlY2F1c2Ugb2YgdGhpcywgcmVnLW5hbWVzCj4gaXMgbWFu
ZGF0b3J5LCBhbmQgbm8gb3JkZXIgaXMgc3BlY2lmaWVkLgo+Cj4gUmVuYW1lIGJyY20sYmNtNjM0
NS1ncGlvIHRvIGJyY20sYmNtNjN4eC1ncGlvIHRvIHJlZmxlY3QgdGhhdCBiY202MzQ1Cj4gaGFz
IG1vdmVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogU2VhbiBBbmRlcnNvbiA8c2Vhbi5hbmRlcnNvbkBz
ZWNvLmNvbT4KPiBSZXZpZXdlZC1ieTogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5h
cm8ub3JnPgo+IC0tLQo+IExpbnVzIG9yIEJhcnRvc3osIGZlZWwgZnJlZSB0byBwaWNrIHRoaXMg
dXAgYXMgdGhlIHJlc3Qgb2YgdGhpcyBzZXJpZXMKPiBtYXkgbm90IGJlIG1lcmdlZCBhbnkgdGlt
ZSBzb29uLgo+CgpBcHBsaWVkLCB0aGFua3MhCgpCYXJ0CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
