Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12ED4E77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 15:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bR6e5vi4loy2bU7F4+8fljkeE6NMWxkWNd4VIKHESas=; b=qtT37N+zEZxBS9
	63jCaYVEe3QKLLI39+yweH14ZrWyau0OutF5J8fzgMLEQm+nBnx9AQsuvQYNnUJghsz2QFJWwqqIL
	B0DjaLkhIgi7Q4PgEwGK9jB51UMayJU8/ypPPvd43vWz/KpnxSQp77s/87ZRWWzYapKBmYXte0bAH
	oQXDo2AInukLDLl44/tyJFbOr+dUt7hFIC9o56E3kQPoK5vuy0RvouMkXeG7d/j6x5HEz+SGa9O0Z
	e2TH9Q/CuxhsbNF2ec2PJVY/b7aG7Wxk+ccmc+R5bjzXDh/p3Ee6xlb9Vw1XeqajBxMlKvSip/P1o
	LSNFLeoPhWNbDLLzMZjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6mq-0000000CD39-35ID;
	Tue, 24 Dec 2024 15:25:32 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6mo-0000000CD2A-0VBB
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 15:25:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 578DFA4158D;
	Tue, 24 Dec 2024 15:23:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72DF7C4CEDC;
	Tue, 24 Dec 2024 15:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735053929;
	bh=P75T60ObovkCRBQsZ7WvanBGGd4jp9pTkykBw9rzs/E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=gzd2AjG48t36e4QBIUVCQZMoszxAQMsjXRRKkTbgEtjDw9qX+uMPAh0i0yTXpZbkD
	 rYS+ukGirvETZuVZK4g/7tL0N1XEJm/As3+cJPcCe0dORR5frS3fWCJJSJorLxfokz
	 rqD7M2MEl8lGGwE1Txie0f0IoIt3kx9jENlrDGXzD0HMQEeflt/BIkMbYcf7jAyNvL
	 joREUhbdOJAh0ZK2pw9bec/xOpC5M8SJ7nbHKGzUQRXaldJS8rv+sGzpFxMwWVp+6q
	 eyCMQqYY6bk8X6TjocmQZuusSgbqlMXcfAA+HEWE7eoZ05RRUEB3OAS0VGM4psjA+t
	 nHyzRGc/Axu7A==
From: Vinod Koul <vkoul@kernel.org>
To: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
 manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, kishon@kernel.org, andersson@kernel.org, 
 konradybcio@kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
In-Reply-To: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
References: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
Subject: Re: (subset) [PATCH 0/4] Add PCIe support for IPQ5424
Message-Id: <173505392409.950293.14320055264182377571.b4-ty@kernel.org>
Date: Tue, 24 Dec 2024 20:55:24 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_072530_229385_A86B9093 
X-CRM114-Status: UNSURE (   5.65  )
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


On Fri, 13 Dec 2024 19:19:46 +0530, Manikanta Mylavarapu wrote:
> This series adds support for enabling the PCIe host devices (PCIe0,
> PCIe1, PCIe2, PCIe3) found on IPQ5424 platform. The PCIe0 & PCIe1
> are 1-lane Gen3 host and PCIe2 & PCIe3 are 2-lane Gen3 host.
> 
> Depends On:
> https://lore.kernel.org/linux-arm-msm/20241205064037.1960323-1-quic_mmanikan@quicinc.com/
> https://lore.kernel.org/linux-arm-msm/20241213105808.674620-1-quic_varada@quicinc.com/
> 
> [...]

Applied, thanks!

[2/4] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document the IPQ5424 QMP PCIe PHYs
      commit: 879ae4f226d82a2f0e452f14542efdbccf249286

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
