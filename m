Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24E58C433FE
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jan 2022 15:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsCljLxKGI3U9d7T7kKhB9IrtpprFIIZfzDxI595El8=; b=Qq8yLlW5zT+5a4
	IoJURAGqxwPimhsmKXx2EPTuht+7BqIEYZ5DB0lNscQPZXrEHstboBLK+SEkl2I923F8IH/c3o2d9
	PrB/qhWx34HzG87WaOgwPih3bPwMa7yoLnI8HyWqkGVbXCHYqNihiVWSgI862ksc69Kbwegr3KgCB
	i+raqqaH05PoCcEy2FNmFRzXo6PDNLz6e64LsaQVHMLzyLtfIlLdkA/JsQXh5b/Nj3tQKDibiIr9S
	Bb5ZPIKCy9rDKTTCbZ4UiE/V/c0SHipz2nafs2ssX8S3nY2flbBxuOzb/fYQ55XXlhRHkLapdc1Zb
	TyTe4b1OGwM9jBSgUWDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5qx6-004Qic-JK; Fri, 07 Jan 2022 15:14:48 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5qx3-004Qgg-8e
 for linux-phy@lists.infradead.org; Fri, 07 Jan 2022 15:14:47 +0000
Received: by mail-oi1-x22b.google.com with SMTP id w80so8547271oie.9
 for <linux-phy@lists.infradead.org>; Fri, 07 Jan 2022 07:14:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=hoW/s0DcuKRkkzOcD//hS7BMlfvE2r9t+HnZfYmtjjI=;
 b=IVzL8zg7qh111l5P6Unaxg6UD17D1qulF1CZYB5ghokN24BQ5IRwO6l/sn0cl3vGVh
 UCnnvJpFoOQQ2B1YGjk3FHXy2U3YTYlO9SyXKe7gDrI1nJ5rlNhqKDhD4Dx6TG6VhoH+
 ZU2Ahy4dg8HtyO1Ee52LWFP0Z0dizAmqbLKn/vQahrD76gFnNTSeJhX1bxkAb3VpRsjN
 gEOyrhzimOXuW3IHEoMO1oQUmpSgBRkwbD4Kc9J5JleT0NvAbZz08FWrrWhD4UQSkDV7
 +3856kvrMYO/Qa7xyWejxSvFb8JPO/NFq+uBwvW1Gaq4UApv+U92HFHS9AQPsbWjeEo5
 LP4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=hoW/s0DcuKRkkzOcD//hS7BMlfvE2r9t+HnZfYmtjjI=;
 b=p08RP6e0jdMM3nkB7mWBlCp5QIb7XFtWo3KqxPMtsjhA4TbWuZ4sC8hRMlDva/HsfZ
 tjFTiJ8H9d4HFbhDjqGuIH6HMnKhD+CsDqVA2S9XLMs77tPkYgj8c1NY7KBu2NQI8DoA
 HahkoKM8y80ssHEePoZSguvJNZLwYqzMfygzjh/RTp+ZsIVozB0Ke7KzVz0XJ/U39Og/
 2hKgbYIdxrF71BcTc/tUP3RiCI1ZNouvl69r2WxN3UoRwG5if1h+E8WU97BLHOfxgj+x
 9zyku2Y1KDu3nRh9imXWaXTvBb7lNsbXO0F1yU5doOc8fjrIjvLFMCg1NPJl5zfSmcfT
 F5cA==
X-Gm-Message-State: AOAM533h93G56F8T+HUyB5mNborZquFarOmT/diNj2oz93RPyaM2mOWK
 WR2/K5mncYfkaHEwaXnKLKXGiA==
X-Google-Smtp-Source: ABdhPJyhks2Fazm9yhlWgkK0jTfqI95vyQTiRxh0FVvoGTX2ao1hw+Qg+M68nCKS0/wVdYGUR9MRbQ==
X-Received: by 2002:a05:6808:3d8:: with SMTP id
 o24mr10468608oie.119.1641568484294; 
 Fri, 07 Jan 2022 07:14:44 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id a6sm995134oil.6.2022.01.07.07.14.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Jan 2022 07:14:43 -0800 (PST)
