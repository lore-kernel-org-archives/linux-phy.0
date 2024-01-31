Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75D42C47258
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 10:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0lErVL0REJXFatsiQO/cZG2JL9cvCWuMLvwQLkcUvEI=; b=vi3XFMcoK6vXnj
	3anJ1n4hns++L2SDGZsorEtYTpJPiN+wGNwfnXHErywZxfmnC09pdn6yvt1/t8ZNavAwhsQMqDyRU
	gk4mMpKnFY1xgrXgmeZtGJ+1beIltgOFQRXnyl1zlT5Di54bh+46ex0Twv7R+WeJHvr2wjiNdPJfV
	HVeSFtz1w6ceMcl/5VeMLHXdPP5MDFmNrBb5wXjODScQagTqbtje2sPVBQGTunk3Wgo8VGlmkatiL
	GnOzq1mMr10EcW/k768guk+aLJbQOhSfKknRhEl2lx7cx4C1pyqmSXcVo+bZVsz8QDX7TUonMhlNu
	A9rLEKsQ90g99mHGNJbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV7dz-00000002irM-0NeP;
	Wed, 31 Jan 2024 10:16:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV5bu-00000001zni-1VR7
	for linux-phy@bombadil.infradead.org;
	Wed, 31 Jan 2024 08:06:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=O3NcPrb8t7YnX3CjYpseCkmCegR+NfSEh06RZsASR0w=; b=j3OLvOvKpQJ1V9POunj6XrT109
	CMYqKKz3Pt958/aEwdIjWYqcIBQ+pRX/K4VJS9FspsaPYJ/j96ifZf+/z4rBU2hdei91PWwhws4Ze
	AZt6BOsAs6Q9mNOuW1Plr7V/+lGyfVRyLF5tBEx0OQUR/wa2+A5uaDuvTcZlfWTCaQ8pHm/nzyGRa
	MlH/ONYfae3xr7LD40KtlLtTk1PlcfxMVwN/B/lTQLQNd2472yBUpUgOEVL6WDW1qEK2uFocUgcqe
	0dX2SpRsup6esjI68c2YmFwuSuorw0AM0THUlJ+y06RIkszWzkFKgwiNiljM1L+tkKq5/4YS9qtZU
	UrKfnuMg==;
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV5bp-00000008o8v-3qp8
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 08:06:17 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-60406dba03cso7147167b3.0
        for <linux-phy@lists.infradead.org>; Wed, 31 Jan 2024 00:06:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706688369; x=1707293169; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O3NcPrb8t7YnX3CjYpseCkmCegR+NfSEh06RZsASR0w=;
        b=u9oQlKciKXAE/VqBcCMJ3w1PcLUN0FB5tOH3gmJdLxS1z3O+32iOuNgH3jNvppQanT
         TjttcICg6K9YGY56uERupAslF+WyrB2q/dAMrvOXiDq21xvn6Zd94gjZqs7K1+Ut8gSC
         k8nHWehTCco5yJ1SKIas2dS9iYWrJHTD29I9jGvoPQKEZVrX7fGAclW0rTUUMC44HnF8
         t6OSw4R5rBUHle12Te8Ata8f7atWkSvmqQfzFCCKb+vvWYwEmbjx8J1HbdhS7XoRXqEY
         KTl2MY/hCpJ8iQXxTeS+nmNeKQYf9MKE0meKk/RDFSgub/A+VEl3JAPIDuG6ejIRnjtg
         oeJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706688369; x=1707293169;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O3NcPrb8t7YnX3CjYpseCkmCegR+NfSEh06RZsASR0w=;
        b=JKNzUcmn5/JNdRvBhYZC39+tGi/3yPebU2nKKznTYS3yObcdYp+I2YpEo+A4Pb6jIP
         mX/PWb/VwFbZuTc7czIjmnN0KGoGWTUzLKp5mRTd2dLbOe9yBhnFio39OOmfA9Wrlzp3
         J/OYftfcjAGu4CyZ201cq6JsDJdiVH7XLdGZSKrXc23E3DnbU0oyCD/2WnAJJmmAHd3Y
         TR6hRpcw/5+zCSzpDmEKNqVcBXGHBPQ3DwG//UJWFa7HHjgL94p2if8B4E12BDMRFRAn
         UZksrqfmJ88ILWt5fijpmy81kT4I47QPU07A8kiUvKQSkZF5hepiTDzmqGsjaPWMlHro
         iS2A==
