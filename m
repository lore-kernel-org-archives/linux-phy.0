Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 555BEE7AD58
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 14:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=75nDUUg6HY1Ne6N4nY8bVc4/0hWcGBwRCkxbu4Bj0rM=; b=mbMV9WMHdUM5nT
	HO3VCGrecPUeBVak/xPOijXtv4MqOJ/nDPrnOFJTf8k9ip/TcHOGA4qlqW8nsrhaHNahnJwB/1ho7
	4EY1CaDSl3jmWMOcm3PUn/7US4rkrcpNoljE4tqeqQU+JTfJM9wG0bP+xgvAQDe1ZA/CvJv+y0jnA
	2p68J3y3wds0vJfeK6jgYZHV6E0Yl9OA/fw8SLu4xjaML1M96FzdUL2n9cAsHBotOLnPeC5LrAd9A
	43/6Fd6/aaXX1HMNWTO8+Z8gCjvuxC7aqCUc2bFx1iyyRLyoY++ZvHuLbo8RAidSRQr8HmMuDZPRw
	lSt5e79hM6EE5QNnhpaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qngnd-00Eplx-39;
	Tue, 03 Oct 2023 14:55:01 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qngnZ-00Epks-1V
	for linux-phy@lists.infradead.org;
	Tue, 03 Oct 2023 14:55:00 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5a1d0fee86aso12304107b3.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Oct 2023 07:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696344894; x=1696949694; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ssiq5+nUb5tk+njmXyusvMPmk3vvCvKa/6ALKcbA4us=;
        b=KuCHYIEK9J8oKeyPaRdmJVK49AD2DJe1S6eB6TayZFSwEAVO2Yisv1g6ngInxH8YjH
         V4m2Qbz6HM2+rSDvsAe3qQnu/xSfzHs6S+ATGZ7vL2X7f8tSikimeyqbZjX8I6PfxLzc
         9RCk/xJU6zCm4efo9mtrTpNnXc7cYYQU3V3F9V4LJAY7A2QVO+4AKbjkuF2fYWCyMlhl
         J33Ih9Ihp/4e0rfOG2GMshsr6RFFMcE3gXUQ+ILLH3RB11Jqkm/GGfZ9UgK8JlRJX+S9
         Fh6A9el4oNSlLSEtfIWCvrrxv2iK2ZfOD8HbCirayVk6u9VRX46XofhIVUE3CsgIsVC7
         kY9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696344894; x=1696949694;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ssiq5+nUb5tk+njmXyusvMPmk3vvCvKa/6ALKcbA4us=;
        b=uOcthCs15yxg3HAUwfJlrnb9jDdA9a/9Jpz/bsZLqGgzFaitvlgtE//N4PkMnyE2j2
         NX8dhC9BO7HT2LK8GuTVh0VbTCyrg9/J2LtlvpCsUtAQ7b6u9yS9lYNanKWat4i+H6yQ
         aOougTtLTZJJPOweSaXCmOnr1bMCvT2drDBtIfSDlv6XHlnvb4G4uegojQg9Qd1DuEOS
         KPtmL5WH/ZZra4PsvOmKnPPr/4+l01lUV6kAU3cGCw/i/CkQ3eSffjiXcNjv7NwTXz/v
         nJ1EIrGPIGOGUZ7RSHDmMnrhycFK7wFIcmClyjRHG7hO3yq8rVz4BGv6jRUE/J+ICC60
         9/yg==
X-Gm-Message-State: AOJu0Yy8Robq74bIv88BTZNsK8OgL3uwcoUIodbWvrbKF5b37fTiEpiD
	DY+/v8UGkrrYkRYB+kmD5BgwohwIjTkgM1yQp1Diww==
X-Google-Smtp-Source: AGHT+IE7Tm0+TOjAqbRf3K+J648pOlmhjcx6LMgVgwylE1FTXpvtTVrh5k3zwCUdGOKzzHN3/AU/Q/UGpVey3g+73X8=
X-Received: by 2002:a81:65d6:0:b0:589:f41c:bc63 with SMTP id
 z205-20020a8165d6000000b00589f41cbc63mr13912123ywb.39.1696344894263; Tue, 03
 Oct 2023 07:54:54 -0700 (PDT)
MIME-Version: 1.0
References: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
 <20230929084209.3033093-3-quic_ipkumar@quicinc.com> <412492d1-fcc9-481c-9d28-b208a644ba1d@linaro.org>
 <7975c638-29cf-45ce-9d76-b8a93d750eb7@quicinc.com>
In-Reply-To: <7975c638-29cf-45ce-9d76-b8a93d750eb7@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 3 Oct 2023 17:54:42 +0300
Message-ID: <CAA8EJprhQz_Tj0Bhv6zhGa7h37Ug-Fp6Tof9tNscTFyZzkbJvw@mail.gmail.com>
Subject: Re: [PATCH 2/8] phy: qcom: Introduce Super-Speed USB UNIPHY driver
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org, 
	p.zabel@pengutronix.de, geert+renesas@glider.be, arnd@arndb.de, 
	neil.armstrong@linaro.org, nfraprado@collabora.com, u-kumar1@ti.com, 
	peng.fan@nxp.com, quic_wcheng@quicinc.com, quic_varada@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	quic_kathirav@quicinc.com, quic_nsekar@quicinc.com, quic_srichara@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_075457_530887_96305F80 
