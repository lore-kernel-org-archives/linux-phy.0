Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1933DC41535
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 15:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PJoxc7hG4+KQtdfqo0tN4H4uapOZWWdA7syt9XmYdY=; b=JDCn25DFOCePTU
	vZpNa9JZ3sMhsRjJkrc2CMeiJg6mV2JDNUEiSiZHQQzS7EObY4o7IU5brQTjQ1Y1IfI+ZtIONYZCE
	hqytLkiw0B23+GBeVihszDN536Cv/5A7fXofwx51mKRMzCEt5W6Iu5ml0i8dpz5tGi4Oto9hbRYKi
	JH9qho0xF7ztaA3rNcBe5/69QjpPHzGVv3p3BANIK+nMF37ir8Y4q08KhAF5xBNX9/zbJilmC0qnQ
	aVN+dw00bxQJwA46G1a7TOVgia/CIRS6l/wV+hvl0mAI3GZPBh8Nw2EE0776zZAd0i/aoz17g8/v2
	d0J+eyxx4czdt3df/UBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGhmB-006I3e-2R;
	Fri, 22 Dec 2023 15:49:27 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGhm8-006I30-2N
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 15:49:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 2811AB822DB;
	Fri, 22 Dec 2023 15:49:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6B0AC433C7;
	Fri, 22 Dec 2023 15:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703260162;
	bh=Ag0mzWcsnW1g3n91UWrk0/4qwvTZgSOiJlVaZYR4sxk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VlDxRxG5wy4qKpfb3iXAPj2Uc6r15R51pEALVoOguck+w7rxTUgs1Xgby3rJZNH4X
	 aie0n5cySZhL8SQ0JI70Zn4Jeexb+FDiM52jtiZqhjvg6LvIDcmcg29wi4eem6TTdD
	 P50+IEjlxIsiOcm9fcWgSSzDH7PJUBusRPKGFbWNr4gISpI+/bmuMHTreF5WTcVIrm
	 pIrpZVrkAQdSsebQ9W90K6cHkkF0JHyjU3EXoteXRH2y3Ei+iPCWckqgI6NaSPbvro
	 vXNQTvmHG14Uw6zVmpqGD25Rg4sL+c0jd52jqN2lvzDHXbQiC0xPq8l2pznqs+GUg2
	 HoSzyldwEOq+w==
Date: Fri, 22 Dec 2023 21:19:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Can Guo <quic_cang@quicinc.com>
Cc: bvanassche@acm.org, mani@kernel.org, adrian.hunter@intel.com,
	beanhuo@micron.com, avri.altman@wdc.com, junwoo80.lee@samsung.com,
	martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v8 09/10] phy: qualcomm: phy-qcom-qmp-ufs: Rectify SM8550
 UFS HS-G4 PHY Settings
Message-ID: <ZYWv_rmgLN3NuyY2@matsya>
References: <1701520577-31163-1-git-send-email-quic_cang@quicinc.com>
 <1701520577-31163-10-git-send-email-quic_cang@quicinc.com>
 <ZYRyJU9klhZzLdni@matsya>
 <ad95e193-1216-46ae-9f7d-2967a24d7a12@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad95e193-1216-46ae-9f7d-2967a24d7a12@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_074924_924897_4FC7BE59 
X-CRM114-Status: GOOD (  13.86  )
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

On 22-12-23, 15:41, Can Guo wrote:
> Hi Vinod,
> 
> On 12/22/2023 1:13 AM, Vinod Koul wrote:
> > On 02-12-23, 04:36, Can Guo wrote:
> > > The registers, which are being touched in current SM8550 UFS PHY settings,
> > > and the values being programmed are mainly the ones working for HS-G4 mode,
> > > meanwhile, there are also a few ones somehow taken from HS-G5 PHY settings.
> > > However, even consider HS-G4 mode only, some of them are incorrect and some
> > > are missing. Rectify the HS-G4 PHY settings by strictly aligning with the
> > > SM8550 UFS PHY Hardware Programming Guide suggested HS-G4 PHY settings.
> > 
> > This fails for me, as I have picked Abels offset series, can you please
> > rebase these two patches and send
> > 
> In v8, I rebased the two changes to linux-next. Is the ask there to rebase
> the two changes to phy/next?

Yes these two failed to apply for me, pls rebase and post

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
