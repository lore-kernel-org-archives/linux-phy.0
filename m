Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15127C4345F
	for <linux-phy@archiver.kernel.org>; Sat,  4 May 2024 12:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/sSV5BD8h23ovCXik51YAByC2D+qpuLCwDhdFxopqAc=; b=eVzX8g+ERa/1hJ
	wgKCT++cpkZ9CjjiiUl0gTOZYTlnyQR8sR2J7TU5E1RoEHUcc4+AT7C9EtC/cqi6UBW/RLYCr3luu
	BwT4cM+2AmmqaDS9rtYE23nZ45Vbf6kb/CGT2iZtq9wlg+5My13wD5bYS2AvA+9NXXN+jDg2AqROM
	uilOSryOIY3Vub6dDD0bXcNR1R97dmu4NUa0A7YWSg+OnP0lipp+k405nAGWAMCMZeaRzJyh0V7pr
	JF99WlwOKGYEnTDSwaEmvZDf7Wjyqok30JQJlxw/rgHp6Pu6VcabeyGanp9AOazJYXZd1OhW/AEtP
	YDc6N0DHLVcuvr2/RsXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3EHn-00000001y8I-2xzK;
	Sat, 04 May 2024 12:14:39 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3EHl-00000001y7n-0ts0
	for linux-phy@lists.infradead.org;
	Sat, 04 May 2024 12:14:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 22393CE18EA;
	Sat,  4 May 2024 12:14:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6F0EC2BBFC;
	Sat,  4 May 2024 12:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714824874;
	bh=z88eMv/xF/Ek+JdWis3jLwaa6vsfEHEFdguAMsCL0PY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Ekw6rmWkVJcy+BVOEnGIME5WWM9XQ1+ivRfRk9l+kM543RgR1zxGCHUjkxhKDAQsb
	 I3KN1NTzRXGqwGAvBO80EeJi9e1JytcPJVIETMPOZSwuLN2YPULbukE3TtP8xzCHlE
	 cfuUp02pdiy16N1JKxZdBKuz1GGDQCwiVtghJiD6x74VNVtCnfHhj46ikHV+bkQ8ik
	 nH1ekHHUJNfN7qCZxCn6DfFr98qAVG/0v2s9HpIiD2z7yFyJovZOirKtjkFax+t1AR
	 seuwz5mU0OZUC5MJC4hREwV9P0ai9zs04q3LfKS1SCKjsovYim69i57nXycvQr6wUG
	 Cln8UMr1B/6og==
From: Vinod Koul <vkoul@kernel.org>
To: andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, konrad.dybcio@linaro.org, 
 manivannan.sadhasivam@linaro.org, Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, 
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com, 
 quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, 
 quic_schintav@quicinc.com, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Qiang Yu <quic_qianyu@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <1714494089-7917-1-git-send-email-quic_msarkar@quicinc.com>
References: <1714494089-7917-1-git-send-email-quic_msarkar@quicinc.com>
Subject: Re: (subset) [PATCH v2 0/2] arm64: qcom: sa8775p: add support for
 x4 EP PCIe controller
Message-Id: <171482486317.28322.7019120026005248383.b4-ty@kernel.org>
Date: Sat, 04 May 2024 17:44:23 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240504_051437_505628_7839AD65 
X-CRM114-Status: UNSURE (   5.59  )
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


On Tue, 30 Apr 2024 21:51:25 +0530, Mrinmay Sarkar wrote:
> This series updates PHY and add EP PCIe node in dtsi file for
> ep pcie1 controller that supports gen4 and x4 lane width.
> 
> Dependency for Patch 2
> ----------------------
> 
> Depends on:
> https://lore.kernel.org/all/1714492540-15419-1-git-send-email-quic_msarkar@quicinc.com/
> 
> [...]

Applied, thanks!

[1/2] phy: qcom-qmp-pcie: add x4 lane EP support for sa8775p
      commit: 82b7487b8eb93e82ace92866560de3d4952555db

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
