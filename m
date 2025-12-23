Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A5F6E6F086
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ca76jKzWTchNzFX8Tx4hxGgEsCSYg1l1Lcm0vBRptQs=; b=03oOX77weTZT2T
	41E7eVnTodzMSbx2Ch0DIg0edEucMVcivHa89pOSMJZ8+Obn25wFBeReUd/fBwUtOLv23LvoEYm2I
	wNoIhycKJtEhKyAj3b2d03JVu0jIb6MZTdk+iARSO+rfa7Yu4d4GWWFEW4ADsNx+5tcdK+m6jv3Q3
	3GY0p8VTtIOLt6fQULp5UVf6RxUyBNUAVAejFagfd86kYCumMk2BPH/gFwiLsum+Ll9CGSiEwp1yv
	1rzbTJR+X9I26Qz35GQvytD8Y2TJKHynzs1uumHaZGdBjq8eq1pZF9gQVpvU/x4KdfrA1e1mX9GQC
	AgRpvHDuCIUUlQeP3U5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6G2-0000000FpWx-2XG3;
	Tue, 23 Dec 2025 17:33:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6G0-0000000FpWr-3yQB
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:33:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E771E60123;
	Tue, 23 Dec 2025 17:33:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68B14C116B1;
	Tue, 23 Dec 2025 17:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511191;
	bh=omGwGLKu+amFxrkn8sr0EraNhTwGj2HokUaFJLyoq6U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BPGjmqooLPzq3mMFX9ehYZElO+y3l4zzEJcPdrG5c4wDwkCCfLIXcZXtp4ecJD+VJ
	 fwAkUTQdoN2cyf2yAudv+UsQ/0Pk7M7AaXM5Dz+AiZZ7l0kz0RlBPxkJpv2ykqQNes
	 DpKsRc6aVaV8HWkIZz3VN6u57TnGfqixb2Sei8GWvj0vbYWkFjTA+8LrJy8LFEwSUW
	 pEpY5NRlZCTOgWcKUfuEOo+od1+q2dYmew2iry2SWLSvMbDbLDDEMZqIuuHYxDdpma
	 +SpBgslVp7bXs041buXuoV7ObGY3Uuj1Kg/NeR+Jjbnk0R8X8335VzFUeoxLe566/D
	 wMJyNBgzaJbMQ==
From: Vinod Koul <vkoul@kernel.org>
To: lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org, 
 bhelgaas@google.com, krzk+dt@kernel.org, neil.armstrong@linaro.org, 
 abel.vesa@linaro.org, conor+dt@kernel.org, kishon@kernel.org, 
 andersson@kernel.org, konradybcio@kernel.org, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com, 
 quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
In-Reply-To: <20250529035635.4162149-1-quic_ziyuzhan@quicinc.com>
References: <20250529035635.4162149-1-quic_ziyuzhan@quicinc.com>
Subject: Re: (subset) [PATCH v6 0/6] pci: qcom: Add QCS8300 PCIe support
Message-Id: <176651118606.749296.7445159215784702009.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:03:06 +0530
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


On Thu, 29 May 2025 11:56:29 +0800, Ziyue Zhang wrote:
> This series depend on the sa8775p gcc_aux_clock and link_down reset change
> https://lore.kernel.org/all/20250529035416.4159963-1-quic_ziyuzhan@quicinc.com/
> 
> This series adds document, phy, configs support for PCIe in QCS8300.
> It also adds 'link_down' reset for sa8775p.
> 
> Have follwing changes:
> 	- Add dedicated schema for the PCIe controllers found on QCS8300.
> 	- Add compatible for qcs8300 platform.
> 	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
> 	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings for qcs8300
      commit: 393e132efcc5e3fc4ef2bd9bbed2a096096c9359

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
