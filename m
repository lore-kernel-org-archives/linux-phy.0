Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FEE6C021B2
	for <linux-phy@archiver.kernel.org>; Sun, 23 Feb 2025 11:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiKpPELCNFDlKA8wlyq69X299DuoXhETAKn9JDi/014=; b=CiXV2kqYIybzic
	H8JdzPw7DpKTU7jNS+ihQ1mAapUaIM/+KhRnQlLXur+ToCzkp/T8qn+mwLLjNeDUbXYdZYGZfD9c0
	wIBMQ9H3eCVJPXBsCB9F43C5FCedVgTdDlr0gsZ3uIPfFfVp8mApwsE5HETJB/4XNOIGKHLmJ9fDt
	n1vsJVVOTKL1Fy9HzU35weQ4du9NgT0/xk4uPk6qChCVFJEZa3lYiOE8EwsCAv7ZYJp9OsieoBpAM
	Gwia8zpFcnAb6V2BvBR3xIz5GI6mmvraJyZAoGkqYBI6pe1NDXHblsePmUuWLQIC40caLXzoHsEKL
	8CkZ6kmtpUonI9qYAu/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmABc-0000000AyFk-1bUv;
	Sun, 23 Feb 2025 11:30:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmAA7-0000000Ay3U-0rJE;
	Sun, 23 Feb 2025 11:28:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3433A5C68E3;
	Sun, 23 Feb 2025 11:28:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CD15C4CEE8;
	Sun, 23 Feb 2025 11:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740310121;
	bh=NlJVydL9C+hEsWptR74iKVv9eBDBElH8eho8n1pJeh8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=syl/keViV1NJaBjWAYL9EX9JMR1GB7kQbUTbaPtuRJAzfbTpIZej5WEewDE+SsE8U
	 hhkPpq+SiYaP/Q9k1F2t9bwFIL6s5Jv0wDLnbNe00N3vWyE8ylusy2v8k3ZrbiGXMs
	 xeO6gMi1JiZKrGz4pFSvA7WhaeZy7LRRKYqP5Zy1Gf0YHBSRgL9GL7p1vl2i7Ed+CG
	 onJIBC66sM6FX4CSy67VtVmTyZJlMqFNiHV583MbJg/I5qqA8VNCUKc5CPDxredv1X
	 Hp60WIUIiVFT1EvUPiDEZpqBgj5QJSuh576Rr2iael29FZjRqhsCEeSv7pbaI/0v0P
	 8l5XLWwhUtuJg==
Date: Sun, 23 Feb 2025 12:28:37 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: mediatek,xsphy: add property to
 set disconnect threshold
Message-ID: <20250223-benevolent-tacky-emu-f5f1c1@krzk-bin>
References: <20250222090710.10909-1-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250222090710.10909-1-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_032843_297312_9D6053E6 
X-CRM114-Status: UNSURE (   6.81  )
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

On Sat, Feb 22, 2025 at 05:07:09PM +0800, Chunfeng Yun wrote:
> +      mediatek,disconnect-threshold:
> +        description:
> +          The selection of disconnect threshold (U2 phy)

Say something more than just copying property name.

> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 1
> +        maximum: 15

default: ?

> +
>        mediatek,efuse-intr:
>          description:
>            The selection of Internal Resistor (U2/U3 phy)
> -- 
> 2.46.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
