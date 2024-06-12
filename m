Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F187C27C77
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 08:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1FG2QQrb72D4+xCeV89cnvA0tTlcNj/L4+QGEIdeEw=; b=ZyEYcpuAIphLRk
	OvRcmU9JW1Dkc0lDu8TGiZkePpP64hRI46XG6ajoWLHfZ1l7m4ykJMUvzDnMcMMTQ1W7stx/JmPHq
	fDVyiwIZQSCZp8fNTbHuCMukxc5gGR53ktAQWinxaG+fnuO2AoMBypKsSbCf6q8vLA84XoZGFyFcM
	N/oHFghCUgfgWdPaAUXJuax7rpnp5EWASudlBTMnHb9D4aTFahP1DjqP2Z0NaBx2Fu1j+G/mMkD/2
	exbhtbt2r8QH93226hjcb3ZUEfpU07TlHf3fRQ724DD/ur1hgtQzdIpzBQ4UYa4WH1i82pdBA9HJT
	aXiKTSuU44xc0QczQCzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHIwy-0000000BaIj-0UlR;
	Wed, 12 Jun 2024 08:03:20 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHIwt-0000000BaFC-2m7h
	for linux-phy@lists.infradead.org;
	Wed, 12 Jun 2024 08:03:18 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-57c6afa1839so2668682a12.2
        for <linux-phy@lists.infradead.org>; Wed, 12 Jun 2024 01:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718179391; x=1718784191; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yEEQoekQRon+t3gUDKwXNDGB0vL1Zgsl9jkaeNoSvtw=;
        b=L6GqHXytG/+Y6WLYLcJcDiuRwSh3VaMsqwJI+FjTrvMVQ+8haYJ6zHGawoCOcGB55g
         dvQhXfTCT8RBGu8QisFxGWP0sQViPJ94B1TTMI4OIzxHKTatCwn+Wt5i1o1R49ejNCK+
         yBHQwqEB9OnjZ1CVg0X3HMM4L6bNCRPA8ODNYvlZR7asvzAKUEsGPIe/x+q6uBFAewau
         TAeb5jlR5xWiROvoB1MlLYPDWUhApsqXQJQIehDCwqTgcumxSfX86N3cViJC2yIUR/iz
         EZL5taho4q/EYwuEEwQIuOvwfmbYLF9WbXOPm1/apDCA/ZnxHC1GMtvlu4GjcXUZI9ku
         wcLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718179391; x=1718784191;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yEEQoekQRon+t3gUDKwXNDGB0vL1Zgsl9jkaeNoSvtw=;
        b=sHlpXvgKG9USHPc4wVhHwDd2jzspGsk6Zk6BN1wjn+19qN9Wyijzb5pcZlM2wXlMy4
         jjK9egE9djdzvSsWrnhEOxuVayVDMRwEfafBpX7oymawaclclHCanazMBjaI/dFyP7ep
         nIRygBRox6utVtuXD+e33SOMv2150qNl1WOXZOCRFijojv+C7nFafL4cIgqVvWI79/17
         aMDUSfcErrrvyMzRWX+cXRQrW8bMD9Z7m/VrzGkUcsQJopW+76VAYgzZ22NzJRfrczjO
         C0g6J5XlAiPcvXGPQNOf0XX/TdUQZHQ4b2cMTBgu11Q3u6ycdWh6RWf5RaEuLgx7CkmE
         eh8w==
X-Forwarded-Encrypted: i=1; AJvYcCU/pqYL1rR49uQCC/Jjx9kQb9m4L/hj0BlVhzjHNJQRiphyGKyJ3aBhF39ONyIT7tMMXmf58lOjGB+yl/EEZbJ37EXXlGXyQq/lD7rK6w==
X-Gm-Message-State: AOJu0YwZVNll2jaFZIexa2mhVQxxFP8e+Qc4HotKVHC0xKdFcnn2OZWW
	vQ/Eyxl/6bzbOBOX4ijbhEvAph2QTW+zGtJYCooP2gxGv0HKw7l8+75zdccgqxFtzMeKWWSOdUd
	Q8LkKeipUEKQDciZ+w/ICt5aLhXfFCQGWvRhBaw==
X-Google-Smtp-Source: AGHT+IG3DkdnwCX7yWoeLqpWN1gPYZHoua+wApHjAc3xsU9wEXw7nl/lYk3pClx+tXAPMxhOztwxQVIAAQzvweUAOg8=
X-Received: by 2002:a50:9e2e:0:b0:57c:ad96:14c8 with SMTP id
 4fb4d7f45d1cf-57cad961876mr323057a12.23.1718179390979; Wed, 12 Jun 2024
 01:03:10 -0700 (PDT)
MIME-Version: 1.0
References: <20240507-samsung-usb-phy-fixes-v1-0-4ccba5afa7cc@linaro.org> <20240507-samsung-usb-phy-fixes-v1-1-4ccba5afa7cc@linaro.org>
In-Reply-To: <20240507-samsung-usb-phy-fixes-v1-1-4ccba5afa7cc@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 12 Jun 2024 09:02:57 +0100
Message-ID: <CADrjBPocKu4iSLBu12RdLVo7O3FujF-346aYBOWCn3JutyjX9Q@mail.gmail.com>
Subject: Re: [PATCH 1/5] phy: exynos5-usbdrd: uniform order of register bit macros
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_010315_797513_1370E47C 
X-CRM114-Status: UNSURE (   9.43  )
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
YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE1vc3Qgb2YgdGhlIG1hY3JvcyBh
cmUgb3JkZXJlZCBoaWdoIC0+IGxvdywgYnV0IHRoZXJlIGFyZSBzb21lCj4gb3V0bGllcnMuCj4K
PiBPcmRlciB0aGVtIGFsbCB1bmlmb3JtbHkgZnJvbSBoaWdoIHRvIGxvdy4gVGhpcyB3aWxsIGFs
bG93IGFkZGluZwo+IGFkZGl0aW9uYWwgcmVnaXN0ZXIgKGZpZWxkKSBkZWZpbml0aW9ucyBpbiBh
IGNvbnNpc3RlbnQgd2F5Lgo+Cj4gV2hpbGUgYXQgaXQsIGFsc28gcmVtb3ZlIHNvbWUgZXh0cmEg
ZW1wdHkgbGluZXMgdG8gZ3JvdXAgcmVnaXN0ZXIgYml0Cj4gZmllbGQgZGVmaW5pdGlvbnMgdG9n
ZXRoZXIgd2l0aCB0aGUgcmVsZXZhbnQgcmVnaXN0ZXIuIFRoaXMgbWFrZXMgdGhlCj4gcmVnaXN0
ZXJzIGVhc2llciB0byBkaXN0aW5ndWlzaCB2aXN1YWxseS4KPgo+IE5vIGZ1bmN0aW9uYWwgY2hh
bmdlLgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGlu
YXJvLm9yZz4KPiAtLS0KClJldmlld2VkLWJ5OiAgUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZp
bkBsaW5hcm8ub3JnPgoKcmVnYXJkcywKClBldGVyCgpbLi5dCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
