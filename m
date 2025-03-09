Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED172C282D1
	for <linux-phy@archiver.kernel.org>; Sun,  9 Mar 2025 10:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BQ6oCPK2sTuyLoSBL+Xn8l63vkLfvE/ZnYW71WC3EM=; b=ERq+PKQ0Yf+P1o
	0fSOKuul1YmEzebmLTyZCu5Uz1BQfglp0ofgG/5Lkmz31HmbLEt0br3E8w3Y9dehSrK/5JpKH+bhQ
	8jYIVFP4rUxeradFU2hVbiUSb9KjXLq9M7fxWlIzHxiwsI5gWmx1GxEJvbM6WqpUTuZp364RhJzqM
	yWNefuQZ0e4ObLtqylP46AbWEy+HLHlnh9C02tE/58zii+S2cQktrD92abwQDgbkAOlfrSIPbfSbd
	YK51X6dOIRiPlK8Lkg1iASG4s434YRwcpmEQ426oPiEc9K8lw+nmcc+b7tEcmNVjDWjk7MuxquCMR
	rAbC/R+eaOfoZweudSYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trDdR-00000000Keo-198L;
	Sun, 09 Mar 2025 10:11:53 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trDbl-00000000KUh-323q;
	Sun, 09 Mar 2025 10:10:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741515007;
	bh=d/sNiwmDwosR14KhyiJOFG26A3mxq5tUt5OjZfyGCYw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=d3oSvCHS5cB/kc+sh08WU4QYk686sVu5viglEkz1Dpz4jFk4pz2M6yCdDFoVrUGMp
	 mzkmd2BY7dwnh5wYCfZs1XwPdJPgWNylmHPMRYAXEQ77KPrp75GOXknvQvr9yZm4JW
	 kQcsyFX2VwJ+jrThmHCUUugIWVdagFfNHGaGmHVwWx5bG6PZLAVBqISEcaf6f2D/dk
	 V0z2ACr4SIBdKsV4zJGe8twzBVmFtSdKOZ2S87Gl8Dm28LE4e2bGyZKwLEaiKCpaZt
	 dHK4JwKf1UFN6dRfNcZBEwnp3M5cq77OTG9s6YIK02fkv5IrB5gWd9uzu0LI02y+1T
	 /+k0mG/Ze2oKw==
Received: from [192.168.1.90] (unknown [84.232.140.93])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 58DC617E0B25;
	Sun,  9 Mar 2025 11:10:07 +0100 (CET)
Message-ID: <22142c86-c8b5-4427-9764-a7daa4a005b1@collabora.com>
Date: Sun, 9 Mar 2025 12:10:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/12] phy: hdmi: Add color depth configuration
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>,
 Maxime Ripard <mripard@kernel.org>, kernel@collabora.com,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com>
 <20250308-phy-sam-hdptx-bpc-v5-2-35087287f9d1@collabora.com>
 <CAA8EJpqYE1drM6=C0AwPZ-e5RkWqjMTpWQiwhA64qby1mmVL1Q@mail.gmail.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <CAA8EJpqYE1drM6=C0AwPZ-e5RkWqjMTpWQiwhA64qby1mmVL1Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_031009_942928_62E91B60 
X-CRM114-Status: GOOD (  11.40  )
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

Hi Dmitry,

On 3/9/25 11:16 AM, Dmitry Baryshkov wrote:
> On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
> <cristian.ciocaltea@collabora.com> wrote:
>>
>> Extend the HDMI configuration options to allow managing bits per color
>> channel.  This is required by some PHY drivers such as
>> rockchip-samsung-hdptx.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  include/linux/phy/phy-hdmi.h | 2 ++
>>  1 file changed, 2 insertions(+)
>>
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Just to confirm, are you passing TMDS char rate or pixel clock for
> DeepColor (bpc > 8) modes?

It's the TMDS char rate, but we still need the bpc info to program
CMN_REG(0086) in PATCH 12.

Thanks for reviewing,
Cristian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
