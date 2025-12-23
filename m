Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9BD0E6FE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lafX/+cUK5v9ufJxqFedf4yKovVhK0yFuxERb6lIn80=; b=gqTn1JsmpXhij0
	tzojFQtC/LyG2G/1w5na8UUTnBp97l4YB4NyHCZEU6dfb7NOn8t4I7D5ba21/tiE2IPEqBW33GUqD
	tgPX/aDqEv3WIbI72BFgJ4h/ygPYainAZFd3Qo/ILe6pnY60LIT5FzQlpjKlai5Hpx+G4e+gzx5JN
	JYkKUarBmOO6pPd05OhoMI9Hvzh2Kukigot6GwbG6UquVwBY7ZIlQF7NHLh0AA4X3qXqj609nMrfv
	ZkBH23OnfL6OafSLsRv1PAFmAgAqyMmO9DzGYjTR+aKh3m6XeBzqnwYs59I4rCa3kEQ+3PZgK/NhP
	aglXHDNs+ZFC9OenxlUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6GQ-0000000Fpaz-2ekr;
	Tue, 23 Dec 2025 17:33:38 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6GQ-0000000Fpas-0lN2
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:33:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9C45D60139;
	Tue, 23 Dec 2025 17:33:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C058C113D0;
	Tue, 23 Dec 2025 17:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511217;
	bh=ieK5MZIYeyBFJTCcyavFLmcVUp3IkB50W7p/l4Ss9SA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=n786vXVLo4nQS0cugl5a3rh1q3ZJkV1eSofkv4/iod8CfGY7zpOYygy2Kjqmt77Fp
	 10gAUzhHRkZI+eEBVWxYBk6wf+hHGm8izm10o+NOTj/xFSKKVcE9SHk4zICzpiVru+
	 Fyj12q0gOU/uXhIkUSvAKZQ4ANyBvT3D2OyBKdxyJt8bmzLRnB/Hyut2CCzcC1DXY8
	 mf4Ej6X3iCWcriszVm23sC1/U+83J4cM2x/Ta/z3whZd5cc8beqHjwJSJCYQzg1bp+
	 BWoXP/GJ98B55Djj63RYFRCGG3hD2bdkkrWSS4fljxSR5pjXnYTfFZsyF1zIbLJcYt
	 L9bxa5bQ2dY7w==
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
In-Reply-To: <20250826091205.3625138-1-ziyue.zhang@oss.qualcomm.com>
References: <20250826091205.3625138-1-ziyue.zhang@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v11 0/5] pci: qcom: Add QCS8300 PCIe support
Message-Id: <176651121108.749296.10189735833836078202.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:03:31 +0530
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


On Tue, 26 Aug 2025 17:12:00 +0800, Ziyue Zhang wrote:
> This series depend on this patch
> https://lore.kernel.org/all/20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com/
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
