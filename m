Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45912D1CDA0
	for <linux-phy@archiver.kernel.org>; Tue, 22 Oct 2024 05:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dg6pyEOdkSoYctK89Gzh876d67FkKOIwBlRcTlwy9Hw=; b=g/h4HKz9iH2X9j
	7IbcAq9NjE3MPNZFKti8VF/p/ImkvRDVU9UFGV7Iwrlh0t19aUmCJBjm6rB813SShjS5cNy6Nycez
	WtnhOsYqwwTc3vk2KT4Rm2bikpr2s7crAmpqjyLcERNIvutSLWmSZMkhDdAQFhK4Li/UyWwADWXon
	r6qd1H1D88JNJt3VzdYRWD9H+2XTkwBpDrp3pe3uv06kX2NGLDdmPSIAvc262alKBxVbVoU6ShH+U
	5rDij7Yr3XTtlvjCfiyVBECRQdga90LiM3rMtwLxSovKUEi/rW8uRNwDIxiFVmqwMbYtWzUnEb/tD
	rxjwD73MXHV/4EyYGe5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t37YR-00000009fsz-3n3d;
	Tue, 22 Oct 2024 05:35:39 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t37Uy-00000009ev4-05rd
	for linux-phy@lists.infradead.org;
	Tue, 22 Oct 2024 05:32:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1D5EEA43D9D;
	Tue, 22 Oct 2024 05:31:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A45AC4CEC3;
	Tue, 22 Oct 2024 05:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729575123;
	bh=IiSrgMLg050BgnYcBYVcxxKUflvU52YA/fWuPFsF5aw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=mvhe8Sm1HCQ02npd4oZJRI+aELR57CBC9FBF3Mr+mm+YK+xcDetYz9lsN5tUq9Zzf
	 5Q4p/jDoTYlPdtRLMCnOJL9yC5eghXaEQMEpZce4JjlguRqO5x8LSKcgAe9ntfsnBn
	 JUsvOLEYanj/M6Mr8wQxivm0UUlrycWxQTTDfbbOU5s7urM0/jsz99130dxtEI1OVI
	 adrAfp5P0wJrK11KiFp84FPGAkfrQjobspviJfM/7cnJrfzgipEJ1/phvhb0jNiWAH
	 75ByfjZjMWc9QfmtcuWNLsvv6ED3IKLH9ilgI2J4u6qVSW0LTdl+SkfYuqwjdW11cN
	 Bm827xOd+cyQw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20241021-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v3-1-1918c46fc37c@linaro.org>
References: <20241021-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v3-1-1918c46fc37c@linaro.org>
Subject: Re: [PATCH v3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Fix
 X1E80100 resets entries
Message-Id: <172957511945.488725.15179296618283554454.b4-ty@kernel.org>
Date: Tue, 22 Oct 2024 11:01:59 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_223204_163784_779C4FA5 
X-CRM114-Status: UNSURE (   6.57  )
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


On Mon, 21 Oct 2024 16:53:28 +0300, Abel Vesa wrote:
> The PCIe 6a PHY is actually Gen4 4-lanes capable. So the gen4x4 compatible
> describes it. But according to the schema, currently the gen4x4 compatible
> doesn't require both PHY and PHY-nocsr resets, while the HW does. So fix
> that by adding the gen4x4 compatible alongside the gen4x2 one for the
> resets description.
> 
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Fix X1E80100 resets entries
      commit: 16fde3e076775d3b51f48d44d050746fbc9d638e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
