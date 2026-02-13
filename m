Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D720EF48D3
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 06:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q97xm++TdeHJ0n3tmDXIDr9JsvTHbC1CgrTzBdBlc6k=; b=KsGWeNXyr2UgId
	u2ZfvHMUmTpmjb0OqHssj5pe6W2Gj0+gjIzlMRw08J9cExmH0DWrHXXB3G9gEfyYYiRsOmSl/6K4f
	oJ3V5/DNVBRuZo+jnHb3gba4ngEh8bj9iVl0vqzEJACgpnCDJhqpsVrWKot+08Je3F/7QlKOful2S
	DAs8RCFEEW1UPxhKcEEcc/KaGGlXOdAnxg8vkbp8/sRaujcdyn541dlYIA+kN6cKOx2fLPC/Jp6hB
	AJUyhyAwGP8Q9qWuY37FATEomKItST1wt4/t9aAi+ThOpHErvJmuRphIl119jA5uX6XuBTi3Nq6F5
	0g7O0g7uoub7iXOcLlgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqmXh-000000033rB-2NVI;
	Fri, 13 Feb 2026 06:20:41 +0000
Received: from azure-sdnproxy.icoremail.net ([4.193.249.245])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqmXd-000000033qj-2Qml
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 06:20:40 +0000
Received: from luyulin$eswincomputing.com ( [10.12.96.77] ) by
 ajax-webmail-app2 (Coremail) ; Fri, 13 Feb 2026 14:20:26 +0800 (GMT+08:00)
X-Originating-IP: [10.12.96.77]
Date: Fri, 13 Feb 2026 14:20:26 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Yulin Lu" <luyulin@eswincomputing.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ningyu@eswincomputing.com, linmin@eswincomputing.com,
	fenglin@eswincomputing.com
Subject: Re: [PATCH v9 0/2] Add driver support for Eswin EIC7700 SoC SATA
 PHY
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2026 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <20260205082009.1780-1-luyulin@eswincomputing.com>
References: <20260205082009.1780-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
Message-ID: <22fea2d6.370e.19c55a86a72.Coremail.luyulin@eswincomputing.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: TQJkCgAnPqGqwo5pRkcAAA--.180W
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/1tbiAgERA2mOAQQQ8QAB
	sT
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_222038_009307_7C41A4E3 
X-CRM114-Status: UNSURE (   8.14  )
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

> Updates:
>   v9 -> v8:
>     - eswin,eic7700-sata-phy.yaml
>       - Modify the format of the "default" field in the
>         "eswin,tx-amplitude-tuning" and "eswin,tx-preemph-tuning"
>         properties.
>     - phy-eic7700-sata.c
>       - Correct the incorrectly formatted symbol "-" in the comments.
>     - Link to v8: https://lore.kernel.org/lkml/20260123024823.1612-1-luyulin@eswincomputing.com/
> 
>   v8 -> v7:
>     - eswin,eic7700-sata-phy.yaml
>       - Add "eswin,tx-amplitude-tuning" and "eswin,tx-preemph-tuning"
>         properties, because these parameters may vary across different
>         circuit boards.
>       - Delete reviewed-by tag of Krzysztof Kozlowski, because the tuning
>         properties are introduced.
>     - phy-eic7700-sata.c
>       - Try to get SATA PHY transmitter amplitude and pre-emphasis signal
>         eye diagram tuning parameters from dts instead of hardcoded values
>         in the code. Because, these parameters may vary across different
>         circuit boards. Define default tuning parameters and use it when
>         these properties are not declared in dts.
>       - Add a comment to explain the reason for mapping I/O resources with
>         platform_get_resource and devm_ioremap instead of using the
>         devm_platform_ioremap_resource API.
>     - Link to v7: https://lore.kernel.org/lkml/20260106062944.1529-1-luyulin@eswincomputing.com/

Hi Vinod, all,

In v7, I got driver review comments from Vinod. After fixing and submitting v8,
I received yaml comments from Krzysztof. v9 now has Reviewed-by from Krzysztof.
So I want to confirm whether there are any further comments on the driver code
in v9 and if it meets the requirements for merging.

Best regards,
Yulin Lu
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
