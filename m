Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52488C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 11 Apr 2022 18:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yqTiNSzJ3sJTxd38JSbyFW6jZMrlrP+JUBZDJXvHm2U=; b=jALr5iSlZtu1m7
	ejXhIJSZOuStYMNuCRufy63JACafD1Jt/vwdCHqpMOEK33F69uXNQIN3mm/x36CqokSggyC0AQMtt
	ygL5IT62tCIllZLXyTGj39z/G1Vg/dgHKdWLBTcwHJI94h3iqHpGYBvgWqLAQZLTcw3ahgBOFu527
	Ln+fxfDX0YRE83OdoUp8toMcRzBG3EowxmWrYfey3kXN6U7nmStKerRIY9aN6UVJ5wco0fot5oyTQ
	MTEUOUk00wAhmIaRwQ6SuBSjgefB+JGxZ4k43e5ibGBs0Uv8hpDl0QFJj7dUmxDdMNt2vs/UjjNAu
	1FIu7EvUfzcbp7D6L7CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndyOo-009yxM-Ez; Mon, 11 Apr 2022 18:04:26 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndyOl-009yx5-KN
 for linux-phy@lists.infradead.org; Mon, 11 Apr 2022 18:04:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 50101B817F5;
 Mon, 11 Apr 2022 18:04:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F07AC385A3;
 Mon, 11 Apr 2022 18:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649700261;
 bh=mEtcO+luL+M3MFSDWidwlLniHaY0sogkYUV/bgSCS6U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=febxVfGC1uZxrOXZD8gaO6VngV1he/m8F53duvNrhcH9XvdYR1J76jEHeG+zWyNeF
 B3gL49CkYKWcYR+RS+xsBrrkaV5YWRAEp3NSYKw1WWedLc47i4axfb6Ky10awPHFXS
 VCRubFB3mWmkH1vdymqVjI0CB5oQuC6nqqFxMZn8+d2D0z55njQj0mRuND0Qbfd+vW
 yu6VTmDxwKQlhS063xQFWrNkg6zi5Jrh1wNzSGTvlfAkDz/fGQN83OKS0BQlmg6sH7
 Vab5HzjIDDNhr/LIm5B5+1LgI6VQ4tvvuPwISHbmTeJsQ+9NmC5MUljN+7WQxie8xV
 huDLqgMdLHIOw==
Date: Mon, 11 Apr 2022 23:34:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/6] dt-bindings: phy: qcom,qmp: Add SM6350 UFS PHY
 bindings
Message-ID: <YlRtn6RhVQ7+oeep@matsya>
References: <20220321133318.99406-1-luca.weiss@fairphone.com>
 <20220321133318.99406-3-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220321133318.99406-3-luca.weiss@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_110423_848230_991D72BB 
X-CRM114-Status: UNSURE (   6.52  )
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

On 21-03-22, 14:33, Luca Weiss wrote:
> Document the compatible string for the UFS PHY found in SM6350.

Applied, thanks
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