X-Gm-Message-State: AOJu0Yz87nfiU7VYlJgoFlWxkaQvYzugsa7Dl4PyDBgHwewrCTSEv/sP
	CXzY+trKtdxqOkHZcRnK5elR+2fndoS8RAktJpsCvxpuM3Hcx/slxFch6hpL30j3WuMXMJa+l1r
	EEVga4WczFJ5/rdHcKGIFui8ZwbsskcYcYMSQrA==
X-Google-Smtp-Source: AGHT+IHwBZYKjdPkSD3Jf+XYtxk1vkFmihVDnoguJobWmbAAdRRE+yQJUmDl9KcK+DvSlc7YoXrqNhzXKL6xw0pFg2I=
X-Received: by 2002:a05:690c:954:b0:602:ce22:7079 with SMTP id
 cc20-20020a05690c095400b00602ce227079mr618106ywb.41.1706688368926; Wed, 31
 Jan 2024 00:06:08 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com> <20240102-j7200-pcie-s2r-v1-2-84e55da52400@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v1-2-84e55da52400@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 31 Jan 2024 09:05:57 +0100
Message-ID: <CACRpkdZ8Yx_8MoV3eedm14GfyJCm2WVdY=nQ9sEQVeoeec+2ZQ@mail.gmail.com>
Subject: Re: [PATCH 02/14] pinctrl: pinctrl-single: move suspend/resume to suspend_noirq/resume_noirq
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
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
X-CRM114-CacheID: sfid-20240131_080615_415017_0CB5E473 
X-CRM114-Status: UNSURE (   9.57  )
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

T24gTW9uLCBKYW4gMTUsIDIwMjQgYXQgNToxNuKAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cgo+IFRoZSBnb2FsIGlzIHRvIGV4dGVuZCB0aGUg
YWN0aXZlIHBlcmlvZCBvZiBwaW5jdHJsLgo+IFNvbWUgZGV2aWNlcyBtYXkgbmVlZCBhY3RpdmUg
cGluY3RybCBhZnRlciBzdXNwZW5kIGFuZC9vciBiZWZvcmUgcmVzdW1lLgo+IFNvIG1vdmUgc3Vz
cGVuZC9yZXN1bWUgdG8gc3VzcGVuZF9ub2lycS9yZXN1bWVfbm9pcnEgdG8gaGF2ZSBhY3RpdmUK
PiBwaW5jdHJsIHVudGlsIHN1c3BlbmRfbm9pcnEgKGluY2x1ZGVkKSwgYW5kIGZyb20gcmVzdW1l
X25vaXJxCj4gKGluY2x1ZGVkKS4KPgo+IFRoZSBkZXByZWNhdGVkIEFQSSBoYXMgYmVlbiByZW1v
dmVkIHRvIHVzZSB0aGUgbmV3IG9uZSAoZGV2X3BtX29wcyBzdHJ1Y3QpLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogVGhvbWFzIFJpY2hhcmQgPHRob21hcy5yaWNoYXJkQGJvb3RsaW4uY29tPgoKVGhpcyBu
ZWVkcyB0ZXN0aW5nIG9uIE9NQVAgYW5kIEFDSyBmcm9tIFRvbnkgYmVmb3JlIEkgY2FuIG1lcmdl
IGl0LgpQcmVmZXJhYmx5IEhhb2ppYW4gc2hvdWxkIHRlc3QgaXQgdG9vLCB0aGlzIGlzIGEgcHJl
dHR5IHNlcmlvdXMgc2VtYW50aWMKY2hhbmdlLgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
