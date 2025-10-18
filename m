Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54695CCD193
	for <linux-phy@archiver.kernel.org>; Sat, 18 Oct 2025 19:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQ/6UIjQKfpJqBC3Q3/4Yr4C/4DV3q+dMpwfykZ2lqs=; b=R4AN5twvRuWGHG
	/I7a9BfcoW4oHuYpPNPDIHhw5ZpTN72B4YoK36gSk7ZVkUSTdDyGHELGLK4hhzR6QfGwROkEi5Rcd
	oQxVeyH6hnczEqxuy4GFiJa2YXlXtQ9PMqk3UkhML+iHIQbfjB5inIOiGvzveu4UcKexsz0VBWzkT
	22DGeJMtZ4QAng8LQy490kEj8SLNAStBym0wmXPRzHHLvEgqcSrTP+cOGBnDW9zm7QW0UArkR5qIh
	ZvC/6+js/znjVgu3plPtFFfMjZFguCp3DBm4pIVlva4xe5xrpMalZt1SqgaV5nPnqHyT2qOxvCcdn
	CkyqdlMsMD/jnH5xq8jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vACF2-0000000AKiz-3lSJ;
	Sat, 18 Oct 2025 19:05:24 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vACEz-0000000AKhq-24xJ
	for linux-phy@lists.infradead.org;
	Sat, 18 Oct 2025 19:05:23 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-64a6cff75e9so813108eaf.0
        for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 12:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760814320; x=1761419120; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=npvxteVAfIEKzMeytJ2WmNF7D4AAPzWxw0qzjoJdKTI=;
        b=bl+fca37wLdWdWoZnjoWyKNssFKTk4hd96UZaoSKOnXQMB9rb1/gcVBmhim/FIC43u
         RjEtRYT4P8UfgMBND7CHXxqy5MfBaKLhOxxBvutAtwAugtMFGkIw5jVnaoe11M2GSnr/
         lvPZfSGX+jwImugZqbQUmnKdrBIFPwoW01dP/l5eSZuSAZ17Gs8t+VRiAyS8N/mc+mZY
         maGxVd1JEZUw9lfploC8ePmWNE2yPx0unnZVW/Cbn3q1bFNiXJPqAeiOPSZLJPyDO62M
         tNuxFtrXZL5Ce3effP0uNMB8N0a6OqNYwwAUDo2J+u7v0wGA71Fys2o8z/1y2NUCGvDo
         M3SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760814320; x=1761419120;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=npvxteVAfIEKzMeytJ2WmNF7D4AAPzWxw0qzjoJdKTI=;
        b=M4pX6gr8vaGRcGGQ3CjhDi9Ojj0Nmrc/mPA0XmrVvhp96pOTJU6AWX0FA39EU1rrJS
         MfV725PqLxjtC/vFttocWgFYv9zX843nv8kzznSkqYbHjnRfCvEcDYTd+DD+in+4on8s
         IrpqGxXjd5DH9t27dGhgwlJPpCsuxhLCwwcPgZVdl41Y341WT6SviWc9I6MXsimzDywk
         9t71w8OlHpRnfNG7lP4bn84vtNWZKn74RfuN4HA5fa7XcaX0XQJ9iHJaGjH6tBjQxX2Y
         E7APx4Ru48Eg9aoOq+gUssHrrbu4tTFfCEFcoK7RMy7+hyqRogHX2FBaGUz+RT3+8Gra
         vugw==
X-Forwarded-Encrypted: i=1; AJvYcCUJ8vWfXSd25MpC4Gi8PWMRw5sqvuMdHmz6lIM839ItIuNR0bQmcRL6BsazGSJGvtdK2PsO1LD0Yjc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzc/APmlIEE0ij+3C6aJvD3DFBMmQVI2ljU2pv7KD4RvOAv/xLU
	O37lOjcqVZ4XMKc2mHkp7OyFRHJwAYmHAk9TJkW7E7bMfhqK1P9qJLTXvZJd0lIh4is9Cuygp+E
	6MoYpZd6bLmLL1+ZZMP9Cq5oxkSxHyeg=
X-Gm-Gg: ASbGncvNdfBqgZgVrDYmw5rg5YneMXyk0veHLB08KxoOIiRYwrTPw06sLsM/5KfWb3O
	XgnZdYPAj/4nQAjfPP8pH60LLXog+icsugrVFQYWNeV4D3dW+MQ2bsWcU8pSRh2rgFIOcCrjoM1
	vIoBTx1AdnOW2XQRhv6spmSECA5tjPYAAguCJT9LHFAQ6YY3OErxF+Zpw9NR1W5uiPdkx8LsXGp
	bZGcRK/fFguuYl/7x2hIU5Wnccf1z/rgcAE8yYxqgr6c58xnsmgfBbeeRbVfMu672QmYdPN
X-Google-Smtp-Source: AGHT+IHn6bYHsxvnnBm5dSpuXWjNC+PBXDBTRxFzgYuC3xttEpimkJMntVWJZ0cZXwANZryVuMF0nNeTd369Q5XITzY=
X-Received: by 2002:a05:6871:6907:b0:349:de3c:bfc8 with SMTP id
 586e51a60fabf-3c98d0c7686mr2520732fac.31.1760814319754; Sat, 18 Oct 2025
 12:05:19 -0700 (PDT)
MIME-Version: 1.0
References: <20251015232015.846282-1-robh@kernel.org>
In-Reply-To: <20251015232015.846282-1-robh@kernel.org>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sat, 18 Oct 2025 14:05:08 -0500
X-Gm-Features: AS18NWBGMwSlAmXgBiXSGQWXCd5xrZTGccuKfzZwiw4wGpClNDZImruw46Wm-dA
Message-ID: <CABb+yY2u=XZFdoDrjjYFhARLoaxH4uTnT=GyFmsnV_U1aWn=UQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Fix inconsistent quoting
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee@kernel.org>, Joel Stanley <joel@jms.id.au>, 
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
X-CRM114-CacheID: sfid-20251018_120521_545941_230504E0 
X-CRM114-Status: GOOD (  13.43  )
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

T24gV2VkLCBPY3QgMTUsIDIwMjUgYXQgNjoyMOKAr1BNIFJvYiBIZXJyaW5nIChBcm0pIDxyb2Jo
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
YTIwLXBtYy55YW1sICAgICAgICAgfCAxMiArKysrKy0tLS0tLQo+ICAyNCBmaWxlcyBjaGFuZ2Vk
LCA3NSBpbnNlcnRpb25zKCspLCA3NCBkZWxldGlvbnMoLSkKPgpGb3IgdGhlIG1haWxib3ggY2hh
bmdlcwogIEFja2VkLWJ5OiBKYXNzaSBCcmFyIDxqYXNzaXNpbmdoYnJhckBnbWFpbC5jb20+Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
