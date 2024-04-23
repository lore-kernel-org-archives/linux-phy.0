Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F256C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9P4MhuT8TZXgzyVAUWDQtMH4/eIIoogkk6uOmfE6VbY=; b=FC3wwJhhX1KS4H
	yeX/87zhzSef+bjTJ77kglT2/FjSZjS/TFXOc4jZOU38s7VAqKIhQ85/nTr28nA1HRVHmntpwJxZ9
	xqd+tyDtUhWQ/HRkjUTqreC7KCDkrASYJsxgJ44r41B+aSbIaIsPnfVltbddK9y/EsW73QkVKdh4A
	CkRQyPevdWXR+NLcJyd4HlfQU53/4bqGx//8HhMUC08R+HWBXy01ZqORlz4r5sx8aMhfJPOinxh39
	vPII51EjJBecLjgrNQnBQU68Kwv4OFtFVu1I/KfTxxeee+4FVyoEaqFakE1M8PwoAgFDkxseE+Fgj
	A1fGjdiRpKAXj+WfHvuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzJbY-00000000sPf-0WSV;
	Tue, 23 Apr 2024 17:06:52 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzJbA-00000000s9q-0iDT
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 17:06:32 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a556d22fa93so663393166b.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 10:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713891986; x=1714496786; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vTeJ++F/mnm19eqXVShab+zLQp1WnhObbyrG4T/vDvk=;
        b=F4CwJgvoZ49aTnJNSuOxSUjy9K5geKHs/rm0YRxlbY7s2O+1daQowhBDDdKtfCBkg1
         GBnnmBvJ0CEp59uf1ng0rxmtEtXixV5HFUr+OU1rouhNPxlAABBs/9/R8PiYRAb+a5YD
         M+ix/yGYfVXbkP1WlWpyWo96k2WhB0+RsyQthsiV66qqHg1IIuHPOt8OxJgnuQezeQmW
         HJz3N2+IxBWAyZKFv23iY3s4EyFzvc32/9kFx24Tmd8T6KDW+Gd5BJmfoKsWghOHpdLo
         dudlxHI5tO8ZogkDDqCiPM7OXQUQRMfrMxW5mpKnrZDiaKyF4fQ7xKRHEJ07IUr8HVsO
         U5Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713891986; x=1714496786;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vTeJ++F/mnm19eqXVShab+zLQp1WnhObbyrG4T/vDvk=;
        b=pU8EYdDDdHQCsDyOV9oYc0+RO9YreVY8VHGq+eGZLCtdFfnnO08X+ewY6HJbcei551
         kDXgjxCd0QKuXr3V4BIcR9clw3TYWrf4HZa06Va0fKRAcGfCdhTWEsqlFaFpbS6Mqx86
         z49OuPrU2p8024U4TC9HbkRzhqWi6dQ/8i5zTGOixAetmCN4LsXVkVDxvsOfrgrfPlD6
         Dpz8IQf5fT1hP7YZi9R9V6IkOtTJNWOEGymIvWAUkWcSGYYYsXUVbGMmfwxWp2wyPhJ5
         LJcNoPpJksnPJRd1edjyImBnJAu4J2+VsBFa1m0b+No/darAcX3ck5FK7XOU5sLG2rhd
         1rzw==
X-Forwarded-Encrypted: i=1; AJvYcCXAHZl4aHYoPnGD9t04kxKOKHBknIQlnsBBa6PiE52nbgoouCy8Jf2UqEdFpSOZqhqy9JK0cp8mhYRsjkvAFpByntTG3D9PUeVk4KFVLA==
X-Gm-Message-State: AOJu0YxcDHfDE8q1rF/0sIIbgcQkRqTZMiCrZbiFJ+ZyWl+v5xhl1Li5
	RRXR9D1zy+pcWWGPmJibax9yFusegRA5ySiYJIviIP1UokyyntLWFkXz+GbQ4rc=
X-Google-Smtp-Source: AGHT+IGmX8/L0/I9Xfi/12RjpvA/XDSBEjDv0Ba0q/FGDoMM5t1bQJxoQFANCyEahhfvXPMRwfCN7A==
X-Received: by 2002:a17:907:bb92:b0:a58:7505:1968 with SMTP id xo18-20020a170907bb9200b00a5875051968mr2076701ejc.43.1713891986224;
        Tue, 23 Apr 2024 10:06:26 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id t22-20020a1709063e5600b00a5209dc79c1sm7351624eji.146.2024.04.23.10.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 10:06:25 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 23 Apr 2024 18:06:05 +0100
Subject: [PATCH 3/7] phy: exynos5-usbdrd: support isolating HS and SS ports
 independently
MIME-Version: 1.0
Message-Id: <20240423-usb-phy-gs101-v1-3-ebdcb3ac174d@linaro.org>
References: <20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org>
In-Reply-To: <20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org>
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
X-CRM114-CacheID: sfid-20240423_100628_330927_14E047C7 
X-CRM114-Status: GOOD (  12.12  )
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

