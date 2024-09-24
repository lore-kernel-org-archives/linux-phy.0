Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A25BFCF9C72
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 08:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l80xp0aNTtJF/XvFggtNmrIZoxPABA5c/atlElEjQlY=; b=0L/heg9LLICsAC
	DozKgjHwSavVFcez7ORfhRJ4YeAYJ04eIvoCXuO+X522OQvyOjK5t9UTRw+mSM+1lAbS+fKowJDyJ
	CJwjZpJTtYD5EgStRFgBpMl4CsacTGmsHYPM7KaJXUL9gaQzsrfOTjnrGu4ihFBpK5D9cZKWEtXhg
	F/Ohsl4KElJnyhoELZnK/Vrn5rDScbOv72+oZj114IDVz0poC344thWlpGF6j+uvllW3vjN9BvJka
	SEdD2N9mUGgnoK79yhNKzi0vnILuRCj1TnwQyqhoFyxS7gRRY0UP5NDi6XaofbQiMTcH93bx02l9P
	cP/qJ9Vk9y2SZtXhYc3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st19O-00000001dsP-1QGR;
	Tue, 24 Sep 2024 08:44:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st18x-00000001dl0-0uvH
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 08:43:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9B5875C5B68;
	Tue, 24 Sep 2024 08:43:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEB45C4CEC4;
	Tue, 24 Sep 2024 08:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727167414;
	bh=0GyJC5zgimegff6pjgvV2wTvLGb/Riajc7yJ4PNzrgU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ocdzidDWy3R5QEhvUy528E8C+QpTkQ20lSCngxXB57cZ+IcZmY8IACqzrQtkSJiPH
	 L3FrN5jwBS7dMd37KtqzFBqP+iXfcUsu8x+e2mXj8+I3PgEYsZsQaFRDkMJ28RpFNC
	 2mA5ES7+U7U5pJmWqUgwSDy80PTXxw3pVAC8xsk+d4/b67qQ+0a89oHlbj2HQ56/so
	 oeWBbHYCRPkzGUOcT7Kt4apcvD1+pYxhv3eA9j/2GHW0iwmo8n8FP6PWcWDhLORVQf
	 EmC/uFZVfZqB1U1M6CbP0OifrZcnawEzMwqOiw7KFxgUOGOYt0w63pScZUtuLPRjq7
	 dPrnh7hxlqR5w==
Date: Tue, 24 Sep 2024 10:43:29 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org, 
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v3 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x8
Message-ID: <znnzcqujrz4cc3uimwymwizf4yvhsos3ky5vwhkxmopootmu2d@3yglev5si6fn>
References: <20240923125713.3411487-1-quic_qianyu@quicinc.com>
 <20240923125713.3411487-2-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240923125713.3411487-2-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_014335_324525_9AAFAD90 
X-CRM114-Status: UNSURE (   7.86  )
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

On Mon, Sep 23, 2024 at 05:57:08AM -0700, Qiang Yu wrote:
> PCIe 3rd instance of X1E80100 supports Gen 4 x8 which needs different
> 8 lane capable QMP PCIe PHY with hardware revision v6.30. Document Gen
> 4 x8 PHY as separate module.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml    | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
