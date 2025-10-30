Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ED53CCF9F0
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 14:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5GBCMtFbKw4EUaskN6FUvqcJWbNtnf5qWhO3szYygY=; b=2CMk70InfUNOeS
	XxJpBJdpd43+hWwhBF5To3lPpa93RmJvfFKc5R/vo4Z3CB8kbZVwCLkxGv3yIyEupSTXw//qmzmnu
	27+6XrosyMqTmEEXaAfBekKqEojoDr0tw9QXa8jgXU5j+eVApNW6lgOsW4ZtHzFMlFgMRWKjtZXWK
	0uxZTP3ARygdUS+0FwuHvuPIwGeaJlKhiO2C6QYaGfq1OI2BDYrTvX1YzdW4zmr2SioriV+Biie9Q
	GxhQtHoZbKv52n8ijE7PV0zStogOClwwuoTP/jzle1eD1ZLJOiqd6ze2uw+cvtRe2pv8zdZJlRmUe
	ccqePxehwMnoY+yJkw1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vETUw-00000004I7f-3cAw;
	Thu, 30 Oct 2025 14:19:30 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vETUu-00000004I6p-3x9E
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 14:19:30 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-475de184058so3849465e9.2
        for <linux-phy@lists.infradead.org>; Thu, 30 Oct 2025 07:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761833967; x=1762438767; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=a20YeKsMFc9Z6sbLd4e+xL3fMV6LgnJCfC9IDTqyQpU=;
        b=B1rqYOKXfthWskerPANDCb7hHyw6U1cOCoemeyngYtGFZWyBmbUFmp7Upmc4qDMEp2
         1L4ix55TD2FvjHauvy7jdRryuNP1CuczJC54nMEYyfEqZH8NgpZtEHXILJuCefHHlgiq
         3VFASqMGST43rTD2fCk6nQZy65MrMoqmNXo02cfAh3/X+XbGFE+y6Aop6bcA4S6L9L4q
         jmxB0izJLLcQFLI88OpPd6DJX8l2fD4JaoIa8ygjC7vZJhkkHEXZcwzzQ0mTbqEdU9RX
         X5p8uH4+4t9fSIn4URc/qX3rfXujBklk78GAXRwRMRJuBD/r5I5+N/yeRUNGtPgyWE3o
         E/RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761833967; x=1762438767;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a20YeKsMFc9Z6sbLd4e+xL3fMV6LgnJCfC9IDTqyQpU=;
        b=SFhQR1Kzp+5UPOPVyYY4Q2FH6TpA1FSFp5BDn9/V/3suc+BR/Vz7zN305kpBV0IP6P
         JSAg8bcn3Szgvk6BFUG9qztKPyDnUkKirFDL1dntXUAE0/ilTDtbhVd4h8ct127dY+pq
         Y8Q8cm0bE2vy6VepN2Syfb3r1oit/QMWSLtMChGn5gyMtC2SDAbvbkcaqEkjBmDWb9/k
         UkA1Kzd+s2H0MmoOSfjqZQx3Tlfy6ecMlJVlQWB/lRnL1PIcRXCkU5VvdhzHRYdMhPZe
         Lu8vUEh8J8pB9IVhnnUQYn1/f8kAbH9G5nFjdzxthtIIh71l2jkaG6X7lboG/J6LefpS
         +uKg==
X-Forwarded-Encrypted: i=1; AJvYcCX+WGdqk6Qt1LaRBPjbyjgvbzUQfBh/1TkvYsZ+9H9KucKDqTuGKnktDhXw3YH6xyWxvrK+bQiOSJk=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywh4T98MK5vmm9CNG4oMn9CeKrXaZl8aTGceVTQxJnymQnsnxSm
	Vk9T5HJPbcVxUFMO3Zw1VlJQJo/u8PrRZopuN4mZmsbjOke0+R16fvT+9gk1ykS2gY0=
X-Gm-Gg: ASbGncuTT+BRpuz1eLqhHgULS6ao7NMPBXocylZg2ay8ox51Xl7+qGtfmOT10gR4xux
	RX1CNHk13QVxtBUM66sktH1Eja1rvPU2zlI11pyqt4X/DuKvDlYt3ztxDwq1/nHhqNfzAixxqmK
	kBBMm4iIkbfT1unppVlj/AFJCRjNcmkctzIFqag1LfVIgA56DjU8u3o2L4YUV+r/Mv03n1KCLDX
	/5OAs7gOPIHGbAdAZ8uwGuCmFMB1089YTPe78bFjuF4B0mMiuhgnxi4h8PBY7bLKOO3P1kl0LYV
	AgXLr8Nx9Uscgd82CxrMKifCy1I0+AbTCMu5tZoRZ7eBUxWyuVPPjTkaPPFYuTOuT93ExD07lpE
	dRbK/dQQDK/QjlYmV73uCigWXCidxHRhWKHcBbxQ/Z15XFh2/54QpIYImIKghrZs0u/VRdu8FUH
	U5EUrt2Q4=
