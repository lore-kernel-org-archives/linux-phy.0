Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66E8ECA0FF0
	for <linux-phy@archiver.kernel.org>; Mon,  1 Sep 2025 16:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLluNVNPENShGxbnd9XAv0UERfIsyLK38MiKr59Bmgw=; b=nqaojkUi1OEX/j
	tEmvDD9pqWcYskd1ddIzZu64ArkhyOuCfU/udCdsP+Uf6ceWbPRo+HhKBQarXoZFogbqH+U3+KIig
	3xrwTuRWtGdc0kVWDRWYsIEVZhiaavtgiRtpR6Qw6cqpp4dz+SKC8jyLtPunyrvvPwMHjXlRq3Ve/
	DGWoTl8NnqXIExWYsiBplyhRS/dfZ7giug7sY6ICMaOz5e7Wcvt1YvTS/ju+y3rnNH0rWcGIhv1zG
	qVilSNF+1n4Ppbiuv579DU+HPRHcdD5chOs8VTkZEbfD5zc+5saogMwMCPtWQG85EZJC0YQ+zH+1G
	+G6ig+oFF7VLGCIlazLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut7j1-0000000DL70-0OLW;
	Mon, 01 Sep 2025 16:49:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut41A-0000000CazC-0D6y
	for linux-phy@lists.infradead.org;
	Mon, 01 Sep 2025 12:52:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F2A98601D6;
	Mon,  1 Sep 2025 12:52:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 089CFC4CEF0;
	Mon,  1 Sep 2025 12:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756731134;
	bh=6oykOQVnSFjlaoM30zb7WQOqn4wmhZDz7YN75qgADsk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LKVPwZO3LsI1mp6cA0/p6Vo1rmkTjSLHlW9GYyXM3eMlqGO9wVms93FypuADclP88
	 RB7zurIDv89qgk3glss3z0CLkivJzGtXCAGKUipJrd58sKyz/rEhFQiUy2F4Gd4bC+
	 obytQDZH7BlR5fpNKoDm90FkXv+DyS3WRffyHdTc+/b3pl+RE67i3yj6keg/abserj
	 48xX6EzQWe9N+9UpMjkt7Qupt5+o3/j8/asBqfAiFPwq3XERRxkAWk4mddtdk2rHHd
	 omro3b5Vrn5ySQ9HfCrrc0G1tnTzYinqTsBA8qebGqCWJ6D/J+ACfIOLDcEihP27b3
	 E3BHDR/d6vSeQ==
Date: Mon, 1 Sep 2025 18:22:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, kishon@kernel.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v11 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for qcs8300
Message-ID: <aLWW-izvybTo52VN@vaman>
References: <20250826091205.3625138-1-ziyue.zhang@oss.qualcomm.com>
 <20250826091205.3625138-2-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250826091205.3625138-2-ziyue.zhang@oss.qualcomm.com>
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

On 26-08-25, 17:12, Ziyue Zhang wrote:
> The gcc_aux_clk is not required by the PCIe PHY on qcs8300 and is not
> specified in the device tree node. Hence, move the qcs8300 phy
> compatibility entry into the list of PHYs that require six clocks.
> 
> Removed the phy_aux clock from the PCIe PHY binding as it is no longer
> used by any instance.

This does not apply for me

> Fixes: e46e59b77a9e ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS8300 QMP PCIe PHY Gen4 x2")

Not sure why is this deemed a fix, also no empty lines here

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
