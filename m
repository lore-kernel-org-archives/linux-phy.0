Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCB59C7EE30
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 00:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bfw9rXPLdTkShQ9hTM23bCcVy/K8bxHrhmVK1rUa0XM=; b=QUJqlnY7SFPcoX
	d4nROIM5TQTu/ECRKSYO9HNPlI0BsALDWIbmKyze0rBwBpPosLROu+hg8z9ogEafpK8xx0i7pMMZX
	SHomsiKIXnYrPNWEgb2GUmYd8XG6cifcThlml1RW0FiABgZ96iMLe9SKdf8N5NEpvP+QHvbsIicit
	hwNZ9KDOVBa9rGS2WPAk1xRMCkEUBc00JHj4h0qzkNdk1CbuqElm5wjzrZ1iSaP7KMUPlhUxM10gq
	iCmfvsoacY9YMKC0mhfdET7NBG5OF+2sZ//qBfy8+dyI7UJ3VjsQuetL7VQhNBOjjMmqSxyIZIQmj
	ZqjA7ODwKKbBIN2a26Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUxCU-0000000DEHI-27uS;
	Fri, 27 Jun 2025 00:44:18 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUwR4-0000000D73h-47vP
	for linux-phy@lists.infradead.org;
	Thu, 26 Jun 2025 23:55:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 615AD6111F;
	Thu, 26 Jun 2025 23:55:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F369BC4CEEB;
	Thu, 26 Jun 2025 23:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750982118;
	bh=IQ4gPjgm+BlfQlfBkH4V119fWEcuJOoQY3dYUFLsEvs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DwXT7FbkOMuUr58MgAdbvcMAXsnJVO8rVetWPfdmnSIuwRVonJWbZzTHrl5oEJZF1
	 NetH/ep/H0hyjgc4L/aAri/y2RO3eW1+cv0ys8teVRlvFhD1gwH/BXpcTv1thrQzjR
	 Z887RJFvWtpARAKfjFesq+nB+wL9l1AOXN61kjjbC37FX3XAutNAmVvbac1/lyzmuW
	 ErCI+S45xw6j52JPppF+q4x5lh4qzTQ3zPAG6UyZolXzDD7im4OSld++Xgst2jmFk6
	 Vcc7bSSt5lWFTFL+K+OdMgcnTkXIXBCg1Vh+Qjksvj4o57l0wVxOmrhE/TKb1Pc2bx
	 3Ch7dS8KHUq8Q==
Date: Thu, 26 Jun 2025 18:55:17 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom,snps-eusb2-repeater:
 Remove default tuning values
Message-ID: <175098211658.1434134.8830216383938971952.robh@kernel.org>
References: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
 <20250617-eusb2-repeater-tuning-v2-1-ed6c484f18ee@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250617-eusb2-repeater-tuning-v2-1-ed6c484f18ee@fairphone.com>
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


On Tue, 17 Jun 2025 10:26:35 +0200, Luca Weiss wrote:
> The reset default tuning value depends on the PMIC, so remove them from
> the doc since they're not accurate for all PMICs.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 3 ---
>  1 file changed, 3 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
