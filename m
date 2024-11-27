Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5835ED609D2
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 11:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fcSsrMuW5QrDIAi0BaLQTH7GtZzYtr3oNumUg++mE+w=; b=1+DfjNYTVo30G3
	H+0OuJh/+LcUH8mNqd8KZio+aiMKN296Ze9uGQ2tnEWq0tnjcaKWEQtZ8wsdmhIaOpb2O6LifnXQG
	NL206lI7/7OM2TuQyKF8cCoR57Ugh/tomrdBz3bbj0WA49q1TtzulCF02jP65UhezkRjD2y8tICnA
	XejDuvWjPKftp90evqh5a/qV9IUsVjabh8jzLbY0N+HhysGNo0RQtF/+c5KOip+ZMaN1nkQHqKhFM
	0FU1TLQKJowMh1BFAGlDnMtRCykokVV2Y2sQ6jVHB7GMbuBmL8ApetaXltEV13P5nGjbD3EJdyraf
	uCulSQ+HsOIgQ/20VT/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFmK-0000000Cvg7-0PCE;
	Wed, 27 Nov 2024 11:00:16 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFkN-0000000CvBd-0TJt
	for linux-phy@lists.infradead.org;
	Wed, 27 Nov 2024 10:58:17 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-53df1e0641fso374564e87.1
        for <linux-phy@lists.infradead.org>; Wed, 27 Nov 2024 02:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705093; x=1733309893; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EX57ICOKMzOs0eby+nVmHR92z2ekmaeMdJuyR8QQpCo=;
        b=sq4rbvKR5XtGl/OUuCcj1G761sK4rIQzGLaOrWSA996qGe/OyycWHtTBv6/6K/F2Tt
         bYAit0XJjZEZHPNdFK026RJ7m5MXR43HjFn8lpKcI81VvyGylkiichuk7ERkIloa/q27
         wYgc0j9Qd6hSo6vUE4mbi3FafqeJlccFIDjQ7f4tw+vWOnThSDnkQJB+prtaf08kBxP/
         HIj44ato4q9KJw4giJ1rcIb6cWQGQyX+p9UKlBYOr9JgqwVrF+Au7xbg6CfATiW/IT/W
         e5RY7xn3PfPNmHAbkC3WO7lNhsCRP9d3Rp+i834ppZ5mPQdvkus5yu+VkGDSnYGs1wqf
         6sGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705093; x=1733309893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EX57ICOKMzOs0eby+nVmHR92z2ekmaeMdJuyR8QQpCo=;
        b=KAPcRkmhjm4zxrPLDIMyX0/Mgf0+ek4G2G54Uly6xpgIAaywdmMGyuSSLbggUOKQox
         AQjYIc9KIiynP5/TWZlsHFIvKf4wJAereQwpoNLRq4P/6MkqRORes+yJvng0guwVif4p
         sweCg0UP8JI0nyEmUIBhwRZ4CNplS1XzeCFpTj4janNUdmw6oVk9pIpyupDHjO5hIOCn
         AxE7s4q51arqn2yH4k3KtS9uJ1bcUV/RelXENj/LQU/kMJhV/75YxN3U3UXCgK8LuKXI
         h2GEYgeC/b//ENZBjkpkkCQd2jVkS0Fqyp/DDCFQjwABWXjvBpBvG+YIEgVmmFtu5uy6
         bvLw==
X-Forwarded-Encrypted: i=1; AJvYcCUb6pbU6JubsNjeCPa0HAuH/1sWeELlXhRunEJjRcnl0zwZJwh3IJMpzv9MOynUXRoGcL2dqHi7Hh4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRouETJp/Gpc3SBL/tStMo+cWu/aBdmyUrjBfwkfkQgPKw9eaz
	RbQ+gDFHECZ+1W/7zYAaJ+GcTswjY80kIKUoblbh3sidqBBtENYjAkad8LdLD1Q=
