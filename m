Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B8EBC433FE
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jan 2022 20:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oQp8k2WgVOmZX2z+GqCHu27p+ycQL8cNouaIlb73DY=; b=LltGOPq0tHfaqe
	brHOgqqFE+HB2X99EmJea3RZVGnwgItUm1bpo7SpLYnrGuYeiJCPB8lxLndC2m9R/YH2DxltjSuza
	VO0cSmn7k0zHWEkLtjLMbOaoFxaHh1PuyeVxBfYbenTuShRv/jX1iogWtCKwkjdX69hoBfPJ2mFx4
	eVuhNOPRRHWbNK9oOPLlaBP+jUZsXWLS+9sNimwzazQOD397rRylwF2wr/mGF5ebqGLbkawbHw6K1
	CAiIx3QOptp9GxKn2DciaRSD6EGG2cOWDQLJzron23itHDbKYJet96XmoAVIuyZxuDF19/WpK2vkp
	6Z1Emx26pfByik1SHVCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5D7M-00FntU-Vt; Wed, 05 Jan 2022 20:42:44 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5D7K-00Fns9-11
 for linux-phy@lists.infradead.org; Wed, 05 Jan 2022 20:42:43 +0000
Received: by mail-ot1-x32c.google.com with SMTP id
 t23-20020a9d7757000000b0059078ccf03dso716224otl.7
 for <linux-phy@lists.infradead.org>; Wed, 05 Jan 2022 12:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=GqKtuhkPiMoPzGt6j5rJjkXpaGOAonB+8jqGdQJ30AU=;
 b=k5quMqvUgiT2ESX4nHdif3wTGD4JTrRIyVSYUGAUzNuMwItyG7xSG/8T320z4D6/cl
 QRJAdLwwVTNlyzaokVZczMhAawT9VIhvPnliKhWAAIzDzMTSAopHGcZ0EC6ROlnVHqJ7
 ymRlqyvN27bEBwDj5TrQ+ZzJyr8Rgddjl3ayfk1BvgtVYh26/S9X8J1r1dKT9mtyc7vD
 k+99Cyht5XtCpeS6jrEe4bngyOcjLnkOPBIaCx9Js9ZaSyfVcXWIsxsDYA3XjmA7dQeW
 Co3A6uC9nV8yJgBH2CnhdgTFSCuQxXGu9xXdY905uUZqvbRa1amrD99COlZXiqSog0Uj
 vyPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=GqKtuhkPiMoPzGt6j5rJjkXpaGOAonB+8jqGdQJ30AU=;
 b=QOMWTEvGbblku5MEiVwr2sL5DSQLcy0uCY7vzWokM7fXCJuMQi0kU4jSqQ0hpE0AJk
 1+G0POiyekE6kTTRltqzReahvt1OeYEJyNzCgZemze/WbHdz4iQV7ebzu0BK9XfdTDpn
 SNltmO1XnLxBySb/5+Q1nS6pobR0qVUjhUZ8Cy7looSCHpfIgNX9hViSNJ7nMpTyfeR5
 ZStwqbVQtd2rTLPAWJT6ZDrcBIWvEtYPm4h9OzNUhRS49opY6DKyagsHOhnihtepjP8M
 tq++XRERJeSxGeB+WSIMwL5v2AxnFBiB49dufy+kBiJOqxCOdAEUIzy8ovRJzPwx+GIB
 sMeg==
X-Gm-Message-State: AOAM533CT03m/vwO9G10pgDinqiO2cewPHO6Is6dV48F0dFqFWqjrAVD
 QVw85GHe4O4otwoBWP1OaB5iRg==
X-Google-Smtp-Source: ABdhPJwn09fZPAkcMlQq+rmMAWcs2U0izBZKiAM3vzg/0ktiMRpswUHye3oJ0Gn5utow2lQjPMgFRQ==
X-Received: by 2002:a9d:313:: with SMTP id 19mr38383642otv.2.1641415359717;
 Wed, 05 Jan 2022 12:42:39 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id f27sm8430162otc.16.2022.01.05.12.42.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Jan 2022 12:42:38 -0800 (PST)
Date: Wed, 5 Jan 2022 12:43:28 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
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
Message-ID: <YdYC8DeF1i9a3RnP@ripper>
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
 <20211228052116.1748443-4-bjorn.andersson@linaro.org>
 <Yc17Ssug3neFFXKN@kuha.fi.intel.com>
 <Yc7I3gZehc1lHn4Z@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yc7I3gZehc1lHn4Z@paasikivi.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_124242_147275_29D341F0 
