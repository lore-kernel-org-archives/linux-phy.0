Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86C92CD11C2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Apr 2024 16:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAcS8R/r26dBeZp69BSSHYuMcqo2DTz56CqvqZ0NCYc=; b=F2t31ILP2BVGLl
	iAv5/1t5tUKgD0SOPlo6E4vtQ0Bc1MICBX9N+ZrimKR2TPEG1+V5l7hCtpVHjsijPSruZZldFoYM0
	M8BbP/D7wVSPkGSr8c7pSUEkJGNg0UewOCBM6ie3AxOi2SVjOTtl97DokipryBCkIJRzAolY6TSAV
	w9zSsYCZ47jiHQRnrmxDdSPceg2Nv8wKQvDqJUgu0rxQvdhFB8FSthMZQMNyuh5BvcSgx/7T87fgN
	ZYL5VxkqvNzyGgh0UnfBigpmWgIA8SoQs7E1dIB88PudrzFX7TuF8GS1mw+2bi9lr755IT9e2kpcO
	JH3nn1PVyeXT5n0gWhEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rub03-0000000840t-0uts;
	Wed, 10 Apr 2024 16:40:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rub00-000000083zg-03HZ;
	Wed, 10 Apr 2024 16:40:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 42AB461DF5;
	Wed, 10 Apr 2024 16:40:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93E0BC433C7;
	Wed, 10 Apr 2024 16:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712767234;
	bh=u1Ays1TopEnoD9JREpSfKXueGaUE5K8KcfqquzYAtJg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b66/qBbxu/dr947rCndHmvWVYRa08F8cj79FfO72nwFUdFfAnKaaMj8GqcbqyJv73
	 rubAPjTQIN8vsU161XsstzGHwbZy2oE6rgcSagCd33cGBv7t7ft67tcYTlkeLPrQ+1
	 GkClpJXEVQYRdhkllx7TNTDk5b7ITusnBshANlkreJRLX9cFAw+7m0CN0Cj2Xrx9t0
	 AC2591PmVXuHzepZoBxM+SlXK4UR6tbCsZoSypQxlShMKr8zQsmqvu8NZe49oNXEmy
	 KZUCARzhbNxBHvzOQQ3YPuSrL6RP0RlsSOoaOPA2twzdOa4V5syJGBnd/DEyTxTc2U
	 pHwb967VSawTg==
Date: Wed, 10 Apr 2024 11:40:32 -0500
From: Rob Herring <robh@kernel.org>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: avri.altman@wdc.com, linux-phy@lists.infradead.org, vkoul@kernel.org,
	martin.petersen@oracle.com, alim.akhtar@samsung.com,
	devicetree@vger.kernel.org, willmcvicker@google.com,
	linux-scsi@vger.kernel.org, mturquette@baylibre.com,
	conor+dt@kernel.org, ebiggers@kernel.org, kishon@kernel.org,
	sboyd@kernel.org, krzk+dt@kernel.org, jejb@linux.ibm.com,
	linux-arm-kernel@lists.infradead.org, saravanak@google.com,
	andre.draszik@linaro.org, linux-clk@vger.kernel.org,
	bvanassche@acm.org, linux-samsung-soc@vger.kernel.org,
	chanho61.park@samsung.com, s.nawrocki@samsung.com,
	linux-kernel@vger.kernel.org, cw00.choi@samsung.com,
	tudor.ambarus@linaro.org
Subject: Re: [PATCH 02/17] dt-bindings: soc: google: exynos-sysreg: add
 dedicated hsi2 sysreg compatible
Message-ID: <171276723023.413753.7709849085293151317.robh@kernel.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-3-peter.griffin@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240404122559.898930-3-peter.griffin@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_094036_117577_DFC1CAB5 
X-CRM114-Status: UNSURE (   6.92  )
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


On Thu, 04 Apr 2024 13:25:44 +0100, Peter Griffin wrote:
> Update dt schema to include the gs101 hsi2 sysreg compatible.
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  .../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml  | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
