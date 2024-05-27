Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5160BC25B7C
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 08:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayVklRjkguL8uXaZ7oRT8grUtK+I3Y72xQUmdBN3sBQ=; b=G/xsHwd2Nxc24R
	FQHZcSN1QlhQ8su7ngZKIBY7CacXHZCrErlF2s2PkAW1178unuOEi5iJ3BQI4SOYQ/KOcZFBe5n6T
	/9OGnOMTp+TtQuGLHMa1n/TKETdpvJxWD5N42gInr+A2l380z5qg5aWckb7Dwvj+etgraTjKvTH0k
	4v+lAAHL8vMz07APgO4h7aOzaMxY5dkS5Rj+hItIqEKXtGeo1AVp35MbXAF/DwKDJlG1Fyd/RAQU5
	sbaae0TW9SAhfdZoYaTwm0M7UFyWbFGvevbvjhbK/Rp4TvqNH8WpNqmCkxCJ+Ju+00pL7V0VMjP4I
	GDoBzV9yWkRGaYPIqxgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWCf-0000000EKSS-2owB;
	Mon, 27 May 2024 08:59:37 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWCd-0000000EKRQ-1O8d
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 08:59:36 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5295d509178so2926038e87.1
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 01:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716800373; x=1717405173; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IflnmrJEBByrw6RHNme/+1coaGuRNlHIrGL2PB8jagY=;
        b=qkK4MUNKRSJidVYD+ihrw9FjBrgEu6hHyhk9djlRF1WbcJXdchGidb+oKmo/Wt6yIa
         Q2GYCW17sJZITgUTQhz73yzRFDeamMPijELXgLvHI8DBytTi9ryXqeYpaQLLrFa5dC2/
         YW2slRgbF+l9F+/c1rj6/P7MJnRfAAPOf6e4B7t/z7iARCAtyl3sUNWzCjgNCKPH9gGu
         +/q2DSv7M9oYjYqKTTd04LWFCx3qwGJzOj1bYmHnyUgVC/Sgwu7fOmiSO4PvwP5FVKcN
         4OA+Oggh6lOsz08vlzsEcEYe5r4TGN+6mL/TpdPq9R3jB/xjIUUprZ0hng8ZwfqHWIxU
         eL7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716800373; x=1717405173;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IflnmrJEBByrw6RHNme/+1coaGuRNlHIrGL2PB8jagY=;
        b=V/zMh60YuYnEyImXl7ZLg3VH3zAPKbqrArB5Jco358GVFXjAQYQ+Np4c89Zx30OCYx
         o/IIi4u6hy0UB7aU/LaFuofJ1i+HHlVTkqDtwpcN+MoXclSwWrTVESP1PtObrSv+xPwB
         +GsiY4YB36bfG5ejXGIBn6DEhUm3eF/OjqwwI0L7QCLI2WHtEqW5QQYgNE7ehsLOWaXy
         RGJjtRsg33YHq2fDb/yQFjJrr4Prgomqv1cQkYurGHMbqMUpZqPKiDpF/DbqIfpK5JZj
         YqyZhO6qIFtA4jEFXpJiX4yAb5Pb4INggU1iMGkjRYHK5eX6wmia3mAFqDSeD2Mz66Bd
         ysdw==
X-Forwarded-Encrypted: i=1; AJvYcCXX92nmIPIxvE2TNS0jgl3t5s1s4eJsrnwpC42SrQxxLi2o5HKQcvW5TFy+tp6Xfk5EELfFydOvXNXeZOmvhCNAaF0z5RuT2UWSd4qhQw==
X-Gm-Message-State: AOJu0YwS8CJHkoHPzdh5x2jq7gRCs5zNTu45GLwbprK4jF00HXuadGfX
	vbhiCEC7e4mKtw4sw/LhCciuQ2vj5pgpAktKXbKdmnTTYDwErnjna3y83pQtoW8=
X-Google-Smtp-Source: AGHT+IGxLF6Lsaiga0V2BV/ezr3upTDEyPXADhRzuAoievMrQwZKkYyAfjc3DSDTbeXZtZBAHPlTUA==
X-Received: by 2002:a19:ad4a:0:b0:529:4864:9c17 with SMTP id 2adb3069b0e04-52967463e64mr6936847e87.57.1716800373131;
        Mon, 27 May 2024 01:59:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-529716dd12fsm499151e87.305.2024.05.27.01.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:59:32 -0700 (PDT)
Date: Mon, 27 May 2024 11:59:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/7] phy: qcom: qmp-combo: introduce QPHY_MODE
Message-ID: <vze2yhxnd4vem6kg65kb3du4lgorluuitbtvkupwftrtgb2a3v@y3teljehz7xu>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-3-a03e68d7b8fc@linaro.org>
 <v36mrliwd7rarqofbitv5mtb6kd3n3hmuwp6bgg67krnvzejd6@luityjlkb7nn>
 <c767bc42-f4f7-44f5-b712-5933a921b386@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c767bc42-f4f7-44f5-b712-5933a921b386@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_015935_390149_1D8C287D 
X-CRM114-Status: GOOD (  19.21  )
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

On Mon, May 27, 2024 at 10:48:12AM +0200, Neil Armstrong wrote:
> On 27/05/2024 10:46, Dmitry Baryshkov wrote:
> > On Mon, May 27, 2024 at 10:42:35AM +0200, Neil Armstrong wrote:
> > > Introduce an enum for the QMP Combo PHY modes, use it in the
> > > QMP commmon phy init function and default to COMBO mode.
> > > 
> > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 41 +++++++++++++++++++++++++++----
> > >   1 file changed, 36 insertions(+), 5 deletions(-)
> > > 

[trimmed]

> > > @@ -3603,6 +3631,9 @@ static int qmp_combo_probe(struct platform_device *pdev)
> > >   	if (ret)
> > >   		goto err_node_put;
> > > +	/* Set PHY_MODE as combo by default */
> > > +	qmp->init_mode = QPHY_MODE_COMBO;
> > > +
> > 
> > I see that COMBO mode is backwards compatible with existing code. But
> > shouldn't the USB-only be a default mode?
> 
> No because it would break existing platforms without "mode-switch" in DT.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> 
> Neil
> 
> > 
> > >   	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
> > >   	if (IS_ERR(qmp->usb_phy)) {
> > >   		ret = PTR_ERR(qmp->usb_phy);
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > 
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
