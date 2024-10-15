Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D043D1F9C5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Oct 2024 20:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opyS5PRiId+vdAyXB2+To4JPC1+czJlLtNWbiELDbGc=; b=LxvgWuOiiose2e
	UmMEkrkrvuTEV5r/3DRpq35G5LAhIEfR6xW4VMXgR4McdVEQKxWvRI+CVYIp4204K/MF0SBU38rwi
	506sTkqoF8TNpAJIiPzwNgZ/9f8rj/7bPlJfYS3yiAgpcjKgId38oR7HpecKoHvtF7fLJo1v4OSeP
	sOZ6OR7J9WC2jgFN756qBM6gQRGD0viA//XA5fn5FIQJPnpojIpUMMryb3RquN//dBf0FmjNuF4Ku
	Ri6DauqEiyWOMZc6N++vtX09gJtHXqRPNUoEY9MC2a9gv9jl3Y60nWoApSmAB//5PGZoYyfssX+g9
	rcFSph4GRMI/cZJtIhgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0nmN-00000009TBE-2ziE;
	Tue, 15 Oct 2024 20:04:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0niQ-00000009SH6-2Ii5;
	Tue, 15 Oct 2024 20:00:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 90C825C5B05;
	Tue, 15 Oct 2024 20:00:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85297C4CEC6;
	Tue, 15 Oct 2024 20:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729022421;
	bh=H43Rm70PtO4uEyIEBYzv7WvwKVBQ1nWE3T4ED/q/rA0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tSAEZSU07/j6rXtmzBlUT/cc5/vUNoDIg7kmzVuBdNBU2UzUJ4ZmEl9BW1JUPPLkQ
	 KTOWMEocP7e4ZFfzIScIC0EoLdqOwyxirsAAhCtbvS5RXG6awM51MlfDM2qkyo1zm4
	 DDBgRboB+tY+ShyNsbxFeUWiJqhVBBvEFMRcgIYpellFv3i7W61s/JhdQ4aUmBKXut
	 DTEmu6wSTUUCnfpzSzcxDEzk9EXCJt8PBm1dorOpJnTvbSHHImyxkHywQtqOSb3l9y
	 cggAUGMnWDC3CpUgge0JG495lukdK3tKwPxGLtc7jfdug4oBrhKHRV6bBKqJEKsZH6
	 8JIK3YzQbWddg==
Date: Tue, 15 Oct 2024 15:00:20 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Frank Wang <frawang.cn@gmail.com>
Cc: kishon@kernel.org, vkoul@kernel.org, heiko@sntech.de,
	yubing.zhang@rock-chips.com, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Frank Wang <frank.wang@rock-chips.com>, devicetree@vger.kernel.org,
	conor+dt@kernel.org, tim.chen@rock-chips.com,
	william.wu@rock-chips.com, linux-phy@lists.infradead.org,
	krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip-usbdp: add rk3576
Message-ID: <172902241945.1703112.6047940247854753283.robh@kernel.org>
References: <20241014020342.15974-1-frawang.cn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241014020342.15974-1-frawang.cn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_130022_664056_4E2AE5B9 
X-CRM114-Status: UNSURE (   8.39  )
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


On Mon, 14 Oct 2024 10:03:41 +0800, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> Add compatible for the USBDP phy in the Rockchip RK3576 SoC.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
