Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D084C8303C
	for <linux-phy@archiver.kernel.org>; Tue,  1 Jul 2025 08:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRepKD4lZeUZ8kl01uciigdHOk/GabY+v/2txFUTqW8=; b=SulooSDyDQ2IAU
	259dNaXLk1sLm6VpS/qxaDSstRZybQU3b5Gx+gIdP+7JRQ42d09FIxBx5SbuAj0c0t64X+hnwWN96
	qORV217rVAdj13GT6Nf1aymCpZ4QX/jHbSOKuryduYPnXgepGc0y5pxNw3dWiLiCDzyJFYLefEmjc
	OrcY/LiFkh20HBIOsDY7Rm+iGPlMB9NeICu31R7UWtZJ6B6Z8xAKYQH1+6LFAZjORd167e01rEIal
	gaHoS7M02E14X57w0I+eLGzd+HtG1C210c4JNFUs5zSN6SnuSr60D+Tk+sDrbyeyNuZcfkpVYD1TG
	KUV4tG4zFEvGyP6D6fOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWWjL-00000004U1h-2yUb;
	Tue, 01 Jul 2025 08:52:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWWKF-00000004PbF-1wdp
	for linux-phy@lists.infradead.org;
	Tue, 01 Jul 2025 08:26:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1A27E46102;
	Tue,  1 Jul 2025 08:26:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DD5CC4CEEB;
	Tue,  1 Jul 2025 08:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751358407;
	bh=BpTnvreAURoJuahxZzU8t6mXzFNDTA0qmPDYrQKie7U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mo53mM/7Hj3X5zZUPoExDOcH3jNRu/Ij6vTUNYaFw7HDnXytECqpx+yvysuI9+9EW
	 ZWaU+K7YyJhrQGIHRfy6xZI4KjIwBvyDnLR+JUemvcmVn4+ySKuQfAdYcN5uQ27tAz
	 Sm4C7NVI/iV/K0rGaQr4kSuSQLIU29ZuIDbDVlranb4kxfGz2evVhy82gae7euDJ9R
	 ujXq/Ec3/ZSZWNttVKj2XgZ+bjIEUKmOBvYXiap1RjNYOnc5QZb52YjODEuSzYN8ZR
	 YJui3Nt/aWh3O2oTtjfRe+MReapPNvyR4id7pngKXqGwUgzWy+KMTvGSEhpW9uDrh4
	 4WR/PwmmD0opQ==
Date: Tue, 1 Jul 2025 10:26:43 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, David Lechner <david@lechnology.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: Convert ti,da830-usb-phy to DT
 schema
Message-ID: <20250701-swinging-honored-harrier-6e972c@krzk-bin>
References: <20250627220107.214162-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250627220107.214162-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_012647_522751_7C855EEE 
X-CRM114-Status: UNSURE (   7.59  )
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

On Fri, Jun 27, 2025 at 05:01:06PM -0500, Rob Herring (Arm) wrote:
> +$id: http://devicetree.org/schemas/phy/ti,da830-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI DA8xx/OMAP-L1xx/AM18xx USB PHY
> +
> +maintainers:
> +  - David Lechner <david@lechnology.com>
> +
> +description: >
> +  This device controls the PHY for both the USB 1.1 OHCI and USB 2.0 OTG
> +  controllers on DA8xx SoCs.
> +  

Trailing white-space here.

Rest looks fine, so with above:


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
