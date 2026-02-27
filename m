Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C1B6FEFB5D
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYWkBc28hKLRYAexKsbe4iNvx2VV1b+Kp/GqCcdcFLs=; b=Sa9En63jJVaRUd
	C96a+DofGTGyjVVN59t2TcHP6NtGIcm37Ma30c4ip0WdAglpmjn0XF5hcVpIU0q7IlkkCCI3uYSin
	lrygcldDbq7obXAnMGOloBVQBsPGALFQ5OwBSZDF7LBZqm7M0J4v3PArAAyYdJDDcsVWZCzL3UCCB
	8+h/TR6HC754q3Qup9BxxBun5MW65pDIJDzKZq+YnPWeNr8w0fIR7RCqUoTbuIUv6YNWr1G25qKvB
	lsDF2haSG35su737j+m73FQrvw7bvQ1ZUGHOARpxi1Y8xnreSyXUTYLoSJmlqkFyQMnkveVcXi6lP
	cgFEaW0qo+zghoBXaw9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzmi-00000008d9t-0gEr;
	Fri, 27 Feb 2026 15:29:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzmf-00000008d87-27P9
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:29:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3BF61417DE;
	Fri, 27 Feb 2026 15:29:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E132FC19423;
	Fri, 27 Feb 2026 15:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772206181;
	bh=tphxylQLpsLQejlI1TA+c65Oj0EMFn8rsKnBDVlgyZM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=K8z21p6bG6mAPr0IfbUHmCRuFYfGZ+ObE9c7v5CAM8pg0UghLWHZoQHmfjCKqyB++
	 lSmpCyd1JuUM2j5K/R7lY68D7FlswDoBpnDCDn5YJnwb8qNReaE+P4oCv9LNCl76ty
	 wQKmJaUjeYS4WDSflgeRNVx1Pivdf1YYaln99ELUu/scFKMJdNb1AS9VLEfEClCGot
	 fO9kQg2e5yvSy4K5BlYF5Do2yo2fiXh27jpSpIkn6I0f3InFHbEBqBy28QDaRKfM8U
	 0DHnKU3uazwumAXKnxJNiPvS/cGPj8WCi+A4ZNrczZ51gsaSF5DNKLoSgaTd9CbFVr
	 0gjff2dpRnOQQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Nitin Rawat <nitin.rawat@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260223-eliza-bindings-phy-ufs-v3-1-2b0c0f00bcb6@oss.qualcomm.com>
References: <20260223-eliza-bindings-phy-ufs-v3-1-2b0c0f00bcb6@oss.qualcomm.com>
Subject: Re: [PATCH v3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy:
 document the Eliza QMP UFS PHY
Message-Id: <177220617754.330302.8800181516621926196.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:59:37 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_072941_565911_5619670D 
X-CRM114-Status: UNSURE (   6.48  )
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


On Mon, 23 Feb 2026 10:19:38 +0200, Abel Vesa wrote:
> Document the QMP UFS PHY compatible for the Eliza Platform. It is fully
> compatible with the PHY implemented in SM8650, so use the SM8650
> compatible as fallback.
> 
> While at it, move the QCS8300 one so that it is sorted correctly by
> fallback compatible.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document the Eliza QMP UFS PHY
      commit: caf08514bbee0736c31d8d4f406e3415cdf726bb

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
