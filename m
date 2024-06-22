Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86B26C27C4F
	for <linux-phy@archiver.kernel.org>; Sat, 22 Jun 2024 00:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEM1FfFgaWDxCb8Z/SfHIrVdDERMPUfC93Tu6VAssMU=; b=iB3VvLMgdKwtDf
	IWzdbo/Hg3D65Dz4KlP5o4L4HMH6wBbxWzce4HxRz51KLJpv/bfaNnKyNGe3fwomiLKUmUc5Z2mon
	tPMcHuVRH0nNohbid9ofgsFe21f1vTvibHYykETxv1bMokJSJqde0VaTYQm9A4vuabW/vrgdqDvqT
	MQh5FTLk6jAwR1SfhFWYxNP9aRDwmqjPSYgstLgRNUJcUwDcdXakhdmLysV2+6nzL9yfpAFJJt6lA
	uCIblIIvLTHHJIwSjdKcuKXznYQ+qJb+JEJIscepny4bqmK6ASiN+xF7yg39rNhW28+RY/GQistsm
	Zm+vsTJ9bqz1DJ39GIrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKoYl-0000000B0vB-0len;
	Sat, 22 Jun 2024 00:24:51 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKoYh-0000000B0uR-3pI4
	for linux-phy@lists.infradead.org;
	Sat, 22 Jun 2024 00:24:49 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1f70ec6ff8bso231935ad.0
        for <linux-phy@lists.infradead.org>; Fri, 21 Jun 2024 17:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719015887; x=1719620687; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PRP3VQE1AP3bnFtc/gjNPrEWREESeBel3PS2LQJhyUA=;
        b=SGIWAhsURvV+RAtEJyE75k4EDUr2+hh1JEV/JyQwPX/Lhmmt9L/4wb5EGB/Eo/e1C2
         EsBtxgINAPcCBQWDSXGpV59qAM0iN6i8jBXxwOmB8GYMPBL73UVRgM9VTTvwaAUn5xP2
         CNP2NmnCFE5nNP7WyLv/KfdmoqDkMhUbjOU4XJFjiA/HHJRq0sHub8krfzZ4Wk3vld/H
         FrG4AFtZHSaONf5Jjj/n0fYUdxH4+4FApil9l3ejgFHpJAnmI7mqo2oUDd9KJStQyKG4
         97nDJob+g2+W/S9SSFIdoDR7QUx0Xoi0G7NPlkiU6ySnKqVzPDkr3inwHIjmVrg5GJgg
         03eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719015887; x=1719620687;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PRP3VQE1AP3bnFtc/gjNPrEWREESeBel3PS2LQJhyUA=;
        b=oXCBw18AAk2WWcZDuja48mtcHFjA/KgNH9F3QL0Pxmbc2HwOwBHQKGSE6u+OAkSDxo
         gd+2tgOOLYmGj6jenkxOq9wGngFB1kAcd84xu3wEPqkpRmcnEOh7Go35P0qO+LyhUowI
         pGWLVO5B3/81JDTd3W+PUqGAFtIdfN1IRaZAWQ2eXW/zU+lr6Darwd0fVlsT7srXAOvE
         wTdbrLaLPHZULqq4BT7say5zq9RvxFEK+7BUUCYistl2CE7Vs/M9MU/rmpaF0nQp+oFs
         0C46M0SWVPPv4i5u7Fb5eo5LBDExC7MT5yv2nw4C0wAIsug5xE5IDN0KR2hkS6ajVmBB
         XnbA==
X-Forwarded-Encrypted: i=1; AJvYcCWbf3DlQGVLyOapsaU/u2qQjZy19gFkOUmiWhAQPxUJjynlbHHdNmrH5yyi/pnlSX0WHxAE9n+MBi+Bjh2nddyflwAR1PIbj6CmXsQxAw==
X-Gm-Message-State: AOJu0Yy34opZH0qkJMJI45MP5XY5lqoPe1kYYPSHYwZpRjKaRoEQdeHv
	k5JBoVygJtSkRgSpEmtXHhU4qKP0iyw2e7eDde7LuUL0emuIHQ+wTSD/MJEoMQ==
X-Google-Smtp-Source: AGHT+IFMfnpYUYjQkDCI2TK2G2mhr4HnvdZTpVXgoabwYY/WwRqlge71giClqijFHgaHOR3qCIehLw==
X-Received: by 2002:a17:902:8bc1:b0:1f9:ab5b:1716 with SMTP id d9443c01a7336-1fa09ff289dmr872725ad.6.1719015886719;
        Fri, 21 Jun 2024 17:24:46 -0700 (PDT)
