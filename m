Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C635BC27C4F
	for <linux-phy@archiver.kernel.org>; Fri, 21 Jun 2024 06:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7mUEiDQJqq0fDN893D7nYcubL+8FLamKqOFv7ksk+J0=; b=GSEHnxPG31850W
	vPe2XnxKnq+rfnboRP4HpiwjuY5abIDt5fXJBTgAs++qe+yclKpdxA2/OQ35fpWG+iEc+OAWhoH11
	0KzzD+axaAcLxs5NDCaNswwPKqVlbvPsABEP9SYVYqvpZX86aI4wxtGBqGFYCEUfQq2m8Q46ODr4k
	c9NPpwmC50IbVl+tjDI3u8x0+kUZv8WFER4ATvbx/hiAcQGr7AgslfqifbWx0kZ3ct4OG1m24REsQ
	564t9m1irxZRPnNAnVbppo6Q1rly/Vw3/4wvLqRGeVOUpcRB+L/aIRZV1OeB5/mZYTh5eTDJQGw+Q
	+f6zSj078VNhBLAljjKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKXUq-00000007suV-0a0o;
	Fri, 21 Jun 2024 06:11:40 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKXUn-00000007stp-2tlv
	for linux-phy@lists.infradead.org;
	Fri, 21 Jun 2024 06:11:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9B12ECE2B58;
	Fri, 21 Jun 2024 06:11:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EEA9C4AF0D;
	Fri, 21 Jun 2024 06:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718950295;
	bh=Cml5C1S7f6/nQZnMLFyS7sOsEvX7W1GC/inrEntxftQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ElspQL0HG1gJGt8TlT9MmebLwlvvghO6OPwtni6rb3gMRDBwH3Nw1VQNVC+Hf1hsC
	 BntmUg6aEu7d18DMYTZKAd8F1Ov9zvbGjPEbaSOGbiKR/MHwCUr6Fui+lJrQlH609v
	 IlLicgp+HdAxA0OgzzyHnLvaB+5se294E23r7rP8EzX6FAoZxUdbGJ7v6lZgxanqCP
	 EvYNgZKgKCjV85N4ELzg6U/BS40uirFDpDeslu5hawYBoNcNiCIde8Pqr6pSSCuMA4
	 DzRCiYcyn4gJm9OpgWg5cte4pH+opQV85JEcoYrHs0IvJ0LjuYAqMuaxj98ymgV7mU
	 e9w0CbOa9qe2A==
From: Bjorn Andersson <andersson@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/5] phy: qcom: qmp-pcie: drop second clock-output-names entry
Date: Fri, 21 Jun 2024 01:11:17 -0500
Message-ID: <171895028797.12506.8337547267879269845.b4-ty@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
References: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_231137_945546_D3B0DEB9 
X-CRM114-Status: GOOD (  10.69  )
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


On Fri, 14 Jun 2024 13:18:23 +0300, Dmitry Baryshkov wrote:
> While testing the linux-next on SM8450-HDK I noticed that one of the
> PCIe hosts stays in the deferred state, because the corresponding PHY
> isn't probed. A quick debug pointed out that while the patches that
> added support for the PIPE AUX clock to the PHY driver have landed,
> corresponding DT changes were not picked up for 6.10. Restore the
> compatibility with the existing DT files by dropping the second entry in
> the clock-output-names array and always generating the corresponding
> name on the fly.
> 
> [...]

Applied, thanks!

[3/5] arm64: dts: qcom: sm8450: drop second clock name from clock-output-names
      commit: 831f66d3423c22457ec1d686e565e152b10fbd91
[4/5] arm64: dts: qcom: sm8550: drop second clock name from clock-output-names
      commit: 84ea430eb0719ebe4c423bdc9c92e0f94a46a47e
[5/5] arm64: dts: qcom: sm8650: drop second clock name from clock-output-names
      commit: dc323623c3b87c48c99fe8dbbd1962f0129d3da9

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
