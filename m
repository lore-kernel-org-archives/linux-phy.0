Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BF88CD343F
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 14:54:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2yjVq8rhRyA388zxerR7N+qZBn9kc6c+0HHkcylr+U=; b=hybiucUnDvuQDL
	SqIaRoKwTrZQh/4lgmg0q2TR4D4N0Y7DDS249SeSltYxipkBam0j1c7mCgZN36/Z89549rBI0e5oZ
	IWsYlBUTg6orOZ2FfOm8ob6+ddG4ZVoNNePKQaG2BfxCXmNCTJ1MqOI7p4zJyPb/I2Vq7Wn4CrkFM
	mXWsZvR/k/ZQIhz4q29BYmJ0pkJ4jrETGydDUT/qEMt9veQbQHIDv/yOnVF74cbeSqHqMqcnTqCnH
	SrSxVf+eYxn8IfNRdU96QFpeQy/5Gl0RyvZEghRMpOjSenT2Xd14Bl4OSbpvPzSbH4jw1XMAW1hts
	04K3lP+9F3Zu2g1hAXbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slUvH-00000000h8y-3vv2;
	Tue, 03 Sep 2024 14:54:24 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slUtm-00000000gQz-0PmD;
	Tue, 03 Sep 2024 14:52:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D959AA43735;
	Tue,  3 Sep 2024 14:52:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87521C4CEC4;
	Tue,  3 Sep 2024 14:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725375168;
	bh=r82WX5U3SVE11HWz1+1arg0msM0j6AfzMYQI/uAjjuU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G/hkWJiclG+CQTE+Kqwlpl+0RqKjlpnd7PZi8TZl1T7kz2yVllunOAVk+JdPKA37q
	 Y9x7wZ0thIbOKI16qn/8abaHCGEL35SxqNqhqJTeScZNby3s0htEXrqwaawbCRHzlS
	 iuy24U9g2Acl11Ep8gAc/rpo3oY1rsi4aiBlu7ApaYZd9A9qxcEb9BIDO3bTaXOESY
	 diUKMvy30PMbDSl1UWlhXySjpvDD52flG/RjqubuU1SdEkDMR/rIIRiWkOcKDOfJm8
	 /c+BU64CydMau32uh1UREh2O0zvYGCl2j4ipf6BPfxlV2JB8CC1q5iRdiU0TiOZ+rB
	 4YARsO8pp2Inw==
Date: Tue, 3 Sep 2024 09:52:47 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org,
	fabrice.gasnier@foss.st.com, devicetree@vger.kernel.org,
	kishon@kernel.org, p.zabel@pengutronix.de, conor+dt@kernel.org,
	linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
	linux-arm-kernel@lists.infradead.org, krzk+dt@kernel.org,
	alexandre.torgue@foss.st.com,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH v5 1/5] dt-bindings: phy: Add STM32MP25 COMBOPHY bindings
Message-ID: <172537516622.996858.7295101990196127870.robh@kernel.org>
References: <20240903121303.2953150-1-christian.bruel@foss.st.com>
 <20240903121303.2953150-2-christian.bruel@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903121303.2953150-2-christian.bruel@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_075250_243675_FD1AEA36 
X-CRM114-Status: GOOD (  10.22  )
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


On Tue, 03 Sep 2024 14:12:59 +0200, Christian Bruel wrote:
> Document the bindings for STM32 COMBOPHY interface, used to support
> the PCIe and USB3 stm32mp25 drivers.
> Following entries can be used to tune caracterisation parameters
>  - st,output-micro-ohms and st,output-vswing-microvolt bindings entries
> to tune the impedance and voltage swing using discrete simulation results
>  - st,rx-equalizer register to set the internal rx equalizer filter value.
> 
> Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>
> ---
>  .../bindings/phy/st,stm32mp25-combophy.yaml   | 119 ++++++++++++++++++
>  1 file changed, 119 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/st,stm32mp25-combophy.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
