Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7727ECAAD2
	for <linux-phy@archiver.kernel.org>; Sun, 28 Aug 2022 15:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GChHOZzDEhSl6U/jq3EPeSMGuUg9I7X0bmBw/YNUYys=; b=UPO1s7sQq5obv2
	+pNNMc+YMou4R0nnkEPEkOSStiTUOTWes2xfo164DbE/xc2qj2ZaosFycJBJQDfjfmZqtfxt5Uc7u
	Oi8nabra+bZWOx5wrW9yOfFlCLzM2l0r4p2LRPH5OwBXFcC3H7Il535fmhV1UDvUJJ9JuYB6kOKHU
	48e8j5/N+59kKl1n/mbUBS+HQsFMj5bSZy9mW/80jAOCvugYGpHz8DqZ+Hyo39gDQFNWx3QCNf5Ax
	RS/qTOj07OJwjXZVBe6X2urJI+sjjEUbqRGqoTlSIHlWLyHlgBuQMcEASP4rjpnFGh9GMiV09AlMH
	qCK6na1GHJXDcXmltL6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSKb6-000Puh-6t; Sun, 28 Aug 2022 15:53:16 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSKb3-000PsW-Kd
	for linux-phy@lists.infradead.org; Sun, 28 Aug 2022 15:53:15 +0000
Received: by mail-lj1-x22c.google.com with SMTP id y10so2776465ljq.0
        for <linux-phy@lists.infradead.org>; Sun, 28 Aug 2022 08:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=2vVubfiehl1ApLt7cNy8nisNlRZz6ekOM68Mb/5KXzc=;
        b=SHQ2bibcwuURyIhvPZaLlaLSIwDPYX6IHyBbNqbD4hxbLeb6TTSurC7EL6DGgWXhfh
         Ma3lXQVL4rr6wA2L4pgMkDP9tp/3yRI49WHuOxassWtxf6UfkBR7MPALA4yJAU6Y9cjE
         dX6cslGrkrDrgVCbvr4BIi0jC6m1em+f3ia6WQ4ZVFtBqU9UFGwKAunJi6wKmNrFHrl8
         aYsWF1JzifXPG9hzo97kLMc2a7fN5KSbn22BA62kKZEiG+bITYd/CTBo2uVfAEKiBXZe
         koDZQ2yEhAMRpw+soTLH6CnjhnCJHmxQyE3O7jd6Sd35erSU10dYAm1PgJ/taDnsn38e
         8tQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=2vVubfiehl1ApLt7cNy8nisNlRZz6ekOM68Mb/5KXzc=;
        b=snxGSgonwDtlzJZ/95nJVcDdehR+gkWmYixFifhGmQThmZ6pqaQ5/RR3tkJvnnkt8N
         nywdJpsFYj0uLtMo3lfKTxqyAyJJATF/ziydr2kFI9ysMKkjM2Wvx6DhfhTMAmeI2k6v
         VgFV6R0231+HByIQEen7N6GgAFouxUAZPMh1imQwDwQ30MzdK8X+lOrDcB1c0Lpqc/za
         D7a2dr/FNpeHn/+zU6pdvlhKVTjbl5UnDEjjLC6n16yPSNlglCwzMY0nUg1vLGlP3+zR
         T3d9bxuzo10fevydQwHYJbDhLMfAo3fNgoc/XBeKorL83QTALkv5YJPSMIWL021myN0Y
         5gYw==
X-Gm-Message-State: ACgBeo3DMR7L8TNG0CFjDLK798mFlRLDgnLpEqHZDLchzljZRI8JoECG
	yQr3AYgDfK71lgJRJ8aoLVJ3qw==
X-Google-Smtp-Source: AA6agR5/59JcnkwbAIdaJ6PHs/c0qiJt5sW5JIgc8Prl+IvS0aIwSNkTr5/Of2obDV+emz45Y4DJyw==
X-Received: by 2002:a2e:a58e:0:b0:25f:d8c5:3898 with SMTP id m14-20020a2ea58e000000b0025fd8c53898mr4295887ljp.302.1661701991503;
        Sun, 28 Aug 2022 08:53:11 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id d23-20020a0565123d1700b00492ea54beeasm970603lfv.306.2022.08.28.08.53.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Aug 2022 08:53:10 -0700 (PDT)
Message-ID: <b7dc7ba7-e646-b520-a065-8b47643c1c26@linaro.org>
Date: Sun, 28 Aug 2022 18:53:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/2] phy: freescale: add Samsung HDMI PHY
Content-Language: en-US
To: Lucas Stach <l.stach@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 patchwork-lst@pengutronix.de, kernel@pengutronix.de,
 Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
References: <20220826192023.3216389-1-l.stach@pengutronix.de>
 <20220826192023.3216389-2-l.stach@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220826192023.3216389-2-l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_085313_820042_53301CF5 
X-CRM114-Status: GOOD (  17.30  )
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

On 26/08/2022 22:20, Lucas Stach wrote:
> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC. Based on downstream implementation from
> Sandor Yu <Sandor.yu@nxp.com>.
> 
> Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/phy/freescale/Kconfig                |   6 +
>  drivers/phy/freescale/Makefile               |   1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 699 +++++++++++++++++++
>  3 files changed, 706 insertions(+)
>  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> 
> diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
> index 853958fb2c06..5c2b73042dfc 100644
> --- a/drivers/phy/freescale/Kconfig
> +++ b/drivers/phy/freescale/Kconfig
> @@ -35,6 +35,12 @@ config PHY_FSL_IMX8M_PCIE
>  	  Enable this to add support for the PCIE PHY as found on
>  	  i.MX8M family of SOCs.
>  
> +config PHY_FSL_SAMSUNG_HDMI_PHY
> +	tristate "Samsung HDMI PHY support"
> +	depends on OF && HAS_IOMEM
> +	help
> +	  Enable this to add support for the Samsung HDMI PHY in i.MX8MP.

Your bindings do not mention that this IP block comes from Samsung, so
please extend the description there.

Also, since this came from blocks used by Samsung, probably it shares a
lot with Samsung Exynos SoC, so it would be nice to Cc maintainers of
DRM DRIVERS FOR EXYNOS for some feedback.

Although existing Samsung HDMI phy driver is tightly coupled with Exynos
DRM drivers, so not really re-usable without huge refactoring. I did not
check the register layout similarities.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
