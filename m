Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36199D374A9
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCH1rlXx0yti887dN4fNZsOjM09LD5wvK30TCcu5JFE=; b=qBtj9N5hcpA6ix
	xwwAboPUApeG3MGTC2Fu50PBUuRZANwhraMzLP25EumJPxCUcPClMhpilYDVEnHrZhuL1w9aMlPF3
	VWIEnxNLD9fm9xJLZ5DzkZSTEzEK1MFavRkUemSalnvtd1gtkCCHloXSGygwb85uFEfTmW95ZZhVj
	7eqtzmrv5KeO439uBWZLwj/viJ3dPkV52VIXQpZAIPDUuFuRn+VlBFW7ffGScg4XXzDC+V+0f9dIb
	l6LnSdyqABh4VC4Y0XkohWUpUeDh6ovajveflOTaNHspX4pw6AWD6uacLPCmznsVXYGt3IKaID0FQ
	Hkp1sjKEKCDUojjXaItw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SoC-0000000FMnq-3pv0;
	Thu, 17 Oct 2024 15:53:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SY9-0000000FJ5v-2kVz
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 15:36:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B2AAD5C6188;
	Thu, 17 Oct 2024 15:36:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7371C4CEC3;
	Thu, 17 Oct 2024 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179388;
	bh=yqiocebZ9SEFK7KVOaQ0TDPRPwoojCOZC8oUaANHbI0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=c1235NFURWrYSC6PrUzE+BSsOO8oX7OsAMv5syVgxuTW6QQgsHQfixXLIpCcAPqp7
	 8EVRraUYv7EfVk6Jvef+WG+F5uPUD6xCDPij3Hfi1lJEzN32kT4lmIPIPVK6sU/U6v
	 TjP8Tn/7sGJ0z7u9BfPwu9EuCsbT1K+Igzj8XF+z0p+ZvdWhj4sS5RO8T3PWBWdfb8
	 myBiQAL4ZmMCpjbs3YZ9yBHYl0B/YrjCIzpXGFN0M8MJr1mEH+xzZxW2RWBD08qakz
	 ijVaRo7u5cXuhw7E8ClIpritUUE9ZxgkyMaAz+1lA/CraGO6y6uUS1IkC8LxK2BPET
	 WsW0Q2nVJzrHA==
From: Vinod Koul <vkoul@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Aswath Govindraju <a-govindraju@ti.com>, 
 Ilya Orazov <ilordash02@gmail.com>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20240915141831.2809208-1-ilordash02@gmail.com>
References: <20240915141831.2809208-1-ilordash02@gmail.com>
Subject: Re: [RESEND PATCH v4 0/1] dt-bindings: phy: ti,tcan104x-can:
 Document Microchip ATA6561
Message-Id: <172917938558.288841.9225642132798904905.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:06:25 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083629_768751_EB952528 
X-CRM114-Status: UNSURE (   8.18  )
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


On Sun, 15 Sep 2024 17:18:30 +0300, Ilya Orazov wrote:
> I wanted to kindly remind you about my patch submission. Just to clarify,
> my patch doesn't introduce a new driver. Compatible fields from
> ti,tcan104x-can.yaml is used by the phy-can-transceiver.c driver, which is
> already part of the kernel. There was an issue with my previous attempt to
> resend this patch. Please ignore it.
> 
> Could you please review it when you have a chance?
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: phy: ti,tcan104x-can: Document Microchip ATA6561
      commit: 26ac85e3adb4775df42d94b310276b06c0898d3d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
