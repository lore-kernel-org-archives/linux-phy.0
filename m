Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31F23C19F53
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 09:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vovMhXx5bVFUeD6isdU6cb2E/BlM22U7eZr3b+cauhI=; b=eYqXWBlVDiUSdg
	9Z4K8msooi0r0ISrD+1eawXZ6O1iprHYP7015J786Bu3CyOY53xz49zomgDiASzaGkRWiRQHKCbWr
	Bkggf0SkFmLC+r4dVEmxBwWjs2UjblHTEXgTUVwtZB7bUeZdJKVpZPc58xBy3iOi6Fa3JYGpafG+M
	eIhFD7rsuPXh3F9g7YlwrcpfZqsCp7V1uAvPewKccybI1t/W+2wTFth/Kr/tPxLAtJEcU/vjdqsVL
	AxOTNFdFWzTFK8OfwIC4ga4rYuxV21ZX7SE40xSg+ruZeykjCyRn1pTOZ0cYK5FJxGD22C/zeG5he
	SVeESkToE9gBvfud3kOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s268G-00000008wxe-2eQ5;
	Wed, 01 May 2024 09:20:08 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s267s-00000008wil-2O9b
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 09:19:51 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a5200202c1bso859727166b.0
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 02:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714555180; x=1715159980; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gpsAkp1XfiYO3VUkSw1HuWtX6ajnqroh4NpfGPkLszE=;
        b=ol03hnOy20JC4FbONvyVXAXwM0RwvRS31cximDLzvHjUlr9loBs6SWRd7hfqPk9rL6
         jhi+akM1ILscomkqwYufKCiLotboAbK2zIyOdbSH+HbtZPf1gqYB8SC1BJjXleNrS5TY
         H94zaV00n3lUoRunJSHt9Ur3NBA8f2pbKA/0LzokhmlPOmb2FEhaU4vRA8oWa5ITB8Kk
         YMU4x0n1rpZn24643wI6DH7LHuJifvX/G1a+cmZmrw89JX8D7nIxTJIf3PWB4wIlLqP3
         wPFlM0MQXxeAL9Dikpzw87MW+rWEyIPkEO8mrDGfk/fEr6eZbecjPirahKA6hxDtwGFC
         9Yug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714555180; x=1715159980;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gpsAkp1XfiYO3VUkSw1HuWtX6ajnqroh4NpfGPkLszE=;
        b=DvQW23dbyq/atodMoeyl4z5a0+Zfb4xfh51eAHA9SUSHSkt/TGW0NQd0iXVIQtz973
         USxzTppKPN0wu/jc8eDCwmg0zG0hvr5EZiKCPKcO7btFdOvGntLvDqEhvkK67Yt3Dukq
         Zq9WFn8oulpmAyWaZwiiHeruQkInuqVBfSHRrOIgB67QCVTV6/8n4jD16Wi2EY+4W+lR
         c50DkHNZ5ecdsJoL0wtBrAu1uVLGUO6Tiy37Co0+18zC1hDVXg9QVd95bWlZH8AZjfto
         C1AOuj3kQiht0IpQRuhyCFyw/EZIGlJ0JdVWd4sR1z1pNwNelrXFNKVevbEv+JZMvxJp
         aXsg==
X-Forwarded-Encrypted: i=1; AJvYcCVzqJ167vspJRl0bHd8wEsl6L5Bur52iGj8LZRVrjF/qQlhRFnA/fR09VYrPj4gSsouHdslDWxiNqVAG8kKiYT8erFLzyzwOOyzgFgjBQ==
X-Gm-Message-State: AOJu0YzSpnNLrYUbV47050d8Q1k38aY1o2SLXQ5PwSjscS8BEyM6Wenk
	0YHMm/Y8wB47rX/q2xsEapRufUnM7pSgtlinaKrz7jG8dyaSFgZ4TsvSdFT2IR4=
X-Google-Smtp-Source: AGHT+IEkQUXDOOtvuZVGg3nz6KbIVcLBaS3f++uJVokxkU0jYEyvOsaDOInv1XRYLWI7ytlxWsL6ow==
X-Received: by 2002:a17:906:1b4b:b0:a58:c09d:1484 with SMTP id p11-20020a1709061b4b00b00a58c09d1484mr1850250ejg.7.1714555180304;
        Wed, 01 May 2024 02:19:40 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id bw13-20020a170906c1cd00b00a58de09fd92sm5425674ejb.27.2024.05.01.02.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 02:19:39 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 01 May 2024 10:19:41 +0100
Subject: [PATCH v2 6/7] phy: exynos5-usbdrd: convert to clk_bulk for phy
 (register) access
