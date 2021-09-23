Return-Path: <SRS0=xaqD=ON=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C67FC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 14:18:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 334316109E
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 14:18:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 334316109E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQpNY5LF2dmkvWfbesBFTa1KXz2yo0Ez/jfWaPoeMCI=; b=NFbi7XFGg9FXEZ
	FkOWdTiDQ8dx0XjWW0aPQIE2IzTFFutagUwIqeyGRYxExZISUzBrzUyxePnm8ygS3FaFtAmdcxq3j
	GBy6qHor0r4NimOUUrGLgIENNO0wTe7Xa8079z2mb0KcsgetGeMTtmDbKYxwGJNLakTxqzy+OHnk1
	qwF8QBjbrR9FHx0sSLvOsfCeVUNiLVkSnMm1l92aJd5w3tWp2ickaZqDYq3SX804oUxwnuCipu2Yv
	SN2i0sr0TvXSH74xtka6U5Cj6gpDcG8YGlq6oMHRLvN0CPtA+mP3h8eAk8bmy0mYZsowfdzBi2pvO
	LyXD1LXHxqqbJmsVjZBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTPYI-00BoVj-OP; Thu, 23 Sep 2021 14:18:18 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTPY5-00BoTD-9s
 for linux-phy@lists.infradead.org; Thu, 23 Sep 2021 14:18:06 +0000
Received: by mail-oi1-x235.google.com with SMTP id s69so9771026oie.13
 for <linux-phy@lists.infradead.org>; Thu, 23 Sep 2021 07:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qtSma9q9BqHYrVg9rCdNIMKY6V64T/6gLqQcxTokY2M=;
 b=PYEK0I2XVXfutbxezOSYeATdb6rGXwAQHfSEx+N+ml8euVsQ8kga/0pN+nOjlvvY/w
 UgJZvbGfxXV0iwfmvBl5e0XNqLt9EDs9AKmhmJrnhmvadPJGnbmXN+FrQyyFL6afSo1D
 phey5q9KL58F/BEuggCvEAymjdshEo8iSFy2wF0hunrH3RlkfbIKgM8sbuD6g/2XEMhL
 zwdACGRNdghy0ZPg+e9B4Tq5FLw0Z32dEjeLt7F2rfc3GQ7VbeG34OmfJrnlZQXNPiKi
 /ksnhOEMiFL/K4NKcBRrb6U9lwIQcNRfL/BkBMJdtDS3m2q+4hRRUoa3r83F4fYAHmd4
 VEFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qtSma9q9BqHYrVg9rCdNIMKY6V64T/6gLqQcxTokY2M=;
 b=26ZvOHdJG1n2x/ieMTZR+XSZpKyYWRx1/xP8ZmdOqwDDopuLMD5JGVRw2gv/wCjEar
 tWCffq2WN54Iur6GVDqienfRKghmYT28IDrAeW0sHunGUeY9bVeiVak+LXrD+nNs4jtQ
 9qin8hVcC4cPCjfSgOspg5exdaJwU04X72seMoomNvzRMAXL8IJVQGSV5NMeW7Bnf3px
 /p7rI/Shd33IyLP7bOcL36Ln3yZWToXkzNLqycnHHRu2mklvFryPTEoHHLrsRHKHoDXW
 S//p9VKk8y0+Ybg/4D+Yyb8s8JbkV9J/cWGE2f5QwkXccAjHZtHnYVDL0XaVX11I1HYC
 HsqA==
X-Gm-Message-State: AOAM532W7L4mJ6gDfyxR6S4xVGCm1gFK1NdcPOFfUMV2HVtb7qPACIR/
 axwvlZI2hjsOCNridk2H1QuKiIV5G5VO0Q==
X-Google-Smtp-Source: ABdhPJxsgwpyvgQak9HZi9WjKrznb7X1aRRESpUMtD9ho2g2JDLxjinqTHA6WvSWzVpXGwyE2g0KnA==
X-Received: by 2002:a05:6808:14d6:: with SMTP id
 f22mr12790454oiw.132.1632406683800; 
 Thu, 23 Sep 2021 07:18:03 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id g5sm1401986oof.29.2021.09.23.07.18.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 07:18:03 -0700 (PDT)
Date: Thu, 23 Sep 2021 07:18:43 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2] phy: qcom-qusb2: Fix a memory leak on probe
Message-ID: <YUyMw9QqjKFMOEf1@ripper>
References: <20210922233548.2150244-1-vladimir.zapolskiy@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210922233548.2150244-1-vladimir.zapolskiy@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210923_071805_406279_C5F079AC 
X-CRM114-Status: GOOD (  24.09  )
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

