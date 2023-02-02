Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CCF7C61DA4
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+Fa8MgfSqdB86XprVkbSmR1zvrOJFt8mxw3jJVM4VY=; b=c/CpbZ8mitc6Qa
	jyefBPyfk0tqMUnPQ06gRtPI+W6S3Cv2Vta6vZoG55vg80vLbPQDc30mG6A36OAfNIvq1AxOMUA5A
	24v6knkaf4YSV1CQxo2P+tXxmcD3uyRV+Aez6u5vNPmdldw9f79Q9dQDdX9ry3jslPPnqd6YLHkx1
	pgHLe9khFkXUCFbICDBqkG+EWWc0KJ6DFG0Pv3li2n063Rln+R0jACQyLoZKFB1QoFeJVw1fVSUTl
	3lTn8IN0ZPXMby7ptZhnGyXKRq735Hb6DugMgzCk+rLk9SjZX1UAuZ7dk7yReVUOsHBz9HNxCS//S
	NSvQnVXjtMZ7pf4a6X5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZVI-00FzR0-0a; Thu, 02 Feb 2023 13:19:52 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZVF-00FzQP-Hk
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:19:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D818E61B23;
	Thu,  2 Feb 2023 13:19:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FEEBC4339C;
	Thu,  2 Feb 2023 13:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675343988;
	bh=cgyO6oENOnGLZEDMSFb7vIWhYFOJKLrgcd5FRlRWzRY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OeMK7BAps8cxAwwxSB6OMyScSi0s1hP4yKWA+9+p9cJPxDw0Ie85bGL6YrGWPDHPe
	 DKBDJWIqrcJ4aRMdeV2EXMtbpePjQhJVfjscB/8Dmr4tM7qPufCGBUDqROHxDskze7
	 KGz4uOCdRlO3SKSyFqKSNeFupbwHmpuDyqksSwANnEEsrkdE6S6Pup0718AFuAXEeA
	 ne/Cgev/ikzvXh6Ho8g4Z5A+eDt9RjXJ9tHjKSozdMq9oxl/wAQ+wqEWv3/vtcwa2e
	 QRicWhqSpib0UFZpAdSowTzPIRZ8oPpKByhxPAbWgTs7J6eH1ZQ+zW9oczULwYn9np
	 mXMtfOHI9y7Og==
Date: Thu, 2 Feb 2023 18:49:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 0/3] Add USB/DP combo PHY config for SM6350
Message-ID: <Y9u4cAK+uKXuu+uL@matsya>
References: <20230120-sm6350-usbphy-v4-0-4d700a90ba16@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230120-sm6350-usbphy-v4-0-4d700a90ba16@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_051949_647141_D17A5EBC 
X-CRM114-Status: GOOD (  14.63  )
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

On 23-01-23, 14:29, Luca Weiss wrote:
> While this patchset started out as just adding a dedicated init sequence
> for SM6350 since USB PHY init didn't work in some cases, now it's also
> migrating the phy config and dts over to a new format.
> 
> Also note, that the DP portions are pratically untested since TCPM
> (type-C port manager) and possibly other components aren't brought up
> yet.

Applied 1-2, thanks

> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

cover doesnt need sob :)

> ---
> Changes in v4:
> - Fix dp_serdes offsets in driver, add dp_txa & dp_txb fields (as in v2)
> - Fix order of resets in dtsi
> - Link to v3: https://lore.kernel.org/r/20221130081430.67831-1-luca.weiss@fairphone.com
> 
> ---
> Luca Weiss (3):
>       dt-bindings: phy: qcom,qmp-usb3-dp: Add sm6350 compatible
>       phy: qcom-qmp-combo: Add config for SM6350
>       arm64: dts: qcom: sm6350: Use specific qmpphy compatible
> 
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   1 +
>  arch/arm64/boot/dts/qcom/sm6350.dtsi               |  54 +++-----
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 139 ++++++++++++++++++++-
>  3 files changed, 154 insertions(+), 40 deletions(-)
> ---
> base-commit: d514392f17fd4d386cfadde7f849d97db4ca1fb0
> change-id: 20230120-sm6350-usbphy-87c5e3f0218e
> 
> Best regards,
> -- 
> Luca Weiss <luca.weiss@fairphone.com>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
