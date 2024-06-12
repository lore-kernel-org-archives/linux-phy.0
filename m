Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5507C27C53
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C4ulxhvTiUGcxQnU6nkwHNdD3URBsnK0hRYTYCeL6wE=; b=g8FxzGm9TN/mK0
	VuS15E1LLkHNBsj1NfTxH3VMudu6UtaJDeaysnangGLDrGfvu6TuvNmVZdJZMkP9+JK59VXC3sMFU
	PdfDqqx47TbmmY1yR5R+8svLEjI3hu5eY4NYdkqAQsHrtvK0zBtJ07nEdLNy8w4y0NPvuSmWeGi+H
	We3JeH5fWM40h/4V4S6sIrQj2s9SeVBLqQxhNANZOsB5i/bNQlQeRA5yx49bb0wosZcE1j7rWocD5
	w3Kcv6lQ+1pEvdLgaTQCYJ94B7Z2Hc9EWAxzbHaOiB9BQ/a69heDpHS0Oj5jLdLh9OUGgMx+T7rGt
	W//kRMHzdLpUf+kDOE2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHKan-0000000C4bH-12aQ;
	Wed, 12 Jun 2024 09:48:33 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHJdj-0000000BmlW-3rSs
	for linux-phy@lists.infradead.org;
	Wed, 12 Jun 2024 08:47:33 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-35f1a62f731so2940994f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 12 Jun 2024 01:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718182042; x=1718786842; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hpYxsqepRZpn/4oxNpupSBAJdfrKtBfgkfp6t0rsS5g=;
        b=iZIeo2NXWPjEHeIb0gVtdzaUeAj0m2j/XgLzGymCpfKgGFcKUVZK/i7RU3IPxQUlDF
         KNk8ZI2xLb+4OWKO4iFIWuPRwOLvKSwWtrmHw3L+dRnmG8txC0LEqevP5vN/bXwVRLRO
         jE90IgVZ/4mjnE4Rec6XPfGyULbUa5Ia1x43ziQ8Wj89erqtrWIiszA5O27y/lbUE2ZH
         aLlf5h2rVUmkuXTF+aZPTK+EgRVRWob0XBV4MmK/Rg/eJbkIcUCadJ1u7zY7JN9VlCyT
         atArG42CS8sEQZ4Y9V18PJUvZbJqQHYBgzZRyDpJKnsoiif40xc8j8JRkqzITQzexNgM
         OWiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718182042; x=1718786842;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hpYxsqepRZpn/4oxNpupSBAJdfrKtBfgkfp6t0rsS5g=;
        b=v5yYbg2E2JqvOugwtOCcXMzcnfK/R2MZ/9G6GTebNYSji9OcYSx3Ibihwrbi9tgZDU
         STQWI+q6PWvTfpZzagSoELSnzIjQGJAk4BjrJcMksqRpUnQF0rvVx0EajSSiNEyh/9Va
         Zla+Ly9FexnJYncsducdc4aBUvCplpDMCB3gVi9SKyh+F0lWgWW/D7MXoR3KZAMP2Wy+
         BpmWjRuuZU8czswewlVpptoNft0p9D3kwEHMJhfQF7NbQ1xa+Aarunrfl1opK2Sq5LpJ
         cw5gT8xQWNsdsfrf+pEkO4pgpIv+CzErJLOuK+NldyGBj1IMsEPFuZ516SV1UxJYoWto
         uLTw==
X-Forwarded-Encrypted: i=1; AJvYcCWkJUhNzrdz1pZm2jp1X62TiAwKRq5y1RWLb5Q/tv2SFmbl/yeG8dEixhBHOYzcbioi47ySWBROoNaXNu1MstIpJ+C7iiz7Yi6eQcZmiQ==
X-Gm-Message-State: AOJu0YwH2DKDxtFqSHxXio+1WVtQw5qCkCk+89DOkbElkjFCyBUkAOu5
	Zc/nldpWLAZYq9h+5iwoe9atzdYjy275xvanZTF+xkifZ2zNF1Xv4Hab2o0VszATkCMksIwjXdc
	8wUj4zZYbf3cbL3qDFVsv4JXbdBvQvHm5WLO6nmbfw5E906aQZco=
X-Google-Smtp-Source: AGHT+IGKboPzIxB9BeyAEWGYtdD8T8bNkpToXsBx4DoZghmZUY5/VvCBH45JS7ImHQeNexbYdraUIv+ahM0YJb35NXg=
X-Received: by 2002:a50:96cf:0:b0:57c:4867:6738 with SMTP id
 4fb4d7f45d1cf-57ca973f532mr916036a12.2.1718182021586; Wed, 12 Jun 2024
 01:47:01 -0700 (PDT)
MIME-Version: 1.0
References: <20240507-samsung-usb-phy-fixes-v1-0-4ccba5afa7cc@linaro.org> <20240507-samsung-usb-phy-fixes-v1-3-4ccba5afa7cc@linaro.org>
In-Reply-To: <20240507-samsung-usb-phy-fixes-v1-3-4ccba5afa7cc@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 12 Jun 2024 09:46:49 +0100
Message-ID: <CADrjBPqAEbbJ7PKgbUSWCP_AgLcz6uxvKsvc9VzOSD9jXK+scg@mail.gmail.com>
Subject: Re: [PATCH 3/5] phy: exynos5-usbdrd: make phy_isol() take a bool for clarity
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_014732_163285_86B92E9D 
X-CRM114-Status: UNSURE (   9.99  )
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

SGkgQW5kcsOpLAoKT24gVHVlLCA3IE1heSAyMDI0IGF0IDE1OjE0LCBBbmRyw6kgRHJhc3ppayA8
YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IG9uIC8gbm90IG9uIGlzIGp1c3Qg
YSBib29sZWFuIGZsYWcgYW5kIGlzIGEgYml0IG1pc2xlYWRpbmcgYXMgY3VycmVudGx5Cj4gb249
PTEgbWVhbnMgdG8gdHVybiBvZmYgdGhlIHBvd2VyLCBhbmQgb249PTAgdG8gdHVybiBwb3dlciBv
bi4KPgo+IFJlbmFtZSB0aGUgZmxhZyBhbmQgbWFrZSBpdCBhIGJvb2wgdG8gYXZvaWQgY29uZnVz
aW9uIG9mIGZ1dHVyZSByZWFkZXJzCj4gb2YgdGhpcyBjb2RlLiBObyBmdW5jdGlvbmFsIGNoYW5n
ZS4KPgo+IFdoaWxlIGF0IGl0LCBmaXggYSB3aGl0ZXNwYWNlIGlzc3VlIGluIG5lYXJieSBjb21t
ZW50Lgo+Cj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbmRyw6kg
RHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgo+IC0tLQoKUmV2aWV3ZWQtYnk6ICBQ
ZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxpbmFyby5vcmc+CgpyZWdhcmRzLAoKUGV0ZXIK
ClsuLl0KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
