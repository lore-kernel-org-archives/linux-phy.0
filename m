Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 573E7E7716D
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 23:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGJGF66QDSyqd9dOyDWqM3hvw1JZAU7+nvHvfV92QYQ=; b=QykuqbQmzrUBkr
	gTz/Nvtb7tMp+zPR/zE+pXiRPEqVAUEi62lUQQbWTLe52ah5H/2C+oXjTUsM+UjwyNwaU8K9uGs+5
	U40Bg7O2Lcpc3lETfSQm1Xc8cYFvzTmxcRyB0KeWWRWLx5x6ed/k2wl8vKn5meJOoil2cm471r4KU
	oyfTXvQ+pS1Tmn/qP8C2HpBMQ2QDG8E0N0zUKCLlBodX3C5ixyyAPc6Q9ELMK5P3/tqtUwwBIuy4x
	40GFkslHY2wMRorwXzpM0q3HbSu2Mq2XyfJACygkHmB0UvULNGn2CSFCB92H7tMz29YZy9Gj0/GIA
	8a2LCyDbjwS3TKryr3Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIyNK-0000000E5uh-0IeP;
	Wed, 04 Dec 2024 23:01:42 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIyNG-0000000E5uA-3XpT
	for linux-phy@lists.infradead.org;
	Wed, 04 Dec 2024 23:01:40 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-3001490ba93so3338301fa.0
        for <linux-phy@lists.infradead.org>; Wed, 04 Dec 2024 15:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733353296; x=1733958096; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9vaTYGf0bQtIjfkF3yhPnmJiZRJ8Kz7bkXSyKGXSTLE=;
        b=J4pQdRhVZUWSCHTkbV7l+VHvjw/450646CVqnUSO8HLuDQO87rJI0HFtOIjh+7Rp7g
         JGlI0Ow45pAHnzdLBTi+2bAbE2CBxi/GEqMGMRQ0vG11Vp5pC9Txn2sOETpdxQGmmfRh
         ZLNuikQ7boKTdyRAYsJkr9gzLyZMIGLKfqsRznFXl3NQBQ0Ik3CqToXl3ZVIfdEBvJ0O
         5o2899evP5shNMH6WBZbxrmXL5zrEPXHCugzBY3YQY/J6Fw/pWzLiMhCNvikw9s4V8o9
         uvY9pQfrAGnN/kxwlBkskfddfppvLloJUi5aSqA/qqT4EFxiJIFaWnWZGPFCCYlYxHrA
         IEqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733353296; x=1733958096;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9vaTYGf0bQtIjfkF3yhPnmJiZRJ8Kz7bkXSyKGXSTLE=;
        b=CIIzFipUK3QYCZ++ALekRvXg08xhNkp7CdDEqUnxAaKTtFltcPkRo4GihSTdzMJo2b
         Iy5FnVtIFPj4FgXSsM1Wp4waDPkIzznuw/DY9KgEXndlOUhV2Ev0c2f2h3i69TtmBhPy
         iOQirGeuyb3iRQtbWzFfMjOpuZs8YWPjMDhzSVKUSR3w1x3ch/S7Sjet2rVbO5MNIhyf
         DrBkOf9EQCNM3lCP6AyMx1k1EFG+36WRnLp/mcBgBk1eCvdSwFEIEdz1oZ8+ybee8E7a
         IjvM0dUcM6/rtPgW+/2g3d6LYq5DzrlA3+VCIrP7154X7o53OYkV0GZMUycPZhekN7mi
         HgXw==
X-Forwarded-Encrypted: i=1; AJvYcCUDbpBJ6p+rz1uY5hKftv6Q3uzG1J7orOqja48OSaChxKitRaJy8i+netpvZ4cVMH2KQ0YVoy6/EBc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8KC5Vip9rsr3H8PWgGuazM185oPjRLxQ1AHB/DGubJpYBjUU6
	/d7jJMhIiUPJFji9wBShpS+41tl2sIalsrOiPK7VA1thJ4kn/Z61BsWyEUyFm5A=
X-Gm-Gg: ASbGnctCL5SdyoQxNFvQV9+oW7W0LyJkRhk2jxVLdBaxdkol1BTEsLsXNqfLI0WmwW2
	OE1zsHqjBBSFSQY1cnl4AzVBwL4fEmP/2tPL8qD8f3hoGeVZxhutbav28XRFZGyFFOtGWqM2x2o
	5jXfAhQh87NXzlIqJL0kwJbQ6R/2nbeKgwqXL4/M3tQRY3udAlerVDf3+NPUZa6V3PAfs/1sAw2
	xuzsJxBaV+j1gKZWw7dNmQN6B6ATc1jU+hBpLUa0BGVJW82nOhTb0tGoKDR8OIxMQXP7Cwmk6Ng
	TBnVfezgiYxAa1Fj2/6Qpoq5XBPObA==
X-Google-Smtp-Source: AGHT+IFTuplv2isdxHj5cnxXRgLfLSYqhiljXH2if0rM2tCYLl4uD9OrVYwTUyo0WS8OVxU2kC/gEw==
X-Received: by 2002:a2e:bd0c:0:b0:2ff:d7e8:b71b with SMTP id 38308e7fff4ca-30009c940a7mr53718381fa.12.1733353296270;
        Wed, 04 Dec 2024 15:01:36 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30020da27f1sm124871fa.37.2024.12.04.15.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 15:01:34 -0800 (PST)
Date: Thu, 5 Dec 2024 01:01:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org, 
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/6] phy: qcom: Introduce PCIe UNIPHY 28LP driver
Message-ID: <f2yfxyuhoiavwziq3nd64mly3qdxif5abt2qp4qvrizqytqrid@fqfb22rpu6ug>
References: <20241204113329.3195627-1-quic_varada@quicinc.com>
 <20241204113329.3195627-3-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241204113329.3195627-3-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_150138_894164_D295CCC6 
X-CRM114-Status: GOOD (  13.21  )
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

On Wed, Dec 04, 2024 at 05:03:25PM +0530, Varadarajan Narayanan wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add Qualcomm PCIe UNIPHY 28LP driver support present
> in Qualcomm IPQ5332 SoC and the phy init sequence.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2: Drop IPQ5018 related code and data
>     Use uniform prefix for struct names
>     Place "}, {", on the same line
>     In qcom_uniphy_pcie_init(), use for-loop instead of while
>     Swap reset and clock disable order in qcom_uniphy_pcie_power_off
>     Add reset assert to qcom_uniphy_pcie_power_on's error path
>     Use macros for usleep duration
>     Inlined qcom_uniphy_pcie_get_resources & use devm_platform_get_and_ioremap_resource
>     Drop 'clock-output-names' from phy_pipe_clk_register
> ---
>  drivers/phy/qualcomm/Kconfig                  |  12 +
>  drivers/phy/qualcomm/Makefile                 |   1 +
>  .../phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c  | 307 ++++++++++++++++++
>  3 files changed, 320 insertions(+)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
