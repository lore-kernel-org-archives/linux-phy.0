Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 904B1D609D2
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 11:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezq+CIUDg6X+4uAlwIW3wQw2NfcntRhpWp3hV9kxEsg=; b=EC2R0dtC9bOkHk
	OVxenoImzWZdiVD8PFgbMYmY29kfoHFxXKFqnQcLLrfqEBSvprbrGMtR+3tAg5icRCn1Ty+kX3Ixe
	iwaP2ZtFQJ1gkOANA/LCOghv5eS64RZrVFvmB2A7CpUgkXXsDHHJl/yJJC6OQ3bapcXhH8BivK4ZX
	bVuLtvIjGxSobZz/Is25ud9FqiZnEo/VwfiUAGy10Q90TCNRaoegr6Kkz8EZ8ZYbKR2EBz7mlWIgw
	X2qVVKztxa5e1b8q6q8A3BKShkaP4YzWT5UNdMk/GjeRUAOrlovZutA0FlWrsSSDlQWWhPBSoeLCe
	Wg9dBLmbz75QqXxTmApA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFpA-0000000CwLx-0tDt;
	Wed, 27 Nov 2024 11:03:12 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFkP-0000000CvDT-0Jr4
	for linux-phy@lists.infradead.org;
	Wed, 27 Nov 2024 10:58:19 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2ffc1009a06so50036921fa.2
        for <linux-phy@lists.infradead.org>; Wed, 27 Nov 2024 02:58:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705095; x=1733309895; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w9Ja8bSv98C0dnIrT5U7vJcSaQnvSrF1zZ95Z+KMMq8=;
        b=wJrNH2beePNe9xuOvn+xw0DQKjo4YW6P/FcxgYmjjPatp/8bEa9g5JA4wHPa3kUl6S
         hDCrEmBXS/DTdF5RYaIIU9ti8NFLeSuVW1ggiujU6CYPAgHrZpkuT4aFDP1nlinyNilj
         0rpKn3mh2dR7H5jCeKBLVooz96eNPN/w2vgdCoL2mQiscH1CHkWE+erejHcH++ekyFML
         /GCB4cgKfucF+GjOYebp55BDMVs8fZQUBf1PAtvPUW0UpwRBngjDIdaYRXVc54X0Qg3I
         KTReQEAU9qkEtQCEm2lXzlIAeybCamd1XCXWHT8e4NHArkabEC+b3kJXccmw2ysEInDR
         brAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705095; x=1733309895;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w9Ja8bSv98C0dnIrT5U7vJcSaQnvSrF1zZ95Z+KMMq8=;
        b=ksvPT85CPrNm5l9stUBhQ3wmwZQ1reSojiWLCAVWiKJJriBBxWLRPHyh+J/t45xnPX
         WssYFNInN1ckc7cN9YpnmZnUWsnZ5J8JzEstcP+Jx935vToeqQo1ejunCQTwM0Im+vsy
         XaEs40pnJ9mEmpjS7ce7S9PYR02jdlDEJVHKDscVoH/sHo8EcEqApMZEUI7QWsbdteS+
         G9hvRrGd3Zm1qWgXEkkStTIfhV7YII435Rdmkf+OvMrq/llqoof4O+pq16DRv1IuEecj
         42lnABm/WcF4/RYQ8oQ2MDtSQR4GeJg4rch3oCikFwtWhOo3B9UT8fJWvNHV7Z9d1lPM
         pfhg==
X-Forwarded-Encrypted: i=1; AJvYcCV83L6aXGiNjf+u/TKSlh4VDqxv+gtr1JpMyeGq1tbL0sNS+58A/C3Kiti1NOUFO/XJobDPNFJLJWg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwPNzLNeRABOoCBWX2TiyFmOkHK+jA1PpOTYRxyi6N3D501nxl2
	6ft+5ddFvcy/7DZQ4nwjkxVx0W6ADXsJnvIklkxXiVsrXFZtupkq4p+He1rB4O8=
