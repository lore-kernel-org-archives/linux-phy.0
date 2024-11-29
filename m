Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FEDAD6EBF0
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 09:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=csmkX+s8e7E+QjaXq8FeWbV7ElC7HJe/UoUYVloBdO4=; b=NuV5udIyjf6WKZ
	DfzeF1b1OKk+uhtju00ftDSjS+hVcFaJQ+pt+ohejlirp97YD8KccLSD66eY+zKFr0Ig5ee+gaXDj
	55bY5g6vvIY5iYRWOcVa7Ww1vZ5Q5NlDEgFQDPfTfajibOOw3G7xt5mwRo1R5De95hbgSsSBkYtXP
	5saDVK2njyYSol7x+zO9saoxdpi8hGpdArwwK/FuPS08qkV8uswh1zkcdoP4tZEqiU8jiYsEbYN0s
	9kOwrTOhmoR8P8B7M6m8sbgVaOVSnF3cbUIyq654gTUxflSrtDWdyR2q34U70G9cfIFK7SMqf1qiG
	OD9FTW4QJT0qmiobWzSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGwuQ-0000000HGoR-3lD7;
	Fri, 29 Nov 2024 09:03:30 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGwuO-0000000HGnO-1sJ2
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 09:03:29 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-296b567bc30so374754fac.2
        for <linux-phy@lists.infradead.org>; Fri, 29 Nov 2024 01:03:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732871007; x=1733475807; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wW1UPfI2pZbnJAJq8B5Y02AKlDZ/ksTo9I5RBhqTvuI=;
        b=fZw8J+u6mB1enTN+p4T81UG2QmPvleGJZ11rzlqYx4SjUzV4sfawz37542EFMAbMGZ
         I71in1ouN9GG0K8Oj3bjrqrdez9MdoIN8GX7g3UvzUJczbhDFTYP+HeMWkcQkReh64Rr
         /qIOEG17zDJ1RWQIb5x/3BGmMXs/hyNJ8AID8xjhMJRZ5i74YJs4iyl9OgcnAc43zmU+
         KkX6Kg1tXsdjvoRNs1TY06OaKsTpBXwwnxSRanig/6wXz7xCAgKw4fG2f0/GEbQLBtZI
         5gvNhwmuFw/P26IYgQiu/mQF+8LgxAFqKjFNA8QWZKH54BfgRXWKkhWkYDkeFkzw3CTi
         NjRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732871007; x=1733475807;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wW1UPfI2pZbnJAJq8B5Y02AKlDZ/ksTo9I5RBhqTvuI=;
        b=uTVzcZdxjBf0aPcDXWszHgNcqDrpwUadhQPSSBhBWIRGudE/oqekHjtQcct6RrKOWg
         W5CibZ5Fe+sMOQ4DgVdBa2QH/6IOoXtEWIRwP+TMcsSz5wUxbxin3Fz6qt4fhU++sZx+
         Qkell4tK0Kh+RYhYNyuIx/QPYNW39B0tLUB79zGCmnuIfIZRLxjPYVnRWwC0OQDvDPoQ
         PjMRvp3YtQDO7y95x0LvGSlEb1uBjCKgEbCDH+kSXljf9rihqKzxd9DQdwkC1q+rkt5n
         Y19vipk9UHhXXJXlDfSKdTPF4+lFmM3afUfNZocJSfBsruw4k0z6NuTXPnGRqgDow45T
         apjw==
X-Forwarded-Encrypted: i=1; AJvYcCVV4O/pfk8M6OX2a1Q8KuXtzCuLrk3kmhOxZ/jNn6XMwgTv7iEVYCmGLdOMEfZL2eXldQpzObiZsDo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxho5z/Q7MKXbRZWZYWK8cvrIrD7do5UUg3Gny4CtD8kAQZ8Pao
	a9CsSzNLLT5ro+VITNXXxgWMLNokMqcEeDgrQFAItc+nQ/Q9gNMwOJoazigcmOQmsy8F6aWX8CH
	ZhmPV0SHpIe6RsrogPwrrI2nWDWmMSNl3oiJw8w==
X-Gm-Gg: ASbGncv8PfSejk8prEcBk0zw+j9r8qajkETthSKcxnqN5HQkWRAP4JVUstmxVDxmMYX
	jpyllwdLsQW8Pq6rkdW/o08if2adYSPkP
X-Google-Smtp-Source: AGHT+IERoPgZEiqiqez2SpbM2z9r3e17P7M26vSOjg5eYLpH30rXYi96JJOb9xGSNWtscEvyPnFpElGY/PMRwNHOdqA=
X-Received: by 2002:a05:6870:948b:b0:288:a953:a5c7 with SMTP id
 586e51a60fabf-29dc4033a56mr9209530fac.14.1732871007224; Fri, 29 Nov 2024
 01:03:27 -0800 (PST)
MIME-Version: 1.0
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
 <20241127-gs101-phy-lanes-orientation-phy-v1-1-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-1-1b7fce24960b@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 29 Nov 2024 09:03:16 +0000
Message-ID: <CADrjBPopeTk5d0irJ3UDBBG2=gJF4F7hKWbaGP80x9F+p2jhUg@mail.gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: phy: samsung,usb3-drd-phy: align to
 universal style
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_010328_531345_16AA957E 
X-CRM114-Status: UNSURE (   6.55  )
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

SGkgQW5kcsOpLAoKT24gV2VkLCAyNyBOb3YgMjAyNCBhdCAxMDo1OCwgQW5kcsOpIERyYXN6aWsg
PGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBJbiBbMV0sIFJvYiBwb2ludGVk
IG91dCB0aGF0IHdlIHNob3VsZCByZWFsbHkgYmUgc2VwYXJhdGluZyBwcm9wZXJ0aWVzCj4gd2l0
aCBibGFuayBsaW5lcyBpbiBiZXR3ZWVuLCB3aGljaCBpcyB1bml2ZXJzYWwgc3R5bGUuIE9ubHkg
d2hlcmUKPiBwcm9wZXJ0aWVzIGFyZSBib29sZWFucywgZW1wdHkgbGluZXMgYXJlIG5vdCByZXF1
aXJlZC4KPgo+IERvIHNvLgo+Cj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIw
MjQwNzExMjEyMzU5LkdBMzAyMzQ5MC1yb2JoQGtlcm5lbC5vcmcvIFsxXQo+IFNpZ25lZC1vZmYt
Ynk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Cj4gLS0tCgpSZXZp
ZXdlZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgoKcmVnYXJk
cy4sCgpQZXRlcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