U29tZSB2ZXJzaW9ucyBvZiB0aGlzIElQIGhhdmUgYmVlbiBpbnRlZ3JhdGVkIHVzaW5nIHNlcGFy
YXRlIFBNVSBwb3dlcgpjb250cm9sIHJlZ2lzdGVycyBmb3IgdGhlIEhTIGFuZCBTUyBwYXJ0cy4g
T25lIGV4YW1wbGUgaXMgdGhlIEdvb2dsZQpUZW5zb3IgZ3MxMDEgU29DLgoKU3VjaCBTb0NzIGNh
biBub3cgc2V0IHBtdV9vZmZzZXRfdXNiZHJkMF9waHlfc3MgaW4gdGhlaXIKZXh5bm9zNV91c2Jk
cmRfcGh5X2RydmRhdGEgZm9yIHRoZSBTUyBwaHkgdG8gdGhlIGFwcHJvcHJpYXRlIHZhbHVlLgoK
VGhlIGV4aXN0aW5nICd1c2JkcmRwaHknIGFsaWFzIGNhbiBub3QgYmUgdXNlZCBpbiB0aGlzIGNh
c2UgYmVjYXVzZQp0aGF0IGlzIG1lYW50IGZvciBkZXRlcm1pbmluZyB0aGUgY29ycmVjdCBQTVUg
b2Zmc2V0IGlmIG11bHRpcGxlCmRpc3RpbmN0IFBIWXMgZXhpc3QgaW4gdGhlIHN5c3RlbSAoYXMg
b3Bwb3NlZCB0byBvbmUgUEhZIHdpdGggbXVsdGlwbGUKaXNvbGF0b3JzKS4KClNpZ25lZC1vZmYt
Ynk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVy
cy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyB8IDI0ICsrKysrKysrKysrKysrLS0t
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMg
Yi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCmluZGV4IGFjMjA4Yjg5
ZjVhNi4uZDY5MTg3YzIyNjEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1l
eHlub3M1LXVzYmRyZC5jCisrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNi
ZHJkLmMKQEAgLTE5Niw2ICsxOTYsNyBAQCBzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5X2RydmRh
dGEgewogCWNvbnN0IHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHlfY29uZmlnICpwaHlfY2ZnOwog
CWNvbnN0IHN0cnVjdCBwaHlfb3BzICpwaHlfb3BzOwogCXUzMiBwbXVfb2Zmc2V0X3VzYmRyZDBf
cGh5OworCXUzMiBwbXVfb2Zmc2V0X3VzYmRyZDBfcGh5X3NzOwogCXUzMiBwbXVfb2Zmc2V0X3Vz
YmRyZDFfcGh5OwogCWJvb2wgaGFzX2NvbW1vbl9jbGtfZ2F0ZTsKIH07CkBAIC0xMDUwLDE2ICsx
MDUxLDYgQEAgc3RhdGljIGludCBleHlub3M1X3VzYmRyZF9waHlfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKIAlpZiAoY2hhbm5lbCA8IDApCiAJCWRldl9kYmcoZGV2LCAiTm90
IGEgbXVsdGktY29udHJvbGxlciB1c2JkcmQgcGh5XG4iKTsKIAotCXN3aXRjaCAoY2hhbm5lbCkg
ewotCWNhc2UgMToKLQkJcG11X29mZnNldCA9IHBoeV9kcmQtPmRydl9kYXRhLT5wbXVfb2Zmc2V0
X3VzYmRyZDFfcGh5OwotCQlicmVhazsKLQljYXNlIDA6Ci0JZGVmYXVsdDoKLQkJcG11X29mZnNl
dCA9IHBoeV9kcmQtPmRydl9kYXRhLT5wbXVfb2Zmc2V0X3VzYmRyZDBfcGh5OwotCQlicmVhazsK
LQl9Ci0KIAkvKiBHZXQgVmJ1cyByZWd1bGF0b3JzICovCiAJcGh5X2RyZC0+dmJ1cyA9IGRldm1f
cmVndWxhdG9yX2dldChkZXYsICJ2YnVzIik7CiAJaWYgKElTX0VSUihwaHlfZHJkLT52YnVzKSkg
ewpAQCAtMTA5NCw2ICsxMDg1LDE5IEBAIHN0YXRpYyBpbnQgZXh5bm9zNV91c2JkcmRfcGh5X3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCXBoeV9kcmQtPnBoeXNbaV0ucGh5
ID0gcGh5OwogCQlwaHlfZHJkLT5waHlzW2ldLmluZGV4ID0gaTsKIAkJcGh5X2RyZC0+cGh5c1tp
XS5yZWdfcG11ID0gcmVnX3BtdTsKKwkJc3dpdGNoIChjaGFubmVsKSB7CisJCWNhc2UgMToKKwkJ
CXBtdV9vZmZzZXQgPSBwaHlfZHJkLT5kcnZfZGF0YS0+cG11X29mZnNldF91c2JkcmQxX3BoeTsK
KwkJCWJyZWFrOworCQljYXNlIDA6CisJCWRlZmF1bHQ6CisJCQlwbXVfb2Zmc2V0ID0gcGh5X2Ry
ZC0+ZHJ2X2RhdGEtPnBtdV9vZmZzZXRfdXNiZHJkMF9waHk7CisJCQlpZiAoaSA9PSBFWFlOT1M1
X0RSRFBIWV9QSVBFMworCQkJICAgICYmIHBoeV9kcmQtPmRydl9kYXRhLT5wbXVfb2Zmc2V0X3Vz
YmRyZDBfcGh5X3NzKQorCQkJCXBtdV9vZmZzZXQgPSBwaHlfZHJkLT5kcnZfZGF0YQorCQkJCQkJ
LT5wbXVfb2Zmc2V0X3VzYmRyZDBfcGh5X3NzOworCQkJYnJlYWs7CisJCX0KIAkJcGh5X2RyZC0+
cGh5c1tpXS5wbXVfb2Zmc2V0ID0gcG11X29mZnNldDsKIAkJcGh5X2RyZC0+cGh5c1tpXS5waHlf
Y2ZnID0gJmRydl9kYXRhLT5waHlfY2ZnW2ldOwogCQlwaHlfc2V0X2RydmRhdGEocGh5LCAmcGh5
X2RyZC0+cGh5c1tpXSk7CgotLSAKMi40NC4wLjc2OS5nM2M0MDUxNjg3NC1nb29nCgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
