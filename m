Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26C5CC47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 21:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B80cZmVxdb2nfGMzfflFnvKOpXiGAJDlrIiKRaJRopw=; b=Q2nFPJ1H0Yp8kX
	tuQ6trP2TwwWgTeP4NW0g6EcRvTrT0+3oPGUgRFUQe5jnDfGum/JaVHREQo2V3JA+AVUVt+1AMfvR
	3tPj2av/4McUnMDpQrvjxgZDG6cZ9WuZmxLpQbkwUEnLSCOOl7vyyIbkZ7dlzMyH3+0Bakqm2+jwA
	yBwb4w/4RyhYwMDgdiHNnZnpVoOzcMSp3oK8nXtgeUuwrpcV2tKF3Bwkm+MbdERT5TbFZ5PzLDg8O
	PBz9u+NeSlU+5bMR5WqaQti36HABofLOdnV5xetNt+djCFFCKGUmfCq6KxN0V0Do5h3x9XvTVUf+Q
	snrqCWTGuOMuacrYZmOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTTye-00000005Uly-2rhF;
	Fri, 26 Jan 2024 21:43:08 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTTya-00000005Ul7-3j2i;
	Fri, 26 Jan 2024 21:43:06 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3367a304091so1258884f8f.3;
        Fri, 26 Jan 2024 13:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706305382; x=1706910182; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KCY7DfVxPDzCt0r7rxE9b/4fx28xL+DoQHrlqF+MZ08=;
        b=H0t6h3lDJ8EFT+t6xp1fbWZpK4XyqkRhGO/HH8Cxj3b/dMD1lH7NyU0/lA9XyFPd62
         9yK1l9Kd9Ha2sTqT3uDSly3dY8+Uaj/QLwwZuRuKDdgy6+okjq3DyPhoMgbiuTxdcK15
         /1B6810PSGx2oZFScce9bg4qZ1QvNvZGUR8jeoV+LuvQNCd+skuZEvnBDwaqYH2ddy83
         6fKeF9ekkMRG9vASsT/lDhv4nlzllkQRDNgfO/+AF99lg1thZQEdHgfj7GY/DpHlli5N
         xwDBvg7DWQFXxeflYYjobksV052wJleuz3VL30O1IkJmJ20lTYdpG6fjkWKtebFqa9ar
         hx/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706305382; x=1706910182;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KCY7DfVxPDzCt0r7rxE9b/4fx28xL+DoQHrlqF+MZ08=;
        b=sdtCPuGEFzP6weMwnMCY02ydMXtQ6/RbE+SfXrd/XMjrcQdSIfsgsACZLe9GeyU704
         n4053hbhmNknmYgnNn7TSJccs8IvbDCk/NZ+76TV4Ixq86K2idEGdZ5ND7rZHUYank5L
         BkeTygoBsh1pUKDH2k6G1U+ZX9Sgjv1EZ40PzkNBg8YSmYlPRGmjx0hHxMnCef1s1th1
         g0b7DaSRLmLRWuKta9r6RX6RWW3WbJvdMIG6uXN6IlJrzXEjdQGss8P40Q8qnAeLZVmn
         9CPxKGR4SpMo4R2tIHpJpus7hUrhJ3SLh/7Sm0kfOwbonfLKQM4Q1iU2TDdrxmQMpVkR
         U4qA==
X-Gm-Message-State: AOJu0YzyYyEGN+8FHDhFuo3RRJZWV20M78cDFxx1W9483tgqhO3agJHJ
	8iiuNO6NnKS6PXyOzUnzdKhupZbJjw+KmQEad1u+F+lWT3Aac7DRS4XquatyPnjMEwezv5o2sIc
	WVrQNRDzIKwppshmYxrZf194ZtPc=
X-Google-Smtp-Source: AGHT+IGXCFdU/1d13+ZL3B18u4Okv5jOUq1bO6J9WAzacX+znmFb/mlBJZIwMCKI9bcTP10UqXDA4vMuveB8Ugll31Q=
X-Received: by 2002:a5d:52c3:0:b0:337:be12:5846 with SMTP id
 r3-20020a5d52c3000000b00337be125846mr128038wrv.163.1706305382206; Fri, 26 Jan
 2024 13:43:02 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com> <20240102-j7200-pcie-s2r-v2-7-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-7-8e4f7d228ec2@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 26 Jan 2024 23:42:26 +0200
Message-ID: <CAHp75Vf3HUYYkMAmRH9V_5S-HOOm7Wv+hVgRs7BbVJeSDRgDrw@mail.gmail.com>
Subject: Re: [PATCH v2 07/15] phy: ti: phy-j721e-wiz: add resume support
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
X-CRM114-CacheID: sfid-20240126_134304_953697_993BFD01 
X-CRM114-Status: UNSURE (   7.91  )
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
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBBZGQgcmVzdW1lIHN1cHBvcnQuCj4gSXQg
aGFzIGJlZW4gdGVzdGVkIG9uIEo3MjAwIFNSMS4wIGFuZCBTUjIuMC4KCi4uLgoKPiArZXJyX2dl
dF9zeW5jOgo+ICsKCkFuIHVzZWxlc3MgbGFiZWwuIEp1c3QgcmV0dXJuIGRpcmVjdGx5LgoKPiAr
ICAgICAgIHJldHVybiByZXQ7Cj4gK30KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2
Y2hlbmtvCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
