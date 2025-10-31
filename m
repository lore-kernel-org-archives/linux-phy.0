Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2438CCCFA00
	for <linux-phy@archiver.kernel.org>; Fri, 31 Oct 2025 08:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTi9WCG1SksFKQHX8ATKqCqhRXBqBXFAg8LLbsf3120=; b=CA0Gyetr47jneW
	x1vEwABRyNfh68AhFUho7+EN0FBMWctYzODYkrO13egWSDZspacCwNY4BBe0doW5JsVpJZMjB8ovp
	WWuWVqAB4TuuyYlSAHpmsktT9pO6lql+pbGMz2rln8/6hTgAmTV08p4Ys+YecFjozosV8lerbCXC2
	/DWvvWAg3r2+XOG9IiAsGY6tkFsQVjiOkhLIuZqqTpU1rRlbOzlfCBxRS6pO0GgMWIuh8BVi7blQ5
	ABj1jPCc9Tz7x7N3QaXLOhQu7iEPZ1GVNPRT+E6m5WMy00HlCS06y0XmmVIjUpgnN4E5JjpH57/Su
	9Gzx/OHQhJLgMh6IVIGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEkNO-00000005dNQ-358D;
	Fri, 31 Oct 2025 08:20:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEkNN-00000005dN4-1y7y
	for linux-phy@lists.infradead.org;
	Fri, 31 Oct 2025 08:20:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 862B6601D8;
	Fri, 31 Oct 2025 08:20:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00A21C4CEE7;
	Fri, 31 Oct 2025 08:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761898848;
	bh=JxffaojoaNLBd6ekBMI0wGMUU29k4ICcZxn3vQPCuKo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=PjAfxm6teG9V4VjvlmxAHvsIsuw2dbgm9scYX0IerS8+rEKmlmAi1Qwt3b1LeI/DQ
	 ol+GkuvfmSLLZVbKwqONXxDy2b39rDww0dCiCA6lGFzhJXKPepSdCrxy0bpnPCvU7r
	 QVMwG9jT6jPdx+AGx9UlMaFEARI2gMEifjObDpi4Gcj5Blc4XD7aADbLU0aYXH8H6c
	 8RzgfRKJ9mPWwLYOvQY/u696zjA6Rhv3croHEP/BN6J9/zp6TNOxjN4Motye6UVAzq
	 IhLWlQ6Hc+UOv+N7P7OCm3FZZNuj6XejG9ELZ6QkS78eTc86Ar+iXAvKIIhhZYYt7U
	 Jqu7aQKVAjrjA==
From: Manivannan Sadhasivam <mani@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
 Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pci@vger.kernel.org, Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>, 
 Wenbin Yao <wenbin.yao@oss.qualcomm.com>, 
 Qiang Yu <quic_qianyu@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
References: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v5 0/6] PCI: qcom: Add support for Glymur PCIe
 Gen5 x4 and Gen4 x2
Message-Id: <176189884156.5303.14323602106505981794.b4-ty@kernel.org>
Date: Fri, 31 Oct 2025 13:50:41 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
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


On Fri, 17 Oct 2025 18:33:37 -0700, Qiang Yu wrote:
> Glymur is the next generation compute SoC of Qualcomm. This patch series
> aims to add support for the fourth, fifth and sixth PCIe instance on it.
> The fifth PCIe instance on Glymur has a Gen5 4-lane PHY and fourth, fifth
> and sixth PCIe instance have a Gen5 2-lane PHY.
> 
> The device tree changes and whatever driver patches that are not part of
> this patch series will be posted separately after official announcement of
> the SOC.
> 
> [...]

Applied, thanks!

[3/6] dt-bindings: PCI: qcom: Document the Glymur PCIe Controller
      commit: f0b5af98e1b5761095d5186d3a7af5a0991a5cd9

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
