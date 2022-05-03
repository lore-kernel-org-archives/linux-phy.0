Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52B4BC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  3 May 2022 04:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tcO09eHGRnnHpaUDORZPXGP0KOt485LcMMBMaeKsnV8=; b=Vt4O446OR6QUjd
	S4P4Td6K4X8L91ZL2ts1ANKp69dywa0gfl72jjajzUZ1aAqKCf6ZdZr4GX1Da04JXLjOA3ZhZ8PYT
	o0Hd0o52FUR4LiTT1clW0nNiH49FMb9Wu014pBYKtO8IVeoXS5QLnLKZ8vVr2r6ZUHymRuf4l58mK
	2XMS22PNyPbHnR+SnfIosWQJO4prNGWXCbobNeBi+rSqxhIz0uv+LYWpMaNSWkU05qUeNoa4qoZGX
	xv+ABVip3c4yOjpsiFDbOaDvDGihWwtlCivuecSieiHol9kgL21M2lehxp6TrUoAB++qYbiIW5vdh
	ivY/6t6diaPJxrxmzdPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlkLf-003fgu-EJ; Tue, 03 May 2022 04:41:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlkLc-003fgU-4g
 for linux-phy@lists.infradead.org; Tue, 03 May 2022 04:41:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2FF4061528;
 Tue,  3 May 2022 04:41:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABFE9C385A4;
 Tue,  3 May 2022 04:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651552873;
 bh=o4fSZenVv3IR0ZYe0wGqW4keWer+IQxT8wcn98+zb2A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pLLMZSs2suvqXYm4aMTmjxCRi78bSWLwqlE3x7AUghRtMR0CJwSFsF9nRO/A/4aps
 GrMs+JbPybZjHJ8EDYQ6ZUMVglsUCBc0+sjFi5buOLiyfvDTqnqn8m9cbn7Jd7tXK3
 wKmuPShikaDgGrOzryTq3GIbDDc4FetZV+n5T68OUMyTNRBIr9Q4l4l2eEp+1CC0c+
 91T7Psi7GgI1zPFXX3Tdx1TRGEeuOdBvj8w4zujZGLTNaMfMwFn9B6kT8x66pvPG3m
 y8eVgwwpsvpg0jytjHtGsqaO4XdcfXKDYiMqOhxiE7lmAuy9WjzOLzC+9/KUEQTgjN
 cmTQyl5uZqM3w==
Date: Tue, 3 May 2022 10:11:08 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] phy: qcom-qmp: fix leaks on probe errors
Message-ID: <YnCyZJpdTJOC2lDX@matsya>
References: <20220427063243.32576-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220427063243.32576-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_214116_256643_B5B70CA3 
X-CRM114-Status: UNSURE (   7.28  )
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

On 27-04-22, 08:32, Johan Hovold wrote:
> Here are two more fixes addressing resource leaks on probe errors (e.g.
> probe deferral) and a related cleanup.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
