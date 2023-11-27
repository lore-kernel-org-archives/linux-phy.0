Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68569C4167B
	for <linux-phy@archiver.kernel.org>; Mon, 27 Nov 2023 13:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3oXUZP5QuGdQQiDZf2dIicynB/w/IDg33L63rRJ+Z94=; b=OcwLgRtXiwiXc0
	uSck+21Hn9PJi2tfPeGH4dbN7BjGe4ab04leZH8PHTKb6GPpjDQv9FnD0Zmn7d3/43RhEuXfMRifo
	VtATQXBsGOm+O+K+4h3x1tPCcYSCDA8+jRdC1lQNuAiZ23naWNMC7yDUwL9AT5o52bMLS3WzMyI9M
	FM9oDEJ+Pe9QI2uMlQS+6DIRRv10DusZ7HMewVQn+pXLAw5W/bfVon8LvQ+9H4zpJ5iF3Dn6FnpNu
	IEu5jnDk5Oq5ns/zPdDCF0G+BJRl6Y9fitG5h/xVQQKFpR6WuQwZGaOOvzrnWKMGRfHdftz0opPhq
	jAsYkNGyjGWeT5XqbMrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7ba9-002Yti-0O;
	Mon, 27 Nov 2023 13:23:25 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7ba5-002YrZ-2f
	for linux-phy@lists.infradead.org;
	Mon, 27 Nov 2023 13:23:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2EBFFCE11C4;
	Mon, 27 Nov 2023 13:23:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 619C2C433B9;
	Mon, 27 Nov 2023 13:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701091380;
	bh=34e6n6m+2RJavyVA7BHcIYWwWMAhTNkHTD3FkOlHlcY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=NPsJzX5fAho9QFkhty3D+NJSw5DG6A3+7zlKb2a7IBa2l/SFMvRqh5qdZvrGkhQ1m
	 t7hGZke542Vbno3YnwzzFoAq18CQa9mhc/XNytwAdtZXPHcJD4ukLHPS+WDTVFZYov
	 BPa0kOBl5JyCqqIq433jmM618zrpvYXnyeeKStFTxImOHZ8csHtoB2C4SwYWp6l/9D
	 AKMbLDD0fUUi9eA/cRBlRa6UZCZXQ0VYrmeHqUtMI/lOBxvg8Tby3Ob/UvljD4x1I0
	 XxZKcblo0FVceelTtWNVJw4oWsVa+Jn9vb77U8JANM6N/3M1IaLsE7F96AxkL8/LBP
	 ujY07xbZ4lzlw==
From: Vinod Koul <vkoul@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
 kishon@kernel.org, dmitry.baryshkov@linaro.org, 
 Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20231117061501.537529-1-quic_rohiagar@quicinc.com>
References: <20231117061501.537529-1-quic_rohiagar@quicinc.com>
Subject: Re: [PATCH v5] phy: qcom-qmp-usb: Add Qualcomm SDX75 USB3 PHY
 support
Message-Id: <170109137700.42627.3042149947525086118.b4-ty@kernel.org>
Date: Mon, 27 Nov 2023 18:52:57 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_052322_164795_BFA93019 
X-CRM114-Status: UNSURE (   3.82  )
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


On Fri, 17 Nov 2023 11:45:01 +0530, Rohit Agarwal wrote:
> Add support for USB3 QMP PHY found in SDX75 platform.
> 
> 

Applied, thanks!

[1/1] phy: qcom-qmp-usb: Add Qualcomm SDX75 USB3 PHY support
      commit: 7f6f9e0def00cfaeb1d034fd13dbd84470aeccbd

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
