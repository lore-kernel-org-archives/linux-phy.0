Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53324C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  7 Feb 2022 16:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SwC/WXNr1qKFWvmT3+639iApXumdafCafuqfSdG+A88=; b=AoPw/hwK2SKyLS
	7DDqpRsuavAUzRNyWvpojC5VtirKOGJMBXM0fkC5QXNTQLYgJ/OaO4d90KlT4DhJX3cOfSSnUt194
	GP8kidTNm5ved1sRJOOnLT8UmoromDocXzh92Vqx2LhK+xpKm5s3Zt6OsOmldp5921CR9kOCfHSkO
	uECaLV8r4qFrARYjCFpteuT86ikHwLzJsZtKqNrJZHG7yd1/1TYdnso7AwV/0Rtx+RwZxn2wHe1TJ
	SDAc84G0AimZlvKOtkFeloM53fRFq4c3HflnW3JHz9EkMe/+JmNabz1KVbdHT809DB9XGEXOSNRl6
	0XL7cWCKQOP4IQrACLBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH6uU-00B5qz-By; Mon, 07 Feb 2022 16:30:38 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH6gS-00B1TK-Cz; Mon, 07 Feb 2022 16:16:10 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 85524A50;
 Mon,  7 Feb 2022 17:16:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1644250566;
 bh=aFkueRgWrJNvd3R2K1xflySlUNscsWztv2uokuEkh9I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nZK1tUgx86ylAnUIWlj2XVGt9I3p8J0h+L4yS9X2FR2ac1TZVfsz+sqmw6q32FLt2
 XBqJkltHOP84U3EkM6TflyU7nJTEp9yKRVvxoTkwwTap+mD0HWlOmAPjAMPuXn4L/f
 ACf9R+pOSDDzhStzAqw8cmk9fwefENv7D+vHkZjY=
Date: Mon, 7 Feb 2022 18:16:04 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 63/66] staging: media: Add support for the Allwinner
 A31 ISP
Message-ID: <YgFFxMd2htKvX0K1@pendragon.ideasonboard.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-64-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205185429.2278860-64-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_081608_635762_6CD0A478 
X-CRM114-Status: GOOD (  31.34  )
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

Hi Paul,

Thank you for the patch.

On Sat, Feb 05, 2022 at 07:54:26PM +0100, Paul Kocialkowski wrote:
> Some Allwinner platforms come with an Image Signal Processor, which
> supports various features in order to enhance and transform data
> received by image sensors into good-looking pictures. In most cases,
> the data is raw bayer, which gets internally converted to RGB and
> finally YUV, which is what the hardware produces.
> 
> This driver supports ISPs that are similar to the A31 ISP, which was
> the first standalone ISP found in Allwinner platforms. Simpler ISP
> blocks were found in the A10 and A20, where they are tied to a CSI
> controller. Newer generations of Allwinner SoCs (starting with the
> H6, H616, etc) come with a new camera subsystem and revised ISP.
> Even though these previous and next-generation ISPs are somewhat
> similar to the A31 ISP, they have enough significant differences to
> be out of the scope of this driver.
> 
> While the ISP supports many features, including 3A and many
> enhancement blocks, this implementation is limited to the following:
> - V3s (V3/S3) platform support;
> - Bayer media bus formats as input;

Greyscale formats would also be nice to have, if the hardware can
support that (it mostly just requires the ability to disable the CFA
interpolation).

> - Semi-planar YUV (NV12/NV21) as output;

Packed YUV would also be useful if the hardware supports it.

> - Debayering with per-component gain and offset configuration;
> - 2D noise filtering with configurable coefficients.
> 
> Since many features are missing from the associated uAPI, the driver
> is aimed to integrate staging until all features are properly
> described.
> 
> On the technical side, it uses the v4l2 and media controller APIs,
> with a video node for capture, a processor subdev and a video node
> for parameters submission. A specific uAPI structure and associated
> v4l2 meta format are used to configure parameters of the supported
> modules.
> 
> One particular thing about the hardware is that configuration for
> module registers needs to be stored in a DMA buffer and gets copied
> to actual registers by the hardware at the next vsync, when instructed
> by a flag. This is handled by the "state" mechanism in the driver.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  drivers/staging/media/sunxi/Kconfig           |   1 +
>  drivers/staging/media/sunxi/Makefile          |   1 +
>  drivers/staging/media/sunxi/sun6i-isp/Kconfig |  13 +
>  .../staging/media/sunxi/sun6i-isp/Makefile    |   4 +
>  .../staging/media/sunxi/sun6i-isp/sun6i_isp.c | 572 +++++++++++++
>  .../staging/media/sunxi/sun6i-isp/sun6i_isp.h |  86 ++
>  .../media/sunxi/sun6i-isp/sun6i_isp_capture.c | 751 ++++++++++++++++++
>  .../media/sunxi/sun6i-isp/sun6i_isp_capture.h |  78 ++
>  .../media/sunxi/sun6i-isp/sun6i_isp_params.c  | 573 +++++++++++++
>  .../media/sunxi/sun6i-isp/sun6i_isp_params.h  |  52 ++
>  .../media/sunxi/sun6i-isp/sun6i_isp_proc.c    | 599 ++++++++++++++
>  .../media/sunxi/sun6i-isp/sun6i_isp_proc.h    |  61 ++
>  .../media/sunxi/sun6i-isp/sun6i_isp_reg.h     | 275 +++++++
>  .../sunxi/sun6i-isp/uapi/sun6i-isp-config.h   |  43 +

Could you add a TODO file to list the issues that need to be fixed for
the driver to move out of staging ? I'll already propose one entry:

- Add support in libcamera

This isn't required to merge the driver in staging as long as ABI
compatibility doesn't need to be preserved until the driver is moved out
of staging.

>  14 files changed, 3109 insertions(+)
>  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/Kconfig
>  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/Makefile
>  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp.c
>  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp.h
>  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_capture.c
>  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_capture.h
>  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_params.c
>  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_params.h
>  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_proc.c
>  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_proc.h
>  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_reg.h
>  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/uapi/sun6i-isp-config.h

[snip]

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
