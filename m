Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25438C197A0
	for <linux-phy@archiver.kernel.org>; Thu, 16 Nov 2023 11:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B9n2DzElYSYEKrUFgYXQxngfhdByM60ZkpUP4YVxjrA=; b=WgzvPvSXUeTHVv
	RtaK278g8QmhD9cOgGetvvKOQvosKStVTMvwLWG/e654oJAVm00RbRc9cSj46VVpy7kDvobIVMCy2
	3apBjGISeNKzmcFWFu+dDG0TasIkDblqDJMem2+Ccf9EnYmjJCVulR6pUNNctP2agyfSpGzXQqHmy
	4f7O/FBPNav3cmONkzPW48zruvrSycAnt1lcN/0txBmn93SNkdpLXK4pnQfHozCJaqPMsVTIHhbxA
	Er8GQ3lwynNHONn4e1Q3KBhPcXQafn2aEgYjd6dLQDwrZgexYTHlLVb9KCFeuxnw/II50m0m1E2+e
	zRUyjx39+1f/0t+RG/Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3afs-003Fxk-2h;
	Thu, 16 Nov 2023 11:36:44 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3afq-003FwI-1b
	for linux-phy@lists.infradead.org;
	Thu, 16 Nov 2023 11:36:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 97AA8CE2012;
	Thu, 16 Nov 2023 11:36:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC983C433C7;
	Thu, 16 Nov 2023 11:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700134599;
	bh=hpHmPkkzEBbYwUGG7suf3v/0ogk716c/GZeTCmaVrbk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UrBHjEK7bf6jIinBjHMei4/AC9pS1WKVF1CgoU3cRWtMrqBRYh1ZBezWH7KndSDWd
	 wNWWVthB6/dsB6YYSnKVFj70tBw+TMcvalwNQNAeuZ9TXBZHMs0lHdAhSpEQPr9z/7
	 15Ds54zW+Wbfwpf08LYTXK+Tw9VhRNNhRaWT7NDYRgck/GvieYpXvwYqfvPhfJQa2o
	 gXFWvCUiZP4cK1tu+tUTxa6yW4jt88MLpwEEhZVc2hYV71+WyPv5fSRTq/nBJY6u+O
	 or/jTiFoM858hFVXYfbrOeOfaMryoBGDqwTQES89P9UuaJeCn/vfPZ70zoafmLGWIP
	 jK4vehT+i9JWQ==
Date: Thu, 16 Nov 2023 17:06:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 0/3] phy: qcom-qmp-combo: correct sm8550 PHY
 programming
Message-ID: <ZVX+wxvOnK1fUTki@matsya>
References: <20230911203842.778411-1-dmitry.baryshkov@linaro.org>
 <aabb8345-7b5d-447d-af79-1e5743465315@quicinc.com>
 <CAA8EJpoQ0k_4GSQyrziLYn1v942ppzNOvwxN55sLkZUUDWLe4w@mail.gmail.com>
 <67518705-cfc2-4ae0-9cd2-0c33146cf48b@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <67518705-cfc2-4ae0-9cd2-0c33146cf48b@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_033642_729136_4DA19014 
X-CRM114-Status: GOOD (  10.52  )
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

On 06-11-23, 15:11, Rohit Agarwal wrote:
> 
> On 11/6/2023 3:07 PM, Dmitry Baryshkov wrote:
> > Hi Rohit,
> > 
> > On Mon, 6 Nov 2023 at 08:46, Rohit Agarwal <quic_rohiagar@quicinc.com> wrote:
> > > 
> > > On 9/12/2023 2:08 AM, Dmitry Baryshkov wrote:
> > > > Fix several small issues with the QMP USB+DP PHY programming on the
> > > > Qualcomm SM8550 platform.
> > > Hi Dmitry,
> > > 
> > > Can we have a conclusion on this series?
> > Yes. Version 3 of this series was accepted by Vinod:
> > 
> > https://lore.kernel.org/linux-arm-msm/169719381727.165658.9377101716537787206.b4-ty@kernel.org/
> Thanks for the update!!!.

You need to rebase your series as send

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
