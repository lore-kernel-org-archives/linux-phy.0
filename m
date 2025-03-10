Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A89D9C2BA1B
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 20:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lL3jXZzKDYNhzUdSNVvkdRkOIL6FeB9TeYpy+lUXb/M=; b=z+agcNQZAccPar
	7RASW2AzYFyXfpl5UW5xc3T1wbVVQL+nS5FNQVSsoaq02JYc3HT9jyTfXkr1oVxvJCIuPlaZKLf65
	Y6e17sp9kOTZiF7NIcPPsPp/50cmaj42hRQDcyvj9JE1SvDroYXgm2AvJklhqYneBcVXWTtgtq5Hx
	a2mrppJAdI+QhV3vZT0Y/WSx+7CXVdxr7xENTI6W2ucjfJOUNb4P7YTj5jz3bz6w5lJKNxIebaW4Z
	tC9yEwDPO48msuaFqBNm0uasAlpyzzrhlkjgcns9GRTxLXH9696Vo82fqWFa+puBYMxhH48ytImbM
	kL+Y5YGkecy27BFCJOXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trjdD-00000003rdM-1qgK;
	Mon, 10 Mar 2025 20:21:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trjV0-00000003pKd-0yfS
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 20:13:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CF0015C5ED4;
	Mon, 10 Mar 2025 20:11:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB18CC4CEE5;
	Mon, 10 Mar 2025 20:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741637597;
	bh=skL/rmRnGlTYtLxJfB+8Va0I/aLt0qqNr1QIB94k4zA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=MUbspcSL8izya5Txqem6UzQ0RohAzVbiMswB/9dclgoaizYep+/AhqSoNCyFAKCYw
	 vr78DxMOZpiu8naV2kZe4Lg0jbxYK8VpfLcPx1M1Rd5T9/TBn7QLRf3B1yUjDQIbNP
	 tfxti8eua5b8sE2dupaWA030/7dU/ENyCvvplvn7yx+shK6lzaZv4p6JglaYOaa78j
	 DY6VYGK/Xt2iv8+JL7e2yodE5LaXWZwnVG3rSoH9osij88+Z7v1jQ3H+ycwKZPuZEg
	 Gl5/rqXEWP1oKdQdPitQpu301Dy+wOuGBRmZlAfyPA2OGnWwcQCqjCo9e8cGC4AHqt
	 9hdVBJh0YHfeQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Johan Hovold <johan+linaro@kernel.org>, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org
In-Reply-To: <20250310110359.210990-1-krishna.kurapati@oss.qualcomm.com>
References: <20250310110359.210990-1-krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH v4] phy: qcom: qmp-usbc: Add qmp configuration for
 QCS615
Message-Id: <174163759448.467704.16738286875495669175.b4-ty@kernel.org>
Date: Tue, 11 Mar 2025 01:43:14 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_131318_339880_CFEA054A 
X-CRM114-Status: UNSURE (   3.27  )
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


On Mon, 10 Mar 2025 16:33:59 +0530, Krishna Kurapati wrote:
> Provide PHY configuration for the USB QMP PHY for QCS615 Platform.
> 
> 

Applied, thanks!

[1/1] phy: qcom: qmp-usbc: Add qmp configuration for QCS615
      commit: e45cc62c23428eefbae18a9b4d88d10749741bdd

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