X-CRM114-Status: GOOD (  30.45  )
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

On Tue, 3 Oct 2023 at 17:22, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>
>
>
> On 9/30/2023 10:48 PM, Dmitry Baryshkov wrote:
> > On 29/09/2023 11:42, Praveenkumar I wrote:
> >> Adds Qualcomm 22ull Super-Speed USB UNIPHY driver support which
> >> is present in Qualcomm IPQ5332 SoC. This PHY is interfaced with
> >> SNPS DWC3 USB and SNPS DWC PCIe. Either one of the interface
> >> can use the it and selection is done via mux present in TCSR
> >> register. This driver selects the PHY for DWC3 USB and handles
> >> the reset, clocks and regulator.
> >>
> >> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> >> ---
> >>   drivers/phy/qualcomm/Kconfig               |  11 +
> >>   drivers/phy/qualcomm/Makefile              |   1 +
> >>   drivers/phy/qualcomm/phy-qcom-uniphy-usb.c | 322 +++++++++++++++++++++
> >>   3 files changed, 334 insertions(+)
> >>   create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy-usb.c
> >>
> >> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
> >> index d891058b7c39..7257c8455c53 100644
> >> --- a/drivers/phy/qualcomm/Kconfig
> >> +++ b/drivers/phy/qualcomm/Kconfig
> >> @@ -154,6 +154,17 @@ config PHY_QCOM_M31_USB
> >>         management. This driver is required even for peripheral only or
> >>         host only mode configurations.
> >>   +config PHY_QCOM_UNIPHY_USB
> >> +    tristate "Qualcomm USB Super-Speed UNIPHY driver"
> >
> > Can we please have more specific driver name? As I wrote earlier,
> > there are two other (different) kinds of Qualcomm UNI PHY devices:
> > - DSI / HDMI UNIPHY on apq8064 / msm8974 / msm8960 (?)
> > - USB QMP UNI PHY drivers
> >
> > Adding a driver called UNIPHY, which is not related to those two kinds
> > sounds pretty confusing to me.
> This UNIPHY is different from above mentioned ones. This a custom
> version for 22nm on Qualcomm IPQ5332.
> Can we name the driver as phy-qcom-uniphy-usb-ss-22ull.c /
> phy-qcom-usb-ss-22ull.c ?

usb-ss-22ull sounds better. Or maybe usb-ipq-ss

> >
> >> +    depends on USB && (ARCH_QCOM || COMPILE_TEST)
> >> +    select GENERIC_PHY
> >> +    help
> >> +      Enable this to support the Qualcomm USB Super-Speed UNIPHY
> >> transceiver
> >> +      with DWC3 USB core. It handles PHY initialization, clock
> >> +      management required after resetting the hardware and power
> >> +      management. This driver is required even for peripheral only or
> >> +      host only mode configurations.
> >> +
> >>   config PHY_QCOM_USB_HS
> >>       tristate "Qualcomm USB HS PHY module"
> >>       depends on USB_ULPI_BUS
> >> diff --git a/drivers/phy/qualcomm/Makefile
> >> b/drivers/phy/qualcomm/Makefile
> >> index ffd609ac6233..c3e0112a7a70 100644
> >> --- a/drivers/phy/qualcomm/Makefile
> >> +++ b/drivers/phy/qualcomm/Makefile
> >> @@ -17,6 +17,7 @@ obj-$(CONFIG_PHY_QCOM_QMP_USB_LEGACY)    +=
> >> phy-qcom-qmp-usb-legacy.o
> >>   obj-$(CONFIG_PHY_QCOM_QUSB2)        += phy-qcom-qusb2.o
> >>   obj-$(CONFIG_PHY_QCOM_SNPS_EUSB2)    += phy-qcom-snps-eusb2.o
> >>   obj-$(CONFIG_PHY_QCOM_EUSB2_REPEATER)    += phy-qcom-eusb2-repeater.o
> >> +obj-$(CONFIG_PHY_QCOM_UNIPHY_USB)    += phy-qcom-uniphy-usb.o
> >>   obj-$(CONFIG_PHY_QCOM_USB_HS)         += phy-qcom-usb-hs.o
> >>   obj-$(CONFIG_PHY_QCOM_USB_HSIC)     += phy-qcom-usb-hsic.o
> >>   obj-$(CONFIG_PHY_QCOM_USB_HS_28NM)    += phy-qcom-usb-hs-28nm.o
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-usb.c
> >> b/drivers/phy/qualcomm/phy-qcom-uniphy-usb.c
> >> new file mode 100644
> >> index 000000000000..fdfc9c225995
> >> --- /dev/null
> >> +++ b/drivers/phy/qualcomm/phy-qcom-uniphy-usb.c
> >
> > So, is it a USB PHY or UNI PHY (where I would expect that it handles
> > USB and PCIe?)
> It is a USB PHY and the PHY name is UNIPHY. Added the usb in the file
> name to differentiate it.
> >

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
