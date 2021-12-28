Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37A9DC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 28 Dec 2021 18:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jxw3lq9WYXE05jB2qwMzB9K+SRrAB5bNgRhGLG6wnoI=; b=0wyCeBdh3u+pqB
	t6NSts/U/EOQx6lLMhT8bHFvY0JcdXHvXokEVO6TbeSoetxADLTcUCSGW7Ogc0pGpVfLXT2b2V/1H
	DypD+G9vL4VHkrPUA5RKY7ODhz9kjNk3KrPfDLGB7lmcQbpU6fek6vjnC50Mea8zlsBacTd8jWSDS
	4n6U+jv1stxBix2amA2jAsRn7KKrbuTy5v0ecVFg9HU/J+9ClCDfIjetqjvJLMSUyGo7Wn/IBZEfB
	OX2DwHTD3Xm03QTnAcaNyZ7geIKBHJySechtflFMXHaJ23CsFbwJtskkyAoKsddX4t0P/ubBrCqKq
	b9SwwjBs0OWK8EVQXLTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2HPI-001jvh-JS; Tue, 28 Dec 2021 18:41:08 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2HPF-001jv8-Bc
 for linux-phy@lists.infradead.org; Tue, 28 Dec 2021 18:41:07 +0000
Received: by mail-ot1-x32e.google.com with SMTP id
 a26-20020a9d6e9a000000b0058f37eeb861so22899060otr.9
 for <linux-phy@lists.infradead.org>; Tue, 28 Dec 2021 10:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ytv7UO7IYg5u61czRPYEuC/H+doSraYFJMz92/qzQ9Q=;
 b=U88dPHGwfKlaILL+FCRh+RVWLInnaQDUn70KdsclPUbOzVLIZ1LyS7Crk/50Vvk9p7
 y+mqaN2zRMBL6ewKVz5qDVRXbAdjDG4jeC66cqw6jU1Xk6hAzaTIVRUepNlsTOP9ldio
 /XYgis7tg7H4eF3y0F74KREpPvr4l/yA51FwWhBvjtReRZqt+PaBDK+Le9rIXPY2c8aW
 juefSQEkbZ5U0JK8joJi8VcUhqbywQ0UAMKQ2k5z4TNsmIJFQk+No2tzoy28XyMKITnn
 2R0VIfvHrgh8WXAsNkLzNwaH2/FOC2/IewAUKxnI3HYevmY8wiWlpPiC4WEYJbWeLvGm
 pJCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ytv7UO7IYg5u61czRPYEuC/H+doSraYFJMz92/qzQ9Q=;
 b=wWqw9JToadhLzNMJdBt2W7bi9JrQT+hOKq6crGEUe3sHlIgRIffl0m6BZM8sUQBtG7
 qVkcINbIuGu57rjOT5DkVSzV7JbIm50QkI8vbZh87/g0kP/lP2GVLXDJYPc/gKfuBCC4
 8/Qsb/GF3WpqWKOXHhc/W5h20cb54ObOF0Xzn22Id9GyT+dWoegN1Uxc4e8qh4ohCvjO
 SQD8Iug4HM2tUKDYg1QVfooLaX86sBN60hGRaIo38P1hE7bwFs9kgq9yNznqns4Oauwb
 MpIbJEyvMg6Rgy401T0XTpOyEw0mQCtD/3Hyc0o/steOBMken9xsEwPUwlqA7DSP1y4z
 DBJg==
X-Gm-Message-State: AOAM531WOAAzMSzKXsMhmg8Fbx67OLL/BTIosmxFQlpQdwtf5myyMXDz
 CAa9LhQ1HlBOzeB3/bXDJtgjHQ==
X-Google-Smtp-Source: ABdhPJzkL0FBam5GErEj/r7t7lctG/vlMztl+fIHp6U9kK6l5DNlNsYTVe+UigxiJBlJGvrP8QI+Ww==
X-Received: by 2002:a05:6830:1204:: with SMTP id
 r4mr16015707otp.34.1640716863780; 
 Tue, 28 Dec 2021 10:41:03 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id c139sm2744811oob.31.2021.12.28.10.41.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Dec 2021 10:41:03 -0800 (PST)
