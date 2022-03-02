Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 343B0C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  2 Mar 2022 13:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eX93J+VJd3K2ZqZrytDEvDOCwNfJ8teCqjyHJhBqSFg=; b=vIfIpBzaG2VL7M
	YY3+Fv1gQFEX1jme09CF8GwCHm9oiVqKKf8I1HSFdPUtiIODW+WNQAbP1hSUxJr7SG/pSLvEsb0mB
	8iNmNILy0kVJ+VfA8FK9vo0R0o+agIr6fSMBtWvXoi6d7Vt+cl/0JMnazh7hO6Ex1dpVwhmkkEenY
	PKoNNLJSI5Dg1DqRsauqf70qqHRl6xQfenfoNwneVwMoi8/ky5XBXz+5HRmyOSzLXZgWKaIPYr+F4
	Naao5q9AqydHw7UWcKWlR1LJyt4sbUEmzp3lEv8D5V10EIP/bQs6zur5NncdfUgeiaIOeEoe3r9Ab
	2ZXji2r2+TTRMyc7yAQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPP7I-002pTj-Lr; Wed, 02 Mar 2022 13:34:08 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPP73-002pOH-7c; Wed, 02 Mar 2022 13:33:55 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D2BCE9FF;
 Wed,  2 Mar 2022 14:33:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1646228030;
 bh=RDOP6CHuRPV47uUz35zmTXfqgF44gD4Z+83Jzns/7Ac=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MKlZ8NBfN7gO6YWA73a7YQ+0JidqlTFuRBXjTH25bMyF1XbyVJEnWe10Nv2IFKEAz
 aoYX4VHy+GDwkWEQgk6LqwLAcPiQki8BEZHMl38Qj/EoUjGafaKXvikudfGJWdKBQf
 9EWArd/2Oh32WcA+kIU1e4TVO547U9AlGA4ni1GA=
Date: Wed, 2 Mar 2022 15:33:37 +0200
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
Message-ID: <Yh9yMYTJly5oDroa@pendragon.ideasonboard.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-64-paul.kocialkowski@bootlin.com>
 <YgFFxMd2htKvX0K1@pendragon.ideasonboard.com>
 <Yh5CuyEJ+WhIAzYm@aptenodytes>
 <Yh8wD8lF2Hs+cxD7@pendragon.ideasonboard.com>
 <Yh9v2Tez3x6rwhB3@aptenodytes>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yh9v2Tez3x6rwhB3@aptenodytes>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_053353_472506_BE9780DF 
X-CRM114-Status: GOOD (  64.05  )
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

