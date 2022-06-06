Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 054CBC43334
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jun 2022 20:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94la3yFtoIAoGj6JBz/WtyA1J0vrBs1y987aCxdopTU=; b=w9y7furkwMR2sX
	wo2LV7cO5ib1oPGMMx6wScOipqb9fpRx5eiLX2xiknTFCOMmh9sF8/mJhz2XfnXdkxzsPwPlDopkF
	2gvRFDhZhCXsl6nGIQ3RxQty4hhyVV6//ZBk7LTt+tPNRf6DhmJVtFvr4NmipuVgj3dTc9v8g927E
	Zg7uolsA1ujYrgQ21VP6FP8t3RhFQ92gZP2qz4d42ikrfpqIwYMTRsWskA35Wkt/dqyH67hmfSCaH
	VX0wtdJl9ZC+spjgaEj9xyVC5xfmVmh1hviPlQuncVUGY4bJospW9w2cRqH5qXvCU4oRKIkcoXm2T
	UqOQwvT+P4nS/Ce0L8og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyJjr-002nQX-9u; Mon, 06 Jun 2022 20:54:15 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyJjo-002nPx-W2
	for linux-phy@lists.infradead.org; Mon, 06 Jun 2022 20:54:14 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-f314077115so20680820fac.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Jun 2022 13:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=KZR4S4tS0zB38NFydiChxkC66+hB8f39WxVtHRzvgFU=;
        b=rH1LfLU1pouy+FGVOvz1daFsN0Q3d9uK80+SC3LnT4b9FdBUuuMwO36myTgh8Wbcye
         eh+LzYZA0zxTM9RnaxMnYirlm6QcPU6c+76LIP1E1vwcC5JzugEeGmVrYf8Ks/JTwDa3
         rt4Pu34ZxYNoZYb8kZd6DlDZ2xweSJvR5K9JZl1a8at2FHMiK2X+AILZaGn/jOBm/cXX
         IvVQjztMNLlZSwNzTV4dLBA/3dBasx8jv6bgBJ3JaG7jqVGmOIch98qQOAO7fFgdIpSt
         Koh8nZXEoMmLPffhfXNCMXpDSXGOYpNBEbh8RtvPKYC49QLnt0A9qYIEQ6QdP/Fvro1d
         +Agg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=KZR4S4tS0zB38NFydiChxkC66+hB8f39WxVtHRzvgFU=;
        b=GXxd20sdd6oQJvkaiRVzOYKdNjiCbPnCxfN8RqNDx7BBvMXu6p4ibN0i4UFAg1bcVW
         FsoXONQsa0lHvq1vx2jjcrwGbwCxQl/coyRD0z86aOiqBNSvIDqJj+z0S+fxEZn+dmPg
         +zAFtizMXRRqNy6psgazKvXEQq9LzC2IiFO8Ru84LoW9PDFjYPJA0mvGt4Fds2x7QUXO
         3B/SW7N3KRxRAQ/PCHy2QE+3faxYkDtRq24rILOzpJJacX6t6WOZ1xEsu+9PZ+JGv3Xy
         EpIqeHI6O0UHikQX1eCDH/GG6rIEcF62uUQ5i9sWczUHmXsCr5PX0H3YBVVDuLVEku00
         zGKQ==
X-Gm-Message-State: AOAM532yhPy4p08wj5evvTq3RKpvz8JJjW0WyrQmBi/FkB3w2lElCW2F
	eDILs7xRZuB7fg7grtEWmrQM1A==
X-Google-Smtp-Source: ABdhPJx4V+4+mgi3g71iq5hEroP90EmOGF2DT9TGEv3LwcnWMgt6lB9Xsg7jkhKkUaIME4M99jEgXw==
X-Received: by 2002:a05:6870:8181:b0:f3:2682:ea6b with SMTP id k1-20020a056870818100b000f32682ea6bmr14652136oae.215.1654548852134;
        Mon, 06 Jun 2022 13:54:12 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id bg10-20020a056820080a00b0040e6e53f6bfsm8928165oob.15.2022.06.06.13.54.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 13:54:11 -0700 (PDT)
Date: Mon, 6 Jun 2022 13:56:36 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH v3 00/30] phy: qcom-qmp: split the QMP PHY driver
Message-ID: <Yp5qBJUh3T/qTne0@ripper>
References: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_135413_082120_A19D75DA 
X-CRM114-Status: GOOD (  22.21  )
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

