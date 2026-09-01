Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0C49C61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 08:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+G18XRM72KvL5U6UvFi2s20Xyes8e7UMKkjCiE8Nceg=; b=Jm1fZh04FSInta
	DNopYy4dj7llEiWY7WGPyWucnOGVtFR4Iawwx3m/DKy6l999ezWjNGKi/NzRFXM1rWyh5dA137xnQ
	26nuQiHSDL6RVwbul/op1wcoT2GqfjNv+KAy1WOi4G/h/yNpWTWDH0FNCjv7ipSTgpwj7xAV2Grlb
	QV+b60WrCR6WDboB9/sB0zw5Iu5ScajvBz6Jw9Vo3pKov0a69GY86jyqHb8c1TOWcTz9v/6Fpvz6k
	wfYWK+WaVSMSSV6wUxGiJVsAiTICtWJTq+LDdmIA9mPrInZRKnC1vmtxRkDthGaN+fdxYav+hfDId
	TdyJHTFMYji9vzXyblDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1K4S-0000000BJil-2Vxk;
	Tue, 01 Sep 2026 08:42:20 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1K4R-0000000BJif-1c9K
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 08:42:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4BD3F601DB;
	Tue,  1 Sep 2026 08:42:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B8B41F000E9;
	Tue,  1 Sep 2026 08:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788252138;
	bh=R7W+a2UbB22q8xIFgqQ71VC8d3erwcb0D9ctEbZEfvI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=o3fC9SEb1fgtnpV8N6JwNhkg505uC9y5v+JTfWLjYtch0TFlv/6D1sbp/5jujKDWv
	 b9PerdM0AV9IdN/aX4l+gj7XO8aAi+teDUY3Jk2vw2X3Lh8w/qeOpn5FmXmsYSgali
	 EIHkROwuCmpyrXnrMnOWt3//4U7RgzaHtDj6Q/HxHC8iwTJAlUfCO6qKfYVs5chr/6
	 K/Qe0fkZQq3UfI1iyPar111jKsEh0go7c2COtcIlhFSGF8olqon+Z9EDj1LF19qtlv
	 rXZiQBt8TlQa9drttHDSSaQVLBe1LBFNUJqL/QK1veEPIpdmaqDXt2/nNhgbNiBlII
	 uqkfU41pHlEUw==
Date: Tue, 1 Sep 2026 10:42:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Bartosz Golaszewski <brgl@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v2 2/5] dt-bindings: PCI: qcom,shikra-pcie: Document the
 Shikra PCIe Controller
Message-ID: <20260901-silent-pearl-shrew-c63a16@quoll>
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
 <20260831-shikra-upstream-v2-2-406661d75afa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260831-shikra-upstream-v2-2-406661d75afa@oss.qualcomm.com>
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

On Mon, Aug 31, 2026 at 12:56:02PM +0530, Sushrut Shree Trivedi wrote:
> Add a dedicated schema for the PCIe controller found on the Shikra
> platform.
> 
> Shikra controller supports upto PCIe Gen3 but the PHY is
> only capable of Gen2, hence the max link speed  is limited
> to Gen2 to avoid link-up failures.
> 
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/pci/qcom,shikra-pcie.yaml  | 218 +++++++++++++++++++++
>  1 file changed, 218 insertions(+)
> 

What is the difference in the binding against Eliza? IOW, why does this
need a separate file unlike Eliza?

...

> +            reset-names = "pci";
> +
> +            power-domains = <&gcc GCC_PCIE_GDSC>;
> +
> +            max-link-speed = <2>;
> +
> +            operating-points-v2 = <&pcie_opp_table>;
> +
> +            pcie_opp_table: opp-table {
> +                    compatible = "operating-points-v2";

Are you sure dt-check-style does not complain?

> +
> +                    /* GEN 1 x1 */
> +                    opp-2500000 {
> +                            opp-hz = /bits/ 64 <2500000>;
> +                            required-opps = <&rpmpd_opp_low_svs>;
> +                            opp-peak-kBps = <250000 1>;
> +                            opp-level = <1>;
> +                    };
> +

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
