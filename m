Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6568C47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 21:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzmTXtoKFOgOTiIHqKzziK6oZn15N26fGmFUje+TzMY=; b=4FpNkS7EtFGmLn
	KQaFT8XifmqG8zEnEqD8heVMS8ChG3AkxapzW+yAi+HQ02YzBEXYV1qCFlEQZJTcwE29z7yxXIGSE
	jPRsLjmm4BSxIbNQpeneqnQ3mOz/Df6BxQlccI2nlksTHqdTJTa5twrTStJ8829MCBlk1SXrzu3l0
	F7Y+Y99cHGRAB4VQnb56vIlnG9It8l6myyxEGNH/DVkF9vMmXpwUGwaSYqty3AajdYQpCQwb5blOd
	kqf30Euf2s/ulvOdGrgTcPvMMs51s873tsN4yjpXYvTn7q/EXqT75boCfbjevNuLEVarkGPJIt82i
	bBCTnTVltkSX9ttqMDzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTTof-00000005TYm-1RmY;
	Fri, 26 Jan 2024 21:32:49 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTTob-00000005TXc-3Km1;
	Fri, 26 Jan 2024 21:32:47 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40e913e3f03so13333865e9.3;
        Fri, 26 Jan 2024 13:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706304763; x=1706909563; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MsQP+WZnx7+QyoL2HlI817M4IBaY5O/hAQGZBfHIGF0=;
        b=Q1cPkbBvs6H247OsYQkbFjqBd+pmYaTgV7KAtT4DjCR+LQf82Kd5PLQsllpMNFktX6
         0ST8pfPyU2JbcdqIPmBN0X8nKlMle4mGyVTwo3/ba/rtjBk+dpZ2QjPAfJpKdGHI/QPh
         xKPVSu+2vGKCdJEqNdzqkpLyHvUhegYILqMjEqXroh+7YM95t4LorUeqSq1LkSbCDB3w
         qIEHtjmtt7YhwnGYXa/SRBWPLZtNZ7fzZOT8Vg2trha9MSet7XtExOxP1ZyxlZy5cfrb
         f31dnDBZd2MB3nIvoKJHOzn3uHkKuOXZ/c+LSfgHx0av9fdZqF/ymr55o/rQuViIaHg2
         yRgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706304763; x=1706909563;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MsQP+WZnx7+QyoL2HlI817M4IBaY5O/hAQGZBfHIGF0=;
        b=diJn9CaQ87UzHo1rOFU2xatk8Vl0E4iv68p+EA0S2T0P04FKKvemUcSKMN2kGgwZHH
         3bkz4yk9KtALgeZsGEjEBpgJ5tPStKk1nD5zmxeL5sym5iNCDEh1SiBH2NuH7k+dGv8B
         B6EBCgmNF5qYlxbWzC+tk9v91hmk7qhN7hXy92lCTsor30DpQBzFn0UJACSyhjl4nB5s
         BInRfC1pDOsFP/n0X1TlGi3B0N5aIidjfUUXDtAdrYhujEOIVVKZZQ8CI8UJnJLJb52T
         8E6KarBFvryM5zwkYVV2UhhzDQv3eRqEm5xJGhDLPCBDW3KifPK74nisxd53Bin/XzIy
         0fGA==
X-Gm-Message-State: AOJu0YwOeV9J4MZ+s0ATyXrqJs+1Ts9+2aB/M/RvQzdvh2x9Qec9VC9K
	Ov/MvGTJoxbPMnJO/E9hL3axVLr8EUBgeGEXscYZtSMZuHgdHLxj21BPzfIZ+/xhvFa8nK6LU1v
	4ZRbFeimPRSSMOAJIhBfBziSlwIk=
X-Google-Smtp-Source: AGHT+IEhK4RWNE50FEFxdXLVcvlADRgTldZ2oyE+BnJiORMhEeHp8AEtqMe/JJ7teNhEBaOnBztdp2COb9ytg4+kggQ=
X-Received: by 2002:a05:600c:16d4:b0:40e:aee6:e888 with SMTP id
 l20-20020a05600c16d400b0040eaee6e888mr279076wmn.119.1706304763242; Fri, 26
 Jan 2024 13:32:43 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com> <20240102-j7200-pcie-s2r-v2-5-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-5-8e4f7d228ec2@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 26 Jan 2024 23:32:07 +0200
Message-ID: <CAHp75VdAmFc1Jz_Fw7ij_NTcxkm+o25ruj2rj8TJD51yz-ueTg@mail.gmail.com>
Subject: Re: [PATCH v2 05/15] mux: mmio: add resume support
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
X-CRM114-CacheID: sfid-20240126_133245_850987_AF3CB4B2 
X-CRM114-Status: UNSURE (   8.42  )
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
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBUaMOpbyBMZWJydW4gPHRoZW8u
bGVicnVuQGJvb3RsaW4uY29tPgo+Cj4gTm8gbmVlZCB0byBzYXZlIHNvbWV0aGluZyBkdXJpbmcg
dGhlIHN1c3BlbmQgc3RhZ2UsIGFzIHRoZSBtdXggY29yZSBoYXMgYW4KPiBpbnRlcm5hbCBjYWNo
ZSB0byBzdG9yZSB0aGUgc3RhdGUgb2YgbXV4ZXMuCj4KPiBUaGlzIGNhY2hlIGlzIHVzZWQgYnkg
bXV4X2NoaXBfcmVzdW1lIHRvIHJlc3RvcmUgYWxsIG11eGVzLgoKbXV4X2NoaXBfcmVzdW1lKCkK
Ci0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
