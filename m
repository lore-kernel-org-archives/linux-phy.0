Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,FSL_HELO_FAKE,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDAA3C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 07:58:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B84760FA0
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 07:58:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8B84760FA0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R02umAEwzUQi/373BMJZY14APeGAUurhLseXzjuaHsQ=; b=mFt9loMtcrFotV
	FYquqLP80yv5aUfi4HiYnT0MaiDCR9tpPVBSZOMpH458kCXiKjxnVInxMRr2dWGB77kNjFZ1db9BU
	P4vq6B9Aaf6uNyc7AGu9ZJzwNSgDQjAsLtsF5zg9ndVAO97jxfJRr9A9TxgbTAZN7u/jLL53kJCSQ
	wMttMJfHlg/xgYBefSe0qYcqTecFP+QyxpdmWkE/pkkO/A/WzPZFb4MWM75yN4petaUUPGSKmWgmx
	/N7W0box2ICYBODuSxuKIuh5yA9i2g6AKrl848ALY3DiagPld9qM0YBJQ8JRRaqqw3UmhjQCItAYd
	hh78HOa2YBCakfzDPwkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSx8l-007Nt8-1M; Wed, 22 Sep 2021 07:58:03 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSx8i-007Nrj-VR
 for linux-phy@lists.infradead.org; Wed, 22 Sep 2021 07:58:02 +0000
Received: by mail-wr1-x436.google.com with SMTP id w17so4033029wrv.10
 for <linux-phy@lists.infradead.org>; Wed, 22 Sep 2021 00:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=pTwG/Hf7HzNaqV1sAamZUStET5SYdFqViNRz8U2mk2E=;
 b=JfJK3l20DCNb/99A9fYyIQXSAIjb+hemWs3MZt9Lhd7rRCqhl7ldE0RvRnE4kMY+In
 Sv8b1tjrG+DnEtRUkh3pQm5JnAZtdlZjXltEbJBeqWMzUtqfKpjPVFZKE532pCg6cAB4
 QRWFaqZwx6La4vUqstVNZ1IvBnfK8NF7OIIpuSXV8gw4FiOsgcu7lpAJ9p0zCV3jQyhy
 BdU5kB2BmLv1sbkms4rl7iNwRtvc1qUiiBwLWO0a4ddmBdxO/BuwmzX7XSkUkvgM7Gf5
 qhXn0ixur6ILuctBUc8vg6qXCD95RX3mnTdBcXo/VspJZar8yuJaiAKBkPQ827Dq/uDN
 59cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=pTwG/Hf7HzNaqV1sAamZUStET5SYdFqViNRz8U2mk2E=;
 b=v4fpCGgrvf7/3abu8J1eUip/SDyxoqmqh7R7r4aVOX3qpP6RQuSK3/C8T5tYk0N79J
 OY7H46CxbdYPc6SR3G2931LVs0MsTB2JU6FHSswJknwAqfkbDiVpI8D4KjfDBxVnNMBC
 q7+F9bjjsmXX04X2ToqU4D/tc5uHAyjifFYeSiEilRsMETkG4svJUEJKeSGx0TwKRAeV
 x1LZ4JDOGGZGJphr+mddORyQVFWGaoZm82c1fdavZKf4brTRjbKZmIzNL+FgTJ0Gsea+
 NG59PhaGXKdoPThw47ykCbe3hI/0OwzGf3pTYq1cs3dEgJzibYw7ZFigjJsCGSrHP5i5
 /6Fw==
X-Gm-Message-State: AOAM532CzC8LeY8TmRHvrVnqXTOMgUPAGBad6er5MRFRrMqqU7l0Au1q
 eLEAlXUDiEw56IohvgsUolAX9g==
X-Google-Smtp-Source: ABdhPJzMhlF+CnvZ3h2+XCxqTxQb7Zb12UPZb5Ead7lHJdRW9ES/PA6ks9vw03Mu0Ij8gWaCLXDREQ==
X-Received: by 2002:a1c:7f11:: with SMTP id a17mr9009019wmd.166.1632297479781; 
 Wed, 22 Sep 2021 00:57:59 -0700 (PDT)
Received: from google.com ([95.148.6.233])
 by smtp.gmail.com with ESMTPSA id v8sm1348824wrt.12.2021.09.22.00.57.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 00:57:59 -0700 (PDT)
Date: Wed, 22 Sep 2021 08:57:57 +0100
From: Lee Jones <lee.jones@linaro.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, devicetree@vger.kernel.org,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 3/4] dt-bindings: mfd: brcm,cru: add USB 2.0 PHY
Message-ID: <YUriBVIH/n0p2H+D@google.com>
References: <20210913080024.6951-1-zajec5@gmail.com>
 <20210913080024.6951-3-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210913080024.6951-3-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_005801_059086_68C48F9A 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
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

T24gTW9uLCAxMyBTZXAgMjAyMSwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgoKPiBGcm9tOiBSYWZh
xYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4gCj4gTm9ydGhzdGFyJ3MgVVNCIDIuMCBQ
SFkgaXMgcGFydCBvZiB0aGUgQ1JVIE1GRC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnF
gmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdz
L21mZC9icmNtLGNydS55YW1sICAgICAgICAgfCAxNSArKysrKysrKysrKysrKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCkFwcGxpZWQsIHRoYW5r
cy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRlY2huaWNhbCBMZWFkIC0gRGV2
ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
cm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
