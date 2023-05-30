Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4E53C7EE2C
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 12:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4sZrIiiSz1KKHj48kHCkaMIfsknRb4TpXp0wE4tav6o=; b=iv8ri70SvXjsjX
	icWdyn7tiAmwWFS3zUB4/Y+dwiza8DTactibSj4W/F7Ct1+9NmM74mA76oiE67thRajCZkX4WdGFO
	tsOHsv1p9lV2ayWqj08foaWSmgNXomPYoUWYcj0bc0IilfGiS8hoZTQm9oTJnzYyYMNkHYpFKIblM
	RkJKcgdtyF92W2ywhvzqeZKFIVLp3dJATiT9SqmNBnM3RMwUliBmu3/XP0A17WadlkFIyteUs5FHC
	WeF6Ux/vQBv2VAt5DTr0QiwTLSxoSsO8EmQBHXpru/nHlGQzyxGWPmt5zF1n0KJziqsP6ACd7vJzu
	OLUqktY/PMpg0tUrXdkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3yvB-00DxPk-11;
	Tue, 30 May 2023 12:57:53 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3yv8-00DxO8-0V
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 12:57:51 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-96fe2a1db26so788522266b.0
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 05:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685451468; x=1688043468;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y8nrvZCnLeNA9XqFVfQliG+UkeK7H3UuAJ/vrhzt5N8=;
        b=tOpBR2qHhz8Y5+8fGdIJtDXKTjoub3qdMnSVZt2FlFEFqMzdw3FLNNLEyU6Y+aAS+6
         OmP1ldAmCV1TAaS9kBNfhIpf9HQ0U8TNMKH224Uvnl9qIp9n1ovIIH4gAtjaoGllpVTQ
         NNEtg57i05eYsAAHFyXsqlOn4Svajc5hOJFexlN8DfXKOiv9osAuo1K4PuumIM3MLXVs
         T/M2gYN+Cq/qelGP+82YMQVcCPrEXnZxYHJElcA9KfwxfMjqPTdiyrML4Jq/ytCBRcUP
         VAWggMynia9vDGG2SU9GvsJcxsVjadHciSLeeJLyhD1cQ0JKQmX6whGOf6znelmXeXC9
         5uYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685451468; x=1688043468;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y8nrvZCnLeNA9XqFVfQliG+UkeK7H3UuAJ/vrhzt5N8=;
        b=QQhewNwDHnkX909EiFxZRA5kzaXAoy23sT2Q33BuD9dC7kyG0hTsbEtJorI4XTAyom
         FUpmZIruvtqsZppJAVv1dshVYzUjPUT1QYraAyzh2uG2p4Qt+OumiDdY4T11bE7paJxP
         Rk+neyVtoqp9dCy3CYchrVdZyh44QHeNN4qL050hwFU7RGMwa5OKidWYKmWZM6dL2xCx
         toNNtNcidqyaaZe/6wlBjtI6a2c7NwnHk30ZSHLoajEp871GsfvohTXsLFwcDKhC4wpP
         AgAmeHxamCBDNWjMpHGk/50j8jPpeJStVpxfrylX6QJO8F77zVDwQvdL86koYJsGspiN
         7+cQ==
X-Gm-Message-State: AC+VfDx7Cj/z5sArybppwp9lAgmfyWmtkuywSJF56Oqo1s1bAg+kAhGJ
	GKvs6juYBB0q6WjTmccfzy5fWg==
X-Google-Smtp-Source: ACHHUZ5j75si6JaQVxIJyh5Z6yqFoPGjctiJLF48SPBx/H0MmZO8dD3x07xHbqxD5hv4du4ojdh+MA==
X-Received: by 2002:a17:907:d16:b0:960:ddba:e5c3 with SMTP id gn22-20020a1709070d1600b00960ddbae5c3mr2428277ejc.32.1685451467865;
        Tue, 30 May 2023 05:57:47 -0700 (PDT)
Received: from krzk-bin ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id m13-20020a170906160d00b0095342bfb701sm7488806ejd.16.2023.05.30.05.57.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 05:57:47 -0700 (PDT)
Date: Tue, 30 May 2023 14:57:44 +0200
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>, soc@kernel.org,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	Olof Johansson <olof@lixom.net>,
	Bjorn Andersson <andersson@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: qcom: Add Samsung Galaxy Express
Message-ID: <20230530125744.n2pxo6jhsgeq3xgn@krzk-bin>
References: <20230527040905.stmnoshkdqgiaex6@ripper>
 <20230528001010.47868-2-guptarud@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230528001010.47868-2-guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_055750_202811_64166FFD 
X-CRM114-Status: GOOD (  11.20  )
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

On Sat, 27 May 2023 20:10:06 -0400, Rudraksha Gupta wrote:
> Add a compatible for Samsung Galaxy Express SGH-I437.
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1786779


/: qcom,board-id: False schema does not allow [[8, 0]]
	arch/arm/boot/dts/qcom-msm8974pro-oneplus-bacon.dtb

/: qcom,msm-id: False schema does not allow [[194, 65536]]
	arch/arm/boot/dts/qcom-msm8974pro-oneplus-bacon.dtb

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
