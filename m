Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F626C47DDB
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 21:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7XaGVFLF/1z9wT2eyc2VuXRVPzPPNusTzfIYI00ZPTY=; b=jkAJwg77QNowg1
	HwkgBon6D4XBx8zbZHkyUCwgo0ZoeNxExXLs7VY0AILDgqX120p8d1feWNW40GGU79EoOiy/S35c3
	iTvLIMRWzZD3xG4bK1vu0Tzq0Kf5sjtF2YYTYCrIxfE2ZqrbxzPH9VNw+cEUvN3eNMLRPvrMUKo96
	iD+/9/IIu2XbdyDRADk/5Qbxj4uDxJWilt8JIEb+KbMehQmxRvv20J5ctqy5klIRxprNd7vsmt6TX
	Ws8913guGvTH6JBWboxjrkGpuALTDiurNpQEPxJipNkMzthxHt9Nsxka0x6GvVucJQRJiyGjdnTsq
	OFdaAuprekSLoSdpz5Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTTmq-00000005T0i-3sUI;
	Fri, 26 Jan 2024 21:30:56 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTTmn-00000005Sz1-3eEM;
	Fri, 26 Jan 2024 21:30:55 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a298accc440so128055166b.1;
        Fri, 26 Jan 2024 13:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706304650; x=1706909450; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3c4RfkPo1L3QA1P4ElOrbRYO/UTzIjIsEIDjiCapDls=;
        b=l5WUta/x3ifJOhPjiR8bN+jr7lh+stzuCXC5UZbrs9w9Hj/VJqUUoIplbkn3p1gdnu
         m5Iw7EFbZzn+gwnUOY74UFKyNUVjOCUzFMLRE/8GRc73CGaMWgww7oyt63iskxAeS+c5
         RBBaxHW2X7F7ZBVpLccOv4mMldKhrJra3IutDfn/JeEtGAJZX/SxfOQE6BCnOKroIjZ/
         prx8MzeVMUT/TWRx2U7+9QNVeDtn0jx2kQlI0B+tDYLreFuennDnb87/MQpRoiWGeJDw
         L4vP4rbIv3+mMm7lad12ivmKpv4ZDSfblb6m6GrUCuKatgEveTZgKJ6DskMx0c+Ymlm5
         q/DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706304650; x=1706909450;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3c4RfkPo1L3QA1P4ElOrbRYO/UTzIjIsEIDjiCapDls=;
        b=Hks3j8kLpF7EltoRTk1jMMlViSSbO+/xxX1GjrxMn5aLJL3tq1rasaDHWJpeKq5+lJ
         gzlpyAMjU0EmRXNDlgWLxiWvl3zv35g34BQbl9pRnWV6yOujnGBuuRJ37WmeL9j/gtNi
         pVwzAoOEpjZAexFuBoJ4yXszkXseK3SxQPt9fjYg99ufcGQ1TtGWhZi2sm1y6l9IgQIn
         bGgq0ZUZJzjaz9172+0QA4GgN85aijDnl+ZajU6trxcxjmoqgHzsyfGjpLTDfrBTPtzi
         m3qglaXnZgeG+7EH2f0NNv8My2dO4mPJCYC2q0vv04zWu0S/TMNdcs8UZH/wB4xHv1TJ
         klkw==
X-Gm-Message-State: AOJu0YxKWfLkg4quQhZT63pPeCf40ccCu1FGz7HYv8QE4qo2vvXsmXF9
	fpSia3c/JKG5Z2mQAhTGfqyUUN8l6DA5enNFE2NXNEONFk4cBelIv3epv0r+SFj8P+vmtpBqhj6
	lg9k3dFblyrQ20z5ojsD63erl26Y=
X-Google-Smtp-Source: AGHT+IFXFbK6qcuDfOS1ym8J1LBZtrKmIwx9dYXrFclPmKidtMLcd1lCRKl3sq3dWNUUOi+z4dpkm6suzu+acbp7dNE=
X-Received: by 2002:a17:906:c40a:b0:a31:6942:eaae with SMTP id
 u10-20020a170906c40a00b00a316942eaaemr365751ejz.35.1706304650240; Fri, 26 Jan
 2024 13:30:50 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com> <20240102-j7200-pcie-s2r-v2-1-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-1-8e4f7d228ec2@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 26 Jan 2024 23:30:14 +0200
Message-ID: <CAHp75Vc-Zxac1a202G5XSFxsu7_C8V5ODShrHA9k4es=fXjYWA@mail.gmail.com>
Subject: Re: [PATCH v2 01/15] gpio: pca953x: move suspend()/resume() to suspend_noirq()/resume_noirq()
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, 
	gregory.clement@bootlin.com, theo.lebrun@bootlin.com, 
	thomas.petazzoni@bootlin.com, u-kumar1@ti.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_133053_926018_88C16326 
X-CRM114-Status: UNSURE (   9.06  )
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

T24gRnJpLCBKYW4gMjYsIDIwMjQgYXQgNDozN+KAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBTb21lIElPcyBjYW4gYmUgbmVlZGVkIGR1
cmluZyBzdXNwZW5kX25vaXJxKCkvcmVzdW1lX25vaXJxKCkuCj4gU28gbW92ZSBzdXNwZW5kKCkv
cmVzdW1lKCkgdG8gbm9pcnEuCgpPbiB0aGUgZmlyc3QgZ2xhbmNlIHRoZSBjb2RlIGlzIG9rYXks
IGJ1dCBJIGhhdmVuJ3QgdGVzdGVkIGl0IG9uIHRoZQpwbGF0Zm9ybXMgSSBoYXZlIHRoYXQgdXNl
IHRoaXMgY2hpcC4KUmV2aWV3ZWQtYnk6IEFuZHkgU2hldmNoZW5rbyA8YW5keS5zaGV2Y2hlbmtv
QGdtYWlsLmNvbT4KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