X-Gm-Gg: ASbGncu5j4KUSQ6LWdopIG4EagRputGp+mgE26t0rFNqIdUoX3lBOOyLgIEoDXfg0JO
	fZbYkSoD1eCeTQz7tr/2jOqZOyJh+8lcaYzQ25XLzNWqwpb2+lqs4AL6v+aEEhZ9UvYUx/jFYMu
	jaCyCIo4XApkzgI939b5bTqpA+wBnJ177j8Z/cM31QgpZzdkNdw119c6DMCwWo4Uzze9Ez4imCj
	+rL8HFlCSjdzbr84z+/byDB0PDtvVMk/RpiDk9VjUYk6h3UD1ppnjFiWz4BofEUbwNRHWOcVzXG
	xAE5uK455/bR8zjqtzqQO1bnFn9r++3edg==
X-Google-Smtp-Source: AGHT+IEDZQbqWW03yw4ZJpKkkOp6D2uswnTAhfUmoQ8ZqjktXEwpbL7Kj9opKFu91DPbwMPyQP7BRw==
X-Received: by 2002:a05:6512:3b06:b0:53d:ab04:54ee with SMTP id 2adb3069b0e04-53df0107235mr1294962e87.41.1732705093247;
        Wed, 27 Nov 2024 02:58:13 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa54a6db906sm412183566b.41.2024.11.27.02.58.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:58:12 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 10:58:12 +0000
Subject: [PATCH 2/9] dt-bindings: phy: samsung,usb3-drd-phy: add optional
 orientation-switch
MIME-Version: 1.0
Message-Id: <20241127-gs101-phy-lanes-orientation-phy-v1-2-1b7fce24960b@linaro.org>
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_025815_147452_6CB64E16 
X-CRM114-Status: UNSURE (   8.05  )
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

b3JpZW50YXRpb24tc3dpdGNoIGlzIHRoZSBzdGFuZGFyZCBkZWNsYXJhdGlvbiB0byBpbmZvcm0g
dGhlIFR5cGUtQyBtdXgKbGF5ZXIgdGhhdCBhIHJlbW90ZS1lbmRwb2ludCBpcyBjYXBhYmxlIG9m
IHByb2Nlc3Npbmcgb3JpZW50YXRpb24KY2hhbmdlIG1lc3NhZ2VzLgoKQWRkIGFzIGFuIG9wdGlv
bmFsIHNpbmNlIG5vdCBhbGwgdmVyc2lvbnMgb2YgdGhpcyBwaHkgY3VycmVudGx5IHN1cHBvcnQK
b3IgZXZlbiBuZWVkIHRoZSBvcmllbnRhdGlvbi1zd2l0Y2guCgpTaWduZWQtb2ZmLWJ5OiBBbmRy
w6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgotLS0KIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbCB8IDMgKysr
CiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBo
eS55YW1sCmluZGV4IDFmOGIzNTkxN2IxMS4uNmMxN2E0NDcxOGFhIDEwMDY0NAotLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5Lnlh
bWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVz
YjMtZHJkLXBoeS55YW1sCkBAIC01MSw2ICs1MSw5IEBAIHByb3BlcnRpZXM6CiAgICIjcGh5LWNl
bGxzIjoKICAgICBjb25zdDogMQogCisgIG9yaWVudGF0aW9uLXN3aXRjaDoKKyAgICAkcmVmOiAv
c2NoZW1hcy91c2IvdXNiLXN3aXRjaC55YW1sIy9wcm9wZXJ0aWVzL29yaWVudGF0aW9uLXN3aXRj
aAorCiAgIHBvcnQ6CiAgICAgJHJlZjogL3NjaGVtYXMvZ3JhcGgueWFtbCMvcHJvcGVydGllcy9w
b3J0CiAgICAgZGVzY3JpcHRpb246CgotLSAKMi40Ny4wLjMzOC5nNjBjY2ExNTgxOS1nb29nCgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
