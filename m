Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DFDBD29C2D
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jan 2026 14:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M+8ct+Rq7EKYK3ANXs3TWJr5avZPNPnWQkof3qUd7N0=; b=x3N6Zk9aMcR01e5+tkjOpltXKV
	FMW+Mo/xUt/LEJXJpcUJer8CBVaPPVfwkkm8+LCXhVlpDZTytxveKYUHcS50pIXN4MrjvbnTGjMBL
	oo9Tvp2zT9hrnWbUxOPORc9VdzhwCzuZCWyY2rCcE54AUevzH6ZiBOeUoe6pGVE4rNSTUdU5Vi093
	jmEhBXxAoJZmxG/Yh2ozVopiU4+rQyR9oiLfkoDNSwIPLK54NH0pK/ZvYfDexbfCgv36xNzN+jwZn
	W219khyRTA+OuQE9S41rAaVoszTTwyK05UXAOVmGw0bbfaYrMjp/+IKzw/nHMRQA7DX9bGJKpetfb
	qG+zTCFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhpnY-00000002Cgd-1vRM;
	Mon, 19 Jan 2026 14:00:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhpnX-00000002Cfu-0qgf
	for linux-phy@lists.infradead.org;
	Mon, 19 Jan 2026 14:00:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 40AAD60054
	for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 14:00:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2E37C19425
	for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 14:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768831201;
	bh=MIrQUfbJ2zL+AhG7FyLFIXu3ha5qK8PBOAlkOqBeaxM=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc:From;
	b=EX+6RBfHN6arCnN820LmhTyye+ap4LvfT2Vs/A2m6HXJ4BHOWpLAKyRD74+KgJuaL
	 VUR1Ex6JYPUkdQJ6EhnWtpYkQi6tUSQ8l7P0CNvl9QChWXNTJHOgvcK4TjJrI1cH5x
	 E8C3plpVN9xmQM6N4dqPx6PTgTrMK9ORvQv8LobxTG9WLBDQwvEZsSj1YoJY1in/WV
	 IAeJVuZWYuMn3i/0puonnl4zJtICLn9X/ym7f0mTD/ZBibz/+6y5OqO0EDrbBY6Dua
	 5METEPk2nVfmmG0P34OxCytQmjkAxShRvtq54c0eKQTN2/Cb7FvQlnA41gP14L1wTQ
	 LnUuzUGyhsg/A==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-59b78886454so5379626e87.2
        for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 06:00:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWLFEdIeB+QmeFcoVwJfJkhakA4wTXZiQYBCGjiJYfC5J4fqOyezm7Djs9UiVspfjVSLVkVBEgqedg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzSwBstTTdRUHgZB0DYTdkyGCkxs58E1s3QSwD5YDUAIX1r7WCi
	iHlUitLsJCk6y24QCvRqjH0AcCmwYqeq6/6rDkRkCerdq1kBFS1K9qnYxzSy+/SbH475XUhwAxv
	8vWQ/AH4Q26miSc658O1GZmGj/qFwBthOTLF/2RrwgA==
X-Received: by 2002:a05:6512:3d9f:b0:594:347e:e679 with SMTP id
 2adb3069b0e04-59baeee6123mr4166539e87.43.1768831200472; Mon, 19 Jan 2026
 06:00:00 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 19 Jan 2026 13:59:58 +0000
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 19 Jan 2026 13:59:58 +0000
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <E1vhoRx-00000005H1H-0YoL@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
References: <aW4kakF3Ly7VaxN6@shell.armlinux.org.uk> <E1vhoRx-00000005H1H-0YoL@rmk-PC.armlinux.org.uk>
Date: Mon, 19 Jan 2026 13:59:58 +0000
X-Gmail-Original-Message-ID: <CAMRc=Mc-URPkVzEc5Cu54bA021+XaDh3-kZZDSKyNt0V1YQB3Q@mail.gmail.com>
X-Gm-Features: AZwV_QgrQLlVOMTh-pKGr5woCaDOT6WzYHt89q8m_3zdKt2vs_AoPCBMlqv3zPI
Message-ID: <CAMRc=Mc-URPkVzEc5Cu54bA021+XaDh3-kZZDSKyNt0V1YQB3Q@mail.gmail.com>
Subject: Re: [PATCH net-next 01/14] net: stmmac: qcom-ethqos: remove mac_base
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

On Mon, 19 Jan 2026 13:33:41 +0100, "Russell King (Oracle)"
<rmk+kernel@armlinux.org.uk> said:
> In commit 9b443e58a896 ("net: stmmac: qcom-ethqos: remove MAC_CTRL_REG
> modification"), ethqos->mac_base is only written, never read. Let's
> remove it.
>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---
>  drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index 0826a7bd32ff..869f924f3cde 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -100,7 +100,6 @@ struct ethqos_emac_driver_data {
>  struct qcom_ethqos {
>  	struct platform_device *pdev;
>  	void __iomem *rgmii_base;
> -	void __iomem *mac_base;
>  	int (*configure_func)(struct qcom_ethqos *ethqos, int speed);
>
>  	unsigned int link_clk_rate;
> @@ -772,8 +771,6 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>  		return dev_err_probe(dev, PTR_ERR(ethqos->rgmii_base),
>  				     "Failed to map rgmii resource\n");
>
> -	ethqos->mac_base = stmmac_res.addr;
> -
>  	data = of_device_get_match_data(dev);
>  	ethqos->por = data->por;
>  	ethqos->num_por = data->num_por;
> --
> 2.47.3
>
>
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
