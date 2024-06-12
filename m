Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62A34C27C77
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 08:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1C7SYrYeIssnMriZc+4GB3AwabvIecPDNerCys3J+s=; b=PoE40+wA/cKKlx
	lQVexPHkKm8IZxY8TUNYsQhdcNoZnAFFoRf9cyEQ5w25RyH8YrVcmc9MPgO7Dmz9qaqgcrnYiry1f
	dx31pmDjIpBcfHq1R2Kc1J92iU4Bd6er4C/VKK9lf7pGAulnpS0pcT42eCbVi8q4/98qWyDCRl8Yv
	srYcT59/oBhw76CpYeulr5zGsToK9IxDPjZeK3ke2hNyRuY6G+QwRVv8mP7LvD5nYW5nvXtU+oHxJ
	Dq0ROWE0TkoStpZ5DOcaUcO1cdHJxgzj7K120fWxDwTpPA9NPrwhqVCX2hYysxBN3jBivhuo9aSVv
	t5j/swaMvI7zPJwPir/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHJ0E-0000000BbRW-1SLL;
	Wed, 12 Jun 2024 08:06:42 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHJ06-0000000BbIJ-14vh
	for linux-phy@lists.infradead.org;
	Wed, 12 Jun 2024 08:06:40 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-57a1fe63a96so8574380a12.0
        for <linux-phy@lists.infradead.org>; Wed, 12 Jun 2024 01:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718179592; x=1718784392; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O/NUPbIh6KH2M0kCYkMVAfLrTd49vfN01minAiZapEM=;
        b=BpJg8ptWXzaRgapSOQGnaQHHqRzbN8o25edaQRybM0/KzpxrBAdMaWVDktHR+j84Af
         IKh3YlNzrzv4qHyS/3rZ2DGXp02PTqvoEqAWeyazgNui911SLvxSAdHelLbKANSYHXkK
         hFsKIjI85jmTcmszaFtArtwjHVTJ/3vEJ/eqxGsKDKR0MMPpZfCxW0COOqpgOdIY7q+c
         s5iWmfB1rpD8/cTAuZHneQbmpA3rZtrYFoNhtffizGxlaCp2TzKaBiPLDh961axXSzbs
         +KvDtq+9n4gKNtHtOiQlPHl4rjsJsPibQCtOZU7rbOwpSrGWRjIkoMDH8k6Hemnsjy/w
         e8Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718179592; x=1718784392;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O/NUPbIh6KH2M0kCYkMVAfLrTd49vfN01minAiZapEM=;
        b=RUmhmaqCs8fRhtan6pPXi+VSV0aciY8JMOpYI7nJK/wESdgOnFvEGUoWkDxNxh2KMC
         mPkX4mR9DK6slvuEc/Ssl/FpCNWkmARTEB/mFp56PWovpQFYMRPWjI7632EFRDKNDxGR
         Zms5ATDCc4Z6ZgTj/9aNSrkTqePKNe6fr8LYp2wVffrlK18H5HCHkUaqvYoDhrBAZ5oX
         mnXeg8r3UWw0anx/5UCaZ26BqZW4UsVEiZKOTpymCqCs+nJUUc6qeWU+goqkUoRdKBq8
         +97R6lkjXyG+mfu1k/ep1I5hDQBB9OqalO9ARlioWmcINsiwNt6VZT8goux9ZNnx1DVC
         tOBA==
X-Forwarded-Encrypted: i=1; AJvYcCWAZIwsjmCmjZ/elZpskaA4Or56b1HrTCbpHwmgeaeGvjnn6ou/S9gKlmZN0O1mRaVoZue0aBekA6wYFHcG9BASNgujA6IhNWJxvnjuSg==
X-Gm-Message-State: AOJu0Yzh5r0ItLpqIjzM4Ch/z20EsxjVjhkxPJ00zQnyJBKW6zOMlRA1
	VEYCmlec9yMvnpG9Tw+kuFIkW0ieiABsJvYWp/c+ZgKYdOvK+M0PgFt8DOBw/7aj8pGQywNb6Cv
	j3WtpSv58+fSQy9HFyrcw7CH7K01XQxEPWwo4Gw==
X-Google-Smtp-Source: AGHT+IH6OoZV1gKE9M3AfTYykV/eXXOCa0e/szV5LwhuD7ADmm+ab2ExPKHa0SiqR2zEvoqdUE6xd6qSmfp4NPHk93k=
X-Received: by 2002:a50:a419:0:b0:57c:7dee:52e4 with SMTP id
 4fb4d7f45d1cf-57ca9764b69mr562078a12.25.1718179591338; Wed, 12 Jun 2024
 01:06:31 -0700 (PDT)
MIME-Version: 1.0
References: <20240507-samsung-usb-phy-fixes-v1-0-4ccba5afa7cc@linaro.org> <20240507-samsung-usb-phy-fixes-v1-2-4ccba5afa7cc@linaro.org>
In-Reply-To: <20240507-samsung-usb-phy-fixes-v1-2-4ccba5afa7cc@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 12 Jun 2024 09:06:19 +0100
Message-ID: <CADrjBPqRq_T-bz3SXvAzYobH8R9DaZyuikdD=TzDz7PZghJVQA@mail.gmail.com>
Subject: Re: [PATCH 2/5] phy: exynos5-usbdrd: convert udelay() to fsleep()
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_010634_598726_56E6BFF4 
X-CRM114-Status: GOOD (  10.29  )
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
YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IFRoZSB0aW1lcnMtaG93dG8gcmVj
b21tZW5kcyB1c2luZyB1c2xlZXBfcmFuZ2UoKSBhbmQgZnJpZW5kcyBhbnl0aW1lCj4gd2FpdGlu
ZyBmb3IgPj0gfjEwdXMgaXMgcmVxdWlyZWQuIERvaW5nIHNvIGNhbiBoZWxwIHRoZSB0aW1lciBz
dWJzeXN0ZW0KPiBhIGxvdCB0byBjb2FsZXNjZSB3YWtldXBzLgo+Cj4gQWRkaXRpb25hbGx5LCBm
c2xlZXAoKSBleGlzdHMgYXMgYSBjb252ZW5pZW50IHdyYXBwZXIgc28gd2UgZG8gbm90IGhhdmUK
PiB0byB0aGluayBhYm91dCB3aGljaCBleGFjdCBzbGVlcGluZyBmdW5jdGlvbiBpcyByZXF1aXJl
ZCBpbiB3aGljaCBjYXNlLgo+Cj4gQ29udmVydCBhbGwgdWRlbGF5KCkgY2FsbHMgaW4gdGhpcyBk
cml2ZXIgdG8gdXNlIGZzbGVlcCgpIHRvIGZvbGxvdyB0aGUKPiByZWNvbW1lbmRhdGFpb24uCgpO
aXQ6IHR5cG8gaW4gY29tbWl0IG1lc3NhZ2UgIHJlY29tbWVuZGF0YWlvbiAtPiByZWNvbW1lbmRh
dGlvbgoKPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxp
bmFyby5vcmc+Cj4gLS0tCgpBc2lkZSBmcm9tIHRoYXQ6CgpSZXZpZXdlZC1ieTogIFBldGVyIEdy
aWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KClsuLl0KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