Date: Tue, 28 Dec 2021 10:42:02 -0800
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
Message-ID: <YctaepSIglPWfJsm@ripper>
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
 <20211228052116.1748443-4-bjorn.andersson@linaro.org>
 <78491489-6b31-c741-8c69-8d52fb614a6c@linaro.org>
 <YctDgaHV8dsR109L@ripper>
 <CAA8EJpqO7-2_xNRvgTzi9nBNEpWwO6G2-97BWKg2tZFZ-WsQKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpqO7-2_xNRvgTzi9nBNEpWwO6G2-97BWKg2tZFZ-WsQKw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211228_104105_473096_B103C811 
X-CRM114-Status: GOOD (  43.85  )
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

On Tue 28 Dec 10:24 PST 2021, Dmitry Baryshkov wrote:

> On Tue, 28 Dec 2021 at 20:03, Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
> >
> > On Tue 28 Dec 05:09 PST 2021, Dmitry Baryshkov wrote:
> >
> > > On 28/12/2021 08:21, Bjorn Andersson wrote:
> > > > In some cases multiple connections with the same connection id
> > > > needs to be resolved from a fwnode graph.
> > > >
> > > > One such example is when separate hardware is used for performing muxing and/or
> > > > orientation switching of the SuperSpeed and SBU lines in a USB-C
> > > > connector. In this case the connector needs to belong to a graph with
> > > > multiple matching remote endpoints, and the TypeC controller needs to be
> > > > able to resolve them both.
> > > >
> > > > Add a new API that allows this kind of lookup.
> > > >
> > > > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > > ---
> > > >   drivers/base/property.c  | 94 ++++++++++++++++++++++++++++++++++++++++
> > > >   include/linux/property.h |  5 +++
> > > >   2 files changed, 99 insertions(+)
> > > >
> > > > diff --git a/drivers/base/property.c b/drivers/base/property.c
> > > > index cbe4fa298413..0aa0296fd991 100644
> > > > --- a/drivers/base/property.c
> > > > +++ b/drivers/base/property.c
> > > > @@ -1180,6 +1180,36 @@ fwnode_graph_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
> > > >     return NULL;
> > > >   }
> > > > +static unsigned int fwnode_graph_devcon_matches(struct fwnode_handle *fwnode,
> > > > +                                           const char *con_id, void *data,
> > > > +                                           devcon_match_fn_t match,
> > > > +                                           void **matches,
> > > > +                                           unsigned int matches_len)
> > > > +{
> > > > +   struct fwnode_handle *node;
> > > > +   struct fwnode_handle *ep;
> > > > +   unsigned int count = 0;
> > > > +   void *ret;
> > > > +
> > > > +   fwnode_graph_for_each_endpoint(fwnode, ep) {
> > > > +           if (count >= matches_len) {
> > > > +                   fwnode_handle_put(ep);
> > > > +                   return count;
> > > > +           }
> > > > +
> > > > +           node = fwnode_graph_get_remote_port_parent(ep);
> > > > +           if (!fwnode_device_is_available(node))
> > > > +                   continue;
> > > > +
> > > > +           ret = match(node, con_id, data);
> > > > +           fwnode_handle_put(node);
> > > > +
> > > > +           if (ret)
> > > > +                   matches[count++] = ret;
> > > > +   }
> > > > +   return count;
> > > > +}
> > >
> > > This API doesn't let it's user know if there are more matches found in the
> > > device tree or not. I'd suggest to add 'count' mode that would return the
> > > amount of found matches if (matches == NULL) && (matches_len == 0).
> > >
> >
> > Unfortunately in this code path we don't know how to "free" the objects
> > returned by match(), e.g. see how typec_switch_match() returns wrapper
> > of a refcounted device.
> >
> > So we must return all the match results to the caller to it can free
> > things up based on its knowledge of what matches[] actually contains..
> 
> Ugh. Then we should probably return -E2BIG, -ENOSPC or any other such error.
> Another option might be to split match into match & map functions,
> first one returning bool and second one returning actual corresponding
> object..
> 

If I get an errno back from a function like this I generally expect this
kind of API to have done the cleanup for me, which can't be done. So I
fear that it would be more error prone than the current proposal - which
potentially might (silently) fail to detect that you have 4+ orientation
switches attached to your USB port.

My imagination doesn't isn't able to come up with a large enough
of_graph where the client would need to provide an matches array that's
larger than what would fit on the stack. Perhaps someone can provide a
real use case where it would be necessary to support arbitrary sizes of
matches[]?

Regards,
Bjorn

