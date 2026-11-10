Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED167606A334
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 07:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=udURiseB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=w5QQ2GPO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WipOLtWytjxp24D+qGy0AEn+NPoecW4Wh+G0LPOx0cg=; b=udURiseB7xiFoHVwd/gxymxwCR
	tzDkG/Yz/EmJ50yDwsKhUfWV0lrm3rbsghbNl41jB0mHevLQZy+/g4LjD3kyOdJKY4Lfvis6HzJ7k
	pbQYOOp+wjAlEmsrYvodfDwrozkgBEcCjPev2aJaG1IqPHWuG2JhTD2/LOyCmc9uanbBehSfIa/Be
	p5bxWhBrLU/IiiYYQ/EAbPPjgTfc/jV7YFYmTz0UqlQu2R2anEaerCqn6AF2Z1eoySouGQNMVYDak
	yKZQ73DogwLaC/sTAcUovDXaU+TgrzkWdcPNt7X0Je6tcFP8W5DCTirL7UA9Nnfq8qYjuGGRSYcPV
	YTwUICxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQfzG-00000002kjF-2GSP;
	Tue, 10 Nov 2026 07:09:46 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQfzD-00000002khm-2yAb
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 07:09:45 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-3ae691283ecso930144a91.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 23:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794294583; x=1794899383; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=8o8wjjmrwoQdO4Xnhs54i8QvAQRlpkIVByEC39d22TI=;
        b=w5QQ2GPOeP0c6OLlcZ3Mteeji0UcWfhBjxSJpw4ZeVuOUJ6Vm9LXUY/SxKGHbPHztX
         7mni47FIRhaQanOFmZSH6Z5eoEUAI0BrIP6pTG8AIaYrRfvqgTsK6kO/eFBS79rDaZjv
         87jDRw8QVWnJomWejFyuq3tLzCWVUjlj3dV0a7FV1a5e1Sc4M3dydS2jhrq0RWfNzF6P
         ikx/blTa1jRzx3MCMcFaBMNh7ev3fj9YKMwA6Sr8ywPPU3gsWnajf5hif5gAPiWqB+Bi
         voFFYOrlKvSIx8wDa/lV5ESH8imMNjxojeZAxIYrSHDyu4AptJGmHXPuNxo8px1iMDyh
         iJkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794294583; x=1794899383;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8o8wjjmrwoQdO4Xnhs54i8QvAQRlpkIVByEC39d22TI=;
        b=PHovdREzkU8j9P+kNTwdrd0pT5IkaW1zsql1tyZGzLj7soABSAauXtpVeAnyMUosSP
         fu4nNCFYSeSLb6SdKF2gCCY+0oQfDLIaa4weZpBDYwO43mDnBFJ0zq+J3kb3f6fdMh22
         W8fH10PvzZs1kxwNJ3e9Z7rkZr2KlAx48IZYSA86KWJNFHoRAHn2ZijrCdNCjcm2C9K6
         RI0bivmUA0Eoj/dTTktA8qDHdNzoz2D7PEp0Q6d4etHpPtu7czuoEht8TVWToRQlsU9G
         S9WLOUzX0xO7wOhzl05mWmTk3OCePh3LoHQI2N1oOlg8tfpko08xUWdFlq59D+J+rDaJ
         bWGQ==
X-Forwarded-Encrypted: i=1; AL+hErE/dmaKmKbLzO2jU1E5Khk6dii2xTGp5l9exJ/QJBFe2t87o82utsNsSGFA/WUm1oojA8nnZLdJGSs=@lists.infradead.org
X-Gm-Message-State: APuU4Z/5C3EXT+h2j6gJ9Fz6VeJE38Vk35BXpd2XtMlDPfXmFmBse2G5
	Ja9NbBYbOnD8rwv0+opTnHolr7sUlKwwuef6EyqeKTDPTg8Cae2JweY6
