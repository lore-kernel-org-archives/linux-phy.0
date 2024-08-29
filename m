Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91644C6FD35
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 08:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AQe+diQxNuSebbhYCcRZMIg2FcywCVXCwIkVnAmtSs=; b=EEEBAgFtHTgpJB
	YmaUfCFyTiUpV7l5HFYk2W2TBve+86qbLzK/wJGEtFB/rhWpgUZVboLPmvVMD14c4thUFCYGz5FFz
	hHIljkDynAP6BM+yy4i4F8N2EBtGSi6s5itCzEPKAQpP7a3Z/6CkpI1EgAvPTbkHahEzO1CFK2lyV
	j88z8b/4CGa28RJj4kp504pWx6zK7MSX+r0m94Gx0MDN57hMgve8WuqA9z+Gmc2kdss0k34MpLuGT
	ZWW0a+frnoZvoDbEV3RkyBUHKo5v9bNfaOQovjkRNw3XN89eVWQdLkILvVwFSPKNvnyIx+WeuTfuY
	ZcFpnjdlnxSgCZdc7ejA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjaDr-000000015KP-0d4a;
	Thu, 29 Aug 2024 08:09:39 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjaDC-0000000159q-3yM1
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 08:09:00 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5334c4d6829so462474e87.2
        for <linux-phy@lists.infradead.org>; Thu, 29 Aug 2024 01:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724918937; x=1725523737; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rzdVHNvVFZs/r7z8d45DArC5y0n0ZEzQ/sfa0ZzJkSQ=;
        b=vv1rK/1hRemMVU5gY3RnoohsqQd4jCA7ggnG7otrR4+k4TX7ZRcNg5hJqn20UlxOl4
         LpUybiXTe+9lWQAgAIdqWutm49WNk7B3iAcPCZaCwlcDdpfWIrRzIK2NhPxPxSB5drOB
         vPEfAANpcmwN2lmleI2BGy1kSl/61vCSgyT1+52f7/jnKFjRsPv3DHwSn/YFWaithzw/
         TeQLd/LCyJBHtthGZUgvj5VOUwoFPdVqtY2XLmVrW+mFKr9KdbR0UNod7zZ904fz4zsh
         bviNBU2mtr/sHeEsqmQhl84u6dT4F+cy+ghVLjiTE1rJg0eYOwjPeRsGyytw1sy7w3Cq
         mZsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724918937; x=1725523737;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rzdVHNvVFZs/r7z8d45DArC5y0n0ZEzQ/sfa0ZzJkSQ=;
        b=HeagNLv4bEfafuERM69xM4OOTFnX20vJVq8j8NEFYuPCRPGo9SFOT+sgj03CGyni4S
         gTvWeZ+bKrJK+c2gnUJu63IRjqUDmm5K3lu6gPhP1HTVzjKTuS0a/aZI7Nl+d2algJ/Z
         /5z4r8CiL476PDVcPYEcLHfkLB2BPI6dpoExVch8vf9UTaR0OpZNSNdps0dTcH/vYkLe
         cwkA5fXeOCGbG4gw8sFcpeARbBuu+DeSmTnvDJtc5TCGItDHgDdJT4YjyoCzBCaCXT5f
         G3JruyqdFb2YcQz7A1cSwCvBXvYRNYtgMm1wkhYj3RTA7Ss27CbaQmsUtxCN1qAq84RP
         Ssew==
X-Forwarded-Encrypted: i=1; AJvYcCV38gKE+dB3aFeXr2ErKthwAhQWMA997Gq2BmsFdxkgEa4MuaXS6pYsPfiO913EwLZ8Gmyx0t684yQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzYdilqd638HP29nnZbV+0PpmMrL8bd1l3AwWgrOK+dM0DfX+1
	8Xr/8KtInjbXLvJB8mGsq402e0CmMJjLYUMtgLCDXa0hpeIb4/rg1EXU4pJ0CNA=
X-Google-Smtp-Source: AGHT+IFIE5FdgmQvSzVx3ReotP0YOU4OOkMPEDzM9mZ+yWZ3XKm1Dl6erwST516kO7jI6UlRoSAIng==
X-Received: by 2002:a05:6512:3e13:b0:52e:9ab9:da14 with SMTP id 2adb3069b0e04-5353e5744e8mr1286311e87.31.1724918936864;
        Thu, 29 Aug 2024 01:08:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5354084116bsm86523e87.214.2024.08.29.01.08.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 01:08:56 -0700 (PDT)
Date: Thu, 29 Aug 2024 11:08:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yangtao Li <frank.li@vivo.com>
Cc: vkoul@kernel.org, kishon@kernel.org, krzk@kernel.org, 
	alim.akhtar@samsung.com, konrad.dybcio@linaro.org, liubo03@inspur.com, robh@kernel.org, 
	yuvaraj.cd@gmail.com, ks.giri@samsung.com, vasanth.a@samsung.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 3/4] phy: qualcomm: phy-qcom-ipq806x-sata: Convert to
 devm_clk_get_enabled()
Message-ID: <bo3hx7ma3np3wjpjc3zmya7iagefnlkwyh4s5gv7jxhr3ompob@cpehveanuxmw>
References: <20240822084417.1596110-1-frank.li@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240822084417.1596110-1-frank.li@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_010859_011103_15373DEA 
X-CRM114-Status: GOOD (  10.14  )
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

On Thu, Aug 22, 2024 at 02:44:16AM GMT, Yangtao Li wrote:
> Convert devm_clk_get(), clk_prepare_enable() to a single
> call to devm_clk_get_enabled(), as this is exactly
> what this function does.
> 
> Signed-off-by: Yangtao Li <frank.li@vivo.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-ipq806x-sata.c | 22 ++++----------------
>  1 file changed, 4 insertions(+), 18 deletions(-)
> 


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
