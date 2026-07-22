Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1962DC44536
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 12:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkDDbDVBCu5pObweY9phIixgmkp+Pt8sRfZQMVniJ/M=; b=Mec/KUHtaD6AC4
	1IVB/NrpxAiQfiOOMxPklM9HGVtIQh/rKpnKgYZZ2BGQcoIswdNsSNiRTy3E30BsM2YJLu5CI96Hv
	RH6O0YPv79aJlwdbUo3fQ77BX8nnfFGzZU36PMFjh7KCmPit08OJBPMF/OJvjwBgfs1Owl3bJ6A4B
	/q3Vx76JFtFf9ES9Tck4EnRm4JdOmdQlfbNOhrUE7WlbAFO+8We6ETrqzx8RIOQ1hU6zGswS22gQ6
	Nv831+9JDMGZ12CUYhqkqSv2NdsOn+R7TRwv1uHjpr8D6Ucecj3AIVY4+vgIxeLJP3K95yapKDCbZ
	Fk7mAKUqV38sV7IyeQvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVoa-0000000BicP-3KT4;
	Wed, 22 Jul 2026 12:12:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVoZ-0000000Bibz-2CXP
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 12:12:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4B971411AF;
	Wed, 22 Jul 2026 12:12:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81F121F00A3A;
	Wed, 22 Jul 2026 12:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784722363;
	bh=YgVuWaxT3B445chB97NRUqYb6AIPcqRb+nmPPPc1R6s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=RWd+2bVY+NkWo862qDedl0L/92N6iBcjeApr9d3G/P1a23CIurX2GMJhqJfW4qB5R
	 6ZSSp0Q6UGP9Hm223+w6cxJOdX+aaFJ/n9U8GpcGioBURXaXNC2d2ztg7rXePCa/f6
	 z6d/RvSW++pdVuvCRH0oUj4R/ltxxfYz/E587/9rOzsd0odVK/d0eXXRWPVE3OhoH+
	 Eb1xqzyrMtUupwyDIyWp3GypNbhCYSqzlsG/7pWXTS+uQa4pa5YiF7oSgjIrInzaHO
	 Lz3vRhkySlQT4HccYqYAAP9unpPjsYUOOdPWNjOk1UGDM9ZyXUhWcksTQOF2olrhpw
	 kruP859T4fTAA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20260712-usb-shikra-phy-v6-v6-0-1b3e51bf1541@oss.qualcomm.com>
References: <20260712-usb-shikra-phy-v6-v6-0-1b3e51bf1541@oss.qualcomm.com>
Subject: Re: [PATCH v6 0/4] Add USB Phy driver and binding changes for
 Qualcomm Shikra SoC
Message-Id: <178472235911.252229.4302044215068298267.b4-ty@kernel.org>
Date: Wed, 22 Jul 2026 17:42:39 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Sun, 12 Jul 2026 20:58:33 +0530, Krishna Kurapati wrote:
> This series adds Driver and binding changes for USB Phys on Shikra.
> There are two USB controllers - One of them is SS capable and other is
> highspeed only capable.
> 
> Changes in v6:
> - Fix the minItems and maxItems for reset-names in qmp phy yaml
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy for Shikra
      commit: 8d3f1d5ce02152044cd3fbae201e47742b957dfd
[2/4] dt-bindings: phy: qcs615-qmp-usb3dp: Add support for Shikra SoC
      commit: 49e3105844f8dbcb7f92567b77e9f3a0a802a433
[3/4] phy: qcom-qusb2: Add support for Shikra
      commit: 346121aed2866a62c57395689f021f97a532a749
[4/4] phy: qcom: qmp-usbc: Add qmp configuration for Shikra
      commit: edb7772bb3b5ebd5e8efacfaabaade643fc4b77b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
