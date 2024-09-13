Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0882FA374A
	for <linux-phy@archiver.kernel.org>; Fri, 13 Sep 2024 12:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IdospbBLp+y32BGK00s/heZzCyFm4OSCelnP6b6ydIs=; b=WMz7VzkZT44OZg
	4Yd5ykAjuhahgSYNw43FSlSLDg5VXpgNwLrK7W3XI7TJhRoamLaGaHQTZqWqMq/RwES2U4zgmvAUx
	p2V00PuaG1BB00grO1Mtenc3KxkRJo1/SKnCoDWZMWPVZnv8Ej3jWRd49bopl5eb0hIrk9mK5/miE
	+wDPoAojK6qqLkNwK5gP4fWBnOkaEJFYXxhk83/gb3vFG7pu7REOgKlC+vWZX6PSMPJGBZD1UBT7E
	Im5GQVmrOeYr2KOj4lK9Q21FYI8OFWMvCJZ1dniwuSsMsjBcXCkOt8ggMwvwRRSeOZqnGduFApTY7
	Zdq//LPXoY62bJBOxHyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp5WT-0000000Furk-1eje;
	Fri, 13 Sep 2024 12:35:37 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp5WR-0000000Fuqz-1Xxi
	for linux-phy@lists.infradead.org;
	Fri, 13 Sep 2024 12:35:36 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5356aa9a0afso1457943e87.2
        for <linux-phy@lists.infradead.org>; Fri, 13 Sep 2024 05:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726230933; x=1726835733; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MjJZ4X98ntqTWPk6LArQGhPHBOzVXOE82z4DS0YRyYA=;
        b=sTfhFN6LUXKYAZ2X+1VPl/F2I+hK9CEmsvI/5nWKLU34GWuV4elPIMismZinM3ee47
         FfozhPwv+g787uF4cARqDa89WoyebveXvSAPeKvMfk1l2HM2n7zbhPINwNzoo48u9t+p
         eN80PMeb+Lo1TP39ZuWoDgTW5gi1h0bU1EgEvIDAUhXCOQjIk7bVBg3UK0IKnUaXjF3o
         SUUlaDcvL0dtxvXFULq9egVtVG91m2skXhDf+5my6fCCHXgYjuKUyZIseRCvWvkzT2+f
         PmIK9JLsCN1uQUbJMc0850kSlGYG1Ife7AZW13qUplt+pPRLnpz8B5EGc+XOl3s+PSXb
         OLtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726230933; x=1726835733;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MjJZ4X98ntqTWPk6LArQGhPHBOzVXOE82z4DS0YRyYA=;
        b=YC20E4CqJb80XI/BcAtHhHDixjvOXu/rR+waH7Q0qHQlfTWzKULZFIBbNPcb2qgShZ
         OblfrHSb3U2AUd+X2DTfqHFnYS8mSHWChIsx+lsh7Hwpq2nbu0UZwmhEYoEEFFiLxGFW
         +qCsGlTJc/FMSXIAZyRByWkUVUOro5BO5S643ssrMq5s3fodxCBJqNeewEcAEmWNt31x
         jeg684q7JNyfGkCaYt+P3avTI3jsjfNjhAOPKPQZbK3AEngqI6R9ttWOZ/o0uWhZwN9F
         q4JwWLr5FsKgR9Jl0wlAl5yxOQHc/tNIxIdWZLvg9AERoVMBf8+F2sERTWqOZL8w5i5b
         cQjA==
X-Forwarded-Encrypted: i=1; AJvYcCW8Tb7AfmXS1N1OSiX7V+P3GxvNqJPPAFTsA5SxRQ4n58GayzYEXtdxs9WuFrEQMhHUjfZ+dtwXNy0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZvL1ymHHK4Frl+pD6lzgpVdutuRTL4bf8g3EZe36hj2eHNqa6
	A3Su6Jz9yyjZioOFl1rR5uq6VmGKTwEqyiUU2rSzCJvVZqTJZ274+gPwZRQTwfw=
X-Google-Smtp-Source: AGHT+IHX0DyjU76XALWxmWo1rFtyrXa04JOcs287YwEsi4dcvnoaeAHvh4uSkbpFq6zKRGmVBfQSaQ==
X-Received: by 2002:a05:6512:1247:b0:533:c9d:a01f with SMTP id 2adb3069b0e04-5367feb95f5mr2113449e87.4.1726230933059;
        Fri, 13 Sep 2024 05:35:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5365f914c72sm2257748e87.305.2024.09.13.05.35.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 05:35:32 -0700 (PDT)
Date: Fri, 13 Sep 2024 15:35:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, kw@linux.com, lpieralisi@kernel.org, 
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
Message-ID: <bizip6exhqdm34fhdw7dvqws4oqgexp2f2lp2zxoblqu2zfupi@t33svola3tq4>
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
 <20240913083724.1217691-6-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240913083724.1217691-6-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_053535_432557_DCB8E036 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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

On Fri, Sep 13, 2024 at 01:37:24AM GMT, Qiang Yu wrote:
> Describe PCIe3 controller and PHY. Also add required system resources like
> regulators, clocks, interrupts and registers configuration for PCIe3.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 202 ++++++++++++++++++++++++-
>  1 file changed, 201 insertions(+), 1 deletion(-)

I didn't verify the addresses, the rest LGTM

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
