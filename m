Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CC51C67861
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 17:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2f3XmrI+9BukSlsNwZImx0mHf9V2zHBASlP8rQA/eg=; b=yk+jML9/FpNU8a
	kaiTFSX4qpO3BsllCNc01uxmSpEDJGqlp1ddSdDMfdrCYOix2Yw/8rRb82DLrf6+LH3zWBny8G4Ty
	B4EiC2bmYXpCxpe5EfAYOeuKvZjaz16DzBPHgJxQox9wrMRBQFUaWDFrU/6plvI0RC4O2QrkrRql/
	2m3DM3Cgbz0kLPAl3uZlvqZdwI+SnuTAeNmCs9+43Z7QcOqHZ/CgwTSJLS3a5YL8uKOzM2V4nhF/K
	uzmQIxRtOJsZhKeCzmcS9cx6MQrcvGwqngdXz/kiw+w8YdNqwoms4L4y7DhkH4tKzkkVbG8B54nbo
	JBvf3JIAF90Asl0I1nvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsn34-000000089Qm-1g0G;
	Fri, 05 Apr 2024 17:08:18 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsn31-000000089OV-08hR
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 17:08:16 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1e0d82d441bso21483375ad.3
        for <linux-phy@lists.infradead.org>; Fri, 05 Apr 2024 10:08:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712336892; x=1712941692;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:dkim-signature:date:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XnwA3IQIKVbX5TtpnpowKO0T6lwnxkQ6mM8Ph3vpATI=;
        b=mqiTq9NOuOUhcbkJFMGhjUspiLbKOPfdAYzyZzWRQQGSa7iYnCaZWfYDnLlpN9Ab1B
         BgyO9AUocAGwxWMMI8vPwHDB4bMfYsl8UpdC3/X1Yt13O4wbaVm0qwcDcDW1wnb7BXDA
         vc2jXSL/bqyP2SQSDWvVBIPeUuev5Lb3+kSSfCb+GA768PLR91Sd6Slo4pPyDVV1ZzrW
         1shGTMuJ0Ln72frNHzeyLLp8BgnhMFzwZ16CXhZ+85xN3wUyLJ4fdNxghCYIPzGKBZMd
         ibS7dJltlsRCCi3+JT41n99wA4fNNGW898L4t1zpv5eEizcxub5sTR4ctiPGcayNELDQ
         tGsA==
X-Forwarded-Encrypted: i=1; AJvYcCUl9XXR8AERICZu8FdzbhQUqO1sQ2SX+nMerH/c0jbqgwxyC+BJEb3c/5JRvhY2v2dIFnIpldxXenVaGJDSWbmL4vmQ/I8GyJ9NKGD+bQ==
X-Gm-Message-State: AOJu0YyzoaDg+ntJEqwwYwRtn4FTxBwwOOd6/BLCt/PtT4ISy6F78j6m
	NSe71cQRSeRYBUbVHzYxMKJlXaaov5wysrmeBJ/MSzWaqN7rHoDU
X-Google-Smtp-Source: AGHT+IEASoP3F94AXrP/j8HTv/ikxF7pg4M+6ywVmU6cnIUTIRjvyRm3C2Ux7lJjevJhmXt0VLvfAw==
X-Received: by 2002:a17:903:32d0:b0:1e2:6165:80cd with SMTP id i16-20020a17090332d000b001e2616580cdmr2475431plr.38.1712336892391;
        Fri, 05 Apr 2024 10:08:12 -0700 (PDT)
Received: from mail.marliere.net ([24.199.118.162])
        by smtp.gmail.com with ESMTPSA id kr12-20020a170903080c00b001db37fd26bcsm1820471plb.116.2024.04.05.10.08.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 10:08:11 -0700 (PDT)
Date: Fri, 5 Apr 2024 14:08:07 -0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marliere.net;
	s=2024; t=1712336890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=XnwA3IQIKVbX5TtpnpowKO0T6lwnxkQ6mM8Ph3vpATI=;
	b=rDe9hRhptOqWLf7DP7DE7KkviR7KGu4+QARyO4C94hn1S3211fVZuUtazrUf71pBUnOxsr
	2ZoCYvJ23rw7TvHr/6YKe+YpZWwyaATvYTb+cZZMlVNALgAQ+55o8rlAruZE8I0OtQPNyC
	XjIfhDqxL5m4JW3kZ4qRSJN96wwhbP0OQZ77vT4YWG631w5hnxwUOV97DzCJBGpK0vk3Su
	W5hYf5C9dYgNllTF+zrcmopBSLY22O24eDqRgi9YeE63hrmlgiXdv5IrCHA8KL1n5IdFvQ
	bnVClunI+pvMZ+gEBx2XIxmAcAST/kNi1JRLZ3MOW3ZF4vZqsfyeGBeuFq4CGg==
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=ricardo@marliere.net smtp.mailfrom=ricardo@marliere.net
From: "Ricardo B. Marliere" <ricardo@marliere.net>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] net: phy: core: make phy_class constant
Message-ID: <4yxiyk555fts7ibsjubatreugv7pdmvcbnnamcuqoxpwx4g3wr@f6t33jkfwcve>
References: <20240305-class_cleanup-phy-v1-1-106013a644dc@marliere.net>
 <ZhAtQngu2uChbCCt@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZhAtQngu2uChbCCt@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_100815_279450_7B7FBD30 
