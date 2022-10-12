Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 053BFC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P+GR4MuHz72ioCljolivkZqL1qseHfSS6oWUSash18U=; b=dLUOZEV3SlPVeH
	1yTP0Qrg5gzXeu2bbwvBZpO1Jc8h0pA3CdqXh1KG4ea3xupPlA8XE0I6WSgssCErSeY9Y/UdB+qL9
	Ie44Rc2rygVuUaA1w3surIkjb3U0NpC3PeRmuoQE1TDprZf19ET3kuBfQhSX9c56vV3A15CG83UfF
	Fawu0xEPDqhOXa+Lcg8qXw8gIwvfG+Sg/SjD61ekE48Sl3aSmRJUR0Gtd0Qj84g3cOztIhKOtL+3b
	OoH2jPcodqpchAEbLtimAjebvESgg3G61Bvl21eY98iQT7dx2Zi7E91i7oHEwRbeaGkUSoXI6YD5D
	I6xw4bBFwE6GPVc10AnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiiX8-009Irg-Ag; Wed, 12 Oct 2022 20:40:54 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiiX5-009IqT-G2
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 20:40:52 +0000
Received: by mail-lj1-x234.google.com with SMTP id f9so22001762ljk.12
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 13:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ILeZR9ljvMcxEmzBJ8lBnjRb40h0e073JskMb2uVRm8=;
        b=EN9QBnw0eguaQ/9gUc5AiquFLwyIXTuqIPS8XDeUpFTSFeXE6C32VTtjisslxXR9AK
         CrcDwAkY0IxlESZCmy24Nr9lHS7FKG8J3ZWRqI0PbNOfGVmcHU74bgNPbze+2reT+Fop
         cjTete/txDOD9D9wF8ksmj17gXemdKzub9PTSxP6kmKs7GGF3SfxMBuxBtuvi5i21WWG
         uHr9R0TLYbU6FPWNf8pFAjGahqRwNbeMp0BGUE66v1cB00eTfFnlAEjmMwlsXJ6QaIWJ
         whp7maVDx1S7M6XRf2rGl8M0AX3LN8TIgbC5d8+FmIDGUn+r+5gU8+qkEWvW3J4DRmSY
         9PRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ILeZR9ljvMcxEmzBJ8lBnjRb40h0e073JskMb2uVRm8=;
        b=8CPfjbOAofm+rpRjJCfjMrQ8ZbgU5sLlXiB7xHoFRTj/S91n2lVVq6xwfL9gUdip25
         zDN/Q8qsTfX1fxRGv3uTc/JigIMtohp18820UAsz6tsy0BWImytjKG3fWoztOheC3BLT
         87CbJxSxDDX+f7+CE81hbSp7U5wYWMSfsGtZdm8Y3g/7ZQ/Q7RTvsqc0eouFTsg6ovco
         GMdkjDvdol9pe/6qEK81TxeuaZNuT/NPLigNtlcicdT+R0Ec3zT3K9w7ozI1qWr3kwq3
         o4od8AyamMa34/zAjFyvdKFfHlbjCT5XWhxpNPYmuVq0N0vlifDj7Hl2FhlkPm2CUgWm
         fu0A==
X-Gm-Message-State: ACrzQf3aiv4zpI6DWMDxiRh565wglOe+ndHuImVuiORjc2nFmMm/Ktt7
	1mSsrk4sify516LI4fU3/JjlMw==
X-Google-Smtp-Source: AMsMyM51I5MIZCwSNofahgGPyU2eYU/Mv/2btKXcAyGtnZVbMo/nriT1JKVrNp5R9kGFLiMvLZ5n8w==
X-Received: by 2002:a2e:834b:0:b0:26d:ffb1:dae7 with SMTP id l11-20020a2e834b000000b0026dffb1dae7mr11417964ljh.128.1665607249055;
        Wed, 12 Oct 2022 13:40:49 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 184-20020a2e09c1000000b0026be1de1500sm107753ljj.79.2022.10.12.13.40.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 13:40:48 -0700 (PDT)
Message-ID: <a48368ea-7f09-3723-fc60-b735df57c355@linaro.org>
Date: Wed, 12 Oct 2022 23:40:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 09/14] phy: qcom-qmp-pcie: replace power-down delay
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012081241.18273-1-johan+linaro@kernel.org>
 <20221012081241.18273-10-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012081241.18273-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_134051_565939_07B489F7 
X-CRM114-Status: GOOD (  20.60  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 12/10/2022 11:12, Johan Hovold wrote:
> The power-down delay was included in the first version of the QMP driver
> as an optional delay after powering on the PHY (using
> POWER_DOWN_CONTROL) and just before starting it. Later changes modified
> this sequence by powering on before initialising the PHY, but the
> optional delay stayed where it was (i.e. before starting the PHY).
> 
> The vendor driver does not use a delay before starting the PHY and this
> is likely not needed on any platform unless there is a corresponding
> delay in the vendor kernel init sequence tables (i.e. in devicetree).
> 
> But as the vendor kernel do have a 1 ms delay *after* starting the PHY
> and before starting to poll the status it is possible that later
> contributors have simply not noticed that the mainline power-down delay
> is not equivalent.
> 
> As the current delay before even starting the PHY is pretty much
> pointless and likely a mistake, move the delay after starting the PHY
> which avoids a few iterations of polling and speeds up startup by 1 ms
> (the poll loop otherwise takes about 1.8 ms).
> 
> Note that MSM8998 has never used a power-down delay so add a flag to
> skip the delay in case starting the PHY is faster on MSM8998. This can
> be removed after someone takes a measurement.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 33 +++++-------------------
>   1 file changed, 6 insertions(+), 27 deletions(-)
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
