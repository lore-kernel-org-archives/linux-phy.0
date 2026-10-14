Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CF4ACC6B1D
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 11:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVkugWr2Zu+oNsOi/lColVtTD0UnM4R5WTNpreUOZpU=; b=azkZ0ZXYsoEpX9
	AXJTV2SL3mxojCC6tIQ4K6Mvr2kunhckOyQi7SioEXO/bWLciPHAzKPy9qOBb2dHpQB8h0qdaKbDY
	cT9Fqt22/k5atQbawoKL+0PwBlAjUSUs1gE9OMo1gJOuzyKT/Hs3zcabKDzHhg7ENEtcseIRxyEus
	6HERnhxTnReS9gq8ec2sVIcyQpPX1EJzRCoLZOKlIb8RrIHWPDVWPUo3bWc0oDCbzuXzp/Gtl3giJ
	huEJncftZY8JKQbhYI6KbDDtOTQq7lK223uq4G7n4s5XtWwk8OCbJJZK6dN4jTs7aZNoOSj+N+tDJ
	W8bR+2bizsgEf0v3ck8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGwzz-0000000FJ6T-3Fsc;
	Wed, 14 Oct 2026 11:18:19 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGwzx-0000000FJ6K-2nxz
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 11:18:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6B334417BD;
	Wed, 14 Oct 2026 11:18:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3E641F000FF;
	Wed, 14 Oct 2026 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791976697;
	bh=drYfbpb2LBG+x4JXqrngXPqZPEzIHrYceGuJu9xpl2A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=b4ntfcoJij/rLepSzyVqisHtCegi9Ss/E1N6F6Z5YfyTVDsFuOIYm8NaFK4MsHkWC
	 oPPEyg3FaS8XDEsRfPnIxFR6BApAncNUK9YzEWdcBxH6PB+ZXqwFvqYIqAtiQW72a0
	 AQr9J3tZVyNhsO7Nct9xPfgyUvF1hUCFvDQbeA2WGE7ZnlNe+zu2FCD8ZEvGpkCiKY
	 ToUicVj+OO5n5X7EDTMD/4GpHTHZJI/FPZjYwMS19QPS+4bYmLaKtni2/591exI+qG
	 jZ9jfirhe3dM6UA2y8FPJQUme5H+WD+AqiFa9fMJ4P0iITnvNiY2IuGw+uaCykHuVj
	 Um4PvXAYAEqZw==
Date: Wed, 14 Oct 2026 13:18:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Suresh Vankadara <svankada@qti.qualcomm.com>, Vikram Sharma <vikram.sharma@oss.qualcomm.com>, 
	linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: [PATCH v2 3/8] dt-bindings: media: Add CAMSS device for Hawi
Message-ID: <20261014-fast-swinging-dormouse-26b5bf@quoll>
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
 <20261013-hawi-maili-camss-v2-3-fc93222da89c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261013-hawi-maili-camss-v2-3-fc93222da89c@oss.qualcomm.com>
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

On Tue, Oct 13, 2026 at 04:32:45PM +0530, Nihal Kumar Gupta wrote:
> From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> Add bindings for Camera Subsystem (CAMSS) on the Qualcomm Hawi platform.
> 
> The Hawi platform provides:
> - 6 x CSIPHY (CSI Physical Layer)
> - 3 x TPG (Test Pattern Generator)
> - 3 x CSID (CSI Decoder)
> - 2 x CSID Lite
> - 3 x VFE (Video Front End), 5 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE Lite
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> Co-developed-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/media/qcom,hawi-camss.yaml | 305 +++++++++++++++++++++

... so here is the missing file from next patch, so just squash these
two.

Don't add new device piece by piece.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
