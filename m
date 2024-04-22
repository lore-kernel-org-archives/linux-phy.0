Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E567AC4345F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 12:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lrpBcLJQCTI7orfVnkzUG4yKAJTojlydfYAJytmSQbI=; b=q6SeiSr00FD/rc
	svfaEIKkVH3n7PR36XMHHwd4pHc9I679eembjMNpEh1D6aUY710adg634O12t0yhHquOBcuAsr1Dw
	CsWHJSr5Put/MgOsSO+jGSs5XPe4j7Ahk0iwK09b1W19bQHHMOcN7mwLCzUloO4PGBHXHlPocnxyb
	nG9C9ZZ26MVmnEQrvKpnuO02gOfCe85xJwuOkJddRAtIMY2bZRXANf7kWHC7uFLbM1zm/R8pL+pjW
	1+AQuF6xwXjew6vn5xA8tkwXtf/NnyYjzoA7O2wYVfEw7evu1GcFJnhZVx1kcCoUlmU+6GUyaDUz5
	mty2G/bOxl60w1N/3F3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryt10-0000000DZHZ-029k;
	Mon, 22 Apr 2024 12:43:22 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rysyc-0000000DXVB-1u5M
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 12:40:57 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3c70d8bb618so2430228b6e.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Apr 2024 05:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713789648; x=1714394448; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CG4hPexSWedosu3J2N32I42487kxLi51E4WCYQ7z86Q=;
        b=MOOzY1WlimCCwsEG88FzluGoOcMVykAjAfjKFaTkiZl9uFGWIYXKRODlFUCxN3G3gF
         CV1Mg1qMQyeCpOXEFuuIYOgQb8LHNDuSLnHFOf6TpHZdKbmsk6uvc7OJaI8NjPxed/Ef
         s70WnykLFwkIH8FMewgUca66xRa0D7sGZ3HZ4Bmv+pNR5i/h+DpVM4k1eekr0NdL+cCD
         7JI3e1wtbBZXoQ/fiwg4VrNqYS8uAgJt2WL99Lj+bZ8WnWRD/SvugfTeis4nJwsrp4oj
         GX4ldg2Sr5n4E3jQPmbe775zaUkKZtEfn2ZMbJ/4A9qy1iUL3VlxL3YEUPuZzLBpj+k2
         lrwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713789648; x=1714394448;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CG4hPexSWedosu3J2N32I42487kxLi51E4WCYQ7z86Q=;
        b=U26+hINzr9iwMQAnQVdUrqCiJ7UfkArQQ3OcsmgR3LKHE9Qmb7LdSDBBvhHLWgR6KA
         BEod0VRkRgeCZ9980RBSx+V6I3rNoSyfs9sd13DHlDjVJv2K/kP9gfkLv0L88N6PwX9+
         bbjUkCnY8a7ACR++7PLNpfx//hFXEPy/op+r92nbgK4Q7VlUkPRouHCuDVxvA38blDvT
         /9jmTehSrxMv1DJGgeru2BA+y7Vu6XAAxMPHJvyzCBKbuzqTdnEl3cEhva79fWJFwDuk
         xP487Bt0gcGmreSF/6xgbNs9M4zhStCvGZ7GGtjhaKb4KwfHdV3kFtNWuV5pRnCFQIAY
         j8yg==
X-Forwarded-Encrypted: i=1; AJvYcCXmmIfvDcrUnndyXt3RHrPGTmPfiIsy+B5dbIWic87c0EbgtTd6yK7WGbA0f/HbopGwUiLq5SEc5r6yx8FI11OSe5N3uBv3sOumO7ob7g==
X-Gm-Message-State: AOJu0YwFSEHa8y0fhELPbCehGm1tZL5lRvB9RMgliAMuWwzhKpcQTBtI
	O8KhXJBKebLKepHpzVmNhLTnLvB7XqBEYRRdsCzSiaV3wfIBGYWWprkKiYX/JgIl1Yiexj5IaJX
	T7ANTka1A6hq2oSr9Cq14A/++t2vh3BeY/056Rw==
