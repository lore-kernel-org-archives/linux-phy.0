Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC2F3C369A9
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 12:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D89V5cq+E9wnXPJa3+QDOHnrHihlNeVnZYNunee6+KQ=; b=TmPr0sKyy89klC
	aHnT0knnDSm5tqncjkKjHxxCRlhdCexOGUPPO6w55eX1cYyFcrKT+KytTNLiuDfqFOZX7igWUOsxJ
	Cc7Kg59AqJ2eeDIp7Hk9osWwfWbxxmSneqWljom94czf28FmO4IzOX5s0sOSPQYXraHk8NIGAXbgy
	qkDcnHDAdxixk4Eaa1CuToreKGJPOSwzguFQXTJh6w3dvndfAdqap8FHFCyIVMm821lOQb2O4d9Ap
	5TNiz5+GUH9as2pvQoG0xHD0gj3ige0NhcME5J0Zc5AXYoI+QndhHhO3HTTP7h+Nl6sGmq06y68x8
	Us3bMRMcYu0okzOnc4RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DO4-0000000DihY-28bT;
	Fri, 11 Apr 2025 12:21:36 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DE4-0000000Dggv-1z7X
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 12:11:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3CC3CA4AADF;
	Fri, 11 Apr 2025 12:05:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E48BC4CEE2;
	Fri, 11 Apr 2025 12:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744373475;
	bh=kbUcZPoXi79WtS45+fL3/oWI2wWgCZEwrEDv3Xo/gxY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=oXfReTdO98Js7+lVoMrKowkY/dHKuDTcIXRPKrWKJk5X7+RY5+egJLrKqFXdsYjEC
	 5wLKayQ1r3Tgymu3bg2fgBKj+3MbAanhYpUzqS3NE+uAs8XITlEqaTdh6svcJc68Mn
	 c3M/HAtl2EbjFc7+khBRMqryHMHJzNv5s4oAJdwvpSglnEjlQtOhUIRv6Tj8AXLoC1
	 IQV+9SQstnRyR+LX+GVypm2DDXIkhOeefXaTRdElniPQFX1u9NzQvR9F+7++Tes60S
	 vme+tAt7hKQiBD13P/PmV5PFVVCSgX487Ob9P2+rH02DvZS8hRw4kzKCRsZjC5cSlE
	 sLUxz2hT515OA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Praveenkumar I <quic_ipkumar@quicinc.com>, 
 George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pci@vger.kernel.org, 20250317100029.881286-1-quic_varada@quicinc.com, 
 20250317100029.881286-2-quic_varada@quicinc.com, 
 Sricharan Ramabadhran <quic_srichara@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250326-ipq5018-pcie-v7-0-e1828fef06c9@outlook.com>
References: <20250326-ipq5018-pcie-v7-0-e1828fef06c9@outlook.com>
Subject: Re: (subset) [PATCH v7 0/6] Enable IPQ5018 PCI support
Message-Id: <174437346895.673939.17282327012259130391.b4-ty@kernel.org>
Date: Fri, 11 Apr 2025 17:41:08 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_051116_588919_0B4FC1B1 
X-CRM114-Status: UNSURE (   8.15  )
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


On Wed, 26 Mar 2025 12:10:54 +0400, George Moussalem wrote:
> This patch series adds the relevant phy and controller
> DT configurations for enabling PCI gen2 support
> on IPQ5018. IPQ5018 has two phys and two controllers,
> one dual-lane and one single-lane.
> 
> Last patch series (v3) submitted dates back to August 30, 2024.
> As I've worked to add IPQ5018 platform support in OpenWrt, I'm
> continuing the efforts to add Linux kernel support.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: phy: qcom: uniphy-pcie: Add ipq5018 compatible
      commit: aae29082b6620c664e97a1e2f2062abc6a58659d
[2/6] phy: qualcomm: qcom-uniphy-pcie 28LP add support for IPQ5018
      commit: dfc820d2f8a8ea90bbc02269b5362e3678e58cac

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
