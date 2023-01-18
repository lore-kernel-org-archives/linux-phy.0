Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6760DC32793
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 17:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGk7HGjQ2O+wKS20x2Sg4OeefS79R3dbaL3ZQErfMfE=; b=J6isRjFjWS1ou7
	sE1yUgrbNewCb8Oz3fxkxCnKrkcexDtBIhF/HWE8bAcM+Odgx319Co7u71yC9UHVF8/UycC6cTQ+p
	2dNwk9eHjuf1adPe8rWbdmsBCVpj1/XjVGkeS7YOB353psF++D4Iav14rtWwZkf3FH3IN27v3OFBl
	AqOpHzbS8r0bO/5VttJfwv16EJMRp4/V3zASEjRkJNOFXXdw9ispTbNemEUklhGNo1nQLwhHQCviY
	J67pLY0hYVGP4QB+MIUTiwt7moauD1QZDC3KFyXa0jdiUJ9yirNxIHbK+ymfGeiS+LeTESOaS4UL7
	Dhrv0DtnMfjrvAkiKJkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pICHF-0022Sd-G8; Wed, 18 Jan 2023 17:31:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pICGC-0021uK-E8; Wed, 18 Jan 2023 17:30:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0E8E96194A;
	Wed, 18 Jan 2023 17:30:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80FDCC43442;
	Wed, 18 Jan 2023 17:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674063001;
	bh=LJBBjaAlYSvJUenRlMga+U5BeXpvxpPKZDlIdLU45BM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=hmf7+UL3leNPuzaxevidcCvupd2U7btIwH65IYNeVK7+1tInAv0y6fqv1vgPkzep7
	 DyRue47yqkzKNVh0krE4rlL1/CHgs3zHDmDmimMHjaZDt33MsbXp1Hfu05ucqSSE+a
	 CbDfENE2O3Fsh3QvctXD57v+Uctul0fERTTCuITLF4u2+kr3YJ746l1vQZa3cHPGSI
	 F+2psrUUlGAgm4I9P0vps036wG9js74HMbiDXteMc0Li3hPAnx7wCQjY+/b1KCIifu
	 mJxQ0xxn2v1XNmVHViwADBw/l7fyyG9erBtL+43vPEph8mMeigFsVQlHt47qPdCoS9
	 PVISFo1zgYvRA==
Received: by mail-vs1-f48.google.com with SMTP id 3so36502244vsq.7;
        Wed, 18 Jan 2023 09:30:01 -0800 (PST)
X-Gm-Message-State: AFqh2kpnwYZT5Yv76Ef3aaGc1tu9zhKL2SFx2mjSL9wPido+IhSvzs3D
	bN1ASRYyF30cE2Xw/xTA1fPcxEfdwLQEo1qbrQ==
X-Google-Smtp-Source: AMrXdXvA04SHBWGhGf3XXxnkZl7P9uuv143vKfDpn1n+lFrctNTF4MekqF065Hz/TnnvGNkDVJvaFJeZyLyDD//XymY=
X-Received: by 2002:a67:eb86:0:b0:3b1:4b76:5b44 with SMTP id
 e6-20020a67eb86000000b003b14b765b44mr1025285vso.53.1674062999762; Wed, 18 Jan
 2023 09:29:59 -0800 (PST)
MIME-Version: 1.0
References: <cover.1674036164.git.geert+renesas@glider.be> <cd685d8e4d6754c384acfc1796065d539a2c3ea8.1674036164.git.geert+renesas@glider.be>
In-Reply-To: <cd685d8e4d6754c384acfc1796065d539a2c3ea8.1674036164.git.geert+renesas@glider.be>
From: Rob Herring <robh@kernel.org>
Date: Wed, 18 Jan 2023 11:29:48 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJS2JTZ1BxMbG_2zgzu5xtxMFPqjxc_vUjuZp3k1xUmaQ@mail.gmail.com>
Message-ID: <CAL_JsqJS2JTZ1BxMbG_2zgzu5xtxMFPqjxc_vUjuZp3k1xUmaQ@mail.gmail.com>
Subject: Re: [PATCH 7/7] usb: host: ohci-exynos: Convert to devm_of_phy_optional_get()
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Madalin Bucur <madalin.bucur@nxp.com>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Horatiu Vultur <horatiu.vultur@microchip.com>, UNGLinuxDriver@microchip.com, 
	Thierry Reding <thierry.reding@gmail.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_093004_594556_8663F90C 
X-CRM114-Status: GOOD (  20.57  )
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

On Wed, Jan 18, 2023 at 4:15 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> Use the new devm_of_phy_optional_get() helper instead of open-coding the
> same operation.
>
> This lets us drop several checks for IS_ERR(), as phy_power_{on,off}()
> handle NULL parameters fine.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  drivers/usb/host/ohci-exynos.c | 24 +++++++-----------------
>  1 file changed, 7 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/usb/host/ohci-exynos.c b/drivers/usb/host/ohci-exynos.c
> index 8d7977fd5d3bd502..8dd9c3b2411c383f 100644
> --- a/drivers/usb/host/ohci-exynos.c
> +++ b/drivers/usb/host/ohci-exynos.c
> @@ -69,19 +69,12 @@ static int exynos_ohci_get_phy(struct device *dev,
>                         return -EINVAL;
>                 }
>
> -               phy = devm_of_phy_get(dev, child, NULL);
> +               phy = devm_of_phy_optional_get(dev, child, NULL);
>                 exynos_ohci->phy[phy_number] = phy;
>                 if (IS_ERR(phy)) {
> -                       ret = PTR_ERR(phy);
> -                       if (ret == -EPROBE_DEFER) {
> -                               of_node_put(child);
> -                               return ret;
> -                       } else if (ret != -ENOSYS && ret != -ENODEV) {
> -                               dev_err(dev,
> -                                       "Error retrieving usb2 phy: %d\n", ret);
> -                               of_node_put(child);
> -                               return ret;
> -                       }
> +                       of_node_put(child);
> +                       return dev_err_probe(dev, PTR_ERR(phy),
> +                                            "Error retrieving usb2 phy\n");

Optional is really the only reason for the caller to decide whether to
print an error message or not. If we have both flavors of 'get', then
really the 'get' functions should print an error message.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
