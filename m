Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79415CD3427
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZSP3UioPLHlI+tzUf2MO6rAwTucEHehwPD8NpBM6GQ=; b=AC6s8OrfLK4dD0
	JcvLmLK1ZK1W9olaAuR9KshSSJmyCSwEM+pBT59rR1WytZS8NPlhBA4Unq3CV1mdkKGQ4FWVXbLCk
	UQoiCELA8EhfxwBH+XjI3gw66qrSNIo14Fi7D/Uh8wp/bMZHWwZSZ+28/QzL9c690ktDzgAFK051w
	9skiYhFPneJ3p9tch2gktz6+YZJPL7OvmPi4xcB51DkVb/IFfsnow2EygXBEIiPPahepFOXwnbPX1
	gwf1yG9mX55RsfQmj+vd3nUJdbfC4zMp1DnxA7Kr1hnBI5EWdeoAMNGgaAlRk+j2RR8NmutnK8yno
	Bv4ZzgZ2ecPOjeSXemuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3Jn-0000000AiKz-06Gw;
	Sun, 10 May 2026 12:31:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3Jl-0000000AiKP-1Flz
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:31:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id BF63060120;
	Sun, 10 May 2026 12:31:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92FA2C2BCB8;
	Sun, 10 May 2026 12:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778416292;
	bh=RwUVSceGXN6Zj3eqGbRDwsX2wsyuE+M7//II/W2UAho=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=VtHvbgrm2fF7OkZo6Si14eE4HWRkHjFKUhM9ZBKjaDB8g31Wmg1z/YoSeI6gA6rS0
	 wlzUfPGaVuFiRSGbyrG148WxUGglq9d7kDGXD4K7zX1Z8nMnoamcLW4FXMR1YzLoxF
	 OnQ8DM7AmHQsm4+2WgrZGhrJORCHld0Jop4wY9djrefOy1pJXdbZSMCMaWUNJgTWR8
	 097Z8XyNEf58eg+mnjMJQRmp4kZHLuB9t2RpRtlJWlBHikLVGPGonrfHTaJo3qDObL
	 yVqsWVftS8gY1aPYS5yeLLahR5E3IPm0x6o7XW5yfWCZYQyFp3dTFU9IXDCyY4jPp6
	 FNyHO65bGdzzw==
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, 
 Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260504081442.825908-1-shengchao.guo@oss.qualcomm.com>
References: <20260504081442.825908-1-shengchao.guo@oss.qualcomm.com>
Subject: Re: [PATCH v3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy:
 Document Nord QMP UFS PHY
Message-Id: <177841628820.434434.13627667642408446843.b4-ty@kernel.org>
Date: Sun, 10 May 2026 18:01:28 +0530
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


On Mon, 04 May 2026 16:14:42 +0800, Shawn Guo wrote:
> Document QMP UFS PHY on Qualcomm Nord SoC.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document Nord QMP UFS PHY
      commit: 6d6ff64e01ddeb579bf0078e5b6d50c04035541e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
