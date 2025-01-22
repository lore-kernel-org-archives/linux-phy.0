Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3E3BC0218C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jan 2025 08:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/vd0d8+qGdq5kZSZmFjcrbxw+rDb7SgzC8Nt0V+8WI=; b=OUbBt0DxlUDBHi
	TKaOnQcYzO9LRDoWPhlPhNkWQuVIDldgKf/zO8eGVB/MzfCGMEVqbSUFCgpwZPopYC2NzobTS9EaA
	wfiIl6q1f4QHBkPpnxCBR8LM60DBYZQgJcyVl9riK40L5gTFIhiOVBQH/ZNVqYARr9SbEv2iNZEyd
	RXOyotPiEvB99LTygsweZJ8h/ILnk9ZfNw5BITCxuRGet5k6ccqfrk9FWerVWSwfzy4Fzp6r8S7At
	9sFdYADWaBJ4Tpxpgi2JlipPkRdkGxt4OEd1Q+gzbHsABIFTvs7ZGrI1m3TZ1FFBKdwOb/4lT1MIf
	0vXNg1cS6RdwuSirgLdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taVvE-00000009glY-0xS2;
	Wed, 22 Jan 2025 08:17:12 +0000
Received: from mail-m49206.qiye.163.com ([45.254.49.206])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taVvB-00000009gl4-2u95;
	Wed, 22 Jan 2025 08:17:11 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 964943b6;
	Wed, 22 Jan 2025 16:17:04 +0800 (GMT+08:00)
Message-ID: <330041c4-aaee-4b41-8ccd-e2807415c709@rock-chips.com>
Date: Wed, 22 Jan 2025 16:17:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 12/20] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org,
 sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com,
 l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-13-damon.ding@rock-chips.com>
 <d7zpv6qt52mhny54dejw4yqlp2k2c437op7qmepqe27pufplqk@64xvohrz7h2q>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <d7zpv6qt52mhny54dejw4yqlp2k2c437op7qmepqe27pufplqk@64xvohrz7h2q>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhlDSVZLSB1LHkgYTkgaHU1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a948d161e8403a3kunm964943b6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PDo6ERw6TTIJQy8BDB0QKUgQ
	CChPCgFVSlVKTEhMTkhIQ0lNSUJIVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJT05PNwY+
DKIM-Signature: a=rsa-sha256;
	b=h0BffGDBOH6ng9qbVn7Hx1mEclB/bytYNe7bHhleXXMVBiLrhiFs/2vIWNDx3nH3ajzpNCFmPtsU6g6qeBJUZEG8a508OpaoL5bOjo5xmETAocJwRQrxDRI1H0OHYdKtOINkPugtQVvcySFrnSiWSV1mvYmQhG69JnvEKoECHTw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=0dJqsA0isVay8dpsPnxyQHy2JrvwJVceSD2lUsDULE4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250122_001710_285598_5B70E073 
X-CRM114-Status: GOOD (  16.63  )
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

Hi Dmitry,

On 2025/1/9 20:48, Dmitry Baryshkov wrote:
> On Thu, Jan 09, 2025 at 11:27:17AM +0800, Damon Ding wrote:
>> Move drm_of_find_panel_or_bridge() a little later and combine it with
>> component_add() into a new function rockchip_dp_link_panel(). The function
>> will serve as done_probing() callback of devm_of_dp_aux_populate_bus(),
>> aiding to support for obtaining the eDP panel via the DP AUX bus.
>>
>> If failed to get the panel from the DP AUX bus, it will then try the other
>> way to get panel information through the platform bus.
>>
>> In addition, use dev_err() instead of drm_err() in rockchip_dp_poweron()
>> , which will be called before rockchip_dp_bind().
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> ---
>>
>> Changes in v4:
>> - Use done_probing() to call drm_of_find_panel_or_bridge() and
>>    component_add() when getting panel from the DP AUX bus
>>
>> Changes in v5:
>> - Use the functions exported by the Analogix side to get the pointers of
>>    struct analogix_dp_plat_data and struct drm_dp_aux.
>> - Use dev_err() instead of drm_err() in rockchip_dp_poweron().
>>
>> ---
>>   .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 41 ++++++++++++++-----
>>   1 file changed, 30 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> index 0957d3c5d31d..3ae01b870f49 100644
>> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> @@ -124,13 +124,13 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
>>   
>>   	ret = clk_prepare_enable(dp->pclk);
>>   	if (ret < 0) {
>> -		drm_err(dp->drm_dev, "failed to enable pclk %d\n", ret);
>> +		dev_err(dp->dev, "failed to enable pclk %d\n", ret);
> 
> 
> why?
> 

The &rockchip_dp_device.drm_dev will be assigned in rockchip_dp_bind(), 
which is called after probing process. The PM operations have been 
advanced to the probing for the AUX transmission, so the dev_err() may 
be better than drm_err().

>>   		return ret;
>>   	}
>>   
>>   	ret = rockchip_dp_pre_init(dp);
>>   	if (ret < 0) {
>> -		drm_err(dp->drm_dev, "failed to dp pre init %d\n", ret);
>> +		dev_err(dp->dev, "failed to dp pre init %d\n", ret);
>>   		clk_disable_unprepare(dp->pclk);
>>   		return ret;
>>   	}
> 

Best regards
Damon


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
