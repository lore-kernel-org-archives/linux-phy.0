Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7097EC369A8
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 11:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCgrwWqodVK6S/dFey596/kU0ukpiEJWoYzmjXUSsPg=; b=UmQ1KAEiTLBUJ0
	dYDUQ98Tos55zP+pYAgAWjC4pWm3QQaPA1j58vixkLVmwosx/LhgAtwOMGyBRpH252XlPL4xqJvmz
	9oM9MCsj6SCZNKM4C1IJtApQFowskuECvRPpGRT/5D0G3Gvq1vQsB8lSNZbK7UNayt6mf7ksd6/rB
	0CMIAQghDKv8clj3afpNtIXxb51UABNG71LxJGTc0AqTORtkU0edVF+mHxS4BUycsjtdZnl+WYWYy
	5KBloCNbEFDaPSHGZeHt2vyZWFRgdn8QjoQ8iSeYBrOM6BsS8kDrhZXcwuTYSXvvLKLQAAbthHB9f
	YqFvid45Te9ZndawjxYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3CoL-0000000DcRc-0rqC;
	Fri, 11 Apr 2025 11:44:41 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3CfT-0000000DaYt-0CPh
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 11:35:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5C4655C677A;
	Fri, 11 Apr 2025 11:33:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59453C4CEE7;
	Fri, 11 Apr 2025 11:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744371330;
	bh=ZHpRmlxi0N8UYKKEPd33twsru7ukxPU6RRFGjJueWLo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YtzGtOeI6RXdDJWLkuG5+oLCHHjqqKyUaVr2+/eUUMUheu1SmJnT6/0CQ4pdeGN7f
	 8EWsWZniLDnUaLfdMuk3dovnwAJNuhDT6vw77iXrXgvt/gl9Dbjqkrx0fX2LHO/xYy
	 DbWJ+ZhoBUjskHCl+2X4/go5vHczuBFY/U78BDFyXArgnr6s85mq4R2r2A6BCOSGpI
	 CYJ2nY5E64Qb1NzaazPOLgk9DJ07KZw2+mclhd30BETTwy4kPfogwBg8cfwV7EtrNj
	 AMMq9TqDQpDP3i6Q16wZ+UgE1DGwLv7t8vWcZIZXjHn3bfywfB93OPxnBbJjqvuLUy
	 qrIYtHqYbF3Hg==
Date: Fri, 11 Apr 2025 17:05:26 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Varadarajan Narayanan <quic_varada@quicinc.com>,
	Dmitry Baryshkov <lumag@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qusb2: Update the phy settings for IPQ5424
Message-ID: <Z/j+fs6hCVhGKLcH@vaman>
References: <20250407-revert_hs_phy_settings-v1-1-ec94e316ea19@oss.qualcomm.com>
 <Z/i+6k6VseihdQ69@vaman>
 <734cf70a-1d96-4a87-bc7e-c070c1e7dc8c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <734cf70a-1d96-4a87-bc7e-c070c1e7dc8c@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_043531_139740_BE60E5C0 
X-CRM114-Status: GOOD (  16.17  )
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

On 11-04-25, 14:29, Kathiravan Thirumoorthy wrote:
> 
> On 4/11/2025 12:34 PM, Vinod Koul wrote:
> > On 07-04-25, 19:51, Kathiravan Thirumoorthy wrote:
> > > Update the phy settings for IPQ5424 to meet compliance requirements.
> > Can you specify which requirements are these?
> 
> The eye diagram (Host High-speed Signal Quality) tests are failed with the
> current settings. So design team asked to revert.

That would be good to mention in changelog.. am sure you wont recall 6
months down the line, which requirement this triggered the change!

> > > The current settings do not meet the requirements, and the design team
> > > has requested to use the settings used for IPQ6018.
> > > 
> > > Revert the commit 9c56a1de296e ("phy: qcom-qusb2: add QUSB2 support for
> > > IPQ5424") and reuse the IPQ6018 settings.
> > Why not do revert first and then add the settings?
> 
> 
> I thought of submitting it separately. But what-if only the first patch
> merged and second one didn't due to some issue, it will break the USB
> feature. So, I thought it would be better to keep it in single commit.
> Please let me know, I can send V2 with 2 patches with the merging strategy
> (both patches should go together to avoid the USB breakage) in cover letter.

Series is applied together and you can mention the dependency on cover
letter

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
