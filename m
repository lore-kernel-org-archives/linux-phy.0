Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B7A1C7618D
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 07:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	CC:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIQPlDGLZIy2ZsUxMg8V6ddjm6Vl8HUfaFFly5we9os=; b=vkZMMuYFShvNgj
	ZPHXksn1QWUYJPAfR8g5/qwz3jsEC3P9GD9ZcIWv12nM60f01Iwbq9TyAjY7/+C2KjfZeccFa6pfI
	LK8fOxiqo0U2bxpI4fjqBqyodcqPsd+/WY5auPxE3IX2+hUE1kUXf69H+UtiOa+2ksQo/vRIlaOom
	KgawnIg4nJYJF9TVFhssFvoDBZ4HGLBUK2+17waVJ6A6pDY4WXo9iMrrQ1FIxHMnvoWqw0l8QjT9M
	F8+JIxq+cc8prQD9Zga4skuXDv1kqeXMGOoZQs+hxyUKcnGwFlj3LvMSmPaqVlNkZbtzsejLksXR5
	X9nZZuehOFqmYrJsUl1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjaiz-000G3y-2V;
	Tue, 04 Apr 2023 07:05:01 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjaiv-000G2C-0u;
	Tue, 04 Apr 2023 07:04:58 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 33474pfm083483;
	Tue, 4 Apr 2023 02:04:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1680591891;
	bh=Xxal5gx/ThGxtq0kVEmh9gFXlfl/HsO/TSHzc+kJNrI=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=MIScsozwyq1tFznyozpYDOKWeUbA8TlPjXcAiqdwhKFiuxFpmMP0QdoiPSYGg4ZjK
	 HZtbTPcygIorH/i0Cz0CbO2SZXIG7KJf4g8WYLqF/G1NHX9B4qKzhit4H4TKGzCBMa
	 c4nMI8KFvoGE3NqKBoYJTfp70lRFIfeDZZHW5/NY=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 33474pXB018681
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Apr 2023 02:04:51 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 4
 Apr 2023 02:04:51 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 4 Apr 2023 02:04:51 -0500
Received: from [172.24.145.61] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 33474mbe098532;
	Tue, 4 Apr 2023 02:04:49 -0500
Message-ID: <66dbb0f3-cfb1-d6a5-42f9-3f3098ca1b90@ti.com>
Date: Tue, 4 Apr 2023 12:34:47 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: Re: [PATCH v2 0/3] PHY-GMII-SEL: Add support for SGMII mode
Content-Language: en-US
To: <vkoul@kernel.org>, <kishon@kernel.org>, <rogerq@kernel.org>
References: <20230309063514.398705-1-s-vadapalli@ti.com>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <20230309063514.398705-1-s-vadapalli@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_000457_382120_2DF952B2 
X-CRM114-Status: GOOD (  13.23  )
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

Hello,

This series applies cleanly as of next-20230404. Please merge this series
followed by the series at:
https://lore.kernel.org/r/20230331062521.529005-1-s-vadapalli@ti.com/
in case of no concerns.

Regards,
Siddharth.

On 09/03/23 12:05, Siddharth Vadapalli wrote:
> Hello,
> 
> This series adds support to configure the CPSW MAC's PHY in SGMII mode.
> Also, SGMII mode is enabled for TI's J7200 and J721E SoCs.
> 
> Changes from v1:
> 1. Add "break" statement within "case PHY_INTERFACE_MODE_SGMII".
> 2. Add newline before "default" case.
> 3. Update commit message of patch 1/3 to follow the existing convention.
> 
> v1:
> https://lore.kernel.org/r/20230309062237.389444-1-s-vadapalli@ti.com/
> 
> Siddharth Vadapalli (3):
>   phy: ti: gmii-sel: Add support for SGMII mode
>   phy: ti: gmii-sel: Enable SGMII mode for J7200
>   phy: ti: gmii-sel: Enable SGMII mode for J721E
> 
>  drivers/phy/ti/phy-gmii-sel.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
