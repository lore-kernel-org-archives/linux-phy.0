Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5493DC46CD2
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jan 2024 20:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KzLEaSD6664m3zsabePyZKhpPp7ZMhEOz2c8eHWojrw=; b=kryVL8fLu4+gQf
	Qfb4LjgTgkLPshPhU52430jxZXiDiWAl+kQOlYDFuDXwjDyWxm6NoLCJLm1W5/j1W4RA1wffaZYfg
	iBoLsxaeddZ8bAtogquT8TTOxQYnaPV7eftevPA/CZTbVR74vdYtk+3dMsERtE6kdfSzNi02KJcGC
	3hfJKnaVMh6vmrGBEuJYKDurntTm8/WmTQG42BEHPACBXuGNpuQFe5wgTKbKwxHIG1VIcq7pHA4BI
	3xTQ3qsOcN3OBrVnW7PW3H9mF2i9ueA3D6EuISRHh6fx8NaAx1bUyIUbETZm8szA7x6GaeP6wXTyU
	qiQQjcsWTRroF8dGUKFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTpm7-00000008BzP-3cCh;
	Sat, 27 Jan 2024 20:59:39 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTpm2-00000008By5-3K1T
	for linux-phy@lists.infradead.org;
	Sat, 27 Jan 2024 20:59:37 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-427ca22a680so11506771cf.3
        for <linux-phy@lists.infradead.org>; Sat, 27 Jan 2024 12:59:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1706389172; x=1706993972; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xi+XXGXLtGOnaTnHAzpID7MnZZG5IPUxmL4L9FGcLVk=;
        b=NRQalXG7aWebSiSv0yoHDVFKBOXZo1Y14xPYRImZqYgyVFywcnq2L3jKYf6UBS1WmI
         Vdf5r47qNtvJbEIRfdzK2sn4lKvG/9DClb1orMz3HU5E7cZSa6B6tX1x27P3Vdg9atHD
         7AZ0AZn7k6IVjxcCAgP9d5KVg7vxLON1WyXunHe9Wz75zBPkBDhUErDx42gjygBHWpF2
         zQR8MBt24U4ij8DmNhnhjTwesKH3cpU923jbIHYlhfYdgLdDisQ8OhCkSXssuOTHV278
         5qMCLwqxieCawv8F3zQA3Lwp4fUYfeAu4LnFBs2ZzPjk/auaBHxfPHRQudbOq1q1OMl0
         Q+pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706389172; x=1706993972;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xi+XXGXLtGOnaTnHAzpID7MnZZG5IPUxmL4L9FGcLVk=;
        b=BlLEDhlh5pLqLQMj/Fa5QDPPfP8CYo1r1WVYAOQ2LMsfduP5AvjlVKGVP7vH8xtSLE
         cYCEHs7l0GFKXSImfFQ5Hezc+mPUAFQXJxzc5H55UTXYkJCIfb22F+VN64hWQ46cP25p
         0WmsfZTR80eL3JTjKjZrvwn0YSl1w+VlVFl1HwAqLEzEGA0KOqP1nx7mdIg4hzRnIFr1
         EDR1/tVBq+O2en/oeIq0ERmoGaNvO+YwLuf3shVeAOZ1qSEur27Gv33Ph5QjsIxPrbvS
         QvntyrpbNErS/IhmkCcITtX8jrrK2RwFLM4RJ8PhCWHJuPeLuA/Ji9t5bbH7Nu/kTdCt
         NLSQ==
X-Gm-Message-State: AOJu0YwbZcDpPkNwDwGLqGbS0ifZ2ckDOj5SSAMcPsFEsG48abm/P+8k
	XjjuJ9EBCc07RalbPPo8c7p63d5FmnfB8o95hk16sdWP84H8J46BQrJhl5cMfd6Q+ZuSJfInN+I
	eHRCbQFDFbD8teb8C0lNNpwdfALxQXL4121qk3w==
X-Google-Smtp-Source: AGHT+IHfJzVeJM2xkAmUTr8ZLVYE1O6BzSpTjAVfgyKB0IlYK7KettRLZzpgOBAYKoyC3tCT7jMMH6X40Yjsa9zTcz0=
X-Received: by 2002:ac8:5893:0:b0:42a:96ef:6deb with SMTP id
 t19-20020ac85893000000b0042a96ef6debmr1350096qta.61.1706389172118; Sat, 27
 Jan 2024 12:59:32 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com> <20240102-j7200-pcie-s2r-v2-1-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-1-8e4f7d228ec2@bootlin.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sat, 27 Jan 2024 21:59:21 +0100
