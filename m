Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D29BFC433F5
	for <linux-phy@archiver.kernel.org>; Thu,  3 Mar 2022 22:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UuKKegakUXpp7+Js390QfL2qgEppncujJG8y0VO6eDU=; b=HCkWu7rVm9MjO1
	pE5Pxmf/XQkISStboLrhmSrvvFpxNNPhXi2ZVKtiTaLCOVoVd3T9Hrx/QNQumaEU91NmrK2FqVo24
	dftshUFtlwxh4qayToYxcVI6sJDkDCJaxN8GMCLvgWb7f6PUHmAHWiqr24hLjp+pVC/s3lOSBawRz
	ifSAbClgiD1tcM6wrNOmZSzFmrcYKp8d1q+47AEfYx/LKJtd5Nm06YhOp8mzlF0I3eZ8+ZSm4vv0s
	kUu10JR8crkUURn3IpZIuN8wuH+W3yhVhFb/Qhy01d5g6CfTJ+LKnapzA6cp1v8mwDt81XuP1aIgf
	4NjoWj5JSYhXqiUNFi2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPuBF-007z2r-4l; Thu, 03 Mar 2022 22:44:17 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPuB2-007yz2-1Z; Thu, 03 Mar 2022 22:44:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646347444; x=1677883444;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LGs61FMx3IeFD9eB7+GKLp/0tGX59gvBzS7laALfEFU=;
 b=gX4uFsu2R6HawxUYjLyWK1/70X/xqH08A2+TPUYTwsEYQmpXXfu8nQlp
 DeE0lbi9OjpmjyPyhVRMDUnBbnY/SaH9RNz2UzCf2paBDMtcLag8G3qrY
 ZMkm4RlHWOfaVkqFie+jiI9Bdr73jGjJ0RX1pAkoBLEXJZlYT+EUcVaHE
 n8RYlzi/p7DbDSkEZ1NXL0LS0C+vshUUO/+wd2umUJbAv/41fTLNWNgRW
 BzECY22iwoWZcbzKr3p6NRmGcjeIiAi4JNtOMGIRBaURY7w5Zl5wxLtzk
 56/JBpBk7PfdLlIf1MPYDSCeA2nBJCvN/VRhdM2uyHtQ3mfJXjQh/Yjik A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="340267239"
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="340267239"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 14:44:02 -0800
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="642299153"
Received: from punajuuri.fi.intel.com (HELO paasikivi.fi.intel.com)
 ([10.237.72.43])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 14:43:57 -0800
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
 by paasikivi.fi.intel.com (Postfix) with SMTP id 33DDE20150;
 Fri,  4 Mar 2022 00:43:55 +0200 (EET)
Date: Fri, 4 Mar 2022 00:43:55 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 30/66] media: sun6i-csi: Add bridge v4l2 subdev with
 port management
Message-ID: <YiFEq1liAnBy0fkq@paasikivi.fi.intel.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-31-paul.kocialkowski@bootlin.com>
 <YgqbqVRinNxQ8+WV@paasikivi.fi.intel.com>
 <Yh+GZv9/rKQ2WbI2@aptenodytes>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yh+GZv9/rKQ2WbI2@aptenodytes>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_144404_149193_18809146 
X-CRM114-Status: GOOD (  22.24  )
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

On Wed, Mar 02, 2022 at 03:59:50PM +0100, Paul Kocialkowski wrote:
> > > +static int
> > > +sun6i_csi_bridge_notifier_bound(struct v4l2_async_notifier *notifier,
> > > +				struct v4l2_subdev *remote_subdev,
> > > +				struct v4l2_async_subdev *async_subdev)
> > > +{
> > > +	struct sun6i_csi_device *csi_dev =
> > > +		container_of(notifier, struct sun6i_csi_device,
> > > +			     bridge.notifier);
> > > +	struct sun6i_csi_bridge *bridge = &csi_dev->bridge;
> > > +	struct sun6i_csi_bridge_source *source = NULL;
> > > +	struct fwnode_handle *fwnode = dev_fwnode(csi_dev->dev);
> > > +	struct fwnode_handle *handle = NULL;
> > > +	bool enabled;
> > > +	int ret;
> > > +
> > > +	while ((handle = fwnode_graph_get_next_endpoint(fwnode, handle))) {
> > 
> > I'd instead store the information you need here in struct sun6i_csi_bridge.
> > You could remove the loop here.
> 
> Is there a different method for matching a remote subdev to a local port?
> The rationale here is that I need the handle for fwnode_graph_parse_endpoint
> but cannot get that handle from the remote subdev's fwnode pointer directly.

You generally shouldn't try to match fwnodes here as the V4L2 async
framework has already done that job. This information can be found behind
the async_subdev pointer.

See e.g. drivers/media/pci/intel/ipu3/ipu3-cio2-main.c for an example.

> 
> > > +		struct fwnode_endpoint endpoint = { 0 };
> > > +		struct fwnode_handle *remote_fwnode;
> > > +
> > > +		remote_fwnode = fwnode_graph_get_remote_port_parent(handle);
> > > +		if (!remote_fwnode)
> > > +			continue;
> > > +
> > > +		if (remote_fwnode != remote_subdev->fwnode)
> > > +			goto next;
> > > +
> > > +		ret = fwnode_graph_parse_endpoint(handle, &endpoint);
> > > +		if (ret < 0)
> > > +			goto next;
> > > +
> > > +		switch (endpoint.port) {
> > > +		case SUN6I_CSI_PORT_PARALLEL:
> > > +			source = &bridge->source_parallel;
> > > +			enabled = true;
> > > +			break;
> > > +		default:
> > > +			break;
> > > +		}
> > > +
> > > +next:
> > > +		fwnode_handle_put(remote_fwnode);
> > > +	}
> > > +
> > > +	if (!source)
> > > +		return -EINVAL;
> > > +
> > > +	source->subdev = remote_subdev;
> > > +
> > > +	return sun6i_csi_bridge_link(csi_dev, SUN6I_CSI_BRIDGE_PAD_SINK,
> > > +				     remote_subdev, enabled);
> > > +}
> > > +
> > > +static int
> > > +sun6i_csi_bridge_notifier_complete(struct v4l2_async_notifier *notifier)
> > > +{
> > > +	struct sun6i_csi_device *csi_dev =
> > > +		container_of(notifier, struct sun6i_csi_device,
> > > +			     bridge.notifier);
> > > +
> > > +	return sun6i_csi_v4l2_complete(csi_dev);
> > 
> > You could call v4l2_device_register_subdev_nodes() here.
> 
> That's definitely what sun6i_csi_v4l2_complete does (the diff is probably not
> very clear). Note that the wrapper is extended later on to register the capture
> video device for the no-isp path.

I could be missing something... Do you need to call
sun6i_csi_v4l2_complete() in multiple places or not? If not, then I think
it'd be probably better to just move the code here.

> 
> Maybe the capture registration could be kept in sun6i_csi_probe for the non-isp
> path and then the wrapper wouldn't be needed. I don't mind either way.

-- 
Kind regards,

Sakari Ailus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