X-Google-Smtp-Source: AGHT+IEMfGJHMTEml1VRNaAfoa4qnzNHZkeLKuW9Vl9je272KzGmuVy0hJtkx+vfLt1IPHkVf/BJiDOJlfCqo09Adjo=
X-Received: by 2002:a05:6870:b601:b0:233:5557:c6a2 with SMTP id
 cm1-20020a056870b60100b002335557c6a2mr14543327oab.34.1713789647808; Mon, 22
 Apr 2024 05:40:47 -0700 (PDT)
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-10-peter.griffin@linaro.org> <95bcdc942cba564f78a6f2fe4cde892575838d5c.camel@linaro.org>
In-Reply-To: <95bcdc942cba564f78a6f2fe4cde892575838d5c.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 22 Apr 2024 13:40:36 +0100
Message-ID: <CADrjBPrnWzT6raAtuswC0AE6EEwtQ7sTUkm8SjpBh=3nibcmSQ@mail.gmail.com>
Subject: Re: [PATCH 09/17] phy: samsung-ufs: use exynos_get_pmu_regmap_by_phandle()
 to obtain PMU regmap
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_054054_645836_1DE96ED8 
X-CRM114-Status: GOOD (  16.18  )
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

SGkgQW5kcsOpLAoKVGhhbmtzIGZvciB0aGUgcmV2aWV3IGZlZWRiYWNrLgoKT24gRnJpLCA1IEFw
ciAyMDI0IGF0IDA4OjA0LCBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3Jn
PiB3cm90ZToKPgo+IE9uIFRodSwgMjAyNC0wNC0wNCBhdCAxMzoyNSArMDEwMCwgUGV0ZXIgR3Jp
ZmZpbiB3cm90ZToKPiA+IFRoaXMgYWxsb3dzIHVzIHRvIG9idGFpbiBhIFBNVSByZWdtYXAgdGhh
dCBpcyBjcmVhdGVkIGJ5IHRoZSBleHlub3MtcG11Cj4gPiBkcml2ZXIuIFBsYXRmb3JtcyBzdWNo
IGFzIGdzMTAxIHJlcXVpcmUgZXh5bm9zLXBtdSBjcmVhdGVkIHJlZ21hcCB0bwo+ID4gaXNzdWUg
U01DIGNhbGxzIGZvciBQTVUgcmVnaXN0ZXIgYWNjZXNzZXMuIEV4aXN0aW5nIHBsYXRmb3JtcyBz
dGlsbCBnZXQKPiA+IGEgTU1JTyByZWdtYXAgYXMgYmVmb3JlLgo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KPiA+IC0tLQo+ID4g
IGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LXNhbXN1bmctdWZzLmMgfCA1ICsrKy0tCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktc2Ftc3VuZy11ZnMuYyBiL2RyaXZlcnMv
cGh5L3NhbXN1bmcvcGh5LXNhbXN1bmctdWZzLmMKPiA+IGluZGV4IDE4M2M4OGUzZDFlYy4uYzU2
N2VmYWZjMzBmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktc2Ftc3Vu
Zy11ZnMuYwo+ID4gKysrIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktc2Ftc3VuZy11ZnMuYwo+
ID4gQEAgLTE4LDYgKzE4LDcgQEAKPiA+ICAjaW5jbHVkZSA8bGludXgvcGh5L3BoeS5oPgo+ID4g
ICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgv
cmVnbWFwLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L3NvYy9zYW1zdW5nL2V4eW5vcy1wbXUuaD4K
Pgo+IFlvdSBjYW4gbm93IGRyb3AgdGhlIGluY2x1ZGUgb2YgbGludXgvbWZkL3N5c2Nvbi5oCgpJ
J2xsIHNlbmQgYSBmb2xsb3d1cCBwYXRjaCBmb3IgdGhpcy4KClRoYW5rcywKClBldGVyCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
