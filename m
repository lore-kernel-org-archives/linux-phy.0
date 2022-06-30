Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8305ECCA473
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jun 2022 23:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6y+ma8LWphVQjPOnSdOnZmGN7AQ/J0hAYkHTkBTR9sY=; b=uEu9AKPxuiWMh/
	mG6Mqkxd95xZz+JAIzC4zduAfP5Ydvg2Vi+k9bbp+CCoqFEaPMAqWxLFMUfPed0zxacHbRgqq0JR6
	NhvpzjkIT7lRhcLhD3qhAuDw6ejBBYbcgnMn1yHbwzzKDPfYF5xDIISQjkQjyLL/MRYDTr7M3yLPW
	+GTiRnDOl4mojrvrDPmJNdrOwkzqgXTii9jij0x4hRkouNPIkoXD5aroJ6qtV9ccnkOjULqnJ6rKr
	F0kLc4sbLAcvBtTalPDz40rr7NEkNhYONZDgx471TaOh+L7imweussn5Ccy7P1vd1MZHsD0fDOqez
	rvjTbLz2j+kJMZ+dP++A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73QZ-0023GS-TX; Thu, 30 Jun 2022 23:18:27 +0000
Received: from mail-io1-f43.google.com ([209.85.166.43])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73QL-0023BF-21; Thu, 30 Jun 2022 23:18:14 +0000
Received: by mail-io1-f43.google.com with SMTP id p128so722076iof.1;
        Thu, 30 Jun 2022 16:18:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=9gNUQLHFQPHo0E6Bk43UyIkswDGTVgKImpHtKfx0xvg=;
        b=lr8d9nEEOoGjMO1lrdFZMDFfY6/Z8l0aqSQSB6eMSl8+Z/BTQs34AfTU5XIb36M5e9
         l/glyV9pYl6IOownmh29ApqNGujdzHVBNyLC+FDnIYTDdC+di5g3KAJN29F4IoyIEuOg
         +Sg3NzhIoMTs01xJspHGhpmsF5zhEwb17xYiKw5EPWk8lqgrBlyhH2vS2Pi+YbQQ2v1Q
         QCz0/ofFRGWKV49xx9dA1xkvDjUf2OS5tBRscDRkkdiSaQktsL/tacEk3dhhaY2AKKoO
         F9b12oQioOvFURlr6ZABhTQUg5S49+kQRGlMKr5YITz+7pQvxpMBwmseIHAK5j/ISioj
         8aUg==
X-Gm-Message-State: AJIora+Nhwu3YuyYj+u1Ajh3+aWasdMBwQ/P3HRsM+GAXXnrEKgnUmaA
	dZsYasVjrbVzkH398qnDaA==
X-Google-Smtp-Source: AGRyM1su16XuZ3P1C/gSpnPqv5Wj9auvAHesaclQYdz2S96RxT7/OA1S+mZcS20iiJlEwB9ke8UXdg==
X-Received: by 2002:a05:6638:410e:b0:33c:d3b8:a4bd with SMTP id ay14-20020a056638410e00b0033cd3b8a4bdmr6441419jab.264.1656631091659;
        Thu, 30 Jun 2022 16:18:11 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id s8-20020a92cb08000000b002d900368a19sm8478492ilo.22.2022.06.30.16.18.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 16:18:11 -0700 (PDT)
Received: (nullmailer pid 3516208 invoked by uid 1000);
	Thu, 30 Jun 2022 23:18:09 -0000
Date: Thu, 30 Jun 2022 17:18:09 -0600
From: Rob Herring <robh@kernel.org>
To: =?utf-8?B?77+977+977+9zrHvv70vVGl6ZW4gUGxhdGZvcm0gTGFiKFNSKS/vv73vvLo=?= =?utf-8?B?77+977+977+977+9?= <inki.dae@samsung.com>
Cc: 'Krzysztof Kozlowski' <krzysztof.kozlowski@linaro.org>, 'Seung-Woo Kim' <sw0312.kim@samsung.com>, 'Kyungmin Park' <kyungmin.park@samsung.com>, 'David Airlie' <airlied@linux.ie>, 'Daniel Vetter' <daniel@ffwll.ch>, 'Krzysztof Kozlowski' <krzysztof.kozlowski+dt@linaro.org>, 'Alim Akhtar' <alim.akhtar@samsung.com>, 'Kishon Vijay Abraham I' <kishon@ti.com>, 'Vinod Koul' <vkoul@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/2] drm/exynos: MAINTAINERS: move Joonyoung Shim to
 credits
