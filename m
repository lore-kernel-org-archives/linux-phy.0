Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E89FC88E75
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 08:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nw4auGfsKfmWXeioWGEaOe8gsEHdA4pwEnUhCjEbafk=; b=Ikd739xy1Zm24w
	8O7AW79G7admyDGXl8z8a+4Rf0WeQ3kqRPrN9fQ96X9fBDz8cQzvy2imZUqOJzDRV13qMe68Mvti1
	w7+onrqy5aG4DkFop/xM9V1R6jWUjZZmGrsklyRgxzGmICYW8C6qBimyYyYHHeIr2dNVjp8qRkqUz
	Z3pBjHpD39BYmmhoIySOjbPyDzq/8FsRyxDVwPBxTEKT7w5jZjyPUHFf+5fTr2UcVAe1o6fD0qkn6
	OXGYoaV0E4rY6G0R/902L5Hx7VvMFThaFFk2ibYlrRZqtigzdN3a3olGEwaUyuvvayRSyzkhxpckb
	YpT8wv/2HwkmicTbRSHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7U1q-0000000Dp65-0gbr;
	Fri, 18 Sep 2026 08:33:06 +0000
Received: from mail-ed2-x0f.google.com ([2a00:1450:4864:33::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7U1n-0000000Dp4y-1XjZ
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 08:33:05 +0000
Received: by mail-ed2-x0f.google.com with SMTP id 4fb4d7f45d1cf-6a6056ac81fso731638a12.2
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 01:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789720381; x=1790325181; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=pKTzsHsh+KOl7XVkDAfUJy4MbfFG1awKeay+vTS1O6M=;
        b=cTlugQFuL/TTkmzBQrVTCfh3hFkBqgYO2DRu2zslEA8UmDlmqp6WqOk+CeZd3fU+pf
         UXbrC/UutJ17lRg+UDPL61zidJQzbzN6PNQ1X4yGmycfa8B6vznRHi1JHdF7vswPxbBq
         ZAcJ1a0rwLutH3MxQTx+qd5w2YU7GBrSKURVElkKt3YVCK7AyZwq0hHofeeu/1TMvGPj
         HV3ssoIACeFQC0l8novKnWWcFBELG+RzhDfxAaNIhnHQQBzDkETRyOcJ3GQ8EMCthPgx
         Ggptjpy5SZDih0vHcMc82LvXhJ9GZuiC1cBAtQltuAS2646s+J8jTZwYjhmHCq7ElrZ7
         6geA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789720381; x=1790325181;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pKTzsHsh+KOl7XVkDAfUJy4MbfFG1awKeay+vTS1O6M=;
        b=27ZIb5wlb2YkT2Rbq862W+Kx2+Htu8sQbgG272MAyudG2qoxHViLbNEt09oGxn39IN
         9sHuir7GPGcC1n8KVrHs5CSkv20PqLIEcjaM1r9NyybS5h8aXWQwQFP1TxAXRMHas4F3
         gUEN/uvhq583tsXuP7tZr2JLLin2hgncd3na/kpSiflgj4yJhI84uSypLHy3Qx6trEc7
         znP9KD5A57Are6KQWWHG/exnMuVNxmAebWghdA+ggTsx7n3Py39Y3y8xL56xOHMHT4Gx
         GJKBn8duvjWopSDeUii/2epddvi7rY34tEhaDkKCRghu1WUqkk0GIzaEVhLJC+Zyfpvs
         j8gw==
X-Forwarded-Encrypted: i=1; AKwUvBy0YIZ8d1FIbOWe5TbBtH0QCQVK9e20z2r6zX0nmaV9QeF3e6oXJqH78HhH2hqsELku+tzPMvgG3mk=@lists.infradead.org
X-Gm-Message-State: AFuF++lFc+hH73rFbDgnUiCeYDcVx0VIgkyKPvZ/yIexqhwmrfFqyNUa
	uAEvQMl5fbVbxQzQ+RJ08iAEu3pSTr8fTkc/Q579fSOP7jTYJcUKqLx63OrlpAF589s=
X-Gm-Gg: AYBFou0eSGijzby60Dm2uPJ54LPqfUYWNHUBQFHev/GI7b+l+eF4DHdQy6Xi7yyk0zq
	bjIYr4bbE5UIk5y0vq5JZ0Lj4CYpdQCpUQCFbWZU0lBpOPJbccw9Ge5pEs/mFsem5Ybch6lpuJS
	J/i8VDUwU2E2Zi8kraHY2CnF3eIYY73WzIAMqm1jYEvD3ZgYB1v1Xxrg1m1srrwW/FRNtAxE9Vs
	YNaVtjC/A4Jk3WP6pPacA4kZnqeYMOsgHOKLZkkhWmHq1O/yt6/1bezdUuPvpZXlCGW9eUyHf3g
	4leC0r7CWSruOTByQkPoLR4z7bxWbJU09nAz+x0MkIPRkXIMbJLiL/s/Qeke06PyKnPvSa6FFLU
	ox4T8v21wvV+s6iSKh86TCagpkC4xzYsvgllMzaVvceR8naLdSc9g0bEcyTZWBzPyFIpPG3PDEK
	bblos4HYDONBMZTeszGj7+pI4betCSGsX/CUiRgEtISvNop1kaeporM67nNMhgMfYpZaz32u3Rd
	1c=
X-Received: by 2002:a05:6402:4026:b0:6a8:e223:fee5 with SMTP id 4fb4d7f45d1cf-6aa531ef01fmr709732a12.44.1789720381295;
        Fri, 18 Sep 2026 01:33:01 -0700 (PDT)
Received: from draszik.lan ([109.255.181.4])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa59605618sm513138a12.11.2026.09.18.01.33.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 01:33:00 -0700 (PDT)
Message-ID: <950335110f9d9c22a026fa5174e492c4194299a5.camel@linaro.org>
Subject: Re: [PATCH] phy: exynos5-usbdrd: Use dynamic phy_cfg size to
 prevent OOB access
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Selvarasu Ganesan <selvarasu.g@samsung.com>, vkoul@kernel.org, 
	neil.armstrong@linaro.org, krzk@kernel.org, peter.griffin@linaro.org, 
	alim.akhtar@samsung.com, pritam.sutar@samsung.com, kernel@lvkasz.us, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: jh0801.jung@samsung.com, dh10.jung@samsung.com, akash.m5@samsung.com, 
	muhammed.ali@samsung.com, thiagu.r@samsung.com
Date: Fri, 18 Sep 2026 09:34:24 +0100
In-Reply-To: <20260831070309.158069-1-selvarasu.g@samsung.com>
References: <CGME20260831070349epcas5p4c62a4e46592dffe95723ddd51a6068e0@epcas5p4.samsung.com>
	 <20260831070309.158069-1-selvarasu.g@samsung.com>
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_013303_454521_1A360789 
X-CRM114-Status: GOOD (  11.94  )
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

T24gTW9uLCAyMDI2LTA4LTMxIGF0IDEyOjMzICswNTMwLCBTZWx2YXJhc3UgR2FuZXNhbiB3cm90
ZToKPiBUaGUgcHJvYmUgbG9vcCBjdXJyZW50bHkgaXRlcmF0ZXMgdXNpbmcgRVhZTk9TNV9EUkRQ
SFlTX05VTSAoMiksCj4gY3JlYXRpbmcgYm90aCBVVE1JIGFuZCBQSVBFMyBQSFkgaW5zdGFuY2Vz
IHJlZ2FyZGxlc3Mgb2YgdGhlIFNvQwo+IGNhcGFiaWxpdHkuIFNldmVyYWwgU29DcyAoRXh5bm9z
MjIwMCwgRXh5bm9zNzg3MCwgRXh5bm9zODUwLCBFeHlub3M5OTAsCj4gYW5kIEV4eW5vc0F1dG9W
OTIwKSBwcm92aWRlIHBoeV9jZmcgYXJyYXlzIGNvbnRhaW5pbmcgb25seSBhIHNpbmdsZQo+IGVs
ZW1lbnQuCj4gCj4gT24gdGhlc2UgU29Dcywgd2hlbiB0aGUgbG9vcCByZWFjaGVzIGluZGV4IDEs
IHRoZSBkcml2ZXIgcmVhZHMgcGFzdCB0aGUKPiBlbmQgb2YgdGhlIHJvZGF0YSBhcnJheSwgcG9w
dWxhdGluZyB0aGUgc2Vjb25kIFBIWSBpbnN0YW5jZSB3aXRoIGdhcmJhZ2UKPiBkYXRhLiBTaW5j
ZSB0aGUgY29uZmlndXJhdGlvbiBzdHJ1Y3R1cmUgY29udGFpbnMgY3JpdGljYWwgZnVuY3Rpb24K
PiBwb2ludGVycyAocGh5X2lzb2wsIHBoeV9pbml0LCBzZXRfcmVmY2xrKSwgYW55IHN1YnNlcXVl
bnQgYWNjZXNzIHRvIHRoaXMKPiBQSFkgaW5zdGFuY2UgdmlhIGV4eW5vczVfdXNiZHJkX3BoeV94
bGF0ZSBjb3VsZCByZXN1bHQgaW4gYSBrZXJuZWwgb29wcy4KPiAKPiBGaXggdGhpcyBieSBhZGRp
bmcgJ25fcGh5X2NmZycgdG8gc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeV9kcnZkYXRhIHRvCj4g
c3RvcmUgdGhlIGFjdHVhbCBzaXplIG9mIHRoZSBwaHlfY2ZnIGFycmF5IGZvciBlYWNoIFNvQy4g
VXBkYXRlIHRoZQo+IHByb2JlIGxvb3AgYW5kIHRoZSB4bGF0ZSBmdW5jdGlvbiB0byBib3VuZCB0
aGVpciBhY2Nlc3MgYWdhaW5zdCB0aGlzCj4gdmFsdWUgaW5zdGVhZCBvZiB0aGUgaGFyZGNvZGVk
IEVYWU5PUzVfRFJEUEhZU19OVU0uCj4gCj4gQXNzaXN0ZWQtYnk6IENsYXVkZTpjbGF1ZGUtc29u
bmV0LTUKClNob3VsZG4ndCB0aGlzIGJlICdBc3Npc3RlZC1ieTogTExNJz8KCj4gU2lnbmVkLW9m
Zi1ieTogU2VsdmFyYXN1IEdhbmVzYW4gPHNlbHZhcmFzdS5nQHNhbXN1bmcuY29tPgo+IC0tLQo+
IMKgZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyB8IDE3ICsrKysrKysr
KysrKysrKy0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKCk90aGVyIHRoYW4gdGhhdDoKClJldmlld2VkLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5k
cmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
