Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D838CE74914
	for <linux-phy@archiver.kernel.org>; Mon,  2 Oct 2023 19:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjZ6zZXO0teoqMDE/93Akbi/XTmosNdpveXuj5j8S/w=; b=44zujWytESAh8M
	PKxeqXrlhFBmD0LNrlENEzHPJIVEf6uW/lfrXyhYtpVdSt4zm8abx2bATwLa2+X/8em+ukp1/0QEp
	hD1095tN3yAbQINcJUEBvGcHBJTRERjT14DmFbJLou7vGamvdNUWgKVl7oKsMs2ZNVcvFFQFAj8YQ
	/UUsjS+AKqNVIAE/V6gQ54YLt4akb+f9KvzAu1SvtKXpW4+0Ijqpy+9gNgpA90DnGPMiS7LUDhRwR
	TglIL75Mv1I/pmSwKnozoqN3KnqH+9clJ8tgojKb6yuBciFHCJkLDrjuJjVFGUiDa9x31AEAlto5W
	LHYsw+u9LCMVDjiNLnGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnOSb-00DHOk-1y;
	Mon, 02 Oct 2023 19:20:05 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnOSZ-00DHOM-00
	for linux-phy@lists.infradead.org;
	Mon, 02 Oct 2023 19:20:04 +0000
Received: by mail-qt1-x829.google.com with SMTP id d75a77b69052e-4180f5c51f8so518551cf.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Oct 2023 12:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696274401; x=1696879201; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ds6VTt0w8PY6LpzSqGG11xF1/RVNxL0JohTRt+pMTII=;
        b=EiWTs2UybwaEW84JrK8B9Y3dm45mnYHiGbwXgkgALd8jfbQuog3f0i/8+rbB7I7pv9
         lZG6yieDMLXZdfuvtFfoWktMdD8XCH7S3WJ4hpJuekq7N/XflQ6oJSu+kRMstzCIMWXK
         BG4WUTk/GYaJFuTTo9R57OnUPn6xSG0Sc7y2J8xJddqUvFaP1Og9Xk2TRUrKiFHq+V4k
         UayutYKbxfkUdFk5QrJmGP8VchCymTvXNi3k2dkJtFHm4zU2y6iMjpZRRRysjrsgtlUq
         qUv+cCwQ7jqs5Xsmgv658W2FTF2FDU3lQON2es5ZhiqTZlgfI21RBm1WbOb38dkK5QHp
         8avA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696274401; x=1696879201;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ds6VTt0w8PY6LpzSqGG11xF1/RVNxL0JohTRt+pMTII=;
        b=kHhQtyxXLPHm1uaR3NeiTw24cVocJ2J0Z0t1yjXN95I3ByUP7VXE4Q9jS958oRFw4n
         10Eplbn0937oHRhhlhRkvV1bHBQMeyNRsOWrP1y+e190nXVQDa68yJoxxdaGVkKmSS+n
         6qW8gc/83X+6txSs3YEe81t6deh8ugvGkdfW16tU3gGyMYzAOoJ1TDFtIYnjzyqJUvBF
         tjAgCuyHlwrRwfMDJiE8MeWjXb8J/X2C2k9/Ulvd3wtT2VKZ+vvrBOVMQ4mchCuEAeQQ
         nHkVRWyR8QS9FsvDh1TOqaSUXtqVtNafUWvSgoO5cehXG1o4iW9gw/bYkcIkb5OdaU8Z
         wBTQ==
X-Gm-Message-State: AOJu0YwX0P4bsVspHSwDCq2EfTZO771kOxCR5j8SuuR+KWiEXbR2o5JM
	0I4IyaCt1OXiYpFzq8yIsWc=
X-Google-Smtp-Source: AGHT+IGo6yeaGgco1DFJeiDGQXKNDcXfNT0WDByiIGMzDo4ZxvNVsqXi0hPLiGLZWFxsvV17yl+ifg==
X-Received: by 2002:ac8:588f:0:b0:408:392e:2aa5 with SMTP id t15-20020ac8588f000000b00408392e2aa5mr546193qta.20.1696274401317;
        Mon, 02 Oct 2023 12:20:01 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id b10-20020ac86bca000000b004198ac8be74sm1728335qtt.65.2023.10.02.12.19.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 12:20:00 -0700 (PDT)
