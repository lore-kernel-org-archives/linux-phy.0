Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D305FCE9D7D
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 16:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBOVy3f6qsDHINlONTN/Fbik3dg2hn3qYp63g1cJH1Q=; b=H17HE6j0C4zsOM
	Ix02OYmmaOE9aXH9ry9txmkXJKy9YI+bdivwCFvdZjqR3qsCPfSguFiJ7nQk59v94IEhjYC6hulA5
	v25tMnW4VhsFQhnut6s3Zq1vOH8ZdB+i48is8HUE5XF+VKGF4ldPyobbDmSNfXH+TS6NaAwwkmrDl
	k59s5hIhoMKYpGcU9PKtVOUtjZfmbrwb4fzH47XpnzBzziswxC4xlv2ZNleCunv60fGCtwEvrJcjh
	kP+rGYxULJI18GW3r4/H+chmiQLCoVYoMKc0A/jJjVdNpAr9AdNU2FUb7vg+N0ZsIxRTbVdiM1N4x
	ndAGmaVvhkPfsHqFwQwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdA8E-0000000DVob-1zjj;
	Tue, 06 Jan 2026 16:42:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdA8D-0000000DVoG-3Nl1
	for linux-phy@bombadil.infradead.org;
	Tue, 06 Jan 2026 16:42:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=TocxqeUzcE/jWVW94JXWQTHyH3LLjMFHcaHip4smkPg=; b=beKOInZI5o+Cq6L8zm6eooFePR
	af9Do8AhgtCcHAE6/ncUkS6nQ0UFgeT4+QG6UTlxjdtH+Vuh/JdgYvciLfAQ0qPRCUt53reUPk+CL
	zoNIPAz6kqeQu2q4OLqFvNwqZW0zGANTXslgehQlSAdXCAhw3PkupanP02Blo6hvXE2GnNgJ+5p+D
	8t+yN7BND5JO/NffVeWy7F/kDDvltDILDXzKiF8xJQfrqal2khhJI3CM1Ifg+g6sJ87Jok65LBB0q
	FeYKHTVrNX42zceUkoVVaLOKdZx7UU7eclrCyFPDMiB03vpaj+KLIx00ueAZyEdkjZRYrMXMmwg+u
	N6ju6zYA==;
Received: from sea.source.kernel.org ([172.234.252.31])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdA8A-0000000A4tS-1Gvd
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 16:42:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 445D743E00;
	Tue,  6 Jan 2026 16:41:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF87AC116C6;
	Tue,  6 Jan 2026 16:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767717719;
	bh=5gY7fsBr9ub+zNkpZCbnrzp3q8QYMx0byeMr42X7x3o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SptdqJ7Hh+gwiBxEisM0+nE3hLFXLv0kxiifAk+aJZa/j9MqYbSarzPSZuI51n82f
	 w3EpKLcePo5HG//jvEIzO/1XVRESqxcLDWmgOuLIJXZ1QaN6GRqSM18zxU10CXkgWg
	 Q+TG9uZkW4mX9kxtD1RPW53kJZaLnBi3ND9MjUBNE1eFrIu+8nbFV0bXRz7lrTT9rs
	 FXQFSJJ+Pj88u1BAObuQ21Qwb3hLn2kiVv/Dbj1p8sCLEXBAAvMSzDm/VWmSjFpRYh
	 0RIskqNZWtDg+GPELpm6LdxFAHwX7xBPSjeQc9T0gZoatTsXbSwFXMnnE1iiNM8Bwg
	 BvJ0tCu502GNQ==
Date: Tue, 6 Jan 2026 10:41:56 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, vkoul@kernel.org, 
	neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	martin.petersen@oracle.com, konradybcio@kernel.org, taniya.das@oss.qualcomm.com, 
	manivannan.sadhasivam@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V3 0/4] Add UFS support for x1e80100 SoC
Message-ID: <l67bnlyrrirb3rnz7izqpe4soqjuvkbi2xawit5w2wrcc74vdo@exo4mbpac244>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
 <y7lm6zqgbhk4243diyotvox75tcmzhgbkypbkaskrtjcjbruwm@ar7kjmiyv2wr>
 <0689ae93-0684-4bf8-9bce-f9f32e56fe06@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0689ae93-0684-4bf8-9bce-f9f32e56fe06@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_164202_597708_3CD599DC 
X-CRM114-Status: GOOD (  17.73  )
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

On Tue, Jan 06, 2026 at 06:33:19PM +0530, Pradeep Pragallapati wrote:
> 
> 
> On 1/6/2026 3:50 AM, Dmitry Baryshkov wrote:
> > On Mon, Jan 05, 2026 at 08:16:39PM +0530, Pradeep P V K wrote:
> > > Add UFSPHY, UFSHC compatible binding names and UFS devicetree
> > > enablement changes for Qualcomm x1e80100 SoC.
> > > 
> > > Changes in V3:
> > > - Update all dt-bindings commit messages with concise and informative
> > >    statements [Krzysztof]
> > > - keep the QMP UFS PHY order by last compatible in numerical ascending
> > >    order [Krzysztof]
> > > - Remove qcom,x1e80100-ufshc from select: enum: list of
> > >    qcom,sc7180-ufshc.yaml file [Krzysztof]
> > > - Update subject prefix for all dt-bindings [Krzysztof]
> > > - Add RB-by for SoC dtsi [Konrad, Abel, Taniya]
> > > - Add RB-by for board dts [Konrad]
> > > - Link to V2:
> > >    https://lore.kernel.org/all/20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com
> > 
> > Where did the previous changelog go?
> i missed to amend, i will update all changelog in my next patchset.

Please just adopt b4, go/upstream provides the documentation you need.

Regards,
Bjorn

> > 
> > > 
> > > ---
> > > Pradeep P V K (4):
> > >    dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP UFS PHY
> > >      compatible
> > >    dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC compatible for x1e80100
> > >    arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
> > >    arm64: dts: qcom: hamoa-iot-evk: Enable UFS
> > > 
> > >   .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   4 +
> > >   .../bindings/ufs/qcom,sc7180-ufshc.yaml       |  37 +++---
> > >   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts    |  18 +++
> > >   arch/arm64/boot/dts/qcom/hamoa.dtsi           | 123 +++++++++++++++++-
> > >   4 files changed, 164 insertions(+), 18 deletions(-)
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
