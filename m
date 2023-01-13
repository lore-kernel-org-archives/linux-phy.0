Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96B35C54EBD
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 18:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+A3Z3RI2FmGmag17amUdkkq5z+MtHLW/aJJy7FhpHTw=; b=fO0diTY3DHTFDy
	uINMEcssAe4MKkS0/C/m4j7aIrnsNxf+/VPzfGVz6LC5cW7MG53Q+OYtkEIzQyfUFJOn5Ogy6m00K
	GBtRmUrhhOf15XR6Sdu+65LKhx+Om5zkINkT2xqAKTsRGk4Wv5co+0cvrlZU2+h98ys7tqyMrmPKO
	161QCDDpLxjKYRCx2uzDYLn/9Xjzvamd+b/AUz84bmUvLedsDHlm3MRNpVCUXhaOxxOa15ahZvk4X
	2PdHanJHGKvBJaIfVXvMiOz6EU5+HLnglAxOoAxGpQEa4Mr8e9cyy4TupcdAv+k7KiwGEhL5MO7yR
	t7/YFURzCK3gDMHshCwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOOP-003w0a-1e; Fri, 13 Jan 2023 18:03:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOOM-003vzt-E8
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 18:03:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C5D4E622DD;
	Fri, 13 Jan 2023 18:03:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93286C433F1;
	Fri, 13 Jan 2023 18:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673632981;
	bh=iMXmyKxoarMNpLOCbZlHN6jSA9kVf83vz0Mct3lw8Pc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OfdRY7+Pr0Q2nFWu+Wc9C9zJ1DTE2/sG+sMsWzUc/SFdzYqTzK4xPNHB4xCm7r59w
	 KQHZ973bgaKCseCBkJQA+CFDfDWA28ciBuEo3q8c24WcEttneh6jGUzhJJj4OhLHp4
	 g3GIm3Oc2t9NDNPlWDqe6vWJ6Z6TUcFaH7bYFwxQz66ef2OFYcpXLzCfxOlC5X1hU3
	 6AIJNQi6NXjYLHDPLYQmTeLp4dkQTQcOMnCyaMQlUie6eknO7ifqHQWQof3480999h
	 yXsxjCP9klhI2F8ixVXjMir1x033f0PDxnMylKTMMbvzgsxurVhHqKdF1BMzQjZcXO
	 FO8upucSVKg3A==
Date: Fri, 13 Jan 2023 23:30:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Peng Fan <peng.fan@oss.nxp.com>
Subject: Re: [PATCH] dt-bindings: phy: qcom,usb-hsic-phy: convert to DT schema
Message-ID: <Y8GcL+8yERnbhUm7@matsya>
References: <20221222155805.139284-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221222155805.139284-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_100302_527530_602A1E5D 
X-CRM114-Status: UNSURE (   6.45  )
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

On 22-12-22, 16:58, Krzysztof Kozlowski wrote:
> Convert Qualcomm USB HSIC PHY bindings to DT schema.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
