Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60646E63F3D
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 08:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9UoD89C133VLMtG85ROhaIRgRIqagOwHEmCi/YNsBI=; b=EeIJjuC5MyW7Rh
	9TOPmjBSkvSxJ3epYQsj9H03sG2PrqTMTu8p7tNHqs4zOLRxGTaw1lR+ES5Axwm3nUleYxw5Qk/jc
	w1+0nQLAfj69yOYOqVeCTVW+uReR9gkSxAK2HCauD5KOrBudAqmUrvlsDYtdWwmeRdG3Lhm9x/0MF
	E0F1RiUhh11lB0Yu6Rk23dGZMzhtow5cWnzUIDJy6e3+ENTdXvmzVat8I9vd8ojQFL8FSjfhQZreJ
	8j2iVUV+GenIfsVvMQMchAXfQ2ixIeOUj4mPpU4zTMtuYpT+RVPVYcY6J85v6AzMn9un0KYK4jure
	hlHzE3/aRKyE22DCcn1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruCy-00000006BJZ-3ily;
	Mon, 16 Feb 2026 08:43:56 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruCw-00000006BIu-1tan
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 08:43:55 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4836d9d54f6so3765545e9.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 00:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771231432; x=1771836232; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=E0xs9fvGeOqwxr5V8t4Km2tE6fnDF+EDCRUjcySx4So=;
        b=lIc16eWgUpQa4bwMFDuyiardWWlZ/2ZCq6i1r9xzXVb7Rawch+1qKcC6JTecwhhNpf
         Yf5MVNU8/m9s7mMZO1NlcXSPR/9gRV6FOJ819z2mYOvbA5600PZnnmNElGIxiKd0+ZLz
         6kny53bt1f8KwaWA7VxmjFMCjaOeyd+RgOtOapIHh5/tPHwRKlxjeQpuImXgCduO/hDh
         7lA0Mckht8SP76LRBfNGAsCINQUQy7w5sI58T+J7dm1ODzlRcIaOBV4rg0Y3ThFYnhDY
         wixzFkU1iqRz1/03U6F8HXKqLh7y7qNcx8wq0nnjeekp/mEHQRhtApQaQR+1QBzxNhQJ
         Kw0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771231432; x=1771836232;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E0xs9fvGeOqwxr5V8t4Km2tE6fnDF+EDCRUjcySx4So=;
        b=G81+1UvDceTSvTIAzghuco+kquAFz41HiJ8JY8CtN4OGpNBV1jr3cbESA7d7z8HTqO
         rf2tEW1/afXFTSxafO5wfc2aynLVk5HKiSV9UGNWY8tpbWsPfyONrU9KlsqYJvPj9ydu
         mGmq/mWT6Bk31opgQhZeENl/IeoHSrNb2U7Oe+3arvyI0hhNlTxsfqiNiDUnnEpOTj8c
         CuTsZaJL/PJiI3C6KkpodCyrPGoG+9Ls081WkqkeJbENiFstie1INpQBOS85M442hqP5
         zIW0e3atUTTzQBzhI881fe08vLQgAj8RvEz95dRBAGgpz1gz1ZrbBLTCsluljrSZI11F
         Xenw==
X-Forwarded-Encrypted: i=1; AJvYcCXpKPQkpELSn3bCKmTXfZjiXyvbLxFv8HP4Ekl2DPTC9jf5p1Kk2lZkqWYurWrSVrYl82RjHT7DIWY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yww9IRYP+ZvErn0M4QDZ9jBoB52+ILo4rgJXn2PGvKSFH6PX6on
	eghMLkU1qyeLxLTqEYl1dmBD7ll6Yg89hf8AoUzVrmwZL6dTpsIfiUXU
