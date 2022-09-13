Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B50BC6FA82
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 15:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnDLW1THa9agpzEYS0Ck+2wvAvPpRmDgm8Pe/S4ChXQ=; b=bckKqX2Cr/RXBT
	wf1W6oUTcAnzF6768e0w3ru5v6v7Zkwwb+A6JSm2V+L00iByD8vm4F6ppAwK3ldYqbxuzDNTat37I
	6tcbV1jGA1ea/OQIW+N06XnWga3+5+hFnPzFdxdRNg7/fZRyJ75sKHyFLvxs9LGBn25f3iKQAuCRh
	VZBs60fOIVyH8dz+zn8KljASvm91xLZk4CS0bUw6n+GQKPwGtoGGOlbn4lJjLO7L8Pau7ofTDIs9A
	mfvWFXmSb2OWue/3T6mnZKjmxj2koCMUn4Mu4NOtRJ1YxqP67Lh3xbUIAzOL0zUz9FRhCkz/09JQ8
	gv17zHSsXSJumkqsohwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7d6-00CIqp-BM; Tue, 13 Sep 2022 15:15:16 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7Ml-00C3Qt-6A
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 14:58:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 902C0B80F03;
	Tue, 13 Sep 2022 14:58:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53B62C433D7;
	Tue, 13 Sep 2022 14:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663081100;
	bh=X4LrdIPAkCosmlowIC581nEDNxjhrI7cVXFC6Z6+Dek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=saSk6+GNjnUs4yALADYwv4S3HA/Q+41UkbwqN7khJiYwmrhrtoerLqvtPOwXW6Xkd
	 Q/bGE12+ivd5I1VkbUfOQnLEPUP9Hf29OGBD82phcCKor1ekLsgNDkW7fVLzMqVuvt
	 2YYKzDtXHhhWBRC1fI3fd+gVnyzFOp0OV6J/hiYjlx0egwa5tUmfMCStA8xynRJ7LW
	 tLY/2b65kMbjD/X2Nm9TSvTUTImOrcfvG7gNXHhgzDQDANpNl2JLN5qVe8HuFB2mKD
	 CKIyygkbwaGmWTwb4TngQfc5dKs+8LCXAdTxGpyxWT7aPv8FdzoArfGTLOH+hJUcN6
	 dns+27ao/8RyQ==
Date: Tue, 13 Sep 2022 20:28:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: helgaas@kernel.org, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	mka@chromium.org, quic_vbadigan@quicinc.com,
	quic_hemantk@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_ramkri@quicinc.com,
	manivannan.sadhasivam@linaro.org, swboyd@chromium.org,
	dmitry.baryshkov@linaro.org, Kishon Vijay Abraham I <kishon@ti.com>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v6 3/5] phy: core: Add support for phy power down & power
 up
Message-ID: <YyCahxV+315zoSQG@matsya>
References: <1662713084-8106-1-git-send-email-quic_krichai@quicinc.com>
 <1662713084-8106-4-git-send-email-quic_krichai@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1662713084-8106-4-git-send-email-quic_krichai@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_075823_643621_17840E2D 
X-CRM114-Status: GOOD (  20.60  )
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

On 09-09-22, 14:14, Krishna chaitanya chundru wrote:
> Introducing phy power down/up callbacks for allowing to park the
> link-state in L1ss without holding any PCIe resources during
> system suspend.

where is the rest of the series, pls cc relevant folks on cover at
least!

> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  drivers/phy/phy-core.c  | 30 ++++++++++++++++++++++++++++++
>  include/linux/phy/phy.h | 20 ++++++++++++++++++++
>  2 files changed, 50 insertions(+)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index d93ddf1..1b0b757 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -441,6 +441,36 @@ int phy_set_speed(struct phy *phy, int speed)
>  }
>  EXPORT_SYMBOL_GPL(phy_set_speed);
>  
> +int phy_power_down(struct phy *phy)
> +{
> +	int ret;
> +
> +	if (!phy || !phy->ops->power_down)
> +		return 0;
> +
> +	mutex_lock(&phy->mutex);
> +	ret = phy->ops->power_down(phy);
> +	mutex_unlock(&phy->mutex);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(phy_power_down);

I dont think this is a good idea as Dmitry already updated...

> +
> +int phy_power_up(struct phy *phy)
> +{
> +	int ret;
> +
> +	if (!phy || !phy->ops->power_up)
> +		return 0;
> +
> +	mutex_lock(&phy->mutex);
> +	ret = phy->ops->power_up(phy);
> +	mutex_unlock(&phy->mutex);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(phy_power_up);
> +
>  int phy_reset(struct phy *phy)
>  {
>  	int ret;
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index b141375..3a45f4d 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -76,6 +76,8 @@ union phy_configure_opts {
>   * @set_mode: set the mode of the phy
>   * @set_media: set the media type of the phy (optional)
>   * @set_speed: set the speed of the phy (optional)
> + * @power_down: parking the phy in power down state
> + * @power_up: pulling back the phy from power down
>   * @reset: resetting the phy
>   * @calibrate: calibrate the phy
>   * @release: ops to be performed while the consumer relinquishes the PHY
> @@ -89,6 +91,8 @@ struct phy_ops {
>  	int	(*set_mode)(struct phy *phy, enum phy_mode mode, int submode);
>  	int	(*set_media)(struct phy *phy, enum phy_media media);
>  	int	(*set_speed)(struct phy *phy, int speed);
> +	int	(*power_down)(struct phy *phy);
> +	int	(*power_up)(struct phy *phy);
>  
>  	/**
>  	 * @configure:
> @@ -226,6 +230,8 @@ int phy_init(struct phy *phy);
>  int phy_exit(struct phy *phy);
>  int phy_power_on(struct phy *phy);
>  int phy_power_off(struct phy *phy);
> +int phy_power_down(struct phy *phy);
> +int phy_power_up(struct phy *phy);
>  int phy_set_mode_ext(struct phy *phy, enum phy_mode mode, int submode);
>  #define phy_set_mode(phy, mode) \
>  	phy_set_mode_ext(phy, mode, 0)
> @@ -349,6 +355,20 @@ static inline int phy_power_off(struct phy *phy)
>  	return -ENOSYS;
>  }
>  
> +static inline int phy_power_down(struct phy *phy)
> +{
> +	if (!phy)
> +		return 0;
> +	return -ENOSYS;
> +}
> +
> +static inline int phy_power_up(struct phy *phy)
> +{
> +	if (!phy)
> +		return 0;
> +	return -ENOSYS;
> +}
> +
>  static inline int phy_set_mode_ext(struct phy *phy, enum phy_mode mode,
>  				   int submode)
>  {
> -- 
> 2.7.4

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
