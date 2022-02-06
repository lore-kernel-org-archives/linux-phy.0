Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59650C433EF
	for <linux-phy@archiver.kernel.org>; Sun,  6 Feb 2022 11:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+i7jgTHCEaqVD3CnRL4sZuLi4KPCFpuQZrMHcXQxjyg=; b=OIMkDrueju3yaw
	4upO2svV6lkuXijfR//8M9xeDGNRwbJ/iSu5H3nis2V54/k8EiSiKpw7O2BDgFPx1M3XvBkO64VXy
	fOciwRcKuNlPsqlBe3nmD04cEy7DUGoCCj7a/MWxI3g4blSVnLifmIzzz6xv+Cqj4IrrbvU2HI6On
	QPWMVO8tWzcUmGoPn51qRh5whem88jRD/TFZjtmBho6NWs9sHU+1ed/ptm9YnMlbAukB7uqg/1pM9
	QrPR/33mHatVYIjZc9gX5IoLAd+cLW6dRtWvod/pqDAmEGYpBWJ3wCQUMnXM25u5ew4nEbfcaHMRa
	BRzO/597gqg5BIyhOQ1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGfjz-0087y0-MA; Sun, 06 Feb 2022 11:29:59 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGfjx-0087xa-9J
 for linux-phy@lists.infradead.org; Sun, 06 Feb 2022 11:29:58 +0000
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0DFFC40040
 for <linux-phy@lists.infradead.org>; Sun,  6 Feb 2022 11:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644146988;
 bh=Rt0CLAsAt//yNIPsU1fxnJ6fI6vrkoAOGL9+IE9dY2A=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=iyNF24RunQBqywPHV9APclAF/0SOPDNXAu21OGC1ZyQA+D55Sc7b0lcRa3C1Kh7Wk
 ligK6armJAAOJ9KwoPmmHURB2RAyrlq5yHzIif6T8xjP+S3NAA65CR/VgnBZ6IGZj0
 edw7i5Hm1avlcoMBJZQfiBHKUmbjs2d6+88kU4i8afju4us5s+va/2n2vhLfNAlYV5
 TOcHXgAoZ1B5dD3t6nW8F/kS4TXlVACtwNeLDpCWw551A3l71JO3C1HfyYSW7SwDEp
 XruJ96+HeTECWGXmyj0222wW5Mk43oo+FeOwZGVSuq/HEFpBvxd/sWW099RvydE2eC
 bG9feGuNwVzgQ==
Received: by mail-ej1-f69.google.com with SMTP id
 o4-20020a170906768400b006a981625756so3708125ejm.0
 for <linux-phy@lists.infradead.org>; Sun, 06 Feb 2022 03:29:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Rt0CLAsAt//yNIPsU1fxnJ6fI6vrkoAOGL9+IE9dY2A=;
 b=ipT/CI73YOmo/KYuFx5uf8xeL80P35cDZw+a4gMWinMgXa8apGnoxQGZhCDieY70SU
 DNFMDyB29Ebh1EAZtGgKGsc+/1lLY6L54Cp02DiXrz4i1+W42I+FLn+XsTz2MIwx+sWO
 130VPSSFxPh74zKJesUj/0sKGT8eB+em3PZcHJT32/iX0wRJJnk7FzwMJp5mac158VaI
 aMEc9G5p4GhGqsCrXYrm2FadGbnpnrqqrYprtVZ6/GcA7QzWuWUk7lul+fbB8umxMUd5
 s1DityX5v9q8LiMmfLoGiVG40Nq0GUoTBl6B/QJ0fnwbVOmufbkKqwooIwTVMg6SpQx7
 sL+Q==
X-Gm-Message-State: AOAM533Pr+Do6o2Tw5zEQ8BBPcORd9JodhgZUlJLk6Co/GtTWUgncoTS
 s+Yo0yVTSjPTJSN/Iq2okJaEeCfPy3oDg/uiOopvnuEKH4rgDTjYYI+8aBgMq2iW4nlHZx3OW72
 50D/vUAQjUd6ctGDHyJ5I+o2M8U0oGxpSgi2Xzu7T9GA=
X-Received: by 2002:a05:6402:520d:: with SMTP id
 s13mr8442901edd.132.1644146987539; 
 Sun, 06 Feb 2022 03:29:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyQUy24RjHPXGNrYXXd4Ep/1rz7beCD0Lisb4rFEaHdqI4+hhfFuwh3fhCM8vUwP90U+Eq35g==
X-Received: by 2002:a05:6402:520d:: with SMTP id
 s13mr8442890edd.132.1644146987417; 
 Sun, 06 Feb 2022 03:29:47 -0800 (PST)
Received: from [192.168.0.83] (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id ec40sm1776603edb.68.2022.02.06.03.29.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 06 Feb 2022 03:29:46 -0800 (PST)
Message-ID: <04ef74c4-71f6-559c-f054-5267086abc22@canonical.com>
Date: Sun, 6 Feb 2022 12:29:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH V1 07/10] arm64: tegra: Enable PCIe slots in P3737-0000
 board
Content-Language: en-US
To: Vidya Sagar <vidyas@nvidia.com>, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, robh+dt@kernel.org, thierry.reding@gmail.com,
 jonathanh@nvidia.com
Cc: kishon@ti.com, vkoul@kernel.org, kw@linux.com, p.zabel@pengutronix.de,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
References: <20220205162144.30240-1-vidyas@nvidia.com>
 <20220205162144.30240-8-vidyas@nvidia.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220205162144.30240-8-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_032957_488864_E1A9B2B9 
X-CRM114-Status: GOOD (  13.73  )
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

On 05/02/2022 17:21, Vidya Sagar wrote:
> Enable PCIe controller nodes to enable respective PCIe slots on
> P3737-0000 board. Following is the ownership of slots by different
> PCIe controllers.
> Controller-1 : On-board Broadcom WiFi controller
> Controller-4 : M.2 Key-M slot
> Controller-5 : CEM form-factor x8 slot
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  .../nvidia/tegra234-p3737-0000+p3701-0000.dts | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts b/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts
> index efbbb878ba5a..b819e1133bc4 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts
> +++ b/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts
> @@ -21,4 +21,30 @@
>  	serial {
>  		status = "okay";
>  	};
> +
> +	pcie@14100000 {
> +		status = "okay";
> +
> +		phys = <&p2u_hsio_3>;
> +		phy-names = "p2u-0";
> +	};
> +
> +	pcie@14160000 {
> +		status = "okay";
> +
> +		phys = <&p2u_hsio_4>, <&p2u_hsio_5>, <&p2u_hsio_6>,
> +		       <&p2u_hsio_7>;
> +		phy-names = "p2u-0", "p2u-1", "p2u-2", "p2u-3";
> +	};
> +
> +	pcie@141a0000 {
> +		status = "okay";
> +
> +		phys = <&p2u_nvhs_0>, <&p2u_nvhs_1>, <&p2u_nvhs_2>,
> +		       <&p2u_nvhs_3>, <&p2u_nvhs_4>, <&p2u_nvhs_5>,
> +		       <&p2u_nvhs_6>, <&p2u_nvhs_7>;
> +		phy-names = "p2u-0", "p2u-1", "p2u-2", "p2u-3", "p2u-4",
> +			    "p2u-5", "p2u-6", "p2u-7";
> +	};
> +

No need for trailing new line.

>  };


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