On Thu 02 Jun 00:08 PDT 2022, Dmitry Baryshkov wrote:

> While adding support for the PCIe EP mode support to the QMP driver I
> couldn't help but notice that the QMP PHY driver has slowly become the a
> beast with tons of conditions and corner cases being inserted here and
> there.r
> 
> This an RFC for an attempt to to cleanup the QMP driver by splitting the
> QMP PHY driver into five smaller drivers, each targeting a particular
> family of PHY backends (DP/combo, PCIe, UFS, USB and a separate driver
> for the MSM8996 PCIe PHY). Yes, this results in some code duplication,
> but I hope that the end result is still better than the current
> situation.
> 

With the MODULE_DEVICE_TABLE of the combo PHY corrected, this looks good
to me.

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org> # UFS, PCIe and USB on SC8180X

Regards,
Bjorn

> Changes since RFC v2:
>  - After dicussion with Vinod, revert back to the approach from RFC v1:
>    copy the source and clean it up rather than creating new drivers from
>    the blank space. This lowers the risc of breaking any of the platforms.
>  - Drop common phy-qcom-qmp-lib.c for now. The goal of this patchseries
>    is to be merged early during the development cycle to unblock further
>    QMP driver development. Additional cleanups and code unification can
>    come up later.
> 
> Changes since RFC v1:
>  - Split the patchset to be able to get through the email size
>    limitations
>  - Minor correcions to the split drivers
> 
> Dmitry Baryshkov (30):
>   phy: qcom-qmp: create copies of QMP PHY driver
>   phy: qcom-qmp-combo: drop all non-combo compatibles support
>   phy: qcom-qmp-pcie: drop all non-PCIe compatibles support
>   phy: qcom-qmp-pcie-msm8996: drop all compatibles except
>     msm8996-pcie-phy
>   phy: qcom-qmp-ufs: drop all non-UFS compatibles support
>   phy: qcom-qmp-usb: drop all non-USB compatibles support
>   phy: qcom-qmp-combo: change symbol prefix to qcom_qmp_phy_combo
>   phy: qcom-qmp-pcie: change symbol prefix to qcom_qmp_phy_pcie
>   phy: qcom-qmp-pcie: change symbol prefix to qcom_qmp_phy_pcie_msm8996
>   phy: qcom-qmp-ufs: change symbol prefix to qcom_qmp_phy_ufs
>   phy: qcom-qmp-usb: change symbol prefix to qcom_qmp_phy_usb
>   phy: qcom-qmp: switch to new split QMP PHY driver
>   phy: qcom-qmp: drop old QMP PHY driver source
>   phy: qcom-qmp-combo: drop support for PCIe,UFS PHY types
>   phy: qcom-qmp-pcie: drop support for non-PCIe PHY types
>   phy: qcom-qmp-pcie-msm8996: drop support for non-PCIe PHY types
>   phy: qcom-qmp-ufs: drop support for non-UFS PHY types
>   phy: qcom-qmp-usb: drop support for non-USB PHY types
>   phy: qcom-qmp-combo: cleanup the driver
>   phy: qcom-qmp-pcie: cleanup the driver
>   phy: qcom-qmp-pcie-msm8996: cleanup the driver
>   phy: qcom-qmp-ufs: cleanup the driver
>   phy: qcom-qmp-usb: cleanup the driver
>   phy: qcom-qmp-pcie: drop multi-PHY support
>   phy: qcom-qmp-ufs: drop multi-PHY support
>   phy: qcom-qmp-usb: drop multi-PHY support
>   phy: qcom-qmp-combo: use bulk reset_control API
>   phy: qcom-qmp-pcie: use bulk reset_control API
>   phy: qcom-qmp-pcie-msm8996: use bulk reset_control API
>   phy: qcom-qmp-usb: use bulk reset_control API
> 
>  drivers/phy/qualcomm/Makefile                 |    8 +-
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 2579 +++++++
>  .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 1081 +++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 2404 +++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 1390 ++++
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 2751 +++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.c           | 6350 -----------------
>  7 files changed, 10212 insertions(+), 6351 deletions(-)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb.c
>  delete mode 100644 drivers/phy/qualcomm/phy-qcom-qmp.c
> 
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
