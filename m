Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 632ADC0218A
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jan 2025 20:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DVq79I13PVn1nZ7WwwLoCKJgMaKtBRrhV4D1PmM8og=; b=mWqs8GboOZo6Ga
	c7U7zp9cONTgIpbq4e8qrT4x8xIv3fJ22AzqT4L98cGt6ICnudcsEFsV2oIzebAe4ac6g1E8JFXjs
	o54x2ADHdzKTvS7uVMgeJLNbe9qT+b724jumUoQPy07mR5atviwtp3xXmXybUBbrjzfDYVjjqI03r
	2/4iZgWM4qFBkL1Sg4Cc6t/BV3vRajEiNgSmna68KYGEDZQQgaykHb7NOT6SY3nCOJP97LMX2J8KH
	RScQ5Cr9hFZ268ZAEEyYGZ7HdMEM9EHcCVd3EwD4Aiap7mNFVaAUr6vNO1BXauS+BbHJlBkAx0fkf
	3ZcBYpS8C+InGGLEu/eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdaiz-00000009X9w-485n;
	Thu, 30 Jan 2025 20:01:17 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdaix-00000009X9M-3GgR
	for linux-phy@lists.infradead.org;
	Thu, 30 Jan 2025 20:01:16 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-385e0e224cbso758021f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 30 Jan 2025 12:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738267274; x=1738872074; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GfOmM15t6GCi/gXpOTSAQVn8+bb5YsUyZ8MqKExsTSg=;
        b=Z0y3BWmSIYsFm6uV7knnJBtRvKeX2ERk5M3QkRWG+FQqbMDewqa0ECFw7l7Osoc97w
         5gNtBAgORTSV7EDgy347HVu5I/vH3hFimNKTkJrb31qSAbbFeMgmEPS9OPhJN5LEzNtB
         pdBw4E3KenHTnrDkWu9fzRPaFtb5k6lxDDOo04yJY4i25BJuIRU9vez6VW7CwZ0+102f
         7MaN614aPL+9HhAy+9rhWRVhM5cx+Z46kWoWumDMwdTmxfg35bQuBObCiqZjsMQ1LJp2
         3D8xq9tk2zwZhnUCtS30at8SS1mNHytpJ3HMzo83c2cmEb/yd4P43r72y39Azy3q0qgS
         aadw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738267274; x=1738872074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GfOmM15t6GCi/gXpOTSAQVn8+bb5YsUyZ8MqKExsTSg=;
        b=sag6n1L6g6Os66joQPJzkItWldz7mrYZ3wi0pdo5KfgXGKWIkwBYoj9uoJGBzzeU8X
         H8LKNRY/wsZ9Uo185XkChgqD6ypawLcQNPOMpM5eu6vKfVw+Il+oFuGrjaXZSYjz3E9o
         dkvhq1Zdz+gmi93vhxFHaG+s8ikVkNGwUSjc//jbESopISDUzD8glJUaNLVVELli4Jnb
         zQU7VnIgF6s3rGdzO7qYResYRpeaLJqg+JI7hoHbhtaub+mjmbQt5mAmMvLlqv5M7QlH
         AyZjPnxgV0402hIC4aOJbz8+H+iSA0wd4BrutmU53tYQTaVmqlRSMhLyLQXZI/ricMWm
         Si8Q==
X-Gm-Message-State: AOJu0YyG6Jk2tTWitkZYZFyRd3Tf5M486eEU91QHWtUv431dAdMWiFiJ
	bUG5AV4MMUfiX/mEi/lINqVEwtJi9GFsUMj+bn0Okn2LYI9354uu9gj/Bg==
X-Gm-Gg: ASbGncsJPHu3qDOcYznaJm1JzqfAMjvy9b2UpymqBisiMwVdG0Cwdpg5d/wMIAn4KtW
	o1aTX0uLVaLpssSPBWS+d9jWhbaKTRUutToYwlyMJst+eKAhTYlcnHMVXVAhl0gxjOlH6QQ0ePi
	jkdw0Cw7scNFHVVhBLzXoCiRbvLzlkzAh/DlODDRvkXYvmActnicEmkMrEdzaRI4fCmNOCKv7kk
	NhI5cJr6IA30Qb24lvdgotIt8seMjAijH2kblgbTJsiJRXln+oSFvO6xwAWs2IQcmJRVZO97uZG
	hFeKLqlcqpmJH6ZBRSclKxdxuyY1o6Ljr6ucI7XmuwFH230ROU6q9w==
