Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43C89D232FF
	for <linux-phy@archiver.kernel.org>; Sat, 10 Jan 2026 19:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQ+Ah1tHCwJthysbpMckpgtsCQWq8vzEO4fiAKtpwvg=; b=NZOAIBTeKxQhUG
	7QqA/tgAY0jhrxC8N0JQyhU21QpoiX13gptK3g/jw6aek6nZ4SJ8a8ZMuo/0Vb1c4SzjgctiKDLNE
	kyGVPaXnXzfjXwiAPD6HEEnFnUAPiqBI9U4jueWa3QE2qCtSl6XIQft6pRsGFQKYRVTkA/UPzzMHs
	BN5euAvQDJGb4Ar3bWZtUGfRWbXpbJdkbTrP5pmsmLbntUrcAM/SERvlZMW3pCG89VEkTnHeBJO/v
	J0cEP5zI2V9WmumihcHBnqSnPgqkSCGVI799EM2luXtsXB4DasRQVXykwuBc7WfEXtZdKcu5PrFo4
	TPJKkktiepQ9Sb56mTmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veeNG-00000003cOk-04w6;
	Sat, 10 Jan 2026 19:11:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veeNF-00000003cOU-19li
	for linux-phy@lists.infradead.org;
	Sat, 10 Jan 2026 19:11:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B75856016A;
	Sat, 10 Jan 2026 19:11:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFCA2C16AAE;
	Sat, 10 Jan 2026 19:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768072304;
	bh=ORk9zLyAqSVC4BjhBEwJU6A588Pq49HoT3tn4kCPsqM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=I1yv9Q0carRpGXDNN3gPGL/6wihqvcW/sidEG5pRQs+jlCNEUCOuPzP2vgKorGJz4
	 d9Fc0p5AGNOMIlD7YUmJVUI41zZ1o851XH4EeLuWu26VLB3ymmMCta/JvouLRSw8Ch
	 y3D54RMdtuOxrT/9r1CZfeQqCf1PsRy2HrfSaqb9nBAhRk2rcpD1x9Tnzf2QK7KSUK
	 FcgpNxwmMCKtNGQ5UcsbwPvi+Lj/oXR+VPyX322kBo43h9o/+D0mQIO1YLooTbe9V9
	 IiVrmKyeQmRN5aIuuGmH+nJPSii4TYweja+Fg1uDJyfPwnBc859maMxp1TiuHU8Nr5
	 0B1yUCS8X3/og==
From: Bjorn Andersson <andersson@kernel.org>
To: konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jingoohan1@gmail.com,
	mani@kernel.org,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	bhelgaas@google.com,
	johan+linaro@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	neil.armstrong@linaro.org,
	Abel Vesa <abelvesa@kernel.org>,
	Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com,
	Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: Re: [PATCH v4 0/3] Add PCIe3 and PCIe5 support for HAMOA-IOT-EVK board
Date: Sat, 10 Jan 2026 13:11:27 -0600
Message-ID: <176807228439.3708332.9264264204240911796.b4-ty@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260109104504.3147745-1-ziyue.zhang@oss.qualcomm.com>
References: <20260109104504.3147745-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
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


On Fri, 09 Jan 2026 18:45:01 +0800, Ziyue Zhang wrote:
> From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> 
> This patch series adds support for PCIe3 and PCIe5 on the HAMOA-IOT-EVK
> board.
> 
> PCIe3 is a Gen4 x8 slot intended for sata controller.
> PCIe5 is a Gen3 x2 slot designed for external modem connectivity.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: qcom: hamoa: Move PHY, PERST, and Wake GPIOs to PCIe port nodes and add port Nodes for all PCIe ports
      commit: 960609b22be58baa16823103894de3c6858e6cf4
[2/3] arm64: dts: qcom: Add PCIe3 and PCIe5 support for HAMOA-IOT-SOM platform
      commit: a395b859ecacedc6ff28e6b62e43a7cd1abc34ee
[3/3] arm64: dts: qcom: Add PCIe3 and PCIe5 regulators for HAMAO-IOT-EVK board
      commit: ac62730dbc71e4e2320b368e86e0c6ea3e41f1f5

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
