Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5007D74951
	for <linux-phy@archiver.kernel.org>; Wed, 30 Oct 2024 07:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GyGQIjJy+eTH0rc7CzLNp1FooZqEoH+VHlqjfBu0xE=; b=ZwomreUFH31B9P
	GDc0nfjDDxX8VbNiO6gkNyuRJY+e2GD01rLJOgCEDjhtBWlnbaVxnjxQl/zEtCTHI+Bm8pXA19nV9
	59dLImA/LjTpfEht7qJiENb9uIdKbF/K1DnHGUl1broofgVog7PO9j0Kq+DgSOeV2IIThVEa5gZo6
	bBVOqrWLr5U6VK2MB/t2zH627VaoiQbEi4jAt4dC0VJ/tU7Ewp9jGJ+FjHUWnIH6JjiPETAHJ8sbE
	YmS84SaN1zujGcncVr/q2HfsxfnHpYhBs94tyAsKPROIuycLr7yjFKkNRJebn3+KNiAhehIYQ6Mkz
	QuxGlnYnwwJwrZxL50/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t62uq-0000000H6TV-0VfO;
	Wed, 30 Oct 2024 07:14:52 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t62un-0000000H6St-184v
	for linux-phy@lists.infradead.org;
	Wed, 30 Oct 2024 07:14:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B72005C55D3;
	Wed, 30 Oct 2024 07:14:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58687C4CEE4;
	Wed, 30 Oct 2024 07:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730272486;
	bh=pBcIAnmp4npGjLTIppDJ8lCcHYRQBXuCVUIIlJStpJI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tX+cyevVKxLt3SNEBU1M6/peN6I5GFIHcheZ8LlR7lVBsqz7034FK8eEqzKfD65EZ
	 nB74/ohR0s9Gb9YejzMxasf7JV2mP/AXcwBhLGaiBsF7wI+WERGpIahU7Zkt03YMOV
	 C+HxsF/Of82M9HayOKi3p1AzTwpBYrnQrbTxcX+V7rr4BpvGPlplB9IYP9oenhzYR/
	 e3Fa5gRiZss4PpjP/1024W18aZSrc94apmXJ7ddAhv+nj+u+cUtfna11+W3T35C3jr
	 OCzQghqdSSq6pUVhSljfTOx0Tck23XSc5FYROyn/sGkJdB387LQRLemwTYWgU1Pg1s
	 ZsifqVsLMjSGg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t62v3-000000006PK-3LQY;
	Wed, 30 Oct 2024 08:15:05 +0100
Date: Wed, 30 Oct 2024 08:15:05 +0100
From: Johan Hovold <johan@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	johan+linaro@kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v7 6/7] PCI: qcom: Disable ASPM L0s and remove BDF2SID
 mapping config for X1E80100 SoC
Message-ID: <ZyHc-TkRtKxLU5-p@hovoldconsulting.com>
References: <20241017030412.265000-1-quic_qianyu@quicinc.com>
 <20241017030412.265000-7-quic_qianyu@quicinc.com>
 <ZxJrUQDGMDw3wI3Q@hovoldconsulting.com>
 <91395c5e-22a0-4117-a4b5-4985284289ab@quicinc.com>
 <250bce05-a095-4eb3-a445-70bbf4366526@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <250bce05-a095-4eb3-a445-70bbf4366526@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_001449_370255_F326E821 
X-CRM114-Status: GOOD (  13.85  )
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

On Wed, Oct 30, 2024 at 01:54:59PM +0800, Qiang Yu wrote:
> On 10/24/2024 2:42 PM, Qiang Yu wrote:
> > On 10/18/2024 10:06 PM, Johan Hovold wrote:

> >> Also say something about how L0s is broken so that it is more clear what
> >> the effect of this patch is. On sc8280xp enabling L0s lead to
> >> correctable errors for example.

> > Need more time to confirm the exact reason about disabling L0s.
> > Will update if get any progress

> I confirmed with HW team and SW team. L0s is not supported on X1E80100, 
> it is not fully verified. So we don't want to enable it.

Thanks for checking. A word about what can happen if not disabling it
may still be in place (e.g. the link state transition stats in debugfs
on x1e80100 looked pretty erratic with L0s enabled IIRC).

Also, are there any Qualcomm platforms that actually support L0s?
Perhaps we should just disable it everywhere?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
