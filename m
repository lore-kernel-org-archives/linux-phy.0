Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D0B2C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 13:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DpWp0FyHpk9coewFwItDAa1XzKkaIALDLo4mIZAdxps=; b=kCwnTrfGLTLUa6
	2DX0a+Jv05c72n3Hmn3wNu/vZSBxZWFagy82i0lTWV+LCc3deJguir+AdqH6rit6b5NiqGq0mmy/m
	UKvXY0qy5UFySgTI6SIz7X6I/Y30fxori9V/tBMA5UgGBiwUSJHKjWdJierq4cdRcQvSzlarfXcmw
	nQP6+0GK19VHVtV3bB/PWN1dnjWkWa4qt6Y2sgukkAaCOU0hBD6mMaqzxCXorRDU5ZubG/DeMqLSt
	AjbsupeY4j708yH/8lC774+jBpj8+CrGZiv8C2qTdvsRCMnzfXp4GtK9vkQ5DP4FEJPrfuTaCKCbz
	QYt8+H821jXWG5G7HG1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otU28-00FtSA-L9; Fri, 11 Nov 2022 13:25:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otU25-00FtRA-Ug
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 13:25:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 952C261FB9;
	Fri, 11 Nov 2022 13:25:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2E68C433D6;
	Fri, 11 Nov 2022 13:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668173120;
	bh=JDnKZnPRFmzbZ0lpblhuGLALZBaT+iTrH+vhkxNzNWU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cKi5TGDoA5I580Ru9rfiNwIkbrfqG/d+kuYbLlKkB0C3wGK9wzo3Xsl1I1wAaj06c
	 0hMXTHdLHdh0+rWNG9FWp/b3bJs8xDKtRDFmj1GSXOJnQUxuIyKXCemk/xgE5eoE+k
	 sexiCSu56uOqsm+Z2mm79iJoKp9QjeJiVHXShC2iJLmTkp4wNonCle9uMGJHl/Ff5j
	 TNm4YQxQlP0WLx94M09TzNKtlfJqLsRrZurpZCW+mCpsYKa9KJ1l4LRqevTNRmV1UZ
	 M6V0Rfhd3cH62rig6zxbaYw5CM56THmsKYhM0px6vpj4UiSu3hO2Tjq0WhRmxEg1dV
	 0wQLk6Cd/3pNg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1otU1b-0002RN-DU; Fri, 11 Nov 2022 14:24:52 +0100
Date: Fri, 11 Nov 2022 14:24:51 +0100
From: Johan Hovold <johan@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp
 bindings
Message-ID: <Y25NI2nsE6L5kCsy@hovoldconsulting.com>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-3-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221111092457.10546-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_052522_065168_E40B6344 
X-CRM114-Status: GOOD (  11.82  )
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

On Fri, Nov 11, 2022 at 10:24:45AM +0100, Johan Hovold wrote:

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -0,0 +1,111 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm QMP USB4-USB3-DP PHY controller (SC8280XP)
> +
> +maintainers:
> +  - Vinod Koul <vkoul@kernel.org>
> +
> +description:
> +  The QMP PHY controller supports physical layer functionality for a number of
> +  controllers on Qualcomm chipsets, such as, PCIe, UFS and USB.
> +
> +  See also:
> +    - include/dt-bindings/dt-bindings/phy/phy.h

This trips up the binding checker which I failed to rerun after adding
this reference.

Apparently I missed adding a literal block marker '|' to the
description. Will add in v2.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
