Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE08F606A886
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 13:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jxyIhGta;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=RAVE2pBZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WnjPf5uvjXoONiqOIfoQLTQdqlvOaoS8MkXXzj/Snvg=; b=jxyIhGtaWjR0Dcmcm7EcafTAAt
	kt7KHQqjln5WoRBttWCwFy7J0Wx1AoT38qyN4fy7xOzjSH+fvVYRLFkOOYsmbI7On+JAUOfwZrN8W
	12oxMwhqboNost5Rc4euwnz6z40CBXgmAfnHEoaSHYF+upzqC32bSOA2r3bcHXthd2ETKZ/g88K6I
	mkfl+S15L3Al0FoqeGWqSBWFtvMf8NjLzFb3oFXc5HD7scx7CdsLI3dzCKlP0PNQ9jvPxbJgo/1Jy
	zbAFVZghHy7ZWjqSuGSnJ9xZjVRVzzavH+kv6+/jOizIw2OIkGKJd2kK23iiOBl12W1wTMWrA6gYa
	uUtXt//A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrbJ-0000000D0TJ-241j;
	Fri, 13 Nov 2026 13:45:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrbI-0000000D0Sj-0nFG
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 13:45:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BD07D455F9;
	Fri, 13 Nov 2026 13:45:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFF1B1F000C4;
	Fri, 13 Nov 2026 13:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794577555;
	bh=OvqHYn6eA8PtE24P7V+m3zkPkqDeUlBhbG2I0ibGcWA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=RAVE2pBZRhxZT+r0zmPwbt0hUj2UbsD2d2pFMJVpezo9arETI2uh8ItFsqfgJJdX+
	 y/yK0oDsIryzfvNUevGwvAaLHhd75u7Dj4lTMi/tIT7Sn/jaTwUnpRRyC/k5plbaRj
	 +hyvQNaaN7h6XYqdRI+IEWdXTFvwlKM4y4Sdc9VAhPzl7+I0aTqIjvkUDPxub2zpZk
	 +kz+Iib3q9eTMwrA+In/HPAsFI7K7HapmorR3hR/ynOmGovwEmJDzieYyQh2Ioq16l
	 pdklyvOZnip8A6wwTm0AkdwxMezVwBUsCjimnD7P7joYqL2g5/v6c1fv+BrExcCjsb
	 dMGEoboU13aLQ==
From: Vinod Koul <vkoul@kernel.org>
To: Bryan O'Donoghue <bod@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com, 
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>, Vladimir Zapolskiy <vz@kernel.org>, 
 Frank Li <Frank.Li@nxp.com>, Atiya Kailany <atiya.kailany@oss.qualcomm.com>, 
 Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
References: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v25 00/15] media: qcom: camss: Add Kaanapali
 support
Message-Id: <179457754639.652128.11064545317839632813.b4-ty@kernel.org>
Date: Fri, 13 Nov 2026 19:15:46 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Thu, 12 Nov 2026 21:33:32 -0800, Hangxiang Ma wrote:
> Add support for the RDI only CAMSS camera driver on Kaanapali. Enabling
> RDI path involves adding the support for a set of CSIPHY, CSID and TFE
> modules, with each TFE having multiple RDI ports. This hardware
> architecture requires 'qdss_debug_xo' clock for CAMNOC to be functional.
> 
> Kaanapali camera subsystem provides:
> - 6 x CSIPHY (CSI Physical Layer)
> - 3 x TPG (Test Pattern Generator)
> - 3 x CSID (CSI Decoder)
> - 2 x CSID Lite
> - 3 x VFE (Video Front End), 5 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE Lite
> 
> [...]

Applied, thanks!

[01/15] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Kaanapali CSI2 PHY
        commit: 846aacbf8322a2e395dcadbfb866ba500bb4358c
[02/15] phy: qcom-mipi-csi2: Parametrise the common status register offset
        commit: 478577f3db4a929c5a68a79828cb607feb6acfd6
[03/15] phy: qcom-mipi-csi2: Add Kaanapali support
        commit: 00926bc50707312038be9a2c8035198f6a868260

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
