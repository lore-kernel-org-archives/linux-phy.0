Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2469CA1016
	for <linux-phy@archiver.kernel.org>; Wed,  3 Sep 2025 19:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAKhbycm6yyki9dgErFpdiJR5k0AbjQ5Pzs1IYydi9U=; b=2y43HLpeV1zgJ/
	7EMwuE8zCKNXvGBFAm3QMP+RCF843AkLYO4m9Wx1z3MMZrKfhhLqAhmzNaxwuV3v0yTmDWNuoBsg0
	/9OoXmV0pWwCnwwZmowe1a6nPXnlYTmKXGY3Z+5CYLoWGFISc4yYI/lR8HR5Wi7U4JxVJSz2C27fW
	f6wtjY9GscLxXklcLoMLjizM0jcs0vYVTGY4/i6j2RPSdugG9latTWODSeKPYFy2akcXh937dSjLR
	kjvhAEGyW31NnH3nVDUsJkp5ggE5GftgdNGQg/VA1ykfCv5W6/CB/9qEh5Bdlrv0a6hm39dsqe49s
	8hMnqNcayVVeTWFsl7PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uttZG-00000007UnF-19QJ;
	Wed, 03 Sep 2025 19:54:54 +0000
Received: from mout.web.de ([212.227.15.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utp9a-00000006quX-3oI4
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 15:12:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1756912313; x=1757517113; i=markus.elfring@web.de;
	bh=fuzzdqflWKxJG/2KMhMC5oLTglkqDdupgl8/Aw9toTA=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=pomIhLVH9JpLeqymo/d6RPIY+zdP+2nKSmCeyVnbvLEg4q1/gsmMg/guDps1k41B
	 +1MG5242Xe1kxgnvY2XMqi/zP4ewofH8eLUTZ6ikkiouSW2bq+WMSZUZSDNgvliHR
	 sujKAllYvopJCy6rZjj/I5hH2jyUdrnARm7njF0LHZ8+rTWBabtvbXf4hAv2bisa4
	 5IR2idZTifeY39ZhbTGgW4QtlURq9vc193j7aE7evXZG7knJyhrTWQSkUdb1F+wrp
	 SQSUVLTcUZwkNZh9qWQT/gKlYh4bfBJzGbb0nZOzPjg+pyViTNM56UZjVv1Xreivb
	 R9WBQp/p6cAnIhD3Pg==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.29] ([94.31.92.225]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1Mc1VL-1uKTzy0p7H-00ed5L; Wed, 03
 Sep 2025 17:11:53 +0200
Message-ID: <a111df8d-0e1a-49d0-8bd4-9b41c60151d6@web.de>
Date: Wed, 3 Sep 2025 17:11:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Miaoqian Lin <linmq006@gmail.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: stable@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 JC Kuo <jckuo@nvidia.com>, Johan Hovold <johan@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Vinod Koul <vkoul@kernel.org>
References: <20250903045241.2489993-1-linmq006@gmail.com>
Subject: Re: [PATCH] phy: tegra: xusb-tegra210: Fix reference leaks in
 tegra210_xusb_padctl_probe
Content-Language: en-GB, de-DE
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20250903045241.2489993-1-linmq006@gmail.com>
X-Provags-ID: V03:K1:Vto5T7HMuhv4kLXfZikyR3WNBfDL8qO34gg6b1ELJlzDUv8vfLa
 MukUXfM+HWys/C+U+aQZX/H8YkvmBGqLW7DhJ7ZDnvTs2iv0Bknv4wBFyW6END5Qwhu/9AP
 208f+MuTguFgnN3u/q1uQVd0qOz68xngXnz63F2ESBouG3iBoKhB1xF3SE7rA0j3QiC/761
 Fofy/dGCA9Dy6s/USFqhQ==
UI-OutboundReport: notjunk:1;M01:P0:34rJf0QV/6o=;z/hqGl9fupoaEARWp5RfPr3rCkc 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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_081207_316498_0416537C 
X-CRM114-Status: UNSURE (   2.64  )
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

> Add missing of_node_put() and put_device() calls to release references.

See also the commit bca065733afd1e3a89a02f05ffe14e966cd5f78e ("phy: tegra: xusb:
fix device and OF node leak at probe") by Johan Hovold.

Regards,
Markus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
