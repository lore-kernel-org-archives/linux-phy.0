Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B35E6C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 31 Dec 2021 09:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+SP7cituGrq8Gj9OXwxMiaFxEprbXdkRWzrugUbXv4=; b=toVfeJ+Fl9+Tyh
	+1nMuBNidWGnqO4jK7CwtXZviHQfIOv39WhNxXkjqhPvtnX7hRg4t3WbazonDqs3hzZv4kJZtP25J
	tDCYCNs9XKmqAk+V5vV0MnFK0aD+VvDlnpIF+2DrDgl3r3tDahy3zOelWa9cM2EFlxPWXvHz9Rfr6
	CUjlZwhcVrUZ3/rq0/b4CmFLfXovoQXMWhvkSKaRB8tm9UKuBbDt1sinCKJo30WBpJZ0R0x7ueVjM
	RKjy2q+MPxZjmwfGr6DSFVemPd3KDZ86XNJ39QJw019TKfDDGw/pE5gzuVqLbsgewUxnnlM7biP9k
	wudRT9gZ4uCcdnuLMT+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n3DvH-005qOG-3V; Fri, 31 Dec 2021 09:10:03 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n3DvE-005qNF-7f
 for linux-phy@lists.infradead.org; Fri, 31 Dec 2021 09:10:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640941800; x=1672477800;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JWKwkX5e7TvJaQyN9tQXOL6j40nXjQfEIfbGleJsNpw=;
 b=MR1JYhrNfJla9XUJCA9Kyo90ICs55Qpuyz7KYS1p9XQTW2m3FMaRNMgx
 eUv9UUdUBnuZtUKkeKfVX/Pz78HxJYRZLida9Saz4Ec8gUuJdICw1bza4
 TSUw5yHmpw09dpsY23f6KdyuwYJk51ADpWubP3UqfZk8Ji9oReiGWbZQd
 bOjAVnBfsffrmkYNKrOJNtGG+BOekoeLvpJlPK5SY5Q2BIyHLu5cImEpC
 ch/t9/WYNq4sWDsbReaeC98WU7rXUmGz4Ec/I1nvLeCGuUUNPDCEJtELi
 6zcjneWS+pikMwRCsTj8pZ1CA05ZBFRajoM350aVjEUxd2smyO8jow0d6 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10213"; a="302542810"
X-IronPort-AV: E=Sophos;i="5.88,251,1635231600"; d="scan'208";a="302542810"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2021 01:09:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,251,1635231600"; d="scan'208";a="487110838"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2021 01:09:52 -0800
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
 by paasikivi.fi.intel.com (Postfix) with ESMTP id 4AD9820192;
 Fri, 31 Dec 2021 11:09:50 +0200 (EET)
Date: Fri, 31 Dec 2021 11:09:50 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
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
Message-ID: <Yc7I3gZehc1lHn4Z@paasikivi.fi.intel.com>
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
 <20211228052116.1748443-4-bjorn.andersson@linaro.org>
 <Yc17Ssug3neFFXKN@kuha.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yc17Ssug3neFFXKN@kuha.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211231_011000_368092_70627C89 
X-CRM114-Status: GOOD (  33.14  )
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

Hi Bj=F6rn,

(And thanks to Heikki for cc'ing me!)

On Thu, Dec 30, 2021 at 11:26:34AM +0200, Heikki Krogerus wrote:
> +Andy, Dan and Sakari
> =

> On Mon, Dec 27, 2021 at 09:21:11PM -0800, Bjorn Andersson wrote:
> > In some cases multiple connections with the same connection id
> > needs to be resolved from a fwnode graph.
> > =

> > One such example is when separate hardware is used for performing muxin=
g and/or
> > orientation switching of the SuperSpeed and SBU lines in a USB-C
> > connector. In this case the connector needs to belong to a graph with
> > multiple matching remote endpoints, and the TypeC controller needs to be
> > able to resolve them both.
> > =

> > Add a new API that allows this kind of lookup.
> > =

> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> >  drivers/base/property.c  | 94 ++++++++++++++++++++++++++++++++++++++++
> >  include/linux/property.h |  5 +++
> >  2 files changed, 99 insertions(+)
> > =

> > diff --git a/drivers/base/property.c b/drivers/base/property.c
> > index cbe4fa298413..0aa0296fd991 100644
> > --- a/drivers/base/property.c
> > +++ b/drivers/base/property.c
> > @@ -1180,6 +1180,36 @@ fwnode_graph_devcon_match(struct fwnode_handle *=
fwnode, const char *con_id,
> >  	return NULL;
> >  }
> >  =

> > +static unsigned int fwnode_graph_devcon_matches(struct fwnode_handle *=
fwnode,
> > +						const char *con_id, void *data,
> > +						devcon_match_fn_t match,
> > +						void **matches,
> > +						unsigned int matches_len)
> > +{
> > +	struct fwnode_handle *node;
> > +	struct fwnode_handle *ep;
> > +	unsigned int count =3D 0;
> > +	void *ret;
> > +
> > +	fwnode_graph_for_each_endpoint(fwnode, ep) {
> > +		if (count >=3D matches_len) {
> > +			fwnode_handle_put(ep);
> > +			return count;
> > +		}
> > +
> > +		node =3D fwnode_graph_get_remote_port_parent(ep);
> > +		if (!fwnode_device_is_available(node))

The reference to node needs to be put here.

> > +			continue;
> > +
> > +		ret =3D match(node, con_id, data);
> > +		fwnode_handle_put(node);
> > +
> > +		if (ret)
> > +			matches[count++] =3D ret;
> > +	}
> > +	return count;
> > +}
> > +
> >  static void *
> >  fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
> >  		    void *data, devcon_match_fn_t match)
> > @@ -1202,6 +1232,35 @@ fwnode_devcon_match(struct fwnode_handle *fwnode=
, const char *con_id,
> >  	return NULL;
> >  }
> >  =

