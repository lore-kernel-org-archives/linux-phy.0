Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E82DC77B78
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 17:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28dV6We9i11Ox3zv3vHq7YKnpZa8wVzait11YR/IucA=; b=HH3RO1GsGnZ16P
	+jIig8RuTjYAo+zQ351PjH7NBWtBBaoj0zGI7jveXtouZDteAO+xFrY2Xxn6fJjgWiMY84W/QU95x
	jUy8XAX2DpOr3MCD/GUMvQkxMKABCHPfF3miz1WSw3ifSfo6g2aTcD3+ASmKx6SgyAiMF+0c2kdDt
	caslve7iH9Hxg/RJi1hfnaGxWsuB4cFohCJ3I5GZfLNsVSiG98OnmALx8amFjtpaUqbxBNfq5qxdm
	hJTcjKS8MduXRKuRrUb8qRSHysMBj2a22qPxLA+JTC3CK4C432GSrregOJjVBhDVpW0gKnJu1ekD7
	fwUUULovyrfDA07HzYBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pucgi-008Q3U-0b;
	Thu, 04 May 2023 17:24:16 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pucgf-008Q2q-0E
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 17:24:14 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-50bc25f0c7dso1532065a12.3
        for <linux-phy@lists.infradead.org>; Thu, 04 May 2023 10:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1683221049; x=1685813049;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cjowc/gRt/pdKPtgyZqkM5OSn7+TcLpFEiLZrM6tdM0=;
        b=hEQ+VutEhKDPZsOTY3XnPqGUM+jUOkVftCAYeNoJ4w3CBdvYz51hSrfFPk0ItbcABz
         d5+QMeVED0eT+5bv3KPIY9pNk5a73FBGTDiBm3+TJ2Ox5W0Lb6EnhHjXGnvPD98mvCJw
         BME8+zc6On0S4WeykifZ3C8b1Io1CQrXYoYoY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683221049; x=1685813049;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cjowc/gRt/pdKPtgyZqkM5OSn7+TcLpFEiLZrM6tdM0=;
        b=ChnRLblO/zdmpC4UpiZy4lPilHj97o/7uRVwQQsww47pQrydI20scJzdvQSFoAF1w2
         TPLD41/KYnn0ODir9a1DQ1eRcmomLEYlnoKb1BwZnjA7GjdHtWmVhANdieYXTgjOsXi9
         c0wIwfa8Z7y1Wsz2QeRUUVZ349XLEDgVDC1dT43ewdP5Yhs7iXg9OSHpqi/fOxOqt0QU
         LBuda5kRD8BYubE6z6Gd74kT46DIt4rVzFh8BebbhRfMbv6MRbhy7aYynJS7eOBR80Qi
         XqPNMY2proLtQx66xeoFSyqvZI7Y5FqEzGJ8gg5PARgO/+fZC5OqXjJqcqiR0lQgsC+G
         FiRw==
X-Gm-Message-State: AC+VfDyGC/rVOz6wc283dSiSQrlkZDzqs/tGtl/Fo+heqNhnwNSCvEmD
	41p5vZkG2qmCMtBAFb6+7rYqHoDiF4PUT9Y3Xe+YaRWJ
X-Google-Smtp-Source: ACHHUZ7+Jmpr71jZg55VaN9hVr19L5rWykJ+iaOcnYRYmZuRK89/h68C/bb8SSUj95mOsGOKi+KNcw==
X-Received: by 2002:a05:6402:8c8:b0:50c:160d:f652 with SMTP id d8-20020a05640208c800b0050c160df652mr703995edz.8.1683221048962;
        Thu, 04 May 2023 10:24:08 -0700 (PDT)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com. [209.85.218.42])
        by smtp.gmail.com with ESMTPSA id e6-20020aa7d7c6000000b004af6c5f1805sm2084933eds.52.2023.05.04.10.24.08
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 10:24:08 -0700 (PDT)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-956ff2399c9so132468566b.3
        for <linux-phy@lists.infradead.org>; Thu, 04 May 2023 10:24:08 -0700 (PDT)
X-Received: by 2002:a17:907:3205:b0:90b:53f6:fd8b with SMTP id
 xg5-20020a170907320500b0090b53f6fd8bmr6290287ejb.31.1683221047723; Thu, 04
 May 2023 10:24:07 -0700 (PDT)
