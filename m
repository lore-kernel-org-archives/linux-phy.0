Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22E61D0D791
	for <linux-phy@archiver.kernel.org>; Fri, 11 Oct 2024 13:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UB4Kx0MBZ6ALmNCbZd1DABeQ+TpBNEMgAzaarLXxo+Q=; b=WzzmIW/axmQRw9
	+nJtQ5JVE3UfRUtJS1KbZRswXGgve2YXzamSgBdsuu2KoIhco/qw7uDSGZYuqrzTHRq5XF3Ay3FcL
	ERdlnFlhUSVHDRN+3JVimkCfWjCy98brInx3TuAh62aImck8uQSR1I7BvKdwes1vi81aTsf9Nb7Ha
	g2RO8FAgBapIoRVZC4YDv703toVF/UjK4dnLF3JJJ72QtD4C21UH1OPZonJBFfdFLTXrGrvmGWjDc
	TBJlXFuWKocC0mKdKh66EkTsO+XcmDeCUpGIWhkL8Cbt2Nkk0UHmgDuQe3Z0eN4FeK9AaNX6IEDkd
	H0P6Bi95MQfYXFf1b0iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szFyL-0000000GVQh-35E2;
	Fri, 11 Oct 2024 13:46:25 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szFpN-0000000GTQe-3LCz
	for linux-phy@lists.infradead.org;
	Fri, 11 Oct 2024 13:37:11 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2fabe5c8c26so19444751fa.2
        for <linux-phy@lists.infradead.org>; Fri, 11 Oct 2024 06:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728653828; x=1729258628; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XaGfDqX+Jbu8yXuoPx2CqSC4Xq+Wq/cr4J5BmFZrmFw=;
        b=z5w23YzgvPU7Ghve95soYXZarEbCvLgQOJx/iG9qBnjp8Ot8HhQeYBITv9Txw/qHCb
         yc7Axz7LwjaBl//l5VoRRqoV4c60bYMG21c3WYnWpnrCkuuW2IMPMl+CYPtqSwapUcvH
         HjcDkttyH5npf/BYx3DCijRaee1qv+DhPbnUdHLViTCsj7Z4ceD8+kk5T9uv+YdsAV26
         TtJrMm8bUfEU2hKgw6Xw1ltI3vVLaih1vYxLA3O9bk3lALANzidT0AxNhJvdhC+GjiHC
         /4RbNbu4cOosIUep//ALFRWWn3NyfUyuP73cvKKFlHJja6eRFlL24K2WICuUdEbg+EdY
         NsjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728653828; x=1729258628;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XaGfDqX+Jbu8yXuoPx2CqSC4Xq+Wq/cr4J5BmFZrmFw=;
        b=Bhyac32Aj4tIPOQrkuUZR7zH/AdI931U0Mak6GAfGafYoD2BV24HaPvzwcKxxslqjE
         S7+c3sTcLa29r+LMV+6hNv7NL8eqUiZVgRyojlFJaVBstBkzMFbJ4xsgw/2jIqAUPKaK
         wO1bmMAoXxt8fcwBsMOu+Pta8vL9vjJmZivuntIyu3Rpz7KzjL6JZs/W3ZoPQ4xf4Fro
         4xapQYp50nzq77Un5+Uyp0XDOozgVJf1Hv0VcArWyjEHhQUlNOx6rqni5SvcsJMQMWLD
         whGBG4nFZAeF6i27aKhAM1YejPHmZnRxt5pAAu57ZgPnDKGPrC6caNxVSQLQw6SG/Rpp
         F4Rw==
X-Forwarded-Encrypted: i=1; AJvYcCXGzN18QEmf5TTmHieSQHdF0W461nC1GfJUNxNA2ahKi4qrlKKad+j/XYDOZpJ6CpuphfBKzHTHnKA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyiRVrQVDzVXQ0+TNxUB44P9emKU/6//M46Ai98aWo7yvY/jg7P
	h0ywW3ZMdENLgU7YtL8VEsyqfcaPK8t7JiDry+rIlyz77QOnF2oAIwN3J5Sijps=
X-Google-Smtp-Source: AGHT+IG3qL3pSC1dHQpXFWaYB+Rn07Kp1WBxWezdJxQFyqZIdB2oubsLQBMVJh2zhElcrmtmyeK9EQ==
X-Received: by 2002:ac2:4e03:0:b0:536:553f:3ef9 with SMTP id 2adb3069b0e04-539da4e0b9bmr1361860e87.27.1728653827760;
        Fri, 11 Oct 2024 06:37:07 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539cb6c8c9dsm599131e87.119.2024.10.11.06.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 06:37:07 -0700 (PDT)
Date: Fri, 11 Oct 2024 16:37:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, kw@linux.com, lpieralisi@kernel.org, 
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v6 7/8] PCI: qcom: Fix the cfg for X1E80100 SoC
Message-ID: <u6n2u7d3sxcq57hfyrbqri2bqehuogdaof6qe2uh7qela4pihy@7mhyjayiucmi>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
 <20241011104142.1181773-8-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241011104142.1181773-8-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_063709_856985_5F6F61BB 
X-CRM114-Status: GOOD (  10.74  )
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

On Fri, Oct 11, 2024 at 03:41:41AM -0700, Qiang Yu wrote:
> Currently, the cfg_1_9_0 which is being used for X1E80100 has config_sid
> callback in its ops and doesn't disable ASPM L0s. However, as same as
> SC8280X, PCIe controllers on X1E80100 are connected to SMMUv3 and it is
> recommended to disable ASPM L0s. Hence reuse cfg_sc8280xp for X1E80100.
> 
> Fixes: 6d0c39324c5f ("PCI: qcom: Add X1E80100 PCIe support")
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