X-Gm-Gg: ASbGnctQ/BFWFUgfitbajdTWr+2w4yV0vhe1Qg/j0dZ6DZoC3rQD8O758JwJdx8+euO
	eaF3lia42ggJTZ8mYRrhFM88uaxr2l2nDqcXrLegDkKGjdNrIW1lN1Ir3VcHD+ZJCAqr0RZ+2v7
	u98aHh/A9/nSynOP246uVUo3+4U0/FakMVDgQFiR9Pr3DFjYTnivUcHco/YSlpenvOKTdC6uQqS
	6hyICfXIVRUxRqIrPXUCPqMzuYsGKY5zhiqFajG08FNpRUyP/tW4jtmyl6LemfBda+oJCkqM/qc
	5dvCgF5vsDIKIjqaDzY6pz7zGce9L9R74w==
X-Google-Smtp-Source: AGHT+IGFJqt4+X9+b9OZ9iJ+1uoSSp1Y782XmdGaTyXXLw7W9wq9YHlHSBg308ZxZ/fLYqnCqQPhog==
X-Received: by 2002:a05:651c:b24:b0:2ff:c4b2:496b with SMTP id 38308e7fff4ca-2ffd5fcc1c9mr16671261fa.7.1732705095196;
        Wed, 27 Nov 2024 02:58:15 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa54a6db906sm412183566b.41.2024.11.27.02.58.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:58:14 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 10:58:16 +0000
Subject: [PATCH 6/9] phy: exynos5-usbdrd: gs101: ensure power is gated to
 SS phy in phy_exit()
MIME-Version: 1.0
Message-Id: <20241127-gs101-phy-lanes-orientation-phy-v1-6-1b7fce24960b@linaro.org>
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
X-CRM114-CacheID: sfid-20241127_025817_133442_7C10AACD 
X-CRM114-Status: GOOD (  10.70  )
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

V2UgY3VycmVudGx5IGRvbid0IGdhdGUgdGhlIHBvd2VyIHRvIHRoZSBTUyBwaHkgaW4gcGh5X2V4
aXQoKS4KClNodWZmbGUgdGhlIGNvZGUgc2xpZ2h0bHkgdG8gZW5zdXJlIHRoZSBwb3dlciBpcyBn
YXRlZCB0byB0aGUgU1MgcGh5IGFzCndlbGwuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3pp
ayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgotLS0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5
LWV4eW5vczUtdXNiZHJkLmMgfCAxMyArKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3Nh
bXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlu
b3M1LXVzYmRyZC5jCmluZGV4IDJhNzI0ZDM2MmMyZC4uYzFjZTZmZGVlZjMxIDEwMDY0NAotLS0g
YS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCisrKyBiL2RyaXZlcnMv
cGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKQEAgLTEyOTYsMTQgKzEyOTYsMTcgQEAg
c3RhdGljIGludCBleHlub3M1X3VzYmRyZF9nczEwMV9waHlfZXhpdChzdHJ1Y3QgcGh5ICpwaHkp
CiAJc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeSAqcGh5X2RyZCA9IHRvX3VzYmRyZF9waHkoaW5z
dCk7CiAJaW50IHJldDsKIAorCWlmIChpbnN0LT5waHlfY2ZnLT5pZCA9PSBFWFlOT1M1X0RSRFBI
WV9VVE1JKSB7CisJCXJldCA9IGV4eW5vczg1MF91c2JkcmRfcGh5X2V4aXQocGh5KTsKKwkJaWYg
KHJldCkKKwkJCXJldHVybiByZXQ7CisJfQorCisJZXh5bm9zNV91c2JkcmRfcGh5X2lzb2woaW5z
dCwgdHJ1ZSk7CisKIAlpZiAoaW5zdC0+cGh5X2NmZy0+aWQgIT0gRVhZTk9TNV9EUkRQSFlfVVRN
SSkKIAkJcmV0dXJuIDA7CiAKLQlyZXQgPSBleHlub3M4NTBfdXNiZHJkX3BoeV9leGl0KHBoeSk7
Ci0JaWYgKHJldCkKLQkJcmV0dXJuIHJldDsKLQotCWV4eW5vczVfdXNiZHJkX3BoeV9pc29sKGlu
c3QsIHRydWUpOwogCXJldHVybiByZWd1bGF0b3JfYnVsa19kaXNhYmxlKHBoeV9kcmQtPmRydl9k
YXRhLT5uX3JlZ3VsYXRvcnMsCiAJCQkJICAgICAgcGh5X2RyZC0+cmVndWxhdG9ycyk7CiB9Cgot
LSAKMi40Ny4wLjMzOC5nNjBjY2ExNTgxOS1nb29nCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
