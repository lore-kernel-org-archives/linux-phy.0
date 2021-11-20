Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 521DCC433EF
	for <linux-phy@archiver.kernel.org>; Sat, 20 Nov 2021 23:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BB7SgnU4RSmr3T6FZ5072UEstReJDm3SlLyorOV+duA=; b=sDIjcdzQPpQKh8
	X2hHi9K0nyd2Uq5yFOMPMUqQAgTklprusazuPiTRt24edCY242OnYiehFpaoOkVfq+YqmTabBt83a
	4GSOWWRzEiELJIsaFWUBSkv/fqtqsqPOWdP1DRju/y2vf5cj45WgWRLyTCZ9AzerSE8ek/YRf6LpR
	gcKpDxmnkbGw+wNu2Xn12R8KKIFrqpHzqAwD27bB/geE3n0t956Wm6Uz8ibJsbj55GcuqVFa5HKmM
	5/lknS5ZNRlkQ8+x1+qybD5UdusEozcmofFDKV7RnsxryONyx3wAKu2gX3LD6W+i35CX09Qs7pSqc
	z7zo+aqEDmaCsu+v8jSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1moZdI-00D31k-7T; Sat, 20 Nov 2021 23:18:56 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1moZdF-00D315-AS
 for linux-phy@lists.infradead.org; Sat, 20 Nov 2021 23:18:54 +0000
Received: by mail-ot1-x32d.google.com with SMTP id
 h16-20020a9d7990000000b0055c7ae44dd2so22683162otm.10
 for <linux-phy@lists.infradead.org>; Sat, 20 Nov 2021 15:18:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JTdASFPiON/L+d5lkfaZYqJlAIfhX4rwz0wsWxjgVA8=;
 b=tml7j6wnym+kcgisdcUDIpnQEFPk3UxKrDQbvjVV1hvRYJqlZQl7ny4mB31t2+VPJi
 nN1Iv+ZMw8Xe5Tg17xNs7Ulb/vFxncG64IDus+jTuZdQCBILJvjqGPxze1SZTyrAv44k
 uGFZ+hd7SDicV32/p11M9sCkwT77720PGzfSmPQ3rfX8QK23/wWYa5UwahIt6GK2k76E
 9NuucBFx+hCRBWhoHFTU1raaQKbwLvk7rQzN/GRiYuat3f1supiGSosJXiXHEidHEjWA
 kSUvZchh1g109zZEtNiYmQTTXONkwLMOnvzf4IMdo5Cv5TU/mTGPeLm319eG1WEork6R
 //VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JTdASFPiON/L+d5lkfaZYqJlAIfhX4rwz0wsWxjgVA8=;
 b=Rn7D7p2W16U96+Ku2zBGQHWWflfeIKHt5bw0wMTQOlaVLeHAaRgPSGQKj8CsWJWpOC
 +6jaX4Wfx5Q1BS5fK06OCCCEo3XbwVDbQ/o7SM+vx1kZ5dfkAGQn+BgTGeRsAYmmZwmv
 xsBuTJzslKBcRp7DLiQ6/AwFsSnkeSs+OkHZFTUjb07bGLIl8qJdNSET6uZ07pGdkNsx
 fJlwAVx2DTHG8gmpYstKjhM6dXer4MCfbkDmriLT/95OFGnSoqXrLraMaYSeE8Apoh2S
 hhUGL+/LF8kzVVexiDsBp70uGad24yVTyymiQ30H3LPchFvA6OTLUQSYpxpVq7zbmB6N
 7XeA==
X-Gm-Message-State: AOAM533kxh2EjWuql/dwXf+G2N8iG0yRuLu2UKJ4gFS95aO6ScQ89W4r
 qGr76lH5JTh0p1Xx1asLwE12JA==
X-Google-Smtp-Source: ABdhPJxCfOPuy6zRkMW/P7tdeY6/cZb/s/wtObVT7fNz9WLykz27BnFkfbdNxmr3GspyZ0Ftyzh02w==
X-Received: by 2002:a05:6830:2253:: with SMTP id
 t19mr15175847otd.163.1637450331627; 
 Sat, 20 Nov 2021 15:18:51 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id h6sm801746otb.60.2021.11.20.15.18.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Nov 2021 15:18:51 -0800 (PST)
Date: Sat, 20 Nov 2021 15:20:37 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v2 1/2] phy: qualcomm: ipq806x-usb: Fix kernel-doc style
Message-ID: <YZmCxaP9dkGAemcF@ripper>
References: <20211120061531.410771-1-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211120061531.410771-1-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211120_151853_403382_5D7D95F0 
X-CRM114-Status: GOOD (  18.41  )
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

On Fri 19 Nov 22:15 PST 2021, Vinod Koul wrote:

> The functions are documented but there were style issues, so fix
> the style and add missing description for phy_dwc3
> 
> drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:130:
> drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:174:
> drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:212: warning:
> This comment starts with '/**', but isn't a kernel-doc comment.
> Refer Documentation/doc-guide/kernel-doc.rst
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Reviewed-by: Randy Dunlap <rdunlap@infradead.org>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
> 
> Changes in v2: use () for function names
> update description of @phy_dwc3
> 
>  drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 26 +++++++++++----------
>  1 file changed, 14 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> index bfff0c8c9130..fec1da470d26 100644
> --- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> @@ -127,12 +127,13 @@ struct phy_drvdata {
>  };
>  
>  /**
> - * Write register and read back masked value to confirm it is written
> + * usb_phy_write_readback() - Write register and read back masked value to
> + * confirm it is written
>   *
> - * @base - QCOM DWC3 PHY base virtual address.
> - * @offset - register offset.
> - * @mask - register bitmask specifying what should be updated
> - * @val - value to write.
> + * @phy_dwc3: QCOM DWC3 phy context
> + * @offset: register offset.
> + * @mask: register bitmask specifying what should be updated
> + * @val: value to write.
>   */
>  static inline void usb_phy_write_readback(struct usb_phy *phy_dwc3,
>  					  u32 offset,
> @@ -171,11 +172,11 @@ static int wait_for_latch(void __iomem *addr)
>  }
>  
>  /**
> - * Write SSPHY register
> + * usb_ss_write_phycreg() - Write SSPHY register
>   *
> - * @base - QCOM DWC3 PHY base virtual address.
> - * @addr - SSPHY address to write.
> - * @val - value to write.
> + * @phy_dwc3: QCOM DWC3 phy context
> + * @addr: SSPHY address to write.
> + * @val: value to write.
>   */
>  static int usb_ss_write_phycreg(struct usb_phy *phy_dwc3,
>  				u32 addr, u32 val)
> @@ -209,10 +210,11 @@ static int usb_ss_write_phycreg(struct usb_phy *phy_dwc3,
>  }
>  
>  /**
> - * Read SSPHY register.
> + * usb_ss_read_phycreg() - Read SSPHY register.
>   *
> - * @base - QCOM DWC3 PHY base virtual address.
> - * @addr - SSPHY address to read.
> + * @phy_dwc3: QCOM DWC3 phy context
> + * @addr: SSPHY address to read.
> + * @val: pointer in which read is store.
>   */
>  static int usb_ss_read_phycreg(struct usb_phy *phy_dwc3,
>  			       u32 addr, u32 *val)
> -- 
> 2.31.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
