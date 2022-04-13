Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62EF0C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 07:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4U/wO5xmSN4NWgDhAMKGKg7PU2BWwXxZHdrOxy9b5Vc=; b=pzZwPUsbPbGoYw
	MhZKJtUGgWxVbM+mipXDK5FzIaht7ukwbDjTK7yAK6fy6xZT/y5ObDr/McZN6nHx014sfoBVMLnrn
	3AYV3ndBWxUlTYw2D47Vemci319WyCH0QGInI1IXV4NPDfYP/6uBbczQjZ6Kb4dirFP8r2H7pg1Wy
	+37tevBlBCMETZk8hS99+nX/nijgbjY/Vr4PruQ7XbS5bs5VOddgFckvETgeahzTZFpJhu5pWLP4m
	GQQMOgsdHx/iqhFXNimZa060F+ylFnZ7hBiV2A4kkrGTBLc4Qfcvrm/1PzVaXZd5FzSYueinj4AmZ
	7xxggjPx+oBP8cyJlr9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neXqQ-00HUgb-PC; Wed, 13 Apr 2022 07:55:18 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neXqO-00HUff-IF
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 07:55:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 01A90B8214C;
 Wed, 13 Apr 2022 07:55:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF3ACC385A4;
 Wed, 13 Apr 2022 07:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649836513;
 bh=1f4mcJkQt1lTjW13r8eX0mTCdHXvLFxIhJXVjQ6xG/Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gDzRpSw9RoegUV+FlhIx87nLVc9FcoPmGnlAyqNHhN7gCAgnWihbcoIgUXRxQ90NA
 1a19XVozvZvi9wJ/DfNDpJLFtYBi4Xmfj/qoBMGXNXIgXWs5t4jblAlpVNxFCQ8oGy
 cCWHNlMjgP4ASUkXyQaYdY63nsvl9vWYILROyR6cBU+rNbfZcUG3Vi6G7wUwNyOZIm
 I60RyVaCWqttaLqAIoIujs0aGmWetneUfAUo55dN0GSDyoHHy+KlDIN0gwZgTUqK7I
 wXLMW+kcnjVD9NJwauUmIbC/02OU+TFf0KVAbobftNnzLbhfSVIqnRn7qY0mflEttK
 ZMYvzKzTYkY8w==
Date: Wed, 13 Apr 2022 13:25:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com,
 robh+dt@kernel.org, krzk+dt@kernel.org,
 manivannan.sadhasivam@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Add support for USB3 PHY on SDX65
Message-ID: <YlaB3WBb8Dz3RLNC@matsya>
References: <1649740652-17515-1-git-send-email-quic_rohiagar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1649740652-17515-1-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_005516_805769_1A0478C5 
X-CRM114-Status: UNSURE (   7.69  )
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

On 12-04-22, 10:47, Rohit Agarwal wrote:
> This series adds USB3 PHY support for SDX65 platform. The USB3 PHY is of
> type QMP and revision 5.0.0.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
