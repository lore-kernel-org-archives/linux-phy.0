Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 728B4CD98CF
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 15:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0WTm3sHaYQrI3BX6bA/P+cPeb7sjW7HT1lxTPRkPAUQ=; b=2Bpbt0vjp7jHjD
	smcj+mHLnNWm0exql7SH0PLVHv57Gd8Re25636MG1Tl4Ta79cvPInLITXDUrCyAV0glaR46mOZW5w
	80SQe4r55rLV/qZeQ4Q6oU6fIOmLswa04aQXmnzjOwtMYjWtJZnjvaSQ0R2kinCNhqvdqT9Z9BbMs
	mixAjtqzhAEE/JNIHiaBsISwECXA+u0JoHu03FriaVxQxkUnZZ0+cddYtWUoS3pVp43YmgUSuT+iR
	InAnzmscb7vn0KCLP3+W0Mf6eG/Zl4C3liibIep1B+LusZGTx8sn5ceDN5qTv2Giq7PKqe8l+b1Qe
	4ejPllAt3mKJ2sjl+f1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRR-00000009go1-0soW;
	Thu, 11 Jun 2026 15:35:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRQ-00000009gnl-0g0x
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 15:35:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DD55D434EA;
	Thu, 11 Jun 2026 15:35:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 467581F00898;
	Thu, 11 Jun 2026 15:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781192135;
	bh=I62zj/Kf4qrTCMvbQoqRJsH+BpahIV8oulgl8OBO758=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=bv3TVgC1qk799oUukoKuZY2CdmmArJztjSxjhjxsvSLWIOW83ED/vFIhEkam6eM4r
	 RftEtBqSi2IoF3YtlDS69/4rgiyyd3bfnbq0EQvfTro0fs5oD/dwD0mYXCc0LZSsus
	 WZ/ttTjlcbyPmHrep9qES6NX4p4wX8kEP5eyJjYY3F2Y1pT4B4ecBTyrGHzhMBBxZC
	 BMhAZx2LSwgW0OwhJCc5qwW30MHBrS0CyjHc9Ht7KqZ9WALHujciknSk+DJJ0XtZ+D
	 lk7qJ6VCK2gcn8baeSj+N/iBRL6a6kJ+dfPCU+DyGNZtTJWtPXvUUnqBBvZJ445tCT
	 1QGxtBSt7L88g==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pci@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20260608-eliza-v3-0-9bdeb7434b28@oss.qualcomm.com>
References: <20260608-eliza-v3-0-9bdeb7434b28@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v3 0/3] PCI: qcom: Add support for Eliza
Message-Id: <178119213090.568088.15191205165596196411.b4-ty@kernel.org>
Date: Thu, 11 Jun 2026 21:05:30 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Mon, 08 Jun 2026 14:18:12 +0530, Krishna Chaitanya Chundru wrote:
> This series adds PCIe support for the Qualcomm Eliza SoC. Eliza includes
> two PCIe root complex controllers capable of 8GT/s x1 and 8GT/s x2.
> 
> The QMP PCIe PHY support adds a new Gen3x1 PHY configuration with
> Eliza-specific initialization tables, and reuses the existing SM8550
> Gen3x2 configuration for the x2 PHY instance.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: sc8280xp-qmp-pcie: Document Eliza PCIe phy
      commit: afdf104ec11681aacba0865863647f725f47ab90
[3/3] phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Eliza
      commit: fdd2913a4e505716dce5c9f89c268628d9a019d5

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
