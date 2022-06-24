Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F749C43334
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jun 2022 09:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbQxVce+wP7CD0GAO3PHI4vZGASI3me6HywpUXgbxtg=; b=hYh1xxbAm/Q8jC
	ZgUd6JdTOL4ZiWqxg+JCMzYJ1vZn25H2k0wQWNtCfiu1LQ7l80xmG+EgRKz7dzMBzT85bxjE5AFZf
	iCg6TzN17c+eaE0xQKdT0Thfc1+zIi2Ek7b33s6kd6Bf0JkZ/0uCstix5hWDJMdhYUwBI+gZN8LIV
	VbQ+HOqwDrj7g9dnr8nSYp6eYlVJrCoPxZyQwMk6t2Il7IvByJ8Qht/ubM5BIO+/6HTKklE2+IR0J
	NnYERhGaBDlSjZh2vQCOXcildj8FmL53Y2FG1NsCzo/7pHbbJyQJd0wicFvPs4dI5ZxfhteVfsQSI
	/tx9y2K5MiRhCztVvt7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4ft0-001WdU-Q5; Fri, 24 Jun 2022 09:45:58 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4fsu-001WXo-ED
	for linux-phy@lists.infradead.org; Fri, 24 Jun 2022 09:45:57 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 25O9jYIj016475;
	Fri, 24 Jun 2022 04:45:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1656063934;
	bh=B8SVjvn+gd7EPS39dpx54f1mSMIvRyM+qbUkTMxyk14=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=Hi5Tb60WqxLPb8VCkEoBjlP9wQXG4r4Z2yHHx8lGevxGEoyHzKN6/Zr0vrg7/zCqb
	 bV0G+OZJQqJHOvWqbOM0D48ScCvm8G5XdmY5KR1ralFJ303YLUvG4fzxrki/tS9YJI
	 d+g7vwE5jcrLl/v6N/Nt2Ca16WN5/gkRlz402/jw=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 25O9jYFN072653
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 24 Jun 2022 04:45:34 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Fri, 24
 Jun 2022 04:45:34 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Fri, 24 Jun 2022 04:45:34 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 25O9jXDc126159;
	Fri, 24 Jun 2022 04:45:34 -0500
Date: Fri, 24 Jun 2022 15:15:33 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Rahul T R <r-ravikumar@ti.com>
CC: <linux-phy@lists.infradead.org>, <kishon@ti.com>, <vkoul@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <tomi.valkeinen@ideasonboard.com>, <laurent.pinchart@ideasonboard.com>,
        <linux-kernel@vger.kernel.org>, <jpawar@cadence.com>,
        <sjakhade@cadence.com>, <mparab@cadence.com>,
        <devicetree@vger.kernel.org>, <vigneshr@ti.com>,
        <lee.jones@linaro.org>
Subject: Re: [PATCH v4 3/3] phy: cdns-dphy: Add support for DPHY TX on J721e
Message-ID: <20220624094533.gtlebzbb5xsak4u7@ti.com>
References: <20220623125433.18467-1-r-ravikumar@ti.com>
 <20220623125433.18467-4-r-ravikumar@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220623125433.18467-4-r-ravikumar@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_024552_712688_2E1D5441 
X-CRM114-Status: UNSURE (   5.83  )
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

On 23/06/22 06:24PM, Rahul T R wrote:
> Add support new compatible for dphy-tx on j721e
> and implement dphy ops required.
> 
> Signed-off-by: Rahul T R <r-ravikumar@ti.com>

Reviewed-by: Pratyush Yadav <p.yadav@ti.com>

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
