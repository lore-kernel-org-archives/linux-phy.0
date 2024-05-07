Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38DFEC10F1A
	for <linux-phy@archiver.kernel.org>; Tue,  7 May 2024 14:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8h2rglMTQgzZrV85lnUeQZBDv9LnvNA9+sanY6KkiJE=; b=nrtvmOSrlaaupB
	HrY8YKubL1397wWVSsRRsS4ctOrRdFkEp2rY3VHCKzPlaFgiB5fOibm2MB4Yzuwgg+S60FYGEEeN5
	M8tPfDfBUrX2L3J96Q1j6qN1ORSomQqTfMquMxJ1ENGlWRzT7jAlzJskMgSvIaogrIInmZBTe76bR
	3el1L5i0rkxOGQyhsaJwaSmwMpo1lLJC3L81T426FHaOPggN+UCLzYBn7LKx7xcZHM9jdCMUBiDSS
	SSrv9neiBGt5EkVdeELKtKhju1K9uklXDJqr+UNZpLluBHF1hb8+4EE0G3gjdlnMSGMUueZZHq9E9
	SNnJJYSHx8MX61+nA6TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Laz-0000000BQct-0Wku;
	Tue, 07 May 2024 14:15:05 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Laq-0000000BQRm-3TI6
	for linux-phy@lists.infradead.org;
	Tue, 07 May 2024 14:15:00 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-572a06e47a7so224078a12.3
        for <linux-phy@lists.infradead.org>; Tue, 07 May 2024 07:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715091287; x=1715696087; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5eNwp1KeR6q1csnKLq9DFYvN46m+YqLkkQLc199nW5E=;
        b=IDnKevXcqBx+Jz1whFIQGFQid8dHrkWgk77CN/looAcpHUBKx1rr4Z6fD0ahNXWAw6
         IDwWkgHpVVR8C65hymsAcwUfH6WNKIM77ySsPbxowY1IEMYlAAleOzBy5V/K0o1xEPgI
         X+8qIdhYKtqcSJgCz7t8WkDn7ex75gUO8hnX0Gvllo+M72BvfHyWH6hnmpyoOQ+bmLcF
         1utNDJfPq+vUQfRDqczgTZk/IBmXk5RsV0GH+egH6pTbOo37a5op3h93fFDnHWK48EH7
         K0jgIVBGRO6/QeOrSFEH6ZIscadJ7rGD6JMm1/8YpUrJvJt7ZdRyrnDkJNFPNEY+6IX1
         KIOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715091287; x=1715696087;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5eNwp1KeR6q1csnKLq9DFYvN46m+YqLkkQLc199nW5E=;
        b=MNAPivdVLhZ2Y9z8jWGavxGh8AQYBNNfWQMhoBXgo5juPWqZB9lS2CNO82lOtnSp7d
         nMsBbpHwiuMIMVhoRb8rsFihPhjnfxXnfssVXiK/D6GPfjwCegDS1Qy30JGC+lnQg4cz
         s6mLkalxnDzWVaqxLqFdZEXp153iR/4rFTACS0Rk3l0bh1xPsJKg7odeWvZh4i75j0m6
         eealoNYWq7YIBBEFm95HElkZ6obdQ5xaBjpEHSkZCbnJagwGzgXYUk5xCHyzsIuJ/H58
         BJfR5OJA4sZ4aTIBYC6RxcoJ4nI08SIAVzQBBNyg10BZiOjruqMeJ2myC6eDgBkF6X62
         n24g==
X-Forwarded-Encrypted: i=1; AJvYcCVN+eqc7OkR1zKx1Yp3F1fFOZxkEa5sJF3j7iySopPka82JZ+QsUjDtRuoA/QOnL3MwoeR6EWnJ6ZH+FHJd6PWitwIxT4n8frcfphQG7Q==
X-Gm-Message-State: AOJu0YzmecB87wHWr+jd/D1PRzFaPsdDzq8gswGhJqLn4lpU+EMn8Fg7
	6xQnyRQOUSh2ZseX5EV2RXn3Gu1fzUVUWmAmbLUNZfJrKGoxi/ecsicCv/mBaTw=
X-Google-Smtp-Source: AGHT+IFlhgpaj8s7Ylef1U/lb5hV3d+hj+0ADsOWoK2vF6wUkDdpIOR9A24GskIxbkz+a/2MUnIIDg==
X-Received: by 2002:a50:8d16:0:b0:572:6ab0:6afc with SMTP id s22-20020a508d16000000b005726ab06afcmr9113193eds.33.1715091286727;
        Tue, 07 May 2024 07:14:46 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id x2-20020a056402414200b00572cf08369asm5621928eda.23.2024.05.07.07.14.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 07:14:46 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 07 May 2024 15:14:45 +0100
Subject: [PATCH 2/5] phy: exynos5-usbdrd: convert udelay() to fsleep()
MIME-Version: 1.0
Message-Id: <20240507-samsung-usb-phy-fixes-v1-2-4ccba5afa7cc@linaro.org>
References: <20240507-samsung-usb-phy-fixes-v1-0-4ccba5afa7cc@linaro.org>
In-Reply-To: <20240507-samsung-usb-phy-fixes-v1-0-4ccba5afa7cc@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_071456_988518_57D99B7D 
X-CRM114-Status: GOOD (  10.77  )
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

