Return-Path: <SRS0=Q81u=LV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5577EC48BC2
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 20:25:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0620861C20
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 20:25:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0620861C20
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIR52G2E80Y5kLOawyKIQDs+Rg+ahePrKIeEeOJaI3c=; b=xtxsoaQ4gUfN9p
	r9+RUFZzzvFRD021CVEIMLHPSifIoY0o00CrGvHE7qYelbFyJpYElybhU8VYPel9gCXMX/ar2+Z07
	C5ALE6tDCMM1N0smrbQmJ2BliuwpY+4eyE2W3mKJEdHvBYHDPbIOOgnDL3RnDDcJxSbFK25LVNHQk
	ZqZNpDN837XN7QkR7vwwmuprm6JgIc6cImayTLNxc8BF5n+4Wi4AKUZwij2bhxzC1PKIehXMTmRxx
	33W7WFeVJ/7K62LzXxiS8+mpDcrQMkjbjan68q4TZBhk4SwHnbC4NzDC+YuCfkhwLFjElo98qXYHp
	RREoP8Eca/0QWYhin9nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxbLg-0066Tf-Gt; Sun, 27 Jun 2021 20:25:48 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxbLd-0066T2-MJ; Sun, 27 Jun 2021 20:25:47 +0000
Received: by mail-ed1-x529.google.com with SMTP id m14so22250293edp.9;
 Sun, 27 Jun 2021 13:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e/Zn1I2M+Wt1TmihQs535Y+fjsrSFYX9XLAbFt7QxGI=;
 b=mQU+QpABF4SUnwGx7zw4zY0rpx9/ZaLTR2ImzkDUwpnixcF/AYS2w+8NYxUUor+e/0
 EH+Fp9fNRXUNwZ3aDNLgl7V+SlqTJpW57h+W/XRlTc9tgGJQxETpA/SsvoMepiW1ZJ+n
 CIT8MQPzvJlEGukHWj33UVrCGvFV9S0J/7KH1R7rJ18G5ExTfVGD8M++f/13cNP6Yp43
 ILyiurn7sqDk/4kp22q426Dn57jvrTkkGU2U1Tcq3r34tHHccLcLZdS9CuOY0W9HWHq3
 +cgqB5zRX/2Lmlp/vYaaXQrEBZhVaZ0L4u7nhgdqaW0tTq3wxSkptTXjMIuRxdyMSvES
 XTYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e/Zn1I2M+Wt1TmihQs535Y+fjsrSFYX9XLAbFt7QxGI=;
 b=Fo1b5jJe+U2YSvB0Zbb0c9lfIZS1kueT0/V0AF9HVeI1lQzV3WFlOCfxFc9rYlZyrT
 xGS1olJwTwUzORl9KVRRqqwMDuw58+4QRtjUte9z8vzcolxy5vYLop1KLpsd+cy6PiT+
 kilcYYWI8skZgi1haVdr24w9fgeLywKkZrHUHi32sZf37e/1qSfCuJNBd6aorbP+c1a2
 Y86wb6N09dhTzFowK3lug6p9mAoTW3LaCGtFTU7Zaj54OAMDxhtrVMzM8xVD+VgaxUoL
 7VzThmXbcP98qtg97nQ3Lb4X4S3bQ5iOgYtoxv0D+8iiJjNSpDlyF+ifOBHAGCysBYWS
 NWTQ==
X-Gm-Message-State: AOAM532BsZKgWjHuAWqWCphK702weKHQDppVgiZ5pCb7PRzZcC28v/6y
 XcHUVEAorVnI1yPewZdwKklUqx8JcuXieEEuHbM=
X-Google-Smtp-Source: ABdhPJwr6Rc0LaKsO2ZI8Ag1Z2/TERum8nYsgvoqHGVvdsLrKU5BtJjQMKrI5h5ju+ajrEHfzhORg4vRB8Jzcur/CDw=
X-Received: by 2002:a05:6402:706:: with SMTP id
 w6mr28300727edx.176.1624825543911; 
 Sun, 27 Jun 2021 13:25:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210617194154.2397-1-linux.amoon@gmail.com>
 <20210617194154.2397-7-linux.amoon@gmail.com>
 <CAFBinCCE+6G7QtDoxfbcZVVRf-MDX-epSo=_k_PJZgWX+_Whvg@mail.gmail.com>
 <CANAwSgRqixugUr-t2OheLBVwD=EOkaLqxnGkT-Bx=p_A4Nyr8Q@mail.gmail.com>
 <CAFBinCALsnpbJGEb4LBLd_jy3E8fOZAQaacz-P7ijfkeyYg2dA@mail.gmail.com>
 <CANAwSgRABOyWYJPrrw64Wa6j2D94T4tybn7MHGCTbBowt7UncA@mail.gmail.com>
 <CAFBinCD91eYNXSqnmDKoAvJHWqqRbXVjnaq9RuRNCnip9kKqkw@mail.gmail.com>
 <CANAwSgRzY+699aSS9MVGAJYVR6_0Ni75JPhO9=LKunHQK0p=oA@mail.gmail.com>
 <CANAwSgQktfn9Q=PJhx5Uq0UQ2dHqJwjKu1RWyb2k=-dA9=+BSQ@mail.gmail.com>
In-Reply-To: <CANAwSgQktfn9Q=PJhx5Uq0UQ2dHqJwjKu1RWyb2k=-dA9=+BSQ@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 27 Jun 2021 22:25:33 +0200
Message-ID: <CAFBinCD+seUuYUrObiqJNgEi_DaULB3nU+QQFHz9d85dAU06ZA@mail.gmail.com>
Subject: Re: [RFCv1 6/8] phy: amlogic: meson8b-usb2: Use phy reset callback
 function
To: Anand Moon <linux.amoon@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
 linux-phy@lists.infradead.org, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-amlogic@lists.infradead.org, 
 Linux Kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_132545_829463_F4858734 
X-CRM114-Status: GOOD (  13.92  )
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

Hi Anand,

On Sun, Jun 27, 2021 at 10:07 PM Anand Moon <linux.amoon@gmail.com> wrote:
[...]
> Sorry for the delay.
> We could switch the reset logic to
> *devm_reset_control_get_optional_exclusive* as below
> to fix the reset line, since both the dwc2 c90c0000.usb and c9040000.usb
> will have their own context to reset control register, it means the
> reset line is not share
> between two USB PHY nodes.
This is something I don't understand.
As discussed in our previous mails reset_control_reset in case of the
USB PHY driver (which uses the RESET_USB_OTG reset line for *both*
PHYs) is equivalent to the following code in the vendor kernel:
  aml_cbus_update_bits(0x1102, 0x1<<2, 0x1<<2)

We have two PHYs but only one reset line. So in my own words I
describe the reset line as being shared.

>
> -       priv->reset = devm_reset_control_get_optional_shared(&pdev->dev, NULL);
> +       priv->reset = devm_reset_control_get_optional_exclusive(&pdev->dev,
> +                                                               "reset");
Have you boot-tested this?
Without any .dts changes this will return NULL because there's no
reset-names = "reset"; in the .dts(i).
If you replace "reset" with NULL then I assume that the second PHY
will fail to obtain the reset line because it's shared between two
devices but we're trying to obtain it exclusively for both (PHYs).


Best regards,
Martin

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
