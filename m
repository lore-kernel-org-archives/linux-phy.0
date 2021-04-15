Return-Path: <SRS0=iPRR=JM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDACCC433ED
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 15:00:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4CA626113B
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 15:00:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4CA626113B
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jgcCUQccsZz0zOgwweYRZzn1EAfQb4hwYvxKu4sf1JA=; b=HD5rCXXJrVYWSZST2Q343NHwD
	/kZiX3xnbL1RYVtrPmXmlVXqAV+QBSmxieUctGJdc+v6qCzu9IL5azP5B7jSOca6AUm65z+vgQ2Hi
	ZR+cSxG92y/ZCg9eLBrXPTMQxHYqxSACnoI8Xei5vB59EeQTWiWAQ3xpfol9Lm6Ukmud0MieV8sFq
	7xxVZp8u3qz1BJlCU5JGRgXehObVP+k8vVagSga8YIk4XQiNLcCD8Dk0gS52fSDnqh0P5pfIt0z8a
	/o0a3rW/WTclhBqw3a8WAZkJnx+AlelEYcJjheCk9Zan6T7fmldIAtmehq8PFmZv+MW2WaTpQ+l2O
	b5zbhzJbQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lX3U2-00GX29-GI; Thu, 15 Apr 2021 15:00:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX3Tz-00GX1k-SW
 for linux-phy@desiato.infradead.org; Thu, 15 Apr 2021 15:00:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=pKl9USW4Lb4q2lT4TkJijaFrzIIfUx2rrVu/7hEAIwg=; b=Cc5Ha8QQjWqp2nx4hvk2cPNPY/
 8Pug8oq1FM+faLNDFDhp3SKEqxCjXbSrHoHh9cE1wrotScHEQLCnGel8vdb+eS6BYeJAzaXCLJBsF
 l+5RJRtk+/wmQoL8HD7/zjpqPcwJ/YD8fSwcj1s7c12kPn6cfF5N7p3HCxVHXf9DQs+em4FFu5JfO
 2yWmm47GhukgDgdHy2mTQENQnQGXggRyNSSqlF9clU9qxYq+hsiyN6Wlik4em8h1TVcWw+n+6+9BG
 ff4kL7aoJ/rOTyxodN1K6PTqJglRqg0DmawddAruQdm9owE8RJaF2dkyov/iepn2ZDQgNehx7Fy8a
 zIKcU/iw==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX3Tx-008gC9-1H
 for linux-phy@lists.infradead.org; Thu, 15 Apr 2021 15:00:38 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13FF0WgP101805;
 Thu, 15 Apr 2021 10:00:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1618498832;
 bh=pKl9USW4Lb4q2lT4TkJijaFrzIIfUx2rrVu/7hEAIwg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=IpcH/Wot0NJFgpovlSvrAMOg9Odk3OJmWmyBfGoQON3QRTjAuRndajqjOAcqBIa9t
 ko7d9o0ZcL8vL4ULPPKHYFwWKfAMWBhEJMCvWLw77cE7N6e/zK92l+nYaLg7dFHju3
 e1c12kCm/1KgPXQx5HsZPyWv4AzygpmoMr+kZrxc=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13FF0W7k105205
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 15 Apr 2021 10:00:32 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 15
 Apr 2021 10:00:31 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 15 Apr 2021 10:00:31 -0500
Received: from [10.250.233.30] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13FF0RlR061690;
 Thu, 15 Apr 2021 10:00:28 -0500
Subject: Re: [PATCH v3 2/4] phy: Add API for devm_of_phy_optional_get_by_index
To: Aswath Govindraju <a-govindraju@ti.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-can@vger.kernel.org>, Vinod Koul
 <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, Marc Kleine-Budde
 <mkl@pengutronix.de>, Wolfgang Grandegger <wg@grandegger.com>, Lokesh Vutla
 <lokeshvutla@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Grygorii
 Strashko <grygorii.strashko@ti.com>
References: <20210415144947.4725-1-a-govindraju@ti.com>
 <20210415144947.4725-3-a-govindraju@ti.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <c3baf0bc-e166-4aee-f4c7-e5915352ec82@ti.com>
Date: Thu, 15 Apr 2021 20:30:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210415144947.4725-3-a-govindraju@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_080037_190336_25FA79B0 
X-CRM114-Status: GOOD (  22.59  )
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

Hi Aswath,

On 15/04/21 8:19 pm, Aswath Govindraju wrote:
> Add API for devm_of_phy_optional_get_by_index, to obtain a reference to an
> optional phy by index.

Rob has posted a patch
http://lore.kernel.org/r/20210414135525.3535787-1-robh@kernel.org
that doesn't require consumers to get a phy by using string. Since your
usecase also requires only one PHY, that patch should be sufficient.
$patch could be deferred until a real use case comes.

Thanks
Kishon

> 
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  drivers/phy/phy-core.c  | 26 ++++++++++++++++++++++++++
>  include/linux/phy/phy.h |  2 ++
>  2 files changed, 28 insertions(+)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index ccb575b13777..bf06d4e0ede2 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -839,6 +839,32 @@ struct phy *devm_of_phy_get(struct device *dev, struct device_node *np,
>  }
>  EXPORT_SYMBOL_GPL(devm_of_phy_get);
>  
> +/**
> + * devm_of_phy_optional_get_by_index() - lookup and obtain a reference to an optional phy by index.
> + * @dev: device that requests this phy
> + * @np: node containing the phy
> + * @index: index of the phy
> + *
> + * Gets the phy using _of_phy_get(), then gets a refcount to it,
> + * and associates a device with it using devres. On driver detach,
> + * release function is invoked on the devres data, then,
> + * devres data is freed. This differs to devm_of_phy_get_by_index() in
> + * that if the phy does not exist, it is not considered an error and
> + * -ENODEV will not be returned. Instead the NULL phy is returned,
> + * which can be passed to all other phy consumer calls.
> + */
> +struct phy *devm_of_phy_optional_get_by_index(struct device *dev, struct device_node *np,
> +					      int index)
> +{
> +	struct phy *phy = devm_of_phy_get_by_index(dev, np, index);
> +
> +	if (PTR_ERR(phy) == -ENODEV)
> +		phy = NULL;
> +
> +	return phy;
> +}
> +EXPORT_SYMBOL_GPL(devm_of_phy_optional_get_by_index);
> +
>  /**
>   * devm_of_phy_get_by_index() - lookup and obtain a reference to a phy by index.
>   * @dev: device that requests this phy
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index f3286f4cd306..c5f32b4fadd6 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -253,6 +253,8 @@ struct phy *devm_of_phy_get(struct device *dev, struct device_node *np,
>  			    const char *con_id);
>  struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
>  				     int index);
> +struct phy *devm_of_phy_optional_get_by_index(struct device *dev, struct device_node *np,
> +					      int index);
>  void of_phy_put(struct phy *phy);
>  void phy_put(struct device *dev, struct phy *phy);
>  void devm_phy_put(struct device *dev, struct phy *phy);
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
