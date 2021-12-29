Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5777C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 29 Dec 2021 05:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2mERCGw8G47maVKDkUGf/IvbV4Rb4QVToBCvg6al9o=; b=xeOyX61yqwQPw7
	c9k5FLPZmLZ1JCb7NG0JggpwutNCPJxnDXX+XX8brQ1bQQ1sCwCTTzEQcf4wIm/dSu7WgkrFDwTWu
	EYT9OEKbaVO/my9LLg+eccJqz5+uelcehbTLsYIuz87sYpPM0Jp4BeYfM9BOLQqNdLrEwUmr/3Cpm
	QS8Cm8m5OAvG/wdTFWSqV+tntDpsNP6pyf3VibaTR4ZzdcD1wgvIunkvcLfyEJdTj/uOEuqFk79JQ
	+R858ln3CdWH2zlD9Q/fl/4w/yyk40D4luPlwCsvg93ISJKThgVuDWVvMRO8vs1ZEzNJo7tTw8MjN
	iULj5SjjPJALMp+xTUaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2RhM-002IMA-9n; Wed, 29 Dec 2021 05:40:28 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2RhJ-002IL6-DA
 for linux-phy@lists.infradead.org; Wed, 29 Dec 2021 05:40:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 15ED5B81757;
 Wed, 29 Dec 2021 05:40:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC1BDC36AEA;
 Wed, 29 Dec 2021 05:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640756422;
 bh=ZDSJxCw+26nf7CRKQUd/wtLZMwsu5luoF5sZD/yoX0U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uDFpmUBjvXGojvo/pLAX9ZBtkf0m6VU8AMZGNec6POpOKHNIOfofjmAeWHpWJhUR7
 Jj1zgzXzqnWhX7UESn4AuQ7eesScH28AArX34RnN0xZMNZ/WCdQQQBiFAP4oo5c8Uq
 OEjjultnSWc1pdv2zOi1JCgDoiIP4N3yPWe6xeFE9jZyLi5Dwb04aokFDN+OOOD08p
 SymZ7lnmaEUJA4MLwAP074qvLea1DShU5WVB0YmAAa2hUWgmDBOfGRXbnydglaeEwk
 qkK+I7Z88ryhElZVRGcr8lLa9G7f0ZeRs+EmJSoH2yrH+YTV0VjtZL6IUrbRuvcFG1
 cgtQDr/1XQuVw==
Date: Wed, 29 Dec 2021 11:10:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: Re: [PATCH 3/8] device property: Helper to match multiple connections
Message-ID: <Ycv0wtDSyLhS1LWZ@matsya>
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
 <20211228052116.1748443-4-bjorn.andersson@linaro.org>
 <78491489-6b31-c741-8c69-8d52fb614a6c@linaro.org>
 <YctDgaHV8dsR109L@ripper>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YctDgaHV8dsR109L@ripper>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211228_214025_760581_883A3CC1 
X-CRM114-Status: GOOD (  31.05  )
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

On 28-12-21, 09:04, Bjorn Andersson wrote:
> On Tue 28 Dec 05:09 PST 2021, Dmitry Baryshkov wrote:
> 
> > On 28/12/2021 08:21, Bjorn Andersson wrote:
> > > In some cases multiple connections with the same connection id
> > > needs to be resolved from a fwnode graph.
> > > 
> > > One such example is when separate hardware is used for performing muxing and/or
> > > orientation switching of the SuperSpeed and SBU lines in a USB-C
> > > connector. In this case the connector needs to belong to a graph with
> > > multiple matching remote endpoints, and the TypeC controller needs to be
> > > able to resolve them both.
> > > 
> > > Add a new API that allows this kind of lookup.
> > > 
> > > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > ---
> > >   drivers/base/property.c  | 94 ++++++++++++++++++++++++++++++++++++++++
> > >   include/linux/property.h |  5 +++
> > >   2 files changed, 99 insertions(+)
> > > 
> > > diff --git a/drivers/base/property.c b/drivers/base/property.c
> > > index cbe4fa298413..0aa0296fd991 100644
> > > --- a/drivers/base/property.c
> > > +++ b/drivers/base/property.c
> > > @@ -1180,6 +1180,36 @@ fwnode_graph_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
> > >   	return NULL;
> > >   }
> > > +static unsigned int fwnode_graph_devcon_matches(struct fwnode_handle *fwnode,
> > > +						const char *con_id, void *data,
> > > +						devcon_match_fn_t match,
> > > +						void **matches,
> > > +						unsigned int matches_len)
> > > +{
> > > +	struct fwnode_handle *node;
> > > +	struct fwnode_handle *ep;
> > > +	unsigned int count = 0;
> > > +	void *ret;
> > > +
> > > +	fwnode_graph_for_each_endpoint(fwnode, ep) {
> > > +		if (count >= matches_len) {
> > > +			fwnode_handle_put(ep);
> > > +			return count;
> > > +		}
> > > +
> > > +		node = fwnode_graph_get_remote_port_parent(ep);
> > > +		if (!fwnode_device_is_available(node))
> > > +			continue;
> > > +
> > > +		ret = match(node, con_id, data);
> > > +		fwnode_handle_put(node);
> > > +
> > > +		if (ret)
> > > +			matches[count++] = ret;
> > > +	}
> > > +	return count;
> > > +}
> > 
> > This API doesn't let it's user know if there are more matches found in the
> > device tree or not. I'd suggest to add 'count' mode that would return the
> > amount of found matches if (matches == NULL) && (matches_len == 0).

But the API does call each match
> 
> Unfortunately in this code path we don't know how to "free" the objects
> returned by match(), e.g. see how typec_switch_match() returns wrapper
> of a refcounted device.
> 
> So we must return all the match results to the caller to it can free
> things up based on its knowledge of what matches[] actually contains..

ACPI walk has similar APIs, I can think of acpi_walk_namespace() which I
have used in past and does similar walk in namespace but for devices and
calls the match()

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
