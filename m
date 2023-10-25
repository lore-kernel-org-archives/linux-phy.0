Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02030C0032E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 08:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CKhlGk1gUfpcANypLWByo6GfbFvdPIjTG9CoDc4nQI=; b=UG1Zgk2sVq9ode
	so/jur+QiptPm7/Ws2okXd+3kqHYtc0Z4NUAZgnoGikJ0QFP15FrBgQwpXrSeFdyXoT1NcLfM1Pu3
	kCiJXTw5smMAZerrtFkI5UyBIds50M9/N6oHAikFEnaDRkHU+fdm2gmkjTLiCCSnLB/UYBOoPW+7x
	nX9NvdFkI3MQSoE2JXDVg3RXRRLQ1HmYxRViExNfocuYAdg0ufvl3iohJIiqF8ceFjS2YAEvdeNvm
	FBuKHDQcuacsG/k4MwtNstdtG3nYgFxUyaVRMcr5o5JtNamxwqrvV+DHi83q+XAZoQwOzPO/Mt2kP
	FzGj0wgdZwk8ft+xbKig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvZel-00Bl7o-2L;
	Wed, 25 Oct 2023 08:54:27 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvZej-00Bl7L-1I
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 08:54:26 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-d9c66e70ebdso4874377276.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Oct 2023 01:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698224064; x=1698828864; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QecDQjqHLVvpHg006tlf1j+vCUfglYL3ZKJX8YIByeY=;
        b=y/3hD5htT7A7N1UJzujLf4tLE6FZOnZzCoC71voZmJFEANsBVvF82Aobc++uNFytXx
         SFjHdl/paFKAQeAZhoNRLLLxUzeOo9ZrxSD4QGKmcu36ChucOefjoBZKDYwdxcJXosFu
         DnsVK5+Scoyp3TbcpZNu8iFIZhYY7vSU8RGw5Uv4gDodCKqkB5jmESQFuvc0X8w+gD8H
         lxg8/q3AHwXFFL12UXWSvf99aFYqkK6bUyMcjzmlzXlZtw8unFEOi7trBef2fflZ4o3S
         W/VNt5AwQPEBMEQbf4a4hCqrleqPzHlkX8NElLggIZgHP1Z1Ht26+ZyVUTk0i2Cw9bnh
         QU4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698224064; x=1698828864;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QecDQjqHLVvpHg006tlf1j+vCUfglYL3ZKJX8YIByeY=;
        b=sr3LoUfN+7kD8Y+S87z0s2VxGLPI6e7pwEBWVPRJA7UddFe1jaGplRJQzHx1rI4/WW
         N/QQSrMfPPwr2JdDlVKh/lgDxytYC2SDZ8tdmKcYwgxCa4U6AoWTWW4ha+1a878ymg0Z
         g4V3P6Zo3nYSmmIqAN3zWkQpZBDlRpVj76720YFaJseymL3rwzQry/nkoBYSD3uTbL9n
         pFSGQ1Miu9AUN1q0+6C9rH6aaI8dIcbqNir+wxVHTCZjBH/1DXdF0IHeUFTQw3UFVqSz
         PZu/QsYrezJ9FF2m9iL0pUqXx/IoRouX7Fagd3CWqHibxthj1n3GFCBQyiKf45DC2vS+
         QrqQ==
X-Gm-Message-State: AOJu0YweaaEkYif7ybwdzpFivXMw2McicYCiudMepLHCi0nxmsYWoodZ
	FmiSVHoXt/laBS85xGnPVK/boLNtyG8J1e0hbl3t3Q==
X-Google-Smtp-Source: AGHT+IH3K4Q7pknM1I5B7pKsXdsaVUiTIYG6c6iSatv1EUWsCGs8m2b6Zpy65Pq+Q7ybNggFu3TV5l/LRdXBlTF0Kh8=
X-Received: by 2002:a25:cecd:0:b0:da0:4201:6365 with SMTP id
 x196-20020a25cecd000000b00da042016365mr4494885ybe.3.1698224064152; Wed, 25
 Oct 2023 01:54:24 -0700 (PDT)
MIME-Version: 1.0
References: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org> <20231025-topic-sm8650-upstream-phy-v1-7-6137101520c4@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-phy-v1-7-6137101520c4@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 11:54:13 +0300
Message-ID: <CAA8EJpr4zLPZrTbtPEuTTtRZy2NuCS-=vMeC7K8TLTJnKEf4ZQ@mail.gmail.com>
Subject: Re: [PATCH 7/7] phy: qcom: qmp-combo: add QMP USB3/DP PHY tables for SM8650
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_015425_438186_73321CEB 
X-CRM114-Status: UNSURE (   8.09  )
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

On Wed, 25 Oct 2023 at 10:46, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Add QMP USB3/DP Combo PHY support for the SM8650 platform.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
