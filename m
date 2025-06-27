Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21FA7C7EE31
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 09:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBfCZk5ODU+niV7O5QLII2GCuAXoq2KcEYrTt/EEA/Y=; b=tOlnUt5sJfsyKQ
	VArnrP46EWlL6W17akSGrKE0KqgFZmF/bT2RT6R/VIkXKumAFstaBkEtsGNvI4eLVkz7nlIAJbV1b
	Mc0jWAiab5750nQSrRQ5ZLq8TX3eldTLc6c9nOZvNKRHh3wH9SWvzt7FKhcCeQhd4qrW+OldiVoe7
	ShYF8hsQDu40mW2l6sGobHAQPy9yQy+FtMLqWMAQ5go0QwirXY9rJZHGGL33Gb1hgu4EVTW109nE3
	pLBe/M0wAdXM+wRTOqr3Ubom54d4HtW5ZeyRNn7JoUTklPg+TyJPwBstyqH1bqgdcNGe4xDZ58fq+
	YBx/SH498AhuZeXofbGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV5Uz-0000000E8YL-3hAk;
	Fri, 27 Jun 2025 09:35:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV5Qo-0000000E7xf-0TPb
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 09:31:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8EEE461120;
	Fri, 27 Jun 2025 09:31:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38D03C4CEE3;
	Fri, 27 Jun 2025 09:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751016697;
	bh=VVXzjakLrbQT4ZfJ9FQFUeBjGu5c9RhpGPfJmxmATuo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h3QCbd3a3WNQO6uK0sf1DKlI8wHjWukKpFM/KjCKtA+rSTrUNhlikURX0cRcKGFka
	 DVAew2kURrmw64+U+ImSg1Jism4TRa/lRm1w/ax6ym4YoQk7WAcKZZeCgk3GA6b9yg
	 FQAogSMZPMWSsAHHg3X/B5h1Crf+Q1g6gRUP+tSvtA+pMzsD+kuilwxzzYKXIf3Sk0
	 jq+W2CecRi5eekzvv2aTVf6RVsrf6Qe9vDxshtrOqIs8OZlwo5uxZJYuDafFah0sBQ
	 iVdqrDmapGye4qXlYSW0sumwt8+CWiq80IDs7IXMHc50VynCUPpfvZ0SUa67ZvzJeY
	 78t0FRuqcZ2TA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uV5Qn-000000000FB-1fEb;
	Fri, 27 Jun 2025 11:31:37 +0200
Date: Fri, 27 Jun 2025 11:31:37 +0200
From: Johan Hovold <johan@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
	kw@linux.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com
Subject: Re: [PATCH v7 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for qcs8300
Message-ID: <aF5k-Scgk6KTI_uQ@hovoldconsulting.com>
References: <20250625092539.762075-1-quic_ziyuzhan@quicinc.com>
 <20250625092539.762075-2-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250625092539.762075-2-quic_ziyuzhan@quicinc.com>
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

On Wed, Jun 25, 2025 at 05:25:35PM +0800, Ziyue Zhang wrote:
> The gcc_aux_clk is not required by the PCIe PHY on qcs8300 and is not
> specified in the device tree node. Hence, move the qcs8300 phy
> compatibility entry into the list of PHYs that require six clocks.
> 
> As no compatible need the entry which require seven clocks, delete it.

Please add the missing Fixes tag.

> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> ---

This patch depends on

	https://lore.kernel.org/lkml/20250625090048.624399-2-quic_ziyuzhan@quicinc.com/

(which you point out in the cover letter), but you should be removing
the bogus 'phy_aux' clock when removing the last user and not before.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
