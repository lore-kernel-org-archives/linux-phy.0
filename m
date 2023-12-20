Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18E13C3DA6E
	for <linux-phy@archiver.kernel.org>; Wed, 20 Dec 2023 22:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jte7ril6ZWNTAENFn0NRgkf5ikzApl93a1tjpv5uRQI=; b=es2FjMLaKUiIkF
	xPUNXOwQsrAWFELCrVZELAZJplHGI6jRxkMs3yXAlP8miVTUe6YCyMse1hZMweciIr1dXMkU9UclV
	Qc3n+lXKOIxONy20GJcF+Gfjk7Sc2qSWnSrFKPXNFH3wwWK0p7tJj/3tlBT4HwChfdhnxrz5qOI03
	6eBirLFD/3KMyQZZ3A9qwBOg6eXpMW9rq2FedLIRnvs6wEpIsSrD2xKyc+fn8kFOR0kn4tcSJzRvS
	YQ58+0OH1mMcYAQwr7fH0QYTUwFSybELvq7X9G4pZJUXrQLf/m1LmTR4oWrIscRDJ57CY3s18jvMX
	D6fOk9sTpwySsIH1HVSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rG51j-0014IR-2P;
	Wed, 20 Dec 2023 22:26:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rG51f-0014HN-1T
	for linux-phy@lists.infradead.org;
	Wed, 20 Dec 2023 22:26:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D90A86178D;
	Wed, 20 Dec 2023 22:26:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37457C433C9;
	Wed, 20 Dec 2023 22:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703111209;
	bh=WJnGAatmmvwEdsZ5rkU/K/qmztZ8dETfW4vPPQhhOL0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YyYP3uKgfarfuxHl4WY/auy0gcdSKPENg20U93VA1LLzJs5fQZbw7E9Wd9HEsZCBw
	 IvW7LNs0skIwNQPaqlK0VABLLtm0ONLkJ9cqYJ7a64IGtIBRS3Nforh+/z91hRsUcS
	 ITzgAKJNKFdDdSdfTHUTBPWiS3yRW0LgfpeC/ATDWFIdX+YrADB1C6sLXrO1zKOGSl
	 Jg/CHYsYhGAE//8824MkITnj/YlrdWji+ZP7zwxPb/m8SU37UaaOiGm3apK8LgcK8Y
	 BJp4IWj4tfhyPK9M8v31+vMPb6eHlnKlzUi4SsST+PeXP2RkoHrZvu4xa4cq+flcsV
	 z8c3x1HVL9lyg==
Received: (nullmailer pid 1237303 invoked by uid 1000);
	Wed, 20 Dec 2023 22:26:47 -0000
Date: Wed, 20 Dec 2023 16:26:47 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, stable@vger.kernel.org, devicetree@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, linux-phy@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: fix
 path to header
Message-ID: <170311120672.1237253.11755935355302522816.robh@kernel.org>
References: <20231218130553.45893-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231218130553.45893-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_142651_557154_A64DB4CB 
X-CRM114-Status: UNSURE (   8.81  )
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


On Mon, 18 Dec 2023 14:05:53 +0100, Krzysztof Kozlowski wrote:
> Fix the path to bindings header in description.
> 
> Fixes: e1c4c5436b4a ("dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp binding")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml           | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