On Wed 22 Sep 16:35 PDT 2021, Vladimir Zapolskiy wrote:

> On success nvmem_cell_read() returns a pointer to a dynamically allocated
> buffer, and therefore it shall be freed after usage.
> 
> The issue is reported by kmemleak:
> 
>   # cat /sys/kernel/debug/kmemleak
>   unreferenced object 0xffff3b3803e4b280 (size 128):
>     comm "kworker/u16:1", pid 107, jiffies 4294892861 (age 94.120s)
>     hex dump (first 32 bytes):
>       00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>       00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>     backtrace:
>       [<000000007739afdc>] __kmalloc+0x27c/0x41c
>       [<0000000071c0fbf8>] nvmem_cell_read+0x40/0xe0
>       [<00000000e803ef1f>] qusb2_phy_init+0x258/0x5bc
>       [<00000000fc81fcfa>] phy_init+0x70/0x110
>       [<00000000e3d48a57>] dwc3_core_soft_reset+0x4c/0x234
>       [<0000000027d1dbd4>] dwc3_core_init+0x68/0x990
>       [<000000001965faf9>] dwc3_probe+0x4f4/0x730
>       [<000000002f7617ca>] platform_probe+0x74/0xf0
>       [<00000000a2576cac>] really_probe+0xc4/0x470
>       [<00000000bc77f2c5>] __driver_probe_device+0x11c/0x190
>       [<00000000130db71f>] driver_probe_device+0x48/0x110
>       [<0000000019f36c2b>] __device_attach_driver+0xa4/0x140
>       [<00000000e5812ff7>]  bus_for_each_drv+0x84/0xe0
>       [<00000000f4bac574>] __device_attach+0xe4/0x1c0
>       [<00000000d3beb631>] device_initial_probe+0x20/0x30
>       [<000000008019b9db>] bus_probe_device+0xa4/0xb0
> 
> Fixes: ca04d9d3e1b1 ("phy: qcom-qusb2: New driver for QUSB2 PHY on Qcom chips")
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
> Changes from v1 to v2:
> * fixed a memory leak in case of reading a zero value and return,
> * corrected the fixed commit, the memory leak is present before a rename.
> 

Should have read your two replies in opposite order and missed your
reason for not going to the newer API and the fact that v1 still leaks
the memory if the read value is 0.


So, this looks good and as you said, we should follow up with a cleanup
by replacing the nvmem_cell_read().

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Thanks,
Bjorn

>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index 3c1d3b71c825..f1d97fbd1331 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -561,7 +561,7 @@ static void qusb2_phy_set_tune2_param(struct qusb2_phy *qphy)
>  {
>  	struct device *dev = &qphy->phy->dev;
>  	const struct qusb2_phy_cfg *cfg = qphy->cfg;
> -	u8 *val;
> +	u8 *val, hstx_trim;
>  
>  	/* efuse register is optional */
>  	if (!qphy->cell)
> @@ -575,7 +575,13 @@ static void qusb2_phy_set_tune2_param(struct qusb2_phy *qphy)
>  	 * set while configuring the phy.
>  	 */
>  	val = nvmem_cell_read(qphy->cell, NULL);
> -	if (IS_ERR(val) || !val[0]) {
> +	if (IS_ERR(val)) {
> +		dev_dbg(dev, "failed to read a valid hs-tx trim value\n");
> +		return;
> +	}
> +	hstx_trim = val[0];
> +	kfree(val);
> +	if (!hstx_trim) {
>  		dev_dbg(dev, "failed to read a valid hs-tx trim value\n");
>  		return;
>  	}
> @@ -583,12 +589,10 @@ static void qusb2_phy_set_tune2_param(struct qusb2_phy *qphy)
>  	/* Fused TUNE1/2 value is the higher nibble only */
>  	if (cfg->update_tune1_with_efuse)
>  		qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE1],
> -				 val[0] << HSTX_TRIM_SHIFT,
> -				 HSTX_TRIM_MASK);
> +				 hstx_trim << HSTX_TRIM_SHIFT, HSTX_TRIM_MASK);
>  	else
>  		qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE2],
> -				 val[0] << HSTX_TRIM_SHIFT,
> -				 HSTX_TRIM_MASK);
> +				 hstx_trim << HSTX_TRIM_SHIFT, HSTX_TRIM_MASK);
>  }
>  
>  static int qusb2_phy_set_mode(struct phy *phy,
> -- 
> 2.33.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
