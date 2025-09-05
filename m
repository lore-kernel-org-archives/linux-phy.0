Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA731CA1013
	for <linux-phy@archiver.kernel.org>; Fri,  5 Sep 2025 09:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qdb9W540Nxq70bk7SQF/YkxfcrBKodg2ltV96L78LfY=; b=iEeJu7CQM6/ZB4
	qN59IKg1vbxNfltFo9wnWPKRnd7NCJPSNZ1r1k9WCQYD8hGtVxkRPXe2YOhxYa/JdMI/GEnFc7gHU
	YIXYfTlpaGuU9a3VeYVK6FLBAUed6SCYc07aTGKWQprvTSUGvnPVNgcx55CYHuZuX0pPZmu9QGaJ3
	fJdsTDEaDBj49jzMXuGKKDg+NrveM37D+ljPQ8MYtxbno9tKk4dVB9XFbsg8YJzsaFpDCbgWhE3hl
	tEHEMbby8GDgCX6xWkNg9pfTV7ur5DLlYiLKbHv2kNFyJ/kG2gh+wTnr52bgSiH95JwQwB/lKZvf4
	NFaNiy/mo4WPLUJAYeEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuT9D-00000000sAm-2Ht4;
	Fri, 05 Sep 2025 09:54:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuRil-00000000KVB-1Sfc
	for linux-phy@lists.infradead.org;
	Fri, 05 Sep 2025 08:23:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 46F7444867;
	Fri,  5 Sep 2025 08:22:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ED6BC4CEF1;
	Fri,  5 Sep 2025 08:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757060578;
	bh=ey/kShOzSS9LzBy1SpXYUKciwMlZQTcbrdVlmd2wvSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cdc9x6qRbgLD9mazhdyUs0XSsipHnza/HDk+e4+gfJ8l9fuJ3IrqGn3G4Jknqxnjp
	 3/9SF5mYZsqHWzI79YA+W73qmJoq3ARERv4W+dGDDpOKeru+IsgM85LCq3c3JiAd/k
	 njZXAR8Z4oTBvHZRrPDhEv+pu1z8K5xRmGTu/UiAlmo63O49nO4B25meUnWobCmHoS
	 a2zIVZWcNG9D7xCgE5JfFt0cIJbxlUzIWsk76lT1wRAY/C01hbxUDdqQUd/7wX4iUU
	 g6eWobUD57QzAwK+809jNntxFvFQbn82CO5O7VWXCUf1r22O5vY6cF72Sn7ixEYrhF
	 g129HfS+cZfPw==
Date: Fri, 5 Sep 2025 10:22:55 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: Add DP PHY compatible for Glymur
Message-ID: <20250905-clay-falcon-of-anger-de5b5a@kuoka>
References: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
 <20250904-phy-qcom-edp-add-glymur-support-v1-1-e83c6b9a145b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250904-phy-qcom-edp-add-glymur-support-v1-1-e83c6b9a145b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_012259_404881_D89F2754 
X-CRM114-Status: GOOD (  12.90  )
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

On Thu, Sep 04, 2025 at 09:55:51AM +0300, Abel Vesa wrote:
> Document the compatible for the Glymur platform.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index a8ba0aa9ff9d83f317bd897a7d564f7e13f6a1e2..e572f6ea3523a483f701aedab383a63af7abe0e5 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -24,6 +24,7 @@ properties:
>            - qcom,sc8280xp-dp-phy
>            - qcom,sc8280xp-edp-phy
>            - qcom,x1e80100-dp-phy
> +          - qcom,glymur-dp-phy

Please keep alphabetical order. We never add things to the end of lists.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
