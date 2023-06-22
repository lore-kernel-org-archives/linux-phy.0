Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6154EB64DB
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jun 2023 08:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ydyQb28VPUJAwQdSvcWXi9q5oQPAvFWRsuKFUQRES2E=; b=rfsd00myI62WNM
	xtIhPemFlR7cnPNQzvHFdtSbJ++EuPCyKW0AFYqkT1nCXqiiraWeqh3lZRrYvAG+kn8p3Z907z2sZ
	DeAMxLIRvWF3FJ2To6357NduudzpXMRhehRukcLQ3efnseOLTQeGJXP9qYokl4meaZiJSrVC6Dq6U
	LFzFI2PDXuRLRvyF9sU5W51BDAav0ZO2xxHN7cVCDhNUoZU44u8mToVpOka169dhQOPLYUln8G1sV
	d1uPPj6k1YJeErK5FZK9e+TQadc3+kbFlD2M2JmoeoKwsVB15SD6DIK1NmmhM15LUMr4K4ErjRJ86
	svQAXWCAODf7E3WTuelw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCFEf-00HLbT-1k;
	Thu, 22 Jun 2023 08:00:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCFEc-00HLaR-1A;
	Thu, 22 Jun 2023 08:00:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B913D6178A;
	Thu, 22 Jun 2023 08:00:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB890C433C8;
	Thu, 22 Jun 2023 08:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687420805;
	bh=HmqN6QvJA/H4lniyDvO3oHZW73KNcg4jews9XetMmDk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lZeZJaDonMnRowBP3f3MC7Z9XowyEBjnknROJSQUowwjeA9NJGM8YMCc51vpkYRyh
	 +ufrLJS5FvYUlemA3zDBZJOOPsPAHgRI6l4i9F9bhYJh2cRLKOHsLaoDNUHIgyzFiD
	 kRZ0/Boip85a+JknNGEIHMqKzthYnAh+wO1FtDHJg/TT55AQqhavISa7Edegmj+z8R
	 BJJpjqYF2nY9/CiEfi2i8Kz3u1EGraXNuXQDce5uNucFkGUgHGoFgjW6xlGjpX6Xx1
	 lQQrf+7dW0rVm4pNWjkEM/rzA8IUGRRjIdDV5NTtSevc3xMPp9vgRsa5+U7NQuD9lm
	 FwNTJjPqG2h2Q==
Date: Thu, 22 Jun 2023 13:30:01 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: brcm,brcmstb-usb-phy: Fix error in
 "compatible" conditional schema
Message-ID: <ZJP/geCiMQqj3fb1@matsya>
References: <20230621230958.3815818-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230621230958.3815818-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_010006_438510_BE7FCA9F 
X-CRM114-Status: UNSURE (   6.51  )
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

On 21-06-23, 17:09, Rob Herring wrote:
> The conditional if/then schema has an error as the "enum" values have
> "const" in them. Drop the "const".

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
