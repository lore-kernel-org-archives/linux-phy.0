Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D05D2D29C2D
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jan 2026 14:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p5xfPldcotb7uS4gDY+LbVAVAm4KIQEK/CQHaiPASyM=; b=MK5UdjTQgv8zk65J8IL2z2hiQO
	FuCL8clkwAIXpacopWkjmM7zsrZLiCm/+yDsDvlnP19Jfd5XYoCXKSiN7ZYL9WsIgdKzoKTgAwm40
	mpeQbVKAybbR3mIz3RhmdI6BinlMq/2qfzk0pTJV7UM6XNbLt3BVg+qIElvPEeTLCqxjr6drrkjhL
	/2HyMvNO07EAP+4IabRVsbm3vE6qWE5WJK+CBzD3n6iXqOYoKjZ9KeKtbVkMTJ6aFES14t8poUu0Y
	dqQSbhpTPrWYwNCmg3o2ogf3BymC+C/OoA/CL5QWb1iJHYLPStlbcf1Dv6dYoYT6VirIa767e9MW3
	udL7Y2ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhpnz-00000002CnU-2T4n;
	Mon, 19 Jan 2026 14:00:31 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhpnw-00000002Cmd-0kHh
	for linux-phy@lists.infradead.org;
	Mon, 19 Jan 2026 14:00:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9ACC360140
	for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 14:00:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51608C4AF0B
	for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 14:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768831227;
	bh=nNTJfPbd1YV6us6RVjuHf5jxYqDR5Sbvdeb3Dsc1xvI=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc:From;
	b=r/yXWD0ncsL2nyj0HdwR3sH/Th7Kg/j5/M3SisKCKyBMwdLtzXqvEWLvtqcxGuVa1
	 kUrswwItcjh0YT/v+N+4EogiYiD2tKkVBc1Vjux1Fvx6MOFcEuVrIe0ebUHSZr7Loh
	 bcblPCxkN7qFc9o0+nlW60HhdWA/LUf+O6d1xq4dHPr+EB0cxhSGhOCBNJHLSSHUkw
	 IKgqimkhjoiouLXZ3v/z1Bv9pKIG9H9+YbVclnB57aFmmj95YNA7FllRPz0vFlfZ3z
	 MEy58VFZcdA2Rp+WCM16+c5x6yObn0yRQrbwgJ1rPK/iEMd4U7sNfLfWle36jE9poS
	 yGa2VHpzM+zKQ==
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-59b6f59c4f5so5173893e87.3
        for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 06:00:27 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU7UAfuYowI8S86og2xXrHx5yOg6CWRCy8Nw2MwlpXtxJvMc2d5Ii2PA+NCA/6XkpMd+AE24DLWQFc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzskFTh8N0v+mlTVFjDT44zyqSTBHfKchF0D5wMpnC1WEjCsGiv
	epFexR2AuJNfJ+8L9wv1syI8BwraB0pf13HXEAohqZ/m75/IAlvTyfrRubV5MEffm/vtbg6JI5v
	qyGxCXUHjLkPVffEN3XB+5Evvqx1a8pgtNi07tyhIMg==
X-Received: by 2002:a05:6512:3c90:b0:59b:809c:f659 with SMTP id
 2adb3069b0e04-59baef00064mr3462366e87.40.1768831225908; Mon, 19 Jan 2026
 06:00:25 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 19 Jan 2026 14:00:24 +0000
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 19 Jan 2026 14:00:24 +0000
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <E1vhoS2-00000005H1N-12dx@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
References: <aW4kakF3Ly7VaxN6@shell.armlinux.org.uk> <E1vhoS2-00000005H1N-12dx@rmk-PC.armlinux.org.uk>
Date: Mon, 19 Jan 2026 14:00:24 +0000
X-Gmail-Original-Message-ID: <CAMRc=Me9wAstONC60jdu0z1QrADZ01_2+goZ1pOXbAx04W5LDA@mail.gmail.com>
X-Gm-Features: AZwV_QiictzFqKNrCGHQtJGJYIyDzY-qHcNhS9W5nbIYTCl5UyVNn5jCiAv_d8c
Message-ID: <CAMRc=Me9wAstONC60jdu0z1QrADZ01_2+goZ1pOXbAx04W5LDA@mail.gmail.com>
Subject: Re: [PATCH net-next 02/14] net: stmmac: qcom-ethqos: convert to
 set_clk_tx_rate() method
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>
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

On Mon, 19 Jan 2026 13:33:46 +0100, "Russell King (Oracle)"
<rmk+kernel@armlinux.org.uk> said:
> Set the RGMII link clock using the set_clk_tx_rate() method rather than
> coding it into the .fix_mac_speed() method. This simplifies ethqos's
> ethqos_fix_mac_speed().
>
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
