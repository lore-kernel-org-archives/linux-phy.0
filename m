Return-Path: <SRS0=dFK9=LQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AC05C48BDF
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 20:28:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C87FD613B2
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 20:28:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C87FD613B2
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Umb4kSRiXmpJtddIumgIlMtAIaffNUqrik5GgA0pUAM=; b=dv72guNtC/zyCR
	0hjDPhr5d6VQWSdy6sgEDcOlSYQvVAPeVBVPLcMODRz6hRkyAhNfGzDzdMP8RhV1e9UEvBzTKAqiA
	JE/sEKhqP+uZ5H8D/9c2XXQf4in+rxATlq4jZBEEOImBuetr/tyafDA2hKte+EtlSSQ/J+Dj5mWWO
	jxybXpUq3rwqnVq6l6DkBcC1Fo/A4m2EGfI2ToFWldh+jSBsm0qWgWNeTaE7cN78wwJLQ5I6cyB5v
	2mok5FT7QJR68zOIYDvKXhxQ0Fqfd0k4fc7dQG0A6LUzFMrpvrfFd2TLlpekZcRN47RpwnlmF2PYb
	wuQc04o/sNL87LdPbZKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvn0H-008Lb1-8G; Tue, 22 Jun 2021 20:28:13 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvn0E-008LaV-BM; Tue, 22 Jun 2021 20:28:11 +0000
Received: by mail-ed1-x533.google.com with SMTP id h2so503792edt.3;
 Tue, 22 Jun 2021 13:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X5CvNIGn+uveqQuIQS4du1ZTZMasSyyQsp7zluQgLD0=;
 b=WciAeMDK5MbomldMgX1vfqrUSPoIknmeADksmKJHf5vbClibwq6GSyQ7cK20HRctwb
 lESv/vzkxrRUDEyqIV+eRdPuWTa+ms8dKvrqKcL7hdPbSzWTE3WGQgkYCZyp+XxZV7Au
 X8/tHUVuMXfa/LaUfVFxuXxVznGVWmilATFg+LcMScJ7Fn0b2HUhOz94YTZjGfa9g5zH
 hHleS38ZfNJ62kzmN24LE9J0EzPPqCJNbUlDJV1SfvoqID9Aw3g6IBenHBVEJl4/lItK
 yC08xKEMbGMmGRQV6FY7v5KugN/g7VZhcROmj8H1Z4CHi5Hu6PRIQr/fcfQHK2dPx5fD
 GkGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X5CvNIGn+uveqQuIQS4du1ZTZMasSyyQsp7zluQgLD0=;
 b=p0+J7rezrWmWkTOXv/TzRkFYGhIN8ikQ0Xbb3ze13H9kp0itwKXTkQaETeZMcB5phX
 LRZNHNYU+lSfEAF7OcugP91vNyprCt9R3C6wXqPfFK3F4dWLCYQgkpOceO29/VZpNQra
 iJ5p9Bp9AZb1eTVLA5Fuhit6hKpK+d7bypAHcqqJgTXNZ4c3r+OVwmls0onC6gBTRzuJ
 N4dwKipi3JjX92rWsmBnpvbqIGQLGnT0WmO936hrSEO7GFLhaWJR+2SYEpZFPUDLX+s4
 06aeuD5kUPp3bUGF+nPTRQxi44Bsy6sRiO5OwmyS/dA3d5TrA5+CfvRydheOoiISO7x2
 MYVw==
X-Gm-Message-State: AOAM530j3MsscJmbdT63/zKQGtOzh8/eBuXeUdqyZwbA0Z6y465ndC84
 EeEUfKrfhvZSUvFPzMezrqMyHv1g8z6yo+HcSqA=
X-Google-Smtp-Source: ABdhPJyDXk6FUdcXb8rrM3nwzI3yys7EvkNfVi/l6gPIA8s75q6azLGkkbBjfs++dkSHRFVMxeAj/5zJhsxJ4KCbLH8=
X-Received: by 2002:aa7:d74b:: with SMTP id a11mr7669139eds.40.1624393688890; 
 Tue, 22 Jun 2021 13:28:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210617194154.2397-1-linux.amoon@gmail.com>
 <20210617194154.2397-5-linux.amoon@gmail.com>
 <CAFBinCB1rrmJ5=M0tSGS_47BarFcrs2Kz5qFzrHw8+OEYxX3DA@mail.gmail.com>
 <CANAwSgQVgKUoTpfaJyfxdphqc6M=Oq6jj5zZ7An9St7PdzQHYA@mail.gmail.com>
 <CAFBinCDpQybqD96CCMBDKYUXEYCABr0QMfxFH1AWrXP12UxxMg@mail.gmail.com>
 <CANAwSgTd1zq_gHbVZesLY=e3DRRGgn_o5omuDo9Lub4FavOtbQ@mail.gmail.com>
In-Reply-To: <CANAwSgTd1zq_gHbVZesLY=e3DRRGgn_o5omuDo9Lub4FavOtbQ@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 22 Jun 2021 22:27:58 +0200
Message-ID: <CAFBinCC3ZN9GqOAR1AnXao5G1UCgi6QOCRHeve0mHBXtYYdKOA@mail.gmail.com>
Subject: Re: [RFCv1 4/8] phy: amlogic: meson8b-usb2: Use phy set_mode callback
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
X-CRM114-CacheID: sfid-20210622_132810_451938_D580FAD1 
X-CRM114-Status: GOOD (  15.79  )
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

On Mon, Jun 21, 2021 at 9:20 AM Anand Moon <linux.amoon@gmail.com> wrote:
[...]
> In order to enable USB phy we probably need to do a little bit
> differently than the vendor kernel.
I agree with you here, the vendor kernel is skipping most of the
frameworks which we have available in mainline Linux

> OTG port on Odroid C1+ and Odroid C2 server two purposes
> 1 > It could act as USB host port.
> 2 > It could be used as USB power on the devices, just like Raspberry pi.
>       What I meant is we need some driver code to protect the power to SbC.
yep, so we need something that controls mode switching
depending on the mode the VBUS regulator needs to be enabled (HOST) or
disabled (DEVICE/PERIPHERAL).
VBUS control however is not part of the PHY - in mainline Linux either
the dwc2 driver or a USB connector driver are taking care of it.

> So I saw your work on extcon, that's the reason I would like to void
> any changes PHY right now.
I believe that this specific PHY is unrelated to mode switching.
Either it automatically detects the mode and changes it's settings
internally or the PHY settings are the same for both modes.
Since VBUS control is not the responsibility of the PHY this is
certainly possible

My changes are not ready yet but I'll ping you once I have something to test

> I observe some failures like below.
> [    6.013859] dwc2 c9000000.usb: DWC OTG HCD URB Dequeue
> [    6.013897] dwc2 c9000000.usb: Called usb_hcd_giveback_urb()
> [    6.013902] dwc2 c9000000.usb:   urb->status = -115
-115 is -EINPROGRESS but I am not sure if/when that's a bad thing or
to be expected


Best regards,
Martin

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