Message-ID: <20220630231809.GA3514176-robh@kernel.org>
References: <CGME20220626163558epcas1p3f525431b9fb237bd420ad1453daaf1ac@epcas1p3.samsung.com>
 <20220626163320.6393-1-krzysztof.kozlowski@linaro.org>
 <0de401d88c38$23aeb8e0$6b0c2aa0$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0de401d88c38$23aeb8e0$6b0c2aa0$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_161813_137742_F5256788 
X-CRM114-Status: GOOD (  10.01  )
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

T24gVGh1LCBKdW4gMzAsIDIwMjIgYXQgMDE6MTY6MTRQTSArMDkwMCwg77+977+977+9zrHvv70v
VGl6ZW4gUGxhdGZvcm0gTGFiKFNSKS/vv73vvLrvv73vv73vv73vv70gd3JvdGU6Cj4gCj4gCj4g
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogS3J6eXN6dG9mIEtvemxvd3Nr
aSBbbWFpbHRvOmtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZ10KPiA+IFNlbnQ6IE1vbmRh
eSwgSnVuZSAyNywgMjAyMiAxOjMzIEFNCj4gPiBUbzogSW5raSBEYWUgPGlua2kuZGFlQHNhbXN1
bmcuY29tPjsgU2V1bmctV29vIEtpbQo+ID4gPHN3MDMxMi5raW1Ac2Ftc3VuZy5jb20+OyBLeXVu
Z21pbiBQYXJrIDxreXVuZ21pbi5wYXJrQHNhbXN1bmcuY29tPjsgRGF2aWQKPiA+IEFpcmxpZSA8
YWlybGllZEBsaW51eC5pZT47IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD47IFJvYiBI
ZXJyaW5nCj4gPiA8cm9iaCtkdEBrZXJuZWwub3JnPjsgS3J6eXN6dG9mIEtvemxvd3NraQo+ID4g
PGtyenlzenRvZi5rb3psb3dza2krZHRAbGluYXJvLm9yZz47IEFsaW0gQWtodGFyCj4gPGFsaW0u
YWtodGFyQHNhbXN1bmcuY29tPjsKPiA+IEtpc2hvbiBWaWpheSBBYnJhaGFtIEkgPGtpc2hvbkB0
aS5jb20+OyBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPjsKPiA+IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmc7IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7Cj4gPiBkZXZp
Y2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnOyBsaW51eC0KPiA+IHNhbXN1bmctc29jQHZnZXIua2VybmVsLm9yZzsgbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKPiA+IENjOiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yu
a296bG93c2tpQGxpbmFyby5vcmc+Cj4gPiBTdWJqZWN0OiBbUEFUQ0ggMS8yXSBkcm0vZXh5bm9z
OiBNQUlOVEFJTkVSUzogbW92ZSBKb29ueW91bmcgU2hpbSB0bwo+ID4gY3JlZGl0cwo+ID4gCj4g
PiBFbWFpbHMgdG8gSm9vbnlvdW5nIFNoaW0gYm91bmNlICgiNTUwIDUuMS4xIFJlY2lwaWVudCBh
ZGRyZXNzIHJlamVjdGVkOgo+ID4gVXNlciB1bmtub3duIiksIHNvIG1vdmUgaGltIHRvIGNyZWRp
dHMgZmlsZS4KPiA+IAo+IAo+IEFwcGxpZWQuCgpCb3RoIHBhdGNoZXMgb3IganVzdCB0aGlzIG9u
ZT8KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
