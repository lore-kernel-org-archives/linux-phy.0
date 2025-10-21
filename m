Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEC46CCD1AA
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 12:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRmn1OMLTgXt4iDbA2owMKbAGAx0SRcDW/lcLqTMJF8=; b=qNFiOnA0+PR/7M
	8RQ78OMN0DMoMLRmIXfZ43C+G0FuZunRI4XUgvyd9zQapbA76MoYdfGJHDP6CaV9AU2UxNiedkZfQ
	vCm1rY4wiR9kVLksI4uMxKNI1HBZYtroryzJpUH7nwSKnEANqNCwAH5rOYlfLKEcu9gFV9eS7yVeJ
	5eTDFk+Hn80J6MSPjaQ2J+yReLsWdBcaN2RBHGB8E9kbVjIQEL9OZJQL1smsqSB4wNcvkP9cbsn/f
	6Mm3xmowJkRKVWu3zuMeQ3Bwma4O7A5e8rkylMKzYK7B7DH3zbxqT/+PlaRk4Qx0pg3SBbuIjaFPR
	53yTARWO6Ezb5WCK4lIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBBfp-0000000H01g-0wgK;
	Tue, 21 Oct 2025 12:41:09 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBBfh-0000000H00U-2n6K
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 12:41:08 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-59093864727so6506681e87.3
        for <linux-phy@lists.infradead.org>; Tue, 21 Oct 2025 05:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1761050459; x=1761655259; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NWb3L2HC5GL7gJV88qPeFIZPSp/OKkdc2F2PK/9kqwo=;
        b=StBh/FazOZ2NRxj9vfudODvmaYA26iK+jScMi0K56Zxl2mV5fAunCtTdqTW/7O2BJU
         GtK6mjFXtt7yrGye0eWIHz31iL2K/bVZugBM8YTWdp1N6K+jEX8CKLcvi+iRIbeflGWg
         ViBALhP31a/cBmzf+g9v5+puhc5ul/V62YO3tU/gfCSoxzq0qegQ9rExmpR1EfFMFBeG
         unltawljKPD5Gg82s/EPKn87dezAp0WlOCdEtTlBHMa1dXipxUXtdfCf+KZ+XdQIk7Uk
         ZhQq3rF1nvNF9ys1U/tHHC+faE9Xj2qWUfbtGW384aUKgs8snSMSR775y4ipaNybGy53
         KiFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761050459; x=1761655259;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NWb3L2HC5GL7gJV88qPeFIZPSp/OKkdc2F2PK/9kqwo=;
        b=H7KiDGF2hgMtG5I/BfYIXJzqmbstOsZXHi+mlRZOi/4JgK5jEsHO3gs5O2GORWdg3u
         7BYcFFwGxGUhgwx2uugPdInukU348AqNXwKMzKj4mI6NolFqLrR7W/LImu2bAiCpk/hP
         TKpLQgXrYEC+g3QYO/8NBuh44GawBIgc8FmmeD5ELURn3/9392Os4T1dZQ1Ni0C0/HLW
         hqXVUXxNSUpp4XxJogxAZSGvmbqr4/Dq9hoaJbD7cuCcRy/2SfGLzfnCH35wO/4iCO9G
         fZC9XrK3MT+Owbttb3+lMHA4dmQBU1FBcBbFyKDJVb2fnZGXOVeOR+WniSRlBx3dZ419
         HKww==
X-Forwarded-Encrypted: i=1; AJvYcCVFzbpOABwoXQ9IkZmKh5IbxhWZESBBxlUshgOd4oWQ4SCn9WuNmAmaQrMlXnzKyvZb2r8JkFUvU7w=@lists.infradead.org
X-Gm-Message-State: AOJu0YxY0uio05JxXKr8Zi2DrhO1mrg9PcOr4JEn9D50ynpQRzCwWyJW
	0X2rU+L9Uk1X4YJ0jshnFqa9TZvdhXKKTK6HLUZ0rYqn7scN5SvjWL0vMZF5NjfQ2dHGH19WswL
	iYsxijQctYWRUIeOMtPRejFPq7ef4FtoANdJahZE+eQ==
