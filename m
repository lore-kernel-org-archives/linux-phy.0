Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF011C25B10
	for <linux-phy@archiver.kernel.org>; Mon,  6 May 2024 20:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RaypvgYnRFDDD9Gk9J+azG44xjUiUtfLEe3fDlWj7jc=; b=Nwye58NO8lbcvc3Xh6PhqJ3+ar
	YhbrN0BlV8HvufWlNzR/ahi96NoHA1rYOtqCaLTF/r/ccZ0X//1oGdfG9FNsz3uS9L12xjRNPRFHs
	BZ5qzhhi2pOG9YXR7S0qojfVM2Ywc+QPfuqOc1YhVhhzXx6Js+fLf9jL71AhKu288x6raDM3Kh+Td
	3HOE5Ww23SU12/1EZGoUsYf3n1FXyW7Ey1Q1yvB58UHSuZMmI/sAMwJI6FfmtEZ8WzZrEQlpuKHSu
	UmftXP6qNhWCUqI/uH0RuXH8z+Je7M9ZPVR9XXTjpeiEljSd1MQlers5tBwaf/0KIskixWdvImSy/
	XpSDfGug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44uz-00000008fTu-2BL7;
	Mon, 06 May 2024 20:26:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44uu-00000008fR6-0xUl;
	Mon, 06 May 2024 20:26:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AABAD61470;
	Mon,  6 May 2024 20:26:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 340EDC116B1;
	Mon,  6 May 2024 20:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715027191;
	bh=5FaFsrCBU94mRwsXyuX1NTdoCg00sIuyi7QCDGgdxuY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=X5jBP/Oalm1vimfJv8a8bJ2lC/hwUzE8jRbYArIZW6zWV9/WC17q8O1vfeaq9+Scr
	 DzpOL6XPw6jdh4AxeaDG2/YR49NdXmnvBdNiecxOMt+s0T9A1srdlQdUyeQYuiEbfB
	 3I4cl5KJLwovDDPBjeZ8QXn8/gWssyIv/2WxMocJo++YBkAf760x5PegRrdkbU4hvl
	 S1O00hdRTekYjk/1ChmyTEg0mJ52bYBdMxJt8Q2rSOaU2LGmCKKmyf6MtRtkThhSny
	 fAkJ/nlTXUmBmT+iSh5WSn60lzRDXUhe2/8AFu6YaVd60EGrqdln2SsIoiiAWCYHLZ
	 yW+pAp1qVdwFA==
Date: Mon, 06 May 2024 15:26:29 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Heiko Stuebner <heiko.stuebner@cherry.de>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, vkoul@kernel.org, quentin.schulz@cherry.de, 
 linux-arm-kernel@lists.infradead.org, kishon@kernel.org
In-Reply-To: <20240506124836.3621528-2-heiko@sntech.de>
References: <20240506124836.3621528-1-heiko@sntech.de>
 <20240506124836.3621528-2-heiko@sntech.de>
Message-Id: <171502718485.3739.8024239966625128556.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add Rockchip MIPI CSI/DSI PHY
 schema
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_132632_340546_6189E144 
X-CRM114-Status: UNSURE (   9.74  )
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


On Mon, 06 May 2024 14:48:35 +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> Add dt-binding schema for the MIPI CSI/DSI PHY found on
> Rockchip RK3588 SoCs.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---
>  .../phy/rockchip,rk3588-mipi-dcphy.yaml       | 76 +++++++++++++++++++
>  1 file changed, 76 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml: $id: Cannot determine base path from $id, relative path/filename doesn't match actual path or filename
 	 $id: http://devicetree.org/schemas/phy/phy-rockchip-mipidc.yaml
 	file: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.example.dtb: phy@feda0000: reg: [[0, 4275699712], [0, 65536]] is too long
	from schema $id: http://devicetree.org/schemas/phy/phy-rockchip-mipidc.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240506124836.3621528-2-heiko@sntech.de

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