X-CRM114-Status: GOOD (  45.18  )
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

On Fri 31 Dec 01:09 PST 2021, Sakari Ailus wrote:

> Hi Bj=F6rn,
> =

> (And thanks to Heikki for cc'ing me!)
> =

> On Thu, Dec 30, 2021 at 11:26:34AM +0200, Heikki Krogerus wrote:
> > +Andy, Dan and Sakari
> > =

> > On Mon, Dec 27, 2021 at 09:21:11PM -0800, Bjorn Andersson wrote:
> > > In some cases multiple connections with the same connection id
> > > needs to be resolved from a fwnode graph.
> > > =

> > > One such example is when separate hardware is used for performing mux=
ing and/or
> > > orientation switching of the SuperSpeed and SBU lines in a USB-C
> > > connector. In this case the connector needs to belong to a graph with
> > > multiple matching remote endpoints, and the TypeC controller needs to=
 be
> > > able to resolve them both.
> > > =

> > > Add a new API that allows this kind of lookup.
> > > =

> > > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > ---
> > >  drivers/base/property.c  | 94 ++++++++++++++++++++++++++++++++++++++=
++
> > >  include/linux/property.h |  5 +++
> > >  2 files changed, 99 insertions(+)
> > > =

> > > diff --git a/drivers/base/property.c b/drivers/base/property.c
> > > index cbe4fa298413..0aa0296fd991 100644
> > > --- a/drivers/base/property.c
> > > +++ b/drivers/base/property.c
> > > @@ -1180,6 +1180,36 @@ fwnode_graph_devcon_match(struct fwnode_handle=
 *fwnode, const char *con_id,
> > >  	return NULL;
> > >  }
> > >  =

> > > +static unsigned int fwnode_graph_devcon_matches(struct fwnode_handle=
 *fwnode,
> > > +						const char *con_id, void *data,
> > > +						devcon_match_fn_t match,
> > > +						void **matches,
> > > +						unsigned int matches_len)
> > > +{
> > > +	struct fwnode_handle *node;
> > > +	struct fwnode_handle *ep;
> > > +	unsigned int count =3D 0;
> > > +	void *ret;
> > > +
> > > +	fwnode_graph_for_each_endpoint(fwnode, ep) {
> > > +		if (count >=3D matches_len) {
> > > +			fwnode_handle_put(ep);
> > > +			return count;
> > > +		}
> > > +
> > > +		node =3D fwnode_graph_get_remote_port_parent(ep);
> > > +		if (!fwnode_device_is_available(node))
> =

> The reference to node needs to be put here.
> =


You're right, thanks!

> > > +			continue;
> > > +
> > > +		ret =3D match(node, con_id, data);
> > > +		fwnode_handle_put(node);
> > > +
> > > +		if (ret)
> > > +			matches[count++] =3D ret;
> > > +	}
> > > +	return count;
> > > +}
> > > +
> > >  static void *
> > >  fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
> > >  		    void *data, devcon_match_fn_t match)
> > > @@ -1202,6 +1232,35 @@ fwnode_devcon_match(struct fwnode_handle *fwno=
de, const char *con_id,
> > >  	return NULL;
> > >  }
> > >  =

