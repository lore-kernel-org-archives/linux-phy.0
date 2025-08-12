Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7A74C87FCB
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 16:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mKIhfsCN5lqDr7P2vGJSfsIa8AW01PhRMTJ4YzmAhYw=; b=TnF8G84yF3MMN6
	EmvMU2T9vb+4mNd+Popr1nHfJZruNHAlrsC5hgkAOLlKQIGnA4YQzM2Th/Qa3hY5B6QZGNvfvO4Zw
	HUPw1kS/K00SPJVBnwmnCgn1Xc33HxYE7TS8sWz+ryWGmNs98F3HlsrPAatDEKRZEsIL2va0fHt5t
	0rqPuQP0h4N8Nze3lI802MQSKQNqUDFLzZh1Y6A5I2PzIAMdO+MdNrY3l1OgckK7x2ftugw4P0jY/
	IQodcnDuxXMY3KLSkhRbs5MwJgGyhbOkyY2qdCPtO0vnoVEGxq+emET4g4YCXyDToMTWdri5AXULt
	UIuZ3Ks67WM5q0gE0ZMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulri5-0000000BHkE-16Kg;
	Tue, 12 Aug 2025 16:18:49 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulm0k-0000000AUAs-2wpT
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 10:13:43 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-afa15bc3651so213262066b.2
        for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 03:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1754993621; x=1755598421; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mFxusUULII2JCz6cFWedFdJO93eFdX6UtIqw/uCfDBk=;
        b=sJtl3YKGjvBd7qWvzTck+2UywJHu2LsyBiziw7kg4tHB3RIeKB9J2k02CdJSpVA001
         redn65RKu8u/s6HAH//SPvPBQTfHYOQUq/MBEjmDt8dnN+ZpyqT0ROtUDiWZDgzTyPlK
         G4PWSjV2oiOfgplINqwK3Nl0P79HTgdT6noYEUsJwh7hoZhLkmVQaHfJREb3eUQWNjrO
         XGZhbv3id8UDFfuskvv79oMZmlV7GMtDIIeWUfp2yJZGaldlnv4/ZnJl3BWAv6AHFDyy
         koahci+HxOb7VI3CAbiKEIHP6UiY3pqPbBeI9YctV+NhNxKgsxwMlcuRJ8CPWVHOHO9d
         wvhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754993621; x=1755598421;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mFxusUULII2JCz6cFWedFdJO93eFdX6UtIqw/uCfDBk=;
        b=HzTUUrsrdju3asjgCj1gN28KxJ5xD3Wjifoq9MIfMagmc3k4G1bX9tdHU+euCgadV6
         pTYEGgDp61O9GTUBD89QlapJzqtFWAG13Kh2p63H4+7ns8wzYeLln5GlKgrPXo7EWhx4
         tgcBEaLwqVYShEvwdX3xh6ObGP+0XbTfT/AlqwsNe6rsLeSsQucsosMuEaNEEYLsWDjs
         MymCF+8d8ST9FA3iPuuAr00HVF+9gjfuiHA1qeWAvmAo4UlurrfWFyiD7DimzCdSK+Y4
         rC/mAoeBABsBi5ZN2MAGiaQM8UTx5wfePLgM02Y5WiYcoYcu2fbwVASL/wCyS+KCySGZ
         cc6Q==
X-Forwarded-Encrypted: i=1; AJvYcCU4hgyXI0M9tQmViY5qJwy7tGe8i1NuNx4mNo9sZLhaR0pFCWixKlUmPaLiank3wRtmR2+EpDqxny8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwGGqesUDOLL10DAFd6I8B0VOlZsZusOXbFLc+Coi1Qe/cBhV3R
	++XxMYv14Xu4pda6WvOQCoumVWhwj23JHMuwhCgDoBIPxGeqAYd6ZC8RSlOrDrM4+g8=
