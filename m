Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 244EBCD6E7B
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jun 2026 19:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2BH5WlLTxC1Sz8U+CVICvxpd3L+DyFtpuomrYNW05c=; b=KJqtAiuSt4zSAh
	5DhkFrPPjJpCNd7vfEmfts6znjeAWrbvTcKF+vCXaACNx2JP769O+ViGjePUo8j644UKL/4taZlU6
	4E0Iy+42lGKP86Z7+hejY0tdWvKTI4ghsBAVxmWF9EYvNfIM2quKYocOH9ToJUY1sEFkZfVGlz58b
	JMjJ97QL2nDtgsm6Wki6QbINPDXTr13knKDtrj2iWMyD1H+XLScSYaAIK8MjbgsSW5uVe2s6rOtdS
	OGX04aqPO6jxPzBR2/s92PnvzR2drbOK4OlGAU6lpS/8Rg+A37oQPnXqQAuhC2UX6UhX7DgYFDbTQ
	gt01jomzps+ssJKgf9rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVZqj-000000015W5-2PEF;
	Fri, 05 Jun 2026 19:04:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVZqi-000000015Vz-2NwS
	for linux-phy@lists.infradead.org;
	Fri, 05 Jun 2026 19:04:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DE92340DE0;
	Fri,  5 Jun 2026 19:04:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14FD81F00893;
	Fri,  5 Jun 2026 19:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780686295;
	bh=Yse0SqJjEnbdUJl6eHAZpQ7EdaKzGdPFnXWp4ZHcKng=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hm5LKmx+R9my0USGZtnjUidWmmc3a0Ick8ey1lhhvjn+YlomoCYpBVpfnGV8ZwVzD
	 e+Aix/+uzmGiy3JEOhaBtkmz4SbNx9v3UnDoTcv+qNXygUDDy3nZL5/iz0JoZ0tLLs
	 1yYluIXXdRt1kTAJ98Q7wRkcP/g6LJ5J/govIWZ/qyb+IxB0R6jES9Yqiqmg39h5IS
	 6lw+6+jSj82wcAn/K17qd4ku6lxWXc0hibLmfBInTLkLqAY34Jmhg0eI6q0UZkQ3E0
	 F4dCo6EJopot1yOKNYeBlhwcgMoSUJSlECwDOlV6kf+yxS8TTRUVaDzIYQWhz/iJ3M
	 rxZevRcs8fV6g==
Date: Fri, 5 Jun 2026 14:04:54 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH phy-next 01/13] dt-bindings: phy: lynx-10g: initial
 document
Message-ID: <178068629376.4187871.11165995094571921556.robh@kernel.org>
References: <20260528172404.733196-1-vladimir.oltean@nxp.com>
 <20260528172404.733196-2-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260528172404.733196-2-vladimir.oltean@nxp.com>
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


On Thu, 28 May 2026 20:23:52 +0300, Vladimir Oltean wrote:
> Add a schema for the 10G Lynx SerDes. This is very similar to the modern
> form of the 28G Lynx SerDes, which is very much the intention.
> 
> We allow both forms of #phy-cells = <1> in the top-level provider
> and #phy-cells = <0> in the per-lane provider for more flexibility to
> consumers, and because the kernel code is shared with the 28G Lynx which
> already has that support for compatibility reasons.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> Cc: devicetree@vger.kernel.org
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 131 ++++++++++++++++++
>  1 file changed, 131 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
