Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60E87CA5FF0
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 02:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:References:Message-ID
	:In-Reply-To:From:Subject:Cc:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYVFjUC6ue0eZGaPCDn6J1n77bvDAAe1dL7LwrAmcd0=; b=xsR7Q9Vc5MELek
	1MuzA8kDdpptUpSYh8sdSxWzgULZNKyKpOV+WxT822Bfzl73ZUod8CXb8KLwmQf+0rlbhB6TOEFMj
	YCUb6TdR6x9mtGGQ5pa2vyJLKexsp7v6rLmghfF3KAGldKhY40/fMyMFIfx0UEOjMJQrS4FAbRs2Q
	RYPoo2556eW0PVsLpiIfhARrjey5Rsw5tBD08d1NTSWFRQtvF6c8Axke92ll9CYE69xfoIb+7eXVO
	V2cnfobk7XSwzRll+nTuqAnghyh9TdpeHse9G/A3oiwHFygPjjlmtsgMEkxZwy9vrRJQ2gqkoTivS
	7ioplcvfxHjNSgWFSiCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDujY-0000000HUjH-3fvy;
	Tue, 06 Oct 2026 02:16:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDujX-0000000HUj1-2jGP
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 02:16:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9E606601F1;
	Tue,  6 Oct 2026 02:16:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 144631F000FF;
	Tue,  6 Oct 2026 02:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791253004;
	bh=y9NDiOhAYDgjP3iEQSHrcfPuJD6ND8q3oVJJO/o+fHo=;
	h=To:Cc:Subject:From:In-Reply-To:References:Date;
	b=n1rwPqJj9m1VZT6XQmeuFyRnuHa2mAYnSdvUtXXOdXxeNHqfB+vUolI1o0JWhjlrb
	 1uyF6sqYRlYErLUdgGrosrq769XIZk7kxRqB++IATxIPfp96icJEpv8Utb6t2GjLWA
	 1gYMrcA0yPvzMVNhSRRG2inHOPw0z2ELGDheYetAbKxnFGAuIyUBYr76v3OFw1ZZyh
	 e+suSzZDcuI+goKBgzh5Sq4R7+Qr+NwXADM09blRYiD4kfNFF0f3q9zJkJH9ibM3cZ
	 mv7PLV2+PTpaKc+IfpYakJOooyGrg+9YV93loM87IzaiuKtgtL09wdMYbLhT3M/WMA
	 R9fah0DKO31iQ==
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Manivannan Sadhasivam <mani@kernel.org>,
  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>,  Alim Akhtar
 <alim.akhtar@samsung.com>,  Avri Altman <avri.altman@sandisk.com>,  Bart
 Van Assche <bvanassche@acm.org>,  Bjorn Andersson <andersson@kernel.org>,
  Konrad Dybcio <konradybcio@kernel.org>,  Dmitry Baryshkov
 <dmitry.baryshkov@oss.qualcomm.com>,
  gopikrishna.garmidi@oss.qualcomm.com,  jagadeesh.kona@oss.qualcomm.com,
  Abel Vesa <abel.vesa@oss.qualcomm.com>,  linux-arm-msm@vger.kernel.org,
  linux-phy@lists.infradead.org,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-scsi@vger.kernel.org,
  nitin.rawat@oss.qualcomm.com,  sibi.sankar@oss.qualcomm.com,  Taniya Das
 <taniya.das@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/5] scsi: ufs: qcom: dt-bindings: Document Glymur
 UFS controller
From: "Martin K. Petersen" <mkp@kernel.org>
In-Reply-To: <20260918-glymur_ufs_qcb_enablement-v2-2-16619f7e36a6@oss.qualcomm.com>
Message-ID: <yq1y0cbinf1.fsf@mail.kernel.org>
References: <20260918-glymur_ufs_qcb_enablement-v2-0-16619f7e36a6@oss.qualcomm.com>
	<20260918-glymur_ufs_qcb_enablement-v2-2-16619f7e36a6@oss.qualcomm.com>
Date: Mon, 05 Oct 2026 22:16:43 -0400
MIME-Version: 1.0
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


Pradeep,

> Document UFS Host Controller on Glymur SoC. Glymur UFSHC has a
> multi-queue command (MCQ) register range in addition to the standard
> one. So, both reg entries are required.

Acked-by: Martin K. Petersen <mkp@kernel.org>

-- 
Martin K. Petersen

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
