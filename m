Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E3A8D216A5
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 16:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3vzT1LJwjnmwk6UaOPmuWtA0WqoyS3o4XALcWUs2+M=; b=eQ0o6FLgkUL/QU
	kiYt4DO9DYSv+UmoJG1lfnrCD1bYYFY4Gvoa6G5jh8Gmm6b/+zT4SshpWUPxUowPZfSv3lzMpzHOn
	Sjjm+P0HBJGH+px3ZZwifJDPpUwxDcSpV76DSnCbhTPPca57iZhJcS7n39XfnB+/tJGtWfM2dOfgg
	4Y3+snpMhvTLl+7cNT+k2/smDC/of5e/twwzRpCSRzqQAp7RjSEk2kwJzb8cktEUZKx7CCm3gfIym
	uRvWOy+NAzXIkrl6Cw3dDICd0e6+rWEkWfMxKSyus8+7qdm/PAv0UNTRdVRSDKPtVkQ5u11irVnva
	PwI9bUWFEjiHJ7EOss5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRBvz-00000008GAP-0joA;
	Thu, 04 Dec 2025 16:11:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRBvu-00000008G7x-29SS;
	Thu, 04 Dec 2025 16:11:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 77EEA60200;
	Thu,  4 Dec 2025 16:11:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8223C116B1;
	Thu,  4 Dec 2025 16:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764864713;
	bh=U0t93rz+6G8qhpgOPXWae5373AeBmPFR5c2pQwy9SXs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ld63lALuvgXx8fZzifbNcMSzbIMPW2BcijioVkdJ4WkcVMNeevmNW63Kzyruqi9lf
	 A1x5boTYluSqq13zE6hGNeo2VmFrO2jIglxpq2+MIgbkwFQZyLXBHXiEAlF4A807KB
	 YFgdurFWQDxiC9xMp07DLKDVrHu1STX4DlOTNYKKrJuAI5P1i0BrjTKOkogb7GsktD
	 HN1wQFnhdRhtaY59udHqSRc7FmBF73gfPK9Tg7N1GoPZdzYbEmMtpxuL3JlcZHhfp3
	 KfUX15OhDHAIV8HLDhYvs21T/pgqveLMU8gaRLchjtWbbDiO0ZthmwE4QsVEUbfInU
	 yHcfwBkOSz/0A==
Date: Thu, 4 Dec 2025 10:11:50 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Andrew Lunn <andrew@lunn.ch>, Lee Jones <lee@kernel.org>,
	Eric Woudstra <ericwouds@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Daniel Golle <daniel@makrotopia.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Eric Dumazet <edumazet@google.com>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Vinod Koul <vkoul@kernel.org>, Russell King <linux@armlinux.org.uk>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-mediatek@lists.infradead.org,
	Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Subject: Re: [PATCH net-next 1/9] dt-bindings: phy: rename
 transmit-amplitude.yaml to phy-common-props.yaml
Message-ID: <176486470918.1577839.2388132003794152045.robh@kernel.org>
References: <20251122193341.332324-1-vladimir.oltean@nxp.com>
 <20251122193341.332324-2-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251122193341.332324-2-vladimir.oltean@nxp.com>
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


On Sat, 22 Nov 2025 21:33:33 +0200, Vladimir Oltean wrote:
> I would like to add more properties similar to tx-p2p-microvolt, and I
> don't think it makes sense to create one schema for each such property
> (transmit-amplitude.yaml, lane-polarity.yaml, transmit-equalization.yaml
> etc).
> 
> Instead, let's rename to phy-common-props.yaml, which makes it a more
> adequate host schema for all the above properties.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  .../{transmit-amplitude.yaml => phy-common-props.yaml}    | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>  rename Documentation/devicetree/bindings/phy/{transmit-amplitude.yaml => phy-common-props.yaml} (90%)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