X-Google-Smtp-Source: AGHT+IEBlja5JbNdrJw1QkNw2N7bwbcqpMzF5dSAbI4fK9ZOC8Mvm/unLC/mvyeKuAms9L9CjudSAg==
X-Received: by 2002:a05:600c:b85:b0:476:57b4:72b6 with SMTP id 5b1f17b1804b1-4771e16e83emr67296335e9.8.1761833966643;
        Thu, 30 Oct 2025 07:19:26 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4772fc524ddsm909265e9.7.2025.10.30.07.19.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 07:19:25 -0700 (PDT)
Date: Thu, 30 Oct 2025 16:19:23 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v4 2/3] phy: qcom: edp: Make the number of clocks flexible
Message-ID: <sxk3zeqaul32upo2gnmvgembvx2d7eq6qyylmwuxsdahgw4ngu@4zcjcqlooyqa>
References: <20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org>
 <20251029-phy-qcom-edp-add-missing-refclk-v4-2-adb7f5c54fe4@linaro.org>
 <wjvec7fiqjzlyo6y5kpzsd5u7rz47anaytu25w2j4yqgtdntx6@zuapdsayoio2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <wjvec7fiqjzlyo6y5kpzsd5u7rz47anaytu25w2j4yqgtdntx6@zuapdsayoio2>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_071929_006197_6014E689 
X-CRM114-Status: GOOD (  26.39  )
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

On 25-10-29 11:42:26, Bjorn Andersson wrote:
> On Wed, Oct 29, 2025 at 03:31:31PM +0200, Abel Vesa wrote:
> > On X Elite, the DP PHY needs another clock called ref, while all other
> > platforms do not.
> > 
> > The current X Elite devices supported upstream work fine without this
> > clock, because the boot firmware leaves this clock enabled. But we should
> > not rely on that. Also, even though this change breaks the ABI, it is
> > needed in order to make the driver disables this clock along with the
> > other ones, for a proper bring-down of the entire PHY.
> > 
> > So in order to handle these clocks on different platforms, make the driver
> > get all the clocks regardless of how many there are provided.
> > 
> > Cc: stable@vger.kernel.org # v6.10
> > Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-edp.c | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > index f1b51018683d51df064f60440864c6031638670c..ca9bb9d70e29e1a132bd499fb9f74b5837acf45b 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > @@ -103,7 +103,9 @@ struct qcom_edp {
> >  
> >  	struct phy_configure_opts_dp dp_opts;
> >  
> > -	struct clk_bulk_data clks[2];
> > +	struct clk_bulk_data *clks;
> > +	int num_clks;
> > +
> >  	struct regulator_bulk_data supplies[2];
> >  
> >  	bool is_edp;
> > @@ -218,7 +220,7 @@ static int qcom_edp_phy_init(struct phy *phy)
> >  	if (ret)
> >  		return ret;
> >  
> > -	ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> > +	ret = clk_bulk_prepare_enable(edp->num_clks, edp->clks);
> >  	if (ret)
> >  		goto out_disable_supplies;
> >  
> > @@ -885,7 +887,7 @@ static int qcom_edp_phy_exit(struct phy *phy)
> >  {
> >  	struct qcom_edp *edp = phy_get_drvdata(phy);
> >  
> > -	clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> > +	clk_bulk_disable_unprepare(edp->num_clks, edp->clks);
> >  	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
> >  
> >  	return 0;
> > @@ -1092,11 +1094,9 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
> >  	if (IS_ERR(edp->pll))
> >  		return PTR_ERR(edp->pll);
> >  
> > -	edp->clks[0].id = "aux";
> > -	edp->clks[1].id = "cfg_ahb";
> > -	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(edp->clks), edp->clks);
> > -	if (ret)
> > -		return ret;
> > +	edp->num_clks = devm_clk_bulk_get_all(dev, &edp->clks);
> > +	if (edp->num_clks < 0)
> > +		return dev_err_probe(dev, edp->num_clks, "failed to parse clocks\n");
> 
> Nit...We're not really failing to "parse" clocks...
> 

Will respin with s/parse/get/

> Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Thanks.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
