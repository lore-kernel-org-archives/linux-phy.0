Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 818BAC433EF
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jan 2022 14:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iv3wWXVm/pWYU4802CB6dUfgHrVKii/a6GSBH6a8jSo=; b=MYoO699nrNexk8
	Jdsg/ObmIgW1l58ptS57XepEs9npKT0FPWNMmPb3KwjMh+2ZjeXkQoJTqKMiYQBAYIIaaFeK6NcQf
	sOAXy29SGmpBVpbIYJwK2buwxXb3Y31Ou3/G6rsY6acxpH4J+ZCuGlzfThBBNX2u5wRnMFsKhrnbE
	S+WoLL0Z3Zmm4PuKM3ORwov3hgtA0UQi6Ee2XMBwXV+5667vjWznQRQzVpLdBUEbLhbPu/LuLmC2m
	zLxI0pTaKf0AQMrBOo/G0DXVuUXcf1BgERcOjlWOAy8OaXZmqmJz3KVduOmBkp0vEl5sA9UF//joi
	Oeg/hGv5EMEN3KUu3slA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5qLN-004Dru-Rj; Fri, 07 Jan 2022 14:35:49 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5qJr-004CrH-KI
 for linux-phy@lists.infradead.org; Fri, 07 Jan 2022 14:34:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641566055; x=1673102055;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DXgdDcZzD0elNYWBm1IixW+PtrsX2vdFCxvYPLrWCGc=;
 b=gZ+SC1r6USJ4Wru4gsVPIHJy57OAf3p3sinWiJnzb1lPs5eDcK8j7oQZ
 RxITv7x3Wnh4L8lEueAbnJKb4yPLQhsfJwtxix1NHLOmsZFfEz9R5hi36
 HzHrfqyukXIQlsTag0jzpY6vNjsxzs02HdqER4lzRwBasdtV1b9uAqcdu
 l1QIGq2xiUTPPID0U+SqOMlyK10tpIvjAorj3+Ca6dhYxnx6kqhsx3vkB
 Kpvsv84YqdHo2XjjBh1E53AnERF/VTEj2tzk9g+hci55QBlirYMTFDTMw
 J5sjCVLAFe3J5EahM9ocLIwQDktV0JkVTaEx2jhccUjbFjbj1ZJKVhjhp A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="243073424"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="243073424"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 06:34:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="668784047"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 06:34:11 -0800
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
 by paasikivi.fi.intel.com (Postfix) with ESMTP id 9160D202B9;
 Fri,  7 Jan 2022 16:33:39 +0200 (EET)
Date: Fri, 7 Jan 2022 16:33:39 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Daniel Scally <djrscally@gmail.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH 3/8] device property: Helper to match multiple connections
Message-ID: <YdhPQ0Wuz63JBKaR@paasikivi.fi.intel.com>
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
 <20211228052116.1748443-4-bjorn.andersson@linaro.org>
 <Yc17Ssug3neFFXKN@kuha.fi.intel.com>
 <Yc7I3gZehc1lHn4Z@paasikivi.fi.intel.com> <YdYC8DeF1i9a3RnP@ripper>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YdYC8DeF1i9a3RnP@ripper>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_063415_725908_6D8DC1D7 