X-Gm-Gg: ASbGncu8bqf1hlDGIdcm4Ciq4e3xF8e81uN1gc5QaPMKwIo+dTCtBEMV38bjch7pBvk
	L746/Qw8Qc1gC2+6SqCU9NxBHrZo/c0ZU4A7ezebSLJo0hg379FkKrt9FBnlUMmnlZSrCLBfu5f
	8ERENNYlFbYPD8QvM6yI5FgqVE2Lf6zStmmiiqP+EDt3AUYRMVddkRw6/YQF18cwJ5fQnNA0LCf
	CzFHV/YA52jH+ZmHCkvvrWfiBYHiyBP5o6kmHutTWDi9V+6NVYk5RBOgyx4iUMb0bITZPbQA1jo
	lWHn3YSEt3Rjuh82BncdTLv4vDM=
X-Google-Smtp-Source: AGHT+IHJJi40QO2j+AEEIXG+FSVZbH+WW1DwyjfojmvqVA8OuBIji8cOMNjvhsKfbFVOj/fVZy/UensL3Bqq96jG85U=
X-Received: by 2002:a05:6512:3b0c:b0:57a:310:66a8 with SMTP id
 2adb3069b0e04-591d85773ffmr5098755e87.55.1761050459418; Tue, 21 Oct 2025
 05:40:59 -0700 (PDT)
MIME-Version: 1.0
References: <20251015232015.846282-1-robh@kernel.org>
In-Reply-To: <20251015232015.846282-1-robh@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 21 Oct 2025 14:40:47 +0200
X-Gm-Features: AS18NWCQWmhq7gNfZEHIkGW0O-gEdDRZh4gksyliLmXKxwOZhptAVz-Dcd8I0sA
Message-ID: <CAMRc=Mf++cYPVrFH5_1KggTQi2Tew_MaeHMHSiczkVfM+=Y4rg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Fix inconsistent quoting
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Shawn Guo <shawnguo@kernel.org>, 
	Fabio Estevam <festevam@gmail.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Lee Jones <lee@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, Andrew Lunn <andrew@lunn.ch>, 
	Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-iio@vger.kernel.org, linux-media@vger.kernel.org, 
	netdev@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_054101_744328_FC965EE9 
X-CRM114-Status: GOOD (  12.03  )
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

