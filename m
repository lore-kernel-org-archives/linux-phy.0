Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35602C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jun 2022 17:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZUozqT4nPjYo3BRcNndFKqAzTcQKKMvQVJBiS3REJM=; b=rarEIGHPQtNuoG
	Gsk02GZ+9bQp0Bn6MKtniPvCLUYlxryd6X77vGp294zKHzQa9lrxpGJO1sWtysZGYw8qjK5ye5Ggy
	RLErT7ToQZIcSE9mvstcxj3etIwaRZ6PglgIR3TwsVFdDSk9FUlq1hwQK6B/VrrFEV3N9PWRZrgHz
	T41l5ZHsKGsHuB/gmJJm8OjM2NE6Mu3EOmr5p68rAeP0z8Btjbwuv40KeX5R3V4flsP21N0rfnL00
	5hJryPhZMZckDHbC6LJrxlv54srGL71C/Ip8JWA0e/YVhBG4+SWOF/iJ1Pat2lKc5gH4MzvZ116J2
	41eKAed3NSRsA+mn10Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyGMh-002Bi4-Iq; Mon, 06 Jun 2022 17:18:07 +0000
Received: from mail-il1-f171.google.com ([209.85.166.171])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyGMU-002Bcy-R6; Mon, 06 Jun 2022 17:17:56 +0000
Received: by mail-il1-f171.google.com with SMTP id f7so12390226ilr.5;
        Mon, 06 Jun 2022 10:17:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=HOgnxEn2ntmtyghL8kOb8yKeTcYGElnyCDEZZ25iRQw=;
        b=NVkElH/1xGARddI9z4u3g2JWpRlwl/V5NGBHzy/BRkiYYuZ6K/dkf+KI6Q+b6DlCnp
         Vm0Gm6NXk7bJTy37LeLGs72orqD+mtUNfNtS43vX1t8nNPQRDbOxdufj70moTl14gGYv
         LekmzHyxr2uq9VpinCzZEJM5TgL2ZMuFXBXAkx1itFYOIqhpsW2xEBe+TXAN/rkP4xPi
         LrRK7nqP3ATeSXPUK+xaDkZ1fKM3Nn9ydadJixXq6VpNs0gQ5cG1hDR2iZUSKfjBuNi0
         k2y8xGZ2TwT0JpwMJ8grdElECaN+knNxn46zO8fKX9vFniov4+UGx9mXnbaeys7MH6rQ
         5iUw==
X-Gm-Message-State: AOAM531zITnCRCLFWIa96LOGLjnawqCENlxsCTa7gPK6RQ9l1wVh4737
	z0ZMr5nPRaqEH3hxn4yi8A==
X-Google-Smtp-Source: ABdhPJxXRz8rpxHVMQETrBoM9cb8XJJozkw5PJACTm4qK/vhBn8tviwY3PyY58j2eoaPB/u3qpK33w==
X-Received: by 2002:a05:6e02:184f:b0:2d3:d0c2:d56a with SMTP id b15-20020a056e02184f00b002d3d0c2d56amr13953839ilv.174.1654535872910;
        Mon, 06 Jun 2022 10:17:52 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id t17-20020a92c0d1000000b002d3da8e4af5sm6121750ilf.23.2022.06.06.10.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 10:17:52 -0700 (PDT)
Received: (nullmailer pid 911134 invoked by uid 1000);
	Mon, 06 Jun 2022 17:17:47 -0000
Date: Mon, 6 Jun 2022 12:17:47 -0500
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Linux Doc Mailing List <linux-doc@vger.kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linux-kernel@vger.kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, "Rafael J. Wysocki" <rafael@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Borislav Petkov <bp@alien8.de>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Dave Hansen <dave.hansen@linux.intel.com>, Federico Vaga <federico.vaga@vaga.pv.it>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Guenter Roeck <linux@roeck-us.net>, 
	Ingo Molnar <mingo@redhat.com>, Jarkko Sakkinen <jarkko@kernel.org>, Jean Delvare <jdelvare@suse.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Markus Mayer <mmayer@broadcom.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, alsa-devel@alsa-project.org, 
	devicetree@vger.kernel.org, keyrings@vger.kernel.org, kvm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-cachefs@redhat.com, 
	linux-gpio@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-m68k@lists.linux-m68k.org, linux-mmc@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org, x86@kernel.org
Subject: Re: [PATCH 00/23] Update Documentation/ cross-references
Message-ID: <20220606171747.GB899329-robh@kernel.org>
References: <cover.1654529011.git.mchehab@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1654529011.git.mchehab@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_101754_953682_E5BD4F8F 
X-CRM114-Status: GOOD (  12.72  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Jun 06, 2022 at 04:25:22PM +0100, Mauro Carvalho Chehab wrote:
> Hi John,
> 
> There were a number of DT binding conversions and other docs change that
> were not updated. Address them, in order to keep the cross-references on
> a sane state.
> 
> Patch series is against v5.19-rc1 (and applies cleanly on the top of
> today's -next).
> 
> Mauro Carvalho Chehab (23):
>   dt-bindings: mfd: bd9571mwv: update rohm,bd9571mwv.yaml reference
>   dt-bindings: interrupt-controller: update brcm,l2-intc.yaml reference
>   dt-bindings: arm: update vexpress-config.yaml references
>   dt-bindings: reset: update st,stih407-powerdown.yaml references
>   dt-bindings: mfd: rk808: update rockchip,rk808.yaml reference
>   dt-bindings: mmc: exynos-dw-mshc: update samsung,pinctrl.yaml
>     reference
>   docs: netdev: update maintainer-netdev.rst reference
>   docs: filesystems: update netfs-api.rst reference
>   Documentation: update watch_queue.rst references
>   Documentation: KVM: update s390-pv.rst reference
>   Documentation: KVM: update amd-memory-encryption.rst references
>   Documentation: KVM: update msr.rst reference
>   Documentation: KVM: update s390-diag.rst reference
>   MAINTAINERS: update arm,hdlcd.yaml reference
>   MAINTAINERS: update arm,komeda.yaml reference
>   MAINTAINERS: update arm,malidp.yaml reference
>   MAINTAINERS: update cortina,gemini-ethernet.yaml reference
>   MAINTAINERS: update dongwoon,dw9807-vcm.yaml reference
>   MAINTAINERS: update maxim,max77693.yaml reference
>   MAINTAINERS: update snps,axs10x-reset.yaml reference
>   objtool: update objtool.txt references
>   ASoC: wm8731: update wlf,wm8731.yaml reference
>   arch: m68k: q40: README: drop references to IDE driver

Applied patches 1-5,17,18,20

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
