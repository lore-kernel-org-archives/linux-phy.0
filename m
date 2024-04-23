Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5D69C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 17:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOi5XM4lRJ98mXY8vUbTb+mHKaHQZKmMPVEVDmh7soQ=; b=gXEMWuRQLv7+aX
	Faanp4ATDXzc1muh0EHuPZmUUDgq8vML8yQYcPF6hpJGHq6KYxu0cwCyvCMJzDvJhaBk3nM2ZKx3w
	kDQq+VzacUAVK8uhhZfxSxc60otUN2SLqlsNYhy6T5xsAlL/7RAQodzQ+TKDtvJ/+zZkbgS6v7PNw
	XfhQhW+3uNg7z7j/9AHhTKYzhu0g3NYHPJzP+ey/1RRS3dVQlODwrXQ1GLfTmX5gxMux/O3w7nbzL
	L7zxOirJaHy8H5nyBeZ82bUPykRGXswDokCDppZolYSa9G/XT4T9ZvTgXCBK3GwEYkDtTW41o8xuE
	PHCvVzBqIpatam+sOn2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzJbb-00000000sTi-4B9n;
	Tue, 23 Apr 2024 17:06:56 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzJbC-00000000sCF-05az
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 17:06:34 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-5171a529224so7493728e87.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 10:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713891988; x=1714496788; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+vUhDKXPklUQaoMg57UftZpfsFphPLc1NzgX6Dyq6FE=;
        b=qLQxNDjaus2SUh0vgz84s5TMZNTmNNLNPjoNFkOSPRq4/JsY/EJWVnkAZEIjwWFjzE
         C6AZhHuYw2H52uM0im8//mO7NhxLuxEzmBDLkwCisAo7qpxqhZ7U5x6+jHG8iYqj7HSl
         KeYM0TFzsUkr67spu286l24zWroyeKY+m95+4h9EJ1gjUpH8N8WIFZdWjiuKcz6rn7is
         CG+RiYYHfXmu7N7r07WwzHKdWSxNT4X8NV+mU3yttUXwva2qPDkLeCZE3jyFCq2dFtLo
         R6dHRJplFPWdjvnQH/eloAyW4jsNSuY1qA113vPZM3eAlmUL4KbnMagvh4/NXYtKxbxu
         qCbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713891988; x=1714496788;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+vUhDKXPklUQaoMg57UftZpfsFphPLc1NzgX6Dyq6FE=;
        b=xUzZlgapBgydFYtB6kDhPBl2rCQBAvvKx6GAnwgXkbLHIOAO8U5ktYbnQdkyi/q3qY
         Sq3VApHM8rZegn9DgXA6bInrTisVhSZdoj1WgR38bfiScNfENQK2MPoqrGqoQGholn97
         SZyOVkvQO04wKrdTIPy61Aa+MkKyf6/nWwx4drU+aVruEvb90DOufOouR/Yd1qzBNbvP
         fVYzkMwmXEqEGhJeZIzlbfs7SqyZdLMd5LGR31lE+QcyCwooPD8Giu3zdt+xZJLSXeG9
         xT6ZuZVvueV00uDBDWvLHIVLWwVp8QukLxwa2DnpqKVZaTu6iTeiyIYLZBuYdlfZ/tKT
         lGDA==
X-Forwarded-Encrypted: i=1; AJvYcCXqPuwQs98i/mBn1geFfzf2eWnfpaHTtWrG2n3TR+EA6ddJUYQxsyP3GruUZLufTT8hNLys49ZIzT24NHzkaQhC3AFAFSoQ3e1zlaTg2A==
X-Gm-Message-State: AOJu0YxImdZpmeVFizebxKRTfZc0qVXLQmn9D7m//VAQ6AyxlgqBTGi9
	A6IQsSKk3T3JpzXokRsank/H/1B18hJK4tS6M9SA26xEz6uYZ9N3CNvgUVbuiZI=
