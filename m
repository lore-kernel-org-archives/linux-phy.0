Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16E8CCA100D
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 00:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EjRW3dLJwS5NPf/ZDahpCO0/8oGxRGVq8QwpJa51BlE=; b=kXjG4v/3KXxioA
	6gWJGPSW/kvdS6p6zxRjlsOp+92dPYKKS7GwKLJAdqHKvA6ZCLZji0zLoqN+Eb2Ix+DpZePrJcDYM
	FASfOYOLmVu6I48XsxoL+Q6WrMJ0WyhQ6MgRnAmdlIolq/+TeFNF+rDFd2uEY1BMvdDhAcGj5JLre
	g34i/HZFf8BZ3Fkx4X4Jx40V3TOp0uNL+ricYmflQOj2V34rhoKoi3PIB5512vXa8r9nZzEX6kO/P
	Bn+IFYHhBcqZrWVVH4HefWrSTsv9r6yRriUxgDQTyxE1iNk6uQyR7/Rzf8QBDlVS0es3EJ2c8X1Vr
	r5vALZCAORY9Lq+jSMBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utFFy-0000000EY4D-3KPB;
	Tue, 02 Sep 2025 00:52:18 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utATt-0000000DfVv-1o6t
	for linux-phy@lists.infradead.org;
	Mon, 01 Sep 2025 19:46:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B09A54485E;
	Mon,  1 Sep 2025 19:46:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D9E3C4CEF0;
	Mon,  1 Sep 2025 19:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756755980;
	bh=NhV9B8K4cZUejZjeirB3GBztoD5Bg3AS6ut3OfnT9AU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=W5wZJk/wzC+HRZv29+XrUPvxvKisuswlqs+QR1ZxWu0+64+KeAC1NDg/fdKeCfUqN
	 qjOr+QIkUpNOF7aU3oCOaIHZpOtHwtd3UwWCdBDwyAICN2XZY1H38Ihqk93HLGc4Ao
	 cDq3na0OwyyQq7xQi2uLu3DoiA81jmP3x4sjGqOW+AHLPsf9QZxH2hKlgGqWhmtBDL
	 irE9U7+GbfbxX84+57i12kYQP54pKsVzCs1t9DILl/yoMSjbQRsXIGN8hbsKy4JzFH
	 0KzZ6FPAiwOIjcH6T6WStFQgwq0MvecB1nTyNyRLMTCf6QDGPTh0X5F4PCc8j9CPO8
	 aBcgV0E1cIW3Q==
From: Bjorn Andersson <andersson@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	quic_vbadigan@quicinc.com,
	quic_mrana@quicinc.com
Subject: Re: (subset) [PATCH v3 0/3] arm64: dts: qcom: Add PCIe Support for sm8750
Date: Mon,  1 Sep 2025 14:46:01 -0500
Message-ID: <175675595917.1796591.7933074887018259640.b4-ty@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_124621_485279_71C3094B 
X-CRM114-Status: UNSURE (   9.57  )
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


On Tue, 26 Aug 2025 16:32:52 +0530, Krishna Chaitanya Chundru wrote:
> Describe PCIe controller and PHY. Also add required system resources like
> regulators, clocks, interrupts and registers configuration for PCIe.
> 
> The qcom_pcie_parse_ports() function currently iterates over all available
> child nodes of the PCIe controller's device tree node. This includes
> unrelated nodes such as OPP (Operating Performance Points) nodes, which do
> not contain the expected 'reset' and 'phy' properties. As a result, parsing
> fails and the driver falls back to the legacy method of parsing the
> controller node directly. However, this fallback also fails when properties
> are shifted to the root port, leading to probe failure.
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and controller node
      commit: 19f1395333f80479a3a5fce29e4c7a8255322a9c

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
