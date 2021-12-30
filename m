Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF35CC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 30 Dec 2021 09:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BShPZ8vzliJbLvU10n3X2HQRhQlZO6VLUkaDG8fxv8=; b=aNyPhuGgqR34xX
	vZfnfZwkt1rmMtykvY6+V07X0Na962+Nv7NdKgSBDzB+N3CLLQ0/ZAWVxr4NwEQ3iUdTQs+al/lek
	gXA3E4H82HnYL8G1zyB1RdUn/A/0ZPJXauwZk8kVaCVZWToCqQj9bzKr0NcidrTqcnB0gcv3wGtEv
	h8Zz6LVipIwfq6sSOV03FeSZY2rEx6MbhrU6wDoyhhFNhSok06aqzl2vhtqY1wGm9gqorbs7IsVor
	bxfs1GXrXalNq+6GChzE0FeBQJ4A/ZP2c9EMt0MVti7WBZ7O3WudJlwHSG41BFSCUQ0do+964VMXA
	2LiLYdjWNQPlYfiaJliw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2rhu-004845-39; Thu, 30 Dec 2021 09:26:46 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2rhq-00483H-Vr
 for linux-phy@lists.infradead.org; Thu, 30 Dec 2021 09:26:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640856402; x=1672392402;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ze/0vVSW6FqgvgBmkxUemJCB4iFsXFRfVcw+YxcyG9s=;
 b=bSrQ7l8jsHF4G4eCu8WqwjWiqjyUPBeIHxSjfFMATGt6yrALuWf1X9Pn
 VRvfpOk0UkzesSamXVrseveZy1Xsgx8s1RhcwFTwegWvAFs2Mv2Apfs/n
 hKEVRpgwBYjGIgk1r+Do6MZ7u2plA0Zu4A23RARFhOdjzoV9/n5PhSmLl
 I0VqN/a6l1IqDn0TrFC7AKVxvaOIDcw2x2534FmqzbzFsQU7VGkLFWgfY
 AMbyytWAl1zikE8HnUx3VSmmle07D3QgWf47QBVCk/kqnKmJ+1MzJ2r5Y
 g2QCoWUlIThEbzsJg+dsrINCKqe5+FZnkbU1jdpTi2MtRI3tf1par1G2w Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10212"; a="327977485"
X-IronPort-AV: E=Sophos;i="5.88,248,1635231600"; d="scan'208";a="327977485"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2021 01:26:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,248,1635231600"; d="scan'208";a="666514367"
Received: from kuha.fi.intel.com ([10.237.72.185])
 by fmsmga001.fm.intel.com with SMTP; 30 Dec 2021 01:26:35 -0800
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Thu, 30 Dec 2021 11:26:34 +0200
Date: Thu, 30 Dec 2021 11:26:34 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Daniel Scally <djrscally@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: Re: [PATCH 3/8] device property: Helper to match multiple connections
Message-ID: <Yc17Ssug3neFFXKN@kuha.fi.intel.com>
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
 <20211228052116.1748443-4-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211228052116.1748443-4-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211230_012643_076068_6A55C7F0 
X-CRM114-Status: GOOD (  30.39  )
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

+Andy, Dan and Sakari

