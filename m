Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 445D1E77171
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 07:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSlKmgnd2PccFwXIMNOFSvrkSG/D4Fw38VNRvFzSfus=; b=Kx9dLwA2WDLaRn
	DGn7aUKn99J3NwOVEX8X1rtn22bIT46UvfyWJwtdy4HUDKk24F94mcINUWrt74DGKvtE4RR+WkZ2c
	EYg5OcRiVR8P7bnbUYd48QtevefxA/EzjqkU8XWgiw3wXJSd3p4HiBngR1fSnB+Eg7TK1sHskFLCU
	tpj21xfC7b96UjKx1e4ZpFVxaHIoYepLOdZLX3Kx1ur/vk9H5s0CiGFUdx/Ns9WtAFOd8qIdxmYqk
	zXZ0ho/2Js/v495G+JFhBwoDBzXUxXeP0U6VYft7N8oxlezjUwC0MtQD7rfZSeTlF23bG2h9LixPv
	XHHxc3KpZQcYJD9hRIXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6Or-0000000F2ap-4Bax;
	Thu, 05 Dec 2024 07:35:50 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6MN-0000000F1hI-1Ld1
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 07:33:18 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5ceb03aadb1so745241a12.0
        for <linux-phy@lists.infradead.org>; Wed, 04 Dec 2024 23:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733383994; x=1733988794; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VPcp32i194zjkohuP3ghdoazYclk/zwkpzXjsI6FYvY=;
        b=v+xwC7j1ftDJczza/XL2qyBwAgIa8UCAVBKbUvgOuuwdOghVHDWJvcVMQ+6AjDyPvu
         OWm754T12+I/RnTqt49YI4OL1cEwZqwGySFvaz9CoLslw0b5RoKMp/q5hFehBO2T1Dvr
         jHmDH9D5W9mKDtkuZQD9j9cFHsebl60v/C/Km5ieJ0Wtd5YoCZqKeBCO9pXt45PQRg/K
         C6Ygj84lszCXMwVq1Boiz/4BkrO6inB7EOK18+zkrNqDjdcoF5Fdqt8Zckh5sAFmM8p+
         4A+S4/XCCOclQl+vUHTpr2I4C9cDwb0RQ6zakrtTEuutRWOLcFGjw0+o5Jq/WS0gekOJ
         72KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733383994; x=1733988794;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VPcp32i194zjkohuP3ghdoazYclk/zwkpzXjsI6FYvY=;
        b=h+tjlPZ4dpGo946gGzBpwg7u1yeE6dligkH7W8WfNf22Dt1hlieCZpAhBRIipyKDlS
         EjscaH35OBIvd9uoMT8ggRznE0weK1QprDg6xUCIsue8iek9YYZtjQTN5NEgN436nUdi
         RCeUfbbGY34eiAtr/sIWjIHj+G1KQdS6wcFWQpnoGSftYTo00vOBWAlrFv0gXs4o9bOW
         Mt4M1BTkQiEl7LG6h0Rj4Tz1XSUnJBPDo+wx1/85qiuUARO/gi2M0ljk8w6QfFnA9FFV
         ar6W18znO1aLz6b54dmr4AOFqj4W9g9W0EJV3PEJ+O4XnXYeVyAlC35qWe5rqjbGYsgL
         mUPA==
X-Forwarded-Encrypted: i=1; AJvYcCUyFywUgg1CD4OIEK1ey6Jx4fVJBHUNSmQ8aWAdZd9MrlNLy5Cb21LBeUTgRn/Tcob3Kqreg8b5HPI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzrog15jksARD0cCdHcaSKYQx38eUUSHj8QFuftyaktKfLONcGB
	+VH5QWxvUep/ebOXwWyXXa0fiHISjmv+G1D8Qi8dMa84TnzIgkVVEUZWdLnbJl8=
