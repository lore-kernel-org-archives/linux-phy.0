Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D154EB64DC
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jul 2023 14:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4ERVjnZuXWdANo4t7YukpzP0yiuhKLU0AObCSjdtg8=; b=GbGdt3wRNygkO0
	BssUpcsXjgPerWk7hsebJXF4bylQbZI2I/MBTqrtFZutczhYm3mztD/S/1GmjJ7KxfzkfCFbcfNFs
	jD/jujl1g4fh0lKyV+N18KjuJptnSX5XnimugZp1wfL2UmNy0Tbw7dkHcLzT0zQZ6sFy811+9mQGF
	CLCwTZm4lIdEcdQS+abgeuewfvCI14vyd4zT5PEg+sb4QN66oJlKyBg/fb249KdZUCLuYWbTl23hl
	vLgtibT34wMp+LvKisFFkRA4a3C4UPItzLHDIZL/W5ABRSk7uE7bBULf+lqsLQB8aAxcea0BxeLCu
	unbrKb0Y+OnNrrbGSqiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKJrv-006P9W-0Q;
	Fri, 14 Jul 2023 14:34:03 +0000
Received: from mail-il1-f176.google.com ([209.85.166.176])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKJrt-006P8t-04
	for linux-phy@lists.infradead.org;
	Fri, 14 Jul 2023 14:34:02 +0000
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-34617b29276so7475335ab.0
        for <linux-phy@lists.infradead.org>; Fri, 14 Jul 2023 07:33:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689345238; x=1691937238;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zgiht/lCckduqQild9xWBFcr10Bz7Z0qNdMiS2Y+g2s=;
        b=iZPmI8T1E1FR+Wu2l61muFLXFroVtSfJorPaQ5Iph0gwfTqPc05v+6kF8tcVPDUPzx
         bCLAECX7RFyf/bsmyM2+NfTAsRw7ZuPYXrP+XMO3K2GAGVm0z2O0ZMTgQIZrGMyLZeRL
         NjI9W5xNpbFE7pYiGLcPzudJ+npXl6Zbnw7u5fBKCkkQ/ETxkREzPPAeSZObsifjCuGu
         0fjCq+ezM409po2w4AyvjEKNOFBvSF1HksoOCUVPzhIbKqiL48UJvY6Hi98pqsuxdJIE
         U9dpze5VkoE8UaVqM9LCeuW71K4F9fsKB6ejeaIjhHvAG3gD9H6bqGo13gyk+V5VggW8
         +izw==
X-Gm-Message-State: ABy/qLYAJmi1BsHVFOcxrgPUnKpK4p6h7tSOdE3hxjypQVDJvDtR+1sa
	FMslZtakIsPifSN9t6UCVg==
X-Google-Smtp-Source: APBJJlHc87RGDE4ioh1yw30FaD7V2nkRtIdOKWEAEqqS4SeVwBEFRxF8hNU6UpuUILrr1/1c601qQw==
X-Received: by 2002:a92:d083:0:b0:345:b4e0:35d3 with SMTP id h3-20020a92d083000000b00345b4e035d3mr1939585ilh.9.1689345238217;
        Fri, 14 Jul 2023 07:33:58 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id w17-20020a92c891000000b0034233fd80d3sm2788841ilo.22.2023.07.14.07.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jul 2023 07:33:57 -0700 (PDT)
Received: (nullmailer pid 3490019 invoked by uid 1000);
	Fri, 14 Jul 2023 14:33:55 -0000
Date: Fri, 14 Jul 2023 08:33:55 -0600
From: Rob Herring <robh@kernel.org>
To: Stanley Chang <stanley_chang@realtek.com>
Cc: Vinod Koul <vkoul@kernel.org>, Flavio Suligoi <f.suligoi@asem.it>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Roy Luo <royluo@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>, linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, Alan Stern <stern@rowland.harvard.edu>, Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Ray Chi <raychi@google.com>
Subject: Re: [PATCH v7 5/5] dt-bindings: phy: realtek: Add Realtek DHC RTD
 SoC USB 3.0 PHY
Message-ID: <168934521641.3489578.4865141978582966306.robh@kernel.org>
References: <20230707064725.25291-1-stanley_chang@realtek.com>
 <20230707064725.25291-5-stanley_chang@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230707064725.25291-5-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_073401_086347_CA32E6DB 
X-CRM114-Status: GOOD (  15.02  )
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


On Fri, 07 Jul 2023 14:47:04 +0800, Stanley Chang wrote:
> Document the USB PHY bindings for Realtek SoCs.
> Realtek DHC (digital home center) RTD SoCs support DWC3 XHCI USB
> controller and using USB 3.0 PHY transceiver.
> 
> Signed-off-by: Stanley Chang <stanley_chang@realtek.com>
> ---
> v6 to v7 change:
>     Revise the commit message.
> v5 to v6 change:
>     Drop the labels of example.
> v4 to v5 change:
>     1. Remove the compatible realtek,usb3phy.
>     2. Add the default of the property.
> v3 to v4 change:
>     1. Remove the parameter and non hardware properties from dts.
>     2. Using the compatible data included the config and parameter
>        in driver.
> v2 to v3 change:
>     1. Broken down into two patches, one for each of USB 2 & 3.
>     2. Add more description about Realtek RTD SoCs architecture.
>     3. Removed parameter v1 support for simplification.
>     4. Revised the compatible name for fallback compatible.
>     5. Remove some properties that can be set in the driver.
> v1 to v2 change:
>     Add phy-cells for generic phy driver
> ---
>  .../bindings/phy/realtek,usb3phy.yaml         | 107 ++++++++++++++++++
>  1 file changed, 107 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/realtek,usb3phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
