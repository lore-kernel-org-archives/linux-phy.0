Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6887CA0EC4
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 16:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4SUBMxZy6q9EdP9y034yOFhUw7CvI3waJrjO77MC2xk=; b=gnGJJYMZuvuoeO
	x/yKXBMywxd9Kh0W+4nu8qKf3Wz/gQHhV9FXqAWdZs/fSIxXmOjvEfBrvB24+XpfYEdEmve8HbPPp
	ZFibXQsGLXRTL8zMmiCJN+mwNobJ/Gu1xVVx9JRP6Fl2oU/3+tcztJS3h3DT5LLBilsAQmWrFaPHz
	61uO94g7hKV89jhotM6XYdZcZFWi4X2mo1yLvEowfd7CzRUy+TvwSy3rYvBb5cYFa5yW4OGgrxX0H
	33v2jCc3xos3nrtqysZOI+pdAZPHv+ucz2XV4ekbyiNn2LaFgBrHcNrIrS7vtjxklH/6J9+gcW0x1
	9KmVOmngrTGsr4E5H8Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulrir-0000000BIro-2Eyq;
	Tue, 12 Aug 2025 16:19:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulmJx-0000000AW30-2WvE
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 10:33:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9778745BCB;
	Tue, 12 Aug 2025 10:33:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87345C4CEF0;
	Tue, 12 Aug 2025 10:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754994812;
	bh=NrSTn5crAr7ZLQY3cQ0AurAdvBSzrxB5k9V4PIfyaq8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h/18jpMLrqn95RuAHTMYpKZPJOBjQyZ4el76bHIQazX7WMYQoQ5Yk6d8A3ZMGAjHt
	 WEL0KBSv7Bu2+e09B+gKCc8g6OWgo44VsZCzYor7Nv87ruSTLQzzvdT5D0B8KqCQ98
	 hdYJnPxtxZ+o0F+c91uK7rdyH4ttGaVt1lIxOJe9Hl6iPIW57UW3AOyXWfiAly5M00
	 Izvc33f7lBmLueiB8l/bts/Jgo/L3Nup8tcuAeSUpRyGSiNp+T0AiTRggdI3A4YNOS
	 2zmDnx3KuIajgNIC7I8eijwXPoU+2sCN2U3ZQQ26ZRUcVbasi9PiRQYGHBdNpAFco6
	 vkQrMwPKItBig==
Date: Tue, 12 Aug 2025 16:03:27 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, kishon@kernel.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v10 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for qcs8300
Message-ID: <aJsYd7tAi4CdOfZ9@vaman>
References: <20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com>
 <20250811071131.982983-2-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250811071131.982983-2-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_033333_661216_4E834158 
X-CRM114-Status: UNSURE (   7.79  )
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

On 11-08-25, 15:11, Ziyue Zhang wrote:
> The gcc_aux_clk is not required by the PCIe PHY on qcs8300 and is not
> specified in the device tree node. Hence, move the qcs8300 phy
> compatibility entry into the list of PHYs that require six clocks.
> 
> Removed the phy_aux clock from the PCIe PHY binding as it is no longer
> used by any instance.

This does not apply on phy tree, please rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