X-Gm-Gg: ASbGncs/8rUv8QU1d4a4SgXWjEa+v8+Ahs8vSpQP1WP35UcIYadBpPemn7NQ9+vQ5iT
	+eIpHY0QF0YXT5QulaCFA8REASi+peg4rws8gd8OUVI3kf+ZyOwOuwnRyjDNPd0E/+rIy9cdqfp
	wnja/CGaI5wvVbVbb/6noI2BpN4wzRI8k6mYg6BG4f4Px+6j6DhWRxZTgogPIt80QD4xVIsygfU
	LzhG9xNg8UVld+gfA6Bs97dACK8MzMlSkNMK7dtTGEAojAx4rBB0yt6Euah24fXVH0SunurYH84
	r+aG6MBJP4uxkaJeH5X+C+I1tcUp9V7sAA==
X-Google-Smtp-Source: AGHT+IG2cRFoErHvd+1EuK9aLmhx/7F0pkt3orG+NahV6/yW750scFnzkpmch+QEqJyukIDF69QaRw==
X-Received: by 2002:a17:906:328d:b0:aa5:30c0:384b with SMTP id a640c23a62f3a-aa5f7d4d1f6mr732358166b.24.1733383993763;
        Wed, 04 Dec 2024 23:33:13 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260888casm53371766b.133.2024.12.04.23.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 23:33:13 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Dec 2024 07:33:12 +0000
Subject: [PATCH v3 1/8] dt-bindings: phy: samsung,usb3-drd-phy: add blank
 lines between DT properties
MIME-Version: 1.0
Message-Id: <20241205-gs101-phy-lanes-orientation-phy-v3-1-32f721bed219@linaro.org>
References: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
In-Reply-To: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
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
X-CRM114-CacheID: sfid-20241204_233315_355441_B87E5B0F 
X-CRM114-Status: UNSURE (   7.59  )
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

