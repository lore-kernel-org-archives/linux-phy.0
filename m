Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36237EB64DA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jul 2023 06:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXK+Ew8AG5m+iWfHp7V3seb9ZfWh5xcpVkWHvEd8jXE=; b=Mrs4GVOO5OnABx
	5b+uLHYUx4VxjP4mIG8FlaBadvfc3vZRWuBtpLV8QNGYA1x9KbAbdBJuxrGYi5f8aRGqX+sQBcsuF
	Jw/zEjOevNEH8zlAeVVZzLVJ+ug+Bt85PoNwphos5J+3+BGX7znHya4cJy+pPGsbDzXdP252MEtpP
	fzqTixF2l7UVEtkvcBVlHESLxuZQi7MMLWzT4TQViY8z8aM9a+T+mF7IMrAyOT7uynlJGu0oC44i7
	QcxgXBNuD4xaXBdjRBez2NVQDV3HFTzkToK8ZwPb155/T8uXuKrkkHaM4r7z2ZmL/ELbtINhBa4l5
	ZTQ3F9LNVRkAP+YHNFtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0xB-005t98-2h;
	Wed, 19 Jul 2023 06:46:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0x9-005t7C-2j;
	Wed, 19 Jul 2023 06:46:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=PgmkH7lZ1LnLw9vfSZVinV55NCiFOuts7/fan0GeLI8=; b=O5kz2sfH4sZgiKNbeQs3S69moj
	xwZ6QCcfuf54l7uB4o3Y4s3GeZBE/wcQJLHxlUPFjMBWjETeeE5RFc3k2Nt2ig3ASEZH5/yM4RNAV
	5AOHoWT/nS2D6FMaiEZ2zL4oI3UT68vjvODy/xCiQxTUjZpsIey+e0k/2GgAYE4EPTyPzLmYbtLoO
	mlQDpKM2i9UozEFyHGdhBlJ4o8L9WaiIjZxoTtq8jJwbOX/3aUxN6d1j0E5WHptCnk8K2VNhoXFDe
	oj6OuLAZy/mFHpjkITvszYA3UkFtLCUICAqYFYGi4is9rvEbplSY2VN7scBXrhJU3BJ36KTjkC6fl
	8eIqBSyA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLtFy-00C9dd-2T;
	Tue, 18 Jul 2023 22:33:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7E8DF612BE;
	Tue, 18 Jul 2023 22:33:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BE48C433C7;
	Tue, 18 Jul 2023 22:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689719598;
	bh=6MTyHxtYHfxixee7H4APrS6m+5lNQnJTGfCeYq0C57M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g2TcgOiLAT9i4N5/MyNynSBpIypudtWwZXSRLPmdqjIzzj1UEXGBqP7rtSB3CLkid
	 2AC+4AJNSv2m7r/VcXveFj/x2pfYhaorP2ZsMW8JH/uS2TOY5J5cCpcirqp2R15L9X
	 aQwOHqV1t81As+vVAK+iWJe290SUEtQKxk8+jZ+sIVNJgaAlS6/NIDVlTULR0Dl123
	 1GaHZ67hNDbmMPhn7BKM/ubQdvvpGcli6L9bSXoYoWClvrzAktqNVpE20zj3nY3vaL
	 E4exEKKuvHqP8mfudddWyqYAlKrZM0VlGL882hOLhV6GE1/HGZV7NF0XWSXDtiiETq
	 /GYSjb/zsae6w==
Received: (nullmailer pid 2131885 invoked by uid 1000);
	Tue, 18 Jul 2023 22:33:16 -0000
Date: Tue, 18 Jul 2023 16:33:16 -0600
From: Rob Herring <robh@kernel.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org, festevam@gmail.com, linux-imx@nxp.com, daniel@ffwll.ch, oliver.brown@nxp.com, robh+dt@kernel.org, devicetree@vger.kernel.org, airlied@gmail.com, andrzej.hajda@intel.com, Laurent.pinchart@ideasonboard.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, s.hauer@pengutronix.de, alexander.stein@ew.tq-group.com, sam@ravnborg.org, linux-phy@lists.infradead.org, kernel@pengutronix.de, jonas@kwiboo.se, jernej.skrabec@gmail.com, dri-devel@lists.freedesktop.org, krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH v7 5/7] dt-bindings: phy: Add Freescale iMX8MQ DP and
 HDMI PHY
Message-ID: <168971959565.2131824.2007290149769233766.robh@kernel.org>
References: <cover.1689580812.git.Sandor.yu@nxp.com>
 <a782c749ecf8192a4f89ba270e30c7fb1d245c51.1689580812.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a782c749ecf8192a4f89ba270e30c7fb1d245c51.1689580812.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_233323_892090_228CE58E 
X-CRM114-Status: UNSURE (   9.16  )
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


On Mon, 17 Jul 2023 16:03:51 +0800, Sandor Yu wrote:
> Add bindings for Freescale iMX8MQ DP and HDMI PHY.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml  | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
