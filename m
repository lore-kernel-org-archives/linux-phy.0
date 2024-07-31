Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0287C3DA7F
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jul 2024 15:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzW0mbXN4lHQH+LdCbJ+t4tbJvxBF00Qy5ZiyzcgvEk=; b=ZX2tbYRte5OzP8
	2sF5b7gMcqL5+ROR4Ogmk0ANfY6G1UAbuUDeKnDhmziPnWvzf5EbVIREFBi0/UkTURTmpuGbyYW6G
	MtvIW9KqAk4mNbWgmRnSPSVX9aaNANBVzVHv0fq9kwZRFX6n/LrO9gjdxy/mX/K4ImooMlT+tnqDb
	rU9Jv3Qq1pvPxXyFTd6Ys4zlmt/wHvJV5RiKDkRbG8lQitZOApi/FE8s2HolGsmtHAGdI+7XklfvH
	Igs8u1UI/4otRNgluWkI0Ss2yfy4Wn5meisHVv+rThezPMaG0Swhcil0H8ycbPrEhfEcDcDd7tUPx
	d9eo1MSnI2pkGxxkBs2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZBKF-00000001jaH-1ny3;
	Wed, 31 Jul 2024 15:33:15 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZBK2-00000001jWO-1Kon
	for linux-phy@lists.infradead.org;
	Wed, 31 Jul 2024 15:33:14 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-52ed741fe46so6683844e87.0
        for <linux-phy@lists.infradead.org>; Wed, 31 Jul 2024 08:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722439981; x=1723044781; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dXlLZKVnKFeg1W8l1nLnNf9l+TIhvJC1ODBH4s6Xlac=;
        b=A/TQStP01aWowbpdEC3+Jf6xQRlvFEq8SHCt1hFc3ExbTnYTW7e+piEinq8aYMwrHc
         9FG2wsmC2pGZ25kP8xUHrZi5KuhxKSwWfWIqu76qMb2o5GnV2Uk88DudP8ylJAwbAXOC
         bbD5ZJ4NcF8W+RNb75dZELly/BIfBYieO+XjQHrsdmH9PNBXhUw5UAzb0kZNoZxHoqR3
         yma9tiMWVEeSWHRaldz9vbFCGJpMr4h48DXOxnBm9VC8jZbeLKqEYhdZMF7ZvT1BjmiP
         ZvCLJeTiBos98Ran493whfhUNUxRWOw4zYpe3bc1IoXn9RoAlB28rUtKj6BrZ0FNymH3
         7DIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722439981; x=1723044781;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dXlLZKVnKFeg1W8l1nLnNf9l+TIhvJC1ODBH4s6Xlac=;
        b=vLrJS6FS0IFsKzykEvRQhrW/+7UtLR/FWP73ezkdr3JvlHqliNv/Tu6oSbbHYiWZb/
         YMKqtjUxCxlB/opG8yOsn5M9x0zGozTk0Tk1hNcpMWe7genWkwh+2LZwg9om/nH9MV42
         /KrrFYfsI9iLzdBtj+jLdHYgAmXW2tMOnr2/dPjA5LbFy/O6E656MPNrF6bVIApgyB8f
         Qpt0XZmx9RpSzLc7BmVkNJvLGuBGPqlNe9EJ092pg5pTxcplvnct+bo0FesSuCgSZ2Oj
         3FMEm/oIavGa1iPydTuB2cpE7g6aA1wbcqVqG3s3VOkb84E7vJuSGBCD2a6TOQplKAUE
         7AlA==
X-Forwarded-Encrypted: i=1; AJvYcCWQY/KgftwDEyixyAg8npDu0BxX2cwQ5gBakGxuBoR8TpfPXSaugBXH9DIwFGY34U68tiYWTCdOzkbvjwPZhqofWySfb3eejZUoALtfyA==
X-Gm-Message-State: AOJu0YySphhwdhtr13A014eH+eg4BgzdCN4Ns9ThCSEqk383z0RSX7Ff
	Ac35cLoqHza/gSSv28qxWbngNV6/Xgf94VDjtYjTbPieTSgoPdqbrp84bADfEHc=
X-Google-Smtp-Source: AGHT+IHI/yfE5A0j3uFKHs9ToyYhliRfd4GUbCj0FUG/IfGzykUbmyYaIY9jQeHZnTg4OYprB40zeQ==
X-Received: by 2002:ac2:57c3:0:b0:52e:f9cf:cc1d with SMTP id 2adb3069b0e04-5309b27a631mr8628670e87.23.1722439980554;
        Wed, 31 Jul 2024 08:33:00 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5c19645sm2280514e87.189.2024.07.31.08.32.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 08:33:00 -0700 (PDT)
Date: Wed, 31 Jul 2024 18:32:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] phy: qcom: qmp: Add debug prints for register writes
Message-ID: <qqppkj2ksfrt4vwhgnxqwlob5zmqdpf6rqxky246urg6ssn7x6@wgp5cjs6alus>
References: <20240731152548.102987-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240731152548.102987-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_083302_381730_BA6E7E4D 
X-CRM114-Status: UNSURE (   7.76  )
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

On Wed, Jul 31, 2024 at 08:55:48PM GMT, Manivannan Sadhasivam wrote:
> These register prints are useful to validate the init sequence against the
> Qcom internal documentation and also to share with the Qcom hw engineers to
> debug issues related to PHY.
> 
> Sample debug prints:
> 
> qcom-qmp-pcie-phy 1c0e000.phy: Writing Reg: QSERDES_V5_COM_SYSCLK_EN_SEL Offset: 0x0094 Val: 0xd9
> qcom-qmp-pcie-phy 1c0e000.phy: Writing Reg: QSERDES_V5_COM_HSCLK_SEL Offset: 0x0158 Val: 0x11
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
