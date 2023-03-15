Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFFC3C76195
	for <linux-phy@archiver.kernel.org>; Wed, 15 Mar 2023 23:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgtJPJEroYqeJgvphWw2RY+b2lD9wj1nGRR9d5sjp98=; b=GfpGghoQq2Lyg5
	NENbLfmZVL50VKPcD8S4uHeBGE1QYHjHRBm//w/eu2MD4ES0QMMZOH1NZzv8HTRXye/SeaZhlvOvd
	3k9/LFhE2eKgRiEUTiSLMaS1tk6/4F9gpfwSljHqCvLYl2PusHooFLXkoMZiThK1TOT6wEVoMHLez
	8R5hUsqYKLHcYxbFtEVLGchKiOcGKIwWGRlBAUyMjbZa8X7M6HdebI0zPrAOrJfQjTj0TKCcUDgb8
	/iyPqBa1TULEUR5Hi9FPWABaEVFPwTrXOcYslHBoUVDSXCogOgdWD52/6JaWibCiG2i33/C1VIk8J
	0ONocmYrUB3tWBpkUNEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcabO-00EiVf-0n;
	Wed, 15 Mar 2023 23:32:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcabL-00EiUu-1I
	for linux-phy@lists.infradead.org;
	Wed, 15 Mar 2023 23:32:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BEFD161EAB;
	Wed, 15 Mar 2023 23:32:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08614C433A7;
	Wed, 15 Mar 2023 23:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678923130;
	bh=YEs24c3iU6V6MLaAcnGzPLr4tf4jXosEk7JpNXjlX5U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pkGZU8jeu21PBJ4+Xa6YUetYikfEGNrjoZWkbLgXU5CYoOay+6JhtlV8sYkDKZ4Xm
	 PYk5C65chIMNzoC3t+wpi/ilMgC48NqTBobRIxchC0WNpcY0VurjHZYN8wD32bE+US
	 8z1nAqBjd6MTr7wOPaYjp43iesMvT/GBydc84nzDNMVtEO6eABiK8V5cJMvv9n1yeV
	 GRzY2jbEke3gQZCZel946VdAcV8YYShGAvpqn9Y2c5AdGntTMeiQvh5MjWYxoFbAOF
	 pzmZ7sSjSu8kojq89A+uDcS9XQVPmZJ8hizUHOpa3ayeo88+ZcYZ0CPQuyS1UUAAJh
	 QQkoVCoArS1Qw==
From: Bjorn Andersson <andersson@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	vkoul@kernel.org,
	Rob Herring <robh@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Andy Gross <agross@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: (subset) [PATCH v9 00/11] sm8550: Add PCIe HC and PHY support
Date: Wed, 15 Mar 2023 16:34:39 -0700
Message-Id: <167892332564.4030021.6913004577416128878.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230208180020.2761766-1-abel.vesa@linaro.org>
References: <20230208180020.2761766-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_163211_478688_FB1CE32F 
X-CRM114-Status: UNSURE (   9.56  )
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

On Wed, 8 Feb 2023 20:00:09 +0200, Abel Vesa wrote:
> For changelogs please look at each patch individually.
> 
> Abel Vesa (11):
>   dt-bindings: phy: Add QMP PCIe PHY comptible for SM8550
>   phy: qcom-qmp: pcs: Add v6 register offsets
>   phy: qcom-qmp: pcs: Add v6.20 register offsets
>   phy: qcom-qmp: pcs-pcie: Add v6 register offsets
>   phy: qcom-qmp: pcs-pcie: Add v6.20 register offsets
>   phy: qcom-qmp: qserdes-txrx: Add v6.20 register offsets
>   phy: qcom-qmp: qserdes-lane-shared: Add v6 register offsets
>   phy: qcom-qmp-pcie: Add support for SM8550 g3x2 and g4x2 PCIEs
>   dt-bindings: PCI: qcom: Add SM8550 compatible
>   PCI: qcom: Add SM8550 PCIe support
>   arm64: dts: qcom: sm8550: Fix PCIe PHYs and controllers nodes
> 
> [...]

Applied, thanks!

[11/11] arm64: dts: qcom: sm8550: Fix PCIe PHYs and controllers nodes
        commit: 32734bbd1802efbd60ea4f0c3c1d5500bd0b20fe

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