X-CRM114-Status: GOOD (  50.46  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Jan 05, 2022 at 12:43:28PM -0800, Bjorn Andersson wrote:
> On Fri 31 Dec 01:09 PST 2021, Sakari Ailus wrote:
> =

> > Hi Bj=F6rn,
> > =

> > (And thanks to Heikki for cc'ing me!)
> > =

> > On Thu, Dec 30, 2021 at 11:26:34AM +0200, Heikki Krogerus wrote:
> > > +Andy, Dan and Sakari
> > > =

> > > On Mon, Dec 27, 2021 at 09:21:11PM -0800, Bjorn Andersson wrote:
> > > > In some cases multiple connections with the same connection id
> > > > needs to be resolved from a fwnode graph.
> > > > =

> > > > One such example is when separate hardware is used for performing m=
uxing and/or
> > > > orientation switching of the SuperSpeed and SBU lines in a USB-C
> > > > connector. In this case the connector needs to belong to a graph wi=
th
> > > > multiple matching remote endpoints, and the TypeC controller needs =
to be
> > > > able to resolve them both.
> > > > =

> > > > Add a new API that allows this kind of lookup.
> > > > =

> > > > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > > ---
> > > >  drivers/base/property.c  | 94 ++++++++++++++++++++++++++++++++++++=
++++
> > > >  include/linux/property.h |  5 +++
> > > >  2 files changed, 99 insertions(+)
> > > > =

> > > > diff --git a/drivers/base/property.c b/drivers/base/property.c
> > > > index cbe4fa298413..0aa0296fd991 100644
> > > > --- a/drivers/base/property.c
> > > > +++ b/drivers/base/property.c
> > > > @@ -1180,6 +1180,36 @@ fwnode_graph_devcon_match(struct fwnode_hand=
le *fwnode, const char *con_id,
> > > >  	return NULL;
> > > >  }
> > > >  =

> > > > +static unsigned int fwnode_graph_devcon_matches(struct fwnode_hand=
le *fwnode,
> > > > +						const char *con_id, void *data,
> > > > +						devcon_match_fn_t match,
> > > > +						void **matches,
> > > > +						unsigned int matches_len)
> > > > +{
> > > > +	struct fwnode_handle *node;
> > > > +	struct fwnode_handle *ep;
> > > > +	unsigned int count =3D 0;
> > > > +	void *ret;
> > > > +
> > > > +	fwnode_graph_for_each_endpoint(fwnode, ep) {
> > > > +		if (count >=3D matches_len) {
> > > > +			fwnode_handle_put(ep);
> > > > +			return count;
> > > > +		}
> > > > +
> > > > +		node =3D fwnode_graph_get_remote_port_parent(ep);
> > > > +		if (!fwnode_device_is_available(node))
> > =

> > The reference to node needs to be put here.
> > =

> =

> You're right, thanks!
> =

> > > > +			continue;
> > > > +
> > > > +		ret =3D match(node, con_id, data);
> > > > +		fwnode_handle_put(node);
> > > > +
> > > > +		if (ret)
> > > > +			matches[count++] =3D ret;
> > > > +	}
> > > > +	return count;
> > > > +}
> > > > +
> > > >  static void *
> > > >  fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_=
id,
> > > >  		    void *data, devcon_match_fn_t match)
> > > > @@ -1202,6 +1232,35 @@ fwnode_devcon_match(struct fwnode_handle *fw=
node, const char *con_id,
> > > >  	return NULL;
> > > >  }
> > > >  =

> > > > +static unsigned int fwnode_devcon_matches(struct fwnode_handle *fw=
node,
> > > > +					  const char *con_id, void *data,
> > > > +					  devcon_match_fn_t match,
> > > > +					  void **matches,
> > > > +					  unsigned int matches_len)
> > > > +{
> > > > +	struct fwnode_handle *node;
> > > > +	unsigned int count =3D 0;
> > > > +	void *ret;
> > > > +	int i;
> > =

> > unsigned int, please.
> > =

> =

> Sounds good.
> =

> > > > +
> > > > +	for (i =3D 0; ; i++) {
> > > > +		if (count >=3D matches_len)
> > > > +			return count;
> > > > +
> > > > +		node =3D fwnode_find_reference(fwnode, con_id, i);
> > > > +		if (IS_ERR(node))
> > > > +			break;
> > > > +
> > > > +		ret =3D match(node, NULL, data);
> > > > +		fwnode_handle_put(node);
> > > > +
> > > > +		if (ret)
> > > > +			matches[count++] =3D ret;
> > > > +	}
> > > > +
> > > > +	return count;
> > > > +}
> > > > +
> > > >  /**
> > > >   * fwnode_connection_find_match - Find connection from a device no=
de
> > > >   * @fwnode: Device node with the connection
> > > > @@ -1229,3 +1288,38 @@ void *fwnode_connection_find_match(struct fw=
node_handle *fwnode,
> > > >  	return fwnode_devcon_match(fwnode, con_id, data, match);
> > > >  }
> > > >  EXPORT_SYMBOL_GPL(fwnode_connection_find_match);
> > > > +
> > > > +/**
> > > > + * fwnode_connection_find_matches - Find connections from a device=
 node
> > > > + * @fwnode: Device node with the connection
> > > > + * @con_id: Identifier for the connection
> > > > + * @data: Data for the match function
> > > > + * @match: Function to check and convert the connection description
> > > > + * @matches: Array of pointers to fill with matches
> > > > + * @matches_len: Length of @matches
> > > > + *
> > > > + * Find up to @matches_len connections with unique identifier @con=
_id between
> > > > + * @fwnode and other device nodes. @match will be used to convert =
the
> > > > + * connection description to data the caller is expecting to be re=
turned
> > > > + * through the @matches array.
> > =

> > If the caller allocates the matches array, how does it know how large it
> > should be? Is there a need to provide a way to count the matches before
> > writing them to an array? Most similar functions do that by just settin=
g the
> > array (matches) to NULL.
> > =

> =

> This is a very relevant comment and I did look for ways to handle this
> as I came up with the patch.
> =

> I think the typical mechanism would be to allow @matches to be NULL, in
> which case we iterate over objects and return the number of matches, so
> that the caller can allocate an appropriately sized array and call the
> API again.
> =

> But the "match" function simply returns a pointer to something and
> looking at the example of the typec_{mux,switch} this pointer points to
> a member of an object which has a struct device which is refcounted.
> =

> As such, we can't simply discard the returned object. We have to pass it
> back to the caller, whom knows what "match" did and is able to reverse
> that.
> =

> I looked at changing the callback and I looked at using krealloc() to
> grow an array dynamically.

krealloc() may also fail...

> =

> =

> But looking at the use case in mind; finding entities that might need to
> react to a USB Type-C event I have a need for 2 matches, and 3 seems
> plausible. Beyond that the largest of_graph I have ever dealt with has 6
> endpoints.
> =

> While it isn't relevant to use this API for my 6-endpoint case, it would
> result in @matches having to be 48 bytes of pointers. And once the call
> returns, the actual number of pointers needed is known and the long-term
> storage can be re-allocated as necessary based on the return value.
> =

> As such, I dropped the idea of making something fancier and more
> dynamic, for the sake of simplicity. Perhaps I'm missing some cool use
> case where this is infeasible?

Another option would be to use a fixed-size array for the purpose. Assuming
this will remain a small number, a single global macro could be used to set
the maximum number that could be also easily increased if needed.

On the other hand, if this number remains specific to the caller as it
would seem, then I guess a caller-set value (as implemented now) remains a
fine option, too.

-- =

Kind regards,

Sakari Ailus

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
