Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09EDFD767F4
	for <linux-phy@archiver.kernel.org>; Thu, 31 Oct 2024 18:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNc7UOerdENdIjum4wXNLUdNkSU/UKYrA/wDa+uK98M=; b=d5uxYprbr1s7lR
	GQ+jZIhkXYznYrgeK11SvMBCKu3Xw1AR57xsrOYnncEwTDh5+/pAJqkeAJL42Epjf2hH2UrDMuPc7
	ZX/u787AI3bIElvvkuqQeAP3HNBezFDMW/jXbVtoJMmpUJggvG//wbfuKJrNLvVHcdhaSQg1BmgoL
	PI0ndI0cyYDt7b0b0EmAMxtn6c+2TSTMWvkICyWx3Uqc/XhItF3L9l7IB7xdMhVlDJWKBnvcTQkmY
	ysX+p7+qlFSoJxi+hcXFvOkJjIJDgj3TE7YPq4ikn8Soz0Mq65VantX7B7tltsyCuPj4y2WIrzuP2
	PiiyPOl8ZIdu8L3Tpb8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Zdw-00000004SvI-0OWJ;
	Thu, 31 Oct 2024 18:11:36 +0000
Received: from mout.web.de ([212.227.15.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Zc7-00000004SdH-05DK
	for linux-phy@lists.infradead.org;
	Thu, 31 Oct 2024 18:09:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1730398159; x=1731002959; i=markus.elfring@web.de;
	bh=hbTUrlcOE5nRR9NElb/9zmfhU1oUp6dXMa+Aes8gI5w=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=hBDmvD4iv54XWGawiHaCfmRLOaYdO6Yfon8wjXTduLpqspXGmFjtrqUTrDSYKO3h
	 pZjtX5iVnBm/1VcdyaLQy7+dOgjUMPPVmpZtIwnNQwF+5xVG3Eq/ikLV/c89iAMjv
	 82c0fzghigJFxjsAmdJ/LxyBrpcLXijI1TErJXj4tI6JQX2AWZHA9o2R99lQHeQ1c
	 dHv2VTzVhmdojNjdlhsR+U1QnkjdEX3TCZ6iTN9zinZeA/h+JdV/zQTuHwZMiorFx
	 GBlRwPkNKJ6FD52dNVz+KE38mU5uzmqa/aJggB3Qo51FN0Rt9MCtrE98AgYPaeZHs
	 xpFzS0ffpB/qlTwwTQ==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.83.95]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MeDMR-1tfttI1pqh-00oysz; Thu, 31
 Oct 2024 19:09:19 +0100
Message-ID: <9d381d9a-3d4e-455e-a1e0-ac737f8d7852@web.de>
Date: Thu, 31 Oct 2024 19:09:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: phy: ocelot-serdes: Fix IS_ERR vs NULL bug in serdes_probe()
To: Colin Foster <colin.foster@in-advantage.com>,
 Jinjie Ruan <ruanjinjie@huawei.com>, linux-phy@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, Thierry Reding
 <treding@nvidia.com>, Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>
References: <ZyOUr7iDa9nFBxgq@colin-ia-desktop>
 <28bef742-84ca-4d52-8d19-258f1a3d695b@web.de>
 <ZyPCgOByeVNZC5rt@colin-ia-desktop>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <ZyPCgOByeVNZC5rt@colin-ia-desktop>
X-Provags-ID: V03:K1:+LG3F+RQYC31y0sVjd1hbg5gYPRvEU+8+SbwOqPe4CV6Is0MbBo
 MAzl+hiGQUUtBcqPBD5RC7yjGbSwbWyS4hf4mwiuZDdR4MQXsUUVwngz2Z8LhDV5pcbf1YX
 x+iFbUQZa/+BZypRJoh3GV9ALtq3IwIIa6WPTs8TcaaXmyWfQsi8UGt1C4BlgctKVKuseLk
 oltyh8T4/4H6tP5yu94QA==
UI-OutboundReport: notjunk:1;M01:P0:Ta5smnulrjM=;5oSH9lof834HbK0DxHCC72BC4gx
 u5CoTN0D4fNYxK4WLuTsQk/oH1Lg5LB1Ly+t2tNnMLqV4JcbbQzqBrch63g9tA61bbRcG3kml
 bZ62wpGk/PL3SuvIBvIOQrMNvlEhP1GL6CCJ/yJJbEh2m5ylsQH9KJ28Kn5HzvlfTZoZ4wWK8
 sjmbfhQa6ih3zVhHVVrD9MJTvqRtuK28kB3FkJU3heKdTIY2gsi9vefA+3uO/XqXT++VaiMmd
 SaIK+KOhsgO08zMBsbDk/nALPf4T8ZxcBV9b4AkvAja5nxuAMNGw9ySILhfQ0kDEsl19luRYx
 CYDutT0vG8b77n5sBeFQ+xxSdQBrRFZoG1xEEQj1U7z3gIxBzDPjtx55rnZgboO/s+dPb+lkb
 QRB3oDRwC+FOTY7IanyaNXS7VBXqUhTB3txSA0t6IdQghWI9q2ps1/6fNjHXXDuPtqGl5t+Wt
 4/3IDa437tb/dH/ElvlXml1Qe1h5Bma6NsVLBZkp/x4P2O5gQdbT8MYJTVkz7SXdHWtwDsrsv
 /Js6IcXE4Y2dFeIAlHoNZJZMZHiiomYXGnWmy+jadnln5kp7TL/+Wc2+l0HI6ttu8ngLTW4F7
 NBiAj3SwgbOLZ+VMSJYSrmUFcOpugwYfGP2Zq09+JdHkVYFituWbxFeRerWgdv4jokSmYv01T
 19UBLW7+Lvbd+xBxbutJg6fdBavN+RH6HVmfvkG4ynJhd2hEhLB3LnkF0p3W7v3loXMb+4yjP
 R3C6g33g73IzEzjQkvJ0st5/WOruvwKb4cgQm5vq+kAMzlEhgvkHLkt6tv5lE1AZpnlTlwvFZ
 iG9FnBSkYAJhWs4ghvAZmI+g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_110943_443191_C87CAD17 
X-CRM114-Status: UNSURE (   3.56  )
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

> You're absolutely right. Apologies.
>
> Acked-by: Colin Foster <colin.foster@in-advantage.com>
> Revieved-by: Colin Foster <colin.foster@in-advantage.com>
Please choose one of these tags (without a typo).

Regards,
Markus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
