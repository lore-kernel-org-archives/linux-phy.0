Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFB91C4707B
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jan 2024 11:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7fPpYnPVX9W46jQza2GizZcYXB3n4Ckby9kl3Vx24s=; b=qLbr8PESMXS5a9
	g9P7M9C1mekMkPsyeeyfTj1qKvrBebl7JFegvyV24ZjZOjXDVVlVfDTPeaEdRiRMLuaRyMHOlQBRd
	5LDJgxcKA0WnBdbYZzL45gWVECQhMMMb01HG+iFw2fv/2KOKwITiSMnH1vZCVdslWlHx0lz0rcvYk
	191hiDg0n6uBQnIM0qTDy0/Erm7wO0Leg/IEmi9FLbOwEH2Qxqz0h1cmYXiRlODYy0IgfwqU5Rhqm
	y/eh0X+FpLL3cAfXDrA1EcCswDzmqaaQTg/m3cIlDQ3WPb7h3xRrpvtuYIUD2E+gTwQ9HHjApr6Qw
	hWBYfV9JOgPwdvQ23EBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQQUl-002bUR-1U;
	Thu, 18 Jan 2024 11:23:39 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQQUi-002bRB-2t
	for linux-phy@lists.infradead.org;
	Thu, 18 Jan 2024 11:23:38 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50e7af5f618so13685838e87.1
        for <linux-phy@lists.infradead.org>; Thu, 18 Jan 2024 03:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705577014; x=1706181814; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3n0yh0WMwXQXlpz0Q7yPANFTmNYevmws+HDSuGAve8U=;
        b=LPv74t+Ju2SD8GKRkrvqKLO4mG0ufkaXDX0U7TmGzcDgbPZokdIZUzYoZqitTN7FsB
         BH/exLHvtfRffFXIaLvXDzQr+rR8ulp9U1nA+ikQtHfdHLVnza8ZtVl3KIYSzavnRK7g
         Ri2CNAIEso6W5HUi5DArjrZ9gh60Fei25u297qgzQhIK0OMvLcRSI01vhtSpcDtTBLly
         PSVlRWtu1MMlxCxwKfDcuKKAgbLy2dtdH7wN90L45IyyN52wJBklI7fF0K5YSWLKcYtY
         Qs9RqWB8kjFDL+aeGnxYTtQoLA5Ms/kQ/7+IKFOPxLpHt4y/Lw7cZqTjmB32OMdHzVZV
         MYUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705577014; x=1706181814;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3n0yh0WMwXQXlpz0Q7yPANFTmNYevmws+HDSuGAve8U=;
        b=HYoeIF2cFDrUEUD6lHbB/3/JZiR10Bqn91PYSwWuJDQ9d1t7g+AN07OYP6aqOMK33I
         0yad1u9ZqrrU3JpbJV9EvLK1yKEkOXc1aMjCb86niL7nGXUWHDxBN3FK/11ySIWXYDFF
         BmliWALax/RoxUDiSjbnnfbwZFQGeP1ZKsMnpY21yL9ZXiq29ScTtJMKYjfKtOmvE00s
         PdEBcdYQDhWIJP570XJHCNCEU+OFmBAgXaO/l22/tBfSvO7ybijKHhX4phkpmFYJfIvc
         4mia8JuA5FluVrg/i0D2D2xCcBP1JWmKDksJXwwmcSRw3rANF6VmAGhVcvG6fDwcN7wB
         Vvjg==
X-Gm-Message-State: AOJu0YzCAqfSgHdkZD1PBBFrLCZ9/EtgdvB/hWI8c334G7jBJRw73whi
	6DXlrK9lRGoG2tGzd+F8aom4cnXEzfKU8Dk82JidUUUpjKU0SY1rBJdcWLcbxrE=
X-Google-Smtp-Source: AGHT+IGAFiY9QYKMMRj1hiX+XJpEl6/UwZGOnkZSILFJapmWR+gs3x0i53U1tDVN6vcmRNKXSbKqAA==
X-Received: by 2002:ac2:58f3:0:b0:50e:cc3e:2f30 with SMTP id v19-20020ac258f3000000b0050ecc3e2f30mr359528lfo.109.1705577014400;
        Thu, 18 Jan 2024 03:23:34 -0800 (PST)
Received: from [172.30.204.173] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k26-20020ac2457a000000b0050f147c0244sm125917lfm.292.2024.01.18.03.23.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jan 2024 03:23:34 -0800 (PST)
Message-ID: <1d707a9c-82ee-45db-b04d-76bd0afe668a@linaro.org>
Date: Thu, 18 Jan 2024 12:23:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] phy: qcom: qmp-usbc: handle CLAMP register in a
 correct way
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
 <20240117-usbc-phy-vls-clamp-v2-3-a950c223f10f@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240117-usbc-phy-vls-clamp-v2-3-a950c223f10f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_032336_939904_190638A4 
X-CRM114-Status: UNSURE (   8.65  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 1/17/24 15:04, Dmitry Baryshkov wrote:
> The QMP USB PHYs on msm8998, qcm2290 and some other platforms don't have
> the PCS_MISC_CLAMP_ENABLE register. Instead they need to toggle the
> register in the TCSR space. Make the new phy-qcom-qmp-usbc driver
> correctly handle the clamp register.
> 
> Fixes: a51969fafc82 ("phy: qcom-qmp: Add QMP V3 USB3 PHY support for msm8998")
> Fixes: 8abe5e778b2c ("phy: qcom-qmp: Add QCM2290 USB3 PHY support")
> Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

[...]

> +
> +	/*  for backwards compatibility ignore if there is no property */

:(

Nonetheless,

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
