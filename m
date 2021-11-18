Return-Path: <SRS0=n1nF=QF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9D4C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 18 Nov 2021 00:18:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6997361B98
	for <linux-phy@archiver.kernel.org>; Thu, 18 Nov 2021 00:18:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6997361B98
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5nKUyvxoK/4FQpMALWX8TInmZ4btl+cswKWUXpruSA=; b=GTOsvSuZRRwm3c
	KThYQfzdCHAHoCmIZ2jH59X0ETI/3bqUxCQu5pyQt1pHN3SS8uGXdW4n92imGQeXVfRAvNeM2/BqG
	tkFXs126l5vbC15rdDx9e+SzgZb4w0tzOxQm96N1oZjCurEeOsolvTEbqjvbdSgb78pggDDKMlQN1
	Ay+8hIHo5LN8VLhGOyGffzMv+g5PG5FdKojeapNDdHZfk6FRDsuEc5DW105rT1rFuFboRgjYDvdVN
	vDQVPuz66K05vMiZedo+qoUuL4I3lQIqVX/ESVgmn426M4I4LNyn3p0Lh+6IbR3X5cC/ov+eGwsAJ
	se+dWZ328rozj+TiFPEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnV89-006dZH-VU; Thu, 18 Nov 2021 00:18:21 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnV87-006dYx-9c
 for linux-phy@lists.infradead.org; Thu, 18 Nov 2021 00:18:20 +0000
Received: by mail-ot1-x32e.google.com with SMTP id
 h12-20020a056830034c00b0055c8458126fso7884266ote.0
 for <linux-phy@lists.infradead.org>; Wed, 17 Nov 2021 16:18:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LL5DubqQCg6kyrjHofbR7ktAH9QXKAwsUlnh6eFxqLs=;
 b=tSptpTtxWS5DDHnjcndc2UmZr2MqGJnCLlzU/lKAu9zZEOqhKfqvS4p3iH7xPo5Q1L
 swxo+RtjrqATnlBng3/usZvoyl6MuiQK31gX/uRYyLJsetuPgvwzpebmLmlIrN4+1Q2c
 BFfR/sgSWZC3MmEGBD4D6AiMrmS3qCM81ac38ei7ylQP70C4h580B/GKiqehJzkuYu+Q
 c+pvo9PTluJYxsdYCERTiNPhT/aDtOSRAGM4yYeZ3/mbB+iUDgs6lfdeeboSgcynbLK2
 4TZKKMN2YNKCUmCQO9ziDV9kUMMVhpXByH+WteD5B5Teq74OiUZngfWRFOerMIq4+XKH
 FvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LL5DubqQCg6kyrjHofbR7ktAH9QXKAwsUlnh6eFxqLs=;
 b=8BloMipNXu3d4aXQtBJOdU4PSXBSgZB4ca/HZ/f4ZnK1QvJ4B1MpX9zIfdDVQGyxHX
 PmQYacAGncrfSPFYnRr/Xj2OwkUz+iNc+Zsp3ThNf6+Ixlazx+75BawjMLbdHjYVOtIJ
 jOa4V7jHbS9wbKUi7cI88xllKQovBn8z6HHhFinl/w+FI3xM8zArTt6IMvPfF61RPhai
 Snx3+cm4Ir0aewLLaG+t/OawJq/lj70W/Bz49WRDZw9MSY9UIs2ok5Qlwfjz96i7NP5R
 R4PdgsclL4wcgWCENLO9pAcAmK2KoU4qi6c9R5HkS2KSa6M3l5puFbU3lCCTabQ67nP7
 jA0g==
X-Gm-Message-State: AOAM53276xNv9J5JUBB203nv3gDIay6uiP2DpKNvXi2dcUieFgQi/IB7
 0GvDx4h2rRHyXhJzJN0j0IJnYw==
X-Google-Smtp-Source: ABdhPJyy41hemM9tjAl5AU+OoMFMVSQH3VD+GSG/X51UXF0JFbJWOzE/XyQmsF6xEE5SDYtjjnLqlg==
X-Received: by 2002:a9d:5d0f:: with SMTP id b15mr16866484oti.172.1637194697044; 
 Wed, 17 Nov 2021 16:18:17 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id g26sm298945ots.25.2021.11.17.16.18.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Nov 2021 16:18:16 -0800 (PST)
Date: Wed, 17 Nov 2021 18:18:13 -0600
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/6] phy: qualcomm: ipq806x-usb: Fix kernel-doc style
Message-ID: <YZWbxdnfHKdCI/hz@builder.lan>
References: <20211116103951.34482-1-vkoul@kernel.org>
 <20211116103951.34482-2-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211116103951.34482-2-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_161819_419605_F9E62866 
X-CRM114-Status: GOOD (  19.24  )
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

On Tue 16 Nov 04:39 CST 2021, Vinod Koul wrote:

> The functions are documented but there were style issues, so fix
> the style and add missing description for phy_dwc3
> 
> drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:130:
> drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:174:
> drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:212: warning:
> This comment starts with '/**', but isn't a kernel-doc comment.
> Refer Documentation/doc-guide/kernel-doc.rst
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 26 +++++++++++----------
>  1 file changed, 14 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> index bfff0c8c9130..e1b8fa911416 100644
> --- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> @@ -127,12 +127,13 @@ struct phy_drvdata {
>  };
>  
>  /**
> - * Write register and read back masked value to confirm it is written
> + * usb_phy_write_readback - Write register and read back masked value to

"Writing kernel-doc" indicates that you should have some parenthesis
after that function.

> + * confirm it is written
>   *
> - * @base - QCOM DWC3 PHY base virtual address.
> - * @offset - register offset.
> - * @mask - register bitmask specifying what should be updated
> - * @val - value to write.
> + * @phy_dwc3: QCOM DWC3 PHY base virtual address.

I guess this was "base" at some point? As you're fixing up the
kerneldoc, it would be nice to correct this to say something like
"usb_phy context".

Regards,
Bjorn

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
> + * usb_ss_write_phycreg - Write SSPHY register
>   *
> - * @base - QCOM DWC3 PHY base virtual address.
> - * @addr - SSPHY address to write.
> - * @val - value to write.
> + * @phy_dwc3: QCOM DWC3 PHY base virtual address.
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
> + * usb_ss_read_phycreg - Read SSPHY register.
>   *
> - * @base - QCOM DWC3 PHY base virtual address.
> - * @addr - SSPHY address to read.
> + * @phy_dwc3: QCOM DWC3 PHY base virtual address.
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
