Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25278D29FBB
	for <linux-phy@archiver.kernel.org>; Wed,  6 Nov 2024 15:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jvM3W3W2WErVZPJOAc1r/dKRKQ4q5x5koKYhx1MIEA=; b=bAWTb1GWMG7Nib
	IVMTZKln9HwbpcE/Vpm3ABIqApvnvMmuuk+XryPoffxGWRJ1SU+0TYstkuem/qdUn2pUmQ8URoQIW
	COgQ2mnA5F4S+OKWKjuhnglZjt5Jpgpn2EGTmpT7CeMghZ54MXSya+g1lPHrTalYBGKLuY0jjXNDn
	WaglDQlH/8UDMBhLDxl5W7YB3sxyFZXglUQN+SCyRQRPksL/kXz8uZQjM9R5RT9xM7RDm/XBcEbU3
	5m/dL1R2pH3dMqz8pTHLmrdIags7aBalr0INkGplIyGjok1/aQBOegJIDnWDLG+U1zHP/W0YUtd0q
	aLwe6U5E4ppOHmUSETIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8hxn-00000003oYn-2gRl;
	Wed, 06 Nov 2024 15:28:55 +0000
Received: from pv50p00im-ztdg10011201.me.com ([17.58.6.39])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8hxk-00000003oXr-3O1J
	for linux-phy@lists.infradead.org;
	Wed, 06 Nov 2024 15:28:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1730906928;
	bh=oR3Va8z9d2Tc/eVUOUoRWon9Mc7HjZ0n4MCseiNIfUE=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 x-icloud-hme;
	b=BtUBpuCWlzNwrPRuZx1Gl/wat4SdtvMIzO3ohgAsqQ+nR+cqBHpu7Kx2DtaDnCQ3R
	 dwNT2CnL6ZGUcsn8i4E/ZxoaKI5ukwlKStoknKsxfS8nCPP4lv0hqWHY68PFOIzqKu
	 zQkOlHI2iO1dEMX59fOEVs8q3loyH+BGR6s4w1uUsS6AY6Io38DLo8emoktuqZZHh/
	 cwhuxqgfcB2bkfvJd5fWT8j9q2XVXLOZtf/iIa+VduvWGhAxm5kQ6spwM1aXM2ER7N
	 WOGOD3Yr2MNpMHHaAmuDv2yHYqucD1MtcsBB02xyrmJKp/E7UVVy2x02rbSNOLYeAn
	 Q8lUXnp9e4Q1Q==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztdg10011201.me.com (Postfix) with ESMTPSA id A862768038A;
	Wed,  6 Nov 2024 15:28:41 +0000 (UTC)
Message-ID: <0699ed24-9603-48f5-b5bd-859dbed1da5c@icloud.com>
Date: Wed, 6 Nov 2024 23:28:37 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/6] phy: core: Fix an OF node refcount leakage in
 _of_phy_get()
To: Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Lee Jones <lee@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, stable@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Zijun Hu <quic_zijuhu@quicinc.com>
References: <20241102-phy_core_fix-v4-0-4f06439f61b1@quicinc.com>
 <20241102-phy_core_fix-v4-4-4f06439f61b1@quicinc.com>
 <ZypT18RpHSd_Vb-o@hovoldconsulting.com>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <ZypT18RpHSd_Vb-o@hovoldconsulting.com>
X-Proofpoint-GUID: P0XKrIbDBhf3WsrRJ3b3UEMcTA5BM8fK
X-Proofpoint-ORIG-GUID: P0XKrIbDBhf3WsrRJ3b3UEMcTA5BM8fK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-11-06_05,2024-11-05_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015 mlxlogscore=999
 bulkscore=0 mlxscore=0 phishscore=0 suspectscore=0 malwarescore=0
 spamscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2411060085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_072852_900875_9E2C9BD8 
X-CRM114-Status: GOOD (  17.55  )
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

On 2024/11/6 01:20, Johan Hovold wrote:
> On Sat, Nov 02, 2024 at 11:53:46AM +0800, Zijun Hu wrote:
>> From: Zijun Hu <quic_zijuhu@quicinc.com>
>>
>> _of_phy_get() will directly return when suffers of_device_is_compatible()
>> error, but it forgets to decrease refcount of OF node @args.np before error
>> return, the refcount was increased by previous of_parse_phandle_with_args()
>> so causes the OF node's refcount leakage.
>>
>> Fix by decreasing the refcount via of_node_put() before the error return.
>>
>> Fixes: b7563e2796f8 ("phy: work around 'phys' references to usb-nop-xceiv devices")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
>> ---
>>  drivers/phy/phy-core.c | 9 ++++++---
>>  1 file changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
>> index 52ca590a58b9..3127c5d9c637 100644
>> --- a/drivers/phy/phy-core.c
>> +++ b/drivers/phy/phy-core.c
>> @@ -624,13 +624,15 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
>>  	struct of_phandle_args args;
>>  
>>  	ret = of_parse_phandle_with_args(np, "phys", "#phy-cells",
>> -		index, &args);
>> +					 index, &args);
> 
> This is an unrelated change which do not belong in this patch (and even
> more so as it is a fix that is marked for backporting).
> 

make sense.
will remove it for next revision. (^^)

>>  	if (ret)
>>  		return ERR_PTR(-ENODEV);
>>  
>>  	/* This phy type handled by the usb-phy subsystem for now */
>> -	if (of_device_is_compatible(args.np, "usb-nop-xceiv"))
>> -		return ERR_PTR(-ENODEV);
>> +	if (of_device_is_compatible(args.np, "usb-nop-xceiv")) {
>> +		phy = ERR_PTR(-ENODEV);
>> +		goto out_put_node;
>> +	}
>>  
>>  	mutex_lock(&phy_provider_mutex);
>>  	phy_provider = of_phy_provider_lookup(args.np);
>> @@ -652,6 +654,7 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
>>  
>>  out_unlock:
>>  	mutex_unlock(&phy_provider_mutex);
>> +out_put_node:
>>  	of_node_put(args.np);
>>  
>>  	return phy;A
> 
> With the above fixed:
> 
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
