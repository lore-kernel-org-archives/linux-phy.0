Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC833C88E40
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 06:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i+y6EyvhJZ+5UXCtxTi8eBCjk+E6G1UZMcXcjm2mOmk=; b=MocyCFGEdtYeSv
	usMGeb4EEJRMXivkhyoWwCLq2cfLqKc+u4+rnTepnWORLNk9upuZv72H6GSIwY05YBD7iDZAGanSH
	KQQ6yHIoWm6I5s2orBYBE7IXHFEWen93ZGTXxr3gk1t7OWv4EH/uw41hBjIqAuTTEB0QTA5OtJOzm
	Rrcym5V/9Faxf+V+wDEz5UpQj7WByLPHPrPZHQUSfp43s7y+SUqzJ/49sbQuT47spzB/b4JDZqPnb
	Pxl2/T5rSaErrcPduvznLTenrBiZbf+yO1Rb2gPOZYdUehKQEBS3VCvrjRkKMM5a4DeHbCAgN+Ywk
	fMHJcawJY1KRXuE9tk0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5dba-00000001SNh-1tDo;
	Sun, 13 Sep 2026 06:22:22 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5dbZ-00000001SNY-0xYk
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 06:22:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C769E60AAF;
	Sun, 13 Sep 2026 06:22:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 966501F000FF;
	Sun, 13 Sep 2026 06:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789280539;
	bh=7O0ijmU/63M3r27RIHOfPvuoO9Nzvs8zYyUzoD6v4J8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Sy+aDC9JoaxxV0w0LSHTaYGkr5Sp7dyL5FC3zlcdJX62ZYbUjU3JLD31BP6TkO/f4
	 fUkrlG8gPnHUKLzKyug7JboVFMkUlJTY+xCfnlvu/DPp0Z/gCCeZO5kQg35wU/Czbf
	 sPwuQQ6Xf/VG67+lrmJPbqmvxAcD6VgBGoWvtPdOUZlorJQo3ZSEKlPqTCZGY1wz8N
	 FXpkLJhzlGSu1zoHCXd+zfhcF3UmupNg5QbhVRIppoMwuzu84+jrIiwN2rx8nKYyha
	 oKbIYdx9M6OzwbJkJrZPT9tebELeaKhcW5eDIVNdfLoN+JlT5SVm2E4IrIN8IU/ACz
	 FqcYQfHX6SRMg==
Date: Sun, 13 Sep 2026 11:52:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Kathiravan T <quic_kathirav@quicinc.com>,
	Baruch Siach <baruch@tkos.co.il>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
	Manu Gautam <mgautam@codeaurora.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 0/3] phy: qcom-qusb2: sort out register layouts
Message-ID: <aqZBFvKu24Ed_IKj@parshuram>
References: <20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com>
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

On 06-07-26, 16:53, Dmitry Baryshkov wrote:
> IPQ6018 and MSM8996 use the same register layout, however for historical
> reasons ipq6018_regs_layout ended up correctly definig TEST1 register at
> 0x98 (because platforms using that layout didn't use autoresume), while
> msm8996_regs_layout used TEST_CTRL offset (0xb8) for the TEST1 layout
> entry. Fix handling of the autoresume register and definitions of those
> regs layouts.

This fails to apply on the current code, can you please rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
