Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6195C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Dec 2021 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C76FwwrgPy5/obt+pItvZdIkXTNtak7P4wlVmR9laZo=; b=HSVDhikij4Ddy4
	d7wTKnjlxFoa/tkMIN4pODw/zTTVoC/V34HhGzzsVJLdgQUc3FNg0c9SsNq61s09LyzNyRPrX5Lww
	lb1pfvUc9nWuoNYNYwaLO64Mqhtip8Ud+5Axxt3gDlsLjwOfs7GENIF+nQXGnJ7ma7SRv+hKRud7Y
	Drf4bml50O0MxcPzJDnHK54BUgWJ3ZclPjuZLC7WWbONtNosoPRpmkKdoY4TgOpFmmjZPEJ2fUen2
	9THuHggrfsirhJfBbxtpvyY2g0yAfCtEf55rz258CwcAdbn1nZRWDcXl7UJm58Yw9R9GFOGt+dNNT
	HwpxrhMuskyJiyuNj0dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2FsS-001bbD-CI; Tue, 28 Dec 2021 17:03:08 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2FsO-001bZz-FP
 for linux-phy@lists.infradead.org; Tue, 28 Dec 2021 17:03:06 +0000
Received: by mail-ot1-x329.google.com with SMTP id
 j3-20020a056830014300b0058f4f1ef3c2so21241780otp.13
 for <linux-phy@lists.infradead.org>; Tue, 28 Dec 2021 09:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fqf6rnu14bDcvfi+8SmXc4YYaIPD5Y5BMeMfUKGb4Us=;
 b=Q1g4xTfPyDpqUCNwkLkeFb//0xX7ikBIMqrUdqFawh6PtBlvxIccjpOIcwhlL0k9XN
 1N4E3628wYyb8G026ATBaCCg6+pvYDDjg3YqEbIG71db0aA9JKp/od6+XnGZicuA/Qyn
 61MXaSSXpser58bwiPjyaw/HX8pRAc4XrKrz2dBQ22KXXozk53g/fBOR4HUDNflhR7kx
 zXfaUnabRgelj9ecECDBy1u5GP4D09xEcqSWny4wQ+9q7awsQCjia+ELUO8hGlku4pqw
 q0wG3r1A1kS6jodL+IszR8iSihSq90BHkVGJadQkaFX3W783nusEVtkElHmaN6UByJmf
 VPKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fqf6rnu14bDcvfi+8SmXc4YYaIPD5Y5BMeMfUKGb4Us=;
 b=7z0DFpCszZ+oFQMQuGU/iiZU70Gs5FWunZSheMdC8fOo5wFNZBe+2cLc6gur85lceb
 stTmtdRXi2ABg0Hus9F3hEH8m9HyB2zkcblE4maXqXyx8bBb9IiJ+lxNvSjCuZYidOWK
 kmkvMAlCP/XKZ2Ek7V8QdLyX/Kw+BdyhtmQsshqGN4opYiqj3clhPqrbaJdPvZdY+Fov
 qFzHu8giU3BHcHnZMyGAGGrxWRKk15JIQ85sp7xmEtkrH9B5pSHsTCLIJ8WX2z/kGkx5
 C8623WcwFnhPKzdFQjW0pA3hdRjISWZ107tWCGfy1CLiWfxVJczCWI/xHl4YbBfrWqQl
 o4hg==
X-Gm-Message-State: AOAM532oyq5wAy9JJqJ1CJsSFQDaRkI+kuIyo1auTOL+UBTrb9Id5RJH
 xljMXjlmkI04dZqxWb9jBe4s9A==
X-Google-Smtp-Source: ABdhPJy5Q+qG8e6GgdGlS/P/AAwb6MJsX1Mb2OftGMNR+3bOuj6mA7qyc5/YLVorXuTaOxs40dY3Ow==
X-Received: by 2002:a05:6830:1d49:: with SMTP id
 p9mr15849113oth.108.1640710983055; 
 Tue, 28 Dec 2021 09:03:03 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id q5sm4081528oiv.2.2021.12.28.09.03.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Dec 2021 09:03:02 -0800 (PST)
Date: Tue, 28 Dec 2021 09:04:01 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: Re: [PATCH 3/8] device property: Helper to match multiple connections
Message-ID: <YctDgaHV8dsR109L@ripper>
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
 <20211228052116.1748443-4-bjorn.andersson@linaro.org>
 <78491489-6b31-c741-8c69-8d52fb614a6c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78491489-6b31-c741-8c69-8d52fb614a6c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211228_090304_549327_7A902E78 
X-CRM114-Status: GOOD (  35.04  )
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

On Tue 28 Dec 05:09 PST 2021, Dmitry Baryshkov wrote:

