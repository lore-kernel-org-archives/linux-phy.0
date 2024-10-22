Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6437CD1CDA0
	for <linux-phy@archiver.kernel.org>; Tue, 22 Oct 2024 05:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r9vsA+lpI2fRWQmTurAtFDqQCw/rviFz7L5WoC+SpcE=; b=eC8VHHb2oAwhkB
	zovkbi1eBDnmW1iDlvgNv4kcGohWPYtlnG2w/f3CxtsGaulk+OR8bZfsgjnHJ2Ui3UB6+F+pcBRjd
	Pu9Zp0tRf1PvXfknyabMS2LYPb7xXfMYyThboCVeX0m67xd7yRDvLWJmpvX+8kJmAf8iSep4Zlx9U
	GcnzdV07puXVChA7cwn5ox0fldajmSNUl7fmGVX51u44H4x5BSHUZtteTyAjxPBxHJlf/lqNaQK0e
	6lvbiZ6RgAK+Iq6C2tRCyIp3Cxuj10K+4Hd4dgw+A6/6TvDRe5yDt3RxoG+zLAhM7Hr32qKORzR2h
	44WAVTAcUR4KDEjl7bjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t37YU-00000009fvM-05qL;
	Tue, 22 Oct 2024 05:35:42 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t37VJ-00000009f07-0YmG
	for linux-phy@lists.infradead.org;
	Tue, 22 Oct 2024 05:32:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 48874A40BBC;
	Tue, 22 Oct 2024 05:32:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 075ECC4CEC3;
	Tue, 22 Oct 2024 05:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729575144;
	bh=SVR1YzNYBxDl66dJoNkcDCN41pPVRrJm6SKLlp9sSAo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=i8+JkDOK7adUz8O/it1mR9RfOmzgs9jyF2Yhr3i/ApjpfM1ye+alCR7yzXGp2SS0y
	 oJxJWBk8V0sslplGbqYLVnmpPuO6lW9+/MFzI2HMXKmp8pvq2zfUyoRBomzEY2veUN
	 2gMFQK52NYTS71G3Me48kjs+b+pzAJuxPh4TlOO4IhFTgBMjHoBQIl8nr4UUi+z5W4
	 RvGdFgu5J1HR+ToUMJ0RijtiHRTgsXBjFLpK2yZv+YCZXkI+Cw19YH1Jgf+Rz7Yvvr
	 Dji/csKer2QMziqnEK++MQis2Wwx2meBt6ROvx85I78h5U7oFM/xeYtTijFyBqCew5
	 j+PUOvktW3cEQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jingyi Wang <quic_jingyw@quicinc.com>
Cc: quic_tengfan@quicinc.com, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Xin Liu <quic_liuxin@quicinc.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20241018-qcs8300_ufs_phy_binding-v4-1-261c7c5fb8ff@quicinc.com>
References: <20241018-qcs8300_ufs_phy_binding-v4-1-261c7c5fb8ff@quicinc.com>
Subject: Re: [PATCH v4] dt-bindings: phy: Add QMP UFS PHY compatible for
 QCS8300
Message-Id: <172957514092.488852.4271758268313965008.b4-ty@kernel.org>
Date: Tue, 22 Oct 2024 11:02:20 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_223225_268936_E9FCDBA7 
X-CRM114-Status: UNSURE (   6.18  )
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


On Fri, 18 Oct 2024 13:57:50 +0800, Jingyi Wang wrote:
> Document the QMP UFS PHY compatible for Qualcomm QCS8300 to support
> physical layer functionality for UFS found on the SoC. Use fallback to
> indicate the compatibility of the QMP UFS PHY on the QCS8300 with that
> on the SA8775P.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: Add QMP UFS PHY compatible for QCS8300
      commit: 30c280bc8e4555d55d7de7b85983990356c1e8e9

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
