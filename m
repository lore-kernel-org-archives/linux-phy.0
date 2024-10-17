Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD1E4D37499
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUN6emHP5BG9qsxBEST56wNKpwI9TaCK6sNVvdCHuU8=; b=yX6HChOgWHT3EZ
	fuwvU11plcT3aZv3576zqSW0hQwYiAWsz61CEMXl8MugHPnd8AtlxUBX/KaPaeIildEYo3khIKbKB
	uPH/bRQXJQUyOwKLkuYlETfTYGcXrg6LwE4U5+nVpRqkmcPPboANLtCRGPFNSyhNcYWW6ONLOmyez
	Uy3QORFjieUS2c9BbT4++nMsrHTiEZBqlsrlJb6uTSS6UGAJl2v0c0dMwu8kpSKjzG1DCFq9SyKaK
	uU2LQzlywH6A2ciKNYWh1beRy+B3ujeuCZtvBDFbGyy0vqnaiz0dJ2Hi+uwLFnnnZSaPwPpWXPrI3
	6KZ5H0+iO2W2f6G3lnZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SbG-0000000FK4L-2Wpb;
	Thu, 17 Oct 2024 15:39:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SXb-0000000FIrC-0ONo;
	Thu, 17 Oct 2024 15:35:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2A72B5C61C3;
	Thu, 17 Oct 2024 15:35:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94151C4CEC7;
	Thu, 17 Oct 2024 15:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179354;
	bh=tQZtVVyCeRnI9TF1cSK9C2Pyi0D01P9dpdlS4+GOqAo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KioPyikL26+HrMcb/XoQ6mCUhqrcOWg77GM9etxhrPh2M04O1rkbspnA7DAS70dVj
	 Npm2j6Si0m6kkpx0hqk1B+IsYJCBhcJ4FwODFiMeVtQ5IGH4vGvlAOmO4kuo8oxu4i
	 EPPv7t4vtl/Cfav4BuRTcXqsx8f/iq4+YMbXLcOBDPqlTM+qCQ/+yx8iYZIn313RiU
	 fIcmLKWaUrzope7I/b1xg3aZ0Lv5urH5Hyp6KHpGHOXnYk13DPwvSWv/iNyqVJqULk
	 piQH1J6nuBOXmBWpaA8AkQqt+z8IZSJR09qwtFhLQ9GiQfaay9SOUSkdTg/mYeUYbN
	 yk1OKEv0jWgyA==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, heiko@sntech.de, Frank Wang <frawang.cn@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com, 
 tim.chen@rock-chips.com, yubing.zhang@rock-chips.com, 
 Frank Wang <frank.wang@rock-chips.com>
In-Reply-To: <20241014020342.15974-1-frawang.cn@gmail.com>
References: <20241014020342.15974-1-frawang.cn@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip-usbdp: add rk3576
Message-Id: <172917935024.288841.18254840723244928611.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:05:50 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083555_205388_B071A400 
X-CRM114-Status: UNSURE (   4.02  )
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
> Add compatible for the USBDP phy in the Rockchip RK3576 SoC.
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: rockchip-usbdp: add rk3576
      commit: b3e804ab9aad465ba7285aa5daf83656d5efc59f
[2/2] phy: rockchip: usbdp: add rk3576 device match data
      commit: a76de028c619dd18f89786805bcc7bb4d379ea9f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
