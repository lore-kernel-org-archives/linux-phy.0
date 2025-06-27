Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72F8FC7EE31
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 09:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NU6HzU+ATw0TdhLmEFkNPF7Sfze8tMstzfoUy2H7QZc=; b=hVh8nd+5cKR05b
	D/pCekQzO6mtxjk2mv3w/C3+3L5VgWMZFHTYrpexiNXG0OzJom7zLmJstccLk7OVs/1yyesmvQcPl
	AdGyP8R3tSGyt5X6WxH/r2QVXc7dzYgCM6V68qTvCtZiyDF5x56pykWuP8lRHn635cmPgQxG264ll
	MUDJfqerHvwjBKdGTj4lg0MzjILyhEVYAAqWRqyDQHxALz5V2/prh1Mm80f3liS3jsgbbPEmJcQYo
	4RuImgEk8QuyNDdZc0PNFKRkIzEqcvfDvG0fkahA0/WmznlA1vgaxqOUDV3jhRodNNXHdqdT4HGqo
	neN5zT/d1UM91HNJeb2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV5KV-0000000E6tp-0HA9;
	Fri, 27 Jun 2025 09:25:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV5Hb-0000000E6Ln-2Wpp
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 09:22:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A4A0E6144D;
	Fri, 27 Jun 2025 09:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E3DFC4CEE3;
	Fri, 27 Jun 2025 09:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751016126;
	bh=jXlUBtQxNPY7aDzqT/HV/kMRIlUMwqKNVFnyvRbDjUw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rpiuU1J9yMRi4Nb1Kcuc9LKsPyXFGvOyTuuQB/PwOqyjT+qIe8TfOWZnb3xJeec0m
	 htOAPBEN26PFmq2jdFo9DOzjhmK9Tw7fmvIIt6d6fGHrlL5kyo2/AD3A/lma5VwxZB
	 TjFMF5QE2X41WznQXJCp3/eJuaiaZ8y0sHx1uiVH8wfIhoMihENWjCeA2xfmGYgGYT
	 YWGd55dcIcVxZUCk+SorR3lvZHNI7WCFWl/wguIawmdkrrmQcEHr8vu3NRFg+kmtqJ
	 LB8cPxtg99Jpdh1zU2VNu0JBzmDGO3D357Ycf2zfW13OtMpLVMPOHj/8eWbmsYoBgY
	 NsrCMOae6I1UA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uV5Ha-0000000005k-1QUt;
	Fri, 27 Jun 2025 11:22:06 +0200
Date: Fri, 27 Jun 2025 11:22:06 +0200
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
Subject: Re: [PATCH v6 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for QCS615
Message-ID: <aF5ivn2uNTqOPrmR@hovoldconsulting.com>
References: <20250625063213.1416442-1-quic_ziyuzhan@quicinc.com>
 <20250625063213.1416442-2-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250625063213.1416442-2-quic_ziyuzhan@quicinc.com>
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

On Wed, Jun 25, 2025 at 02:32:11PM +0800, Ziyue Zhang wrote:
> QCS615 pcie phy only use 5 clocks, which are aux, cfg_ahb, ref,
> ref_gen, pipe. So move "qcom,qcs615-qmp-gen3x1-pcie-phy" compatible
> from 6 clocks' list to 5 clocks' list.

Please add a Fixes tag pointing out the commit that erroneously
described the PHY as requiring six clocks.

> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
