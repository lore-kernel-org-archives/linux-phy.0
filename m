Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4F0FC54E67
	for <linux-phy@archiver.kernel.org>; Fri, 15 Mar 2024 18:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vblaJb1oG3tG2XIxNqjUonvOHB1Gni2VQXaPYlg5jSE=; b=A0G9XdCltFz3tE
	ybpYmNaMPmptX/aSxybw/z5gpa8VtAw1Gb3dv9hImgP/lXGGnShcTKuD+G5xkkCn1OEfKU3FD4Hg9
	lGuxKYIT8rfokfN9tRbsN68Dd9DTChZnkhZDUNLTLfvn3R9OzxE/TU4LwLeWVwgORbjvINY9LRNPx
	kXikqBD8TxgG3jeuxYkC7dUHaWORCIMsRZGMyfGeldSCm3qjZw1/QCDUIjHhqMb4uKekkD99TOhUg
	QcGl7f9tqnuowZB4hHQQOMd5nAeYB3YtvOi2Xr855MJLAMEMFaYDDa7GzUqDrH06ZX2kpN9OMzgfV
	D7TqlKR/o3VFDiOOS5aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlCLh-00000001BH1-1T8t;
	Fri, 15 Mar 2024 18:32:09 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlBDl-00000000yTa-1Tlj
	for linux-phy@lists.infradead.org;
	Fri, 15 Mar 2024 17:19:56 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-568aa3096e9so1889829a12.0
        for <linux-phy@lists.infradead.org>; Fri, 15 Mar 2024 10:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1710523189; x=1711127989; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WqOLIAmZ2SnT8ACFOblj+3Ee/qV/FF8prcByeKgP5T4=;
        b=wkoT2iY7M96PbyN/kbvudQhC+B9p2j5/hWxDvcS3B0V2ph/a1cHeqTog0fr7Vj7ev9
         zbPF1XFNasQ7bWnxiiuMpIKDINcdSuGpsIDaHltlctdFBnF1LDoDzgR/WeHM+r+M+kRO
         F2yMg2oHL3F3w75SL8LG0pIxzE1ZJbhtEIS04HzcY/SEbJPbW8MEHAb+8/DReSAVLGrf
         hPlwm6p8iQoUwFIKqJxIVYGbge7G45WDfO7x7pv8vyT6ZUbBxCT4g1Ugg04sjd1Nf85Q
         pJxOwL0126cCgqiz0hF/F30nt0JbFoaMJzFvG/K8vBu5aOEZ3W7qxNRTabeEfN8nHTDZ
         beOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710523189; x=1711127989;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WqOLIAmZ2SnT8ACFOblj+3Ee/qV/FF8prcByeKgP5T4=;
        b=RSoZXbQGw/jDmRKhz9De+pTVtw33bElJENlYD31TOSO/91iyvSPZZ8aMqUH6T2N8mt
         d4FyoxPehn0w/xgI6QjOfNrmcHJCNYxMRnD9fkSMiegUiUfJJMEGjpc9pROFXSU6tg3L
         3+aH3lwpVjUtsNFOuSjtAc3bc/CCF+nkFh06lSMTpiKi8vOXX4hBtpkbUx7/c6LfWcsT
         JuOCZ+lb0y5ZLcuLGGN/rjjPzjfucXI5LCprvXqGe2eyqvJ4vwLLiLUCTyFbulcOBgmu
         i6Lz7YWWgpiupFkOi+7wPZGKucb//jGURTNSB+rObOc1XSc17DEnyv9A0LjDi2eLYTem
         qA3g==
X-Forwarded-Encrypted: i=1; AJvYcCVlgfEAfYSdXMAwxGB6CbE7EtSaMqbhDb33OXXtjVzNYRTtoSHeg8sQOIB/XPiqq0BKUbprBlRan6WD3gsdxG7cTWbp+EFOstm4y8zn3Q==
X-Gm-Message-State: AOJu0YzPKAsxZqrpCiben+TRtHYJVw8E5IfPBiIfCFrI3C/o95tKAbV7
	xMcEhb3lxetV6GTwjphRpULgHUnVubOnWcQMTA4AyPwFaNFyP4QNedLfLKaAznnqbsPO9janJYI
	g