> > > +static unsigned int fwnode_devcon_matches(struct fwnode_handle *fwno=
de,
> > > +					  const char *con_id, void *data,
> > > +					  devcon_match_fn_t match,
> > > +					  void **matches,
> > > +					  unsigned int matches_len)
> > > +{
> > > +	struct fwnode_handle *node;
> > > +	unsigned int count =3D 0;
> > > +	void *ret;
> > > +	int i;
> =

> unsigned int, please.
> =


Sounds good.

> > > +
> > > +	for (i =3D 0; ; i++) {
> > > +		if (count >=3D matches_len)
> > > +			return count;
> > > +
> > > +		node =3D fwnode_find_reference(fwnode, con_id, i);
> > > +		if (IS_ERR(node))
> > > +			break;
> > > +
> > > +		ret =3D match(node, NULL, data);
> > > +		fwnode_handle_put(node);
> > > +
> > > +		if (ret)
> > > +			matches[count++] =3D ret;
> > > +	}
> > > +
> > > +	return count;
> > > +}
> > > +
> > >  /**
> > >   * fwnode_connection_find_match - Find connection from a device node
> > >   * @fwnode: Device node with the connection
> > > @@ -1229,3 +1288,38 @@ void *fwnode_connection_find_match(struct fwno=
de_handle *fwnode,
> > >  	return fwnode_devcon_match(fwnode, con_id, data, match);
> > >  }
> > >  EXPORT_SYMBOL_GPL(fwnode_connection_find_match);
> > > +
> > > +/**
> > > + * fwnode_connection_find_matches - Find connections from a device n=
ode
> > > + * @fwnode: Device node with the connection
> > > + * @con_id: Identifier for the connection
> > > + * @data: Data for the match function
> > > + * @match: Function to check and convert the connection description
> > > + * @matches: Array of pointers to fill with matches
> > > + * @matches_len: Length of @matches
> > > + *
> > > + * Find up to @matches_len connections with unique identifier @con_i=
d between
> > > + * @fwnode and other device nodes. @match will be used to convert the
> > > + * connection description to data the caller is expecting to be retu=
rned
> > > + * through the @matches array.
> =

> If the caller allocates the matches array, how does it know how large it
> should be? Is there a need to provide a way to count the matches before
> writing them to an array? Most similar functions do that by just setting =
the
> array (matches) to NULL.
> =


This is a very relevant comment and I did look for ways to handle this
as I came up with the patch.

I think the typical mechanism would be to allow @matches to be NULL, in
which case we iterate over objects and return the number of matches, so
that the caller can allocate an appropriately sized array and call the
API again.

But the "match" function simply returns a pointer to something and
looking at the example of the typec_{mux,switch} this pointer points to
a member of an object which has a struct device which is refcounted.

As such, we can't simply discard the returned object. We have to pass it
back to the caller, whom knows what "match" did and is able to reverse
that.

I looked at changing the callback and I looked at using krealloc() to
grow an array dynamically.


But looking at the use case in mind; finding entities that might need to
react to a USB Type-C event I have a need for 2 matches, and 3 seems
plausible. Beyond that the largest of_graph I have ever dealt with has 6
endpoints.

While it isn't relevant to use this API for my 6-endpoint case, it would
result in @matches having to be 48 bytes of pointers. And once the call
returns, the actual number of pointers needed is known and the long-term
storage can be re-allocated as necessary based on the return value.

As such, I dropped the idea of making something fancier and more
dynamic, for the sake of simplicity. Perhaps I'm missing some cool use
case where this is infeasible?

Regards,
Bjorn

> > > + *
> > > + * Return: Number of matches resolved, of negative errno.
> > > + */
> > > +int fwnode_connection_find_matches(struct fwnode_handle *fwnode,
> > > +				   const char *con_id, void *data,
> > > +				   devcon_match_fn_t match,
> > > +				   void **matches, unsigned int matches_len)
> > > +{
> > > +	unsigned int count;
> > > +
> > > +	if (!fwnode || !match || !matches)
> > > +		return -EINVAL;
> > > +
> > > +	count =3D fwnode_graph_devcon_matches(fwnode, con_id, data, match,
> > > +					    matches, matches_len);
> > > +
> > > +	return count + fwnode_devcon_matches(fwnode, con_id, data, match,
> > > +					     matches + count,
> > > +					     matches_len - count);
> > > +}
> > > +EXPORT_SYMBOL_GPL(fwnode_connection_find_matches);
> > > diff --git a/include/linux/property.h b/include/linux/property.h
> > > index 16f736c698a2..59484ccb260e 100644
> > > --- a/include/linux/property.h
> > > +++ b/include/linux/property.h
> > > @@ -444,6 +444,11 @@ static inline void *device_connection_find_match=
(struct device *dev,
> > >  	return fwnode_connection_find_match(dev_fwnode(dev), con_id, data, =
match);
> > >  }
> > >  =

> > > +int fwnode_connection_find_matches(struct fwnode_handle *fwnode,
> > > +				   const char *con_id, void *data,
> > > +				   devcon_match_fn_t match,
> > > +				   void **matches, unsigned int matches_len);
> > > +
> > >  /* -----------------------------------------------------------------=
--------- */
> > >  /* Software fwnode support - when HW description is incomplete or mi=
ssing */
> > >  =

> =

> -- =

> Kind regards,
> =

> Sakari Ailus

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
