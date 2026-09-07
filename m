Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B782C79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 08:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i6DguSNNT2Q9CKSvLTSsLWFV7qrf20LfO1dbnMYpB34=; b=LHHouvb7ogJwzB
	mUzhh3kJfWxTxmRNjqLWzYspfl6fu/MnBIcJQVD+FTnpnmtfNAeSmIJvK7ASceaU2u3MuQYrL469l
	/hOy41SijNGHnj2xduYZPUpiafRKMFC7N9VHo+UBJAuTrR4L9pnUwCfn16R0IG0yi7k5k5pNuaOO6
	qF/8sf+04CcSqiAXTPJ2MEZ5i9in1o9fXam+xWyszQl1kHYsRJcRokhYUyMIb9MckvFGinictGb2M
	68poaNrCP2vpsRXhkDGo6eiyxpQlKU8qDoOtxzRRs322znjdXY1qj6mo+Fm9a+g8MJg167iIJrE4U
	X6eiOy5ZW0s1NaxPq+ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3UtN-00000006IEq-2mcX;
	Mon, 07 Sep 2026 08:39:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3UtN-00000006IEj-0RwN
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 08:39:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 53E3D60052;
	Mon,  7 Sep 2026 08:39:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40D501F00A3A;
	Mon,  7 Sep 2026 08:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788770392;
	bh=fGHehMKmF4vNAA+hz7aiKGQEL9DitcSlByhH2VpikK4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fpMfsl+fbf8jPSU5uRwCmr4e5mkw9aTiSY0tjtX184de8qnIL/+dxxf8u6jODlHLD
	 eGsFCS2dmv8egxxCthJ7cgrXydv05gr3wFY1+AVhFnmVwrXAWMxBgLJEy7/Za7ezjP
	 wkDz57LWE5Nwd6fZQzrFUavNIr181G/PHOj3SBQpNfptmxJAhlsyauzYANDs+xjGoP
	 6j/lsm09OQoc7jjBIs0ewHQTXxWwdEwV97n8JJxch/dvCVJyK3eZ1CebVI3tu8x+bi
	 zaVmSb1XIJ9ukVqjAkzQ/T1q9CR1Bt/f8tvJw6Om5BQBzOvONvtNa7FMRgoUeB9dw1
	 nB1/tSljxWQpQ==
Date: Mon, 7 Sep 2026 10:39:48 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mattijs Korpershoek <mkorpershoek@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: Add sa8255p USB PHY
Message-ID: <20260907-neat-sandy-silkworm-839edc@quoll>
References: <20260903-phy-qcom-qmp-usb-8255-v5-0-e251e22b341e@kernel.org>
 <20260903-phy-qcom-qmp-usb-8255-v5-1-e251e22b341e@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260903-phy-qcom-qmp-usb-8255-v5-1-e251e22b341e@kernel.org>
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

On Thu, Sep 03, 2026 at 09:44:47AM +0200, Mattijs Korpershoek wrote:
> SA8255p platform abstracts resources such as resets, clocks and
> regulators in firmware. The SCMI firmware exposes multiple protocols to
> control such resources which are identified by protocol_id.
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
> 
> Add a new binding for the for the Qualcomm QMP Super Speed (SS) UNI PHY
> found in SA8255P.
> 
> Note: the performance domain (0x13) exposes opaques values (0xa to 0x11)
> for which we don't have any information. Since it is not mandatory
> for the PHY to be functional, we have ommited it from the bindings.
> We can document it (and make them part of the dt ABI) once we have more
> information.
> 
> Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
> ---
>  .../phy/qcom,sa8255p-qmp-usb3-uni-phy.yaml         | 52 ++++++++++++++++++++++
>  1 file changed, 52 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
