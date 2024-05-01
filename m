Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CE99C19F53
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 09:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=znTnUCuxJQFBMZa5u4lTJrDjkH/n4D/UVLqrB3i42Ks=; b=RyLELWQzQbK2Ow
	Y4DYF9+atbm+BVRld0oYhedBXPc6U1WPkasOIzDCvRAztDiMD0arVzPyHPjm8ujRHWY81XriZ3ktQ
	2evItfh1nn2k027dQOT+f9Wb7FRLzKePPrF0JydMdD6o5hIkAB+TSfq3hjMkrelFfCAowdtGiJ9Ga
	lIthdgzNxmyLlLBe9GmaoqBcjEktVqtqVOQaxrFx3AS7pnmxi2xsNu5FGsfl82+AdyWElNm7AUQbN
	Iy88cEVBSzWFXyi6psvB59HYbYLkWpGlA2BH2W8A4BNouQ2bDM/RjlKW3tDiB754IsbjYLHQGK0IC
	VbEgbICLzSaIqkAAh9lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s267w-00000008wmk-1tF7;
	Wed, 01 May 2024 09:19:48 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s267s-00000008wiX-0Q2D
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 09:19:46 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a58a36008ceso774263866b.0
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 02:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714555177; x=1715159977; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HjC0thOUO3AI+wU5orw4JxlnIQvZns1Xrbd8AZdvPQo=;
        b=hRHWtm4he7otm9dpJnkznOsD1p3MBhcRInmTwfdZgxLWp1NG0brCRfDQWW5MfR9Tap
         q+5veCpwsjfeZuKY+VwXw8SmpFXfRkQNR6Xu6zHmD5PfX2fvPUZNEhlDfgydF8sjZSUx
         wamj/GUKUzzhiq2t8orMz689vQ/qdJChcx6grtdOjeqfo5hi1Qmj3CO6Pw2CwncPP/TY
         0b0EOdUZNg0/5atWAI4YSif8k0hHdLxcgn3ZvrbhzLkGDgDY+6kCAu25NgGlhMYcQzYy
         aspTmH3hMvy8h7lyfT0lwdz8qg9mxi20vO8KMzrjlrVuXAvqV0LW+IrdJ8jSmDgxkZKy
         N75g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714555177; x=1715159977;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HjC0thOUO3AI+wU5orw4JxlnIQvZns1Xrbd8AZdvPQo=;
        b=G6t4ViYsMAQVActAF7+gaSh7Y4GyV/9jY+WOWXUb+WFL1dec95dXMuLhM5zlxZ+hzo
         qu6Vfe6gRy7+uq85IYtDQCJZ9SUCkq4Qhh2s6+pCFAaawijqmzwJjMl8HvZg2Ts4Ol/n
         pORHvnhoCA9SWGwSlausf5g0N7nGIJdE7ngrNqx6dmUMtHgEH3wOB7TSn0uK+DkX6OyU
         5srw6PJJdxWgFZ8hhmUvYn+GpkmfVYZWw7HZWFEqBJtuG5lbESV0PKXGyDGT80NaW/jM
         SVj3B8kO4Y7a45lIicNCXsbARuDXpMQV4JJe/kKI+RXkv+4GT1U5mTKgD/WITgbijkiG
         Fb4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWPb8S+fCpFwKPTq8Z5YZxMEhmEs1hz+igY2glGyLalbhuv8M/OXSXeTX9odqmn0sE4akLB1POd30+t7OlO1sEbBL15MbFEtdTSxVPOwQ==
X-Gm-Message-State: AOJu0Yw4FiiANH+wUdNu6Dxz5SPB2Nb5UdowFjaOFG4IOtam7wJYjwVD
	7ZshJY8OJPsRIolX1W+y8k2udPSHyrJJMqfoNWGyYdEyJjsO8zefsANMT79qmAA=
X-Google-Smtp-Source: AGHT+IHZcl/NwEeZn+eEz03CLh9cMSeWZJA/2KYO9UAu5/Lo5NKkHlI5Bg8SHMlhBa7fThQtTrER9w==
X-Received: by 2002:a17:906:e2ce:b0:a52:19ea:8df0 with SMTP id gr14-20020a170906e2ce00b00a5219ea8df0mr1534908ejb.66.1714555177641;
        Wed, 01 May 2024 02:19:37 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id bw13-20020a170906c1cd00b00a58de09fd92sm5425674ejb.27.2024.05.01.02.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 02:19:37 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 01 May 2024 10:19:36 +0100
