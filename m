Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D5D0C6FD19
	for <linux-phy@archiver.kernel.org>; Mon, 13 Mar 2023 22:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gv7EiBN4OpCHfnOwEk1QPdFO3da0mQT+RKTIF8CkqEc=; b=ri5fNpizkrVOKl
	wMTgsSjmU0MRijrYhaOnFklHCvWLDxn+cJymyPxiotcjrfl/ccwWclvOkIReunr9VfXD/OhYk9S7V
	FxL9eVRNaWKu6gInSoE7ceVLb0JSHXPPR2zbWb8a2Hn1Y/sKgkyhzDH9tT4eKDqieYMSCP3HDPooR
	vJqRlo35/M34STbQsoFrDDFAXX/07++gnPIkmD/L9dqdQUxh8tPEQanof9QUV7PHj0XNnvlyMBanu
	TLaI7GpGfUD+wqMUFeRRu79+f/H7xD19wuUgQZ1fnp1JNpGumTfFrhBpVhsvg2a5VAg6AbHHqGkoQ
	gu9kVp31bYw3+MdIX7UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbqQi-0083K0-AS; Mon, 13 Mar 2023 22:14:08 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbqQf-0083JJ-Co
	for linux-phy@lists.infradead.org; Mon, 13 Mar 2023 22:14:06 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-5445009c26bso43593857b3.8
        for <linux-phy@lists.infradead.org>; Mon, 13 Mar 2023 15:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678745644;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ixG+7bGig9QHUQWnSF4UiYBq7vDEpHXZ8tekX/nmxsQ=;
        b=i8CxBO0WR7OmBfqqlAHQje/zcyzikon1rCEQV8cWh4onUJHRcEPZyLMZHhYU8qM+wG
         tJzYFRNjiv1Z/A/sTasyGUOYa4VvMcsgTB5BpgqWnfGW84mjSKI5Mz89MrAdDJnorOwL
         BwanhOpukWSMVYSZyxO3rXY1pN8mY+BqNm4Beaw6YsLf/JPIPXUbt3MXDFT3t8Y0LK6u
         zZTkyf3m+KAQ5GPL/bPmsc+4fAsNSOagyt6yPbRI6DD016o5xrlwDmOcru7T9XjoLIPp
         A7B29wj2g8acbk3A5z+k4Kl0d5CN0tP0/YDsUdxAqmZ1w5q4Uq4UFH5TuzFxn1wneijl
         AKGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678745644;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ixG+7bGig9QHUQWnSF4UiYBq7vDEpHXZ8tekX/nmxsQ=;
        b=piyLgQev1TfPOuP3AC6+apNTrmLXDTs4tzzzZB8vi1iFPPcQM1PtwDkzisfV3l84Th
         kDdhf1tfegMOpyjpRNHECBt5tfZ4JHB7DXm9ltJPs8ixfpUscOGG28CJaMMZ8vktbT2Z
         pnksicdEceYrlxpGtiYv75tdrU7gK84QhvY+h1oXpDTIyZ0pc2UNPuBdHzxHKty0tfFB
         EdcAQDIe2Y01q7I/BAGQvHuqOsi3wr7UfbWvwnK7NRsAXeqZsfjDBhbIoPFbjPWJODP4
         hRdPQu++VzIuCpMyt8gokkS+QTYMH3kqP3qGLblI6Z+zGa+mj49nW8yC1nTUKXfeWAdK
         VuXg==
X-Gm-Message-State: AO0yUKX5t3OW65NT5EnLgC2ioNqCQVM8+jZKzSSMohxxrEllmEdgBojL
	CZOHdKOa2b77KDE2PuCgd5KD00YPyTF+MAAB1pFygw==
X-Google-Smtp-Source: AK7set+Bv76Po4Imp7oNwzB71WD5iLKQpfUzXDzH+Fp9A4JeoAaFi4DIdhTJ4chpyUfVvGitWyG/QEjZRdrFvDwK63c=
X-Received: by 2002:a81:4005:0:b0:532:e887:2c23 with SMTP id
 l5-20020a814005000000b00532e8872c23mr24535003ywn.9.1678745644324; Mon, 13 Mar
 2023 15:14:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230306191535.1917656-1-sean.anderson@seco.com>
 <20230306191535.1917656-4-sean.anderson@seco.com> <4c039e53-e3ca-29d7-e5ea-f24e385d28b0@linaro.org>
 <42ccbac0-53e2-f599-fb3d-064b896bde4a@seco.com> <CACRpkdaj-0dyqWdSbQbjyUed+khDLi-awgan1BnuDvuY2JBzFQ@mail.gmail.com>
 <d26bad8d-82ea-ed18-fa3e-081ba0d5dcf6@ncr.com>
In-Reply-To: <d26bad8d-82ea-ed18-fa3e-081ba0d5dcf6@ncr.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Mar 2023 23:13:52 +0100
Message-ID: <CACRpkdbDftrKzSHfRaO8Bk83FT=JwjR-X3M6wyjds4Jo9y8cEw@mail.gmail.com>
Subject: Re: [PATCH v10 03/13] dt-bindings: Convert gpio-mmio to yaml
To: "Leonard, Niall" <Niall.Leonard@ncr.com>
Cc: Sean Anderson <sean.anderson@seco.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, Madalin Bucur <madalin.bucur@nxp.com>, 
	"linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Ioana Ciornei <ioana.ciornei@nxp.com>, 
	Rob Herring <robh+dt@kernel.org>, Camelia Alexandra Groza <camelia.groza@nxp.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Bagas Sanjaya <bagasdotme@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>, 
	Jonas Gorski <jonas.gorski@gmail.com>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_151405_456028_19CB2F7E 
X-CRM114-Status: GOOD (  11.60  )
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

T24gTW9uLCBNYXIgMTMsIDIwMjMgYXQgOTo1M+KAr0FNIExlb25hcmQsIE5pYWxsIDxOaWFsbC5M
ZW9uYXJkQG5jci5jb20+IHdyb3RlOgoKPiA+IE5pYWxsIGFyZSB5b3Ugc2VuZGluZyBhIHYzIG9m
IHRoaXMgcGF0Y2ggc29vbj8KPiA+IEluY2x1ZGUgU2VhbiBvbiB0aGUgcmV2aWV3ZXIgbGlzdCEK
Cj4gSSBuZXZlciBnb3QgYXJvdW5kIHRvIHdvcmtpbmcgb24gdGhlIFYzIHBhdGNoLiBUaGUgaG9s
ZCB1cCBmb3IgbWUgd2FzCj4gdGhlIGNoYW5nZXMgdG8gdGhlIGJpbmRpbmdzLgo+IEknbSBub3cg
d29uZGVyaW5nIGlmIEkgc2hvdWxkIHdhaXQgb24gU2VhbidzIHBhdGNoIGJlaW5nIGFjY2VwdGVk
IGFuZAo+IHRoZW4gSSBjb3VsZCByZS1zdWJtaXQgdGhlIGRyaXZlciBjaGFuZ2VzLgo+IFdoYXQn
cyB0aGUgY29uc2Vuc3VzID8KClNlYW4gcGlja2VkIGl0IHVwIGZvciBzaGVwaGVyZGluZywgaXQg
bG9va3MgdmVyeSBnb29kLCBhcyBzb29uIGFzCnRoZSBEVCBtYWludGFpbmVycyBnaXZlIGl0IGEg
bm9kIEJhcnRvc3ogY2FuIG1lcmdlIGl0LgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
