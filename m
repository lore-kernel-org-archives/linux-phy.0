Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA3B606A32A
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 10:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=raycE/He;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=lfD7eyQ8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=H8NL6gBZAGRXsHKpWTJxI/jF679e5u5+ZPDzFoV9pr4=; b=raycE/HeXGv25b0vau13t+4W+U
	xlZkgxuIQzAm4P76mwY7qwKHR+yJEubftL8NV1duvQelcZ4XUSPm2j1449gMTBOOsjPb9G8waPXwq
	upc38QE9XiGwMeFx3TM7C9qRl097Ox8H+1u+gFhIy3/q8R12v4U103xcOzXftwyGE4F1atIFJpG07
	WYiBndeO4TGJ4LsMyoaJt3ZgcT5zdpvL1OEIQZDjl5ejfFPWX1V5goeh+5xN3kDVdw44+x25HqxoY
	VPGCWv2HJW8IuAEV5wjy+NSyCwkOu6vYu7tCoRT7qjcCzYF7jjQXSFuD6MSjaPbXtjuXhHXcoZK+1
	NXHq+8ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xULsc-0000000Ebbg-1RPI;
	Fri, 20 Nov 2026 10:30:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xULsb-0000000EbbC-3Wgy
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 10:30:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6C60140433;
	Fri, 20 Nov 2026 10:30:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB4871F000C0;
	Fri, 20 Nov 2026 10:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795170603;
	bh=0Pn3lEK37cGLcBDrLgjiBks9/meH2vXTHJ0OG2X8Tb8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=lfD7eyQ8gP4DU8ZSUxPcn2r9/wW9TN/p6DxqGK1n8VVN12IkLR8gBfHRGsyr/V4Gn
	 DCd5sScgQhblvHV68S5Tvv/KtnTofDqF4a5PQ4lp3pHrhB5NfQU3L9fY/TE7En9r5r
	 RSBNLJRcKoUn2BJExPKNbtJU9Ko01NyqupcQK3cw4Ye2o75tvuLdu7jMhYr52/3qwm
	 L1Le+p4TdUR4b0vwsI2VyCKNgqTusA0PZHhIqsTc7j1MZVOyje2SOlcP40JhouFMCL
	 GzuTg92+I5JJ50g/S7JlDkiBqn3PnBMulEYp+3YT/nwD9UaSpljWHB8kR5J5uWpyPO
	 1ghmb7JKtL2sg==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski
 <krzysztof.kozlowski@oss.qualcomm.com>, Sriram Dash
 <quic_sriramd@quicinc.com>
Subject: Re: [PATCH v4 0/2] Add support for SA8255P in the
 phy-qcom-snps-femto-v2 phy driver
In-Reply-To: <av79X0gPyQDXgZwR@parshuram>
References: <20261027-phy-qcom-snps-femto-v2-8255-v4-0-874023825a63@kernel.org>
 <av79X0gPyQDXgZwR@parshuram>
Date: Fri, 20 Nov 2026 11:30:00 +0100
Message-ID: <xhkdbfqwvpzh3.fsf@mkorpers-koolstof.csb>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
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

On Thu, Nov 19, 2026 at 19:15, Vinod Koul <vkoul@kernel.org> wrote:

> On 27-10-26, 14:00, Mattijs Korpershoek wrote:
>> The Qualcomm automotive  SA8255p SoC abstracts resources such as resets,
>> clocks and regulators in firmware. The SCMI firmware exposes multiple
>> protocols to control such resources which are identified by protocol_id.
>> 
>> For this USB phy, 2 SCMI protocols are exposed by the firmware:
>> * power domain management protocol (protocol_id=0x11)
>> * performance domain management protocol (protocol_id=0x13)
>> 
>> The power domain has 2 indices: 'core' and 'transfer'.
>> * core controls the regulators, the clocks and the reset
>> * transfer only controls the clocks
>> 
>> For example, to power on/off the PHY, we should use the 'core' domain.
>> To disable data transfer and keeping power enabled, we should use the
>> 'transfer' domain.
>
> Hey, this fails on phy/next for me, can you please rebase

Indeed, the IPQ9650 support that was recently merged causes
conflicts.

I will re-submit a rebased v5 shortly.

Thanks
Mattijs

>
> -- 
> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