VGhlIHRpbWVycy1ob3d0byByZWNvbW1lbmRzIHVzaW5nIHVzbGVlcF9yYW5nZSgpIGFuZCBmcmll
bmRzIGFueXRpbWUKd2FpdGluZyBmb3IgPj0gfjEwdXMgaXMgcmVxdWlyZWQuIERvaW5nIHNvIGNh
biBoZWxwIHRoZSB0aW1lciBzdWJzeXN0ZW0KYSBsb3QgdG8gY29hbGVzY2Ugd2FrZXVwcy4KCkFk
ZGl0aW9uYWxseSwgZnNsZWVwKCkgZXhpc3RzIGFzIGEgY29udmVuaWVudCB3cmFwcGVyIHNvIHdl
IGRvIG5vdCBoYXZlCnRvIHRoaW5rIGFib3V0IHdoaWNoIGV4YWN0IHNsZWVwaW5nIGZ1bmN0aW9u
IGlzIHJlcXVpcmVkIGluIHdoaWNoIGNhc2UuCgpDb252ZXJ0IGFsbCB1ZGVsYXkoKSBjYWxscyBp
biB0aGlzIGRyaXZlciB0byB1c2UgZnNsZWVwKCkgdG8gZm9sbG93IHRoZQpyZWNvbW1lbmRhdGFp
b24uCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8u
b3JnPgotLS0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgfCA4ICsr
KystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgYi9k
cml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCmluZGV4IDJhZjE5MmMxNWQ3
OC4uMWIyMDlhYjdhMjY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlu
b3M1LXVzYmRyZC5jCisrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJk
LmMKQEAgLTQ0OCw3ICs0NDgsNyBAQCBzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX3BoeV9pbml0
KHN0cnVjdCBwaHkgKnBoeSkKIAogCXdyaXRlbChyZWcsIHBoeV9kcmQtPnJlZ19waHkgKyBFWFlO
T1M1X0RSRF9QSFlDTEtSU1QpOwogCi0JdWRlbGF5KDEwKTsKKwlmc2xlZXAoMTApOwogCiAJcmVn
ICY9IH5QSFlDTEtSU1RfUE9SVFJFU0VUOwogCXdyaXRlbChyZWcsIHBoeV9kcmQtPnJlZ19waHkg
KyBFWFlOT1M1X0RSRF9QSFlDTEtSU1QpOwpAQCAtNzc5LDExICs3NzksMTEgQEAgc3RhdGljIHZv
aWQgZXh5bm9zODUwX3VzYmRyZF91dG1pX2luaXQoc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeSAq
cGh5X2RyZCkKIAl3cml0ZWwocmVnLCByZWdzX2Jhc2UgKyBFWFlOT1M4NTBfRFJEX0hTUF9URVNU
KTsKIAogCS8qIEZpbmlzaCBQSFkgcmVzZXQgKFBPUj1sb3cpICovCi0JdWRlbGF5KDEwKTsgLyog
cmVxdWlyZWQgYmVmb3JlIGRvaW5nIFBPUj1sb3cgKi8KKwlmc2xlZXAoMTApOyAvKiByZXF1aXJl
ZCBiZWZvcmUgZG9pbmcgUE9SPWxvdyAqLwogCXJlZyA9IHJlYWRsKHJlZ3NfYmFzZSArIEVYWU5P
Uzg1MF9EUkRfQ0xLUlNUKTsKIAlyZWcgJj0gfihDTEtSU1RfUEhZX1NXX1JTVCB8IENMS1JTVF9Q
T1JUX1JTVCk7CiAJd3JpdGVsKHJlZywgcmVnc19iYXNlICsgRVhZTk9TODUwX0RSRF9DTEtSU1Qp
OwotCXVkZWxheSg3NSk7IC8qIHJlcXVpcmVkIGFmdGVyIFBPUj1sb3cgZm9yIGd1YXJhbnRlZWQg
UEhZIGNsb2NrICovCisJZnNsZWVwKDc1KTsgLyogcmVxdWlyZWQgYWZ0ZXIgUE9SPWxvdyBmb3Ig
Z3VhcmFudGVlZCBQSFkgY2xvY2sgKi8KIAogCS8qIERpc2FibGUgc2luZ2xlIGVuZGVkIHNpZ25h
bCBvdXQgKi8KIAlyZWcgPSByZWFkbChyZWdzX2Jhc2UgKyBFWFlOT1M4NTBfRFJEX0hTUCk7CkBA
IC04MzYsNyArODM2LDcgQEAgc3RhdGljIGludCBleHlub3M4NTBfdXNiZHJkX3BoeV9leGl0KHN0
cnVjdCBwaHkgKnBoeSkKIAlyZWcgPSByZWFkbChyZWdzX2Jhc2UgKyBFWFlOT1M4NTBfRFJEX0NM
S1JTVCk7CiAJcmVnIHw9IENMS1JTVF9MSU5LX1NXX1JTVDsKIAl3cml0ZWwocmVnLCByZWdzX2Jh
c2UgKyBFWFlOT1M4NTBfRFJEX0NMS1JTVCk7Ci0JdWRlbGF5KDEwKTsgLyogcmVxdWlyZWQgYmVm
b3JlIGRvaW5nIFBPUj1sb3cgKi8KKwlmc2xlZXAoMTApOyAvKiByZXF1aXJlZCBiZWZvcmUgZG9p
bmcgUE9SPWxvdyAqLwogCXJlZyAmPSB+Q0xLUlNUX0xJTktfU1dfUlNUOwogCXdyaXRlbChyZWcs
IHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfQ0xLUlNUKTsKIAoKLS0gCjIuNDUuMC5yYzEuMjI1
LmcyYTNhZTg3ZTdmLWdvb2cKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