> >
> > Regards,
> > Bjorn
> >
> > > > +
> > > >   static void *
> > > >   fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
> > > >                 void *data, devcon_match_fn_t match)
> > > > @@ -1202,6 +1232,35 @@ fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
> > > >     return NULL;
> > > >   }
> > > > +static unsigned int fwnode_devcon_matches(struct fwnode_handle *fwnode,
> > > > +                                     const char *con_id, void *data,
> > > > +                                     devcon_match_fn_t match,
> > > > +                                     void **matches,
> > > > +                                     unsigned int matches_len)
> > > > +{
> > > > +   struct fwnode_handle *node;
> > > > +   unsigned int count = 0;
> > > > +   void *ret;
> > > > +   int i;
> > > > +
> > > > +   for (i = 0; ; i++) {
> > > > +           if (count >= matches_len)
> > > > +                   return count;
> > > > +
> > > > +           node = fwnode_find_reference(fwnode, con_id, i);
> > > > +           if (IS_ERR(node))
> > > > +                   break;
> > > > +
> > > > +           ret = match(node, NULL, data);
> > > > +           fwnode_handle_put(node);
> > > > +
> > > > +           if (ret)
> > > > +                   matches[count++] = ret;
> > > > +   }
> > > > +
> > > > +   return count;
> > > > +}
> > > > +
> > >
> > > Same comment applies.
> > >
> > > >   /**
> > > >    * fwnode_connection_find_match - Find connection from a device node
> > > >    * @fwnode: Device node with the connection
> > > > @@ -1229,3 +1288,38 @@ void *fwnode_connection_find_match(struct fwnode_handle *fwnode,
> > > >     return fwnode_devcon_match(fwnode, con_id, data, match);
> > > >   }
> > > >   EXPORT_SYMBOL_GPL(fwnode_connection_find_match);
> > > > +
> > > > +/**
> > > > + * fwnode_connection_find_matches - Find connections from a device node
> > > > + * @fwnode: Device node with the connection
> > > > + * @con_id: Identifier for the connection
> > > > + * @data: Data for the match function
> > > > + * @match: Function to check and convert the connection description
> > > > + * @matches: Array of pointers to fill with matches
> > > > + * @matches_len: Length of @matches
> > > > + *
> > > > + * Find up to @matches_len connections with unique identifier @con_id between
> > > > + * @fwnode and other device nodes. @match will be used to convert the
> > > > + * connection description to data the caller is expecting to be returned
> > > > + * through the @matches array.
> > > > + *
> > > > + * Return: Number of matches resolved, of negative errno.
> > > > + */
> > > > +int fwnode_connection_find_matches(struct fwnode_handle *fwnode,
> > > > +                              const char *con_id, void *data,
> > > > +                              devcon_match_fn_t match,
> > > > +                              void **matches, unsigned int matches_len)
> > > > +{
> > > > +   unsigned int count;
> > > > +
> > > > +   if (!fwnode || !match || !matches)
> > > > +           return -EINVAL;
> > > > +
> > > > +   count = fwnode_graph_devcon_matches(fwnode, con_id, data, match,
> > > > +                                       matches, matches_len);
> > > > +
> > > > +   return count + fwnode_devcon_matches(fwnode, con_id, data, match,
> > > > +                                        matches + count,
> > > > +                                        matches_len - count);
> > > > +}
> > > > +EXPORT_SYMBOL_GPL(fwnode_connection_find_matches);
> > > > diff --git a/include/linux/property.h b/include/linux/property.h
> > > > index 16f736c698a2..59484ccb260e 100644
> > > > --- a/include/linux/property.h
> > > > +++ b/include/linux/property.h
> > > > @@ -444,6 +444,11 @@ static inline void *device_connection_find_match(struct device *dev,
> > > >     return fwnode_connection_find_match(dev_fwnode(dev), con_id, data, match);
> > > >   }
> > > > +int fwnode_connection_find_matches(struct fwnode_handle *fwnode,
> > > > +                              const char *con_id, void *data,
> > > > +                              devcon_match_fn_t match,
> > > > +                              void **matches, unsigned int matches_len);
> > > > +
> > > >   /* -------------------------------------------------------------------------- */
> > > >   /* Software fwnode support - when HW description is incomplete or missing */
> > >
> > >
> > > --
> > > With best wishes
> > > Dmitry
> 
> 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
