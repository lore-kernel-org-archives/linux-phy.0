Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87C53D68BD5
	for <linux-phy@archiver.kernel.org>; Fri, 15 Nov 2024 20:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luVXv4ia43+ZTegCo+hMYu2YmQEjiVV0v4VWumD6Ze0=; b=vSSVF/IE3znaUz
	tdnujuRTqm9G9xgOMv9HZB9UydvUpzXC9UPRGQaiscRzEax8qA4I5tABkC9XAANxLD5HbFnVhFyTD
	rdRIfwHRmmC6UJc4A1BdScn6cNLcjMCh7xUR9uX3s3u+dzwVzb8cQlTBJLNKDCNBslymbiz9ISEtt
	fBe7/f2VxGT5uVI4nBrHVBR7nj4KTWpc9poL5k9VgkpbbRHsdpm5KAZH3+YrzdnFF0sb08qWDqg+Q
	NMIxRzq2ZaXpMHmDyonaUeT/mqlW4omxTdsX/SBrq3VyruDmgIT3pHXu8ukNj+8V9eO/DvLHTCJRD
	A9ArR9DlATVlvqZjT+IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tC3GB-000000045xD-2K9k;
	Fri, 15 Nov 2024 20:49:43 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC3G9-000000045wO-3Fbc
	for linux-phy@lists.infradead.org;
	Fri, 15 Nov 2024 20:49:43 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2fb49510250so11510871fa.0
        for <linux-phy@lists.infradead.org>; Fri, 15 Nov 2024 12:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731703779; x=1732308579; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CjYoXr1c/e18FI2TdM2K5pasMyhee97taoyWD1KNeJE=;
        b=UbZEFFab+tMLUjIQl6ft/UT8+jTWVSKWWZqVTzA71aFyn3A//ax0v8T2ktb5TW70vx
         UXyDs2f8v1v4JURqe6ecB7cKbhSQ9Vs3CuLd/dWg6VQJ+dcJI5+ibcj+5S8HUtXCr+Kh
         3f8XaP848y19F+fmmGX5zN+jJezTaK2Uy2sdjYRi1QG2INVM84GVDJ2/GC1yOlX/M18m
         L/02G14bONY9WOU8qlUt1zQIAGLYaV5iz3eddCiZnsaawqm37JMiQFi2fGkOUL8RONXM
         SCu10Bbn0IAY7XlqsBt1aVyUcSqGRw1ecQHkEUS7oyvEbC1ThM1oitnfZhtHwYuY/4o6
         kMgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731703779; x=1732308579;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CjYoXr1c/e18FI2TdM2K5pasMyhee97taoyWD1KNeJE=;
        b=vivURUSdc4Muli2vufdcluMBYCYKWiXT1+8JzmaBZPm+JtbcDG0NfL9NZi05ykN7oe
         +p8Fw5CBPvVBXP413CExjMCFfgQ51P3lG62NyMefudGqEVobZPOq4TEpDfxOUxgWaLOd
         Q33IqX3ECBd8EcpVnuKFHoMRn0F763KuuqIjpbuxlHB1yZlmjE/dQ16WwudR1DQVKizZ
         Wh6TJfn8qqrKhcDAShXUvVatdEdc+t1FyF4bhXwb5WAETd7yszPgA6pVMt1DgK6LivMB
         1ZilncOrRnqusZlBdLEjZyP/nOVi9MSrrz7N8S0e32HDZCHybuDuMwmy8nE45DeG9dVU
         Kg0g==
X-Forwarded-Encrypted: i=1; AJvYcCWOZ3yYC63/+LjaiFpjDRTKo8ipLbWk+bYLfTruU69k6Rb51HT32F02K0kBMDvBcwSj1d96yWtRsGM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzyEX933SgZyEUPObTicTjxs5ruMK+4WO/EDJ1XIg9HdgOumXeS
	GNyKBW+nx7jJHc+yfkc+ZUqItkZEZQ+arVxe4ojxosRuZb1POklvaAxuqSSqyNM=
X-Google-Smtp-Source: AGHT+IHDw1nSJp6JrS4UrDhL1uYX+VrsqdWEdSsG7SMPlrb85ao1TsV+hOPLPValyHydklEGSDOhZg==
X-Received: by 2002:a05:651c:12c8:b0:2fb:8920:99c6 with SMTP id 38308e7fff4ca-2ff606944f8mr26665191fa.23.1731703779420;
        Fri, 15 Nov 2024 12:49:39 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ff6995980bsm229991fa.41.2024.11.15.12.49.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 12:49:38 -0800 (PST)
Date: Fri, 15 Nov 2024 22:49:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_shashim@quicinc.com, 
	quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, 
	quic_aiquny@quicinc.com, kernel@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/5] phy: qcom-qmp-pcie: add dual lane PHY support for
 QCS8300
Message-ID: <vfl3mvq7wn5f4ke2df3hsdd65cmhb6lw4kbzpharo75ufzmayt@e4w76fjipy2m>
References: <20241114095409.2682558-1-quic_ziyuzhan@quicinc.com>
 <20241114095409.2682558-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241114095409.2682558-3-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_124941_832677_B2086EBF 
X-CRM114-Status: GOOD (  10.15  )
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

On Thu, Nov 14, 2024 at 05:54:06PM +0800, Ziyue Zhang wrote:
> The PCIe Gen4x2 PHY for qcs8300 has a lot of difference with sa8775p.
> So the qcs8300_qmp_gen4x2_pcie_rx_alt_tbl for qcs8300 is added.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 89 ++++++++++++++++++++++++
>  1 file changed, 89 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
