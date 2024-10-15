Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 166D4D1F9C5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Oct 2024 20:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nikhxULlACWM1Lk2tSbT2TGSvkNT9wAFr3wcEcXLe8s=; b=2c04/KpzTKqGjS
	ImY6x1gGQpLleR3g6ZXaUKssn1avBcBeoSH9NhbjMqRcyK4unGp2rlZnfzBOTumeUXreHZnfpd+0z
	x9O0vn2v4GZPRxC6r+TRaiELFyfR3a0A+4GnxemlKkml6HYp9fuVdDtZ6KsDkHiBinlJgkNUk7Oiz
	Ci6cav3pZv/toQOc80mkfj2+Zok/nSNxqAwrEAvgfeP9HYP1B8j7+BwmzEkolEuw/Sq6moze+IfXd
	Sej/1KwHne68dHiJWYhiNFAQZZY/udWE6sKFkF8JLkyLI+bAeVtQnPVtpcFnPDUHKnaDdkKcIRynW
	91AkB/jyk2EZx/qpWoig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0o32-00000009VLD-3Gad;
	Tue, 15 Oct 2024 20:21:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0o1b-00000009VEp-30Aq;
	Tue, 15 Oct 2024 20:20:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9F2AB5C5CB6;
	Tue, 15 Oct 2024 20:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83BB5C4CEC6;
	Tue, 15 Oct 2024 20:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729023610;
	bh=x0dv1P7HzpQz4hE653c48L2iacolgQtCuY2vADBo2ew=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PiDmF2tuZMfM7dxtZRtLkXRo3SXilj/RlJ8d2HDlilDGK2XJPlp2PN6VY5U3chydC
	 p26rdE6Wkj3Q+/Q69JISEV3mS2tcK8QGr7oHbB1HYjCunoqunRPdUrCxplr9AkCLnn
	 vxzcdFA9yHYJ2/LYOn2O+J3CUM1eh3jmFUR0SnGRlWyfZqKBvVs+LPtE/ffxpC9i/Z
	 NatGgpJFY2dv4ttdADq+eVAJ/gwxKQUA97bp2mWl/H4byBTtIjbd//o3hx8rupce2z
	 d0UVOqCd4CXr0SgCf6hWdjlEHoKREeTGCFiVgZq11NQmfQv/97CXPxd9vDwJuhcarL
	 o/ycSgdPH/iRA==
Date: Tue, 15 Oct 2024 15:20:09 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Frank Wang <frawang.cn@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, tim.chen@rock-chips.com,
	devicetree@vger.kernel.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, krzk+dt@kernel.org,
	william.wu@rock-chips.com, linux-rockchip@lists.infradead.org,
	kishon@kernel.org, vkoul@kernel.org, linux-kernel@vger.kernel.org,
	heiko@sntech.de, Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip: add rk3576 compatible
Message-ID: <172902360776.1846766.3809277607860876723.robh@kernel.org>
References: <20241015013351.4884-1-frawang.cn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241015013351.4884-1-frawang.cn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_132011_823620_9A4FF113 
X-CRM114-Status: UNSURE (   8.02  )
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


On Tue, 15 Oct 2024 09:33:50 +0800, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> Adds the compatible line to support RK3576 SoC.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
>  .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml     | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
