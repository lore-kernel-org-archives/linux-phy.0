Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23E4AC02180
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 14:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2MbhcuMDuWlMr/vkyYziEY+lVO3cTMzmREpMohpF9g=; b=JdbeaODRJpRkHm
	K1h1dldVHEZ6JLcSXGEetmjgVI3LaDZgW7vKXPWCMGvt58VNZLo2Dvi0dmyCXDjW0aD2r64sfQDnN
	fLhOfoWzsmDC1Kvfy4oIw+HIEEs/hRB3/ilMacM+laKa/bm4UDiLaojvzncXyPaLSxOdk1KS+dw9q
	cq4hy4DQiZTstInG5OnMBZb/PDvqWmF8jDOBDQARTIRzW2hX0iP/F1eVJ8X7hijx2DWofbTY8hCz7
	Tq+qB92U043X6+yiCqi7y1UjafI3dLBAvweXq6i5qUXStccS7+4fMOFxNBVTDKKB9I98rwwrHhEiD
	sYoXlztqhX0KhuSDNiLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXLUn-00000005QHH-3jtB;
	Mon, 13 Jan 2025 14:32:49 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXLSf-00000005Pdt-1wgE
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 14:30:39 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-3003c0c43c0so41293521fa.1
        for <linux-phy@lists.infradead.org>; Mon, 13 Jan 2025 06:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736778635; x=1737383435; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yQiQxuwGR8sipxLnE2QpNqD0m337joQm8Mgec26elhM=;
        b=EFWLXxGOQ2rkn5VkF2UdQNUM1qmXOrt0ZRjKoHZhWeqAbzlVAh/s3SDiaV8nRbWlZC
         v6f0p+okUdgWED/LZpNcyRth6QWRviH69zfkgEK9p28dsGk6cNIS+xud6ioZL6F5fG1g
         fBf6ytYVgBWrqC6MWfNRUg8IaQBJYWnOE2GEJpTRATBXSW2hdeaBN0FXmV0WzJ7BZx1P
         hRmz0R96m+YXio+U0NWQG9cXKCl7LJyZoVu0w91YCByIinslOSeHuECp2CVRtyHUgIvX
         Ifse0HUYwEfb5D2GybNlg/ai8IZpa31zkZgOslzPSeQLxUJawJLKa7pMZ9m983lpT/kr
         iprQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736778635; x=1737383435;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yQiQxuwGR8sipxLnE2QpNqD0m337joQm8Mgec26elhM=;
        b=C2Y8ewKOFMtiAtWG80LWLvbDyTJ9m+kvcZ1Ecrf8SPo5MmXMxhZSq+tuV3ACE0bE1a
         /RzZiXsHjiwAtab2p3GraxQUparE/bVXSog0N5orvJw8T5Md8wM4cHQVcPkS/dwksAGc
         yDKakuiIhV13DA/DJsyy/kKjcqZPt21WNgyDfC6bxGDZWTmGbOgH7e2cRCOL95FvdGXc
         vn9aJcPahhKOsI57rukcBeKJ7pAWm8GXuEA5QZqEkUcxFRbEpU8YuuaXYz9gFD+cARpd
         lh9HrzHiqlTxX3v1Cq4ntfgOH5UehiHrn+uBd9C7fyFFqh9Cmj8HZaH8KEwQR1Asnbo3
         l1VA==
X-Forwarded-Encrypted: i=1; AJvYcCUjkAj1L6Gms2uPjZ0NWtLHuA/YIqcuIztc7DtX8LK9j30tm1Br+79WA3B6/OiEgrSnlQwHeO+/C8U=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCShGJvR2dHJOl1NlO1FxyGZjCRp7v89fTELS7mQzO36V8piDK
	bBo2r99t3xsPpyJsmkH5e/oNd6s5G+4kOvUFuQ+aifbi/qJpPH6vOx+1fnfTebyvl6Qg8xSKwHJ
	k730Ym/O4gc8F7kR1ckPVbfUV517ikFGMJr7Hvg==
X-Gm-Gg: ASbGncsciTv+5IKoW4/+DZNRSJyg4T79frsOzE2awnW036yfqQokkhowgi21e828EY7
	+QYP4epMPwsYhnOmFclKcLLGw66MOAdNLH7Ex
X-Google-Smtp-Source: AGHT+IGhfOPi0kkaR3fzIiz3zYVKzNITf7WqJXfvCEhBW44RAY34fqtT6fXLyl378DmtnGYFFnV3yeRTPKvHK9wdrxk=
X-Received: by 2002:a05:651c:221f:b0:302:1c90:58e8 with SMTP id
 38308e7fff4ca-3060ce3d06emr30538601fa.33.1736778635404; Mon, 13 Jan 2025
 06:30:35 -0800 (PST)
MIME-Version: 1.0
References: <20241227-a133-display-support-v1-0-13b52f71fb14@linumiz.com> <20241227-a133-display-support-v1-10-13b52f71fb14@linumiz.com>
In-Reply-To: <20241227-a133-display-support-v1-10-13b52f71fb14@linumiz.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Jan 2025 15:30:24 +0100
X-Gm-Features: AbW1kvZgkONvTczIqxIzrr227mixg_kY6H8hXCa96ZE9JLa4yEIXQA2LwUItM1s
Message-ID: <CACRpkdY29s6Cz3zvtksLO8sESwxhkVdmGUipVAqiEtix3E1=Vw@mail.gmail.com>
Subject: Re: [PATCH 10/22] pinctrl: sunxi: add missed lvds pins for a100/a133
To: Parthiban Nallathambi <parthiban@linumiz.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_063037_518232_1CFB5E2F 
X-CRM114-Status: UNSURE (   7.64  )
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

T24gRnJpLCBEZWMgMjcsIDIwMjQgYXQgMTI6MDnigK9QTSBQYXJ0aGliYW4gTmFsbGF0aGFtYmkK
PHBhcnRoaWJhbkBsaW51bWl6LmNvbT4gd3JvdGU6Cgo+IGx2ZHMsIGxjZCwgZHNpIGFsbCBzaGFy
ZXMgdGhlIHNhbWUgR1BJTyBEIGJhbmsgYW5kIGx2ZHMwCj4gZGF0YSAzIGxpbmVzIGFuZCBsdmRz
MSBwaW5zIGFyZSBtaXNzZWQsIGFkZCB0aGVtLgo+Cj4gU2lnbmVkLW9mZi1ieTogUGFydGhpYmFu
IE5hbGxhdGhhbWJpIDxwYXJ0aGliYW5AbGludW1pei5jb20+CgpOb2JvZHkgc2VlbXMgdG8gaGF2
ZSBhbnkgb2JqZWN0aW9ucyBhYm91dCB0aGlzIHBhdGNoIGFuZCBpdCBzZWVtcwp0ZWNobmljYWxs
eSBjb3JyZWN0IHNvIEkganVzdCBhcHBsaWVkIGl0IHRvIHRoZSBwaW4gY29udHJvbCB0cmVlLgoK
WW91cnMsCkxpbnVzIFdhbGxlaWoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
