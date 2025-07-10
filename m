Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46AECC83F1B
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 17:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/ak0PBMOU6Tyi/qGZ+v1PCm/87VxIiSkDlRSnx9mME=; b=Xi5BKHLjowpL3K
	O4bjs0ZPXsm4ciFr1wY2yl2v0Do7mvGPYiAuP0Jfbvy0k0RJCrljwmNCYVDF/i54ZfhOlEhQbisPw
	AccaPnE5EyzMvm+oleoRPXBSHXQG0tAHb6ebpzUEKyFsCKS2JVdD3nz0i/zMFAEwFbBEA9EGqW9i8
	VIkuLKMrHswpPTya4xdLhEWTccPUyxwZwrBNkR8ZSKXq9SepOxRgfnaFKwpHGFeJ+Cb1ix1p7mQYp
	ku2ZfBrpq2Bv29SqVi+fEAy1su0bo+3HSvxlENbiC3Z0GZVJK4hP3YXNqXhzb0zyoNUsJMJodHc9Y
	XVSD2vgAFC0tn05hhS9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZv54-0000000CaJ3-09gG;
	Thu, 10 Jul 2025 17:29:10 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZsKs-0000000C7sO-059E
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 14:33:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 17AC761165;
	Thu, 10 Jul 2025 14:33:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2253C4CEE3;
	Thu, 10 Jul 2025 14:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752157996;
	bh=ELRQc3uwkKFItDCmx75wbbSO3KRM0Y8LMvnQDThCfK4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QRzvPLgFU0NXysFH/E2aHj3HTfCCb9P3xZP0sfcx7EPgn4Hz/B0eeFZ7jn6JcmDBq
	 5GglNdwLqZ4k6kP0dYlj0gjMzW/Za6DQF2S6o9fwIs1XlSiz+i+yzYsZ7rdVXsbPv8
	 CV+TjSLUy3IO459fh5QL3FYqG4DQ6RfjROMk5l0f6+OHKVPRpmQs57uNHdnwUkj8MY
	 4UlIcr9oGr4fBazdJcKl3JAswwk7x5uvrWu1PVFjoxYr1IVqK5cfuiADBoJb+KS0RW
	 Jcrj6NkF0ULgxCjKHsN5xn+SEyAey/cPDI85pFBcTAAqwkd6FHQZHDhcyVEEQlCcEW
	 Id3IwzxsJf5ew==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uZsKj-000000005IY-1wLn;
	Thu, 10 Jul 2025 16:33:10 +0200
Date: Thu, 10 Jul 2025 16:33:09 +0200
From: Johan Hovold <johan@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
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
Subject: Re: [PATCH v8 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for QCS615
Message-ID: <aG_PJbA4t0wgz9b2@hovoldconsulting.com>
References: <20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com>
 <20250703095630.669044-2-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250703095630.669044-2-ziyue.zhang@oss.qualcomm.com>
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

On Thu, Jul 03, 2025 at 02:56:28AM -0700, Ziyue Zhang wrote:
> QCS615 pcie phy only use 5 clocks, which are aux, cfg_ahb, ref,
> ref_gen, pipe. So move "qcom,qcs615-qmp-gen3x1-pcie-phy" compatible
> from 6 clocks' list to 5 clocks' list.
> 
> Fixes: 1e889f2bd837 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS615 QMP PCIe PHY Gen3 x1")
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
