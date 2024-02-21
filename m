Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CDFDC54788
	for <linux-phy@archiver.kernel.org>; Wed, 21 Feb 2024 21:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enIUX/q0pROIZV21SxJ2rmoWEHvk5aiBMzM++RWnSHM=; b=vNq1qtpTdMjcI2
	VN03RA++cKyFNs4h4zZHiECzATIX2yaLcE7ra7k324Ql3Auquqis1uTW62M6lFFp2iSKz8rDO6lWu
	xHGQqm6njfDRYSCN2lljBIbxR3dbPk0ulABQb2AFRXmQMb0zoYIinDVm+edruYSh3uaSghrcljAjd
	eYGZEBkvL9iokPGFoUuyCSrWlvgKE2llRNKF+gVe6FiGZQBw8Tk5Fb6VadvI5WsaE8Y0J6gH3KkBD
	DxUTyQm1SvQ3xiRCWk3s7Fy+oIogYIwLfqAIdC+Ds2h0jCLwhterv/bOA1B5GunaKDYAmaaW67ERI
	eh1C8TSXRadozckG1zlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcuYb-00000002jCp-0kY5;
	Wed, 21 Feb 2024 21:55:13 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcuYZ-00000002jBx-0Tbl
	for linux-phy@lists.infradead.org;
	Wed, 21 Feb 2024 21:55:12 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-607dec82853so68133387b3.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Feb 2024 13:55:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708552510; x=1709157310; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vWHrhgI4Kt8kGUNcvtf3QHT4fPb4OVK0J5B/aX4bSNk=;
        b=xd/3S/JyBg1ZC8EQ2tRSwvkrwNNe0jM4TDM7gZ2EUs0l9mkuZMB9nF4hreeMr3sFw6
         mL9s0+nZPI31awuNkbnqMJ81wHgeglUzAXx3we3I4lwnSyyFo9wthur8ap71dB09M2cb
         ebkRdXb7NdezMQUMAUzKGqPi2SbMDanZ/sFssqZAqZy9y3J9qusu1nig482O99dr1RXY
         qe6AFAbhcsTD4DMTGx1DWL6smVkbt3yoO1vCUnwka0ccTxwH2DqjEZ22DHV8anRhyqR9
         BgcGM8kaEDv+t4LugXDRZ07SRVkgXOJ0w1RaH+sGy3YYqTpsdTQqxbp7FGNC1xyO9A8O
         3wng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708552510; x=1709157310;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vWHrhgI4Kt8kGUNcvtf3QHT4fPb4OVK0J5B/aX4bSNk=;
        b=A9gxltu3+AsY4kbW8mu+HtjgyUlTFBVLKdqAaYLc8ovK9jSKIRm+kUJnQwV0B/1CRL
         jYSS6wUD5m7B6j8MAYT6o3Ej4YPGBn2kck6yRIfBWheckWFjNdyf9tPESJePzTPPs0lA
         uX+hB+uvdqMk7GvxPpaEIbcJ7j1XfPUxLVHlcOMEeU8YqlTwcTosGKbZOV2j3xK9RV1g
         4rkSOErHqJO/WyNZozohpLJUlFhfGqnN/thDnlGfAr1mG+AnqFYOCGhp55lUWUIKv4Pi
         8OP7LBg8Da5ojzy27xd1T9GAqUfHcLG7nfSMMIeWA/Ewp7DPOiedYwoGYTaaJXXqQX1N
         4/5g==
X-Forwarded-Encrypted: i=1; AJvYcCVWb3xqT5JgvUtcywMxcu/wo0z6xO7Uofa3SgLYNrR83XEWsITEiEbVSZ0FANs1dBY0ESFWep2+BKZGzIHoLn9nFbX5iYzR+y+808/AHg==
X-Gm-Message-State: AOJu0Yxxi5TWbjftibKjrlkAyA48mmGlh5xGs+2D634leNoS6IED3Rxv
	EIk20s5Bz/Mb5rui2z46CUymJZGsdHKZxmA8iRhasLrBPdUNOG1WU8C7jwowAQExb8jTbRS3i8E
	eol5Us01SO5ad8PAvd3AwIjlCbGEXtd+O6lKsPw==
X-Google-Smtp-Source: AGHT+IFG7OkXBXjbNPYxfp6BSZzFgHptfq8O7pHlOruVpRLafhQo6wGBbhxmoAykBBf2wzpi0CwmDlGUgveqYfQh/CQ=
X-Received: by 2002:a81:8341:0:b0:5ff:796e:481f with SMTP id
 t62-20020a818341000000b005ff796e481fmr18807228ywf.11.1708552509905; Wed, 21
 Feb 2024 13:55:09 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com> <20240102-j7200-pcie-s2r-v3-1-5c2e4a3fac1f@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v3-1-5c2e4a3fac1f@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 21 Feb 2024 22:54:59 +0100
Message-ID: <CACRpkdYSw5_70H4k5ZX-stCU=CH=v_0Ggm+R+FSBhdbk6mnhOA@mail.gmail.com>
Subject: Re: [PATCH v3 01/18] gpio: pca953x: move suspend()/resume() to suspend_noirq()/resume_noirq()
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, 
	gregory.clement@bootlin.com, theo.lebrun@bootlin.com, 
	thomas.petazzoni@bootlin.com, u-kumar1@ti.com, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_135511_187958_8E5D7F38 
X-CRM114-Status: UNSURE (   6.89  )
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

T24gVGh1LCBGZWIgMTUsIDIwMjQgYXQgNDoxOOKAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cgo+IFNvbWUgSU9zIGNhbiBiZSBuZWVkZWQgZHVy
aW5nIHN1c3BlbmRfbm9pcnEoKS9yZXN1bWVfbm9pcnEoKS4KPiBTbyBtb3ZlIHN1c3BlbmQoKS9y
ZXN1bWUoKSB0byBub2lycS4KPgo+IFJldmlld2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRp
QGtlcm5lbC5vcmc+Cj4gQWNrZWQtYnk6IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJhcnRvc3ouZ29s
YXN6ZXdza2lAbGluYXJvLm9yZz4KPiBSZXZpZXdlZC1ieTogQW5keSBTaGV2Y2hlbmtvIDxhbmR5
LnNoZXZjaGVua29AZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBSaWNoYXJkIDx0
aG9tYXMucmljaGFyZEBib290bGluLmNvbT4KClJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxs
aW51cy53YWxsZWlqQGxpbmFyby5vcmc+CgpZb3VycywKTGludXMgV2FsbGVpagoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
