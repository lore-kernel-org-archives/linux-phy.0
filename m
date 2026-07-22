Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B197C44512
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 06:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQ8aRPYNRYA/exjVDZ7X4zZFalnsiF4hnxFPzzo9EVY=; b=FbcH1gQJMv6XC6
	Ma+tD6Nq11/8AynC26YRikXUp3+ZzdWOw3QzWGbeWlqtrjZUpJ3NaUtKnT8lj2/6t8RnGiulzLXyb
	lg6ot1JnpSpQp8RWxYs83b8Gjpw+knaVWvy1h9zdL210y2lgnc6CrD2OZy9qKgxXrv6nvf7v3tmIh
	pyhkO2J9/uSGK6tnUsjje0qPqMpcgldLOSfa93ixDmgjbV/50cgJCuZOmcV5GN+Hgaa4+idotR92X
	oGeNEs+VLu0jFqPA9mg53dupAu1WS8I1utXHyBH1+/59EkojaX2dnNFxDG3wth7oyAOHbLAe1HV7H
	wgDuAUSHqkP428UXAn1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQZe-0000000AysJ-24Eq;
	Wed, 22 Jul 2026 06:36:58 +0000
Received: from mail-106118.protonmail.ch ([79.135.106.118])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQZb-0000000Ayru-0e9a
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 06:36:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1784702211; x=1784961411;
	bh=sKsWX3Dd0mR0iH+Td4hJE5oM4Op+hYrWFrWXexs4sec=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=OIFWY0rpzGQp7kpWmQwPObm1w9/8+SX8R3LP+F0u4VJAauX9BgFKtNBDbNSQrFl9t
	 AlcLYhpuQd23HQw3V2zNv+6oTghu+eEbr+Q8X8hn+wfiZiJxposcM0cwbAx19jrCaD
	 OwNag9YskARgY5n+BQjqNG53QvQwoqYfLBpXoqzcoOh115tLiXUMQSPrRW1kQf3UC0
	 Cuzw2fzqD35UxD6BZxRgiTW7DzsbRbRQ/W3xFjWOHuaXcQoiL5zBIdR8S16+WRDGgP
	 b/H4UmaMFWLs4jwppS/eQ0W9YedBoju8NlcaK5H3QFz0aCkLteZ5fCbwq2QyqFSzM5
	 eJwHN+JwKU97Q==
Date: Wed, 22 Jul 2026 06:36:44 +0000
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
From: Esteban Urrutia <esteuwu@proton.me>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: qcom: qmp-combo: Specify PLL version in qmp_v6_dp_serdes_tbl structs
Message-ID: <34a75314-9cd0-46e2-ac89-2c070582e4fa@proton.me>
In-Reply-To: <sjvy2u27dxljx46iu5pqvtze6snrqnljmcs3c45gt4ckeuhwub@34mbkowlmapv>
References: <20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me> <20260715-sm8475-bup-usbss-v2-2-2d8def39b190@proton.me> <wg6lgpaexz4ktjlfzqpsidj56wr3hjax2ktn75kqsoaubtdxre@xh3yn3xpr4af> <b77dc15d-f9ad-4c06-9e24-8f73421e2130@proton.me> <dph6cacosw3jzksqxp7fgofdueukrq6a3c5xys4jfrkqjuigvx@sroivvrxiwxk> <47b1db2c-6314-49ce-a7b9-f68eeb022295@proton.me> <zd5wulhfcw7vzbwaz4akhetbqqub7ygsmexuswkdvzxcfmqvqa@hom4ax54efft> <8066103b-e1de-4b20-b21e-533a6cbc2bba@proton.me> <sjvy2u27dxljx46iu5pqvtze6snrqnljmcs3c45gt4ckeuhwub@34mbkowlmapv>
Feedback-ID: 147889766:user:proton
X-Pm-Message-ID: 1f496ad5c17dbf3e2415112cdb6542e16052775a
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_233655_853409_0A873358 
X-CRM114-Status: GOOD (  11.89  )
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

On 7/22/26 2:21 AM, Dmitry Baryshkov wrote:
> On Wed, Jul 22, 2026 at 05:51:39AM +0000, Esteban Urrutia wrote:
>> - For this commit, v1.1 tables should be left as is without renaming
>> them.
> 
> Yes, you can add a comment that downstream uses "4nm-v1.1" PLL type at
> the table or at the PHY definition, if you that it helps in future.
> 
>> - For the third commit, v1 tables (DP serdes, RBR, HBR, HBR2 and HBR3)
>> should be added along with a comment in the driver explaining the
>> reason.
> 
> A reason should be explained in the commit message. If you think that it
> helps, add a comment about 4nm-v1.

Thanks for the feedback, Dmitry. I will address this in v3.

Regards,
Esteban


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
