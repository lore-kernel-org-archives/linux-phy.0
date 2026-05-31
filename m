Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5D6FCD5BD1
	for <linux-phy@archiver.kernel.org>; Sun, 31 May 2026 12:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sg4L1HOVfyvYH+ce4ad6jEqNXGwLbKvTM4Rr6/4obro=; b=tefS5DVRxMc9mP
	xa7LHH0TtfGuhEAjYTkRYQtZcQmSadY5bgDu5dNVqVJy8XEujWxVEBoagYkZGpW6NZmT3T17TrsnT
	0it6ffXa8O+RDaESPCZtH1zu37z2quzwwrnzMSthDwGLqrEfJm7mp1RwOtJbSuPoguRYesB4YytnN
	/GDx/zBBvRjzV4+9Q+6g/SB0Eo0o6i/jmKWrC2/w5RcX27F35knWhLlk4QUMMDCoCF2UwC8orjCI6
	UNDpZgIKRdU2LxYE4BB3Se00fgoHcL9i3b9wjv3M9RqZS8Ut7iXh3cRUKpYK3AJ5UXIOYRbzLl3A+
	2eVMD5Aay/zEC3K4mI8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTfMh-00000009auI-1zfd;
	Sun, 31 May 2026 12:34:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTfMe-00000009atq-27B0
	for linux-phy@lists.infradead.org;
	Sun, 31 May 2026 12:34:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0802940228;
	Sun, 31 May 2026 12:34:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ED561F00893;
	Sun, 31 May 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780230839;
	bh=7GG6KQd5aX+5r9GRl8R9AHSJCz+bGDBDGfIlmgsIxCE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=D+k7/jRMZgv6UDD+8mDBRak0bpERKAEgdl0DnOT6cEGv68m2oZZPflMWDBBXg5KWi
	 EV1ZTasmRmvCR5K4wUnFwuxGI4UFBxTrB8VIkyoOxEMJhKm2Hdx3kXSUFWABLYa5dl
	 R857gEWCreSSrUZSWoA1vXoNxykP5uKrmDxRXa9g8PwZ4mJ+Tj3DcZE209YZaC3qLh
	 UrR+cW3Tzl+DZE0QoQX9HUKTlv6NiK5BwG8u3tKhIzVz417gaHdjgMCwI1Xr9/2d2T
	 hy8MHXRUpjMrtzXg+LOvnaiOuMuTXmfVYFy9DCc8Qrr7VwPMf2feHqgDE08pj2k21Z
	 olhv99IQCYZrQ==
Date: Sun, 31 May 2026 14:33:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: palash.kambar@oss.qualcomm.com
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org, alim.akhtar@samsung.com, 
	bvanassche@acm.org, andersson@kernel.org, dmitry.baryshkov@oss.qualcomm.com, 
	abel.vesa@oss.qualcomm.com, luca.weiss@fairphone.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add
 Hawi UFS PHY compatible
Message-ID: <20260531-rigorous-gay-sturgeon-e8cfe2@quoll>
References: <20260526090956.2340262-1-palash.kambar@oss.qualcomm.com>
 <20260526090956.2340262-2-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260526090956.2340262-2-palash.kambar@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260531_053400_560585_0A6CD4CD 
X-CRM114-Status: UNSURE (   4.99  )
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

On Tue, May 26, 2026 at 02:39:54PM +0530, palash.kambar@oss.qualcomm.com wrote:
> From: Palash Kambar <palash.kambar@oss.qualcomm.com>
> 
> Document QMP UFS PHY compatible for Hawi SoC.

Lack of compatibility is a mistake or intentional?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
