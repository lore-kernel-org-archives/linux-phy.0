Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FD46EB64D8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 12:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HO8piA7PXYyPpvWZOHRqtpK42FWms5KtaIcQ2xzGsEw=; b=vaT0wB5WtejHfI
	o+mD6H5NquOsD/2kOlzOofiPXnpqF/5BD1bTmViX6WEuEYWxDYL2GQW7O/pmpNrAhz8AHLQX5NyzV
	64K36q7fv0N0xyb55/To4kzJYFyv4pjqCeWyjfULuH6n3WB8MXsqZKwKOJmGJ/OijmT4cx0M05zLQ
	Zmj3s7UTI9DBL4/Obiem6CH3mt5WyBhGJHfOCF0o1UWdLAjROkIy3RCDjp+Odh0MzYCt/NXA5GlB9
	kGheDCXWC2A0EsMbh6RNdWHM4+vqiWSCEgdazlnNfP7+IbQOlYWN9ayslQf1wgcjohU97JJe6wH3a
	3Ekt/q+F2IY+swUr8KZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBx6J-00EZWB-2i;
	Wed, 21 Jun 2023 12:38:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBx6G-00EZVK-1z;
	Wed, 21 Jun 2023 12:38:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E247A614FB;
	Wed, 21 Jun 2023 12:38:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C2D2C433C0;
	Wed, 21 Jun 2023 12:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687351095;
	bh=s/qdnTD5K4xkbOKaZkdTYFAnan/FfFnIlgUIS1J3gZk=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=oPeyDH3gb9d62xkd6pbDeuAZlCx8pS9XnkfN0u7vl9NtHaMlnEaZu9NFzIesz6yrc
	 2SKBAWAarBgHbXZqqXUsaPc8qT0Qbw4Kvi9+V9PfneLLPuz9ij06SUY9pRZ4Cdiw+t
	 EcRbu0FovF1P1P42OthSoxKsilECkqxrBrFGPIgReyGxWrcHU6rO4w3M8OM4TeGChm
	 j0Rc2nLMATsDQ8aY7wSGDTbFFzSDUzmKSoL62v5bw2kyT5Oth/jH+1Yje8CRvtj4UF
	 UOP5Y3TeOz5Cm0Y3cAkQRy+4YhB4ECVbxThL8o8rLdbPQKa0RYJRyKBAKdFkMVTlG4
	 d9xgUcUsRxoBg==
Date: Wed, 21 Jun 2023 18:08:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
	soc@kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 2/4] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
Message-ID: <ZJLvM9aEsx13WjuR@matsya>
References: <20230607050025.86636-1-guptarud@gmail.com>
 <20230607050025.86636-3-guptarud@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230607050025.86636-3-guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_053816_699616_3266AC36 
X-CRM114-Status: UNSURE (   5.99  )
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

On 07-06-23, 01:00, Rudraksha Gupta wrote:
> Adds qcom,usb-hs-phy-msm8960 compatible

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
