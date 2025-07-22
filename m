Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFD69C83F1A
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 14:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCRu8JEiUX/hMlQf9aFtsw0NfVYtojNre90f8FSx+TI=; b=xo2ZggJJ1NXa6n
	4i9pirrJBLi6xJ/9WzUkHbg0AJathQVlH9hXKohOBXdDGZbycEkXdv7c1cb8My7QCCobNsShpzmY/
	T9n38OaEuSCpONDztNXmBmaBVn03rZiHEuFLfFVgb6kZB704dTM3P8jUaAREOzVx3FuJGV/Lfld9s
	4vDx2OxVUmznlDkhrmqqql1zwl2lMzB701QENh8TePzeNw5ovM/F6KwX3GyNLm5sz19l3Jf1G5ZBy
	AtmBK/1Digfy3g2DXnYYqC8wEkLmgM4XhU2yBKYIVnkFkN0rG8YBeEuvhh9Z0/vjXaiWLIxWOTIqO
	iDjDkIAZDVGOX1c5uguA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDqw-00000002gGK-2llJ;
	Tue, 22 Jul 2025 14:20:22 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDBo-00000002ZOW-10PD
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 13:37:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id F05B445C36;
	Tue, 22 Jul 2025 13:37:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5714C4CEF9;
	Tue, 22 Jul 2025 13:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753191471;
	bh=NjAE4n+e6SZHziIRn2JtRoddQFIce9KdubkyfGd8BLA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=HNnBnAt/iknYpQ+K7HFfXvy/EjZGWLywfFvn0G9IeFoTwkD1PCnYJH9gl9AKHOfmz
	 xLVXX/qSoKB8gyc/6CRYYiglIz1gUpuBrVoQPX9jc0hy5q6Fn9Lwkd1C4SY9qEbWsL
	 A23suMVMrxZ/p4l8YeZMdGibO1HS4EMh67vZfeAzRv15/g8WvER6ieiXv7McuwudKd
	 sUekcBOfbG1hXLTTAlqMO6FIfaYeSMrJtFDsUqm3RHaVyATlYTqbB+iVPyONq543iH
	 q0b5eyOv3h9nxbkJZBxySg7LeE7Ne7rBYlXCkpzrTXHaX8J0kcEXvfGaRBmrwFb64I
	 zyUQTjydvO3BA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@kernel.org
In-Reply-To: <20250630-ipq5332_hsphy_complaince-v2-1-63621439ebdb@oss.qualcomm.com>
References: <20250630-ipq5332_hsphy_complaince-v2-1-63621439ebdb@oss.qualcomm.com>
Subject: Re: [PATCH v2] phy: qcom: phy-qcom-m31: Update IPQ5332 M31 USB phy
 initialization sequence
Message-Id: <175319146929.114152.10973803473678608653.b4-ty@kernel.org>
Date: Tue, 22 Jul 2025 19:07:49 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_063752_300726_F33ACF2F 
X-CRM114-Status: UNSURE (   5.15  )
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


On Mon, 30 Jun 2025 13:48:13 +0530, Kathiravan Thirumoorthy wrote:
> The current configuration used for the IPQ5332 M31 USB PHY fails the
> Near End High Speed Signal Quality compliance test. To resolve this,
> update the initialization sequence as specified in the Hardware Design
> Document.
> 
> 

Applied, thanks!

[1/1] phy: qcom: phy-qcom-m31: Update IPQ5332 M31 USB phy initialization sequence
      commit: 4a3556b81b99f0c8c0358f7cc6801a62b4538fe2

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