X-Gm-Gg: AZuq6aLO5nfqpL+zT+RCwBpmdkoGBjQ5pxy+LxO9Jmor5BzjuU3kKCpl69p8adWNqyh
	wGWEU+TFVHnubAdszXlchXlswklSmcHRhgpsTwRDvDnKq2ZZC7uC1x3YrqsVUKmturPLqxVSfeh
	wiVGnDh/slu6TtBx/NYvmKD+Bv5cX+3iznV3V8qvZK7EIlg2qsfa2hgl+e1fYmpPH7XVcjjqWJs
	ZFDYeCeAU69rNRp8LYWoDGxvxVPUikiTzm8JhmU7fpB6/jEcCvFN0I7+yN+IACBkjqe8G8eiD0h
	ZA9wFZ7iPbFRg1tNZFCsCM6zZ/5+wAbYgWn76dPDdkzlmQQOVM1viaqWQqEKuFOI8EO4fnyc1ML
	Row9OKLSxMLRvobKwiwFrXKM2ZeJctT2ZZg6rpeMpi6digP8B1yDQ6MItVuxOiB4UHolLJAsraZ
	kST0kHLSYFfqydJQ==
X-Received: by 2002:a05:600c:4448:b0:47b:d992:601e with SMTP id 5b1f17b1804b1-48370e2b6bemr118383285e9.2.1771231432075;
        Mon, 16 Feb 2026 00:43:52 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:68e2:cc27:74c:c083])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48371a15dd9sm111107765e9.5.2026.02.16.00.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 00:43:50 -0800 (PST)
Date: Mon, 16 Feb 2026 10:43:48 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Haotian Zhang <vulab@iscas.ac.cn>
Cc: vkoul@kernel.org, kishon@kernel.org, andriy.shevchenko@linux.intel.com,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: hisilicon: Fix OF node reference leak
Message-ID: <20260216084348.e2ozdqy5unvfs7qe@skbuf>
References: <20251112062246.852-1-vulab@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251112062246.852-1-vulab@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004354_506102_8A6A6953 
X-CRM114-Status: GOOD (  22.58  )
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

Hello Haotian,

On Wed, Nov 12, 2025 at 02:22:46PM +0800, Haotian Zhang wrote:
> hi3670_pcie_get_resources_from_pcie() leaks an OF node reference
> obtained by of_get_child_by_name(). The reference is not released
> on any of the error paths or on successful return, causing a
> reference count leak.
> 
> Fix this by declaring the device node with the __free(device_node)
> cleanup construct to ensure the reference is automatically released.
> 
> Fixes: 73075011ffff ("phy: HiSilicon: Add driver for Kirin 970 PCIe PHY")
> Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>
> ---
>  drivers/phy/hisilicon/phy-hi3670-pcie.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/hisilicon/phy-hi3670-pcie.c b/drivers/phy/hisilicon/phy-hi3670-pcie.c
> index dbc7dcce682b..fc4f50aa31cd 100644
> --- a/drivers/phy/hisilicon/phy-hi3670-pcie.c
> +++ b/drivers/phy/hisilicon/phy-hi3670-pcie.c
> @@ -558,11 +558,10 @@ static int hi3670_pcie_noc_power(struct hi3670_pcie_phy *phy, bool enable)
>  
>  static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
>  {
> -	struct device_node *pcie_port;
>  	struct device *dev = phy->dev;
>  	struct device *pcie_dev;
> -
> -	pcie_port = of_get_child_by_name(dev->parent->of_node, "pcie");
> +	struct device_node *pcie_port __free(device_node) =
> +		of_get_child_by_name(dev->parent->of_node, "pcie");
>  	if (!pcie_port) {
>  		dev_err(dev, "no pcie node found in %s\n",
>  			dev->parent->of_node->full_name);
> -- 
> 2.50.1.windows.1
> 
> 

Sorry for the delay, and thank you for the patch.

Please do not complicate the solution more than necessary, and more
importantly, do not use cleanup.h infrastructure added in 2023 to fix a
bug from 2021 (will be difficult to backport).

In this case, it is sufficient to free the OF node after
bus_find_device_by_of_node():

 	pcie_port = of_get_child_by_name(dev->parent->of_node, "pcie");
 	if (!pcie_port) {
 		dev_err(dev, "no pcie node found in %s\n",
 			dev->parent->of_node->full_name);
 		return -ENODEV;
 	}
 
 	pcie_dev = bus_find_device_by_of_node(&platform_bus_type, pcie_port);
+	of_node_put(pcie_port);
 	if (!pcie_dev) {
 		dev_err(dev, "Didn't find pcie device\n");
 		return -ENODEV;
 	}

Note that there exists a second reference leak bug in the same function.
bus_find_device_by_of_node() requires put_device(pcie_dev) after it is
no longer needed.

Can you resubmit a patch set addressing both issues?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
