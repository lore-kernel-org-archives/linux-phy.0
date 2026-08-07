Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D047C5AC7A
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 12:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oF5e7rCnlwPs5lqfts8VMIAdqkqzv4ZaXBZXHt/+us=; b=OHLOuPFLoOokso
	8S+/bwDLzuWQi4AGcz1NJel4tX/P/ggINQf1BsWbSPR5SArggfEWRoi/gdFsgRd1BYgaAItsO9cyO
	uXFcUFG37F85lZFji+uNjJNKI5Sq/ul6M4TsiGL8WQN41AYO44Lwqk0Z01aQnSTcqGMc8SZqa/uJP
	azzibOpC3uJFvYQKsdKXfJVdeMrJ/ahVUfiv5jIicoFmUqm50/97cRRzqCJ5+yvApyH51KcvEhHku
	Frlj3rmSw54USPjp/9+Gqq9pUhkUvTEJkPD336xogieobniHtUZbu7DOucSi/ino43tZGCI2MHgH7
	pXlX0U2UB+n0/61Gc1DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJld-000000081IR-1Awo;
	Fri, 07 Aug 2026 12:33:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJlc-000000081IG-0asl
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 12:33:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 79DEC40696;
	Fri,  7 Aug 2026 12:33:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E6D31F000E9;
	Fri,  7 Aug 2026 12:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786106019;
	bh=i9losdAECiBM8oEcHaNb7WL0fGPaUuj+15/i2rCME1I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=RhrNh0LVfPsxfSfCUfH8NH0UFkb4oADC07ruWkfJNA5010mD/ahze8iHl6GmoQJu/
	 nzeAqeg+RMiUqX1z+jVm3ah4M3pi8HycRD6/0FTchLUfzmWP6Lg6VG2PD5yt3JEhgn
	 YOFDx+d1MEaeDDVhZ9uR7HZ0ndc2HCqIY/XFVszNo95r7w3nU7fPFgKmLdhD2CFxCH
	 Lo25yaitdeiYnAHjpmYmvEsszccX1MtszY26+xCuVXa/a0gEUYXNlQ2YZr+0ObVv0N
	 TNBZ8umbaqqG/AHz5JUpAV3H9UcWt5mkKkqLqZX1IserlM3wN2BbMI2a7zCUMF4eJT
	 zwG9wZ5y2B9ng==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, mani@kernel.org, alim.akhtar@samsung.com, 
 bvanassche@acm.org, andersson@kernel.org, dmitry.baryshkov@oss.qualcomm.com, 
 abel.vesa@oss.qualcomm.com, luca.weiss@fairphone.com, 
 palash.kambar@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
In-Reply-To: <20260526090956.2340262-1-palash.kambar@oss.qualcomm.com>
References: <20260526090956.2340262-1-palash.kambar@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/3] Add Hawi UFS PHY and Controller support
Message-Id: <178610601225.740291.16313821217075665373.b4-ty@kernel.org>
Date: Fri, 07 Aug 2026 18:03:32 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Tue, 26 May 2026 14:39:53 +0530, palash.kambar@oss.qualcomm.com wrote:
> This series introduces devicetree binding documentation and PHY
> initialization support required to enable UFS on this platform.
> 
> 1. Devicetree binding documentation for the QMP UFS PHY
>      used on Qualcomm Hawi.
>   2. Devicetree binding documentation for the UFS controller
>      instance present on the Hawi platform.
>   3. Initialization sequence tables and configuration required
>      for the QMP UFS PHY on Hawi SoC.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY compatible
      commit: 24d886d9344c7973e202a7f275ff8280b742446c
[2/3] scsi: ufs: qcom: dt-bindings: Document the Hawi UFS controller
      (no commit info)
[3/3] phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
      commit: 2f7b4bc47b1e22c3e510ff6e25985edbe9cd9f97

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