On Mon, Dec 27, 2021 at 09:21:11PM -0800, Bjorn Andersson wrote:
> In some cases multiple connections with the same connection id
> needs to be resolved from a fwnode graph.
> 
> One such example is when separate hardware is used for performing muxing and/or
> orientation switching of the SuperSpeed and SBU lines in a USB-C
> connector. In this case the connector needs to belong to a graph with
> multiple matching remote endpoints, and the TypeC controller needs to be
> able to resolve them both.
> 
> Add a new API that allows this kind of lookup.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  drivers/base/property.c  | 94 ++++++++++++++++++++++++++++++++++++++++
>  include/linux/property.h |  5 +++
>  2 files changed, 99 insertions(+)
> 
> diff --git a/drivers/base/property.c b/drivers/base/property.c
> index cbe4fa298413..0aa0296fd991 100644
> --- a/drivers/base/property.c
> +++ b/drivers/base/property.c
> @@ -1180,6 +1180,36 @@ fwnode_graph_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
>  	return NULL;
>  }
>  
> +static unsigned int fwnode_graph_devcon_matches(struct fwnode_handle *fwnode,
> +						const char *con_id, void *data,
> +						devcon_match_fn_t match,
> +						void **matches,
> +						unsigned int matches_len)
> +{
> +	struct fwnode_handle *node;
> +	struct fwnode_handle *ep;
> +	unsigned int count = 0;
> +	void *ret;
> +
> +	fwnode_graph_for_each_endpoint(fwnode, ep) {
> +		if (count >= matches_len) {
> +			fwnode_handle_put(ep);
> +			return count;
> +		}
> +
> +		node = fwnode_graph_get_remote_port_parent(ep);
> +		if (!fwnode_device_is_available(node))
> +			continue;
> +
> +		ret = match(node, con_id, data);
> +		fwnode_handle_put(node);
> +
> +		if (ret)
> +			matches[count++] = ret;
> +	}
> +	return count;
> +}
> +
>  static void *
>  fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
>  		    void *data, devcon_match_fn_t match)
> @@ -1202,6 +1232,35 @@ fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
>  	return NULL;
>  }
>  
> +static unsigned int fwnode_devcon_matches(struct fwnode_handle *fwnode,
> +					  const char *con_id, void *data,
> +					  devcon_match_fn_t match,
> +					  void **matches,
> +					  unsigned int matches_len)
> +{
> +	struct fwnode_handle *node;
> +	unsigned int count = 0;
> +	void *ret;
> +	int i;
> +
> +	for (i = 0; ; i++) {
> +		if (count >= matches_len)
> +			return count;
> +
> +		node = fwnode_find_reference(fwnode, con_id, i);
> +		if (IS_ERR(node))
> +			break;
> +
> +		ret = match(node, NULL, data);
> +		fwnode_handle_put(node);
> +
> +		if (ret)
> +			matches[count++] = ret;
> +	}
> +
> +	return count;
> +}
> +
>  /**
>   * fwnode_connection_find_match - Find connection from a device node
>   * @fwnode: Device node with the connection
> @@ -1229,3 +1288,38 @@ void *fwnode_connection_find_match(struct fwnode_handle *fwnode,
>  	return fwnode_devcon_match(fwnode, con_id, data, match);
>  }
>  EXPORT_SYMBOL_GPL(fwnode_connection_find_match);
> +
> +/**
> + * fwnode_connection_find_matches - Find connections from a device node
> + * @fwnode: Device node with the connection
> + * @con_id: Identifier for the connection
> + * @data: Data for the match function
> + * @match: Function to check and convert the connection description
> + * @matches: Array of pointers to fill with matches
> + * @matches_len: Length of @matches
> + *
> + * Find up to @matches_len connections with unique identifier @con_id between
> + * @fwnode and other device nodes. @match will be used to convert the
> + * connection description to data the caller is expecting to be returned
> + * through the @matches array.
> + *
> + * Return: Number of matches resolved, of negative errno.
> + */
> +int fwnode_connection_find_matches(struct fwnode_handle *fwnode,
> +				   const char *con_id, void *data,
> +				   devcon_match_fn_t match,
> +				   void **matches, unsigned int matches_len)
> +{
> +	unsigned int count;
> +
> +	if (!fwnode || !match || !matches)
> +		return -EINVAL;
> +
> +	count = fwnode_graph_devcon_matches(fwnode, con_id, data, match,
> +					    matches, matches_len);
> +
> +	return count + fwnode_devcon_matches(fwnode, con_id, data, match,
> +					     matches + count,
> +					     matches_len - count);
> +}
> +EXPORT_SYMBOL_GPL(fwnode_connection_find_matches);
> diff --git a/include/linux/property.h b/include/linux/property.h
> index 16f736c698a2..59484ccb260e 100644
> --- a/include/linux/property.h
> +++ b/include/linux/property.h
> @@ -444,6 +444,11 @@ static inline void *device_connection_find_match(struct device *dev,
>  	return fwnode_connection_find_match(dev_fwnode(dev), con_id, data, match);
>  }
>  
> +int fwnode_connection_find_matches(struct fwnode_handle *fwnode,
> +				   const char *con_id, void *data,
> +				   devcon_match_fn_t match,
> +				   void **matches, unsigned int matches_len);
> +
>  /* -------------------------------------------------------------------------- */
>  /* Software fwnode support - when HW description is incomplete or missing */
>  
> -- 
> 2.33.1

-- 
heikki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
