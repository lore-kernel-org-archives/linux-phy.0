Return-Path: <SRS0=mSol=KJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1317CC433ED
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 11:44:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C68046145B
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 11:44:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C68046145B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HYXdyNpcW9M+Ytwa7v6LFAJX3+rFvArEzg3kheesgVg=; b=CSuT7H5Ykx3mqp2s5kqhI1dVe
	Me//mmFZ+9yryn5eeHSGqytCiH+A+GzgMX79lIV4qYXJig44LxWcNYIZM1OGA3JFPpLrMJ2m6xe2g
	Up9TxeDQDEFoApNx0jkLpCBrwJb1iBL7F0rPdUm5TpSSEYK57e693jm3vL90oiQxEzEzUBFEHoafs
	vsD18FZa78nIm3wbkw2oDEbj81G53xQutiV9OiZEvCc6g1luUf3fAIB0Epi68rDYfnX01eU9skmnU
	GGYgsq5KC6NJUUNrj+y9yiQeb1kF1dZ+9ym4eaQx/l7ZRrM6TjppSPxk8uueMVxp62kLnCUjDqy56
	lLBYnalDA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhWEb-007wzm-3x; Fri, 14 May 2021 11:44:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWEM-007wxM-IT; Fri, 14 May 2021 11:43:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0kc2yQNTRcc1Onbi1b+Zy2JW/yrMLWc8kUvLwYUym5o=; b=tVMLNNFak5t40m6f9Tykt3+uy2
 uWk7qp7y/h5w0Uf6sa5tMUaKSJ4oZO9VFD4Nfs6Fmc7AcwqGmiY6Ke3UY+69dKPNmAUVDaS5UX2fN
 PqoIzeiS6Iw944CbqpwDiwNSzHQNGQu4t34IHb1GXw5izaUQjEcsH8J7n+O1POZgud/J8gcbRA5GO
 NloBCUtlDwFIJjXPib44Jtfcx+eLoHYXGPWG7RTMmZ32p7IJjB00rMr+6+iJHqCEzg+rkPwxuXTg7
 5KnS+K+6at6b7riB581EqVlctHkEtBjgHi4qvZjBD5/DeJsLaMOWWf1aCjZkaqGwVKbjexTA11O/T
 tTgbaDWA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWEJ-00BwgJ-0l; Fri, 14 May 2021 11:43:45 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3546A61457;
 Fri, 14 May 2021 11:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620992616;
 bh=D9SeSZMfTDBXMVPovhU+ohm8+gepJ+ryWPBg/rsXxd0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KKyxg82d4tL3Rs0wPDHBCaVXdK5v32QR2/ph3b2r/vRhcrZMBK/Et7ZaHc14ntblw
 XfFfaHGy9Jd5bKkeLvYXWH3kTbKYhgvxk/QzWarLNOGdGtUpyHQpzbKVmUuiDFhxUZ
 z2PpXXTq7zTcEDc4EJERBWZC6nEGgiQuVZCQLrmX/xy5r9zTONc8EGRnSu3sng0Vib
 9NbDgWCvSEl99CRyQs51IiWRmu7Rqv6ivPIPSTY2fHoRPvsls+8LKzn92w1s2C0R/r
 4MgxC16WKdX3T58/WADX4u6y5pPadK/khyRSfB3SbJe+kdNWSTX3bhYVgkOplU57Iu
 p7Fe6KOGDS5WA==
Date: Fri, 14 May 2021 17:13:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Baruch Siach <baruch@tkos.co.il>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Robert Marko <robert.marko@sartura.hr>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org
Subject: Re: [PATCH v2 3/6] phy: qcom-qmp: add QMP V2 PCIe PHY support for
 ipq60xx
Message-ID: <YJ5iZPXkmW/rm9Ok@vkoul-mobl.Dlink>
References: <cover.1620203062.git.baruch@tkos.co.il>
 <e24f2bedb8a7346018b58136bcb0a4004d8677a0.1620203062.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e24f2bedb8a7346018b58136bcb0a4004d8677a0.1620203062.git.baruch@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_044343_100611_308325E1 
X-CRM114-Status: UNSURE (   5.73  )
X-CRM114-Notice: Please train this message.
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

On 05-05-21, 12:18, Baruch Siach wrote:
> From: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> 
> Based on code from downstream Codeaurora tree. The ipq60xx has one gen3
> PCIe port.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