> > +static unsigned int fwnode_devcon_matches(struct fwnode_handle *fwnode,
> > +					  const char *con_id, void *data,
> > +					  devcon_match_fn_t match,
> > +					  void **matches,
> > +					  unsigned int matches_len)
> > +{
> > +	struct fwnode_handle *node;
> > +	unsigned int count =3D 0;
> > +	void *ret;
> > +	int i;

unsigned int, please.

> > +
> > +	for (i =3D 0; ; i++) {
> > +		if (count >=3D matches_len)
> > +			return count;
> > +
> > +		node =3D fwnode_find_reference(fwnode, con_id, i);
> > +		if (IS_ERR(node))
> > +			break;
> > +
> > +		ret =3D match(node, NULL, data);
> > +		fwnode_handle_put(node);
> > +
> > +		if (ret)
> > +			matches[count++] =3D ret;
> > +	}
> > +
> > +	return count;
> > +}
> > +
> >  /**
> >   * fwnode_connection_find_match - Find connection from a device node
> >   * @fwnode: Device node with the connection
> > @@ -1229,3 +1288,38 @@ void *fwnode_connection_find_match(struct fwnode=
_handle *fwnode,
> >  	return fwnode_devcon_match(fwnode, con_id, data, match);
> >  }
> >  EXPORT_SYMBOL_GPL(fwnode_connection_find_match);
> > +
> > +/**
> > + * fwnode_connection_find_matches - Find connections from a device node
> > + * @fwnode: Device node with the connection
> > + * @con_id: Identifier for the connection
> > + * @data: Data for the match function
> > + * @match: Function to check and convert the connection description
> > + * @matches: Array of pointers to fill with matches
> > + * @matches_len: Length of @matches
> > + *
> > + * Find up to @matches_len connections with unique identifier @con_id =
between
> > + * @fwnode and other device nodes. @match will be used to convert the
> > + * connection description to data the caller is expecting to be return=
ed
> > + * through the @matches array.

If the caller allocates the matches array, how does it know how large it
should be? Is there a need to provide a way to count the matches before
writing them to an array? Most similar functions do that by just setting the
array (matches) to NULL.

> > + *
> > + * Return: Number of matches resolved, of negative errno.
> > + */
> > +int fwnode_connection_find_matches(struct fwnode_handle *fwnode,
> > +				   const char *con_id, void *data,
> > +				   devcon_match_fn_t match,
> > +				   void **matches, unsigned int matches_len)
> > +{
> > +	unsigned int count;
> > +
> > +	if (!fwnode || !match || !matches)
> > +		return -EINVAL;
> > +
> > +	count =3D fwnode_graph_devcon_matches(fwnode, con_id, data, match,
> > +					    matches, matches_len);
> > +
> > +	return count + fwnode_devcon_matches(fwnode, con_id, data, match,
> > +					     matches + count,
> > +					     matches_len - count);
> > +}
> > +EXPORT_SYMBOL_GPL(fwnode_connection_find_matches);
> > diff --git a/include/linux/property.h b/include/linux/property.h
> > index 16f736c698a2..59484ccb260e 100644
> > --- a/include/linux/property.h
> > +++ b/include/linux/property.h
> > @@ -444,6 +444,11 @@ static inline void *device_connection_find_match(s=
truct device *dev,
> >  	return fwnode_connection_find_match(dev_fwnode(dev), con_id, data, ma=
tch);
> >  }
> >  =

> > +int fwnode_connection_find_matches(struct fwnode_handle *fwnode,
> > +				   const char *con_id, void *data,
> > +				   devcon_match_fn_t match,
> > +				   void **matches, unsigned int matches_len);
> > +
> >  /* -------------------------------------------------------------------=
------- */
> >  /* Software fwnode support - when HW description is incomplete or miss=
ing */
> >  =


-- =

Kind regards,

Sakari Ailus

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
