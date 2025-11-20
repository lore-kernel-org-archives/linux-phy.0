Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B065CF9C72
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 17:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+dKoLzlPOVQzodzDET8UgB/YnnL41eTtqYCiTH24w0=; b=n/smRNXqJHGIbg
	R/ouLzmcmUlMJjxPd83qBH2Hyk3aLJUxUIvBiOdlAC6Ty7pR86ZBjXTOJI7PI5wzzZVKBYNbIX4Yi
	Z6gsk7qzdIIGOFf7TS2KGHUoxKK3HjzCriU0LM064aNatlbzBA5kwdamLP2ZiyqBx0ZWoTyJzRCrC
	mdvksadSDvjnH5ZfkakiVYusdP0xE2Q18FyNCT5t9c1Y80uZZkZ0/j54ZO7g72XUEkDAnxxy/LJM3
	mYb08XtkskcEqi/c+bxoNliRSjoBaw0tqo0W/PoqmNfk7uWwNkoIxFRzGjmuhXpCisY5VV/wIRWqf
	CUA2uz6Wu5ZVJhMUswMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8CG-000000074C0-49jB;
	Thu, 20 Nov 2025 17:11:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8CE-000000074AU-3jJ6
	for linux-phy@lists.infradead.org;
	Thu, 20 Nov 2025 17:11:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 98F3740DAB;
	Thu, 20 Nov 2025 17:11:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20DA4C116D0;
	Thu, 20 Nov 2025 17:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658710;
	bh=OlphYL/pQTTobxITFlwAxaI7JYWGH0XB6/e5NxExJYQ=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=l3Eo2nEhr0xwRZUz/k7SyphHENNmugNBzj2XNZ/yo00gyNXv9sKJd7yT/DN5J8/XU
	 U6Vm8HHpO3Ma6vJlhjSCds256Ew1EEsw0ezA3Lm1a1ovz+epEtXSwW2fZNKDuXPZo7
	 cVDX4WXB3ol+MsROTlNp7265yElZeGKPHq9jmkmewEnd0PtpUeTyY4mu/e3fKjQw8p
	 U0OrfANiX7IDSlGvh3GflOATxegwk32Y1CnvWoKc5u4zMpD7M8EhsVM6BszYGes2Si
	 zTqeqTFt3Umo0Ow5uP3m+my9l4EPVDmVk8QhPGWvDchWXyvp7pl9EBYx59j1lWDsf1
	 qISU11IEndCTA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20251017045919.34599-2-krzysztof.kozlowski@linaro.org>
References: <20251017045919.34599-2-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Restrict
 resets per each device
Message-Id: <176365870775.207696.13094000436105798381.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:41:47 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_091150_956122_AABBA5CE 
X-CRM114-Status: UNSURE (   5.08  )
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


On Fri, 17 Oct 2025 06:59:20 +0200, Krzysztof Kozlowski wrote:
> Bindings should be complete, thus complete the constraints for the
> resets by adding missing compatibles for devices with two resets and
> "else:" clause narrowing them for all other devices.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Restrict resets per each device
      commit: a7f0d69ecdd2fec89ce1f9b600a5c721c017fa9c

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