Message-ID: <CAMRc=MepTF6vV=MwqDNL2_PRjymn18b-RH7TN5TYAGaO=VGDWw@mail.gmail.com>
Subject: Re: [PATCH v2 01/15] gpio: pca953x: move suspend()/resume() to suspend_noirq()/resume_noirq()
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Haojian Zhuang <haojian.zhuang@linaro.org>, 
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, 
	gregory.clement@bootlin.com, theo.lebrun@bootlin.com, 
	thomas.petazzoni@bootlin.com, u-kumar1@ti.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_125935_868652_B1D4499A 
X-CRM114-Status: GOOD (  15.00  )
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

T24gRnJpLCBKYW4gMjYsIDIwMjQgYXQgMzozN+KAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBTb21lIElPcyBjYW4gYmUgbmVlZGVkIGR1
cmluZyBzdXNwZW5kX25vaXJxKCkvcmVzdW1lX25vaXJxKCkuCj4gU28gbW92ZSBzdXNwZW5kKCkv
cmVzdW1lKCkgdG8gbm9pcnEuCj4KPiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgUmljaGFyZCA8dGhv
bWFzLnJpY2hhcmRAYm9vdGxpbi5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3Bpby9ncGlvLXBjYTk1
M3guYyB8IDcgKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3Bpby9ncGlvLXBjYTk1M3guYyBi
L2RyaXZlcnMvZ3Bpby9ncGlvLXBjYTk1M3guYwo+IGluZGV4IDAwZmZhMTY4ZTQwNS4uNmU0OTVm
YzY3YTkzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3Bpby9ncGlvLXBjYTk1M3guYwo+ICsrKyBi
L2RyaXZlcnMvZ3Bpby9ncGlvLXBjYTk1M3guYwo+IEBAIC0xMjM0LDcgKzEyMzQsNyBAQCBzdGF0
aWMgdm9pZCBwY2E5NTN4X3NhdmVfY29udGV4dChzdHJ1Y3QgcGNhOTUzeF9jaGlwICpjaGlwKQo+
ICAgICAgICAgcmVnY2FjaGVfY2FjaGVfb25seShjaGlwLT5yZWdtYXAsIHRydWUpOwo+ICB9Cj4K
PiAtc3RhdGljIGludCBwY2E5NTN4X3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICtzdGF0
aWMgaW50IHBjYTk1M3hfc3VzcGVuZF9ub2lycShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gIHsKPiAg
ICAgICAgIHN0cnVjdCBwY2E5NTN4X2NoaXAgKmNoaXAgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsK
Pgo+IEBAIC0xMjQ4LDcgKzEyNDgsNyBAQCBzdGF0aWMgaW50IHBjYTk1M3hfc3VzcGVuZChzdHJ1
Y3QgZGV2aWNlICpkZXYpCj4gICAgICAgICByZXR1cm4gMDsKPiAgfQo+Cj4gLXN0YXRpYyBpbnQg
cGNhOTUzeF9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ICtzdGF0aWMgaW50IHBjYTk1M3hf
cmVzdW1lX25vaXJxKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgewo+ICAgICAgICAgc3RydWN0IHBj
YTk1M3hfY2hpcCAqY2hpcCA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ICAgICAgICAgaW50IHJl
dDsKPiBAQCAtMTI2OCw3ICsxMjY4LDggQEAgc3RhdGljIGludCBwY2E5NTN4X3Jlc3VtZShzdHJ1
Y3QgZGV2aWNlICpkZXYpCj4gICAgICAgICByZXR1cm4gcmV0Owo+ICB9Cj4KPiAtc3RhdGljIERF
RklORV9TSU1QTEVfREVWX1BNX09QUyhwY2E5NTN4X3BtX29wcywgcGNhOTUzeF9zdXNwZW5kLCBw
Y2E5NTN4X3Jlc3VtZSk7Cj4gK3N0YXRpYyBERUZJTkVfTk9JUlFfREVWX1BNX09QUyhwY2E5NTN4
X3BtX29wcywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGNhOTUzeF9zdXNwZW5k
X25vaXJxLCBwY2E5NTN4X3Jlc3VtZV9ub2lycSk7Cj4KPiAgLyogY29udmVuaWVuY2UgdG8gc3Rv
cCBvdmVybG9uZyBtYXRjaC10YWJsZSBsaW5lcyAqLwo+ICAjZGVmaW5lIE9GXzY1M1goX19ucmdw
aW8sIF9faW50KSAoKHZvaWQgKikoX19ucmdwaW8gfCBQQ0FMNjUzWF9UWVBFIHwgX19pbnQpKQo+
Cj4gLS0KPiAyLjM5LjIKPgoKQWNrZWQtYnk6IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJhcnRvc3ou
Z29sYXN6ZXdza2lAbGluYXJvLm9yZz4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
