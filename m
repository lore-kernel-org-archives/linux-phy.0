Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA5260A2610
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 13:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SI8HGbyG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=HkQRt1Cy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8N8F86Kvk5GYx4krpWpuUB98ZU/X17XXEgX4gHSMG2c=; b=SI8HGbyG7FRu4kxENeYyYeIZ1V
	F+Uh1eCCvgXZ4XpL/S4EUjSg4Q3Rql85t37egWSpEMCCmwMo6zygp/21mFkWcek2mO2LCZ2/iFwey
	TpMOI5CaGqDRox2Hr9WxqRk8Lm/F1nwyxAse+mLLL6tDqGY6zKWo2yFj3vefZfvOq80X55meVz+ce
	OMMCm5nazKmhA/jV3espE3iGUN5ClRnHJLXgCbXeIUb/VGsiMuzCE83CNxmSPuGIoHXTKmqVVNUXB
	vtm3X3nFAZn6UxE1FxOj0g03xVfbg7snAPGktTQQ6BZfjDIl3EG1Y1VqxyCbDWp03b8Y74TZk5G+d
	vC085xoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2Rp-0000000C75f-45Ik;
	Thu, 19 Nov 2026 13:45:10 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2Ro-0000000C74p-0VPx
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 13:45:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1273263306;
	Thu, 19 Nov 2026 13:45:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F2BD1F000C6;
	Thu, 19 Nov 2026 13:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795095906;
	bh=InDwd5ord1uO7JbO8/j2hh0MYhOZynVPTKgcMtQwGnM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HkQRt1CyUzzLeeQiWK+I8pHR3mpKF/2lBOk7R9mTATNCzRbq/H2ZS0aI8cfolga2c
	 D5nM0vfwdB4jo2fazdkaT0yVN5HV2BooIPx3XKiy4h+RS+HJhMRlWyTdb1ED/dHcSr
	 u3pZkKCmVCtGJl+CsDVOixMivK5Pvdg38PvE6TnX9/Q683bzuHVlGxC/r/joxCAvpF
	 IqeGGaFp7V4w+0yqJhBHj6v5ZNHtygYs+zVhijAt17KWb0FTxicTNpmTusLgyRFMo6
	 9pK+ZJxT5lKz+8RdMBT+zN/n/QySOuZH3f7Bdq5DcuUQ+/1kOuHcv/0cDHSHT/Q+lp
	 LRdIhhQjkZQZA==
Date: Thu, 19 Nov 2026 19:15:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mattijs Korpershoek <mkorpershoek@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Sriram Dash <quic_sriramd@quicinc.com>
Subject: Re: [PATCH v4 0/2] Add support for SA8255P in the
 phy-qcom-snps-femto-v2 phy driver
Message-ID: <av79X0gPyQDXgZwR@parshuram>
References: <20261027-phy-qcom-snps-femto-v2-8255-v4-0-874023825a63@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261027-phy-qcom-snps-femto-v2-8255-v4-0-874023825a63@kernel.org>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 27-10-26, 14:00, Mattijs Korpershoek wrote:
> The Qualcomm automotive  SA8255p SoC abstracts resources such as resets,
> clocks and regulators in firmware. The SCMI firmware exposes multiple
> protocols to control such resources which are identified by protocol_id.
> 
> For this USB phy, 2 SCMI protocols are exposed by the firmware:
> * power domain management protocol (protocol_id=0x11)
> * performance domain management protocol (protocol_id=0x13)
> 
> The power domain has 2 indices: 'core' and 'transfer'.
> * core controls the regulators, the clocks and the reset
> * transfer only controls the clocks
> 
> For example, to power on/off the PHY, we should use the 'core' domain.
> To disable data transfer and keeping power enabled, we should use the
> 'transfer' domain.

Hey, this fails on phy/next for me, can you please rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