X-Google-Smtp-Source: AGHT+IFEhCN0cf5efgrLVSYL2bdUxWGcIBmf3uLofQZXBEbujHqW9BJaOfNx1VebPC24zOOmZ4ygZA==
X-Received: by 2002:a05:6402:500f:b0:567:f475:6c6b with SMTP id p15-20020a056402500f00b00567f4756c6bmr6157295eda.8.1710523188830;
        Fri, 15 Mar 2024 10:19:48 -0700 (PDT)
Received: from localhost (213142096067.public.telering.at. [213.142.96.67])
        by smtp.gmail.com with ESMTPSA id v17-20020a056402175100b005651ae4ac91sm1827004edx.41.2024.03.15.10.19.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Mar 2024 10:19:48 -0700 (PDT)
Mime-Version: 1.0
Date: Fri, 15 Mar 2024 18:19:47 +0100
Message-Id: <CZUHV429NTF7.1GW9TN9NXB4J1@fairphone.com>
Cc: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH RFT 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Neil Armstrong" <neil.armstrong@linaro.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Vinod
 Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I" <kishon@kernel.org>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.15.2
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
In-Reply-To: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_101953_787105_893563F7 
X-CRM114-Status: GOOD (  22.15  )
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

On Thu Feb 29, 2024 at 2:07 PM CET, Neil Armstrong wrote:
> Register a typec mux in order to change the PHY mode on the Type-C
> mux events depending on the mode and the svid when in Altmode setup.
>
> The DisplayPort phy should be left enabled if is still powered on
> by the DRM DisplayPort controller, so bail out until the DisplayPort
> PHY is not powered off.
>
> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> will be set in between of USB-Only, Combo and DisplayPort Only so
> this will leave enough time to the DRM DisplayPort controller to
> turn of the DisplayPort PHY.
>
> The patchset also includes bindings changes and DT changes.
>
> This has been successfully tested on an SM8550 board, but the
> Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
> PD USB Hubs and PD Altmode Dongles to make sure the switch works
> as expected.
>
> The DisplayPort 4 lanes setup can be check with:
> $ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
> 	name = msm_dp
> 	drm_dp_link
> 		rate = 540000
> 		num_lanes = 4

Hi Neil,

I tried this on QCM6490/SC7280 which should also support 4-lane DP but I
haven't had any success so far.

On top of your patches I added the following for my device:

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index f5bd51806819..e7be17844da1 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -712,7 +712,7 @@ &mdss_dp {
 };
 
 &mdss_dp_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