MIME-Version: 1.0
References: <ZFI74eeUzVPKhi4f@matsya> <20230504150624.GA1000378@dev-arch.thelio-3990X>
 <ZFPPucb9VNLB8r8v@matsya>
In-Reply-To: <ZFPPucb9VNLB8r8v@matsya>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 4 May 2023 10:23:51 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi-ve0h02vsNrzuox58rLXSbzcjay+k=XnUueWRh6cO2Q@mail.gmail.com>
Message-ID: <CAHk-=wi-ve0h02vsNrzuox58rLXSbzcjay+k=XnUueWRh6cO2Q@mail.gmail.com>
Subject: Re: [GIT PULL]: Generic phy updates for v6.4
To: Vinod Koul <vkoul@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Phy <linux-phy@lists.infradead.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	llvm@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_102413_139521_8E5BFCE3 
X-CRM114-Status: GOOD (  11.38  )
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

T24gVGh1LCBNYXkgNCwgMjAyMyBhdCA4OjMx4oCvQU0gVmlub2QgS291bCA8dmtvdWxAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4gU29ycnkgYmV0d2VlbiB2YWNhdGlvbiBhbmQgdHJhdmVsLCB0aGlzIHdh
cyBtaXNzZWQuCj4KPiBObyB3b3JyaWVzIHdlIGhhdmUgcHJvY2VzcyB0byBkZWFsIHdpdGggdGhp
cywgc28gdGhpcyBzaGFsbCBnbyBpbiBhcwo+IGZpeGVzLi4gSSB3aWxsIGRvIHRoZSBuZWVkZnVs
IHNob3J0bHkKCllvdSBuZWVkIHRvIGRvIGl0ICpub3cqLgoKWW91IHNob3VsZCBuZXZlciBoYXZl
IHNlbnQgdGhlIHB1bGwgcmVxdWVzdCB0byBtZSBpbiB0aGUgZmlyc3QgcGxhY2UKaWYgeW91IGhh
ZG4ndCBjaGVja2VkIHRoZSBzdGF0dXMgaW4gbGludXgtbmV4dC4KClRoZSBwb2ludCBvZiBsaW51
eC1uZXh0IGlzIHRvIGZpbmQgZmFpbHVyZXMuIEFuZCBpZiB5b3UgZG9uJ3QgdGhlbgoqY2FyZSog
YWJvdXQgdGhlIGZhaWx1cmVzLCB0aGVuIGl0IGhhcyBhbGwgYmVjb21lICBlbnRpcmVseSBwb2lu
dGxlc3MsCmFuZCBpdCdzIGVmZmVjdGl2ZWx5IHRoZSBzYW1lIGFzIGlmIGl0IGhhZCBuZXZlciBi
ZWVuIHRoZXJlIGluIHRoZQpmaXJzdCBwbGFjZS4KClNvIHRoaXMgbmVlZHMgdG8gZ2V0IGZpeGVk
ICpQUk9OVE8qLCBhbmQgaXQgbmVlZHMgdG8gbmV2ZXIgZXZlciBoYXBwZW4gYWdhaW4uCgpCZWNh
dXNlIGlmIGl0IGRvZXMgaGFwcGVuLCBJIHdpbGwgY29uc2lkZXIgeW91ciBjb2RlIHRvIGVmZmVj
dGl2ZWx5Cm5ldmVyIGhhdmUgYmVlbiBpbiBsaW51eC1uZXh0LCBhbmQgdGh1cyBqdXN0IG5vdCBi
ZSBhbiBvcHRpb24gZm9yCnB1bGxpbmcuCgpUaGlzIGlzbid0IGRlYmF0YWJsZS4gWW91IGRvbid0
IHB1dCB0aGluZ3MgaW4gbGludXgtbmV4dCwgaWdub3JlIHRoZQpyZXBvcnRzLCBhbmQgdGhlbiBz
ZW5kIHRoaW5ncyB1cHN0cmVhbSBhbnl3YXkuCgpJZiB5b3UgZG9uJ3QgaGF2ZSB0aW1lIHRvIGNo
ZWNrIHRoZSBzdGF0dXMgb2YgeW91ciB0cmVlIGluIGxpbnV4LW5leHQsCnlvdSBkb24ndCBoYXZl
IHRoZSB0aW1lIHRvIGRvIGEgcHVsbCByZXF1ZXN0LiBUaGF0J3MganVzdCBob3cgaXQKd29ya3Mu
CgogICAgICAgICAgICAgICAgICAgICAgTGludXMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
