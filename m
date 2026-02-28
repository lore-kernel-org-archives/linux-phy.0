Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 720E8FEE4C1
	for <linux-phy@archiver.kernel.org>; Sat, 28 Feb 2026 03:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Z8eQgEpKSGvPjbXcJYPv/H5HawrX+k0TCBi4KLWAzg=; b=rDVYNwp3hCTmSC
	mxLmJoG4zf0kt/OlvtK2ADihqgRqwumxvC3+tCTiOQHcOj8M/1OudiuR93bytIE9uZMdAa5rPt/vD
	tWNdYJKmxnsSt4T7JgecVRw1NHZnif9MgYKrR0OB/tCxq9IDji3fe2mo7y5KzCN9QHwwzn0JIrYtM
	0DAn56fD+AbRUo0ce6wvcupIQ64QD1ca/MgFGZ9+me6agCfSI/BlqHSXC3YkzXKjS3Uk57HEODBz7
	BcrCenBtM7TpovVh6EtMeIiWDPhqc5N7Et8EpyieilRCy7vD9yS8tGcyAN20fKzssZKynBpPqa+Pu
	LxLpnHVul1+WnJMosF+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwBG9-00000009T4l-2wD0;
	Sat, 28 Feb 2026 03:44:53 +0000
Received: from p-west1-cluster2-host3-snip4-10.eps.apple.com ([57.103.64.241] helo=outbound.pv.icloud.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwBG7-00000009T41-1vYC
	for linux-phy@lists.infradead.org;
	Sat, 28 Feb 2026 03:44:52 +0000
Received: from outbound.pv.icloud.com (unknown [127.0.0.2])
	by p00-icloudmta-asmtp-us-west-1a-60-percent-0 (Postfix) with ESMTPS id C15EF180011E;
	Sat, 28 Feb 2026 03:44:43 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com; s=1a1hai; t=1772250287; x=1774842287; bh=G0xE+L9FTfxCQ0FLJdV49ai7AZLmbM0gLsjTvsdcF28=; h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:x-icloud-hme; b=cDMjDq2eLxO3LdIt7T8xHr6hBn9f0Ol9T2e3tTq7aStowZP9Ui+Vq7BdsQldt4GljrRxfq9LHLurEVht8YBg4PlOfmKd+I9teFKwK9HoTX2ySORt1DPkL9MEB/ValrnWAEZtWvusy7NQUZOErzlX9ZV6t0OJzcrqW60A2+BHtvovYsNWBPyL4hIzccxKX9qFRSMtmUnG+W+DLSpis/jLElnaalFVal6iuU1YIqnUQW44wMG0U9zkQ7r/s2zKYZ+FUlryyPaNva7KUY8uojFFliD95kE2NRLPrvkBqbiHT/wLfp7GzqodN0aJjszhlKbpRciGkna1GQAIGdCp81kGUQ==
Received: from [192.168.1.26] (unknown [17.56.9.36])
	by p00-icloudmta-asmtp-us-west-1a-60-percent-0 (Postfix) with ESMTPSA id 2E90618000A8;
	Sat, 28 Feb 2026 03:44:37 +0000 (UTC)
Message-ID: <3c354f3c-2012-47cb-b672-edd8c9d9f0cd@icloud.com>
Date: Sat, 28 Feb 2026 11:44:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: core: fix potential UAF in of_phy_simple_xlate()
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Johan Hovold <johan+linaro@kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Zijun Hu <zijun.hu@oss.qualcomm.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <aZejMSJ9qqRWb2pX@google.com>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <aZejMSJ9qqRWb2pX@google.com>
X-Proofpoint-ORIG-GUID: _Kb161FeUEFL02HBYfnOQzEKAn96YimS
X-Proofpoint-GUID: _Kb161FeUEFL02HBYfnOQzEKAn96YimS
X-Authority-Info-Out: v=2.4 cv=FrAIPmrq c=1 sm=1 tr=0 ts=69a264ad
 cx=c_apl:c_apl_out:c_pps a=azHRBMxVc17uSn+fyuI/eg==:117
 a=azHRBMxVc17uSn+fyuI/eg==:17 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=x7bEGLp0ZPQA:10 a=89pbpIhPpv8A:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=COk6AnOGAAAA:8 a=pGLkceISAAAA:8 a=1TrP15WN7FO4EzppjwcA:9 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDAzMSBTYWx0ZWRfX/H3LTInSScem
 BXUFWGay39n/bY+E9gkEthOmEFkR7jqMBDl9htUKLPnMPY4kYRudeaKaLXC1OyDtgYipNpVh8o+
 cM7nWLuHL0oxXzcDfktK6lZL75k6ODVmoVLNNpIUj7z0RJOcwo/TDlfGuNXmoKVFzlBk94oYEte
 jXRyvQviJs5TBRzMVsJsv971aHXxEb45wKsTpIU3zmmmS49jXqthWHsSS+Hdh3J1yIB+1ctjF61
 KKvIfsEtN8C95W8qp9yMzG31P1Dnljun417clPvsiLgAYQ7i6+MdvHeQumh/26lxx8ZGx1TeXps
 TdQiV5Vi8xx1VU8Cp6QSwUMb8J14d4IdU7yVZ/4X2ignoYAxg4agMomv+pGP28=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_01,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 phishscore=0 mlxlogscore=999 spamscore=0
 mlxscore=0 malwarescore=0 bulkscore=0 clxscore=1011 classifier=spam
 authscore=0 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602280031
X-JNJ: AAAAAAABuvbiksL5ZFt+D/BLKWD2v7nURcG1f9ON8nP4OvrIyk0k3iiPjki55CjTzESw1fpJ5zROc74sy3idttLvDD02jAG93YH4kHRwI5kNDfGaXKgKKvnnhh7/G6v7KaoNbu3ujZyZN7BPAVhLkamlm4Jr988vGR92GJl/dyrZYbQQBdo2e6uC5N0uqLGYa2JdDCeRK/Lfp2aRIFYjIUW7bqrAcHIe5Uxv3kXa3cN/AVTHtsIg+GQm6HasxyvTkkM19WSQZdW2jPl/Fm0cZdaLo2bpZ2yHWsDFYRZcdHCS+wMl+EDItUZWpaJXB9ykJzjJDKEBZ1KXQQ8xyURsLEYHOi2+mX7pMnnZ1UYy0emZJgTm6IMwYuPsrX2uUhm99+lyKmBNINzrMvhk7F5Ykvx/34TOMkeA3ewj5PtyqShXvKFSMqTO0HLGnyjHpmCahPNOz/FuBTDpKxsd9l1j28VbgfKFyWaOcmzhsEM27kmC8vSjHQ44/mU7kijH2ztcpPlgwxubtKexDwY8YKwos+HvIH7rFPB7NesTj0/p4p5u6UVqe9ZovAkDrWu9oAB8Mr65Ah0o9Ji0G5HAc3Rq6+GcOOuINPqz0OadQt7XNETuIB5iScyQtj4cSLO9Adoh9UTQLvIDytzyL1ZbAWf9+SAdA69fymFm5jYYVKWIq02IQcCeEfTlrKdMEq4/Kd8eCjZJPZvHgEBhSWQ0hXHcTgEyNNJAOqLSaqpLmoh+kBIIhzI1KPQEqXFwpinRIKWIaTyQJYlkuU2Q3y6IMAMKEQKIiCZqEgwpPDgeJ9QTAkiT6TIzfghj9IxZmo0LmrzcnbFYCU2J4MIzIMjEM+1F4NDdVRYit7gJS2WrVBI+1GuzOm9vNiAYcaYtykMTmblu4dDBo2E9BT/EBBtDa7er0lZ2tzJ1+SstIJFGYYC3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_194451_524816_143A986C 
X-CRM114-Status: GOOD (  16.50  )
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

On 2/20/26 07:57, Dmitry Torokhov wrote:
> The implementation put_device()s located device and then uses
> container_of() on the pointer. The device may disappear by that time,
> resulting in UAF.
> 
> Fix the problem by keeping the reference to the framer device,
> avoiding getting an extra reference to it in framer_get(), and making
> sure to drop the reference in error path when we fail to get the module.
> 
> Fixes: e6625db66212 ("phy: core: Simplify API of_phy_simple_xlate() implementation")

this fix tag is wrong as explained by below comments.

> Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> ---
>  drivers/phy/phy-core.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 4ad396214d0c..cf62eb9ddca9 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -682,10 +682,10 @@ struct phy *of_phy_get(struct device_node *np, const char *con_id)
>  	if (IS_ERR(phy))
>  		return phy;
>  
> -	if (!try_module_get(phy->ops->owner))
> +	if (!try_module_get(phy->ops->owner)) {
> +		put_device(&phy->dev);
>  		return ERR_PTR(-EPROBE_DEFER);
> -
> -	get_device(&phy->dev);
> +	}
>  
>  	return phy;
>  }
> @@ -765,7 +765,6 @@ struct phy *of_phy_simple_xlate(struct device *dev,
>  	if (!target_dev)
>  		return ERR_PTR(-ENODEV);
>  
> -	put_device(target_dev);

put reference count of @target_dev got by class_find_device_by_of_node()
so the following commit mentioned by the fix tag does not change the reference
count.
https://lore.kernel.org/all/20241213-phy_core_fix-v6-6-40ae28f5015a@quicinc.com/


>  	return to_phy(target_dev);
>  }
>  EXPORT_SYMBOL_GPL(of_phy_simple_xlate);


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