SW4gWzFdLCBSb2IgcG9pbnRlZCBvdXQgdGhhdCB3ZSBzaG91bGQgcmVhbGx5IGJlIHNlcGFyYXRp
bmcgcHJvcGVydGllcwp3aXRoIGJsYW5rIGxpbmVzIGluIGJldHdlZW4sIHdoaWNoIGlzIHVuaXZl
cnNhbCBzdHlsZS4gT25seSB3aGVyZQpwcm9wZXJ0aWVzIGFyZSBib29sZWFucywgZW1wdHkgbGlu
ZXMgYXJlIG5vdCByZXF1aXJlZC4KCkRvIHNvLgoKTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLzIwMjQwNzExMjEyMzU5LkdBMzAyMzQ5MC1yb2JoQGtlcm5lbC5vcmcvIFsxXQpSZXZp
ZXdlZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgpBY2tlZC1i
eTogUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1ieTogQW5k
csOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KCi0tLQp2MzoKKiB1cGRhdGUg
c3ViamVjdCBsaW5lIChSb2IpCiogY29sbGVjdCB0YWdzCgp2MjoKKiBjb2xsZWN0IHRhZ3MKLS0t
CiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbCAg
ICAgfCAxNSArKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1z
dW5nLHVzYjMtZHJkLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1sCmluZGV4IDE2MzIxY2RkNDkxOS4uMWY4YjM1
OTE3YjExIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1sCkBAIC04MywxNCArODMsMTkg
QEAgcHJvcGVydGllczoKIAogICBwbGwtc3VwcGx5OgogICAgIGRlc2NyaXB0aW9uOiBQb3dlciBz
dXBwbHkgZm9yIHRoZSBVU0IgUExMLgorCiAgIGR2ZGQtdXNiMjAtc3VwcGx5OgogICAgIGRlc2Ny
aXB0aW9uOiBEVkREIHBvd2VyIHN1cHBseSBmb3IgdGhlIFVTQiAyLjAgcGh5LgorCiAgIHZkZGgt
dXNiMjAtc3VwcGx5OgogICAgIGRlc2NyaXB0aW9uOiBWRERoIHBvd2VyIHN1cHBseSBmb3IgdGhl
IFVTQiAyLjAgcGh5LgorCiAgIHZkZDMzLXVzYjIwLXN1cHBseToKICAgICBkZXNjcmlwdGlvbjog
My4zViBwb3dlciBzdXBwbHkgZm9yIHRoZSBVU0IgMi4wIHBoeS4KKwogICB2ZGRhLXVzYmRwLXN1
cHBseToKICAgICBkZXNjcmlwdGlvbjogVkREYSBwb3dlciBzdXBwbHkgZm9yIHRoZSBVU0IgRFAg
cGh5LgorCiAgIHZkZGgtdXNiZHAtc3VwcGx5OgogICAgIGRlc2NyaXB0aW9uOiBWRERoIHBvd2Vy
IHN1cHBseSBmb3IgdGhlIFVTQiBEUCBwaHkuCiAKQEAgLTExNyw2ICsxMjIsNyBAQCBhbGxPZjoK
ICAgICAgICAgICAgIC0gZGVzY3JpcHRpb246IEdhdGUgb2YgY29udHJvbCBpbnRlcmZhY2UgQVhJ
IGNsb2NrCiAgICAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBHYXRlIG9mIGNvbnRyb2wgaW50ZXJm
YWNlIEFQQiBjbG9jawogICAgICAgICAgICAgLSBkZXNjcmlwdGlvbjogR2F0ZSBvZiBTQ0wgQVBC
IGNsb2NrCisKICAgICAgICAgY2xvY2stbmFtZXM6CiAgICAgICAgICAgaXRlbXM6CiAgICAgICAg
ICAgICAtIGNvbnN0OiBwaHkKQEAgLTEyNCwxMCArMTMwLDEzIEBAIGFsbE9mOgogICAgICAgICAg
ICAgLSBjb25zdDogY3RybF9hY2xrCiAgICAgICAgICAgICAtIGNvbnN0OiBjdHJsX3BjbGsKICAg
ICAgICAgICAgIC0gY29uc3Q6IHNjbF9wY2xrCisKICAgICAgICAgcmVnOgogICAgICAgICAgIG1p
bkl0ZW1zOiAzCisKICAgICAgICAgcmVnLW5hbWVzOgogICAgICAgICAgIG1pbkl0ZW1zOiAzCisK
ICAgICAgIHJlcXVpcmVkOgogICAgICAgICAtIHJlZy1uYW1lcwogICAgICAgICAtIHBsbC1zdXBw
bHkKQEAgLTE0OSw2ICsxNTgsNyBAQCBhbGxPZjoKICAgICAgICAgY2xvY2tzOgogICAgICAgICAg
IG1pbkl0ZW1zOiA1CiAgICAgICAgICAgbWF4SXRlbXM6IDUKKwogICAgICAgICBjbG9jay1uYW1l
czoKICAgICAgICAgICBpdGVtczoKICAgICAgICAgICAgIC0gY29uc3Q6IHBoeQpAQCAtMTU2LDgg
KzE2NiwxMCBAQCBhbGxPZjoKICAgICAgICAgICAgIC0gY29uc3Q6IHBoeV91dG1pCiAgICAgICAg
ICAgICAtIGNvbnN0OiBwaHlfcGlwZQogICAgICAgICAgICAgLSBjb25zdDogaXRwCisKICAgICAg
ICAgcmVnOgogICAgICAgICAgIG1heEl0ZW1zOiAxCisKICAgICAgICAgcmVnLW5hbWVzOgogICAg
ICAgICAgIG1heEl0ZW1zOiAxCiAKQEAgLTE3NCwxMiArMTg2LDE1IEBAIGFsbE9mOgogICAgICAg
ICBjbG9ja3M6CiAgICAgICAgICAgbWluSXRlbXM6IDIKICAgICAgICAgICBtYXhJdGVtczogMgor
CiAgICAgICAgIGNsb2NrLW5hbWVzOgogICAgICAgICAgIGl0ZW1zOgogICAgICAgICAgICAgLSBj
b25zdDogcGh5CiAgICAgICAgICAgICAtIGNvbnN0OiByZWYKKwogICAgICAgICByZWc6CiAgICAg
ICAgICAgbWF4SXRlbXM6IDEKKwogICAgICAgICByZWctbmFtZXM6CiAgICAgICAgICAgbWF4SXRl
bXM6IDEKIAoKLS0gCjIuNDcuMC4zMzguZzYwY2NhMTU4MTktZ29vZwoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