X-Google-Smtp-Source: AGHT+IFPStvFpjNXZEIsjMW2EGJ5wmOm9EJKmDiXDJ+zK27gliKKYmMKFPf184s1pxPaWTmh8aGqGA==
X-Received: by 2002:a05:6000:11c9:b0:38c:1270:f961 with SMTP id ffacd0b85a97d-38c520b7c7fmr6273398f8f.46.1738267273958;
        Thu, 30 Jan 2025 12:01:13 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c1b547csm2880284f8f.62.2025.01.30.12.01.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 12:01:13 -0800 (PST)
Date: Thu, 30 Jan 2025 20:01:12 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: linux-phy@lists.infradead.org, open list <linux-kernel@vger.kernel.org>,
 lkft-triage@lists.linaro.org, Linux Regressions
 <regressions@lists.linux.dev>, David Laight <david.laight@aculab.com>,
 Vinod Koul <vkoul@kernel.org>, Adam Ford <aford173@gmail.com>, Arnd
 Bergmann <arnd@arndb.de>, Dan Carpenter <dan.carpenter@linaro.org>, Anders
 Roxell <anders.roxell@linaro.org>, Adam Ford <aford173@gmail.com>, Frieder
 Schrempf <frieder.schrempf@kontron.de>, Vinod Koul <vkoul@kernel.org>
Subject: Re: linus: arm64: error: call to '__compiletime_assert_536'
 declared with attribute error: FIELD_PREP: value too large for the field
Message-ID: <20250130200112.6ba7316e@pumpkin>
In-Reply-To: <CA+G9fYsHGrgZsEEVvP0XMcAhLyCYnrCPgZJ1puT6cfQBCGUB9g@mail.gmail.com>
References: <CA+G9fYsHGrgZsEEVvP0XMcAhLyCYnrCPgZJ1puT6cfQBCGUB9g@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_120115_840485_5EAE0647 
X-CRM114-Status: GOOD (  12.28  )
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

On Thu, 30 Jan 2025 15:22:06 +0530
Naresh Kamboju <naresh.kamboju@linaro.org> wrote:

> The arm64 build failed with defconfig with gcc-8 toolchain failed due to
> following build warnings / errors on the mainline linux master branch.
> But the gcc-13 builds pass.
> 
> First seen on v6.13-9485-g72deda0abee6 on Jan. 30, 2025
> Good:  v6.13-9338-g05dbaf8dd8bf on Jan. 29, 2025
> Bad:  v6.13-9485-g72deda0abee6 on Jan. 30, 2025
> 
> arm64:
>   build:
>     * gcc-8-i386_defconfig
> 
> Reported-by: Linux Kernel Functional Testing
> 
> Build log:
> ---
> ake --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/1/build ARCH=arm64
> CROSS_COMPILE=aarch64-linux-gnu-
> CROSS_COMPILE_COMPAT=arm-linux-gnueabihf- 'CC=sccache
> aarch64-linux-gnu-gcc' 'HOSTCC=sccache gcc'
> In file included from <command-line>:
> In function 'fsl_samsung_hdmi_phy_configure_pll_lock_det.isra.10',
>     inlined from 'fsl_samsung_hdmi_phy_configure' at
> drivers/phy/freescale/phy-fsl-samsung-hdmi.c:469:2:
> include/linux/compiler_types.h:542:38: error: call to
> '__compiletime_assert_536' declared with attribute error: FIELD_PREP:
> value too large for the field
...
> drivers/phy/freescale/phy-fsl-samsung-hdmi.c:344:9: note: in expansion
> of macro 'FIELD_PREP'
>   writeb(FIELD_PREP(REG12_CK_DIV_MASK, div), phy->regs + PHY_REG(12));
>          ^~~~~~~~~~

Yep...
Broken by d567679f2b6a8

Preceded by:
        /* Find int_pllclk speed */
        for (div = 0; div < 4; div++) {
                int_pllclk = pclk / (1 << div);
                if (int_pllclk < (50 * MHZ))
                        break;
        }
with:
#define REG12_CK_DIV_MASK       GENMASK(5, 4)

The compiler has optimised (pessimised?) the code somewhat.
If pclk is very large the loop doesn't 'break' so div == 4.
It then does FIELD_PREP(GENMASK(5, 4), 4) - which is an error.

	David




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
