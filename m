Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A617CA0EE4
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 15:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbVuqAur7yjDCbTxr2tT+nqO6mBphDFd1X3MYPGUnfk=; b=cIl85OiclxhTsF
	uTj5KF3Et7cTd7sLlauc3vje2G4nGu6JjakEm/mLKV4tekX+omacjl8VRnyqoIS3DscipAbCz0PJx
	4eHuoOexRJDpE2gqIZvA3XxE1TMTNgFIS6e+9OPwomwRYsbdWiNiSCuHCBo0QERbqjHRKTUpRySWY
	RzTJCfAySptZyFE3frQ1Q+DPqG3f+F3zWkdtgLLgnP3UUoE0VuZlyKGsVcmdrQ/j4fEacyPWfvAeo
	9ow7k1Akfztf1PKo3+RIYvDlKjDEqE82tiJdjVzXAplqsieH+FSuMmc/KbWIVOzN3YUJxQP+e1xgw
	cP6HHSSvPrebbs8mFKeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uma1Y-0000000HUOQ-276P;
	Thu, 14 Aug 2025 15:37:52 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYSa-0000000H8IN-2K45
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 13:57:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D3E89601D8;
	Thu, 14 Aug 2025 13:57:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED100C4CEEF;
	Thu, 14 Aug 2025 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755179859;
	bh=HDp76a4HRw4RvUGfcdrg8MD9/AGTIv3ub3NY3or0h6o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=imZmxmTdpe1DpQe2hutFLPJnz6FQ+NtHcttxRVtIWRW1vjq6Cz5z+4MRI3Qcdv0hp
	 0iwGzCyH4QvEh27XhRp9eROPm3kXdLBTUNId1qvLK7Y3Vhd0OXSJm+kHW45xQyVck8
	 GplxT5bs5/vAEjtXe3UhrJZXe9XQdvFgFd5prum3QO4z93uT+FRnRMyG9+bG5hAtI+
	 HSXxH/2hMcuv6Zsa+q3583JvcYa+DvwKHLGwGVnAImA+/IAWueIoFFAuikuxGa6HRE
	 3I/kNxoP7WT19h6GnMRJ2/CGFFD2uhEIZfBM8DCrztMzDvFCcPGvATyFPD7NoAjmTv
	 NHRvFICWhyOsw==
Date: Thu, 14 Aug 2025 08:57:31 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Harrison Vanderbyl <harrison.vanderbyl@gmail.com>, 
	marcus@nazgul.ch, kirill@korins.ky, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, agross@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH 3/3] dts: describe x1e80100 ufs
Message-ID: <r52n5wfjsfrdotrawjes5pscrcyd5jwnsxkue7v5x55gq3ad3o@egwactada25n>
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
 <20250814005904.39173-4-harrison.vanderbyl@gmail.com>
 <tlkv63ccpnti367am47ymhaw3agjnyuonqstgtfaazhhptvgsp@q4wzuzdph323>
 <57ce520f-a562-471f-b6b4-44f0766a7556@kernel.org>
 <aa0ed59a-4eb6-4f7f-b430-4976ee9724d8@oss.qualcomm.com>
 <433e1189-e2b6-4299-9fa7-13e7994ec89c@kernel.org>
 <25c5vwdgrfar6rz657nyijan7ozo5nzyyxb2w26wf5rvxftkvm@wy2fbsi77prj>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25c5vwdgrfar6rz657nyijan7ozo5nzyyxb2w26wf5rvxftkvm@wy2fbsi77prj>
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

On Thu, Aug 14, 2025 at 02:26:07PM +0300, Dmitry Baryshkov wrote:
> On Thu, Aug 14, 2025 at 01:18:46PM +0200, Krzysztof Kozlowski wrote:
> > On 14/08/2025 11:46, Konrad Dybcio wrote:
> > > On 8/14/25 8:59 AM, Krzysztof Kozlowski wrote:
> > >> On 14/08/2025 04:42, Bjorn Andersson wrote:
> > >>> On Thu, Aug 14, 2025 at 10:59:04AM +1000, Harrison Vanderbyl wrote:
> > >>>
> > >>> Welcome to LKML, Harrison. Some small things to improve.
> > >>>
> > >>> Please extend the subject prefix to match other changes in the files of
> > >>> each patch, e.g. this one would be "arm64: dts: qcom: x1e80100: ".
> > >>>
> > >>> "git log --oneline -- file" is your friend here.
> > >>>
> > >>>> Describe device tree entry for x1e80100 ufs device
> > >>
> > >> This is duplicating earlier patches:
> > >> https://lore.kernel.org/all/szudb2teaacchrp4kn4swkqkoplgi5lbw7vbqtu5vhds4qat62@2tciswvelbmu/
> > > 
> > > (that submitter clearly expressed lack of interest in proceeding)
> > > 
> > 
> > Sure, would be good though to reflect that - provide summary of previous
> > discussions, changelogs or at least give links.
> 
> ... Also keep authorship and SoB chain.
> 

If it's based on those patches yes, otherwise no.

Regards,
Bjorn

> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
