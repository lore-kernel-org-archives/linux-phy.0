Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1113DFA3744
	for <linux-phy@archiver.kernel.org>; Tue,  1 Nov 2022 01:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VArNFy0yRFDY0/ek/b0TOG0zEl+yF2MqbCgoeaJYuY4=; b=poiWacVOPeQ4IL
	n3T6PEGB6OpPxfy5CopYqOTfvfE7ZVtCMmKRnkgdW8m/+4PkU0xJZeNO2sYRaU3jbAlUpI4XhhLHo
	H02DuPLLvxSLboqj8Yq/ZklxDre4GLhveQqolhGeqNSvGhOfFYadMj/l5YRsib5Wcy7kWwfgXtjOQ
	UtkFAQA/A4KbxQSxDRGeOkzcS23uklEGpiQZbZMFmvt7bRS4QmeFcqruMHVRI8cJJfzwsLHJtEI69
	wkfof28MSTl3ogCLmIKQOWMzSFIZd1cYMDmPE/c4ax3zCmbE3VFJj0n66NHnswAZ+h7tW6HKXCItb
	an5zSwNuC7ZZ5XOI9FWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opfgh-00H1lC-E4; Tue, 01 Nov 2022 01:03:31 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opfge-00H1jN-PL; Tue, 01 Nov 2022 01:03:29 +0000
Received: by mail-oi1-f173.google.com with SMTP id g10so14512802oif.10;
        Mon, 31 Oct 2022 18:03:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HkcBrIA7oBQ5mjHwd2UEcYrTi2K7pE4sTmK8J9yJ3xk=;
        b=VTyH52Q+4beMuNFbMFTOUpDLuFojX8YxwZKfXdEavkE+JAhex+aHalw7zhppS5lIZJ
         6Ns9G85vKeaZKPhCMpLsjZnuM9Ymu3Gd0ua4eHPLBeYgMzAdQwHfF+zfnD9R206DFMqE
         mdpfkLJnEB9akLy7Ajz4ZAtoKak88P67o0yJ1CLCAbwQwv76cL880IijuKIJWRPrLlET
         +Z05prk3bnjsPiOU3Fpls9YTABe2xDSiKd63N1BWsq5v+ZnmuBAQcgqjN3gfQIrliZc9
         T0+cRS9zvAfvERcxjX3JR1Omwk6XjHGW+agVBhje5LACoMDqcGwVi4cV6GHt7LeWOzSx
         lTnQ==
X-Gm-Message-State: ACrzQf3JuFQMccnwKEKYV8K6H/lvobMH5KECxawfx/b9UTuCldKVsmxh
	5g/7QbcDm3Aac54CZ2axNQ==
X-Google-Smtp-Source: AMsMyM5Hm6wz1VL2aBS7VdPj2bSUEvAruPZvs7foxPpmncN/mwOsDpLRKL8oEo1akGDpohnZxJPP6w==
X-Received: by 2002:a05:6808:8d2:b0:354:7fd4:f17b with SMTP id k18-20020a05680808d200b003547fd4f17bmr27480oij.221.1667264606700;
        Mon, 31 Oct 2022 18:03:26 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id g12-20020a056870a70c00b0010d7242b623sm3825007oam.21.2022.10.31.18.03.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 18:03:26 -0700 (PDT)
Received: (nullmailer pid 4030032 invoked by uid 1000);
	Tue, 01 Nov 2022 01:03:27 -0000
Date: Mon, 31 Oct 2022 20:03:27 -0500
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>, linux-usb@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>, Karl Kurbjun <karl.os@veroson.com>, Vinod Koul <vkoul@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Icenowy Zheng <uwu@icenowy.me>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-sunxi@lists.linux.dev, Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/7] dt-bindings: phy: Add special clock for Allwinner
 H616 PHY
Message-ID: <166726460732.4029973.16304467789451504367.robh@kernel.org>
References: <20221031111358.3387297-1-andre.przywara@arm.com>
 <20221031111358.3387297-3-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221031111358.3387297-3-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_180328_839913_79FA6D4A 
X-CRM114-Status: GOOD (  14.65  )
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


On Mon, 31 Oct 2022 11:13:53 +0000, Andre Przywara wrote:
> The USB PHY IP in the Allwinner H616 SoC requires a quirk that involves
> some resources from port 2's PHY and HCI IP. In particular the PMU clock
> for port 2 must be surely ungated before accessing the REG_HCI_PHY_CTL
> register of port 2. To allow each USB port to be controlled
> independently of port 2, we need a handle to that particular PMU clock
> in the *PHY* node, as the HCI and PHY part might be handled by separate
> drivers.
> 
> Add that clock to the requirements of the H616 PHY binding, so that a
> PHY driver can apply the quirk in isolation, without requiring help from
> port 2's HCI driver.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../phy/allwinner,sun8i-h3-usb-phy.yaml       | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
