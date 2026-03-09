Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 876ACF417EA
	for <linux-phy@archiver.kernel.org>; Mon,  9 Mar 2026 15:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eIbnV2R1wpHQFguQAT3cr02X6ccvvXmhotmJX5Rl4U8=; b=tcbpx2VC3US03c
	aWVg2sVr77b+2gq+v56HpGJiwOXu1Qio9ijS9e2csHvVg988vk5Nya268YLs2c9uoAgGcI4AXF0qc
	FzXg9czlA07+W6ONoICoh9c+ccsvyViy0gVr7GTRbLe3/Zts976/nd+d27PbFOzK+KA+vwzXrSk+s
	y2Rs9txQ631JahpA1/o0uIYWWGgXF/oEXw1LIgzLsdP898uskCAvIbZPLnniHgTeZpGMNQmExNNzd
	FEc7AwKO9vBL1qYSX4QdxhOBgkIB9y4ao3J4CpWD9PeBhTcEUc+yhRZr+f5DTS+o2KGKtmAVMF+nB
	GZ1Jz2ch34VKryevoWQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzcCE-00000007YXw-0eAj;
	Mon, 09 Mar 2026 15:07:02 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzcCC-00000007YXK-0C4w
	for linux-phy@lists.infradead.org;
	Mon, 09 Mar 2026 15:07:01 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5a133b686f7so4695924e87.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Mar 2026 08:06:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773068818; cv=none;
        d=google.com; s=arc-20240605;
        b=gNPGC+M4FwjNvxN+2RByetpnh9nJ1JyWpewCP8Jlo1lLricXOJ8u+Wja8Nhin3RpEC
         d02WMlFv9aUjjDeqzhn9JioMPMYCUaH6CoGeCFO0/RZ/Ai3J3kVGNMIMCfD67GtZ1dYV
         wogdiGjFf70nkDNCJ0pKJql5SznvwDU4FPlBXNLUhOH3xoKbM3Rks25KQxhYoTTNtECu
         lEq1jFH183mbu9YscwK5MUG6go9ENNXfnEL0pxlO1ifTitHLLRazgMg7Xgl6/+AsNX9J
         j0die3pq8V66Q9/qDREwczLRnkyDJGpWbRKiK1y8q9kskIOJ6ZfWdk+Qoog463Iuoq86
         d2xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5tCYLBqDfvBtAEmrKe/1f8U+n/JTrn4BGEWGrJUqdlY=;
        fh=vKXd9M1/oQJ8YANoBZT8W3aseocCRjvA2gqYGCMga5o=;
        b=MOIg3iJUesyvEKjEwXQjLWWdl0FUP7SMT4YOM3j4A4/D4jBQGBBwRTF0ad5eQCBOTN
         mtYuYizzOrCnpACp6bGkRSEycL2BYXuFoNkf8pKz2HiXDFOn6cgCGrBk42VTkC443oKh
         e9amEJizVwFbecre6U2j0py0dK1HuTAeYfZJ2IiJGM1/5tiRygkgZolV2EjzcTm5IMOG
         YrrlxfTUmW0kwkRmD/ZFb7/xAaiXjDeFC6FYO1zVbbYkVrk6hy/Fn+S/gFQTeC325KJQ
         r+SIBldCXiYRNSRba+DZGwveL7ZdM5RgN+2To+zk8UOLcFwxX1lLRz+msl3BRssWHrq7
         ayIQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773068818; x=1773673618; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5tCYLBqDfvBtAEmrKe/1f8U+n/JTrn4BGEWGrJUqdlY=;
        b=d7agiKRllxeemTK+GmEKJBtRPfFPpbAyuvosIXXil5/Qmu0RBMB8P5/a9lGwjeM1Ca
         Loembi56g0KSy+wGCnT8oWFj8GUW+jK8e5YWdcaauUTRmCzH0NOmKDq2OIS8YNUV7Ndk
         qXWp70zsK90kGrugynCt9WzoWtHVzxPnicWGPyKGyoIsBYOi7KF4e/hqdNOroGqkJ9IA
         i7qIs/fbtXO6VJwXLXyQCwQ5MLQVaPayfYG7BPr5v5ZzvvA/PkVPXvvFdscJsnHHpbbH
         Qct56v6Mwm4bGVOFp7cf/Wgk5hT/UL4fvEB4JfY9jiUP2R1rGH6RQrvoAN35kVuLtmGn
         L4zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773068818; x=1773673618;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5tCYLBqDfvBtAEmrKe/1f8U+n/JTrn4BGEWGrJUqdlY=;
        b=OvKFof46UzwBUIGTbRtTTu0mqQ4tQDpP8Dv95yc32596K/Z+dnHOyUfP9yaK8gbyE7
         4lolhJPfu1SAKoDYY30hMoyP8U4OSUIUm79YQofHfKqx54VkWRdk9blY+uPDfmbVGJXK
         wZh2JsxySrnJbkGgiANfXHljpQyQEyuzJ+aPuihCtPlREboJkGTGh1hf8IpfWsviKUyH
         28uYwwU7O9jSVRRnnk9oc2I4hZqmy+oILUsFFVYq5rwh18dU5YI5TQV5iX9hLz+u6RYh
         6d2TM29n4tyDqCPwLnIGeABByJeP7bQt5XMwYa9fnLdrB0dUigsy/Eo2a1W3l3MQB3Pg
         VuIQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7u22qEC0Bq61YZgby0zQerTx4oZvNAbP98Xn9c5YY88T0nbs96h5H8ieTa7AbuBn46PCwLM5neH8=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywqa289DpszsQdGC+c0/1lQ26sDh0f4GxfJQEkuXYy16hpJ4h6Y
	OC/iTDrAaiIFKmUXzSgbgP7s0RAcoLvijSHXYNMjUGe8AqSZUEXSbAhADvrtiNKlMFXuSF+Ma/M
	Fu9wat5RZfCd0y0x9Rn4ELmrv6fvB8D5wsNtC62+/3g==
