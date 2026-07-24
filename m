Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACEE7C531FA
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jul 2026 09:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyA7rN7oEu4ytk4JXbf+Eawn2fLeK2fWrQKtY1/IKPA=; b=PMe0wCq8TZ9RXU
	sr9m08Q700148qKhFTlR2zQs42tndUYlyr7dS+pYV7DvlUYNtJVJEeUuYkiqI7ECmfReikdvlKoBa
	kiWL7pekATvJLJu/IJBt3J1QNjsk6NM9iNbJeb+Xw6Jbi/nlFsEOkYPcoftIihEpXTaCBdc9zxDoB
	dYCj502wl97t7FpiwtFYfkHtJXZDNZC33A//aszjdUtCtWit3qK/n8l32Fr1Rcga8V0GT9LU/zeDu
	6jAc9P4z/D4PJDX8YQGRQN3VN41pIQYVfvug2n5s45MzAPxdyoJ5MD/FSl2JfEpEjMPK9XvC4ml84
	a845JH0K8HnMHQcQ6pQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCTX-0000000Fzsq-0UGk;
	Fri, 24 Jul 2026 09:45:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCTV-0000000FzsM-2Vfo;
	Fri, 24 Jul 2026 09:45:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C1E48600AA;
	Fri, 24 Jul 2026 09:45:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DA911F000E9;
	Fri, 24 Jul 2026 09:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784886348;
	bh=7c7vhpEup6VOBqUns/9puAzJgpwqbpDNftz2EG8wb4E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gmuDKJ7enNtUDQnzQgyDysKdjMH+51EhGpEr9b3ytIpOX17Xw30CpgWE49QGdlz32
	 7L8Cqx4J6yGMDRZhmuVVjSm9mcURmnuw4RW4gttNiN8j/024TB9J/JKCSpL4jo2SY4
	 GWakn7GXkvigsMzpkMysBY9JIgAjd+JQDV+a/brI6fgLo9OKBW8k1o/kBdwkzBRd4u
	 8fOrVrXB9/CXAgqMccyk9PtI9DgnRC+oyxy4pAyagej6yJDuf04avvqL71bdfJEvx2
	 +aib/ZDACXT5O6RPsmQgQH21DB3C9VzkmWDtysFxmWPWhqSJNbaYiQVgd/KbyVC3lZ
	 Tohy/JYo6ej0Q==
Date: Fri, 24 Jul 2026 11:45:44 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jason Yang <jason98166@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: rockchip,rk3588-mipi-dcphy:
 support per-direction phys
Message-ID: <20260724-incredible-colorful-trogon-9df033@quoll>
References: <20260721-dcphy-rx-v1-v1-0-4fc83c0ccac9@gmail.com>
 <20260721-dcphy-rx-v1-v1-1-4fc83c0ccac9@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260721-dcphy-rx-v1-v1-1-4fc83c0ccac9@gmail.com>
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

On Tue, Jul 21, 2026 at 06:35:19PM +0800, Jason Yang wrote:
>    clocks:
>      maxItems: 2
> @@ -82,6 +92,6 @@ examples:
>                   <&cru SRST_S_MIPI_DCPHY0>;
>          reset-names = "m_phy", "apb", "grf", "s_phy";
>          rockchip,grf = <&mipidcphy0_grf>;
> -        #phy-cells = <1>;
> +        #phy-cells = <2>;
>        };
>      };
> diff --git a/include/dt-bindings/phy/phy-rockchip-samsung-dcphy.h b/include/dt-bindings/phy/phy-rockchip-samsung-dcphy.h
> new file mode 100644
> index 000000000000..60f6630f58b3
> --- /dev/null
> +++ b/include/dt-bindings/phy/phy-rockchip-samsung-dcphy.h

Filename must follow compatible or binding filename, so this is
rockchip,rk3588-mipi-dcphy.h for example.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
