Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C71BAC53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 14:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olNzHcL4BPdUHl0AyYVdCdv8Ju8hmzij7qmxLRuDR8I=; b=uXHy1DOpqiOuTN
	5nLALRU/S/jl9dRY/RIAj38ikzxwfhNy5FiZzIQWuB/0wDa24k1GzyRUdMq3neVARMLVjk8Uj0FJy
	Q8xrs24duIHCqQjItN8MQpDyGpJrMCF0mEK1/V8sA5N5TrEPWam+tobV9fNJCWjcMrphZ6QMy6CCG
	4dVP8whM12ukjplnPWAr2BfIVPpGlaOldMkqh6ag0W41RP+Q+h/FaEh6SyazMhdBDa4Q8K+GU0esy
	1hprxgrFkEuRsAYB4GUBbIERYjn8qYLj18oW+Vg31RWigo1sWua1EiwTalRAlc/xSPcHwNYILRe7B
	mjcbOer2YPpeQyU3BNbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woj35-00000005XSS-2Ib7;
	Tue, 28 Jul 2026 14:44:51 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woj34-00000005XSI-1R0H
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 14:44:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C1164600FC;
	Tue, 28 Jul 2026 14:44:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5551C1F000E9;
	Tue, 28 Jul 2026 14:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785249889;
	bh=Ce5ER9Xw9t9EopKeTVZ+aHMj4IN3bllc8/wVi2v+V1Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=KO/zvN8UK0A62WaFsM/6njVFWvccitglsZXd0JGCSV1o+hML8VEF9pO//K6+2ZJGE
	 r5nwFnWupDA6CnYuWetbTdv0yY4NYnWJKTJeLjwkyBrheXeqBuIj6W+OzQXG6i4vYD
	 QCHbVViFzpivK8p8jZ/PSB1pz0MSYZyN9qNzF454nKMhk9trIKvSMDFoeJPy4U2jDU
	 fixcLYrr828ipT6y49LGP93XUUL+wN07Kicnsu/d6y3g4ey0ViMUz7r/tMhNDmN6qz
	 llRI6Ivml/TyPJ9Mnd1IHNR4dtMtd0pyyIlBIS8l+Fwk4CSkdjxN8yLOjYFYqlDXoH
	 tbchRyzKWKwVw==
Date: Tue, 28 Jul 2026 09:44:48 -0500
From: Rob Herring <robh@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Bryan O'Donoghue <bod@kernel.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v13 4/5] dt-bindings: media: qcom,x1e80100-camss:
 Describe iommu entries
Message-ID: <20260728144448.GA2141274-robh@kernel.org>
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
 <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-4-ae811e2f0799@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-4-ae811e2f0799@linaro.org>
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

On Tue, Jul 28, 2026 at 10:35:35AM +0100, Bryan O'Donoghue wrote:
> The original iommus list included entries for ICP and BPS/IPE S1
> contexts. Only the five S1 HLOS stream IDs are required by the CAMSS
> ISP hardware: IFE/IFE_LITE read and write, SFE read and write, and
> CDM IFE. The remaining entries serve other hardware blocks which will
> be described in their own nodes as support is added.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

What happened to krzk's reviewed-by?

> ---
>  .../bindings/media/qcom,x1e80100-camss.yaml        | 26 ++++++++++++++++------
>  1 file changed, 19 insertions(+), 7 deletions(-)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
