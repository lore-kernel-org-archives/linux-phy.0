Return-Path: <SRS0=Nzjq=OL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D9C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 21 Sep 2021 20:19:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 39D6561131
	for <linux-phy@archiver.kernel.org>; Tue, 21 Sep 2021 20:19:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 39D6561131
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=co1Dnff3kb2GGmYCnH4EFnkFQJKL4h8rVIGU4M41BFQ=; b=nuVuh4gg5Ix5hN
	gs/aWMhcUPGDZ3reIrGK0IkyAbeqF+wlnPuZwi9mobkaGEfMwlNUd13Za9wcXSBK+gH5wRJ4xU7sV
	Mnf6X+dwx2YWTcmgAIgy+KZQSi7SJX8t5+vHB3VDMKNT8WdyzHx0iseHRMp7x7GkmKaO2pPj6z8fT
	2BjooeHQgV++XVWjKF2FHrJ5vzkSZp/dnapBmH7eOt0Qjr9ixDXIMc37oPNlXOzBrf8kI4Gsd/GeC
	hR74NScXy19cmQCBNl+LtTDln9SC0wL5lVbcdMsYgRbXHqvuw6Sbx4OxwQz1ytMjluv8Ql1CFsfLH
	9+Ghbar3DYVmmBsylG0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSmEa-005h9y-NG; Tue, 21 Sep 2021 20:19:20 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSmEY-005h9a-Uf
 for linux-phy@lists.infradead.org; Tue, 21 Sep 2021 20:19:20 +0000
Received: by mail-oi1-f173.google.com with SMTP id 24so1060206oix.0
 for <linux-phy@lists.infradead.org>; Tue, 21 Sep 2021 13:19:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=A2M18lMSXY3ZYn0Bmywro4iufNTnNUMjVOQ+H1KM0+U=;
 b=huD/q/LPDCufJ1lMwLQhTMO7OgETgb/fGP9jUHuYy+ST5a7NNNyk9mdFLaJeOezUNm
 JfJ1awT7pL83Pa+2KGfpdVEvoFwhuBr9E2zdkeOhnPPBAkXq45iVyA5xAYRwSqQkI9EK
 BAitqR5lEIGJmn3qdJ4SG5GR5ghGTtFpqA/ZTYj3moxdXGK0/VqTKcyJW2+mGxGmTaTV
 UEk3D8bmd067NHYomuHZkwYJrbZpWcqVFvoG1778AFHisumKcnI9E74oJcbVfgdAhULA
 iBH2Ku+3R62CzpL/JmeH8CEqrWIIlnLx7poc0nJb3qnGae3h4XdDoctU3Y2yFcOulXDj
 b0Bg==
X-Gm-Message-State: AOAM530gaHts1i66KyKgvD3cHhdx2fOTRqrgXTgbmyp1rILAMn/f0Eox
 v+Yy+Z0crmeYXN6Pu+0waA==
X-Google-Smtp-Source: ABdhPJwgLGDO0Z/GSWGIAWTR/Dv7Bs44+jxu5THW6PRvDUEXfqmdqNv9rX9jCAG8jGRfu+XD06meuA==
X-Received: by 2002:a05:6808:1693:: with SMTP id
 bb19mr5279696oib.21.1632255556511; 
 Tue, 21 Sep 2021 13:19:16 -0700 (PDT)
Received: from robh.at.kernel.org (rrcs-192-154-179-36.sw.biz.rr.com.
 [192.154.179.36])
 by smtp.gmail.com with ESMTPSA id n4sm3165otr.59.2021.09.21.13.19.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 13:19:15 -0700 (PDT)
Received: (nullmailer pid 3261919 invoked by uid 1000);
 Tue, 21 Sep 2021 20:19:13 -0000
Date: Tue, 21 Sep 2021 15:19:13 -0500
From: Rob Herring <robh@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 Lee Jones <lee.jones@linaro.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH 1/4] dt-bindings: mfd: brcm,cru: add clkset syscon
Message-ID: <YUo+QSTvgYHKDr6D@robh.at.kernel.org>
References: <20210913080024.6951-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210913080024.6951-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_131919_031626_A19F9853 
X-CRM114-Status: GOOD (  11.19  )
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

T24gTW9uLCAxMyBTZXAgMjAyMSAxMDowMDoyMSArMDIwMCwgUmFmYcWCIE1pxYJlY2tpIHdyb3Rl
Ogo+IEZyb206IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBDUlUgaGFz
IGEgc2hhcmVkIHJlZ2lzdGVyIHRoYXQgaXMgdXNlZCBlLmcuIHRvIGNvbnRyb2wgVVNCIDIuMCBQ
SFkgYmxvY2sKPiBhY2Nlc3MuIEl0J3MgYSBzaW5nbGUgMzIgYiByZWdpc3Rlci4gRG9jdW1lbnQg
aXQgYXMgc3lzY29uIHNvIGl0IGNhbiBiZQo+IHVzZWQgd2l0aCBhIHJlZ21hcC4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4gLS0tCj4gIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvYnJjbSxjcnUueWFtbCB8IDggKysr
KysrKysKPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zeXNjb24ueWFt
bCAgIHwgMSArCj4gIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4gCgpSZXZpZXdl
ZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
