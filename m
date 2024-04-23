Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9128DC4345F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 17:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DMlTm2/MqiNK1pVJ/YsfeOcRLiOnXSQfrtNAlekjE28=; b=LTDjy3cWqP40pf
	qP/tG8lpXdVPCERbP+leYGAYyuVPm3FXdZG13GBpYTuAoMgUI9Q/YV1RZMtqYqZ2Ey8atonyzmUgf
	igaY03/wL2f9u7ozRP+cyjOISkPLcJOsZUL5zxjij8daX9oMqmG6TVncK9fzOZc7HcwNrVlStE2hz
	gDavT33A6fSnuARcqzzImCcnLAgkitmIu2yMrl0keqQjIaOUdmWlBiecZTuCulG63iflczUQVbVYK
	jqux9B/tIg0j5cSqMntyXw0qFTmQSSZ8EeyL/oZHGyl59ZO20D2hcMBeDqEcsKq7leLUptVuhN9pU
	ZoXcbxyh+zGmjwGQvIZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzJbD-00000000sEg-0Det;
	Tue, 23 Apr 2024 17:06:31 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzJb8-00000000s9T-3usf
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 17:06:28 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a55b3d57277so323452566b.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 10:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713891985; x=1714496785; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BF47HR8rwGnW7a+NGpGna006XTjqIwQDe3zUQkmwlF4=;
        b=tXBGXl9zXAAwjutM88KxXu3vSirgYQQGKrAAmo4+e/TYzdebHnyw/O9RPV5//N0NcA
         KzKtiBevYZrLwHdfLn7UGLoDgatP8jU6B1+iE4DfDS9Ij9FJBfaYOvIfQcuP1rnU+4Fj
         /fCL/WQ7fDuei/m6ZRzfYUAcPGjA0KlUuL4/xhaPl/niBFx/4FPkLAUu7DOoOb0ySMgw
         1lKB4AgGQSHhquhQ20cttH5W7W4EL4jr9CSWVDsrYia41F+4k9nBFg78UBdBZ7VTImWE
         z/dkoP4RpprWbUwA7WkD1Yf6xK5GN5pmweXdovDpA2RTsdRs2vZMM/C8yPvaIa+AzjGS
         833w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713891985; x=1714496785;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BF47HR8rwGnW7a+NGpGna006XTjqIwQDe3zUQkmwlF4=;
        b=Lpc0SLH4AnvtomSFgiav2J8Fqaewq7B4hvmIZR4HudjW5uQAJ8lL8c0eLZGJ63IouV
         lBY0S9KELnHBX4p1gxW9dbh1KonP830XKY1CZDaE4zO0OiNQIKzREzEBw1wohYZbZhWd
         4C0rjclIzmsIgmD0nGi8dnDhka3TwtfaPfqzERkiH3Hj09/g4TUFvBfXP84NY2Xw+OLF
         vgQDu9lTkcd2KUUJa6xWasA8PYh2ispbrLX0liBxaRJn+4MaPD+5/Qj+KVj94lsmQqOU
         iSSF275b9+//wVpNEwTQU6hKpKZz8llQCAHVMgyTAp4KCEGwP6nKSavSaqxltVTh25MX
         A2Kw==
X-Forwarded-Encrypted: i=1; AJvYcCW6RQlj4xuf+G8ufBs6W07+hWJUwHAwpyQEl5+HB6eoveHDzjnIvdqlAEa759TJA3Gxk4jArNzN3gS/T/iWwDqrFX3/ori7EqvwX+Elyg==
X-Gm-Message-State: AOJu0Yyls8zo5GoZdZlBxy95trhWE51+fayjDnWgEl0kfs/J48ztNDB+
	9GGCyR4sVW/10X2uIZbAtPYxH021Q2/AFb51TFfk8AvaXZNMmCJ1VJQklz0xlyg=
X-Google-Smtp-Source: AGHT+IGsJUTYp6jPj3zCnglMqmn8IdnSJ9732oBBXj4sEuFPOsBM8m9lsAHScdfHBSn55C1oqSfAww==
X-Received: by 2002:a17:906:259a:b0:a46:65fd:969d with SMTP id m26-20020a170906259a00b00a4665fd969dmr8177311ejb.71.1713891984836;
        Tue, 23 Apr 2024 10:06:24 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id t22-20020a1709063e5600b00a5209dc79c1sm7351624eji.146.2024.04.23.10.06.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 10:06:24 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 0/7] USB31DRD phy support for Google Tensor gs101 (HS & SS)
Date: Tue, 23 Apr 2024 18:06:02 +0100
Message-Id: <20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHrqJ2YC/x3MMQqAMAxA0atIZgNNLQheRRy0pm2WKg2KIt7d4
 viG/x9QLsIKQ/NA4VNUtlxBbQM+zTkyyloN1lhnnO3w0AX3dGNUMoTzEjqm3q7kHdRmLxzk+n/
 j9L4fADc1WF8AAAA=
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_100627_046351_B279BA96 
X-CRM114-Status: UNSURE (   9.39  )
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

