Return-Path: <SRS0=BRk1=PN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 464C3C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 07:20:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1462460724
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 07:20:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1462460724
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkEaF2TzwJjPJgpReU/aqrpLjvPYSbA0EIolYKRDxjk=; b=psNG7aRU3kRKHd
	Mqk338OM20jM1cX1E0qnHqRQ0Iva+5G/dBKPcz5vGfo5Crt5fpbPcjmRMepuh7JMPB+DwShE0j3P2
	IYf5gS12Xnp8rvX4zeDkwMAHkCW3D5mSW/TOcOhO2BWa9mCk2cTnpQXkaOXo/m/SvfvpPoAco8XBW
	ey3LwkVuBXXY9j8Kd6d+3zuvRsLprfZV22ZbfMCj+b7j1rAim6XOP3KzLYTSZd8/RsSVmtqrO71u/
	vYzfdP++udTWYrl6/w4Jtzc2btya+HIQEEot/z8rSF9++72nz/KCBd/Ke+rSuf3Ssrv+00YYYFwZ/
	3+IembwGvz0g7HawNTtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1meuHF-00FZzP-8d; Mon, 25 Oct 2021 07:20:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1meuCy-00FYU3-Jq
 for linux-phy@lists.infradead.org; Mon, 25 Oct 2021 07:15:50 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E8F6660F9C;
 Mon, 25 Oct 2021 07:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635146147;
 bh=q7ILEld7it3AMXE9sJdmUiwj0tODHcpVIynxhnU7x/A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MTp2NmebcA7C6vlehVz3ayqL0jfzrRdh9MkSBWt2fRNKOIUmjQbOAw57C4QwpQPz5
 V7MOtI/dXB5H1tMBO3xaRUGbHvOl7tSEqNitCZScby+BRhgHAGxEQ1BejI4kcPiy+9
 CqHe6+/zi6AjU/gNdwmLL57Zym3Ab8wDLSy5DaTg8P/OdWYk/dzlJm6hVofBsWvioG
 mgLNKPDr8M5BlTsQ+wj1vKcZ6flzhqtvZcUBtxbrGqBPN5ohwDZ+nzhaa9pUeU6irb
 cmXpP/bnMmGmtUXrgx39tp+Sh4xfcMVaik9Z7de//O0upJx667xm0GGKlA3Q4cICVa
 lfTtNDmzfGH9g==
Date: Mon, 25 Oct 2021 12:45:43 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com
Subject: Re: [PATCH v2] phy: qcom-snps: Correct the FSEL_MASK
Message-ID: <YXZZn7dXEezgHfrW@matsya>
References: <1635135575-5668-1-git-send-email-quic_c_sanm@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1635135575-5668-1-git-send-email-quic_c_sanm@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211025_001548_738031_CE2EC1E9 
X-CRM114-Status: GOOD (  16.30  )
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

On 25-10-21, 09:49, Sandeep Maheswaram wrote:
> The FSEL_MASK which selects the refclock is defined incorrectly.
> It should be [4:6] not [5:7]. Due to this incorrect definition, the BIT(7)
> in USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0 is reset which keeps PHY analog
> blocks ON during suspend.
> Fix this issue by correctly defining the FSEL_MASK.
> 
> Fixes: 51e8114f80d0 (phy: qcom-snps: Add SNPS USB PHY driver for
> QCOM based SOCs)

1. pls never split the fixes line!
2. Format is Fixes: 51e8114f80d0 ("phy: qcom-snps: Add SNPS USB PHY driver for QCOM based SOCs")

Pls dont use your own format

I have fixed it up while applying...

> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> ---
> v2:
> Corrected the register name COMMON1 > COMMMON0 in commit description.
> Added Fixes tag.
> Dropped copyright line.
> 
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> index ae4bac0..7e61202 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> @@ -33,7 +33,7 @@
>  
>  #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
>  #define RETENABLEN				BIT(3)
> -#define FSEL_MASK				GENMASK(7, 5)
> +#define FSEL_MASK				GENMASK(6, 4)
>  #define FSEL_DEFAULT				(0x3 << 4)
>  
>  #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1	(0x58)
> -- 
> 2.7.4

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