X-Gm-Gg: ATEYQzzXPEYnZIoK/4s8Z44FXrC5ctrUhPbRc0ygLIANvvXCckCxq9DMD9OamsoquVx
	Z/urvb7v0inSOu3S8JgOtdoC9oKUdTHvg65QbNVFArnocWqP9CjPNkIHQydGPwROIoO+tzXFcwr
	BNCZp47VdhTEL5Z/pu/xOhgDHdJKS32IQ191QZO3dP4GKbMtg4HsD42neB4ZYDwX9qIuSUbyQRz
	b6V8AelWCuC+CcW9xm0IAc2fStd3CEv3wlovbGpqfwAgDUndIkkn8VQ9iCmgX0dV2ADbUcU7Vi/
	INdL4ajp
X-Received: by 2002:ac2:4644:0:b0:5a1:3ab6:6de2 with SMTP id
 2adb3069b0e04-5a13cce183dmr2793114e87.37.1773068817703; Mon, 09 Mar 2026
 08:06:57 -0700 (PDT)
MIME-Version: 1.0
References: <20260226-rz-sdio-mux-v11-0-c2a350f9bbd3@solid-run.com> <CAPDyKFr5NZKEKpV2+GXGnzH9pyyj_TLmMCc3rac8h248srX_dw@mail.gmail.com>
In-Reply-To: <CAPDyKFr5NZKEKpV2+GXGnzH9pyyj_TLmMCc3rac8h248srX_dw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 9 Mar 2026 16:06:20 +0100
X-Gm-Features: AaiRm51gPNstmfmPCbGsevKfnVyHAve3znxWrnZO7sNkn4-s9OVpM21rgVmHXjc
Message-ID: <CAPDyKFqyUsKbp9pgKHsMoOd5Qe_0f9rxsX6C61adQC344eA9Lw@mail.gmail.com>
Subject: Re: [PATCH v11 0/9] mmc: host: renesas_sdhi_core: support configuring
 an optional sdio mux
To: Josua Mayer <josua@solid-run.com>, Peter Rosin <peda@axentia.se>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Vladimir Oltean <olteanv@gmail.com>, Mikhail Anikin <mikhail.anikin@solid-run.com>, 
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_080700_122352_2D29EAA8 
X-CRM114-Status: GOOD (  24.94  )
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

On Thu, 5 Mar 2026 at 17:19, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Thu, 26 Feb 2026 at 14:21, Josua Mayer <josua@solid-run.com> wrote:
> >
> > This series has evolved over time from adding generic mux support for
> > renesas sdhi driver, to partial rewrite of the mux framework.
> >
> > Several drivers have started implementing driver-local managed and
> > unmanaged helper functions for getting and selecting a mux-state object.
> >
> > mmc maintainers have requested that new code shall intreoduce and use
> > generic helper functions that can be shared by all drivers, avoiding
> > code duplication.
> >
> > This series is structured in 5 parts, each of which is self-sufficient
> > depending only on the previous patches. This shall allow the first N
> > patches to be applied even if the last ones need further discussion.
> >
> > 1. Rename driver-local helper functions to avoid name collision with
> >    global version to be introduced later.
> >
> > 2. Implement generic device-managed helper functions in mux core.
> >
> > 3. Convert driver local code from similar patterns to use the newly
> >    added global helpers.
> >
> > 4. Change mux-core Kconfig so that it can be enabled through menuconfig,
> >    without an explicit "select" dependency from other drivers.
> >
> > 5. add dt bindings and driver support for mux in renesas sdhi driver.
> >
> > Signed-off-by: Josua Mayer <josua@solid-run.com>
> > ---
> > Changes in v11:
> > - changed approach to Kconfig making MULTIPLEXER a bool, and adding a
> >   user-visible wrapper for menuconfig.
> >   (Reported-by: Ulf Hansson <ulf.hansson@linaro.org>)
> > - dropped the "default m if COMPILE_TEST".
> >   (Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>)
> > - improved kerneldoc line wrapping.
> > - removed unnecessary changes to original devm_mux_control-get.
> > - fix "reference preceded by free" in mux_state_get function
> > - Link to v10: https://lore.kernel.org/r/20260225-rz-sdio-mux-v10-0-1ee44f2ea112@solid-run.com
> >
>
> [...]
>
> To me, this looks ready for a new try. Unless I hear some objections,
> I intend to apply this as material for v7.1 via my mmc tree on Monday.
>
> The complete series will be available on an immutable branch, for
> other subsystem maintainers to pull in if that turns out to be needed.
> I let you know of more details on Monday.

I have now queued up this series for v7.1 via my next branch.

The series is also available at the immutable "mux" branch (based on
v7.0-rc1) via my mmc tree, which other subsystem maintainers can pull
in if needed.

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