Subject: [PATCH v2 1/7] dt-bindings: phy: samsung,usb3-drd-phy: add gs101
 compatible
MIME-Version: 1.0
Message-Id: <20240501-usb-phy-gs101-v2-1-ed9f14a1bd6d@linaro.org>
References: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org>
In-Reply-To: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Arnd Bergmann <arnd@arndb.de>, lee@kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_021944_260262_BB425DC5 
X-CRM114-Status: UNSURE (   8.79  )
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

QWRkIGEgZGVkaWNhdGVkIGdvb2dsZSxnczEwMS11c2IzMWRyZC1waHkgY29tcGF0aWJsZSBmb3Ig
R29vZ2xlIFRlbnNvcgpnczEwMSBTb0MuCgpJdCBuZWVkcyBhZGRpdGlvbmFsIGNsb2NrcyBlbmFi
bGVkIGZvciByZWdpc3RlciBhY2Nlc3MsIGFuZCBhZGRpdGlvbmFsCm1lbW9yeSByZWdpb25zIChQ
Q1MgJiBQTUEpIGFyZSByZXF1aXJlZCBmb3Igc3VjY2Vzc2Z1bCBjb25maWd1cmF0aW9uLgoKU2ln
bmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KCi0t
LQp2MjogYXZvaWQgaGF2aW5nIG5lc3RlZCBlbHNlL2lmLCBhbmQgaW5zdGVhZCBjaGFuZ2UgdGhl
IGV4aXN0aW5nICdlbHNlJwogICAgdG8gZXhwbGljaXRseSBzdGF0ZSB0aGUgcGxhdGZvcm1zIHVz
aW5nICdpZicKLS0tCiAuLi4vYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwg
ICAgICAgICB8IDYxICsrKysrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA1OSBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFt
bAppbmRleCA0NTJlNTg0ZDk4MTIuLmY5OWYwNTVlYzcwNCAxMDA2NDQKLS0tIGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1sCisr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRy
ZC1waHkueWFtbApAQCAtMjUsNiArMjUsNyBAQCBkZXNjcmlwdGlvbjogfAogcHJvcGVydGllczoK
ICAgY29tcGF0aWJsZToKICAgICBlbnVtOgorICAgICAgLSBnb29nbGUsZ3MxMDEtdXNiMzFkcmQt
cGh5CiAgICAgICAtIHNhbXN1bmcsZXh5bm9zNTI1MC11c2JkcmQtcGh5CiAgICAgICAtIHNhbXN1
bmcsZXh5bm9zNTQyMC11c2JkcmQtcGh5CiAgICAgICAtIHNhbXN1bmcsZXh5bm9zNTQzMy11c2Jk
cmQtcGh5CkBAIC01Nyw3ICs1OCwxOCBAQCBwcm9wZXJ0aWVzOgogICAgICAgdGhlIE9GIGdyYXBo
IGJpbmRpbmdzIHNwZWNpZmllZC4KIAogICByZWc6Ci0gICAgbWF4SXRlbXM6IDEKKyAgICBtaW5J
dGVtczogMQorICAgIGl0ZW1zOgorICAgICAgLSBkZXNjcmlwdGlvbjogUEhZIHJlZ2lzdGVyIGJh
c2UgYWRkcmVzcy4KKyAgICAgIC0gZGVzY3JpcHRpb246IFBDUyByZWdpc3RlciBiYXNlIGFkZHJl
c3MuCisgICAgICAtIGRlc2NyaXB0aW9uOiBQTUEgcmVnaXN0ZXIgYmFzZSBhZGRyZXNzLgorCisg
IHJlZy1uYW1lczoKKyAgICBtaW5JdGVtczogMQorICAgIGl0ZW1zOgorICAgICAgLSBjb25zdDog
cGh5CisgICAgICAtIGNvbnN0OiBwY3MKKyAgICAgIC0gY29uc3Q6IHBtYQogCiAgIHNhbXN1bmcs
cG11LXN5c2NvbjoKICAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9w
aGFuZGxlCkBAIC04MSw2ICs5MywzNCBAQCByZXF1aXJlZDoKICAgLSBzYW1zdW5nLHBtdS1zeXNj
b24KIAogYWxsT2Y6CisgIC0gaWY6CisgICAgICBwcm9wZXJ0aWVzOgorICAgICAgICBjb21wYXRp
YmxlOgorICAgICAgICAgIGNvbnRhaW5zOgorICAgICAgICAgICAgY29uc3Q6IGdvb2dsZSxnczEw
MS11c2IzMWRyZC1waHkKKyAgICB0aGVuOgorICAgICAgcHJvcGVydGllczoKKyAgICAgICAgY2xv
Y2tzOgorICAgICAgICAgIGl0ZW1zOgorICAgICAgICAgICAgLSBkZXNjcmlwdGlvbjogR2F0ZSBv
ZiBtYWluIFBIWSBjbG9jaworICAgICAgICAgICAgLSBkZXNjcmlwdGlvbjogR2F0ZSBvZiBQSFkg
cmVmZXJlbmNlIGNsb2NrCisgICAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBHYXRlIG9mIGNvbnRy
b2wgaW50ZXJmYWNlIEFYSSBjbG9jaworICAgICAgICAgICAgLSBkZXNjcmlwdGlvbjogR2F0ZSBv
ZiBjb250cm9sIGludGVyZmFjZSBBUEIgY2xvY2sKKyAgICAgICAgICAgIC0gZGVzY3JpcHRpb246
IEdhdGUgb2YgU0NMIEFQQiBjbG9jaworICAgICAgICBjbG9jay1uYW1lczoKKyAgICAgICAgICBp
dGVtczoKKyAgICAgICAgICAgIC0gY29uc3Q6IHBoeQorICAgICAgICAgICAgLSBjb25zdDogcmVm
CisgICAgICAgICAgICAtIGNvbnN0OiBjdHJsX2FjbGsKKyAgICAgICAgICAgIC0gY29uc3Q6IGN0
cmxfcGNsaworICAgICAgICAgICAgLSBjb25zdDogc2NsX3BjbGsKKyAgICAgICAgcmVnOgorICAg
ICAgICAgIG1pbkl0ZW1zOiAzCisgICAgICAgIHJlZy1uYW1lczoKKyAgICAgICAgICBtaW5JdGVt
czogMworICAgICAgcmVxdWlyZWQ6CisgICAgICAgIC0gcmVnLW5hbWVzCisKICAgLSBpZjoKICAg
ICAgIHByb3BlcnRpZXM6CiAgICAgICAgIGNvbXBhdGlibGU6CkBAIC0xMDAsNyArMTQwLDIwIEBA
IGFsbE9mOgogICAgICAgICAgICAgLSBjb25zdDogcGh5X3V0bWkKICAgICAgICAgICAgIC0gY29u
c3Q6IHBoeV9waXBlCiAgICAgICAgICAgICAtIGNvbnN0OiBpdHAKLSAgICBlbHNlOgorICAgICAg
ICByZWc6CisgICAgICAgICAgbWF4SXRlbXM6IDEKKyAgICAgICAgcmVnLW5hbWVzOgorICAgICAg
ICAgIG1heEl0ZW1zOiAxCisKKyAgLSBpZjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAgIGNv
bXBhdGlibGU6CisgICAgICAgICAgY29udGFpbnM6CisgICAgICAgICAgICBlbnVtOgorICAgICAg
ICAgICAgICAtIHNhbXN1bmcsZXh5bm9zNTI1MC11c2JkcmQtcGh5CisgICAgICAgICAgICAgIC0g
c2Ftc3VuZyxleHlub3M1NDIwLXVzYmRyZC1waHkKKyAgICAgICAgICAgICAgLSBzYW1zdW5nLGV4
eW5vczg1MC11c2JkcmQtcGh5CisgICAgdGhlbjoKICAgICAgIHByb3BlcnRpZXM6CiAgICAgICAg
IGNsb2NrczoKICAgICAgICAgICBtaW5JdGVtczogMgpAQCAtMTA5LDYgKzE2MiwxMCBAQCBhbGxP
ZjoKICAgICAgICAgICBpdGVtczoKICAgICAgICAgICAgIC0gY29uc3Q6IHBoeQogICAgICAgICAg
ICAgLSBjb25zdDogcmVmCisgICAgICAgIHJlZzoKKyAgICAgICAgICBtYXhJdGVtczogMQorICAg
ICAgICByZWctbmFtZXM6CisgICAgICAgICAgbWF4SXRlbXM6IDEKIAogYWRkaXRpb25hbFByb3Bl
cnRpZXM6IGZhbHNlCiAKCi0tIAoyLjQ1LjAucmMwLjE5Ny5nYmFlNTg0MGIzYi1nb29nCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