Message-ID: <5293ccd0-cb88-a196-fa26-aa6fe1e3a52a@gmail.com>
Date: Mon, 2 Oct 2023 12:19:57 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [RFC PATCH v2 net-next 02/15] phy: introduce the PHY_MODE_ETHTOOL
 mode for phy_set_mode_ext()
Content-Language: en-US
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Heiner Kallweit <hkallweit1@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Madalin Bucur <madalin.bucur@nxp.com>, Ioana Ciornei
 <ioana.ciornei@nxp.com>, Camelia Groza <camelia.groza@nxp.com>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor@kernel.org>, Sean Anderson <sean.anderson@seco.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-3-vladimir.oltean@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20230923134904.3627402-3-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_122003_047020_40DD2F83 
X-CRM114-Status: GOOD (  23.93  )
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

On 9/23/23 06:48, Vladimir Oltean wrote:
> In networking, we have 2 distinct data types:
> 
> - phy_interface_t describes the link between a MAC (or MAC-side PCS) and
>    an attached PHY or SFP cage
> 
> - enum ethtool_link_mode_bit_indices describes the link between a local
>    PHY and a remote PHY (for example, gigabit RJ45 twisted copper pairs)
> 
> Currently, phy_set_mode_ext(PHY_MODE_ETHERNET) takes arguments of the
> phy_interface_t type, and there is no way to pass an argument of the
> enum ethtool_link_mode_bit_indices type. The new PHY_MODE_ETHTOOL
> intends to address that.
> 
> It is true that there is currently some overlap between these data
> types, namely:
> 
>   phy_interface_t                enum ethtool_link_mode_bit_indices
>   -----------------------------------------------------------------
>   PHY_INTERFACE_MODE_10GKR       ETHTOOL_LINK_MODE_10000baseKR_Full_BIT
>   PHY_INTERFACE_MODE_1000BASEKX  ETHTOOL_LINK_MODE_1000baseKX_Full_BIT
> 
> but those overlaps were deemed to be mistakes, and PHY-to-PHY link modes
> should only be added to ethtool_link_mode_bit_indices going forward.
> Thus, I believe that the distinction is necessary, rather than hacking
> more improper PHY modes. Some of the PHY-to-PHY link modes which may be
> added in the future (to ethtool_link_mode_bit_indices and not to
> phy_interface_t) are:
> 
> 	ETHTOOL_LINK_MODE_100000baseKP4_Full_BIT
> 	ETHTOOL_LINK_MODE_100000baseCR10_Full_BIT
> 	ETHTOOL_LINK_MODE_25000baseKR_S_Full_BIT
> 	ETHTOOL_LINK_MODE_25000baseCR_S_Full_BIT
> 
> One user of PHY_MODE_ETHTOOL will be the MTIP backplane AN/LT + Lynx
> SerDes PHY combo, where the backplane autoneg protocol (IEEE 802.3
> clause 73) selects the operating PHY-to-PHY link mode.
> 
> There are electrical differences between the PHY-to-PHY backplane link
> modes (like ETHTOOL_LINK_MODE_10000baseKR_Full_BIT) and their
> non-backplane counterparts (like PHY_INTERFACE_MODE_10GBASER), namely
> the number of TX signal equalization taps and their configurability.
> This further justifies distinguishing between them in the generic PHY
> API.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> v1->v2: rename PHY_MODE_ETHERNET_PHY to PHY_MODE_ETHTOOL at Russell's
> suggestion
> 
>   include/linux/phy/phy.h | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index 6be348f1fa0e..72ef4afcda81 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -39,6 +39,7 @@ enum phy_mode {
>   	PHY_MODE_UFS_HS_B,
>   	PHY_MODE_PCIE,
>   	PHY_MODE_ETHERNET,
> +	PHY_MODE_ETHTOOL,

Not feeling very comfortable with using ETHTOOL here because that is a 
Linux sub-subsystem name as opposed to the other enumeration values 
which are electrical modes of operation and/or industry standards names.

How about PHY_MODE_ETHERNET_EXPLICIT or PHY_MODE_ETHERNET_LINKMODE?
-- 
Florian


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
