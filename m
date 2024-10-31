Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4924D767EA
	for <linux-phy@archiver.kernel.org>; Thu, 31 Oct 2024 17:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xLlz8lbw4GcICPj+Eis/sTHgvJEQv8tk/ig4EwfIUk=; b=GKeiOWhjTbzC4g
	o4Obx8Bdcu95FrRIqlCoSKvNd7sIVUfrJYDkcRs5U8ul76qQJY6mSNPBCzZk4XV9f1NIE/TzjFtJq
	dsblqBCbaRCGl7+jAuaLb2UTPA9vdY7uare1IUz1Hvqm5yHzZFrzBWN16/ZyxHNdWlrY2tVGxQHyu
	88WzgHU5V7koO2ZftQv3ZprFuPWWe3xIl/QmhAC/sf8N3yp74IHU+ni+C1Z2VAPXuI9DcRkC19NVA
	Inyl1Qex+Y5NRqUO/ABpYbiC1Tcd7Q6lcNPHlkXUFoZNo5UtKCNQ76+VeZ3V6nXqpsRGLk/d8n2g/
	Gyjh2WqH2PJ84g7me2JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6YXD-00000004HDC-2XVc;
	Thu, 31 Oct 2024 17:00:35 +0000
Received: from mout.web.de ([212.227.15.4])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6YW9-00000004H3V-3DQI
	for linux-phy@lists.infradead.org;
	Thu, 31 Oct 2024 16:59:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1730393944; x=1730998744; i=markus.elfring@web.de;
	bh=zihZv8JaQyeTBRL3c7USYyTDomdye18v6SbgC8QVntg=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=hnviXS6xzHpHhUG4/l4SRYILsdkpux1c8gUwVr3gOOy6iUEOE38Lr+o1l0aGwsQk
	 Kf6UwC7aOhVfhsgdLCSUYYQmXf9iNaHOUCFo7vkvZK9tzzAmZXEjbEWhqAyrgU/4j
	 IKib+g6uwDRll8tr07p1t9cHJaLqz2mCHKYziwAp5tZDbD+/yQuU3beei77Pfrcem
	 20HH/ftYDDHZBgA/Vi5TyS7BfOobGK4JTPtqL1yK/JLHy1gzfJKwL8KOsDBVtKgOk
	 DLenkIj/mxB5UyeULs7bOFFEEYaEp3TAduas/uhLHfMarGqVwhwI0GTtaxgPw5x0e
	 R4747KoKgE5OzVpOgg==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.83.95]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MRk0k-1tH2tG3Yb4-00MOig; Thu, 31
 Oct 2024 17:59:04 +0100
Message-ID: <56f80d5d-3b92-466c-adf6-5f1374cf9622@web.de>
Date: Thu, 31 Oct 2024 17:59:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jinjie Ruan <ruanjinjie@huawei.com>, linux-phy@lists.infradead.org,
 Colin Foster <colin.foster@in-advantage.com>,
 "David S. Miller" <davem@davemloft.net>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, Thierry Reding
 <treding@nvidia.com>, Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>
References: <20241031123847.1356808-1-ruanjinjie@huawei.com>
Subject: Re: [PATCH] phy: ocelot-serdes: Fix IS_ERR vs NULL bug in
 serdes_probe()
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20241031123847.1356808-1-ruanjinjie@huawei.com>
X-Provags-ID: V03:K1:9h3N7nZodewEH5ksgQ5nVq7VnUGJyxQ6DWBT09YUdvHV1dYoQQk
 HFXFpf6pp7mwboNN0B8oWSJLvOxT4E95VFMqonrJlyeNNNbWbHgj+vtesaW6l9lwh5XNGg4
 JVzJdZiBI1Dk7ajqkupCQaZagw4kwPyZc2Nl2MC13dYpB62MLWo8Jax04Nj3vi4PmBNGXw5
 6wM130MIg7MCAEjhaIkew==
UI-OutboundReport: notjunk:1;M01:P0:pQK5qY5zieM=;SZNDGVx9Zjqtqdt3zeYkTsXQx/3
 WrzWXy1jDhiKXb9CgRGdoM7jx5h/QqVICjkO1AfpNsRh0TlCMOyV+GQV5Yc9GwGrDaetG205N
 VptfiRf4NwzpODS2J1sGLCF/9Ibs8WF8V7B8D1TpdWGgq9zzz9fd074tW/HfHIq6kuqcPaNdz
 mazvmexfZJsi+pE9b8mABGqDf4oAsFxL2kJ3SSNPx8tq9/abc7Re8fyWb1XcsYyjni/TZ4Ebz
 e4qwWG/FnsEgkcsOuqgoMeMgLWJZrO00u3VPEOxGgkY+NEF/hDQK/VuYTWdfX6pMEK/NHuWqE
 QsJ9B9KAVYFDVqPe9BIL3VwS59Z0zyBrUI8zcIsIwtUNjTKUWXq7qfyLFl2KFgfrgUiZLM2K3
 0UT4+GtwB9+PVQWCzXDDgXZYj31HzEG1Mkhxt9VzfWGNzL2u2ED/CpBSNPQ59oI8+niiZWWLj
 xGTvE+BdmQTiNSb8LBCsfEopoqLDyKiFK0ch7BQ4BZenFjCJ4iEcz+R1r7fIoOzpl57qOqD4L
 ULxhUAFR+hTe4N8SZHh5rHr0VJeVAg5isZXXF9Wb3K3F50roxjf57AE3fnw0RNtEzi5krJlSR
 34y7SZfDrEswl5Ta2CYZ5qyHSXwJBVxqhU37KHgYLMGx50F4bZ4wadMzL1kA/xcINtXF6h2Rj
 TwVoNNCYI/cm+jfR2DKZFB8/Q6vdW7dgc/n0nrVdate3vhsU57hiCgoXhwMdacyD7peNcYsw1
 yXfUzhFgW4ME4c0SGhBSkgbLy22FfiY9rEqetFttA0r52YvLcz4+5VSkKcOaB/piaMhBJYdOn
 qAQw9YZVzsr0Ek2V3Ru5GiEQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_095930_210511_C5CB6A3B 
X-CRM114-Status: UNSURE (   4.75  )
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

> dev_get_regmap() return NULL and never return ERR_PTR().

                   call can return a null pointer.
It will not return error pointers.


> check NULL to fix it.

Thus apply a null pointer check instead.


Regards,
Markus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
