Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11E34C4167B
	for <linux-phy@archiver.kernel.org>; Fri, 30 Dec 2022 14:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0smf/XAUIdLdaXrDWWU5+/XoT+kJzlUca5T/8SBZuyQ=; b=2xxE15Z2+lM3z8
	3XfsOF5nhqEP+2Rphf6brpeKYvEqR5Y3Q/Cm8eGtnpo3GqHJ72YGIhe1JTpOme3qWQndaPyxWnKrW
	z2IbgZzOfNVvP52EUONQN7Pg35hJ00DDhf/POJqJSpIE4hTmNTItBpnO4sJfLzGsgYxfVToXGAJNz
	7fXmulDXruT7ldBCynin05una5kF2oDiNFlJZn9ZF7+SgBJHXtVkhwmgAXLQ7Q58/mWoFJttzVqhD
	WurWrQ24ardeCk8mj8PUkpBIkm5o4Zib18dz3iST9wyhOSwLFVBXW7es5FQN+LnmOGi3HvgAkebJx
	813mY6ecVFAXhuk7Z+zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBG2Q-009mf9-6U; Fri, 30 Dec 2022 14:07:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBFX7-009Zmc-6E
	for linux-phy@lists.infradead.org; Fri, 30 Dec 2022 13:34:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3080D608CD;
	Fri, 30 Dec 2022 13:34:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3229C433EF;
	Fri, 30 Dec 2022 13:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672407287;
	bh=yrf2Y3khUKxgM7o3Wxz+A9SrdKCJD/kM3XHdczUHHOo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bstHmpurRjvPkBxZV4rUmq4T5nmLlDq0Lwm5RwqpyYJMS6Eyj1gdwvjxn1vQzMqf7
	 gfDcD8fYulm9R92JEn0YGYbQ4NEbIOAfPc3jno2y+p7ScnF0MqwG7kOUVG8rWCkvhN
	 WJ0YF7aDcCmnmabzQZFdvU1dnQbBdkq2ojpQRakIMAMkPAxXyZSTepP6pGVeNkjtPJ
	 IsMBlv9qfd+6CLascwe2rfzpcFprPlL1U77q6hK7p+1jnett0w03WIMZaMZbyjA8R5
	 1QUhz78+6wiWpKP7SUubltEnM//9YbaJkYrK11kNkpY/ReAQ8o/U7YHJyu2C+J35+X
	 5aV48SEu6fJ4w==
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-phy@lists.infradead.org,
	Philipp Zabel <p.zabel@pengutronix.de>,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: Re: (subset) [PATCH v4 0/8] PCI/phy: Add support for PCI on sm8350 platform
Date: Fri, 30 Dec 2022 14:34:38 +0100
Message-Id: <167240726511.753517.16556407698236838050.b4-ty@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
References: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221230_053451_752663_985EB0F7 
X-CRM114-Status: UNSURE (   9.16  )
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

On Sat, 19 Nov 2022 01:32:34 +0200, Dmitry Baryshkov wrote:
> SM8350 is one of the recent Qualcomm platforms which lacks PCIe support.
> Use sm8450 PHY tables to add support for the PCIe hosts on Qualcomm SM8350 platform.
> 
> Note: the PCIe0 table is based on the lahaina-v2.1.dtsi file, so it
> might work incorrectly on earlier SoC revisions.
> 
> Dependencies:
> - phy/next (for PHY patches only)
> 
> [...]

Applied to pci/qcom, thanks!

[1/8] dt-bindings: PCI: qcom: Add sm8350 to bindings
      https://git.kernel.org/lpieralisi/pci/c/781d814cc348

Thanks,
Lorenzo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
