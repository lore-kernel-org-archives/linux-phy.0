Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81038FC5906
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 07:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cyEYS7GsUOlZHQOVcfWXmpDTU68CPO/yXa++PmdzAuc=; b=u3kaT5Jo+hZc7r
	guzOGLTqiZOSnlBqQqF9Bpe3uvn9H4TeSWO2a9KIhSwO0hYzCAtqVRkGIh2d75GkcpQkKVMLesSeH
	2Hir7I/MXAm4Lk1YW7WLrN7yaA25HB8TvR5amyZg8PBxQciXg0iQI+iqfLFdcu6UW6UYF+fr7v+Dv
	wZ9Xg3JpynhQUIyhRazqfitx5Qw7QkdIFhAsOXwXcHYNVB+6vtCmp2PdST3TnddK9dLhcKNYmtLCo
	1UiVvmeYxZFsf1Z6FodZ7iZPyQglKs0BVlN4TgLDyBYl1rRDICRJKnJ2eV760CtabrMD29epTWih0
	gMEa+f+XL4TYRKW/O5mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvVw7-00000005aN0-0SE3;
	Thu, 26 Feb 2026 07:37:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvVw4-00000005aMu-3x8b
	for linux-phy@lists.infradead.org;
	Thu, 26 Feb 2026 07:37:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0527D60054;
	Thu, 26 Feb 2026 07:37:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 257A7C19422;
	Thu, 26 Feb 2026 07:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772091443;
	bh=H/aL3sXj9Y0p9O6xgoUv9PCYkdU+dBRZTIFX6KiQBtA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vMXm4rFS2SmBCVooAjw2ilkamKIEtSNNI3taOlPyPecAUjNIr5uf7EVqQaxg8emI6
	 rALMvOBJTqL18fsmX6ZXu+XKIfXyBpHRSUIdAXtKu1xYEmISn5D1sI1aKl9ll97f2C
	 QIrj9+dSExNONoOtByXkDtcggQn/3LNvICunPVOyR1X5IGUCUGKEVLVGv+It5b2Bps
	 hCqGvBDCngyIexX/GYUIv1T37betyBmNvWc7ytaUkyeiPbYctit4ixa/gZnVcvCmB+
	 ljf1KyNOuN8tv0eI0VsjLd0shIo/SmjBKfb5g0Bs41sAhmx+JgjBiCMPTmBYAotg5r
	 /f5Sx/NEktp+Q==
Date: Thu, 26 Feb 2026 08:37:21 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bryan O'Donoghue <bod@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
Message-ID: <20260226-carmine-cockle-of-prosperity-b6baf2@quoll>
References: <20260225-x1e-csi2-phy-v2-0-7756edb67ea9@linaro.org>
 <20260225-x1e-csi2-phy-v2-1-7756edb67ea9@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260225-x1e-csi2-phy-v2-1-7756edb67ea9@linaro.org>
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

On Wed, Feb 25, 2026 at 02:59:12PM +0000, Bryan O'Donoghue wrote:
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

The entire point of separate CSI PHY was to change new devices. That's
why I was postponing TWO new bindings. There is little point in change
existing bindings, it's just a lot of work with little benefit.

And the beauty is that you did not even had to do the work yourself,
because the contributors of new device would need to come with CSI PHY
split.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
