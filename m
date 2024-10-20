Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6B2AD3C927
	for <linux-phy@archiver.kernel.org>; Sun, 20 Oct 2024 10:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8gLqZAfC2vl+3R4zRukUOSWxR8dfQimkOKoDplviMsw=; b=hpBAjklvblWvgD
	ky1duOuPeXr6JTEDAvvZQRE1aREKLySBTxgOo9sThg0DU4T3s582QlGHi4dIdBzix1Sirq/2s6CeA
	qIMjMxXJc5N0xekD70fk7dlx7TPIcRCToN5ISJuK46WSuIR/UlaWVP5Gc3PkkASdc/FTlozgAtlDT
	v2PbV1iLflcCOBlD3I6rBs6Tm95Mfiq8Va/UQY2JpstjoOhfMp0kq+AULQ66rVwz+dgMReUBQ+wcQ
	dmM+feqPkIhpsp+1jqvKcbQqFLM+3DQjJAnvpa17LoNjfSXPQG4Jcv1mB6FfXmABt/VSDpWQmiuK0
	ES9NHwlm5t7ImvN3iIcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2T2L-00000004jTf-1z6u;
	Sun, 20 Oct 2024 10:19:49 +0000
Received: from pv50p00im-zteg10011501.me.com ([17.58.6.42])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2T2I-00000004jT9-1ecV
	for linux-phy@lists.infradead.org;
	Sun, 20 Oct 2024 10:19:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1729419585;
	bh=yVKYWzMebxw4JY7NKUStkDyKnGs9EY56GyMpc/ew/5s=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
	b=QqVdEdWgDfwnj7sF608eoKseidVyEc9MnjcbtIetM2ltCo7znHh6/zw/rNtMoWxKB
	 zSfhIRGERY4m5CBmGapmGnHc1mYt/xCg1k7JTt7VDBitn670tYo0pSDNAAeZgWnvsS
	 OAoY8NZHSRrC2LoibpeFxwXOp47ROFjTuG6pZV8TH5gUkuT3Vnx6qSai15tKQIDkrp
	 nVarkPmuVFPUQ/snUHmLnzVrPrhNK7CXLx95oQTENFmMQqiEZQ8a2fuXYQTVTdWjHs
	 QFvIVBBMySAYWSOoMie1YL6gdCyvxHTxfuUPoJC5ZsvJeHDbHdmjRtWwdU7tWy4+wC
	 sasAFyyMjGu1g==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011501.me.com (Postfix) with ESMTPSA id 67C964A02BE;
	Sun, 20 Oct 2024 10:19:38 +0000 (UTC)
Message-ID: <8adbf600-b8c1-4d3d-a6b0-8f18482742aa@icloud.com>
Date: Sun, 20 Oct 2024 18:19:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] phy: core: Simplify API of_phy_simple_xlate()
 implementation
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Lee Jones <lee@kernel.org>
Cc: stable@vger.kernel.org, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
References: <20241020-phy_core_fix-v1-0-078062f7da71@quicinc.com>
 <20241020-phy_core_fix-v1-6-078062f7da71@quicinc.com>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <20241020-phy_core_fix-v1-6-078062f7da71@quicinc.com>
X-Proofpoint-ORIG-GUID: VuuRnmVBSFD8Lq-91SJTDLikCykcND8L
X-Proofpoint-GUID: VuuRnmVBSFD8Lq-91SJTDLikCykcND8L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-20_07,2024-10-17_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 clxscore=1015 mlxscore=0
 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0 mlxlogscore=999
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410200068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241020_031946_487326_E01A0CB8 
X-CRM114-Status: GOOD (  16.80  )
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

On 2024/10/20 13:27, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> Simplify of_phy_simple_xlate() implementation by API
> class_find_device_by_of_node() which is also safer since it
> subsys_get() @phy_class subsystem firstly then iterates devices.
> 
> Also comment its parameter @dev with unused in passing since the parameter
> provides no available input info but acts as an auto variable.
> 
i am not sure which parameter is unused. @dev or @args

comment says @args is not used here
but code actually uses @args but does not use @dev

> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
>  drivers/phy/phy-core.c | 19 ++++++-------------
>  1 file changed, 6 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 24bd619a33dd..102fc6b6ff71 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -748,7 +748,7 @@ EXPORT_SYMBOL_GPL(devm_phy_put);
>  
>  /**
>   * of_phy_simple_xlate() - returns the phy instance from phy provider
> - * @dev: the PHY provider device
> + * @dev: the PHY provider device unused
>   * @args: of_phandle_args (not used here)
>   *
>   * Intended to be used by phy provider for the common case where #phy-cells is
> @@ -759,20 +759,13 @@ EXPORT_SYMBOL_GPL(devm_phy_put);
>  struct phy *of_phy_simple_xlate(struct device *dev,
>  				const struct of_phandle_args *args)
>  {
> -	struct phy *phy;
> -	struct class_dev_iter iter;
> -
> -	class_dev_iter_init(&iter, &phy_class, NULL, NULL);
> -	while ((dev = class_dev_iter_next(&iter))) {
> -		phy = to_phy(dev);
> -		if (args->np != phy->dev.of_node)
> -			continue;
> +	struct device *target_dev;
>  
> -		class_dev_iter_exit(&iter);
> -		return phy;
> +	target_dev = class_find_device_by_of_node(&phy_class, args->np);
> +	if (target_dev) {
> +		put_device(target_dev);
> +		return to_phy(target_dev);
>  	}
> -
> -	class_dev_iter_exit(&iter);
>  	return ERR_PTR(-ENODEV);
>  }
>  EXPORT_SYMBOL_GPL(of_phy_simple_xlate);
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
