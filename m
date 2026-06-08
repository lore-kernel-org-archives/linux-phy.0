Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0796ECD8C9F
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 11:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkY6K79UvENVxH22o6sUCYMUfVekCs3fymgWnDFj/ro=; b=ft6BPhsg2tFbRJ
	Fiqt6MOEICM3s1Qmf6z5N79uTjDLNk4bSqpKO65mOecz07DI5JWt/TidM+hsn/ExP25BvEayoGvWE
	VKgR+vkUuM9indz6DmMexdbC75lk7W1Xi+WQEn9wRyq67sE+OAubdMohOtXMTfENIhRSdsY6zUJlq
	Yqmkli65/zT+aRN34yvfjESbuzKNSnlkf5QLpdhtmgFO98cdfuD7wqtlS2KkU3TFV1/KFKBuxhJjs
	q3C9fyjP99MvvJ2ccgfWRo/sCZKTsum4amwl3XV527zLQgcKqAOwZXLCAeVspmmcpbf+3J8FWnEVF
	TYdCNpZpeum9ZPIcdvFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWYAM-00000003QlR-3H44;
	Mon, 08 Jun 2026 11:29:14 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWYAK-00000003QkZ-3zFE
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 11:29:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780918151;
	bh=3x0aOUZX+5j2r+yYOPgsPYoX8m0BOF46dMlnqDTMiqA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QyCnZtJ0jUH3f+W/jfgRTT0z7go4snN7wpa4dbNnjrjny7fv6mvZ4ZJ9yE1TNp1SB
	 B+AvcjFU1Jkl/dq5KgnpNVdV4gDUUQQ5N69W0OG+VhGWr9qIyVHsn6X+Lor1dxPT3t
	 Q98BEdc2AaeQeOIy99kmE97NSXbHaCSrPZGeXQQ33HU8vU18JwvGxA2+jT6nA8Y8p0
	 GUWJI+BeiofGMnO6cBN4uoyaB8ZCq3MOfHMgKUHvg7RasNLFslAGKoyr5PECJKAqgd
	 j0Op1I7k/DQPUak6AVFycZanEbRYtMOxx599/GyNYRIxW0pbO+dqYgqeObJhnuLc1C
	 5XDFGYMlo969A==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CA89217E02F1;
	Mon,  8 Jun 2026 13:29:10 +0200 (CEST)
Message-ID: <69217ce5-d7c7-4fb0-8d58-e78c0ef8514f@collabora.com>
Date: Mon, 8 Jun 2026 13:29:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 02/10] spmi: Print error status with %pe format
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org,
 vkoul@kernel.org, olteanv@gmail.com
References: <20260608100949.36309-3-angelogioacchino.delregno@collabora.com>
 <20260608103702.411271F00893@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260608103702.411271F00893@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_042913_143673_AA2158C7 
X-CRM114-Status: GOOD (  18.93  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 6/8/26 12:37, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> 
> Pre-existing issues:
> - [High] The OF device node assigned to the newly allocated SPMI device does not have its reference count incremented, creating a potential use-after-free condition when the iterator macro automatically drops the reference.
> --
> 
> commit eb2ded032315a7ba1f8c878f6e0a10db80cf0346
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> spmi: Print error status with %pe format
> 
> This commit updates error messages in the SPMI driver to use the %pe format
> specifier for printing error statuses instead of printing integer error codes.
> 
>> diff --git a/drivers/spmi/spmi.c b/drivers/spmi/spmi.c
>> index e93fc2c957590..95db19a0a44ec 100644
>> --- a/drivers/spmi/spmi.c
>> +++ b/drivers/spmi/spmi.c
> [ ... ]
>> @@ -522,7 +522,7 @@ static void of_spmi_register_devices(struct spmi_controller *ctrl)
>>   		err = spmi_device_add(sdev);
>>   		if (err) {
>>   			dev_err(&sdev->dev,
>> -				"failure adding device. status %d\n", err);
>> +				"failure adding device. status %pe\n", ERR_PTR(err));
> 
> [Severity: High]
> This is a pre-existing issue, but I noticed a potential use-after-free
> condition with the OF node reference counting.
> 
> In drivers/spmi/spmi.c:of_spmi_register_devices(), the
> for_each_available_child_of_node() loop iterates through child nodes,
> automatically calling of_node_put() on the previous node when advancing.
> 
> Inside the loop, the node is assigned to the SPMI device:
> 
> 	device_set_node(&sdev->dev, of_fwnode_handle(node));
> 
> Does this assignment need to invoke of_node_get() to increment the node's
> reference count? Without it, when the loop advances, the node's reference
> is dropped, leaving sdev->dev.of_node as a dangling pointer.
> 
> If the device tree node is dynamically managed (e.g., via DT overlays),
> unloading the overlay will free the node, causing a use-after-free whenever
> the active SPMI device later accesses its of_node.
> 
> Additionally, drivers/spmi/spmi.c:spmi_dev_release() lacks an of_node_put()
> to balance the required reference:
> 
> static void spmi_dev_release(struct device *dev)
> {
> 	struct spmi_device *sdev = to_spmi_device(dev);
> 
> 	kfree(sdev);
> }
> 
> Should spmi_dev_release() be updated to safely release the reference once
> it is correctly obtained?
> 
>>   			spmi_device_put(sdev);
>>   		}
>>   	}
> 

Although very unlikely to happen at this moment in time, this is a valid concern.

It's out of scope for this series - so I will send a fix separately.
This should not block this series.

Cheers,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
