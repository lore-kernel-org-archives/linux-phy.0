Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C963D132D7
	for <linux-phy@archiver.kernel.org>; Mon,  4 Nov 2024 14:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pKeFTNbQEPFsDCVqy9KhimLlrKnWqrZreE2j6+VRxHc=; b=qQWsEsULPROxqo
	j0AEZhameLXTBKa4GM9MUX9Yx6ZCDF0I9L4sNerOk+XE81eQPGPHyGrYrqP/VCTVsVjTtNKarws0X
	BANzdujhPji9rhoiZMhCKOaOTPWAu+1GxkDVXrkhxi6KNCaS6TBFZJi/Qx7HcXuOXrWlxR/RePf2p
	CzDp8oQya2GgWUsZv/wP21R5wLKGMJTG4Tt+cFFUmG7+zFOoQ/Oy6H8j1J0+n86k1JqaHaS+Xq885
	CA+OhB220rTwPFKATvt0I1IUacuy2ISshLAuRzPk4SB/1QOWuUm0bf8UbJjtqNivckPktvH7SlpS2
	n0FoTTyCIIFBgEwWE+Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7yKb-0000000E6ag-3ebT;
	Mon, 04 Nov 2024 14:45:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7y0N-0000000E2Sw-0R5f
	for linux-phy@bombadil.infradead.org;
	Mon, 04 Nov 2024 14:24:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=RB3F8a6XFICgUjFSR5WRlqxZF7/iqdSE6gB2Nr+e4Eo=; b=f7zN91oq4bKXleXHQWPHqkEzH2
	Z5sCks6IX7LG5jtS742FY9UNaviWz2JyfIYotlUw6/Il/33WEJgp19O1HufHOkGUx2iJyi+zOxIR/
	FLb1DRexDo2iZuefUQ7xgLIuwVJtismDtKw5kJBqqQRXZJEQCCf3VfvWfvf84+p3AZMhkHYYpq+Ts
	pmwqQ+NBIjxrzM3hTsGF82DXUfqmV8kNfkAOJBMSPOeEGDFtRjrrH8DCaO906l5ZgaoX5vG5LeFTc
	4DQeiDSqyFRiFDYJt7NCDQLq17awGZzr2keQ7UPUspoN/Zryi8rlvpkM6Oe9js7VbuxuuPQauhUld
	Eu46qsbA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7y0K-0000000BLjW-1Z03
	for linux-phy@lists.infradead.org;
	Mon, 04 Nov 2024 14:24:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9B5C85C5631;
	Mon,  4 Nov 2024 14:23:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 033FCC4CED0;
	Mon,  4 Nov 2024 14:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730730263;
	bh=xu/jVyvAFcaTT86i2w/CmQDbYhthYBNARz5ujHg8xP4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SDkIXJjUqI8v65KuM7S0M3PNEJPSnroUHZ06u2jFVG4lS5fEazbocaYJ4NOqQS0g0
	 7yCtHwOzd1De1r+WB/6AX7+giDketoP1aVZ10dWwC5eBy2u26VQxxaJhY0mTG4w7OF
	 p6HwSLWMwbhdPwzoxZHDeuNz5kP4602+FPHb8lN7RnixdW01ddfYvQY69SvPOiGBZd
	 KH+WXeeX46KbPW8sb4hLI6WnLk3qCmRhuAUkactaqXuIsXDdz/hLFcv3SyEi5IA7GL
	 DjXa8ynJmuEUszLbxL4evzBfakrMG2xgl8O7d/dIdYv6xi3d23GFaaJiyFUS8Irna5
	 9smLFvnEwr3Qg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t7y0B-000000007zq-2QQ4;
	Mon, 04 Nov 2024 15:24:20 +0100
Date: Mon, 4 Nov 2024 15:24:19 +0100
From: Johan Hovold <johan@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	johan+linaro@kernel.org
Subject: Re: [PATCH v8 3/5] PCI: qcom: Remove BDF2SID mapping config for
 SC8280X family SoC
Message-ID: <ZyjZE-U_7YZhScfG@hovoldconsulting.com>
References: <20241101030902.579789-1-quic_qianyu@quicinc.com>
 <20241101030902.579789-4-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241101030902.579789-4-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_142428_603024_333FFA44 
X-CRM114-Status: GOOD (  11.23  )
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

On Thu, Oct 31, 2024 at 08:09:00PM -0700, Qiang Yu wrote:
> The SC8280XP PCIe devicetree nodes do not specify an 'iommu-map' so the
> config_sid() callback is effectively a no-op. Hence introduce a new ops

Would have been good to say something about why there are no 'iommu-map'
properties on sc8280xp (e.g. since it uses an SMMUv3) as Bjorn
suggested.

> struct, namely ops_1_21_0 which is same as ops_1_9_0 except that it
> doesn't have config_sid() callback to clean it up.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

I see that this patch has been picked up now. The above is already much
better and I guess this is good enough for now:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
