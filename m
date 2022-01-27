Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD34EC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 27 Jan 2022 05:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/w3t7hPy6yo6ejbPlWLELS2MFaMl7QnMMr7u52F4dMk=; b=zhFSsdpH3Yi+fh
	t90dXrI2DPNz4TGFciZITzhb0iRoCPOTl6TqOVrrVITw7Us07b79sLiOBfKDduKzhw0IZA9Ycox+e
	U3OjRnPSfAM1Ncf8eUrvRf67au1zCwHpnIzENY9QoPpM6oO1s/sjyMlb1WKA+k7wxoqGPgdvAxyfF
	y0EaviG0BbflmmTaB9bgXNEsSuvex3GqMVq9P3aoVMzqt6LBkK4TbFrtvqfXR4cEmekf0sLDJJhGv
	pZM+yT/14Z9KF9jmZURVg30hUDQq/3sdAtES8q2QIAQ0zTtvNiTazFOW1xhsHofoQtP25EZvyEpKw
	oHIJ3F7e9Z7fyFkg3OGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCxN8-00EPDD-8b; Thu, 27 Jan 2022 05:31:02 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCxN6-00EPCK-99
 for linux-phy@lists.infradead.org; Thu, 27 Jan 2022 05:31:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C869FB82156;
 Thu, 27 Jan 2022 05:30:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0D87C340E4;
 Thu, 27 Jan 2022 05:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643261457;
 bh=ZO8QqAPZhk4/Am2PeI6dAhQraFlAnTUockNeGMJ5AnE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oynhwJHZxAzSkIlGqTnRzpmotg+LpoytKcCepNeuBy6Zud8c+PrpnsBjlxItGSSvI
 DWYwtvjes8OxUSxrIL5eJZh2PQX666F9HOISUx4fkAeSmsUFzBph+aMCuJd8hObQOi
 8hY85kh47b7klzZgjFZhDhsoNjDmw4V1XfDYezIu/4iFEsC046zgA7scAh7LSm546P
 Fjj8boFNXUUOmC5crgEX6SOuvnNZ/XmwmPn79SXAf074FrDv/55h7K/jMuc0yDVxO8
 5oSm2C8mymUF+UIqdJjbj5kgyoRvSo3fisgnvagJHirkeEQSOakbqedhXqeA4Uumj4
 /gOWZO0Fz9AEg==
Date: Thu, 27 Jan 2022 11:00:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Luca Weiss <luca@z3ntu.xyz>
Cc: linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@somainline.org>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/15] phy: qcom-qusb2: Add compatible for MSM8953
Message-ID: <YfIuDkVs2WqAwikk@matsya>
References: <20220112194118.178026-1-luca@z3ntu.xyz>
 <20220112194118.178026-3-luca@z3ntu.xyz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220112194118.178026-3-luca@z3ntu.xyz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_213100_480240_185014AC 
X-CRM114-Status: UNSURE (   6.09  )
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

On 12-01-22, 20:40, Luca Weiss wrote:
> Add compatible for MSM8953 QUSB2 device which reuses MSM8996
> configuration.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
