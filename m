Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D23FC47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 21:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJpHIhGdSvfzjUCGCJngPXscFIOQw2FvP3EkcTkqdrg=; b=Teb26BtNgBjHaV
	eL9/V3LA3aV1fP6nAvowivp2VaPm1cv0uOkDUsz91LRs5GaX2If33imKdzi4O6T53eH3tXFrp2pKb
	k8qjxvGWcQn1CimF7UfQpnjKPyccA264Izam+G7+ukz7vBdEm8k5xa5KHPi/xroUfI4nUWs8ryM1A
	DXrU1SyCaebhciQLhVKHrtj3Xn2aKV1OvmXv6W/qEQ7qVviKE8AS8GjLM0Cdu7ntw0eGnQZNyUlJO
	CrFun0b3l5TthqfDnkuuMd3xqxPCZjJoig8g4XOYJD+S88JHFWWd1ZxzfXEJi/T1F2eCloDkaVa3H
	k7XlKpECjYMIWAinT2Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTTnf-00000005TDC-0Ss7;
	Fri, 26 Jan 2024 21:31:47 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTTnb-00000005TBb-2Lrt;
	Fri, 26 Jan 2024 21:31:45 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a3536102785so2393766b.1;
        Fri, 26 Jan 2024 13:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706304700; x=1706909500; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mDXTx8QMtKyNvkViX2Wj8fex4yMcm0KlVYHSHcciIfA=;
        b=HwDLUlskXQQPBpKB9XGo6JZwPJoUagxm5KVRHW2ymFEcB2bkqvvN7Sg7PatvK6wS11
         RVkCFqZM5x6cLlYkNjSoRvGU+qpQ1rxfbTRP7up3rb82iI0DQJSUpbg3OzPMF/pL1fEa
         NKDH45OuE6AYPIuz9rvguU6BXEXRtGJxGEMV2CE66W0akp2UTI0a6QNc9/7EZgYc0zit
         K1PuIm9o/CElEYfzfqERL2Rjqm6NE+7L4wQm6zO4X5udlfDF0k+XvPh7eBWuUVcSJctB
         4FODGcnYJRCmNoxJaDEi+Wf3j9nsG6Zv9WXUOIocoaQcOEJAfxQ/VBovQmVgj6Ya+LV3
         ZwuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706304700; x=1706909500;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mDXTx8QMtKyNvkViX2Wj8fex4yMcm0KlVYHSHcciIfA=;
        b=ZxTeYjE/0c5bUqY6RlZwNKXvwfHgKbs7FiZje2kXS6YJd57pzTCOvAlYdo32giVV7x
         TaWttL7HjUF8WecZzVupKhw9ndMaf2EH6l+E4tghgx8iWnSABRHIJk/ok6U8khToR7Vi
         giLfY5sLWN/k17tgOY1n5T0JWNt+HKl6hnp08VsV4K8Z5jO+4T4dyQ2qBlEHZPVNWtDj
         xYDki9SfQRVaIlEiIWmWG6sO92TxmeWBokmuWYzZZeunLJOO+TfAghQDQN77g22TWKY9
         L79ER/XxEv13N2qfbf/2D0aC4qyZBgesk/+LcbxgbVA0QjfAKBFj7gfDMS8ewpAXBpL0
         wqjQ==
X-Gm-Message-State: AOJu0YwQHX33TpnGmhz5wcBmmm8Z9UJyUpJVkiVgqJiPymN9X+de6yHR
	IH+4zrwSf2VNGi0CfGWha3EPaL/pHY11znb0OLAXF47TOMKrbC6OoMSAt+cuRbqdCdfGU4DGFLZ
	7kxDlhZ9oZh/B60Inr45X1RbnKDta/cV5dM4=
X-Google-Smtp-Source: AGHT+IFkBmkflnDzL19x18zHK/B4dtxxNwR7dmtumO843L79ltYLDN+VfdaWu2B7SEAMrvkcEJHGHI9PkQzSXKasw4w=
X-Received: by 2002:a17:906:298d:b0:a28:32ff:8709 with SMTP id
 x13-20020a170906298d00b00a2832ff8709mr165310eje.15.1706304700273; Fri, 26 Jan
 2024 13:31:40 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com> <20240102-j7200-pcie-s2r-v2-2-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-2-8e4f7d228ec2@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 26 Jan 2024 23:31:03 +0200
Message-ID: <CAHp75VcJA=gg8GLF_YK_tUbjdozaRoJd1gk+a8UCiFWGkk=5CQ@mail.gmail.com>
Subject: Re: [PATCH v2 02/15] pinctrl: pinctrl-single: move suspend()/resume()
 callbacks to noirq
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
X-CRM114-CacheID: sfid-20240126_133143_617100_E639EA46 
X-CRM114-Status: UNSURE (   9.07  )
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
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBUaGUgZ29hbCBpcyB0byBleHRlbmQgdGhl
IGFjdGl2ZSBwZXJpb2Qgb2YgcGluY3RybC4KPiBTb21lIGRldmljZXMgbWF5IG5lZWQgYWN0aXZl
IHBpbmN0cmwgYWZ0ZXIgc3VzcGVuZCgpIGFuZC9vciBiZWZvcmUKPiByZXN1bWUoKS4KPiBTbyBt
b3ZlIHN1c3BlbmQoKS9yZXN1bWUoKSB0byBzdXNwZW5kX25vaXJxKCkvcmVzdW1lX25vaXJxKCkg
aW4gb3JkZXIgdG8KPiBoYXZlIGFjdGl2ZSBwaW5jdHJsIHVudGlsIHN1c3BlbmRfbm9pcnEoKSAo
aW5jbHVkZWQpLCBhbmQgZnJvbQo+IHJlc3VtZV9ub2lycSgpIChpbmNsdWRlZCkuCj4KPiBUaGUg
ZGVwcmVjYXRlZCBBUEkgaGFzIGJlZW4gcmVtb3ZlZCB0byB1c2UgdGhlIG5ldyBvbmUgKGRldl9w
bV9vcHMgc3RydWN0KS4KCkxHVE0sIEZXSVcsClJldmlld2VkLWJ5OiBBbmR5IFNoZXZjaGVua28g
PGFuZHkuc2hldmNoZW5rb0BnbWFpbC5jb20+CgoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5
IFNoZXZjaGVua28KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
