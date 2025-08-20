Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92220CA0EDC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 20:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIsgbZbn4JGX+s7H4LMQsN8TsfENKe2r5DAdpfO2NWI=; b=3shTde+orcY9De
	+2G/mhAnR5DXQZZElZpmtMjmLlR6e3vO65iv8z9KjPUj+XcnIje8TjE1Od7XiJGeAOE7HYIer3YxS
	OQ3TlP8ifb7WJ+jBPywd0s7inOWcn9u0CJtv25HXbyjBvUdJ1JNPZLFryT3jac87Ur09Ppt32U83i
	HM2JhCfdzk2ejrMwlXjotg6uRqLlPf8JOyXctZCxSOI1tQhu47Z0kNArzWyBCEQr8ytLa1zkMgmmQ
	tFxjHEyKKG/34lDfGPaQ7Qh71qrOo4hknBOWk2wcwJUnHwaf8vMvx0miEpXnrH2tM+Z2soOrRkbAO
	nnwOfflLNhWLuP+HKPpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uopmd-0000000EuoK-1Mhf;
	Wed, 20 Aug 2025 20:51:47 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uomCb-0000000ETD9-3MKh
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 17:02:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BC2CB45A62;
	Wed, 20 Aug 2025 17:02:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 784D1C4CEE7;
	Wed, 20 Aug 2025 17:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755709340;
	bh=tNTj9tNEMOWtDcM1RzN6AMMbLh3U5S0eKicHECZ6bHY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=vG5wBt6EGRHnth+pzXz7cuVql9/xvF5h6qKMLT0c39Yyss10licpn2FXtasr1r55w
	 nv39rhwK3Bg8R4YFYLUN42ZkBup894xfHZDUY0qNRIrlVhBoMkS9aZmRrkc8vjuIbr
	 KPC3jv5wh+WQpJsXLxIRXH67MDcqDX26vbb2bNxEbRyJDPtxHwafTRDpe+bhWvMZt6
	 LrG0xzZz93sFtkMQNzbeC/xWSUGXAWzzoXc+IYS16SCj0YCUP9SPqJNYWPoJEoz+m/
	 KO4tHwqw4eJcW+zuZiXIU8yRuScDw6av5MU4vJwJ/zwItT1lyIMXR1MA/st9nklMiF
	 QzwbMZtg2P+Gg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com, 
 quic_mrana@quicinc.com
In-Reply-To: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
References: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
Subject: Re: (subset) [PATCH 0/4] arm64: dts: qcom: Add PCIe Support for
 sm8750
Message-Id: <175570933399.66459.8492859060215712340.b4-ty@kernel.org>
Date: Wed, 20 Aug 2025 22:32:13 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_100221_868457_F654B362 
X-CRM114-Status: UNSURE (   4.85  )
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


On Sat, 09 Aug 2025 15:29:15 +0530, Krishna Chaitanya Chundru wrote:
> Describe PCIe controller and PHY. Also add required system resources like
> regulators, clocks, interrupts and registers configuration for PCIe.
> 
> 

Applied, thanks!

[1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the SM8750 QMP PCIe PHY Gen3 x2
      commit: edafd4f3fd52a614c5cee2684559367eac2286dc
[2/4] phy: qcom-qmp-pcie: add dual lane PHY support for SM8750
      commit: 0f051749c804b5a4f485013c0e3c932e1dd9f70b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
