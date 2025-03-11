Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AFBAC28B2E
	for <linux-phy@archiver.kernel.org>; Tue, 11 Mar 2025 12:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4O7CojO2XOoN7zPfRovQ3BgXTZUYPapaUPXe9yZLpw=; b=M34dMJMOiDx66S
	Hq0QF0KbJkid8iX+l8uFdH5hqxRAWuKCyOzkKySCK8o/93r+EUgpXRI0PH4x9OWcxbRR2/nQ1EwcU
	HZ5Uc9tXwiPd+cJdLhPkbTh7N4wy+vkkyE067N+Zd/fW3roHH0mqKStYwdHSNvv6Rf0lB2O0lXaTn
	PXItpnBB/CG3+NnRWeaYAi0HHiFnM8kHqmaTbvpglGe0/0o5ABlR4iTFOgpYeiOYzdCgLafqHH1EL
	2yQ5lhpXIGmqn8hWlp9HrdyVvZqxRSIbJK9fuc0V1k51OpMQ8mfqOp+0vGIjVNgUiKbxCl9wOFlW+
	77tE1azsCdDhqk34aZNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tryoz-00000005fUX-1XF3;
	Tue, 11 Mar 2025 12:34:57 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tryd4-00000005cPo-1UGB;
	Tue, 11 Mar 2025 12:22:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=Jir35b0HgpV0FY6FTSTtKnirvFZaxaNLyjhlogfMqV4=; b=b
	72iuzjLPM9Hpdt1LvzCk0VUtgFtaH+PnzDNS29xW4zkZSribKzLwWSRMqWch/9PG
	AA36bzTdLuMmC7/JYiCJ+VlGE8L73KlPhOjuZ+QLxwgM1Jg3b7Wl7Bie4YBoEWl5
	D/F8zS8MeQ66Rt+EmWMEXDMITg2CUfBylMVTCWI6ZM=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-123 (Coremail) ; Tue, 11 Mar 2025 20:22:10 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Tue, 11 Mar 2025 20:22:10 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Vinod Koul" <vkoul@kernel.org>
Cc: heiko@sntech.de, kishon@kernel.org, sebastian.reichel@collabora.com,
	yubing.zhang@rock-chips.com, dmitry.baryshkov@linaro.org,
	frank.wang@rock-chips.com, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: Re: [PATCH] phy: rockchip: usbdp: Check these parameters
 only when the corresponding set flags are set
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <Z9Aa6v1/1KRdZDKE@vaman>
References: <20250306065952.485809-1-andyshrk@163.com>
 <Z86UOmPg/UDSBajZ@vaman>
 <1379400c.90c.19582b05f74.Coremail.andyshrk@163.com>
 <Z9Aa6v1/1KRdZDKE@vaman>
X-NTES-SC: AL_Qu2fA/qSuk8o5imYYOlSyjNW+7xfHKv6+qRChMQvQtsqqTHr9T0KcVtuP1XR3/++sAgV6BesM+3kGdDrWG6d
MIME-Version: 1.0
Message-ID: <5382b861.a48b.1958527c4dd.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: eygvCgCXPn_yKtBnExV8AA--.18497W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hwNXmfQINjbaQACsi
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_052238_752345_AE6597B7 
X-CRM114-Status: UNSURE (   5.57  )
X-CRM114-Notice: Please train this message.
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



Hi Vinod,
At 2025-03-11 19:13:46, "Vinod Koul" <vkoul@kernel.org> wrote:
>On 11-03-25, 08:52, Andy Yan wrote:
>
>> Do you mean we should do it like this:
>> 
>> static int rk_udphy_dp_phy_configure(struct phy *phy,
>>                                      union phy_configure_opts *opts)
>> {
>>         struct rk_udphy *udphy = phy_get_drvdata(phy);
>>         struct phy_configure_opts_dp *dp = &opts->dp;
>>         u32 i, val, lane;
>>         int ret;
>> 
>>        .............
>>       if (dp->set_rate)
>>            	ret = rk_udphy_dp_phy_verify_link_rate(dp->link_rate);
>>      if (dp->set_lanes)
>>                 ret = rk_udphy_dp_phy_verify_link_lanes(dp->lanes);
>>      if (dp->set_voltates)
>>                ret = rk_udphy_dp_phy_verify_link_voltate(dp->voltate);
>> 
>> 
>> Add helper for each of them ?
>
>That would look better for sure

I will do as that in V2.

Thanks

>
>-- 
>~Vinod
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