> On 28/12/2021 08:21, Bjorn Andersson wrote:
> > In some cases multiple connections with the same connection id
> > needs to be resolved from a fwnode graph.
> > 
> > One such example is when separate hardware is used for performing muxing and/or
> > orientation switching of the SuperSpeed and SBU lines in a USB-C
> > connector. In this case the connector needs to belong to a graph with
> > multiple matching remote endpoints, and the TypeC controller needs to be
> > able to resolve them both.
> > 
> > Add a new API that allows this kind of lookup.
> > 
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> >   drivers/base/property.c  | 94 ++++++++++++++++++++++++++++++++++++++++
> >   include/linux/property.h |  5 +++
> >   2 files changed, 99 insertions(+)
> > 
> > diff --git a/drivers/base/property.c b/drivers/base/property.c
> > index cbe4fa298413..0aa0296fd991 100644
> > --- a/drivers/base/property.c
> > +++ b/drivers/base/property.c
> > @@ -1180,6 +1180,36 @@ fwnode_graph_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
> >   	return NULL;
> >   }
> > +static unsigned int fwnode_graph_devcon_matches(struct fwnode_handle *fwnode,
> > +						const char *con_id, void *data,
> > +						devcon_match_fn_t match,
> > +						void **matches,
> > +						unsigned int matches_len)
> > +{
> > +	struct fwnode_handle *node;
> > +	struct fwnode_handle *ep;
> > +	unsigned int count = 0;
> > +	void *ret;
> > +
> > +	fwnode_graph_for_each_endpoint(fwnode, ep) {
> > +		if (count >= matches_len) {
> > +			fwnode_handle_put(ep);
> > +			return count;
> > +		}
> > +
> > +		node = fwnode_graph_get_remote_port_parent(ep);
> > +		if (!fwnode_device_is_available(node))
> > +			continue;
> > +
> > +		ret = match(node, con_id, data);
> > +		fwnode_handle_put(node);
> > +
> > +		if (ret)
> > +			matches[count++] = ret;
> > +	}
> > +	return count;
> > +}
> 
> This API doesn't let it's user know if there are more matches found in the
> device tree or not. I'd suggest to add 'count' mode that would return the
> amount of found matches if (matches == NULL) && (matches_len == 0).
> 

Unfortunately in this code path we don't know how to "free" the objects
returned by match(), e.g. see how typec_switch_match() returns wrapper
of a refcounted device.

So we must return all the match results to the caller to it can free
things up based on its knowledge of what matches[] actually contains..

Regards,
Bjorn

> > +
> >   static void *
> >   fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
> >   		    void *data, devcon_match_fn_t match)
> > @@ -1202,6 +1232,35 @@ fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
> >   	return NULL;
> >   }
> > +static unsigned int fwnode_devcon_matches(struct fwnode_handle *fwnode,
> > +					  const char *con_id, void *data,
> > +					  devcon_match_fn_t match,
> > +					  void **matches,
> > +					  unsigned int matches_len)
> > +{
> > +	struct fwnode_handle *node;
> > +	unsigned int count = 0;
> > +	void *ret;
> > +	int i;
> > +
> > +	for (i = 0; ; i++) {
> > +		if (count >= matches_len)
> > +			return count;
> > +
> > +		node = fwnode_find_reference(fwnode, con_id, i);
> > +		if (IS_ERR(node))
> > +			break;
> > +
> > +		ret = match(node, NULL, data);
> > +		fwnode_handle_put(node);
> > +
> > +		if (ret)
> > +			matches[count++] = ret;
> > +	}
> > +
> > +	return count;
> > +}
> > +
> 
> Same comment applies.
> 
> >   /**
> >    * fwnode_connection_find_match - Find connection from a device node
> >    * @fwnode: Device node with the connection
> > @@ -1229,3 +1288,38 @@ void *fwnode_connection_find_match(struct fwnode_handle *fwnode,
> >   	return fwnode_devcon_match(fwnode, con_id, data, match);
> >   }
> >   EXPORT_SYMBOL_GPL(fwnode_connection_find_match);
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
> > + * Find up to @matches_len connections with unique identifier @con_id between
> > + * @fwnode and other device nodes. @match will be used to convert the
> > + * connection description to data the caller is expecting to be returned
> > + * through the @matches array.
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
> > +	count = fwnode_graph_devcon_matches(fwnode, con_id, data, match,
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
> > @@ -444,6 +444,11 @@ static inline void *device_connection_find_match(struct device *dev,
> >   	return fwnode_connection_find_match(dev_fwnode(dev), con_id, data, match);
> >   }
> > +int fwnode_connection_find_matches(struct fwnode_handle *fwnode,
> > +				   const char *con_id, void *data,
> > +				   devcon_match_fn_t match,
> > +				   void **matches, unsigned int matches_len);
> > +
> >   /* -------------------------------------------------------------------------- */
> >   /* Software fwnode support - when HW description is incomplete or missing */
> 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
