Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDB4EC369A8
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 12:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DesJ5P4TpuGuxIE4oxVR/nMBAfRzWNfY2pTntLAHKrs=; b=W6jeVJ2ZLI1cjJ
	Xc5I2V73OlmYvXI6QrMFgtjHiiTEuTl+DhnjkjqPiy5bufJMYKzp1BqkG4YjaeVjFGxnxcVDH/Gmx
	RBDWNOv5i4Hjb78rbOGULzFeaIeqzYbqeKqtp04jWxLb065UPe1fQlwXvzUjzKWEhcwtivsiguxAy
	prC2/yjzMIE6M2+qZhyBT4TqG4E6Fjg98xJVFcjZ20byisyNAukzOnbmoVegzcrc1rlBJaskx+67Z
	CJZ/iaqXhYWnBtP8VPCOskoMW/i2m50P7cjZYskMm2bltiu7n4NiSio2akg/kpkBUz1t2Y6XcybiF
	u9kaTR2hr40iM83wXCZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DDE-0000000DgTL-2zIL;
	Fri, 11 Apr 2025 12:10:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DDB-0000000DgS0-33MW
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 12:10:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 274AC5C691E;
	Fri, 11 Apr 2025 12:08:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66472C4CEEA;
	Fri, 11 Apr 2025 12:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744373420;
	bh=DQ7MOBRsZsKWT1Px7XHST574lWvLmJ1SanyS9Jv2Kjw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bwJagw9qhXk84yfiY9ZmZUprVi2rsI9lVLKa2fKtKh9r4xEgziuFuMNiufAUWGSqJ
	 93SAme0Vj2VuhM0XRoqGNRiyjf1uM5b1kfDtcTWegeQkh/HctXGfSzhkbT6bKak6rV
	 rpEvKNejby5MdTx888KHHvMVFgUH4OdFyDI+dhsOu7g0dEhWIcZeczquANRk7v93C9
	 mrs2P2A5QrX6NXykAGfBOx8cUnm6gLcD3C8+HIrwmzl8EmjP1yNfiv+Qq56nOa8Cyr
	 qZSJaqFSQfa8zY7+aaRmL3RE1Z4fuL1QGHapRO6+8Kv46Z91U+uMQnv7S3zYZRbCef
	 ixwhh0Qx/8xVQ==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, manivannan.sadhasivam@linaro.org, 
 quic_mapa@quicinc.com, neil.armstrong@linaro.org, 
 konrad.dybcio@oss.qualcomm.com, Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250407121008.22230-1-quic_nitirawa@quicinc.com>
References: <20250407121008.22230-1-quic_nitirawa@quicinc.com>
Subject: Re: [PATCH V1] phy: qcom-qmp-ufs: check for mode type for phy
 setting
Message-Id: <174437341804.673813.10672950006968682394.b4-ty@kernel.org>
Date: Fri, 11 Apr 2025 17:40:18 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_051021_835585_13E9395E 
X-CRM114-Status: UNSURE (   5.39  )
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


On Mon, 07 Apr 2025 17:40:08 +0530, Nitin Rawat wrote:
> Generally all target supports Rate B but for very few like SM8550,
> two sets of UFS PHY settings are provided, one set is to support
> HS-G5 Rate A and another set is to support HS-G4 and lower
> gears with Rate B.
> 
> Commit b02cc9a17679("phy: qcom-qmp-ufs: Add PHY Configuration support
> for sm8750") apply Rate B setting for SM8550 gear 5 without checking
> for mode value (Rate A or Rate B) from Controller driver which caused
> issue as SM8550 support rate A for Gear 5.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom-qmp-ufs: check for mode type for phy setting
      commit: d784552e76a23c4ffad0e383670cd1d86064a6be

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
