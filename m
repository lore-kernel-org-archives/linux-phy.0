Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 459D6CA9ED2
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 13:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bj7ua9H2LnyzVJQhGkPv+KWrpI0g+XW5PAMGkKaTHr8=; b=DTi7VgCUO1VRHENV1fjHBck/RY
	BXbcYxhQpw+FiBG67crYCg/P5DUl4kfpKvF9DdZCD7a2BHoSmWX+doqy3KLEAZkzI2/QSPXMW0fgn
	lebkWARjz/me2ZkDJ/GBpvt/5K1zDtEstKVDzqu9d6wu5ow0AfTEzdXtNYT6Ufcg/1hgXap2nDYu1
	flM4iB8ijC8OeBCMtvqSBK9aE1ccpQe7A0vy27uVN6PT2pohYwieCi5M4gPTeHSZW7jhCbrJDNBNi
	zi8gmI38SEYdnOU2VeU5dINrNOSkWS0CBgCbFP54bf9Nt7ruZVzUb+wKb99ka/zrB0/PYYWWmyDNQ
	tb8UeU+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGc72-0000000CtNn-3Ngw;
	Tue, 13 Oct 2026 13:00:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGc70-0000000CtMi-2Zpv
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 13:00:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B5E75600D1
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 13:00:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A67D1F00899
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 13:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791896409;
	bh=+f7hjFqoYYqzepasa7AMCSjMXUQ0fFSA/uS2EJqU4CM=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=lYz0A2VGRIjTym12aH7Axy6K6VnTpv7jGWciRk1bblvGAYscj441T/pFP2TA0/JxU
	 NPDTi5RsDCOwHAzVLSuPBzzLdw5WHJ0vxu7/xPPvq03fKOLFHjtvV9oSf937mmX8kY
	 wYUrRJI4AgfjY0NF9y9rT95umNJUCzazccQ2MJAypFke97E0ZO3YONDyCLcFqwy/I8
	 kE8SuLO5Y0TStqcx2Ek+ZaGX1qL62tMg4YJQ+IZ3KxDnjYysblmyIDDVjLK8ey1nCU
	 zXTrSnHu/T7h2hG6qP89QwF/Rt4ZPOil3/XNvLobxi3/mJ91/h3qiKFEGxMwvNvgjV
	 9E4/xQgc8QrhQ==
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-3a76ac0bdafso40626321fa.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 06:00:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvByZiyzhtALvIMoxRW+PMvbUYtKhcHsR07pxlEHJnvvntVKlLI3Z4LLox1XRw2nLVbBTF7XiE/OPCI0=@lists.infradead.org
X-Gm-Message-State: AFq9FYKv0iEPVmLooeHbrqrpPCzfy5ZS2OR+4wHPKm7pnEI7wFFp1HeN
	PET6cwe6Ht25PFQlLPoe53sYizHe/0n1k/AF0zqTpPWLzhMHwm53GeZOYEwtXnf19PldEC5hjtR
	SmgVI4cZ5b7+nAim04TstUGncaNvcgK0Lc/ysx4b6Mw==
X-Received: by 2002:a2e:a985:0:b0:3a9:829e:1def with SMTP id
 38308e7fff4ca-3a9c2b39c17mr26551871fa.21.1791896408192; Tue, 13 Oct 2026
 06:00:08 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 13 Oct 2026 09:00:06 -0400
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 13 Oct 2026 09:00:06 -0400
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20261008015017.3359804-4-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
References: <20261008015017.3359804-1-shengchao.guo@oss.qualcomm.com> <20261008015017.3359804-4-shengchao.guo@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 09:00:06 -0400
X-Gmail-Original-Message-ID: <CAMRc=MefoZdGp__cRjUigLeYoiFbrm+Pw1n-XHJnhggMcBVP9A@mail.gmail.com>
X-Gm-Features: AclHuK9rvV4-J4UvpGWlPsTNZi6lIIFpSgWSmTv6XmB-X6vr7YFYN1b-k_O-n6g
Message-ID: <CAMRc=MefoZdGp__cRjUigLeYoiFbrm+Pw1n-XHJnhggMcBVP9A@mail.gmail.com>
Subject: Re: [PATCH 3/3] phy: phy-snps-eusb2: Enable AHB2PHY bus clock on Nord
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abelvesa@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
	Taniya Das <taniya.das@oss.qualcomm.com>, 
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
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

On Thu, 8 Oct 2026 03:50:17 +0200, Shawn Guo
<shengchao.guo@oss.qualcomm.com> said:
> On Nord, the eUSB2 PHY registers sit behind the AHB2PHY_0 bridge, gated
> by NE_GCC_AHB2PHY_CLK. The Nord PHY currently matches the sm8550
> fallback, which only requests the "ref" clock, so the bridge clock is
> never enabled by the PHY. When nothing else holds it, e.g. on boards
> where only the USB20-only controller is in use, clk_disable_unused()
> gates the bridge and PHY init accesses go nowhere:
>
>   xhci-hcd xhci-hcd.2.auto: can't setup: -110
>
> Add Nord-specific match data that requests both "ref" and "bus" clocks,
> reusing the existing Qualcomm init sequence. The bus clock is enabled
> and disabled together with the ref clock in phy init/exit.
>
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Tested-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
