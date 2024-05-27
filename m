Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F9CAC25B7C
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 09:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1u+a0p3YHjNVOPzywzPggafbhgJrZMyiM47Pj6rO5WM=; b=qtic5H3hUa8P+z
	b6OLiU7pqXQSdtwA889l1eCo/uFXcjiqSPIgaJu501l3Xd/mRzG51Dmu5U8KDLAQhiXk5zBIjz/ds
	8s6AgBUNUPTRToZAyfxRTJqjOJ0bKH0HAztKlKqkEQ0iyAIRxDdxUSRGZ8U952vHbaglr4DuYUAPo
	CJsghfjz+wW1f0UHhIjHEA1DYaao96Z9DXX7b6KAESxAeoR7mE9V7fl8DJdvJnSXi8OVc4rxZhT+d
	4jaL3LkL4EWFmBJNi2U0hVgwEdlHeBmAQT8fELYz/RcyJVBcNjIBh6MsbsMX0eToN2MwJXROirglR
	RiTBEINj0Q7lMznWZACA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWPr-0000000EMfH-0rZC;
	Mon, 27 May 2024 09:13:15 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWPo-0000000EMbr-1lkt
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 09:13:13 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5295f201979so3175302e87.2
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 02:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716801173; x=1717405973; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fVceIqP9YyNxKt0fPIDPd2dHMyzB268dzk68jIx5hOg=;
        b=Th8GCR9Eq0qzS+DS08hWaaKMHyQU/nNoohfg+u/BFKaHjjOxwelNXod44VaVukTLJ5
         XQz3H4f0QoxqTn/OxXLrlUn+Ak4q9VMMa1gVIE3fNbeSIxcMqXDGdbUfEQ8ywPDc1OXu
         teXqSb19Ak7uTxnE0b9BO+Wvg4sxN5Y5T9Myl57hT9k4fkYuUxDHkfWSZkvlXUGiROb5
         P//vA5jRPHJW2WFlcVWdmT54Hkzx/ewlYido261FPdTrioYMM75buw6bCuaWGv60qRfu
         nIYeFiA+qtpA9+kjpM4kZbowOxMGBesL0STEm9WDdEWhNEoChx0J9QpiGJxeEl5c64Qo
         bNzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716801173; x=1717405973;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fVceIqP9YyNxKt0fPIDPd2dHMyzB268dzk68jIx5hOg=;
        b=luWMsIgQOoSm/DqGFClf6VcPLkhq3bS5PNWqySsIfstQ0xAlRNXzg93wE4Cp5KyEop
         7USrZLCASC/EPunnqye9k239KIF/LHbvXWmHigd/fEfIATiZ6sQh6YaqrVZlIJciH+pP
         mtu6mtO9HxYBHCX2e+b70teieY/XP5VW62OpqyY66Z7Oy7fcbR5/TlhPdVq7ZGTJB4b+
         IShupw5ENYOW4dsQB5cbxAMbvdFXQDUMiwVvlrgNv3eWk9c6rtIA7puKPwqyyMDvtnD9
         JeSde9Cb0So6OKlzWYYUEwTCcr8XwT7RmiPEB2A1+w1r+7ztRaEDkEdb7/bomcyfhEtg
         RNfg==
X-Forwarded-Encrypted: i=1; AJvYcCV7se/BcjqAf2TWo5nf41N9m53oGVDy9X82u/xfzxhKBUmSzPAU0d7s5mpnzFiiFmZGWzpj6VEfq9+RVShZam+ZdLcUTnXMrC81XCYK6A==
X-Gm-Message-State: AOJu0Yzj28Yhjvuuq0M7N7+UmflCA6JehSKq0ulvVe9lG77DasBes9NQ
	yDuqmaso58XM6oO8pBb0Lr8UBnSq4qPJ/YbjcvvYNiRdOkxYiXeElTZw4YUPkxo=
X-Google-Smtp-Source: AGHT+IG6zzcx3yui5stYLzYjZDbUcQG22Q+aKQ5vxWXJ3dzImRH2zg+o8nDmrIbRWr4Lda0oHMTC4g==
X-Received: by 2002:a05:6512:3da7:b0:529:adb8:dfc9 with SMTP id 2adb3069b0e04-529adb8e04bmr2665170e87.66.1716801173369;
        Mon, 27 May 2024 02:12:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52970c330acsm491093e87.197.2024.05.27.02.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 02:12:52 -0700 (PDT)
Date: Mon, 27 May 2024 12:12:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Kuogee Hsieh <quic_khsieh@quicinc.com>
Subject: Re: [PATCH 2/3] phy: qcom-qmp: pcs: Add missing v6 N4 register
 offsets
Message-ID: <n4mqyer56b6nnt7oce7bsdsjntws6alqkyqu7dw55btnutv7m5@gzuzigwkw3ld>
References: <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-0-be8a0b882117@linaro.org>
 <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-2-be8a0b882117@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-2-be8a0b882117@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_021312_484761_2B98CDCA 
X-CRM114-Status: GOOD (  10.94  )
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

On Mon, May 27, 2024 at 10:20:36AM +0300, Abel Vesa wrote:
> The new X1E80100 SoC bumps up the HW version of QMP phy to v6 N4 for
> combo USB and DP PHY.  Currently, the X1E80100 uses the pure V6 PCS
> register offsets, which are different. Add the offsets so the
> mentioned platform can be fixed later on. Add the new PCS offsets
> in a dedicated header file.
> 
> Fixes: d7b3579f84f7 ("phy: qcom-qmp-combo: Add x1e80100 USB/DP combo phys")
> Co-developed-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
> Signed-off-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6-n4.h | 32 +++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
