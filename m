Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E86F1C4451C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 07:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBG6TxgdyQGeYaNeQXTUcY3mTDXH3Tozbmhi3Tu2dLI=; b=W9228o9BC0trmB
	ua1JCMswTBAeWjBO5QQ4pj38dBv9QkA9xw/EDJtd14wyRA3KLsmw32YVQ7ydRFaPvBQGzLNoJqU6G
	/XDPzXKscKdIDhbXEjJplKz9e9GF7BPe7F+9lgeQTO4QCkfjHFM60eJkKGZMdHhn3LM1p33MuoS6o
	zNHo8jHstjDkxbe90FA1PfzP3hHmteIp9LwJwqJtfKdMQdd19HCg/aQsr2jjii3DWQSP1iDRt0+6e
	M4ucp+EhgwXm+WfX9EAoNKLuLZJHsS4QhofN5X+cvVtnK2euo818w5nA1rG38cFXPDQTVFyQTucZ3
	gxQqak17m6UlbhjMR2RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQw4-0000000B1JO-2VW6;
	Wed, 22 Jul 2026 07:00:08 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQw2-0000000B1J0-3x8y
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 07:00:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 65A0460A65;
	Wed, 22 Jul 2026 07:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DCC51F000E9;
	Wed, 22 Jul 2026 07:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784703606;
	bh=1qag43zPvLOUvv8dvXgzxys0I5jgEaBVCcZtyX8rrvI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Vz2GFqQ3kmDM3+E8pdVx79b3ByuDYrWV6QNxVaIVQ+Ej9zZcNPSDwrguOEMVTCzrI
	 Gp+GAmW/1j4vuBB/JgkYYHytA0z8VY8W4iCOn40WfMz9uO1d13/aM60nIlX7WYLC2K
	 c8V5xF5cwgfjzMccHXbi8ALUIaNPXijDKz+5jtIha7eaEp29eq9gQ1xCeBuDjGm+rd
	 bU1zNh5eyhMCH5+PSKK2S3i08GqPZwrN3HKfVyV839I3B+EoJ13I3osUAcdUIuRWVE
	 8WGyembYgaaVwNYbcg2+QGL7TQHOUZirKi8xIKJx/sMi/LEYjPCY8Dsw4+92eC9BdB
	 IX2OB7phCgkTQ==
Date: Wed, 22 Jul 2026 09:00:02 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bryan O'Donoghue <bod@kernel.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	jeyaprakash.soundrapandian@oss.qualcomm.com, Vijay Kumar Tumati <quic_vtumati@quicinc.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Atiya Kailany <atiya.kailany@oss.qualcomm.com>
Subject: Re: [PATCH v6 0/7] media: qcom: camss: Add SM8750 support
Message-ID: <20260722-real-diligent-pig-c97d3a@quoll>
References: <20260721-add-support-for-camss-on-sm8750-v6-0-a5f841061d18@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260721-add-support-for-camss-on-sm8750-v6-0-a5f841061d18@oss.qualcomm.com>
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

On Tue, Jul 21, 2026 at 05:45:59AM -0700, Hangxiang Ma wrote:
> Add support for the RDI only CAMSS camera driver on SM8750. Enabling
> RDI path involves adding the support for a set of CSIPHY, CSID and TFE
> modules, with each TFE having multiple RDI ports. This hardware
> architecture requires 'qdss_debug_xo' clock for CAMNOC to be functional.
> 
> SM8750 camera subsystem provides:
> - 6 x CSIPHY (CSI Physical Layer)
> - 3 x TPG (Test Pattern Generator)
> - 3 x CSID (CSI Decoder)
> - 2 x CSID Lite
> - 3 x VFE (Video Front End), 5 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE Lite
> 
> This series has been tested using the following commands with S5KJN5 sensor.
> - media-ctl --reset
> - media-ctl -V '"msm_csiphy2":0[fmt:SGBRG10/4096x3072]'
> - media-ctl -V '"msm_csid0":0[fmt:SGBRG10/4096x3072]'
> - media-ctl -V '"msm_vfe0_rdi0":0[fmt:SGBRG10/4096x3072]'
> - media-ctl -l '"msm_csiphy2":1->"msm_csid0":0[1]'
> - media-ctl -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
> - yavta  --capture=20 -I -n 5 -f SGBRG10P -s 4096x3072 -F  /dev/video0
> 
> Dependencies:
> - https://lore.kernel.org/all/20260720-x1e-csi2-phy-v13-0-160c31958863@linaro.org/
> - https://lore.kernel.org/all/20260708-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v12-0-f8588da41f16@linaro.org/
> - https://lore.kernel.org/all/20260720-kaanapali-camss-v15-0-c0b1c1167c5d@oss.qualcomm.com/

None of these were cleared for merging. IOW, all received comments yet
you send work which depends on it.

This is exactly something Bjorn said a week ago or so. And then a few
other maintainers re-iterated. Exactly the same, nothing learnt.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