X-Gm-Gg: AYBFou1BixFRAaCBaEzyPxPilhw2/ltBXodYLgyQI9CNFpn9IlLxe6ukqpOTZwiBJ4k
	az+YMJBiCHY2uDykFYOoyyrusLQ5Qqtuv5syKNg9144gS4XHnINg06vG2O/SjD+jNkHNxPXWubF
	abBEMmYbYr84hDNNJOT3FbKYc3gjz6zfWCeoKiwGCJ+oc2G+tiaqtIuUHrv3x4zAX4ksj8n6wt6
	Akfh8ondq3f2vd3an1hXR3Hz4q51KkTnqL83rvo+cUQJ3JFXm0pUvz10HRXi5vcl0/UNFXpcRV4
	aJEfV0I0zCfYmx1s9dEGFerPPvPUy20zsbt2loEZuVAP+FwXA7dM87TKJMX5m1h4USmNe+RvW6c
	F7+UsNLKnazpW9kbT2QY7NuMtJQPRQ1RzYR5yb5LNU2yBaOAnOGML9P2eTEk25adEguimk7jWmV
	FOsvRcKzn6Loh/J1PY0y09sW3s5BOtJkEwbuB8XYq0Mt2TfmBrDgJFaD5dySMUP3qOPm+8bP0DM
	1ILet0Vcnaq9GCxFKOUjkgRofvenOBKksN1yFglxNlJ3Ts5K0sV429w4eOXfWlMOnXIND+241Xn
	8ErwYjVILHmNZU8IKesQGv9t4GU=
X-Received: by 2002:a17:90b:3844:b0:3a7:a3c8:8f4a with SMTP id 98e67ed59e1d1-3b16797724fmr1270966a91.18.1794294582592;
        Mon, 09 Nov 2026 23:09:42 -0800 (PST)
Received: from localhost ([2001:19f0:8000:3bef:5400:6ff:fef9:667])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b16771b08asm2648642a91.13.2026.11.09.23.09.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 23:09:42 -0800 (PST)
Date: Tue, 10 Nov 2026 15:09:23 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Chen-Yu Yeh <chenyou910331@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Inochi Amaoto <inochiama@gmail.com>, 
	Chen Wang <chen.wang@linux.dev>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Hiago De Franco <hfranco@baylibre.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] phy: sophgo: Add USB role switch for CV18XX/SG200X
