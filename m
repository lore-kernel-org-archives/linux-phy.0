Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 698ABE77199
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jan 2025 11:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lJ4jUIjvS6M2n4RNSVUSScvX4waTt9ndNUhbNvBBRVs=; b=jSF8e78aKgEvfu
	+SnRobeDOCOFNxOjQng1pudDwzRrfL5Lh6W/eNqULB6u5jVHv/wlRyfqXpwY+6EjHSQOb3Al2eJ55
	doja0YYWKN6Keo51ElHpfSfqGFkbZanCh8+Y4ElY0+8gRHM1zgeDQHfBsw8rRKtyTYeiMWwt4O9Dy
	M7AdkL4uzmu05aqdUfvKYXhIkEF9+DvQOXUEfkwGl2/OM5amNH0vz6I/Lwq+E1Ob+ldVSgJHKEG71
	x1xLNdgepcdDdWtpqlSalVi4UtvN+IXb4FHrVBsvkPjxZUo02oJQr7VzTEkkbJdOfSKc6GTEufhYS
	9vWlbNqi/wvYHJShSpKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUkuB-00000000yMv-0ahT;
	Mon, 06 Jan 2025 11:04:19 +0000
Received: from mail-m49211.qiye.163.com ([45.254.49.211])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUku7-00000000yKf-2PlP;
	Mon, 06 Jan 2025 11:04:17 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 7d7b0b78;
	Mon, 6 Jan 2025 19:04:10 +0800 (GMT+08:00)
Message-ID: <e2a18f8c-dc38-4b12-968e-dd369cb34cb4@rock-chips.com>
Date: Mon, 6 Jan 2025 19:04:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 13/17] drm/bridge: analogix_dp: Convert
 &analogix_dp_device.aux into a pointer
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org,
 sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com,
 l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-14-damon.ding@rock-chips.com>
 <e52pbjnusvuoqiyoorjr5msrfmgeqs2jt5sk6zcesvzy7cszzk@fzrtpsjoklgu>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <e52pbjnusvuoqiyoorjr5msrfmgeqs2jt5sk6zcesvzy7cszzk@fzrtpsjoklgu>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0tLSVZDS0NCSxhKGkofS0hWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a943b49590403a3kunm7d7b0b78
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pgg6EQw4DDINKR4eEDJKEShL
	Kx0KFBZVSlVKTEhNSk1KT05KQklMVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJTEpLNwY+
DKIM-Signature: a=rsa-sha256;
	b=O4iWLR2mvf8gW6QrD6uiWKKWfEubi4Xv418QKLOFVVODdPN0nrxq/xAJw1I1hx9LMfpEMn1jUXRd/nM5VynrtZOzMJG1Pi5KQbhHVXNPUb+KNLoKh8N7dsPcOFMqCuNy4i6GaiYBIcihV8fNO0k8P/1sZVVt8Rm8HLOhp0ywR64=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=1OhHA3tQesHAm8R0yHAK/Yz9C8LSErY0JbzzLjsKDBE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_030416_152767_EEAE2C1B 
X-CRM114-Status: GOOD (  20.31  )
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

On 2024/12/30 21:35, Dmitry Baryshkov wrote:
> On Thu, Dec 26, 2024 at 02:33:09PM +0800, Damon Ding wrote:
>> With the previous patch related to the support of getting panel from
>> the DP AUX bus, the &analogix_dp_device.aux can be obtained from the
>> &analogix_dp_plat_data.aux.
>>
>> Furthermore, the assignment of &analogix_dp_plat_data.connector is
>> intended to obtain the pointer of struct analogix_dp_device within the
>> analogix_dpaux_transfer() function.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>>   .../drm/bridge/analogix/analogix_dp_core.c    | 92 ++++++++++---------
>>   .../drm/bridge/analogix/analogix_dp_core.h    |  2 +-
>>   .../gpu/drm/bridge/analogix/analogix_dp_reg.c |  2 +-
>>   3 files changed, 50 insertions(+), 46 deletions(-)
>>
> 
> [...]
> 
>> @@ -1127,6 +1128,7 @@ static int analogix_dp_bridge_attach(struct drm_bridge *bridge,
>>   
>>   	if (!dp->plat_data->skip_connector) {
>>   		connector = &dp->connector;
>> +		dp->plat_data->connector = &dp->connector;
>>   		connector->polled = DRM_CONNECTOR_POLL_HPD;
>>   
>>   		ret = drm_connector_init(dp->drm_dev, connector,
>> @@ -1535,7 +1537,9 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
>>   static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
>>   				       struct drm_dp_aux_msg *msg)
>>   {
>> -	struct analogix_dp_device *dp = to_dp(aux);
>> +	struct analogix_dp_plat_data *plat_data = to_pdata(aux);
>> +	struct drm_connector *connector = plat_data->connector;
>> +	struct analogix_dp_device *dp = to_dp(connector);
> 
> I see that Analogix DP driver doesn't support
> DRM_BRIDGE_ATTACH_NO_CONNECTOR, but at the same time I don't think this
> is the step in the right direction. Instead please keep the AUX bus on
> the Analogix side and add an API to go from struct drm_dp_aux to struct
> analogix_dp_plat_data. Then your done_probing() callback can use that
> function.
> 

It is truly a more concise way.

In the next version, I will add the following functions on the Analogix 
side in order to get the pointers of struct analogix_dp_plat_data and 
struct drm_dp_aux on the Rockchip side. And the way has already been 
verified.

struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct 
drm_dp_aux *aux)
{
	struct analogix_dp_device *dp = to_dp(aux);

	return dp->plat_data;
}
EXPORT_SYMBOL_GPL(analogix_dp_aux_to_plat_data);

struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp)
{
	return &dp->aux;
}
EXPORT_SYMBOL_GPL(analogix_dp_get_aux);

>>   	int ret;
>>   
>>   	pm_runtime_get_sync(dp->dev);
>>
> 

Best regards
Damon


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
