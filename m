Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3096BC3271E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jul 2024 17:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rszPx34gCZ05lU/V3P4Ch9fj4g+e08Gc0s4yyW1+E0c=; b=taFo1tQcbJfIlc
	g7z6+b4xdGnStpUGkBZY/rSVg32uoX6I2EeQHHTzbb1lrKB6tWO8+gpLpBazORbmY9vOkUaC58/U0
	M+us312ZfUvMOf7So9hEp+S84eDbqjlDLLUiE6OLeU3t+Er30gondP/sUCcIKZRj/rz2TUAL3mqKp
	jtzIhF1p8ZUSxud0MrwlLj1BHI5EWtPa/NuWb0uPksF1aVCzbHUoKwMnBCSlqvZbV+rI2QWG2mHVO
	8wyFEH+gEKm6bImewwvCR4eS5aqbnB4JhOvnNSVA0/GadEmteOtti/7kx4agWyJ0OKmRfmAGYpJmc
	x2uUjaavv0+B5a6jrCtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQsFJ-00000004bJk-3Tlq;
	Mon, 08 Jul 2024 17:33:49 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQsF3-00000004bFW-1pFr
	for linux-phy@lists.infradead.org;
	Mon, 08 Jul 2024 17:33:35 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2eeb2d60efbso3270631fa.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Jul 2024 10:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720460010; x=1721064810; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xMgVMxuVJ+4mDxDIZpv60LWECy5vBRGinidcROVywxQ=;
        b=pF5wbFPnKyP8cI8HBtMVRsfJg0YAP3P24mMblvpB3riJWltluQoSrfUajimng1zFah
         7fNCkOr0IyXucBVt98CKCyV3YmXrtw/smuhxIWGVRFf/bkCUhTMqb/Kh9dINsOuoLw09
         2MuuTizJkjbQVeLzLHdV872eUyWLF5MLPB75hgVZULZ0Pnzh9+9TpcY5Rpqf2Meu2kDg
         eBP+aa8e5UX2YjegbJ/i7NyzfcFr72yjM3i/sqIodFN0LVNMK8y0hNgThdZeyf5hVkEG
         +37ihZpnUbzVv6oMvj1kOexfn13k0SIpk31QCtdEPBbuiPCA5qBZ5tQrTNC4s8qDpMGL
         SRRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720460010; x=1721064810;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xMgVMxuVJ+4mDxDIZpv60LWECy5vBRGinidcROVywxQ=;
        b=D7gTvrXhuCQxotO0jdFeT0M2YLeyVKIc0sB9937mZRFe2qyhqwX8s6bub8imPGv8GJ
         EjhCB+KCuor/dEBQhvJOcsnxAZ5UfRif99teAjfokILITvNpcuZZlPCRsRG1yZ8SNwsS
         nosIEnPHcCaYz/iVnHdFqF81HSVT/4qcvBj9dvUNOs6Xwz2vT2zGdgrmXOJI+hC1f2l5
         ohonfFbZ53ggU+Hxk5Y++FsZ3cnnasync9lEfBu/oR2A3uEwDjPV/dPeZjqlPxBpijZp
         RlUskoKadGDfiLIGoXrqgp//l57vVLZex6p4VSv1mRYHI/SxYvLVxWmH3p5wno6kD7/S
         0QqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMqBcuJb0STbrcxS4e3Rr4PV+P1hVKusdT09+//Qu7O61Mp9dKtoMOaffqbcPLUHs133UrFJ5z4IKHEh686D8dvMroq2cLiQ+K8Ykpmg==
X-Gm-Message-State: AOJu0YzcuCOSjaiYgR+7KZTv0Lo875CAXPBD6yyaa1bB+9wIRVQf510X
	ODkNFhO1NLtrcZ0H0llR2gM4xJz45wleGyeJiMJWxHsYFi6U7HsovosSVX+mdas=
X-Google-Smtp-Source: AGHT+IHqm74O9XrXu8Sp/c9nwIkpH2JvcIAs+C9RT3fJBrhdSnfh3Hhhnky9bRB/8pAITn8lkJu/iQ==
X-Received: by 2002:a2e:9a92:0:b0:2ed:136b:755b with SMTP id 38308e7fff4ca-2eeb318b5e9mr2863341fa.53.1720460010540;
        Mon, 08 Jul 2024 10:33:30 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f741553sm5885805e9.40.2024.07.08.10.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jul 2024 10:33:30 -0700 (PDT)
Message-ID: <77711848a7e7242a7445a4bccf5c93675239b838.camel@linaro.org>
Subject: Re: [PATCH] phy: exynos5-usbdrd: fix error code in probe()
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,  Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>, Peter Griffin <peter.griffin@linaro.org>, Sam
 Protsenko <semen.protsenko@linaro.org>, Rob Herring <robh@kernel.org>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel-janitors@vger.kernel.org
Date: Mon, 08 Jul 2024 18:33:29 +0100
In-Reply-To: <a956a3e2-c6ce-4f07-ad80-ec8a96e00d16@stanley.mountain>
References: <a956a3e2-c6ce-4f07-ad80-ec8a96e00d16@stanley.mountain>
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_103333_523660_FAA03AC1 
X-CRM114-Status: UNSURE (   5.84  )
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

T24gTW9uLCAyMDI0LTA3LTA4IGF0IDEyOjA0IC0wNTAwLCBEYW4gQ2FycGVudGVyIHdyb3RlOgo+
IFJldHVybiBuZWdhdGl2ZSAtRU5PTUVNIGluc3RlYWQgb2YgcG9zaXRpdmUgRU5PTUVNLgo+IAo+
IEZpeGVzOiA0OTdkZGFmZTkxNWUgKCJwaHk6IGV4eW5vczUtdXNiZHJkOiBjb252ZXJ0IFZidXMg
c3VwcGxpZXMgdG8gcmVndWxhdG9yX2J1bGsiKQo+IFNpZ25lZC1vZmYtYnk6IERhbiBDYXJwZW50
ZXIgPGRhbi5jYXJwZW50ZXJAbGluYXJvLm9yZz4KClJldmlld2VkLWJ5OiBBbmRyw6kgRHJhc3pp
ayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
