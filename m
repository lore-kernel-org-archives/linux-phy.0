Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB944FF886F
	for <linux-phy@archiver.kernel.org>; Tue, 28 Apr 2026 06:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PLHhnHebEoOpodiujx1XDHcknXCgFsSznKM60Wdl1c=; b=Zq+pmvuPGM3J02
	w1/E+Z0yPfyg6Xqu2LH7LDcg3ipDNKrTm6RgjlAaLfICODvx9ApsKe2m+6mfgJuxXNAT7ro3Hrn3E
	oiD6hnluSZ8r0zy8Yr3tGMREQr3NDnrneziBYj2uaavoQFrQuT9/GH6omGzE/utUQ/szzSBdOxn5K
	jNN/eWKPS20ly3L+2BLe0SF3DHPeF0cPfKw1+Jx21Q7a1QORi3lGMgBuiver6P9f9GtLUci5eQ0XT
	y0ndsDvqtBhWDww5kGdf2uut5MHXCQHa5E3OcXtEa1xXvt9UaJFfYX+5DFihamMU2ZPUqIXHehpDe
	CNP10JMYtATAkGhW7tiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHbrG-00000000cyR-2Uln;
	Tue, 28 Apr 2026 06:23:46 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHbrF-00000000cy9-0YcM
	for linux-phy@lists.infradead.org;
	Tue, 28 Apr 2026 06:23:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5A0F241B19;
	Tue, 28 Apr 2026 06:23:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A662BC2BCAF;
	Tue, 28 Apr 2026 06:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777357424;
	bh=UZvg/yE8LIQ8RPyblTF9R9063/jm4KfLUiOFsofAWxM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q6o5jI20pgFjCSE0HckVSr3w7+cssiz0Egfd4cx22ZegutU6eKTlcznByt1XTQpYp
	 Hub1Ao4F0qqkiIeSsW+UoEqqyo67lxu7JjVI6wU66YZawJJsXhXyoYfJxVRhKFc8r+
	 5ih5g6KzMmYk81fM9H4y+8k8zessHh6v0zJOKgDzzqlVrHTGMszf6fEyg3FXGlroJm
	 mhii7xHhqoMPD1dtTeBccCNj+Ukh5uX/gW+lU/O1VBoYPGbux2dvWBR6A1MUk6mVz5
	 6W71old91Km/ZvMIMrATzMAPnuEWo+5U1qkJ9sHq0UuloqTCFOyLOduAr9sVyMsPPh
	 TQ3kOaCO58MJQ==
Date: Tue, 28 Apr 2026 08:23:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document
 Nord QMP UFS PHY
Message-ID: <20260428-portable-ultraviolet-swan-5f4759@quoll>
References: <20260427012732.231611-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260427012732.231611-1-shengchao.guo@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_232345_223305_0ECC36C0 
X-CRM114-Status: UNSURE (   7.09  )
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

On Mon, Apr 27, 2026 at 09:27:32AM +0800, Shawn Guo wrote:
> Document QMP UFS PHY on Qualcomm Nord SoC which is compatible with
> 'qcom,sm8650-qmp-ufs-phy'.

Why are you naming compatibles not devices in the commit msgs? We never
used, never asked for it, there are basically no such commits. git log
can help here, for example  last commit from Abel looks reasonable
(although repeating "so use fallback" is redundant - it's obvious).

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
