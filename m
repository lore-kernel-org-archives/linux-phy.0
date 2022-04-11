Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6E91C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 11 Apr 2022 17:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFvvbXzqjrcBURqS9XhTwQwy4TOxg22SaDhb41KvY60=; b=CzHu+o4pAO+6yi
	Me5UnAnFaNuMJyZ9FlW+jy4mw0sU05fxClR7bhzkWZwJTOpTDJFs1eMXhXRKokTu6UfCcVAL7H2AB
	0T3spGDaj/S8rgymNi4AG75IwqrWoZA85un78vZTOAYUnNinVig+9n4Gl4S7oInzMjUkZQqMvRDyb
	ePfgEvjNspEa59cDG9/PNUCXSN1dGLlLqra0ERA3K9F27qe2hTFbCxdKT6z1MWh7NwZIjoNacNWZW
	UmTnj3PYv6jsUfZiTvMlFUaeVkhwcY7JM5jOcVoDsevh3xwtUiIPg8DZFybl+2rjA5FNJHURZZfzo
	CIp6yQm2ksX4HtFdGx5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndxet-009qnz-5H; Mon, 11 Apr 2022 17:16:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndxei-009qmG-7R; Mon, 11 Apr 2022 17:16:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 93C7661752;
 Mon, 11 Apr 2022 17:16:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EB12C385A4;
 Mon, 11 Apr 2022 17:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649697407;
 bh=KEdgu5lNU5+HyVwZRaK/BbilKd+k1nntwkrHK/f5xnw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V4WfzENQiux5OP9lf3StinCx+vgGkRS2A4laKy+HlRnRR6VsoFKFgMfzCtt4fhKhG
 06WX+RdkGEg7LtoAnDYIsiujqtlfhRQQxe57BnIPBYZIaQAf5FXxSs46hFUMGtKDDp
 V5w6uiUOcg/YmAr35lpe/CWzFkC7S66429CnY5yjCCaVNPASm5cZ41xa7eS9n2UDsU
 +aRzR6SSjR10oUpgqJvfrwFoE0fdUqdVDy/wLjdweRJrL6jyOX/y4ntmZidVCJIIMT
 xfBQ2S01tcotR5teWGVrpZglhFLZJ66S5j5Xb3EknMRysXsizb2BQp4bBmOBrTGg7H
 Up2irQS7u3vXA==
Date: Mon, 11 Apr 2022 22:46:42 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Girish K S <ks.giri@samsung.com>,
 Yuvaraj Kumar C D <yuvaraj.cd@gmail.com>,
 Vasanth Ananthan <vasanth.a@samsung.com>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Miaoqian Lin <linmq006@gmail.com>
Subject: Re: [RESEND PATCH 1/2] phy: samsung: Fix missing of_node_put() in
 exynos_sata_phy_probe
Message-ID: <YlRiev97AAS1GvnQ@matsya>
References: <20220407091857.230386-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220407091857.230386-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_101648_341804_B525EFD3 
X-CRM114-Status: UNSURE (   7.96  )
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

On 07-04-22, 11:18, Krzysztof Kozlowski wrote:
> From: Miaoqian Lin <linmq006@gmail.com>
> 
> The device_node pointer is returned by of_parse_phandle() with refcount
> incremented. We should use of_node_put() on it when done.

Applied all, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