X-CRM114-Status: GOOD (  24.38  )
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

On  5 Apr 22:26, Vinod Koul wrote:
> On 05-03-24, 15:18, Ricardo B. Marliere wrote:
> > Since commit 43a7206b0963 ("driver core: class: make class_register() take
> > a const *"), the driver core allows for struct class to be in read-only
> > memory, so move the phy_class structure to be declared at build time
> > placing it into read-only memory, instead of having to be dynamically
> > allocated at boot time.
> 
> why is this tagged net: ...??
> This has nothing to do with networking!

Hi Vinod.

My mistake, it was due to poor local tree management. Please let me know
if you can review and take it as is, changing the subject line, or if
you want me to resend.

Best regards,
-	Ricardo.


> 
> > 
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Ricardo B. Marliere <ricardo@marliere.net>
> > ---
> >  drivers/phy/phy-core.c | 26 +++++++++++++++-----------
> >  1 file changed, 15 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> > index 7f9b4de772ee..5776d44fd32f 100644
> > --- a/drivers/phy/phy-core.c
> > +++ b/drivers/phy/phy-core.c
> > @@ -20,7 +20,12 @@
> >  #include <linux/pm_runtime.h>
> >  #include <linux/regulator/consumer.h>
> >  
> > -static struct class *phy_class;
> > +static void phy_release(struct device *dev);
> > +static const struct class phy_class = {
> > +	.name = "phy",
> > +	.dev_release = phy_release,
> > +};
> > +
> >  static struct dentry *phy_debugfs_root;
> >  static DEFINE_MUTEX(phy_provider_mutex);
> >  static LIST_HEAD(phy_provider_list);
> > @@ -706,7 +711,7 @@ struct phy *of_phy_simple_xlate(struct device *dev,
> >  	struct phy *phy;
> >  	struct class_dev_iter iter;
> >  
> > -	class_dev_iter_init(&iter, phy_class, NULL, NULL);
> > +	class_dev_iter_init(&iter, &phy_class, NULL, NULL);
> >  	while ((dev = class_dev_iter_next(&iter))) {
> >  		phy = to_phy(dev);
> >  		if (args->np != phy->dev.of_node)
> > @@ -969,7 +974,7 @@ struct phy *phy_create(struct device *dev, struct device_node *node,
> >  	device_initialize(&phy->dev);
> >  	mutex_init(&phy->mutex);
> >  
> > -	phy->dev.class = phy_class;
> > +	phy->dev.class = &phy_class;
> >  	phy->dev.parent = dev;
> >  	phy->dev.of_node = node ?: dev->of_node;
> >  	phy->id = id;
> > @@ -1238,14 +1243,13 @@ static void phy_release(struct device *dev)
> >  
> >  static int __init phy_core_init(void)
> >  {
> > -	phy_class = class_create("phy");
> > -	if (IS_ERR(phy_class)) {
> > -		pr_err("failed to create phy class --> %ld\n",
> > -			PTR_ERR(phy_class));
> > -		return PTR_ERR(phy_class);
> > -	}
> > +	int err;
> >  
> > -	phy_class->dev_release = phy_release;
> > +	err = class_register(&phy_class);
> > +	if (err) {
> > +		pr_err("failed to register phy class");
> > +		return err;
> > +	}
> >  
> >  	phy_debugfs_root = debugfs_create_dir("phy", NULL);
> >  
> > @@ -1256,6 +1260,6 @@ device_initcall(phy_core_init);
> >  static void __exit phy_core_exit(void)
> >  {
> >  	debugfs_remove_recursive(phy_debugfs_root);
> > -	class_destroy(phy_class);
> > +	class_unregister(&phy_class);
> >  }
> >  module_exit(phy_core_exit);
> > 
> > ---
> > base-commit: 00ca8a15dafa990d391abc37f2b8256ddf909b35
> > change-id: 20240305-class_cleanup-phy-668a148b2acd
> > 
> > Best regards,
> > -- 
> > Ricardo B. Marliere <ricardo@marliere.net>
> 
> -- 
> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
