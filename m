Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 474F8ECAAD1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 17:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lD+hL8Q8quIii81TzjrMwYF8txBo+dg3LUUiM/D5bRI=; b=EmU9zehDE28CT5
	kZN2NR/q3oY3fg8RLtE90h4TgY8nFCjL2XuQhd3YBd0H76hwwC67TLRotcHiHZgLOnrxGyKqNdWxR
	lVCxpLDKXMnXxYCjZTfRq3HettZOYolZhyB7hcSx6JpwR8etJZBGckKZBuGr/A3vs06l25JH1mES3
	QA0pB3WgfDbX+WH+AIzoqXp8V7mIvkMHECe/c1m9eswuYbzBVkqDB6yMihlk2UObpmgaRRAmHOUbL
	l4ztDMXarrKqOzaNrobuK/fZ8+nMqfN2rGa5r1FgKCAb9HFy7fyDrnMpB42AO5Ajl7W2pb10E676a
	RBNb4IQJtjf/8uiH6AmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT597-000twp-9U; Tue, 30 Aug 2022 17:35:29 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT56V-000scP-NM
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 17:32:52 +0000
Received: by mail-lf1-x134.google.com with SMTP id j14so6165103lfu.4
        for <linux-phy@lists.infradead.org>; Tue, 30 Aug 2022 10:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=e7JEKYuofd3ohVuN0wQat/Bd3pvagzYZJuquu9YnaTc=;
        b=sccqeAOnaZ63YsK2QiDUkPx1XiQueuhmVcEyY7D1/T3NLqy3NAh1+Rn5w6JOBChXhu
         ofeHiBKfVgGiNTBIcjYbaWG0bevSh3X+fk5q7sb5LCLRS+4DyYSJ+uG/vBOBiWAMmKDW
         jyvx+aaIJMt2iCgo44tfCGHh4nDVa8QMUy6otmtxcqjNbWx6q/0MDzbY2s7hU9faiC5X
         cdgbRrNnmv9X+w1NVtP+ut5y/2I9SI0LdciIfqtNo7Eop8so4Is9jCUG+1q2fBdQQcD0
         D4DjZbo9t1yznxP0R1uwKzA4EyA2VIJBZJdJZy4sYf9PIhWN6ow3ixkbKogA3GvRC2QN
         MhHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=e7JEKYuofd3ohVuN0wQat/Bd3pvagzYZJuquu9YnaTc=;
        b=iL8AVPoQVO9Er9A6PCCaXi3Im81BjbONpDIAlFlczo0ifUic3Fr70a5bm0ti8L4uW7
         xAdFanMioukRZGy52CEo/EIBoZGOsWUBV5dJFKHg7H7rSkg4D46YVJMVtPqORAww7uPQ
         YPjc+41lNpuO2/SmosLc/8EiNxTZe2uVqJ3kp8Eoxs9kUkstP+4fkNT2+/k5wAwM297R
         O9c/hvZ5XvHKrL5M2xidpLnFNDaXXlDlAHP2cTbn0F0f657Suca5iYLj9ZZ1gXBf9+M6
         4sjcFVN2YaNysMG9vlfH/XVLTGw66Vs5N31FjJGoDWT0S6gSqo/2YERlzbOGDiNs0erf
         lTbg==
X-Gm-Message-State: ACgBeo2IZVMT2+eUhZxv4ur7gNkFAMN1I/bSEeE4TWi4GT055CXxaSiJ
	xrjm/EGxqYOG1apMieyG2VcWQw==
X-Google-Smtp-Source: AA6agR71Ri1C6ITQXhDL5pZbp01DKxvtr8nIL2S4m+SgX2lfZcjbi0Z3IVSXrgmMwJay7vslWOAXeg==
X-Received: by 2002:a05:6512:3d1e:b0:48b:3f76:eff with SMTP id d30-20020a0565123d1e00b0048b3f760effmr8545084lfv.312.1661880765623;
        Tue, 30 Aug 2022 10:32:45 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id q7-20020a2eb4a7000000b00263d44b079bsm1166844ljm.99.2022.08.30.10.32.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 10:32:44 -0700 (PDT)
Message-ID: <af1dd205-149b-034e-5f35-727ac1d151f2@linaro.org>
Date: Tue, 30 Aug 2022 20:32:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v1 1/1] usb: phy: mxs: apply board calibration value base
 on chip trim value
Content-Language: en-US
To: Frank Li <Frank.Li@nxp.com>, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, imx@lists.linux.dev
References: <20220830162538.2845274-1-Frank.Li@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220830162538.2845274-1-Frank.Li@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_103247_811222_6C0465F8 
X-CRM114-Status: GOOD (  11.53  )
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

On 30/08/2022 19:25, Frank Li wrote:
> USBPHY_TRIM_OVERRIDE provide chip trim value. DTS provide board level
> calibration data. Board level calibration data should be base on chip
> trim value.
> 
> For example, TXCAL45DP board level hope add +2.85% register base on
> standard 45ohm. But chip trim value is -5.25% to get 45ohm output.
> Actually finial TXCAL45DP should be -5.25% + 2.85% = -2.4%.
> 
> If chip have not trim value at USBPHY_TRIM_OVERRIDE, No behavior change.
> board level calibration will be applied.
> 
> If chip have trim value at USBPHY_TRIM_OVERRIDE and no DTS board level
> data, chip trim value will be applied.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/usb/phy/phy-mxs-usb.c | 40 ++++++++++++++++++++++++++++++++---
>  1 file changed, 37 insertions(+), 3 deletions(-)

Use scripts/get_maintainers.pl to CC all maintainers and relevant
mailing lists.... and do not Cc unrelated folks.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