MIME-Version: 1.0
Message-Id: <20240501-usb-phy-gs101-v2-6-ed9f14a1bd6d@linaro.org>
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
X-CRM114-CacheID: sfid-20240501_021944_931981_AC76113B 
X-CRM114-Status: GOOD (  16.94  )
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

SW4gcHJlcGFyYXRpb24gZm9yIHN1cHBvcnQgZm9yIGFkZGl0aW9uYWwgcGxhdGZvcm1zLCBjb252
ZXJ0IHRoZSBwaHkKcmVnaXN0ZXIgYWNjZXNzIGNsb2NrIHRvIHVzaW5nIHRoZSBjbGtfYnVsayBp
bnRlcmZhY2VzLgoKTmV3ZXIgU29DcyBsaWtlIEdvb2dsZSBUZW5zb3IgZ3MxMDEgcmVxdWlyZSBt
b3JlIGNsb2NrcyBmb3IgcmVnaXN0ZXIKYWNjZXNzLCBhbmQgY29udmVydGluZyB0byBjbGtfYnVs
ayBzaW1wbGlmaWVzIGFkZGl0aW9uIG9mIHRob3NlIGV4dHJhCmNsb2Nrcy4KCkdpdmVuIHRoZSBs
aXN0IG9mIHBoeSByZWdpc3RlciBjbG9ja3MgaXMgcmVxdWVzdGVkIGFzIG9wdGlvbmFsLCBJCmhh
dmVuJ3QgbWFkZSBpdCBwbGF0Zm9ybSBzcGVjaWZpYywgYXMgb25seSB0aG9zZSBjbG9ja3MgdGhh
dCBhcmUKYWN0dWFsbHkgZGVjbGFyZWQgKGluIHRoZSBEVCkgd2lsbCBiZSByZXRyaWV2ZWQgYW5k
IHRoZSBjb2RlIGJlaGF2ZXMgYXMKYmVmb3JlIHRoaXMgY2hhbmdlLiBOZXZlcnRoZWxlc3MsIHRo
aXMgcGllY2Ugb2YgdGhlIGNvZGUgaXMgZWFzeSB0bwpjaGFuZ2UgaW4gdGhlIGZ1dHVyZSBpZiB0
aGUgbmVlZCBhcmlzZXMuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJh
c3ppa0BsaW5hcm8ub3JnPgotLS0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNi
ZHJkLmMgfCA0NSArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDMwIGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgYi9kcml2ZXJzL3BoeS9zYW1zdW5n
L3BoeS1leHlub3M1LXVzYmRyZC5jCmluZGV4IDIwMDI4NWZhODIzYi4uYzVhMGM0ODgyYTg2IDEw
MDY0NAotLS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCisrKyBi
L2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKQEAgLTE5NSw3ICsxOTUs
OCBAQCBzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5X2RydmRhdGEgewogICogc3RydWN0IGV4eW5v
czVfdXNiZHJkX3BoeSAtIGRyaXZlciBkYXRhIGZvciBVU0IgMy4wIFBIWQogICogQGRldjogcG9p
bnRlciB0byBkZXZpY2UgaW5zdGFuY2Ugb2YgdGhpcyBwbGF0Zm9ybSBkZXZpY2UKICAqIEByZWdf
cGh5OiB1c2IgcGh5IGNvbnRyb2xsZXIgcmVnaXN0ZXIgbWVtb3J5IGJhc2UKLSAqIEBjbGs6IHBo
eSBjbG9jayBmb3IgcmVnaXN0ZXIgYWNjZXNzCisgKiBAcGh5X2Nsa3M6IHBoeSBjbG9ja3MgZm9y
IHJlZ2lzdGVyIGFjY2VzcworICogQG5fcGh5X2Nsa3M6IG51bWJlciBvZiBwaHkgY2xvY2tzIGZv
ciByZWdpc3RlciBhY2Nlc3MKICAqIEBwaXBlY2xrOiBjbG9jayBmb3IgcGlwZTMgcGh5CiAgKiBA
dXRtaWNsazogY2xvY2sgZm9yIHV0bWkrIHBoeQogICogQGl0cGNsazogY2xvY2sgZm9yIElUUCBn
ZW5lcmF0aW9uCkBAIC0yMTIsNyArMjEzLDggQEAgc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeV9k
cnZkYXRhIHsKIHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgewogCXN0cnVjdCBkZXZpY2UgKmRl
djsKIAl2b2lkIF9faW9tZW0gKnJlZ19waHk7Ci0Jc3RydWN0IGNsayAqY2xrOworCXN0cnVjdCBj
bGtfYnVsa19kYXRhICAqcGh5X2Nsa3M7CisJc2l6ZV90IG5fcGh5X2Nsa3M7CiAJc3RydWN0IGNs
ayAqcGlwZWNsazsKIAlzdHJ1Y3QgY2xrICp1dG1pY2xrOwogCXN0cnVjdCBjbGsgKml0cGNsazsK
QEAgLTQwOCw3ICs0MTAsNyBAQCBzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX3BoeV9pbml0KHN0
cnVjdCBwaHkgKnBoeSkKIAlzdHJ1Y3QgcGh5X3VzYl9pbnN0YW5jZSAqaW5zdCA9IHBoeV9nZXRf
ZHJ2ZGF0YShwaHkpOwogCXN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQgPSB0b191
c2JkcmRfcGh5KGluc3QpOwogCi0JcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHBoeV9kcmQtPmNs
ayk7CisJcmV0ID0gY2xrX2J1bGtfcHJlcGFyZV9lbmFibGUocGh5X2RyZC0+bl9waHlfY2xrcywg
cGh5X2RyZC0+cGh5X2Nsa3MpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKQEAgLTQ1OCw3
ICs0NjAsNyBAQCBzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX3BoeV9pbml0KHN0cnVjdCBwaHkg
KnBoeSkKIAlyZWcgJj0gflBIWUNMS1JTVF9QT1JUUkVTRVQ7CiAJd3JpdGVsKHJlZywgcGh5X2Ry
ZC0+cmVnX3BoeSArIEVYWU5PUzVfRFJEX1BIWUNMS1JTVCk7CiAKLQljbGtfZGlzYWJsZV91bnBy
ZXBhcmUocGh5X2RyZC0+Y2xrKTsKKwljbGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZShwaHlfZHJk
LT5uX3BoeV9jbGtzLCBwaHlfZHJkLT5waHlfY2xrcyk7CiAKIAlyZXR1cm4gMDsKIH0KQEAgLTQ3
MCw3ICs0NzIsNyBAQCBzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX3BoeV9leGl0KHN0cnVjdCBw
aHkgKnBoeSkKIAlzdHJ1Y3QgcGh5X3VzYl9pbnN0YW5jZSAqaW5zdCA9IHBoeV9nZXRfZHJ2ZGF0
YShwaHkpOwogCXN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQgPSB0b191c2JkcmRf
cGh5KGluc3QpOwogCi0JcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHBoeV9kcmQtPmNsayk7CisJ
cmV0ID0gY2xrX2J1bGtfcHJlcGFyZV9lbmFibGUocGh5X2RyZC0+bl9waHlfY2xrcywgcGh5X2Ry
ZC0+cGh5X2Nsa3MpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKQEAgLTQ5Miw3ICs0OTQs
NyBAQCBzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX3BoeV9leGl0KHN0cnVjdCBwaHkgKnBoeSkK
IAkJUEhZVEVTVF9QT1dFUkRPV05fSFNQOwogCXdyaXRlbChyZWcsIHBoeV9kcmQtPnJlZ19waHkg
KyBFWFlOT1M1X0RSRF9QSFlURVNUKTsKIAotCWNsa19kaXNhYmxlX3VucHJlcGFyZShwaHlfZHJk
LT5jbGspOworCWNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKHBoeV9kcmQtPm5fcGh5X2Nsa3Ms
IHBoeV9kcmQtPnBoeV9jbGtzKTsKIAogCXJldHVybiAwOwogfQpAQCAtODI3LDE0ICs4MjksMTQg
QEAgc3RhdGljIGludCBleHlub3M4NTBfdXNiZHJkX3BoeV9pbml0KHN0cnVjdCBwaHkgKnBoeSkK
IAlzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5ICpwaHlfZHJkID0gdG9fdXNiZHJkX3BoeShpbnN0
KTsKIAlpbnQgcmV0OwogCi0JcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHBoeV9kcmQtPmNsayk7
CisJcmV0ID0gY2xrX2J1bGtfcHJlcGFyZV9lbmFibGUocGh5X2RyZC0+bl9waHlfY2xrcywgcGh5
X2RyZC0+cGh5X2Nsa3MpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKIAkvKiBVVE1JIG9y
IFBJUEUzIHNwZWNpZmljIGluaXQgKi8KIAlpbnN0LT5waHlfY2ZnLT5waHlfaW5pdChwaHlfZHJk
KTsKIAotCWNsa19kaXNhYmxlX3VucHJlcGFyZShwaHlfZHJkLT5jbGspOworCWNsa19idWxrX2Rp
c2FibGVfdW5wcmVwYXJlKHBoeV9kcmQtPm5fcGh5X2Nsa3MsIHBoeV9kcmQtPnBoeV9jbGtzKTsK
IAogCXJldHVybiAwOwogfQpAQCAtODQ3LDcgKzg0OSw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zODUw
X3VzYmRyZF9waHlfZXhpdChzdHJ1Y3QgcGh5ICpwaHkpCiAJdTMyIHJlZzsKIAlpbnQgcmV0Owog
Ci0JcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHBoeV9kcmQtPmNsayk7CisJcmV0ID0gY2xrX2J1
bGtfcHJlcGFyZV9lbmFibGUocGh5X2RyZC0+bl9waHlfY2xrcywgcGh5X2RyZC0+cGh5X2Nsa3Mp
OwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKQEAgLTg3MCw3ICs4NzIsNyBAQCBzdGF0aWMg
aW50IGV4eW5vczg1MF91c2JkcmRfcGh5X2V4aXQoc3RydWN0IHBoeSAqcGh5KQogCXJlZyAmPSB+
Q0xLUlNUX0xJTktfU1dfUlNUOwogCXdyaXRlbChyZWcsIHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9E
UkRfQ0xLUlNUKTsKIAotCWNsa19kaXNhYmxlX3VucHJlcGFyZShwaHlfZHJkLT5jbGspOworCWNs
a19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKHBoeV9kcmQtPm5fcGh5X2Nsa3MsIHBoeV9kcmQtPnBo
eV9jbGtzKTsKIAogCXJldHVybiAwOwogfQpAQCAtODgzLDE2ICs4ODUsMjkgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBwaHlfb3BzIGV4eW5vczg1MF91c2JkcmRfcGh5X29wcyA9IHsKIAkub3duZXIJ
CT0gVEhJU19NT0RVTEUsCiB9OwogCitzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHBoeV9jbGtf
bGlzdFtdID0geworCSJwaHkiLAorfTsKKwogc3RhdGljIGludCBleHlub3M1X3VzYmRyZF9waHlf
Y2xrX2hhbmRsZShzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5ICpwaHlfZHJkKQogewogCXVuc2ln
bmVkIGxvbmcgcmVmX3JhdGU7CiAJaW50IHJldDsKIAotCXBoeV9kcmQtPmNsayA9IGRldm1fY2xr
X2dldChwaHlfZHJkLT5kZXYsICJwaHkiKTsKLQlpZiAoSVNfRVJSKHBoeV9kcmQtPmNsaykpIHsK
LQkJZGV2X2VycihwaHlfZHJkLT5kZXYsICJGYWlsZWQgdG8gZ2V0IHBoeSBjbG9ja1xuIik7Ci0J
CXJldHVybiBQVFJfRVJSKHBoeV9kcmQtPmNsayk7Ci0JfQorCXBoeV9kcmQtPm5fcGh5X2Nsa3Mg
PSBBUlJBWV9TSVpFKHBoeV9jbGtfbGlzdCk7CisJcGh5X2RyZC0+cGh5X2Nsa3MgPSBkZXZtX2tj
YWxsb2MocGh5X2RyZC0+ZGV2LCBwaHlfZHJkLT5uX3BoeV9jbGtzLAorCQkJCQkgc2l6ZW9mKCpw
aHlfZHJkLT5waHlfY2xrcyksCisJCQkJCSBHRlBfS0VSTkVMKTsKKwlpZiAoIXBoeV9kcmQtPnBo
eV9jbGtzKQorCQlyZXR1cm4gLUVOT01FTTsKKworCWZvciAoaW50IGkgPSAwOyBpIDwgcGh5X2Ry
ZC0+bl9waHlfY2xrczsgKytpKQorCQlwaHlfZHJkLT5waHlfY2xrc1tpXS5pZCA9IHBoeV9jbGtf
bGlzdFtpXTsKKworCXJldCA9IGRldm1fY2xrX2J1bGtfZ2V0X29wdGlvbmFsKHBoeV9kcmQtPmRl
diwgcGh5X2RyZC0+bl9waHlfY2xrcywKKwkJCQkJIHBoeV9kcmQtPnBoeV9jbGtzKTsKKwlpZiAo
cmV0IDwgMCkKKwkJcmV0dXJuIHJldDsKIAogCXBoeV9kcmQtPnJlZl9jbGsgPSBkZXZtX2Nsa19n
ZXQocGh5X2RyZC0+ZGV2LCAicmVmIik7CiAJaWYgKElTX0VSUihwaHlfZHJkLT5yZWZfY2xrKSkg
ewoKLS0gCjIuNDUuMC5yYzAuMTk3LmdiYWU1ODQwYjNiLWdvb2cKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