T24gVGh1LCBPY3QgMTYsIDIwMjUgYXQgMToyMOKAr0FNIFJvYiBIZXJyaW5nIChBcm0pIDxyb2Jo
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4geWFtbGxpbnQgaGFzIGdhaW5lZCBhIG5ldyBjaGVjayB3
aGljaCBjaGVja3MgZm9yIGluY29uc2lzdGVudCBxdW90aW5nCj4gKG1peGVkICIgYW5kICcgcXVv
dGVzIHdpdGhpbiBhIGZpbGUpLiBGaXggYWxsIHRoZSBjYXNlcyB5YW1sbGludCBmb3VuZAo+IHNv
IHdlIGNhbiBlbmFibGUgdGhlIGNoZWNrIChvbmNlIHRoZSBjaGVjayBpcyBpbiBhIHJlbGVhc2Up
LiBVc2UKPiB3aGljaGV2ZXIgcXVvdGluZyBpcyBkb21pbmF0ZSBpbiB0aGUgZmlsZS4KPgo+IFNp
Z25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCj4g
IC4uLi9hcm0vYWx0ZXJhL3NvY2ZwZ2EtY2xrLW1hbmFnZXIueWFtbCAgICAgICB8ICA0ICsrLS0K
PiAgLi4uL2JpbmRpbmdzL2Nsb2NrL252aWRpYSx0ZWdyYTEyNC1jYXIueWFtbCAgIHwgIDggKysr
Ky0tLS0KPiAgLi4uL2JpbmRpbmdzL2Nsb2NrL252aWRpYSx0ZWdyYTIwLWNhci55YW1sICAgIHwg
IDYgKysrLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vZ3Bpby1teHMueWFtbCAg
ICB8ICA5ICsrKysrLS0tLQo+ICAuLi4vYmluZGluZ3MvZ3Bpby9zbnBzLGR3LWFwYi1ncGlvLnlh
bWwgICAgICAgfCAgNCArKy0tCj4gIC4uLi9iaW5kaW5ncy9paW8vdGVtcGVyYXR1cmUvYWRpLGx0
YzI5ODMueWFtbCB8IDIwICsrKysrKysrKy0tLS0tLS0tLS0KPiAgLi4uL21haWxib3gvcWNvbSxh
cGNzLWtwc3MtZ2xvYmFsLnlhbWwgICAgICAgIHwgMTYgKysrKysrKy0tLS0tLS0tCj4gIC4uLi9t
YWlsYm94L3hsbngsenlucW1wLWlwaS1tYWlsYm94LnlhbWwgICAgICB8ICAyICstCj4gIC4uLi9i
aW5kaW5ncy9tZWRpYS9mc2wsaW14NnEtdmRvYS55YW1sICAgICAgICB8ICAyICstCj4gIC4uLi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9hc3BlZWQtbHBjLnlhbWwgICB8ICA0ICsrLS0KPiAgLi4u
L2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3RpLHR3bC55YW1sICAgICAgIHwgIDQgKystLQo+ICAu
Li4vYmluZGluZ3MvbmV0L2V0aGVybmV0LXN3aXRjaC55YW1sICAgICAgICAgfCAgMiArLQo+ICAu
Li4vcGNpL3BsZGEseHByZXNzcmljaDMtYXhpLWNvbW1vbi55YW1sICAgICAgfCAgMiArLQo+ICAu
Li4vYmluZGluZ3MvcGh5L21vdG9yb2xhLGNwY2FwLXVzYi1waHkueWFtbCAgfCAgNCArKy0tCj4g
IC4uLi9waW5jdHJsL21pY3JvY2hpcCxzcGFyeDUtc2dwaW8ueWFtbCAgICAgICB8IDEyICsrKysr
LS0tLS0tCj4gIC4uLi9iaW5kaW5ncy9waW5jdHJsL3Fjb20scG1pYy1ncGlvLnlhbWwgICAgICB8
IDEwICsrKysrLS0tLS0KPiAgLi4uL2JpbmRpbmdzL3BpbmN0cmwvcWNvbSxwbWljLW1wcC55YW1s
ICAgICAgIHwgIDYgKysrLS0tCj4gIC4uLi9iaW5kaW5ncy9waW5jdHJsL3JlbmVzYXMscGZjLnlh
bWwgICAgICAgICB8ICA0ICsrLS0KPiAgLi4uL2JpbmRpbmdzL3BpbmN0cmwvcmVuZXNhcyxyemEx
LXBvcnRzLnlhbWwgIHwgIDIgKy0KPiAgLi4uL3BpbmN0cmwvcmVuZXNhcyxyemcybC1waW5jdHJs
LnlhbWwgICAgICAgIHwgIDIgKy0KPiAgLi4uL3BpbmN0cmwvcmVuZXNhcyxyenYybS1waW5jdHJs
LnlhbWwgICAgICAgIHwgIDIgKy0KPiAgLi4uL2JpbmRpbmdzL3Bvd2VyL3JlbmVzYXMsc3lzYy1y
bW9iaWxlLnlhbWwgIHwgIDQgKystLQo+ICAuLi4vc29jL21pY3JvY2hpcC9hdG1lbCxhdDkxcm05
MjAwLXRjYi55YW1sICAgfCAgOCArKysrLS0tLQo+ICAuLi4vc29jL3RlZ3JhL252aWRpYSx0ZWdy
YTIwLXBtYy55YW1sICAgICAgICAgfCAxMiArKysrKy0tLS0tLQoKRm9yIEdQSU86CgpBY2tlZC1i
eTogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