Date: Fri, 7 Jan 2022 07:15:30 -0800
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
Message-ID: <YdhZEp6LmAxCGDIc@ripper>
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
 <20211228052116.1748443-4-bjorn.andersson@linaro.org>
 <Yc17Ssug3neFFXKN@kuha.fi.intel.com>
 <Yc7I3gZehc1lHn4Z@paasikivi.fi.intel.com> <YdYC8DeF1i9a3RnP@ripper>
 <YdhPQ0Wuz63JBKaR@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YdhPQ0Wuz63JBKaR@paasikivi.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_071445_389186_7F3723A8 
X-CRM114-Status: GOOD (  55.12  )
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

On Fri 07 Jan 06:33 PST 2022, Sakari Ailus wrote:

> On Wed, Jan 05, 2022 at 12:43:28PM -0800, Bjorn Andersson wrote:
> > On Fri 31 Dec 01:09 PST 2021, Sakari Ailus wrote:
> > =

> > > Hi Bj=F6rn,
> > > =

> > > (And thanks to Heikki for cc'ing me!)
> > > =

> > > On Thu, Dec 30, 2021 at 11:26:34AM +0200, Heikki Krogerus wrote:
> > > > +Andy, Dan and Sakari
> > > > =

> > > > On Mon, Dec 27, 2021 at 09:21:11PM -0800, Bjorn Andersson wrote:
> > > > > In some cases multiple connections with the same connection id
> > > > > needs to be resolved from a fwnode graph.
> > > > > =

> > > > > One such example is when separate hardware is used for performing=
 muxing and/or
> > > > > orientation switching of the SuperSpeed and SBU lines in a USB-C
> > > > > connector. In this case the connector needs to belong to a graph =
with
> > > > > multiple matching remote endpoints, and the TypeC controller need=
s to be
> > > > > able to resolve them both.
> > > > > =

> > > > > Add a new API that allows this kind of lookup.
> > > > > =

> > > > > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > > > ---
> > > > >  drivers/base/property.c  | 94 ++++++++++++++++++++++++++++++++++=
++++++
> > > > >  include/linux/property.h |  5 +++
> > > > >  2 files changed, 99 insertions(+)
> > > > > =

> > > > > diff --git a/drivers/base/property.c b/drivers/base/property.c
> > > > > index cbe4fa298413..0aa0296fd991 100644
> > > > > --- a/drivers/base/property.c
> > > > > +++ b/drivers/base/property.c
> > > > > @@ -1180,6 +1180,36 @@ fwnode_graph_devcon_match(struct fwnode_ha=
ndle *fwnode, const char *con_id,
> > > > >  	return NULL;
> > > > >  }
> > > > >  =

> > > > > +static unsigned int fwnode_graph_devcon_matches(struct fwnode_ha=
ndle *fwnode,
> > > > > +						const char *con_id, void *data,
> > > > > +						devcon_match_fn_t match,
> > > > > +						void **matches,
> > > > > +						unsigned int matches_len)
> > > > > +{
> > > > > +	struct fwnode_handle *node;
> > > > > +	struct fwnode_handle *ep;
> > > > > +	unsigned int count =3D 0;
> > > > > +	void *ret;
> > > > > +
> > > > > +	fwnode_graph_for_each_endpoint(fwnode, ep) {
> > > > > +		if (count >=3D matches_len) {
> > > > > +			fwnode_handle_put(ep);
> > > > > +			return count;
> > > > > +		}
> > > > > +
> > > > > +		node =3D fwnode_graph_get_remote_port_parent(ep);
> > > > > +		if (!fwnode_device_is_available(node))
> > > =

> > > The reference to node needs to be put here.
> > > =

> > =

> > You're right, thanks!
> > =

> > > > > +			continue;
> > > > > +
> > > > > +		ret =3D match(node, con_id, data);
> > > > > +		fwnode_handle_put(node);
> > > > > +
> > > > > +		if (ret)
> > > > > +			matches[count++] =3D ret;
> > > > > +	}
> > > > > +	return count;
> > > > > +}
> > > > > +
> > > > >  static void *
> > > > >  fwnode_devcon_match(struct fwnode_handle *fwnode, const char *co=
n_id,
> > > > >  		    void *data, devcon_match_fn_t match)
> > > > > @@ -1202,6 +1232,35 @@ fwnode_devcon_match(struct fwnode_handle *=
fwnode, const char *con_id,
> > > > >  	return NULL;
> > > > >  }
> > > > >  =

> > > > > +static unsigned int fwnode_devcon_matches(struct fwnode_handle *=
fwnode,
> > > > > +					  const char *con_id, void *data,
> > > > > +					  devcon_match_fn_t match,
> > > > > +					  void **matches,
> > > > > +					  unsigned int matches_len)
> > > > > +{
> > > > > +	struct fwnode_handle *node;
> > > > > +	unsigned int count =3D 0;
> > > > > +	void *ret;
> > > > > +	int i;
> > > =

> > > unsigned int, please.
> > > =

> > =

> > Sounds good.
> > =

> > > > > +
> > > > > +	for (i =3D 0; ; i++) {
> > > > > +		if (count >=3D matches_len)
> > > > > +			return count;
> > > > > +
> > > > > +		node =3D fwnode_find_reference(fwnode, con_id, i);
> > > > > +		if (IS_ERR(node))
> > > > > +			break;
> > > > > +
> > > > > +		ret =3D match(node, NULL, data);
> > > > > +		fwnode_handle_put(node);
> > > > > +
> > > > > +		if (ret)
> > > > > +			matches[count++] =3D ret;
> > > > > +	}
> > > > > +
> > > > > +	return count;
> > > > > +}
> > > > > +
> > > > >  /**
> > > > >   * fwnode_connection_find_match - Find connection from a device =
node
> > > > >   * @fwnode: Device node with the connection
> > > > > @@ -1229,3 +1288,38 @@ void *fwnode_connection_find_match(struct =
fwnode_handle *fwnode,
> > > > >  	return fwnode_devcon_match(fwnode, con_id, data, match);
> > > > >  }
> > > > >  EXPORT_SYMBOL_GPL(fwnode_connection_find_match);
> > > > > +
> > > > > +/**
> > > > > + * fwnode_connection_find_matches - Find connections from a devi=
ce node
> > > > > + * @fwnode: Device node with the connection
> > > > > + * @con_id: Identifier for the connection
> > > > > + * @data: Data for the match function
> > > > > + * @match: Function to check and convert the connection descript=
ion
> > > > > + * @matches: Array of pointers to fill with matches
> > > > > + * @matches_len: Length of @matches
> > > > > + *
> > > > > + * Find up to @matches_len connections with unique identifier @c=
on_id between
> > > > > + * @fwnode and other device nodes. @match will be used to conver=
t the
> > > > > + * connection description to data the caller is expecting to be =
returned
> > > > > + * through the @matches array.
> > > =

> > > If the caller allocates the matches array, how does it know how large=
 it
> > > should be? Is there a need to provide a way to count the matches befo=
re
> > > writing them to an array? Most similar functions do that by just sett=
ing the
> > > array (matches) to NULL.
> > > =

> > =

> > This is a very relevant comment and I did look for ways to handle this
> > as I came up with the patch.
> > =

> > I think the typical mechanism would be to allow @matches to be NULL, in
> > which case we iterate over objects and return the number of matches, so
> > that the caller can allocate an appropriately sized array and call the
> > API again.
> > =

> > But the "match" function simply returns a pointer to something and
> > looking at the example of the typec_{mux,switch} this pointer points to
> > a member of an object which has a struct device which is refcounted.
> > =

> > As such, we can't simply discard the returned object. We have to pass it
> > back to the caller, whom knows what "match" did and is able to reverse
> > that.
> > =

> > I looked at changing the callback and I looked at using krealloc() to
> > grow an array dynamically.
> =

> krealloc() may also fail...
> =


Exactly.

> > =

> > =

> > But looking at the use case in mind; finding entities that might need to
> > react to a USB Type-C event I have a need for 2 matches, and 3 seems
> > plausible. Beyond that the largest of_graph I have ever dealt with has 6
> > endpoints.
> > =

> > While it isn't relevant to use this API for my 6-endpoint case, it would
> > result in @matches having to be 48 bytes of pointers. And once the call
> > returns, the actual number of pointers needed is known and the long-term
> > storage can be re-allocated as necessary based on the return value.
> > =

> > As such, I dropped the idea of making something fancier and more
> > dynamic, for the sake of simplicity. Perhaps I'm missing some cool use
> > case where this is infeasible?
> =

> Another option would be to use a fixed-size array for the purpose. Assumi=
ng
> this will remain a small number, a single global macro could be used to s=
et
> the maximum number that could be also easily increased if needed.
> =

> On the other hand, if this number remains specific to the caller as it
> would seem, then I guess a caller-set value (as implemented now) remains a
> fine option, too.
> =


Sounds good.

I will try to capture these arguments in the commit message as I post
the next version.

Thanks,
Bjorn

> -- =

> Kind regards,
> =

> Sakari Ailus

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
