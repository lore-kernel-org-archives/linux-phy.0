Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A993FC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 15:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qB9hXeveP7Hi1VcVjVyhesTBLjrAyT07yx9I/9hQO10=; b=fqmY43n0Vef97V
	1geNXJj2/nJXyrMlQs2xpUsqYwVJ9XT4niekXlt/m7bOq8PHNbUMdTyeKMvGOlH4e6kDFyDHZIxpL
	oLlrskElMxZX0zV2XpjTWjloPzDO2U+F0SQ/lQDCyXssM6bmly/fvq0+8sGtSGUOMrNrAWfO3Co5C
	/nBE5eRXrjgE2dyQeUbqYZQwvWDOtu/YlN4FHhtWgQAjIvmJvRG5zt51cjwpPFQ8eNji1Zhd6YsQ6
	0UEnHZy0E9Q0cdzJsS91PMCMl0pf/4JIi3WDKFIv8kZyrtQ3lDyYRFNXtsNB95h4n5qk/on8xuzku
	xGKXXZ8XD/h0iXEJkKdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7no-00CTXj-2m; Tue, 13 Sep 2022 15:26:20 +0000
Received: from m1550.mail.126.com ([220.181.15.50])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7dX-00CJLr-PQ
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 15:15:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=jlOQ8
	dR20boc+UNtBMvMPknudS7Ry8TnlXc3RHgwjWQ=; b=jpwx4/UMWZKMpYkRWBxEy
	Wad4Ue/SBAUfXpr29ruZrHbK1T+BViX/F+Z/qDc3nuiiGWJQ15zg1OdUEyqwmh6I
	/yBkE9dDGhH1qxtAzkNI3WEu1BgQbCTGrGskgns/fiwWboVIeQY9/67dHv2IF/K7
	vk58QbySU2BTyN7YS2tIW0=
Received: from windhl$126.com ( [117.136.0.43] ) by ajax-webmail-wmsvr50
 (Coremail) ; Tue, 13 Sep 2022 23:15:28 +0800 (CST)
X-Originating-IP: [117.136.0.43]
Date: Tue, 13 Sep 2022 23:15:28 +0800 (CST)
From: "Liang He" <windhl@126.com>
To: "Vinod Koul" <vkoul@kernel.org>
Cc: kishon@ti.com, narmstrong@baylibre.com, khilman@baylibre.com, 
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com, 
	linux-phy@lists.infradead.org
Subject: Re:Re: Re: [PATCH] phy: amlogic: phy-meson-axg-mipi-pcie-analog:
 Hold reference returned by of_get_parent()
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20220113(9671e152)
 Copyright (c) 2002-2022 www.mailtech.cn 126com
In-Reply-To: <YyCL6ajchUlX8q/x@matsya>
References: <20220705021526.281441-1-windhl@126.com>
 <YxIkGocG/WuwtI7d@matsya>
 <6e6f3989.4cf5.1830c86ff8b.Coremail.windhl@126.com>
 <YyCL6ajchUlX8q/x@matsya>
MIME-Version: 1.0
Message-ID: <621b3f86.8550.183376b6467.Coremail.windhl@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: MsqowABHnfGQniBjoExsAA--.44453W
X-CM-SenderInfo: hzlqvxbo6rjloofrz/1tbizhB7F18RP0pmJwAAsI
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_081544_195515_33452BB6 
X-CRM114-Status: UNSURE (   8.27  )
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



At 2022-09-13 21:55:53, "Vinod Koul" <vkoul@kernel.org> wrote:
>On 05-09-22, 15:21, Liang He wrote:
>> 
>> 
>> 
>> At 2022-09-02 23:41:14, "Vinod Koul" <vkoul@kernel.org> wrote:
>> >On 05-07-22, 10:15, Liang He wrote:
>> >> We should hold the reference returned by of_get_parent() and use it
>> >> to call of_node_put() for reference balance.
>> >
>> >And why should we hold and drop reference?
>> 
>> >
>> Hi, Vinod Koul,
>> 
>> 
>> Thanks very much for your review.
>> 
>> 
>> As the of_get_parent() will increase the refcount of the node->parent  and the reference will be discarded 
>> so we should hold the reference , with which we can decrease the refcount.
>
>Right, that is correct explanation
>> 
>> 
>> If there is any misunderstanding about the of_get_parent() API, please correct me.
>
>Nope, just that this explanation is missing from the log...
>
>Please add...
>
Thank you very much!
I will add it in new version.
>-- 
>~Vinod
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