On Wed, Mar 02, 2022 at 02:23:37PM +0100, Paul Kocialkowski wrote:
> On Wed 02 Mar 22, 10:51, Laurent Pinchart wrote:
> > On Tue, Mar 01, 2022 at 04:58:51PM +0100, Paul Kocialkowski wrote:
> > > On Mon 07 Feb 22, 18:16, Laurent Pinchart wrote:
> > > > On Sat, Feb 05, 2022 at 07:54:26PM +0100, Paul Kocialkowski wrote:
> > > > > Some Allwinner platforms come with an Image Signal Processor, which
> > > > > supports various features in order to enhance and transform data
> > > > > received by image sensors into good-looking pictures. In most cases,
> > > > > the data is raw bayer, which gets internally converted to RGB and
> > > > > finally YUV, which is what the hardware produces.
> > > > > 
> > > > > This driver supports ISPs that are similar to the A31 ISP, which was
> > > > > the first standalone ISP found in Allwinner platforms. Simpler ISP
> > > > > blocks were found in the A10 and A20, where they are tied to a CSI
> > > > > controller. Newer generations of Allwinner SoCs (starting with the
> > > > > H6, H616, etc) come with a new camera subsystem and revised ISP.
> > > > > Even though these previous and next-generation ISPs are somewhat
> > > > > similar to the A31 ISP, they have enough significant differences to
> > > > > be out of the scope of this driver.
> > > > > 
> > > > > While the ISP supports many features, including 3A and many
> > > > > enhancement blocks, this implementation is limited to the following:
> > > > > - V3s (V3/S3) platform support;
> > > > > - Bayer media bus formats as input;
> > > > 
> > > > Greyscale formats would also be nice to have, if the hardware can
> > > > support that (it mostly just requires the ability to disable the CFA
> > > > interpolation).
> > > 
> > > As far as I know there's no support for grayscale, only bayer formats
> > > and YUV.
> > > 
> > > > > - Semi-planar YUV (NV12/NV21) as output;
> > > > 
> > > > Packed YUV would also be useful if the hardware supports it.
> > > 
> > > Same here, it only supports planar and semi-planar YUV as output.
> > > 
> > > > > - Debayering with per-component gain and offset configuration;
> > > > > - 2D noise filtering with configurable coefficients.
> > > > > 
> > > > > Since many features are missing from the associated uAPI, the driver
> > > > > is aimed to integrate staging until all features are properly
> > > > > described.
> > > > > 
> > > > > On the technical side, it uses the v4l2 and media controller APIs,
> > > > > with a video node for capture, a processor subdev and a video node
> > > > > for parameters submission. A specific uAPI structure and associated
> > > > > v4l2 meta format are used to configure parameters of the supported
> > > > > modules.
> > > > > 
> > > > > One particular thing about the hardware is that configuration for
> > > > > module registers needs to be stored in a DMA buffer and gets copied
> > > > > to actual registers by the hardware at the next vsync, when instructed
> > > > > by a flag. This is handled by the "state" mechanism in the driver.
> > > > > 
> > > > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > > ---
> > > > >  drivers/staging/media/sunxi/Kconfig           |   1 +
> > > > >  drivers/staging/media/sunxi/Makefile          |   1 +
> > > > >  drivers/staging/media/sunxi/sun6i-isp/Kconfig |  13 +
> > > > >  .../staging/media/sunxi/sun6i-isp/Makefile    |   4 +
> > > > >  .../staging/media/sunxi/sun6i-isp/sun6i_isp.c | 572 +++++++++++++
> > > > >  .../staging/media/sunxi/sun6i-isp/sun6i_isp.h |  86 ++
> > > > >  .../media/sunxi/sun6i-isp/sun6i_isp_capture.c | 751 ++++++++++++++++++
> > > > >  .../media/sunxi/sun6i-isp/sun6i_isp_capture.h |  78 ++
> > > > >  .../media/sunxi/sun6i-isp/sun6i_isp_params.c  | 573 +++++++++++++
> > > > >  .../media/sunxi/sun6i-isp/sun6i_isp_params.h  |  52 ++
> > > > >  .../media/sunxi/sun6i-isp/sun6i_isp_proc.c    | 599 ++++++++++++++
> > > > >  .../media/sunxi/sun6i-isp/sun6i_isp_proc.h    |  61 ++
> > > > >  .../media/sunxi/sun6i-isp/sun6i_isp_reg.h     | 275 +++++++
> > > > >  .../sunxi/sun6i-isp/uapi/sun6i-isp-config.h   |  43 +
> > > > 
> > > > Could you add a TODO file to list the issues that need to be fixed for
> > > > the driver to move out of staging ? I'll already propose one entry:
> > > > 
> > > > - Add support in libcamera
> > > 
> > > Maybe it would be good to narrow down what level of support you have in mind
> > > here. Just adding basic support fort the pipeline is probably doable, but
> > > developing complex 3A algorithms would require very significant effort and
> > > it would be a shame that this prevents the driver from leaving staging.
> > > 
> > > I think another obvious task would be to have a complete uAPI that reflects
> > > all modules that are part of the ISP.
> > > 
> > > What do you think?
> > 
> > The reason why I'd like to see libcamera support for the ISP driver is
> > to ensure that the kernel API is adequate for real use cases. The API
> > can be split in three parts:
> > 
> > - Pipeline configuration (this includes the media controller topology,
> >   link setting, subdev pad format/selection rectangle configuration,
> >   ...)
> > - ISP parameters
> > - ISP statistics
> > 
> > A pipeline handler implementation will cover the first parts. The second
> > and third parts need to be tested too, but we don't need to implement
> > every single feature. A very simple algorithm that demonstrates
> > statistics can be captured and ISP parameters can be set should be
> > enough to test and exercise the API in real scenarios. We're working on
> > making basic AE and AWB algorithm implementations generic (or at least
> > creating generic building blocks that can easily be assembled to create
> > those algorithms, as the ISP statistics and parameters are specific to
> > the ISP and thus require some ISP-specific code), so that should become
> > a fairly easy task soon. I expect most of the work to go in the pipeline
> > handler.
> > 
> > Does this sound fair to you ?
> 
> Yes I understand that these aspects need to be tested too, but I feel like
> having an implementation with a feedback look (even rudimentary and using
> some generic helpers) would be quite a stretch.

Don't be scared, it's not that difficult :-) A very basic feedback loop
is easier to implement than the code that configures the pipeline and
tracks buffers.

> It would probably be sufficient to have some demo code that can receive stats
> and set parameters, but without necessarily any connection between the two.
> As such it's also my feeling that a standalone demo program could be easier
> to manage for that purpose than libcamera support.
> 
> So how about making the requirement that a (free software) userspace
> implementration must demonstrate ability to read relevant statistics
> from the ISP and (independently) control parameters that affect the output?

It's easy to create a test tool to demonstrate that the driver works
fine, when the purpose of the test tool is to exercise the driver API in
the way intended by the driver author. What such a test tool fails to
demonstrate is the fitness of the API for real uses cases. This is why
KMS requires userspace APIs to be exercised in a real display stack
(X.org, Weston, Android hwcomposer, ...) and not just in a test tool.
We're following the same rationale here.

> > > > This isn't required to merge the driver in staging as long as ABI
> > > > compatibility doesn't need to be preserved until the driver is moved out
> > > > of staging.
> > > >
> > > > >  14 files changed, 3109 insertions(+)
> > > > >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/Kconfig
> > > > >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/Makefile
> > > > >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp.c
> > > > >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp.h
> > > > >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_capture.c
> > > > >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_capture.h
> > > > >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_params.c
> > > > >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_params.h
> > > > >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_proc.c
> > > > >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_proc.h
> > > > >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_reg.h
> > > > >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/uapi/sun6i-isp-config.h
> > > > 
> > > > [snip]

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
