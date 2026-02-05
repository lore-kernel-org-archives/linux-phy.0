Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA267EC1EB9
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 13:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dK7kh9gShhFLJXourtTAC3dXouCuqGRMeguPBWoeIDE=; b=2Ms65Qvjs52TMX
	QmhFLXj4S4qz+dEkzbPdgZd+6eF5xYhvkGhLmyNYaSLd9+q74GxRR4Q9bQiZDS2NRbYLjFVy0+KZi
	Sng8TS8DpG4jdQo4R7KU+On3cM6Mk2MzICqG6LA0F14x//Za5z069Kzx2YFo4pUCnHQbTpXzP0+2x
	3jWFWMlSLHychUPnCFyMFY4onw1xCQ1R8GbaLQ6jyyvEgXhfqRN0e1Xnu+MlWCg8iUowEl77HR4Dr
	4F0tIrx4xrjdjiRLqnB8p49Fvedt+ZUR/5CypXADM77VpM1ikneOSzQalyobEe/molrxFCVR1crz+
	zTNz7/nmpNrbltvHVDLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnzcE-00000009y1W-49Dn;
	Thu, 05 Feb 2026 13:41:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnzcC-00000009y0z-2IlA
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 13:41:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6246B43354;
	Thu,  5 Feb 2026 13:41:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B07F9C4CEF7;
	Thu,  5 Feb 2026 13:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770298907;
	bh=h/0f6IHIRl3KzkE+VibV3iXdj0Ot3OIt2aNCM9AKpCs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m0MuPVnNrqg/2+MvKDBgb63TgThWKBU+/xjrf1fcjI4cjGwQgiEe/lpswS+sf9yAW
	 ywCg90rvw5WN1vzqQz/I2IS/7dAjZomAsT6LTAFjkulU9t2q+lAjrIjSqN4l8syPFr
	 DypZ+QiSTtFb/EvP3nN9NaYtJR6WSeyr2quuJ+zhAKXq5pL67oT4Q4FZM2rDWX1FQB
	 swBJUWuyU69OKHVc0oXkKSF8vaCFtirPcouqluRCgvYvWyYuzlDwddGPiMNtrRaoYy
	 MCFEU8VmpHiuibTZZ6sd/hrr3F4HnxlxZ6RIuZayb2huEClqEW1E0OTr2GnH1KHrHi
	 lGPD26whhHhMw==
Date: Thu, 5 Feb 2026 14:41:44 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	ningyu@eswincomputing.com, linmin@eswincomputing.com, fenglin@eswincomputing.com
Subject: Re: [PATCH v9 1/2] dt-bindings: phy: eswin: Document the EIC7700 SoC
 SATA PHY
Message-ID: <20260205-pretty-pheasant-of-focus-64c1ea@quoll>
References: <20260205082009.1780-1-luyulin@eswincomputing.com>
 <20260205082129.1482-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260205082129.1482-1-luyulin@eswincomputing.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_054148_650834_87CC8356 
X-CRM114-Status: UNSURE (   7.44  )
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

On Thu, Feb 05, 2026 at 04:21:29PM +0800, Yulin Lu wrote:
> Document the SATA PHY on the EIC7700 SoC platform,
> describing its usage.
> 
> Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
> ---
>  .../bindings/phy/eswin,eic7700-sata-phy.yaml  | 92 +++++++++++++++++++
>  1 file changed, 92 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