Received: from google.com (7.104.168.34.bc.googleusercontent.com. [34.168.104.7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9ebbb27acsm19903955ad.247.2024.06.21.17.24.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 17:24:46 -0700 (PDT)
Date: Fri, 21 Jun 2024 17:24:42 -0700
From: William McVicker <willmcvicker@google.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v3 0/6] USB31DRD phy support for Google Tensor gs101 (HS
 & SS)
Message-ID: <ZnYZyoUytCfParSb@google.com>
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_172447_981047_6B045284 
X-CRM114-Status: GOOD (  30.06  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 06/17/2024, Andr=E9 Draszik wrote:
> This patch series adds support for the Exynos USB 3.1 DRD combo phy, as
> found in Exynos 9 SoCs like Google GS101. It supports USB SS, HS and
> DisplayPort, but DisplayPort is out of scope for this series.
> =

> In terms of UTMI+, this is very similar to the existing Exynos850
> support in this driver. The difference is that it supports both UTMI+
> (HS) and PIPE3 (SS). Firstly, there are some preparatory patches to conve=
rt
> this driver to using the clk_bulk and regulator_bulk APIs to simplify
> addition, while the bulk of the changes is around the SS part.
> =

> Dependencies on other patches:
> While there is no compile or link time dependency, for USB to actually wo=
rk
> this series also requires Peter's syscon changes from
> https://lore.kernel.org/all/20240614140421.3172674-1-peter.griffin@linaro=
.org/
> =

> To: Vinod Koul <vkoul@kernel.org>
> To: Kishon Vijay Abraham I <kishon@kernel.org>
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: Peter Griffin <peter.griffin@linaro.org>
> To: Marek Szyprowski <m.szyprowski@samsung.com>
> To: Sylwester Nawrocki <s.nawrocki@samsung.com>
> To: Alim Akhtar <alim.akhtar@samsung.com>
> To: Sam Protsenko <semen.protsenko@linaro.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Tudor Ambarus <tudor.ambarus@linaro.org>
> Cc: Will McVicker <willmcvicker@google.com>
> Cc: Roy Luo <royluo@google.com>
> Cc: kernel-team@android.com
> Cc: linux-phy@lists.infradead.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-samsung-soc@vger.kernel.org
> Signed-off-by: Andr=E9 Draszik <andre.draszik@linaro.org>
> =

> Changes in v3:
> - drop patch 'phy: exynos5-usbdrd: use exynos_get_pmu_regmap_by_phandle()
>   for PMU regs'. This is not needed anymore with Peter's syscon series
>   mentioned above (Krzysztof).
> - drop those patches that have already been merged via
>   https://lore.kernel.org/all/20240507-samsung-usb-phy-fixes-v1-0-4ccba5a=
fa7cc@linaro.org/
> - update device tree binding 'reg-names' (Krzysztof)
> - use clk_bulk and regulator_bulk APIs throughout to simplify addition of
>   gs101 support as preparatory patches
> - patch 1: add required but missing regulators
> - patch 4:
>     * make the register access clock name(s) platform specific and avoid
>       use of devm_clk_bulk_get_optional() as we want to be sure to have
>       retrieved all required clocks
>     * fix a whitespace issue
>     * slightly rephrase commit message
> - patch 6:
>     * set unused callback pointers to NULL in gs101_tunes[]
>     * implement missing regulator support and enable power to phy before =
any
>       register access
>     * add more phy tunes
>     * move PTS_UTMI_POSTINIT utmi phy tuning to before completion of POR
>       sequence, as per datasheet
>     * group gs101 related symbols closer to each other =

> - Link to v2: https://lore.kernel.org/r/20240501-usb-phy-gs101-v2-0-ed9f1=
4a1bd6d@linaro.org
> =

> Changes in v2:
> - avoid having nested else/if in the DT binding (Rob)
> - add missing bitfield.h include
> - Link to v1: https://lore.kernel.org/r/20240423-usb-phy-gs101-v1-0-ebdcb=
3ac174d@linaro.org
> =

> ---
> Andr=E9 Draszik (6):
>       dt-bindings: phy: samsung,usb3-drd-phy: add gs101 compatible
>       phy: exynos5-usbdrd: support isolating HS and SS ports independently
>       phy: exynos5-usbdrd: convert core clocks to clk_bulk
>       phy: exynos5-usbdrd: convert (phy) register access clock to clk_bulk
>       phy: exynos5-usbdrd: convert Vbus supplies to regulator_bulk
>       phy: exynos5-usbdrd: support Exynos USBDRD 3.1 combo phy (HS & SS)
> =

>  .../bindings/phy/samsung,usb3-drd-phy.yaml         |  77 +-
>  drivers/phy/samsung/phy-exynos5-usbdrd.c           | 958 +++++++++++++++=
++----
>  include/linux/soc/samsung/exynos-regs-pmu.h        |   4 +
>  3 files changed, 893 insertions(+), 146 deletions(-)
> ---
> base-commit: 6906a84c482f098d31486df8dc98cead21cce2d0
> change-id: 20240423-usb-phy-gs101-abf3e172d1c4
> =

> Best regards,
> -- =

> Andr=E9 Draszik <andre.draszik@linaro.org>
> =


Thanks Andre! I tested this out on my Pixel 6 Pro. I verified the USB modul=
es
load and probe as expected. I also verified my device is detected via adb o=
n my
host machine. However, occasionally when I boot from RAM the device doesn't
come up via adb compared to when I flash and run `fastboot reboot`. So there
must be something happening differently when booting from fastboot mode ver=
sus
a reboot. Specifically, when I flash the kernel and run `fastboot reboot`, =
adb
has always come up, but booting the kernel from RAM results in about 30% adb
detection fail rate. I'll keep an eye on this.

$ adb shell lsmod
Module                  Size  Used by
at24                   24576  0
dwc3_exynos            12288  0
i2c_exynos5            28672  0
ufs_exynos             32768  0
phy_exynos_ufs         20480  1
phy_exynos5_usbdrd     36864  2
s3c2410_wdt            24576  0
arm_dsu_pmu            24576  0

Thanks,
Will

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
