Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BCBAE6F086
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pACLa7s5Fm7izlMiSjzxuuqqq3iG/oTQdk9K9iLER54=; b=BUT1k+jzRwiqN7
	V8Kv42vyhF/KiefZZoOr5No512VQm4gjM/fjRM0ukEfn9RWyZ0APf1yeaCKMNrKO6Z6AvgQou1c8e
	13uV8j34QFRmEGVMqiLTIbyFnlPGePTKaLmN0NWhUbsWkoRQ4+dgExJMaxGDPhFqLscXc3LrG8nZq
	dQSwXIlJAVEbgQ97b3XK9zFK4/vky/FXOuxIxsrxevdbRyls5kxt9QlmL270y3R09n2V0MQgCIf95
	qVRugKe+1Xp/1DP0Z8TwMYPsZRcu+AoJU0pu40Z+q3VF479XB3dx9E0Yu9dWm3ap9WurN9ia9Sgz7
	VwWWr0fznoPeXuQ8JX9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6GM-0000000Fpa9-1XST;
	Tue, 23 Dec 2025 17:33:34 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6GJ-0000000FpZg-2xjZ
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:33:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0366E40315;
	Tue, 23 Dec 2025 17:33:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECBBFC116B1;
	Tue, 23 Dec 2025 17:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511210;
	bh=+vbWQLsDktrRDTVqLO3sO5wLflVRrRgUbqvl2EXZW9M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ZVYOQT0/QzrtL6tc5EE+Qo5Y8Tb4h4+XpaKtCSpx0q8VdecHGvK2QJ3k0zwUDfUt6
	 fWW11xVq/93oAdBlxTmirSFCKR9Hk3iJcAbEydYg3tmugLiKpcVeINHifo+v44yPwd
	 Iv5pfIyRUUe3g1PWKnRL+fq1HRqPoLKCl3VT6e9UJ/udQYSUfyLsBMuLIKzkwr9D/6
	 lfkcpUmloprXCxQl0CzynKAZQpShm+hp/EpmM/jwseuyoiQcZaGLB0ZX1pooNrmoxX
	 ZdrCGgNK04LOoCKswgRF+J+qsC20RH5G+SxJHRRUS6LNLvD+N0DIgdiyIuyryB799q
	 cer0dkymE4fEg==
From: Vinod Koul <vkoul@kernel.org>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, 
 mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org, 
 bhelgaas@google.com, johan+linaro@kernel.org, kishon@kernel.org, 
 neil.armstrong@linaro.org, abel.vesa@linaro.org, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
 linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
 quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, 
 Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com>
References: <20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v10 0/5] pci: qcom: Add QCS8300 PCIe support
Message-Id: <176651120460.749296.6051122462631271364.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:03:24 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_093331_775493_FDE8FDC2 
X-CRM114-Status: UNSURE (   8.74  )
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


On Mon, 11 Aug 2025 15:11:26 +0800, Ziyue Zhang wrote:
> This series depend on the sa8775p gcc_aux_clock and link_down reset change
> https://lore.kernel.org/all/20250725102231.3608298-2-ziyue.zhang@oss.qualcomm.com/
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

[1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings for qcs8300
      commit: 393e132efcc5e3fc4ef2bd9bbed2a096096c9359

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