X-Google-Smtp-Source: AGHT+IHQsxS6sDmYaEGjgGyclRauXytdCr8pKx+VVEIvbFcKa7wbKgsNsPSCkF/Ll6Uh5D6/ImEfyw==
X-Received: by 2002:a05:6512:1385:b0:51b:3572:a9a1 with SMTP id fc5-20020a056512138500b0051b3572a9a1mr158584lfb.5.1713891987251;
        Tue, 23 Apr 2024 10:06:27 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id t22-20020a1709063e5600b00a5209dc79c1sm7351624eji.146.2024.04.23.10.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 10:06:26 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 23 Apr 2024 18:06:07 +0100
Subject: [PATCH 5/7] phy: exynos5-usbdrd: uniform order of register bit
 macros
MIME-Version: 1.0
Message-Id: <20240423-usb-phy-gs101-v1-5-ebdcb3ac174d@linaro.org>
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
X-CRM114-CacheID: sfid-20240423_100630_142992_C2BBF96A 
X-CRM114-Status: UNSURE (   8.18  )
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

TW9zdCBvZiB0aGUgbWFjcm9zIGFyZSBvcmRlcmVkIGhpZ2ggLT4gbG93LCBidXQgdGhlcmUgYXJl
IHNvbWUKb3V0bGllcnMuCgpPcmRlciB0aGVtIGFsbCB1bmlmb3JtbHkgZnJvbSBoaWdoIHRvIGxv
dy4gVGhpcyB3aWxsIGFsbG93IGFkZGluZwphZGRpdGlvbmFsIHJlZ2lzdGVyIChmaWVsZCkgZGVm
aW5pdGlvbnMgaW4gYSBjb25zaXN0ZW50IHdheS4KCldoaWxlIGF0IGl0LCBhbHNvIHJlbW92ZSBz
b21lIGV4dHJhIGVtcHR5IGxpbmVzIHRvIGdyb3VwIHJlZ2lzdGVyIGJpdApmaWVsZCBkZWZpbml0
aW9ucyB0b2dldGhlciB3aXRoIHRoZSByZWxldmFudCByZWdpc3Rlci4gVGhpcyBtYWtlcyB0aGUK
cmVnaXN0ZXJzIGVhc2llciB0byBkaXN0aW5ndWlzaCB2aXN1YWxseS4KCk5vIGZ1bmN0aW9uYWwg
Y2hhbmdlLgoKU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGlu
YXJvLm9yZz4KLS0tCiBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIHwg
NDQgKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBp
bnNlcnRpb25zKCspLCAyOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9z
YW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5
bm9zNS11c2JkcmQuYwppbmRleCAwZjkwNzg2ODk4NTYuLjg4YjAzYmI2N2ZmZiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYworKysgYi9kcml2ZXJz
L3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCkBAIC0zNSwxMyArMzUsMTEgQEAKIAog
LyogRXh5bm9zNTogVVNCIDMuMCBEUkQgUEhZIHJlZ2lzdGVycyAqLwogI2RlZmluZSBFWFlOT1M1
X0RSRF9MSU5LU1lTVEVNCQkJMHgwNAotCisjZGVmaW5lIExJTktTWVNURU1fWEhDSV9WRVJTSU9O
X0NPTlRST0wJCUJJVCgyNykKICNkZWZpbmUgTElOS1NZU1RFTV9GTEFESl9NQVNLCQkJKDB4M2Yg
PDwgMSkKICNkZWZpbmUgTElOS1NZU1RFTV9GTEFESihfeCkJCQkoKF94KSA8PCAxKQotI2RlZmlu
ZSBMSU5LU1lTVEVNX1hIQ0lfVkVSU0lPTl9DT05UUk9MCQlCSVQoMjcpCiAKICNkZWZpbmUgRVhZ
Tk9TNV9EUkRfUEhZVVRNSQkJCTB4MDgKLQogI2RlZmluZSBQSFlVVE1JX09UR0RJU0FCTEUJCQlC
SVQoNikKICNkZWZpbmUgUEhZVVRNSV9GT1JDRVNVU1BFTkQJCQlCSVQoMSkKICNkZWZpbmUgUEhZ
VVRNSV9GT1JDRVNMRUVQCQkJQklUKDApCkBAIC00OSw0MCArNDcsMzEgQEAKICNkZWZpbmUgRVhZ
Tk9TNV9EUkRfUEhZUElQRQkJCTB4MGMKIAogI2RlZmluZSBFWFlOT1M1X0RSRF9QSFlDTEtSU1QJ
CQkweDEwCi0KICNkZWZpbmUgUEhZQ0xLUlNUX0VOX1VUTUlTVVNQRU5ECQlCSVQoMzEpCi0KICNk
ZWZpbmUgUEhZQ0xLUlNUX1NTQ19SRUZDTEtTRUxfTUFTSwkJKDB4ZmYgPDwgMjMpCiAjZGVmaW5l
IFBIWUNMS1JTVF9TU0NfUkVGQ0xLU0VMKF94KQkJKChfeCkgPDwgMjMpCi0KICNkZWZpbmUgUEhZ
Q0xLUlNUX1NTQ19SQU5HRV9NQVNLCQkoMHgwMyA8PCAyMSkKICNkZWZpbmUgUEhZQ0xLUlNUX1NT
Q19SQU5HRShfeCkJCQkoKF94KSA8PCAyMSkKLQogI2RlZmluZSBQSFlDTEtSU1RfU1NDX0VOCQkJ
QklUKDIwKQogI2RlZmluZSBQSFlDTEtSU1RfUkVGX1NTUF9FTgkJCUJJVCgxOSkKICNkZWZpbmUg
UEhZQ0xLUlNUX1JFRl9DTEtESVYyCQkJQklUKDE4KQotCiAjZGVmaW5lIFBIWUNMS1JTVF9NUExM
X01VTFRJUExJRVJfTUFTSwkJKDB4N2YgPDwgMTEpCiAjZGVmaW5lIFBIWUNMS1JTVF9NUExMX01V
TFRJUExJRVJfMTAwTUhaX1JFRgkoMHgxOSA8PCAxMSkKICNkZWZpbmUgUEhZQ0xLUlNUX01QTExf
TVVMVElQTElFUl81ME1fUkVGCSgweDMyIDw8IDExKQogI2RlZmluZSBQSFlDTEtSU1RfTVBMTF9N
VUxUSVBMSUVSXzI0TUhaX1JFRgkoMHg2OCA8PCAxMSkKICNkZWZpbmUgUEhZQ0xLUlNUX01QTExf
TVVMVElQTElFUl8yME1IWl9SRUYJKDB4N2QgPDwgMTEpCiAjZGVmaW5lIFBIWUNMS1JTVF9NUExM
X01VTFRJUExJRVJfMTkyMDBLSFpfUkVGCSgweDAyIDw8IDExKQotCi0jZGVmaW5lIFBIWUNMS1JT
VF9GU0VMX1VUTUlfTUFTSwkJKDB4NyA8PCA1KQogI2RlZmluZSBQSFlDTEtSU1RfRlNFTF9QSVBF
X01BU0sJCSgweDcgPDwgOCkKKyNkZWZpbmUgUEhZQ0xLUlNUX0ZTRUxfVVRNSV9NQVNLCQkoMHg3
IDw8IDUpCiAjZGVmaW5lIFBIWUNMS1JTVF9GU0VMKF94KQkJCSgoX3gpIDw8IDUpCiAjZGVmaW5l
IFBIWUNMS1JTVF9GU0VMX1BBRF8xMDBNSFoJCSgweDI3IDw8IDUpCiAjZGVmaW5lIFBIWUNMS1JT
VF9GU0VMX1BBRF8yNE1IWgkJKDB4MmEgPDwgNSkKICNkZWZpbmUgUEhZQ0xLUlNUX0ZTRUxfUEFE
XzIwTUhaCQkoMHgzMSA8PCA1KQogI2RlZmluZSBQSFlDTEtSU1RfRlNFTF9QQURfMTlfMk1IWgkJ
KDB4MzggPDwgNSkKLQogI2RlZmluZSBQSFlDTEtSU1RfUkVURU5BQkxFTgkJCUJJVCg0KQotCiAj
ZGVmaW5lIFBIWUNMS1JTVF9SRUZDTEtTRUxfTUFTSwkJKDB4MDMgPDwgMikKICNkZWZpbmUgUEhZ
Q0xLUlNUX1JFRkNMS1NFTF9QQURfUkVGQ0xLCQkoMHgyIDw8IDIpCiAjZGVmaW5lIFBIWUNMS1JT
VF9SRUZDTEtTRUxfRVhUX1JFRkNMSwkJKDB4MyA8PCAyKQotCiAjZGVmaW5lIFBIWUNMS1JTVF9Q
T1JUUkVTRVQJCQlCSVQoMSkKICNkZWZpbmUgUEhZQ0xLUlNUX0NPTU1PTk9OTgkJCUJJVCgwKQog
CkBAIC0xMDAsMzAgKzg5LDI3IEBACiAjZGVmaW5lIFBIWVJFRzFfQ1JfQUNLCQkJCUJJVCgwKQog
CiAjZGVmaW5lIEVYWU5PUzVfRFJEX1BIWVBBUkFNMAkJCTB4MWMKLQogI2RlZmluZSBQSFlQQVJB
TTBfUkVGX1VTRV9QQUQJCQlCSVQoMzEpCiAjZGVmaW5lIFBIWVBBUkFNMF9SRUZfTE9TTEVWRUxf
TUFTSwkJKDB4MWYgPDwgMjYpCiAjZGVmaW5lIFBIWVBBUkFNMF9SRUZfTE9TTEVWRUwJCQkoMHg5
IDw8IDI2KQogCiAjZGVmaW5lIEVYWU5PUzVfRFJEX1BIWVBBUkFNMQkJCTB4MjAKLQogI2RlZmlu
ZSBQSFlQQVJBTTFfUENTX1RYREVFTVBIX01BU0sJCSgweDFmIDw8IDApCiAjZGVmaW5lIFBIWVBB
UkFNMV9QQ1NfVFhERUVNUEgJCQkoMHgxYykKIAogI2RlZmluZSBFWFlOT1M1X0RSRF9QSFlURVJN
CQkJMHgyNAogCiAjZGVmaW5lIEVYWU5PUzVfRFJEX1BIWVRFU1QJCQkweDI4Ci0KICNkZWZpbmUg
UEhZVEVTVF9QT1dFUkRPV05fU1NQCQkJQklUKDMpCiAjZGVmaW5lIFBIWVRFU1RfUE9XRVJET1dO
X0hTUAkJCUJJVCgyKQogCiAjZGVmaW5lIEVYWU5PUzVfRFJEX1BIWUFEUAkJCTB4MmMKIAogI2Rl
ZmluZSBFWFlOT1M1X0RSRF9QSFlVVE1JQ0xLU0VMCQkweDMwCi0KICNkZWZpbmUgUEhZVVRNSUNM
S1NFTF9VVE1JX0NMS1NFTAkJQklUKDIpCiAKICNkZWZpbmUgRVhZTk9TNV9EUkRfUEhZUkVTVU1F
CQkJMHgzNAorCiAjZGVmaW5lIEVYWU5PUzVfRFJEX0xJTktQT1JUCQkJMHg0NAogCiAvKiBVU0Ig
My4wIERSRCBQSFkgU1MgRnVuY3Rpb24gQ29udHJvbCBSZWc7IGFjY2Vzc2VkIGJ5IENSX1BPUlQg
Ki8KQEAgLTE0NywzMSArMTMzLDMxIEBACiAKIC8qIEV4eW5vczg1MDogVVNCIERSRCBQSFkgcmVn
aXN0ZXJzICovCiAjZGVmaW5lIEVYWU5PUzg1MF9EUkRfTElOS0NUUkwJCQkweDA0Ci0jZGVmaW5l
IExJTktDVFJMX0JVU19GSUxURVJfQllQQVNTKF94KQkJKChfeCkgPDwgNCkKICNkZWZpbmUgTElO
S0NUUkxfRk9SQ0VfUUFDVAkJCUJJVCg4KQorI2RlZmluZSBMSU5LQ1RSTF9CVVNfRklMVEVSX0JZ
UEFTUyhfeCkJCSgoX3gpIDw8IDQpCiAKICNkZWZpbmUgRVhZTk9TODUwX0RSRF9DTEtSU1QJCQkw
eDIwCi0jZGVmaW5lIENMS1JTVF9MSU5LX1NXX1JTVAkJCUJJVCgwKQotI2RlZmluZSBDTEtSU1Rf
UE9SVF9SU1QJCQkJQklUKDEpCiAjZGVmaW5lIENMS1JTVF9QSFlfU1dfUlNUCQkJQklUKDMpCisj
ZGVmaW5lIENMS1JTVF9QT1JUX1JTVAkJCQlCSVQoMSkKKyNkZWZpbmUgQ0xLUlNUX0xJTktfU1df
UlNUCQkJQklUKDApCiAKICNkZWZpbmUgRVhZTk9TODUwX0RSRF9TU1BQTExDVEwJCQkweDMwCiAj
ZGVmaW5lIFNTUFBMTENUTF9GU0VMCQkJCUdFTk1BU0soMiwgMCkKIAogI2RlZmluZSBFWFlOT1M4
NTBfRFJEX1VUTUkJCQkweDUwCi0jZGVmaW5lIFVUTUlfRk9SQ0VfU0xFRVAJCQlCSVQoMCkKLSNk
ZWZpbmUgVVRNSV9GT1JDRV9TVVNQRU5ECQkJQklUKDEpCi0jZGVmaW5lIFVUTUlfRE1fUFVMTERP
V04JCQlCSVQoMikKLSNkZWZpbmUgVVRNSV9EUF9QVUxMRE9XTgkJCUJJVCgzKQotI2RlZmluZSBV
VE1JX0ZPUkNFX0JWQUxJRAkJCUJJVCg0KQogI2RlZmluZSBVVE1JX0ZPUkNFX1ZCVVNWQUxJRAkJ
CUJJVCg1KQorI2RlZmluZSBVVE1JX0ZPUkNFX0JWQUxJRAkJCUJJVCg0KQorI2RlZmluZSBVVE1J
X0RQX1BVTExET1dOCQkJQklUKDMpCisjZGVmaW5lIFVUTUlfRE1fUFVMTERPV04JCQlCSVQoMikK
KyNkZWZpbmUgVVRNSV9GT1JDRV9TVVNQRU5ECQkJQklUKDEpCisjZGVmaW5lIFVUTUlfRk9SQ0Vf
U0xFRVAJCQlCSVQoMCkKIAogI2RlZmluZSBFWFlOT1M4NTBfRFJEX0hTUAkJCTB4NTQKLSNkZWZp
bmUgSFNQX0NPTU1PTk9OTgkJCQlCSVQoOCkKLSNkZWZpbmUgSFNQX0VOX1VUTUlTVVNQRU5ECQkJ
QklUKDkpCi0jZGVmaW5lIEhTUF9WQlVTVkxERVhUCQkJCUJJVCgxMikKLSNkZWZpbmUgSFNQX1ZC
VVNWTERFWFRTRUwJCQlCSVQoMTMpCiAjZGVmaW5lIEhTUF9GU1ZfT1VUX0VOCQkJCUJJVCgyNCkK
KyNkZWZpbmUgSFNQX1ZCVVNWTERFWFRTRUwJCQlCSVQoMTMpCisjZGVmaW5lIEhTUF9WQlVTVkxE
RVhUCQkJCUJJVCgxMikKKyNkZWZpbmUgSFNQX0VOX1VUTUlTVVNQRU5ECQkJQklUKDkpCisjZGVm
aW5lIEhTUF9DT01NT05PTk4JCQkJQklUKDgpCiAKICNkZWZpbmUgRVhZTk9TODUwX0RSRF9IU1Bf
VEVTVAkJCTB4NWMKICNkZWZpbmUgSFNQX1RFU1RfU0lERFEJCQkJQklUKDI0KQoKLS0gCjIuNDQu
MC43NjkuZzNjNDA1MTY4NzQtZ29vZwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
