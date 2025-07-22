Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35994C83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 14:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZbIAi2BRS3pEF41HQDwZQny3kseiRWIxzNEn24wvoM=; b=djzSsvFkf/sNRX
	LnpU9moMle9XbWua4maNNuhb21AEO0hc+b3ygHGc33Wq0/EKKCHWYuNglMuisdKRh5HVEpLTSG3bc
	qEr9ZG/VBVoN9spKT53klGyCmfdCyr3US0IXxMvFPMoQyEqGfxYiVFbZxMBrvj2/EYXaIb4TRmalD
	JUKsrztoaVdMb3zW8Q53UyjeMLmwZLhwszDuGngEM92r2aowp6+5h4PKyFKI/F4nPZ2H94lbldnY0
	W0zCowutEoOnswMsOLpeeOHK9DaFLt5oAkAiKKkpoHFfOsiLBtCRLqAi7F1hVo2ChkwZVcr1RRah7
	GS1ORZutKjZN7DrsyC9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDlz-00000002fGh-4444;
	Tue, 22 Jul 2025 14:15:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDBW-00000002ZI1-08PV
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 13:37:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 707575C653C;
	Tue, 22 Jul 2025 13:37:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 697D6C4CEEB;
	Tue, 22 Jul 2025 13:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753191453;
	bh=znd0BpuwRyqMnjpW3g9CjauNbjE2GqxOTGIzyRzKmUY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=lWaFhGhmI344Ewhq2Jysi1G024uYpZARoP07K2ynbC7BwiVk3ia475yWj+Vv0+EX/
	 +g5+aQXTVzBhXzRPOL5tEn2ewlWk5vI7PK78NylHKX7J2hjo3rZNsTfHGEbfmb3CmP
	 H6guKKhJ2/sVfISkX7cQGu2Z/fhgCaeDREGizRR1sBtbEFPucQkO2Ek0pS1PI8j4V4
	 8QUmgi4w/hR+JLU9YkRrHh/43yejbUL8JUDAU2XjGqVS2Wx/RtwDJTi3Oq0BnTncdD
	 z5EFH8x9k0wBhrcwuyM8vQbEpGns63x5kMn+pW9g1AvkGV7Vwn/hWTeTO7WfgbHt5U
	 VECtYxvJrCdGw==
From: Vinod Koul <vkoul@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Luca Weiss <luca.weiss@fairphone.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
References: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
Subject: Re: [PATCH v3 0/4] Changes for the eUSB2 PHY on Milos
Message-Id: <175319144804.114152.2528801468931632951.b4-ty@kernel.org>
Date: Tue, 22 Jul 2025 19:07:28 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_063734_115747_BC1DEB75 
X-CRM114-Status: UNSURE (   6.29  )
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


On Tue, 15 Jul 2025 09:29:33 +0200, Luca Weiss wrote:
> Document the eUSB2 PHY on Milos and add some driver changes for it.
> 
> 

Applied, thanks!

[1/4] dt-bindings: usb: qcom,snps-dwc3: Add Milos compatible
      commit: 9e891b0d21bc889898e726783f20bd81f5fd4056
[2/4] dt-bindings: phy: qcom,snps-eusb2: document the Milos Synopsys eUSB2 PHY
      commit: bb39f49a433312ba7558b7cc44cfd9131b46bce1
[3/4] phy: qcom: phy-qcom-snps-eusb2: Add missing write from init sequence
      commit: 7f5f703210109366c1e1b685086c9b0a4897ea54
[4/4] phy: qcom: phy-qcom-snps-eusb2: Update init sequence per HPG 1.0.2
      commit: 828c3e9dce25a9551e52fd076136f4d9936c0498

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
