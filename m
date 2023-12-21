Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1393AC35274
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 17:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6W2dB0ZGM0ba7oNdIq9g/K3RtUETJZfpQ0MkPFaKeg=; b=cBmKS4BPOfbHPx
	8tglaP4tT0UkOzwEukLINiKS/f/VL6k4qVgRrOBelzjGN/riLPzVmC9o3m+fom1R4FQQg6AguhkdB
	NFHdQRwTt7hmvG+19GKzDfFp1ReJDkxjX2wmgayGwtmGPZdLDrIrPIFgYSdWGi8jDqm/Ierm3CW1s
	lba1gKwe7r55FhUXoME8yaOZamzxrHx18fHGrJ/85t32vMi4HE68q2hmWXmDfmQYakS8+de59bHBV
	8SWt6nd2X1FcNNM98cLq8eUeoiYya2Jo9WM8VnXDI9TQWFea+swLMZFV9s9hcCH5cI+1X7B5aaOv1
	wcn46QIPB5JI6xL6vizQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMeg-003bhZ-2b;
	Thu, 21 Dec 2023 17:16:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMeS-003bd8-19;
	Thu, 21 Dec 2023 17:16:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B8F4461A11;
	Thu, 21 Dec 2023 17:16:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A9BCC433C8;
	Thu, 21 Dec 2023 17:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703178963;
	bh=ddkCtqedJXUfrPiPFVW9vL0khrWJ0HeXZyzlFi+7ZN0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=XllADW8fzqgI6ZGH4zVju2IL8ZRfeJQIDo7nwhIGPXo5s7p7HBGyUtX9nYCc1qUdh
	 ETZuKyc9WwEEf5ZDax/GJ5iQrwJCLnHZpjkyDrsMDjTpcPf7aMtwwz+L8fe2kfKnnO
	 jiuPzMYidXNe6vU1pS00Khwr8ffSccCnlQgMjvTFZ0eZi438AcS+B2PzXPSx9birN0
	 FvwDAUI0cLzcfEXKuGFqLdTDkHEvtpcXmN5ZC77EKrK87clIVfvsjzwIX6wYbksbD6
	 9yuABNt3RX3FjRiVjSAVzKJ5ESnBhXF4daUM6bEfWQQH8nIgE3ikiGZx6f6bF//cGp
	 gyZHPHz2qln0Q==
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Macpaul Lin <macpaul.lin@mediatek.com>
In-Reply-To: <20231211025624.28991-1-chunfeng.yun@mediatek.com>
References: <20231211025624.28991-1-chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: mediatek: tphy: add a
 property for force-mode switch
Message-Id: <170317895962.712473.102387666807925662.b4-ty@kernel.org>
Date: Thu, 21 Dec 2023 22:45:59 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_091604_435961_057A7DEC 
X-CRM114-Status: UNSURE (   8.64  )
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


On Mon, 11 Dec 2023 10:56:23 +0800, Chunfeng Yun wrote:
> Due to some old SoCs with shared t-phy between usb3 and pcie only support
> force-mode switch, and shared and non-shared t-phy may exist at the same
> time on a SoC, can't use compatible to distinguish between shared and
> non-shared t-phy, add a property to supported it.
> Currently, only support switch from default pcie mode to usb3 mode.
> But now prefer to use "mediatek,syscon-type" on new SoC as far as possible.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: mediatek: tphy: add a property for force-mode switch
      commit: cc230a4cd8e91f64c90b5494dfd76848197418ed
[2/2] phy: mediatek: tphy: add support force phy mode switch
      commit: 9b27303003f5af0d378f29ccccea57c7d65cc642

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
