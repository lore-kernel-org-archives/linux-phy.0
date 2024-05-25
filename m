Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC608C25B78
	for <linux-phy@archiver.kernel.org>; Sat, 25 May 2024 20:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=40+PNixLgku7uSkjo2BielQIkG8cHRCd4XQ3V9SfaBU=; b=cUeNhbIqRCnGbm
	6qaUjNoQCmwpTRCCgjKFGr009qGYmkGQJgwZObqvLZr1XMaQbRXXq7jLZSg59GOv/25MDMyWp+Nwc
	0TvzImA/aMGFuAahPaob2GLwg3aK24lowAKwd5HN0GH4r5qZUst7BZVMyLcqkGF3ww9zAlc1+ELye
	r47vq8R6mZvkM3CyFtd6Clx4D7h/CL8C1bn1eHRYWsFo9kQWwovqrZJUDzs1Yqa+OQgNczP4kGiDI
	/sodYLGUamLkA/vig54c24dfI3SinHn7VJK5NJ79ueJVBu7j1RkyXjuCUbxskK9XFLbZR8Iz4Yfm+
	Hg2kClLzyrUJqwBYailw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAxlH-0000000BdNI-1eqd;
	Sat, 25 May 2024 20:13:03 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAxlD-0000000BdKZ-1KnB
	for linux-phy@lists.infradead.org;
	Sat, 25 May 2024 20:13:01 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2e964acff1aso13068371fa.0
        for <linux-phy@lists.infradead.org>; Sat, 25 May 2024 13:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716667965; x=1717272765; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=w6YKAF3uOaRvvdDSRLqD9z7t3ncxonB3HE3QHJTs1EU=;
        b=IZWSxMAfWCwDkdvvmnyWhUElhpPLqlV2FBiDTmFGgikHgz9ScZ+4E+Hnm3lnvMxKMU
         5g96gQXHvkM7+YUDagPHpGjxuxF/R4a/8dPsaPAY7Pj9U+WEnxsQJdqZt6BmRSS012Ej
         wCra3AamjII5mEF/KQKDjCAeBbX5h+xXjvYSHjU64gtXmFF5fK0LzvVfbYHwwpHAEIff
         POQIF8GiTj1Gae0lfUsMGqQbfKR+vNLFA9GGKcANWzyjZdTD+jAhw+3HbPL9wCZFS6zS
         CA6um8oUDU4aWvTtEewqN1iQqtGK87BrDJLpeJ47C07S0RejE3dA3yG3aMnRvcfsIhjn
         WM5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716667965; x=1717272765;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w6YKAF3uOaRvvdDSRLqD9z7t3ncxonB3HE3QHJTs1EU=;
        b=ekzFI8VqPUWPRfJdLpg+500HZpYq/uclhRKXuG2u/ACUWlvvaUgZlfQdUEHMYajcmB
         kxF1hf8RERhLQeTghUzjVGeflcdtB0WTuUrQ76AJF8inHy8PZV6QeQnf+eqpwwrQeE/d
         etxQIDMcVbGoHaltsZMwqRLsOz3jhQCX/0qTsle/e9SPoqpBcW3e7fU5xtyMZNzhl+3u
         X5hvFwhQJOgNLFnaeFo+jkXCxWXdjPb94o1lGPw8u5LOPfnijMVXpv4tYhsfz63OKBUg
         /CgnCQZGGZ/6hd9GDSIsGphPMU2kPcBXYuoWR2VTQZuglUWSspxQBlferZYZl5GWld//
         tERA==
X-Forwarded-Encrypted: i=1; AJvYcCVDXrqM3QtKk0vAAqgs7Ydxs6b81ixyn7zljUUYuJo+Pz5NO1YSzWL2Lzat56f6l9FZILyl/Ttoxl8ijMZEjZDyoTeTew71V+1FfxmH1g==
X-Gm-Message-State: AOJu0YwYFcLRoKJhwyjWXCMLZ5HlTYI9MP8P/GQ4QW8jR0pUz/E3fqDX
	JhAy2l2IVJQ9ZRA9yhMJRT9Lt/0SCYZvKv5SviYZsEImKQCBtFjJxYEFewsKPBY=
X-Google-Smtp-Source: AGHT+IHJDobPY5xFq5dvnmXXHNOJaX/jRN/ri7kcyQYhHMcDJUmJpMFwZSjdDHIOoZ0wzgcLMXKknQ==
X-Received: by 2002:a2e:bc08:0:b0:2e9:570e:1cf with SMTP id 38308e7fff4ca-2e95b3089d9mr38786341fa.52.1716667965322;
        Sat, 25 May 2024 13:12:45 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bdd152dsm8775351fa.81.2024.05.25.13.12.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 13:12:44 -0700 (PDT)
Date: Sat, 25 May 2024 23:12:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-usb@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH 02/10] phy: qcom-qmp-usb: Add sc8180x USB UNIPHY
Message-ID: <ynokoy2fh4fwespzfdgo7mpklmy2n76syfyb73bm4m2hp4cftp@am5nldqvj65z>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
 <20240525-sc8180x-usb-mp-v1-2-60a904392438@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240525-sc8180x-usb-mp-v1-2-60a904392438@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240525_131259_532935_397B210B 
X-CRM114-Status: GOOD (  11.30  )
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

On Sat, May 25, 2024 at 11:03:55AM -0700, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> The SC8180X platform has two UNIPHY blocks, add support for these in the
> QMP driver.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