X-Gm-Gg: ASbGnctgwYMaGOqANYph9ViuZN3n+WA0VBj8NhZSUQFXmH9GyWJ7bNKcUM9iPfDxmdT
	fXtF/kO6FK+VDZqw4gGiHdW2m3W4kUPCwGU+/PQPGthmPxGLS8Yx3KDDqk2S3jPlXQ55fIDAsL8
	BQaPXo/yKnlkbeeO9LxCuCYFhFxBFpfH/dDA6cZhxIjn/4/9LeX+i0/QYm9stjGGMsO3CwuW8n4
	82TZ0HILTCMRbo94QdeBwAefcvGVErc/ykzx/vyXXb0sBzbN8o1FCzQ9QslUcRGvlk9nJMOVfWA
	Z247FGwWZ6Qy6Pstq+BMxmFswNZVJlArI/jm/XLhoBjKd2FC6TtPRVwoRfd476st3ZbjALVPD7w
	ak2oYer7liSBSs1yNQjpuSYsHRLi30Q==
X-Google-Smtp-Source: AGHT+IG4ua34nZK6YcSnAqJDbTdQgxSKRc/Mui8zRSNQj1FuZgDFYh3if8GQtcr/adYrVmTV/vsBYA==
X-Received: by 2002:a17:907:7fa8:b0:ae9:ca8f:9642 with SMTP id a640c23a62f3a-afa1e04122bmr244712166b.15.1754993620573;
        Tue, 12 Aug 2025 03:13:40 -0700 (PDT)
Received: from localhost ([2a05:2d01:2025:1908:e499:6dcf:1e86:8748])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a23ffc3sm2177082666b.124.2025.08.12.03.13.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 03:13:40 -0700 (PDT)
Mime-Version: 1.0
Date: Tue, 12 Aug 2025 12:13:39 +0200
Message-Id: <DC0DBER6477Q.143SU9KXEI6FN@fairphone.com>
Cc: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: qualcomm: phy-qcom-eusb2-repeater: fix override
 properties
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Pengyu Luo" <mitltlatltl@gmail.com>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Konrad Dybcio"
 <konrad.dybcio@oss.qualcomm.com>, "Abel Vesa" <abel.vesa@linaro.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250812093957.32235-1-mitltlatltl@gmail.com>
In-Reply-To: <20250812093957.32235-1-mitltlatltl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_031342_798797_85FBFCAD 
X-CRM114-Status: GOOD (  15.83  )
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

On Tue Aug 12, 2025 at 11:39 AM CEST, Pengyu Luo wrote:
> property "qcom,tune-usb2-preem" is for EUSB2_TUNE_USB2_PREEM
> property "qcom,tune-usb2-amplitude" is for EUSB2_TUNE_IUSB2
>
> The downstream correspondence is as follows:
> EUSB2_TUNE_USB2_PREEM: Tx pre-emphasis tuning
> EUSB2_TUNE_IUSB2: HS trasmit amplitude
> EUSB2_TUNE_SQUELCH_U: Squelch detection threshold
> EUSB2_TUNE_HSDISC: HS disconnect threshold
> EUSB2_TUNE_EUSB_SLEW: slew rate
>
> Fixes: 31bc94de7602 ("phy: qualcomm: phy-qcom-eusb2-repeater: Don't zero-out registers")

Oh, not sure how this happened. Thanks for catching this, I do see the
problem in my original commit.

Reviewed-by: Luca Weiss <luca.weiss@fairphone.com>

Regards
Luca

> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> index d7493c229..3709fba42 100644
> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> @@ -127,13 +127,13 @@ static int eusb2_repeater_init(struct phy *phy)
>  			     rptr->cfg->init_tbl[i].value);
>  
>  	/* Override registers from devicetree values */
> -	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &val))
> +	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
>  		regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, val);
>  
>  	if (!of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &val))
>  		regmap_write(regmap, base + EUSB2_TUNE_HSDISC, val);
>  
> -	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
> +	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &val))
>  		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
>  
>  	/* Wait for status OK */


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
