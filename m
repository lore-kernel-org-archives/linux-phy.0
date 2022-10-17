Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59FA4C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 05:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdN/O2FqEbRZYEB3RaDGrF+XmFAdcYRLh/hG7moIkr4=; b=WrpMdZDYwjEdaO
	VAs6zC4G2bS45dqnAqFhzPWrNAjsURM6jUyCiBj1xLyLdFTZNSnxgyNPcaKhXVcF2/XNy3elE/xYB
	X/wer8yUBAQx2F63PHTkmBKS54sB6wXRSinw2Yj4bIPRuJYRD89qmEOk9falQ9P7sLRyiOtq+w4V/
	x5tWIR0TlTWVlm+6sUzsBEfmZopezslCcIApt/Nv7jnh2+bVTBfXRhZK9veHQuoFREshscFPP88iA
	LrZ8zx46RX4ojIPfSDPQMrvr3aH+Vznuw+tD67D5N8FUgz5FajxunvT9Eixf0r079wdhje0N/S0gT
	bwx0MsT9TpVW/z8rojCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okIfr-007Oro-P9; Mon, 17 Oct 2022 05:28:27 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okIfg-007Oq4-KR; Mon, 17 Oct 2022 05:28:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3842CB80F01;
	Mon, 17 Oct 2022 05:28:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5696AC433D6;
	Mon, 17 Oct 2022 05:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665984493;
	bh=Kk/vVQVO1n4Hl5d04Qf2mWV4W6hzzjjjmYLuEzxTK0A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XQKyTfxIjqjhdL191PMHg1pyAvK5iFM5mPKrqZ2pqpU9b3of65GIEBqkr9X6yx2bz
	 k3AfUiUTt8HojL7flWmMsRhBjIKw9CcEY0nOUxv5/fwP6ZJ9gqt43DHKnRYDxnmskn
	 4BTu1277XImgtnEx4JVdbcQ3v3e8aNU0PTHnwAZv//q+Hb0pFoVw5mojUc2V6CZl9a
	 xNjtUSV8fIj+Og9RwOFAdz2Ow4ZbG3tv+nD5buej4zeHgNiTpMDCE9FXAUm3D83qRO
	 spFnnP5ofnx5tyr2hECDG0SUwe5hr6yeMM19oeJhNS9jCb9AgJlIihASoj4ZLc5aRm
	 AF1a10yGO1Epg==
Date: Mon, 17 Oct 2022 10:58:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, xu.yang_2@nxp.com,
	kishon@ti.com, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, jun.li@nxp.com,
	linux-phy@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] dt-bindings: phy: imx8mq-usb: add power-domains property
Message-ID: <Y0zn6Rczb9relP+N@matsya>
References: <20221014095550.2125018-1-peng.fan@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221014095550.2125018-1-peng.fan@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_222816_841903_CC10265E 
X-CRM114-Status: UNSURE (   6.14  )
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

On 14-10-22, 17:55, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add optional power-domains property for usb phy.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
