Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCFF5C8303F
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 03:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vbtMPqswWJeptfwYT+RRxu6RU5i6Gl/A+REMj7vb0ys=; b=jp01tQaSzDLc00
	4SgxNKUnsiZjgS2NyuqSkGkgNiEv1n3ZZdbcFvyB1pitPevSvNcM+Z7x7KirPLYm4Ky0Sp/aA0yuV
	AKdY1EgQ3pZqlLWEyT6f3IL1ZCEcUQA4+39Z2xSES0HZGmj2+6CFmlmITfSjf3LREsbMmsx8JYSdt
	9Rl6F35hmHDrqFHqAT+YFOTyY48p/hXEjxh7ul81FLBPNU7wST1VcJuRjVlEJytQGjhiYY6SH+VwT
	/IC3Hgxr5PcyxbSyYZQeOVkgLgP9CNwh06NeKfQhj+rgLLpicqq9ppa54Uf4JqsgtSZ+NhKmDGLZc
	D9bVUeHqcajMYVxW0BbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqkKW-0000000ARaa-2SmS;
	Tue, 26 Aug 2025 03:26:40 +0000
Received: from sgoci-sdnproxy-4.icoremail.net ([129.150.39.64])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqkI0-0000000AROr-2U2Y
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 03:24:07 +0000
Received: from luyulin$eswincomputing.com ( [10.12.96.77] ) by
 ajax-webmail-app2 (Coremail) ; Tue, 26 Aug 2025 11:23:57 +0800 (GMT+08:00)
X-Originating-IP: [10.12.96.77]
Date: Tue, 26 Aug 2025 11:23:57 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: luyulin@eswincomputing.com
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: dlemoal@kernel.org, cassel@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
	ningyu@eswincomputing.com, zhengyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	fenglin@eswincomputing.com, lianghujun@eswincomputing.com
Subject: Re: Re: [PATCH v2 2/3] dt-bindings: phy: eswin: Document for
 EIC7700 SoC SATA PHY
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2025 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <20250821-precise-delightful-lyrebird-6b4275@kuoka>
References: <20250819134722.220-1-luyulin@eswincomputing.com>
 <20250820092758.803-1-luyulin@eswincomputing.com>
 <20250821-precise-delightful-lyrebird-6b4275@kuoka>
MIME-Version: 1.0
Message-ID: <3fd6740d.6d3.198e4676278.Coremail.luyulin@eswincomputing.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: TQJkCgDHZpXNKK1oArvDAA--.23274W
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/1tbiAQEGA2isj-USPQAA
	sU
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_202405_013287_B3AD84B8 
X-CRM114-Status: UNSURE (   8.28  )
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

Hi,
Krzysztof

I apologize for incorrectly filling in the "In-Reply-To" field
when I first sent this patch, which caused it to lose association
with the other patches.
As a result, I have resent this patch.
Could you please help review the other patches in this patch series again?
The link to the cover letter for this patch series is:
https://lore.kernel.org/lkml/20250819134722.220-1-luyulin@eswincomputing.com/
Thank you very much for your review suggestions!
> 
> On Wed, Aug 20, 2025 at 05:27:58PM +0800, Yulin Lu wrote:
> > Add document for the SATA phy on the EIC7700 SoC platform,
> > describing its usage.
> > 
> > Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
> 
> You already sent this patch separately (!!!) and received review.
> 
> Best regards,
> Krzysztof

Best regards,
Yulin
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