@@ -1344,6 +1344,7 @@ &usb_1_qmpphy {
 	vdda-phy-supply = <&vreg_l6b>;
 	vdda-pll-supply = <&vreg_l1b>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";


The output of the dp_debug file shows it's trying to use 4 lanes:

        name = msm_dp
        drm_dp_link
                rate = 540000
                num_lanes = 4
                capabilities = 1
        dp_panel_info:
                active = 0x0
                back_porch = 0x0
                front_porch = 0x0
                sync_width = 0x0
                active_low = 0x0
                h_skew = 0
                refresh rate = 0
                pixel clock khz = 0
                bpp = 0
        dp_link:
                test_requested = 128
                num_lanes = 4
                bw_code = 20
                lclk = 540000000
                v_level = 2
                p_level = 0

But the monitor stays black and the following appears in dmesg:
(starts with plugging in a dongle, ends with unplugging it again)

[ 1773.538161] xhci-hcd xhci-hcd.2.auto: xHCI Host Controller
[ 1773.538197] xhci-hcd xhci-hcd.2.auto: new USB bus registered, assigned bus number 1
[ 1773.540215] xhci-hcd xhci-hcd.2.auto: hcc params 0x0230fe65 hci version 0x110 quirks 0x0000008000000010
[ 1773.540260] xhci-hcd xhci-hcd.2.auto: irq 185, io mem 0x0a600000
[ 1773.540372] xhci-hcd xhci-hcd.2.auto: xHCI Host Controller
[ 1773.540384] xhci-hcd xhci-hcd.2.auto: new USB bus registered, assigned bus number 2
[ 1773.540396] xhci-hcd xhci-hcd.2.auto: Host supports USB 3.0 SuperSpeed
[ 1773.540524] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 6.08
[ 1773.540534] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[ 1773.540541] usb usb1: Product: xHCI Host Controller
[ 1773.540547] usb usb1: Manufacturer: Linux 6.8.0-00058-g113103fa3b95 xhci-hcd
[ 1773.540554] usb usb1: SerialNumber: xhci-hcd.2.auto
[ 1773.540999] hub 1-0:1.0: USB hub found
[ 1773.541028] hub 1-0:1.0: 1 port detected
[ 1773.542010] usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
[ 1773.542146] usb usb2: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 6.08
[ 1773.542162] usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[ 1773.542174] usb usb2: Product: xHCI Host Controller
[ 1773.542183] usb usb2: Manufacturer: Linux 6.8.0-00058-g113103fa3b95 xhci-hcd
[ 1773.542193] usb usb2: SerialNumber: xhci-hcd.2.auto
[ 1773.543241] hub 2-0:1.0: USB hub found
[ 1773.543282] hub 2-0:1.0: 1 port detected
[ 1775.563969] [drm:dp_ctrl_link_train] *ERROR* max v_level reached
[ 1775.564031] [drm:dp_ctrl_link_train] *ERROR* link training #1 failed. ret=-11
[ 1775.597965] [drm:dp_display_process_hpd_high] *ERROR* failed to complete DP link training
[ 1775.598149] [drm:dp_aux_isr] *ERROR* Unexpected DP AUX IRQ 0x01000000 when not busy
[ 1776.632081] [drm:dp_ctrl_link_train] *ERROR* max v_level reached
[ 1776.632145] [drm:dp_ctrl_link_train] *ERROR* link training #1 failed. ret=-11
[ 1776.662978] [drm:dp_display_process_hpd_high] *ERROR* failed to complete DP link training
[ 1776.663039] [drm:dp_aux_isr] *ERROR* Unexpected DP AUX IRQ 0x01000000 when not busy
[ 1777.717501] [drm:dp_ctrl_link_train] *ERROR* max v_level reached
[ 1777.717524] [drm:dp_ctrl_link_train] *ERROR* link training #1 failed. ret=-11
[ 1777.751427] [drm:dp_display_process_hpd_high] *ERROR* failed to complete DP link training
[ 1777.751518] [drm:dp_aux_isr] *ERROR* Unexpected DP AUX IRQ 0x01000000 when not busy
[ 1778.793550] [drm:dp_ctrl_link_train] *ERROR* max v_level reached
[ 1778.793617] [drm:dp_ctrl_link_train] *ERROR* link training #1 failed. ret=-11
[ 1778.827260] [drm:dp_aux_isr] *ERROR* Unexpected DP AUX IRQ 0x01000000 when not busy
[ 1778.827334] [drm:dp_display_process_hpd_high] *ERROR* failed to complete DP link training
[ 1779.279889] xhci-hcd xhci-hcd.2.auto: remove, state 1
[ 1779.279942] usb usb2: USB disconnect, device number 1
[ 1779.311920] xhci-hcd xhci-hcd.2.auto: USB bus 2 deregistered
[ 1779.311987] xhci-hcd xhci-hcd.2.auto: remove, state 4
[ 1779.312019] usb usb1: USB disconnect, device number 1
[ 1779.317772] xhci-hcd xhci-hcd.2.auto: USB bus 1 deregistered

Regards
Luca


> ...
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> Neil Armstrong (7):
>       dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add mode-switch
>       phy: qcom: qmp-combo: store DP phy power state
>       phy: qcom: qmp-combo: introduce QPHY_MODE
>       phy: qcom: qmp-combo: register a typec mux to change the QPHY_MODE
>       arm64: dts: qcom-sm8550: allow 4 lanes for DisplayPort and enable QMP PHY mode-switch
>       arm64: dts: qcom-sm8650: allow 4 lanes for DisplayPort and enable QMP PHY mode-switch
>       arm64: dts: qcom-mode-switch: allow 4 lanes for DisplayPort and enable QMP PHY mode-switch
>
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   5 +
>  .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |   6 +-
>  arch/arm64/boot/dts/qcom/sm8550-hdk.dts            |   3 +-
>  arch/arm64/boot/dts/qcom/sm8550-qrd.dts            |   3 +-
>  arch/arm64/boot/dts/qcom/sm8650-qrd.dts            |   3 +-
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 168 +++++++++++++++++++--
>  6 files changed, 173 insertions(+), 15 deletions(-)
> ---
> base-commit: b321c0e8ca754d8cd9f23ceba958e3ea93c6519e
> change-id: 20240229-topic-sm8x50-upstream-phy-combo-typec-mux-31b5252513c9
>
> Best regards,


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
