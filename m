Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFF31C761A6
	for <linux-phy@archiver.kernel.org>; Mon,  3 Apr 2023 15:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83N7eY4W3xDzKstBirM/XMiYxz8m3KHZ3J1qG69o4u0=; b=pSoQmErWnm8f0c
	EPmgz+YIKQqvkCVXxspZ4AAMU/7Vk3exksd4L6rcN/Qgcv4QMPI8stqOmJpm5aJrExrZOeqQd6Tw/
	GQcFrRUzhGIfEEkEFCTSgCMk2IVWT9jlIjUp0AwBC5lfMdy2GiaPFBZ7v+87u0Hwv6iId2kpDqK8Y
	NfYThCKOPJoEu8cbg0s0sGF930bCoRd5XNW8+sixwwyzElicwqsMUquhScg7Y7hxO6V3N8fPnvKFX
	/kYOA8c0GSZ1gUN3JyjJNBjU5eRUrSfdhDU+C6k5Kju3RVlEH5Sig6zgeIzAxeZAm5q/wgba5PMc4
	VIFmNzB/mmdkbTsfJ7WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjLln-00FjPZ-1L;
	Mon, 03 Apr 2023 15:06:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjLlj-00FjOY-1d;
	Mon, 03 Apr 2023 15:06:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 153D761FCA;
	Mon,  3 Apr 2023 15:06:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0CD2C433D2;
	Mon,  3 Apr 2023 15:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680534409;
	bh=iPsLfUOydlyRBM14W+1Y54Vdkd9NzvvPvuL3Akt7gro=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mRsYPWkYCNmwTCjgnX9A4Fgng8HytyNJLrHJG55zROJd+xwUXCaIB/Z+2HKftDsVD
	 9BX4RxhBRVkrv1zrwAYZHDE/xXlYxYwBMr91VbEny7S0WD01sXo6VptG4e00uf8yZa
	 5HXaNt5WArUs+4nVo+FmDU+KxudutNURsPf/YvB8flUdvsIeq23eeOv4qVRgqsYw8o
	 PydEPYPhpFxousptAc465o/Qjvtcu9JBlxgegUDLYeuHsPMvwozW9BohIBKiJnhiF9
	 QtvLyGcu2VzvHj+MpqHzUwRUnmLG3YfKH3ntCjrt+RDEUsXYfG5oFdS4BdkbIn8qos
	 CvUrnMlh7drUg==
Date: Mon, 3 Apr 2023 20:36:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, Eddie Hung <eddie.hung@mediatek.com>
Subject: Re: [PATCH v9 1/2] phy: core: add debugfs files
Message-ID: <ZCrrhZzj98WdWkd3@matsya>
References: <20230316071452.9161-1-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230316071452.9161-1-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_080651_625499_9E4A78A6 
X-CRM114-Status: GOOD (  22.70  )
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

On 16-03-23, 15:14, Chunfeng Yun wrote:
> Add a debugfs root for phy class, and create a debugfs directory under
> the root when create phy, then phy drivers can add debugfs files.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v9: create a 'phy' debugfs root, add a debugfs entry in struct phy suggested by Vinod;
> 
> No v8 sent out;
> 
> v2~v7: no changes
> ---
>  drivers/phy/phy-core.c  | 14 ++++++++++++++
>  include/linux/phy/phy.h |  2 ++
>  2 files changed, 16 insertions(+)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 9951efc03eaa..05715352881e 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -11,6 +11,7 @@
>  #include <linux/export.h>
>  #include <linux/module.h>
>  #include <linux/err.h>
> +#include <linux/debugfs.h>
>  #include <linux/device.h>
>  #include <linux/slab.h>
>  #include <linux/of.h>
> @@ -20,6 +21,7 @@
>  #include <linux/regulator/consumer.h>
>  
>  static struct class *phy_class;
> +static struct dentry *phy_debugfs_root;
>  static DEFINE_MUTEX(phy_provider_mutex);
>  static LIST_HEAD(phy_provider_list);
>  static LIST_HEAD(phys);
> @@ -996,6 +998,8 @@ struct phy *phy_create(struct device *dev, struct device_node *node,
>  		pm_runtime_no_callbacks(&phy->dev);
>  	}
>  
> +	phy->debugfs = debugfs_create_dir(dev_name(&phy->dev), phy_debugfs_root);
> +
>  	return phy;
>  
>  put_dev:
> @@ -1226,6 +1230,7 @@ static void phy_release(struct device *dev)
>  
>  	phy = to_phy(dev);
>  	dev_vdbg(dev, "releasing '%s'\n", dev_name(dev));
> +	debugfs_remove_recursive(phy->debugfs);
>  	regulator_put(phy->pwr);
>  	ida_simple_remove(&phy_ida, phy->id);
>  	kfree(phy);
> @@ -1242,6 +1247,15 @@ static int __init phy_core_init(void)
>  
>  	phy_class->dev_release = phy_release;
>  
> +	phy_debugfs_root = debugfs_create_dir("phy", NULL);
> +
>  	return 0;
>  }
>  device_initcall(phy_core_init);
> +
> +static void __exit phy_core_exit(void)
> +{
> +	debugfs_remove_recursive(phy_debugfs_root);

This should be moved to phy_release() we want the debugfs to be cleaned
first

> +	class_destroy(phy_class);

hmmm we are missing this already, that might be an issue!

> +}
> +module_exit(phy_core_exit);
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index 3a570bc59fc7..f6d607ef0e80 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -148,6 +148,7 @@ struct phy_attrs {
>   * @power_count: used to protect when the PHY is used by multiple consumers
>   * @attrs: used to specify PHY specific attributes
>   * @pwr: power regulator associated with the phy
> + * @debugfs: debugfs directory
>   */
>  struct phy {
>  	struct device		dev;
> @@ -158,6 +159,7 @@ struct phy {
>  	int			power_count;
>  	struct phy_attrs	attrs;
>  	struct regulator	*pwr;
> +	struct dentry		*debugfs;
>  };
>  
>  /**
> -- 
> 2.18.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