Message-ID: <avLC68zOj8WKuslb@inochi.infowork>
References: <20261103085847.338613-1-chenyou910331@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261103085847.338613-1-chenyou910331@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_230943_788293_5BFC814B 
X-CRM114-Status: GOOD (  32.89  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Nov 03, 2026 at 04:58:44PM +0800, Chen-Yu Yeh wrote:
> This makes one DTB work as both USB host and USB device on the Milk-V
> Duo 256M, following the discussion in the thread "Milk-V Duo 256M: USB
> peripheral mode works on mainline, how should dr_mode be handled?" on
> the sophgo list. There, Inochi pointed out that a dual-role switch is the
> right way and that the default should match the vendor image.
> 
> The usb-role-switch support in dwc2 hangs on this SoC. It clears B-valid
> through the GOTGCTL session overrides while VBUS is present, and
> GOTGINT.SesEndDet then fires back to back. The vendor kernel writes only
> the ID override in the top syscon and lets dwc2 follow the Connector ID
> change, and this works on mainline too, without any change to dwc2. So
> the role switch lives in the PHY driver, which already owns those bits.
> 
> Test setup
> ==========
> 
> Milk-V Duo 256M, vendor buildroot rootfs, loaded by hand from U-Boot.
> Tree: v7.3-rc5 with these changes, CONFIG_USB_DWC2_DUAL_ROLE=y,
> CONFIG_USB_ETH=y. The series itself is based on current master; the files
> touched by patches 1 and 2 are the same in both trees.
> 
> Tests 1 to 3 ran with CONFIG_USB_DWC2_DEBUG=y and the DT properties
> applied through an overlay. Test 4 ran with debug disabled and the
> board DTS from patch 3.
> 
> In the logs below, 
> R=/sys/class/usb_role/3000000.syscon:phy@48-role-switch
> 
> 1. Default peripheral, bare board on a PC, nothing done after boot
> ------------------------------------------------------------------
> 
>   # ls /sys/class/usb_role/
>   3000000.syscon:phy@48-role-switch
>   # cat $R/role
>   device
>   # devmem 0x03000048 32
>   0x000003C0
>   # cat /sys/class/udc/*/state
>   configured
> 
>   PC$ lsusb | grep 0525
>   Bus 003 Device 009: ID 0525:a4a2 Netchip Technology, Inc. Linux-USB Ethernet/RNDIS Gadget
> 
> 2. Switching at runtime, same setup
> -----------------------------------
> 
>   # echo host > $R/role
>   # cat $R/role
>   host
>   # devmem 0x03000048 32
>   0x00000142
>   # echo device > $R/role
>   # cat $R/role
>   device
>   # devmem 0x03000048 32
>   0x000003C0
>   # cat /sys/class/udc/*/state
>   configured
> 
> The switch was repeated without an interrupt storm, then:
> 
>   # echo none > $R/role
>   # cat $R/role
>   device
>   # devmem 0x03000048 32
>   0x000003C0
> 
> 3. Default host, on the USB & Ethernet IO board, nothing done after boot
> ------------------------------------------------------------------------
> 
> Only role-switch-default-mode differs from patch 3 here.
> 
>   [    3.409672] usb 1-1: new high-speed USB device number 2 using dwc2
>   [    3.666655] hub 1-1:1.0: 4 ports detected
>   [   72.484979] usb 1-1.1: new high-speed USB device number 3 using dwc2
>   [   74.804484]  sda: sda1 sda2 sda3 sda4
> 
> The USB stick was plugged in by hand at about 72 s.
> 
>   # cat $R/role
>   host
>   # devmem 0x03000048 32
>   0x00000142
>   # devmem 0x04340018 32
>   0xF300081E
>   # devmem 0x04340440 32
>   0x00001005
>   # echo none > $R/role
>   # cat $R/role
>   host
>   # ls /dev/sd*
>   /dev/sda  /dev/sda1  /dev/sda2  /dev/sda3  /dev/sda4
> 
> 4. Patch 3 as committed, debug disabled
> ---------------------------------------
> 
> Bare board on a PC, nothing done after boot:
> 
>   # cat $R/role
>   device
> 
>   PC: usb 3-9: New USB device found, idVendor=0525, idProduct=a4a2
>   PC: usb 3-9: Product: RNDIS/Ethernet Gadget
> 
> On the IO board, with a USB stick already plugged in at boot:
> 
>   # cat $R/role
>   device
>   # echo host > $R/role
>   # cat $R/role
>   host
>   # dmesg | grep -E 'usb 1-1'
>   [  415.464739] usb 1-1: new high-speed USB device number 2 using dwc2
>   [  415.940738] usb 1-1.1: new high-speed USB device number 3 using dwc2
> 
> Before this series
> ==================
> 
> With usb-role-switch on the dwc2 node, "echo host" hangs the board in the
> SesEndDet storm, and so does boot without role-switch-default-mode.
> 
> With dr_mode = "otg" and no role switch, writing the ID override by hand
> worked:
> 
>   devmem 0x03000048 32 0x3C0  -> high-speed RNDIS gadget on the PC
>   devmem 0x03000048 32 0x142  -> disconnects from the PC, host side starts
> 
> Three round trips were all correct, and ping over usb0 afterwards was
> 5/5. On the IO board, the hub and USB stick appeared after one toggle,
> but not at boot, because usb_add_hcd() moved the PHY to host after dwc2
> had already set up for device:
> 
>             at boot       after one toggle
>   GINTSTS   0x05000023    0x04200021
>   GINTMSK   0xd0bc3cd4    0xf300081e    (PrtInt masked -> unmasked)
>   HPRT0     0x00021403    0x00001005    (ConnDet pending -> port enabled)
> 
> Test 3 above reaches the right-hand values at boot without a toggle.
> 
> Not tested
> ==========
> 
>  - A USB stick already plugged in at boot in the default host case.
>  - Running on a master based tree: all tests used the v7.3-rc5 tree.
>  - Boards other than the Duo 256M. Nothing changes on them, since the
>    role switch is only registered when the PHY node has usb-role-switch.
> 
> Question
> ========
> 
> With patch 3, the hub on the IO board needs "echo host" after each boot.
> Should the IO board overlay (sg2002-milkv-duo256m-eth.dtso) set
> role-switch-default-mode = "host", or should it stay the same as the
> vendor image?
> 
> 
> Chen-Yu Yeh (3):
>   dt-bindings: phy: sophgo,cv1800b-usb2-phy: Add USB role switch
>     properties
>   phy: sophgo: Add USB role switch support for CV18XX/SG200X
>   riscv: dts: sophgo: sg2002-milkv-duo256m: Enable USB role switch
> 
>  .../bindings/phy/sophgo,cv1800b-usb2-phy.yaml |  11 ++
>  .../boot/dts/sophgo/sg2002-milkv-duo256m.dts  |   7 +-
>  drivers/phy/sophgo/Kconfig                    |   2 +
>  drivers/phy/sophgo/phy-cv1800-usb2.c          | 107 ++++++++++++++++--
>  4 files changed, 119 insertions(+), 8 deletions(-)
> 
> 
> base-commit: 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4
> -- 
> 2.43.0
> 

NAK on this patch, I do not think fix phy is the right way for a
controller problem. See my new patch:

https://lore.kernel.org/linux-usb/20261110070627.217946-1-inochiama@gmail.com

Regards,
Inochi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
