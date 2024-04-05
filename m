Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44000CD11C2
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 16:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6jKa0Qpxv4bCLgTqkxpugiH/LKl45+g58dqVWhdxE4=; b=Rexqj+kBMazxly
	16bIgZoMDp8v7JDLsRtRBvR01GoN2wWFu7n1I1rnNMFxohSii+DgkT2YQ/+LQIygs1y98lI3Hi4AU
	e/j26BIOJv7JTTOAm3+xrMLK0d5Z69KSQLgHNfSJAOv1HTJA4ZCie+rCiQ7NgGTyMkfgYXBc37QtA
	xAm3X/VvBmLYq8uQsZSH3PGVa3yzoZhEHr2wYgVq6ecFLORLwBBEJaoggtTq2Y5gw7jbV6mOJv6fR
	/k8nIEH8tQ95hsidJ2zOYed627f6eyEdpKIDbjG2H7706jx7H0ZJM/cI09HXhCU5oNwjAwlIxl7Ml
	3+izA56/1wmr/816AKzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmrr-000000086Ob-3Ucc;
	Fri, 05 Apr 2024 16:56:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmrn-000000086Ln-2zYh
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 16:56:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DDF3360BC6;
	Fri,  5 Apr 2024 16:56:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2717C433C7;
	Fri,  5 Apr 2024 16:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712336198;
	bh=Hm4a0vwcuAQavPCbZcpiJ3TprdlvjCYP1GTkAfXbqjY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UDJcu+WAGnxu44A42BGkD+5NN7zbVo0oioF5DUJwstfwVAWjqmP7Ww/gmzc2e8hL+
	 XBeSqXYUdjkBZkY8WF8owO6Wg/vVckmyAmGYNc4/F3gQYoaVb5hmEHRN8DTOt+IR5U
	 a/mrVFR+TLCnQyVAJfBG0O0jmoE7TYWJZz3qMTPuWi9NfNbQSKo7COAwDT7O1yRpBy
	 PzfwCmAknHeWGTgsGKvqt1hxE/FJr7dCbkp3eWjYs/iZXLcmdciHxAL4FB2FOr34Z7
	 xSOY3gZ1F6cIKF1fP6uGVr0gpYstz0fBG8XYrfRzVjug3ZpWgFMDlxn/olqu9GIcbt
	 1n0RIyxHdZayQ==
Date: Fri, 5 Apr 2024 22:26:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "Ricardo B. Marliere" <ricardo@marliere.net>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] net: phy: core: make phy_class constant
Message-ID: <ZhAtQngu2uChbCCt@matsya>
References: <20240305-class_cleanup-phy-v1-1-106013a644dc@marliere.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240305-class_cleanup-phy-v1-1-106013a644dc@marliere.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_095640_003792_E02B86C1 
X-CRM114-Status: GOOD (  20.91  )
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

On 05-03-24, 15:18, Ricardo B. Marliere wrote:
> Since commit 43a7206b0963 ("driver core: class: make class_register() take
> a const *"), the driver core allows for struct class to be in read-only
> memory, so move the phy_class structure to be declared at build time
> placing it into read-only memory, instead of having to be dynamically
> allocated at boot time.

why is this tagged net: ...??
This has nothing to do with networking!

> 
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Ricardo B. Marliere <ricardo@marliere.net>
> ---
>  drivers/phy/phy-core.c | 26 +++++++++++++++-----------
>  1 file changed, 15 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 7f9b4de772ee..5776d44fd32f 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -20,7 +20,12 @@
>  #include <linux/pm_runtime.h>
>  #include <linux/regulator/consumer.h>
>  
> -static struct class *phy_class;
> +static void phy_release(struct device *dev);
> +static const struct class phy_class = {
> +	.name = "phy",
> +	.dev_release = phy_release,
> +};
> +
>  static struct dentry *phy_debugfs_root;
>  static DEFINE_MUTEX(phy_provider_mutex);
>  static LIST_HEAD(phy_provider_list);
> @@ -706,7 +711,7 @@ struct phy *of_phy_simple_xlate(struct device *dev,
>  	struct phy *phy;
>  	struct class_dev_iter iter;
>  
> -	class_dev_iter_init(&iter, phy_class, NULL, NULL);
> +	class_dev_iter_init(&iter, &phy_class, NULL, NULL);
>  	while ((dev = class_dev_iter_next(&iter))) {
>  		phy = to_phy(dev);
>  		if (args->np != phy->dev.of_node)
> @@ -969,7 +974,7 @@ struct phy *phy_create(struct device *dev, struct device_node *node,
>  	device_initialize(&phy->dev);
>  	mutex_init(&phy->mutex);
>  
> -	phy->dev.class = phy_class;
> +	phy->dev.class = &phy_class;
>  	phy->dev.parent = dev;
>  	phy->dev.of_node = node ?: dev->of_node;
>  	phy->id = id;
> @@ -1238,14 +1243,13 @@ static void phy_release(struct device *dev)
>  
>  static int __init phy_core_init(void)
>  {
> -	phy_class = class_create("phy");
> -	if (IS_ERR(phy_class)) {
> -		pr_err("failed to create phy class --> %ld\n",
> -			PTR_ERR(phy_class));
> -		return PTR_ERR(phy_class);
> -	}
> +	int err;
>  
> -	phy_class->dev_release = phy_release;
> +	err = class_register(&phy_class);
> +	if (err) {
> +		pr_err("failed to register phy class");
> +		return err;
> +	}
>  
>  	phy_debugfs_root = debugfs_create_dir("phy", NULL);
>  
> @@ -1256,6 +1260,6 @@ device_initcall(phy_core_init);
>  static void __exit phy_core_exit(void)
>  {
>  	debugfs_remove_recursive(phy_debugfs_root);
> -	class_destroy(phy_class);
> +	class_unregister(&phy_class);
>  }
>  module_exit(phy_core_exit);
> 
> ---
> base-commit: 00ca8a15dafa990d391abc37f2b8256ddf909b35
> change-id: 20240305-class_cleanup-phy-668a148b2acd
> 
> Best regards,
> -- 
> Ricardo B. Marliere <ricardo@marliere.net>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