VGhpcyBwYXRjaCBzZXJpZXMgYWRkIHN1cHBvcnQgZm9yIHRoZSBFeHlub3MgVVNCIDMuMSBEUkQg
Y29tYm8gcGh5LCBhcyBmb3VuZAppbiBFeHlub3MgOSBTb0NzIGxpa2UgR29vZ2xlIEdTMTAxLiBJ
dCBzdXBwb3J0cyBVU0IgU1MsIEhTIGFuZCBEaXNwbGF5UG9ydCwKYnV0IERpc3BsYXlQb3J0IGlz
IG91dCBvZiBzY29wZSBmb3IgdGhpcyBzZXJpZXMuCgpJbiB0ZXJtcyBvZiBVVE1JKywgdGhpcyBp
cyB2ZXJ5IHNpbWlsYXIgdG8gdGhlIGV4aXN0aW5nIEV4eW5vczg1MApzdXBwb3J0IGluIHRoaXMg
ZHJpdmVyLiBUaGUgZGlmZmVyZW5jZSBpcyB0aGF0IGl0IHN1cHBvcnRzIGJvdGggVVRNSSsKKEhT
KSBhbmQgUElQRTMgKFNTKS4gRmlyc3RseSwgdGhlcmUgYXJlIHNvbWUgcHJlcGFyYXRvcnkgcGF0
Y2hlcyB0byBzaW1wbGlmeQphZGRpdGlvbiwgd2hpbGUgdGhlIGJ1bGsgb2YgdGhlIGNoYW5nZXMg
aXMgYXJvdW5kIHRoZSBTUyBwYXJ0LgoKU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFu
ZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KLS0tCkFuZHLDqSBEcmFzemlrICg3KToKICAgICAgZHQt
YmluZGluZ3M6IHBoeTogc2Ftc3VuZyx1c2IzLWRyZC1waHk6IGFkZCBnczEwMSBjb21wYXRpYmxl
CiAgICAgIHBoeTogZXh5bm9zNS11c2JkcmQ6IHVzZSBleHlub3NfZ2V0X3BtdV9yZWdtYXBfYnlf
cGhhbmRsZSgpIGZvciBQTVUgcmVncwogICAgICBwaHk6IGV4eW5vczUtdXNiZHJkOiBzdXBwb3J0
IGlzb2xhdGluZyBIUyBhbmQgU1MgcG9ydHMgaW5kZXBlbmRlbnRseQogICAgICBwaHk6IGV4eW5v
czUtdXNiZHJkOiBzZXQgcmVmIGNsayBmcmVxIGluIGV4eW5vczg1MF91c2JkcmRfdXRtaV9pbml0
KCkKICAgICAgcGh5OiBleHlub3M1LXVzYmRyZDogdW5pZm9ybSBvcmRlciBvZiByZWdpc3RlciBi
aXQgbWFjcm9zCiAgICAgIHBoeTogZXh5bm9zNS11c2JkcmQ6IGNvbnZlcnQgdG8gY2xrX2J1bGsg
Zm9yIHBoeSAocmVnaXN0ZXIpIGFjY2VzcwogICAgICBwaHk6IGV4eW5vczUtdXNiZHJkOiBzdXBw
b3J0IEV4eW5vcyBVU0JEUkQgMy4xIGNvbWJvIHBoeSAoSFMgJiBTUykKCiAuLi4vYmluZGluZ3Mv
cGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwgICAgICAgICB8ICA3OCArKy0KIGRyaXZlcnMv
cGh5L3NhbXN1bmcvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxIC0KIGRyaXZl
cnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgICAgICAgICAgIHwgNzUzICsrKysr
KysrKysrKysrKysrKystLQogaW5jbHVkZS9saW51eC9zb2Mvc2Ftc3VuZy9leHlub3MtcmVncy1w
bXUuaCAgICAgICAgfCAgIDQgKwogNCBmaWxlcyBjaGFuZ2VkLCA3NTcgaW5zZXJ0aW9ucygrKSwg
NzkgZGVsZXRpb25zKC0pCi0tLQpiYXNlLWNvbW1pdDogYTU5NjY4YTkzOTdlNzI0NWIyNmU5YmU4
NWQyM2YyNDJmZjc1N2FlOApjaGFuZ2UtaWQ6IDIwMjQwNDIzLXVzYi1waHktZ3MxMDEtYWJmM2Ux
NzJkMWM0CgpCZXN0IHJlZ2FyZHMsCi0tIApBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0Bs
aW5hcm8ub3JnPgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
