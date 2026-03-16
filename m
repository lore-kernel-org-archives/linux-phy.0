Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E3A2F013C5
	for <linux-phy@archiver.kernel.org>; Mon, 16 Mar 2026 07:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACu6O0PJxF2YCjoDvubBYFnLHlfmCC5mtdl10ulRx6Y=; b=MLkHJaGcIPckW0
	ggGLWB0pCPvImmea/S/7qRC1gM8Gh3QmU0k6Y77Ak6fvkwCw2VhWR8kQiWDLYafPHQrW8YYFT/eE9
	FVMn1peYPnrNWpycnwPSYcnCz4uwFb6auBc9EJu1Vk83KaLUq8DaST45W6ZTGXDRJukDNO28M7GKr
	gEUhaLnftcm+o9HsUsShQt7IG9O7o7kap39MQxpZTcAnQrMd5yRIhXN0IP00CU9EuVmd2hoCQeGUR
	qQ4arPWt8IXkV778Tv0grCvns619ffsCGXePSnxz24Sm16FXuNOoebHW1QSGUFr/pRwTBY1LIu943
	5N0PBaqro/ErA6P5ZXKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w22as-00000003Utg-10xa;
	Mon, 16 Mar 2026 07:42:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w22ap-00000003UtH-3Sxe
	for linux-phy@lists.infradead.org;
	Mon, 16 Mar 2026 07:42:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9896743D47;
	Mon, 16 Mar 2026 07:42:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6FCAC19421;
	Mon, 16 Mar 2026 07:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773646946;
	bh=hIUAKDh+REJ0MMUHOyhuYjsuX8c4XRSYMvOE9eLEEDE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h6bNMHPat9SO9xY6/+I/reiLeceXOiPu8gWq6ZE245Yn3McMB8r9KfytkN5gwoMow
	 ALpB5+OiLrSlGhk67s1gU1t38XbR3EvWAsdOOq7t8BRdmjKDbVhz45F2RVbnKHSj8n
	 NWoTFOcvQYq8y3A9BFKsYOo2Y6scQYiaDSXsSRSof+ZlTKAvsBrSoTyrntWhO1cOMO
	 YLunE7lrBAfX8ecEzMevpF9ePJaubsQ+BvyBeDq8wh5HCp9FxnI16+sn4U0MPpJCoL
	 eI6uHp1Ue7drsyhXzmB7pcg3Dg3ZlF9utm1UUWYfbC/GrBVVavCV+zTetcQxciw6VI
	 qRsF4atGhEoCg==
Date: Mon, 16 Mar 2026 08:42:23 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bryan O'Donoghue <bod@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
Message-ID: <20260316-delightful-cordial-jaybird-2d409e@quoll>
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_004227_890773_948D8B44 
X-CRM114-Status: GOOD (  16.54  )
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

On Sun, Mar 15, 2026 at 11:52:06PM +0000, Bryan O'Donoghue wrote:
> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> PHY devices.
> 
> The hardware can support both C-PHY and D-PHY modes. The CSIPHY devices
> have their own pinouts on the SoC as well as their own individual voltage
> rails.
> 
> The need to model voltage rails on a per-PHY basis leads us to define
> CSIPHY devices as individual nodes.
> 
> Two nice outcomes in terms of schema and DT arise from this change.
> 
> 1. The ability to define on a per-PHY basis voltage rails.
> 2. The ability to require those voltage.
> 
> We have had a complete bodge upstream for this where a single set of
> voltage rail for all CSIPHYs has been buried inside of CAMSS.
> 
> Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
> CAMSS parlance, the CSIPHY devices should be individually modelled.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 133 +++++++++++++++++++++
>  1 file changed, 133 insertions(+)
>

<form letter>
This is a friendly reminder during the review process.

It seems my or other reviewer's previous comments were not fully
addressed. Maybe the feedback got lost between the quotes, maybe you
just forgot to apply it. Please go back to the previous discussion and
either implement all requested changes or keep discussing them.

Thank you.
</form letter>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
