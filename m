Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EC75C27C53
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 09:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQG/mBJrSx9rPIm8oGNokyAzuJ5aVJU9Dw6WtjDE5G0=; b=JNCrqp9iY47p7O
	A94HUX6vgokTYohaClkIt7alU06B98cdVhHHVDjMd1sTCJTs76jh2mfrCJlz7tTNcf3f2rzx2VpqG
	1acgWov30t+j6itB6zDzABdvDvmd9oI0+ZDY5MWpSwQOh9cMXFy3GmE1fXD+FGcCQA869fRJIBnGu
	v70m6gonHRZUBf8W0jJd+RlKqifulYEm5hVNXBtpRfJRwWvPzKIM9gXr0zfliSBytbFdNj7dCTq/S
	VpIXcKFBZ8XQXlTSpcSOPL7oTDagfVbEwqo2DZVHWhlL6rYj3IidSs5rrdIl98JdfwnYpGEvBMFrA
	9hVsIKq2LDcVEs7PmSXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHKPL-0000000C1Wp-1ce0;
	Wed, 12 Jun 2024 09:36:43 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHKPI-0000000C1VC-02nO
	for linux-phy@lists.infradead.org;
	Wed, 12 Jun 2024 09:36:41 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-5b970e90ab8so1072655eaf.3
        for <linux-phy@lists.infradead.org>; Wed, 12 Jun 2024 02:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718184997; x=1718789797; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zls2PjeN96MBj/tRd+drvu+9AaG+9o/48mGsjcvAGWw=;
        b=JAMsy6ALTuSTWiWZ2vQBaVJImtYkaNJRuNCuoxmvQHgXw5CZTfASEI68Rw/TeojA3R
         NEVRsdba7rkGwbNmDhygL/3JpHjBwdIY7hj2MXEnGU2Xs/k8MOY4LwKaOwI2pskH9k99
         nav07/83g35D0eaKNPbcchOw8gKCeLsBLqri7ZXeP0zDa7mKoZFNViFRZcoD30TR3yYZ
         O3ddj4N0yg4smcAGn00brYAx4Fcrpimq9DmTGgqPmBBiNbo0X32mvGZFU+ZsIC3tErm5
         0zAMRx8I1avbi/r6IMnbGlaGKafboGWOrtlFJTdyUybM1dzITSIlV/AVGRq3YnWE10cb
         oE5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718184997; x=1718789797;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zls2PjeN96MBj/tRd+drvu+9AaG+9o/48mGsjcvAGWw=;
        b=V2Sxrt5Idkb3zCTZSm369ODqnEv0la8/HSbwpw26oLJIPYziR8XijhE7rDQNvAs3sj
         EyMpuKl6zHQG8lT+XUyI1eTJmuKkXrPSlOxdLQsduIP1x1zFABFRmmBpLRZgVZJSrFcW
         JZUDe5Fycpp5Qy+7R3OEz1OmY1quBbkEoYizA2ayZ8UmY5CO3XAWS1YIKqhtuB/cjzMV
         7FpKfS3NUb696rjaKqVaRvbw1oxlsdHfW5XVIvvYeBOnPh9b1MOFSsgiA0AOO69OJQ36
         Q9FL37aF7K1P89HGzoVITn/0klwouUJBNfPOFNAk8mvicyy1ziYtQt53AlRZpuCbqGWM
         xPsA==
X-Forwarded-Encrypted: i=1; AJvYcCUHxjb9t8b4FfpHfOKFgxFdBOQBAZXU1OQzhwqYhA+JYTPwU/AjUtvq47Yj0DGM+9nWggO9wXYN/r7x31aC38L9+ZwDN89qANfdpr3xOA==
X-Gm-Message-State: AOJu0Yw50YM7Ol1hcYacyt4ib1g+SjZSvwtHPEqg69N79SuNrqy0VdFF
	qndrz80wFV7s+8US8H68QjZgfyMN3oYgy69KCeV2k9JgJh4aDyejLOHtXEywMUwVpur4ipxwfy9
	A4wUvCkuSTTvRh7jqVzdvCTZhmHTpbXTWe6BbMQ==
X-Google-Smtp-Source: AGHT+IE41xMremI9KFQUhCySgvLj9p73+kYjRPEZjElNgdLOUBTOPohyPwVNwxRkyxdmcQDgsd5j+uZYm1dpTqpuuoA=
X-Received: by 2002:a05:6820:612:b0:5ba:bb77:bf51 with SMTP id
 006d021491bc7-5bb3b9410a1mr1738733eaf.2.1718184996962; Wed, 12 Jun 2024
 02:36:36 -0700 (PDT)
MIME-Version: 1.0
References: <20240507-samsung-usb-phy-fixes-v1-0-4ccba5afa7cc@linaro.org> <20240507-samsung-usb-phy-fixes-v1-4-4ccba5afa7cc@linaro.org>
In-Reply-To: <20240507-samsung-usb-phy-fixes-v1-4-4ccba5afa7cc@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 12 Jun 2024 10:36:25 +0100
Message-ID: <CADrjBPqM-6vu-9+ZZ-=BKqnAn+vngELBgrLtU1ua_DMrDaWjXQ@mail.gmail.com>
Subject: Re: [PATCH 4/5] phy: exynos5-usbdrd: fix definition of EXYNOS5_FSEL_26MHZ
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_023640_139887_9A6ED561 
X-CRM114-Status: GOOD (  10.71  )
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

SGkgQW5kcsOpLAoKT24gVHVlLCA3IE1heSAyMDI0IGF0IDE1OjE0LCBBbmRyw6kgRHJhc3ppayA8
YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IFVzaW5nIDB4ODIgc2VlbXMgb2Rk
LCB3aGVyZSBldmVyeXRoaW5nIGVsc2UgaXMganVzdCBhIHNlcXVlbmNlLgo+Cj4gT24gRTg1MCwg
dGhpcyBtYWNybyBpc24ndCB1c2VkIChhcyBhIHJlZ2lzdGVyIHZhbHVlKSwgb25seSB0byBhc3Np
Z24KPiBpdHMgdmFsdWUgdG8gdGhlICdleHRyZWZjbGsnIHZhcmlhYmxlLCB3aGljaCBpcyBvdGhl
cndpc2UgdW51c2VkIG9uCj4gdGhhdCBwbGF0Zm9ybS4gT2xkZXIgcGxhdGZvcm1zIGRvbid0IGFw
cGVhciB0byBzdXBwb3J0IDI2TUh6IGluIHRoZQo+IGZpcnN0IHBsYWNlIChzaW5jZSB0aGlzIG1h
Y3JvIHdhcyBhZGRlZCBmb3IgRTg1MCkuCj4KPiBGdXJ0aGVybW9yZSwgdGhlIGRvd25zdHJlYW0g
ZHJpdmVyIHVzZXMgMHg4MiB0byBkZW5vdGUKPiBVU0JQSFlfUkVGQ0xLX0RJRkZfMjZNSFogKHdo
YXRldmVyIHRoYXQgbWVhbnMgZXhhY3RseSksIGJ1dCBmb3IgYWxsIHRoZQo+IG90aGVyIHZhbHVl
cyB3ZSBtYXRjaCBkb3duc3RyZWFtJ3Mgbm9uLURJRkYgbWFjcm9zLgo+Cj4gVXBkYXRlIHRvIGF2
b2lkIGNvbmZ1c2lvbi4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UgaW50ZW5kZWQuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgo+IC0tLQoK
UmV2aWV3ZWQtYnk6ICBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxpbmFyby5vcmc+Cgpy
ZWdhcmRzLAoKUGV0ZXIKClsuLl0KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
