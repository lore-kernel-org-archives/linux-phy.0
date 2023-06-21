Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5188FEB64DC
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 17:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olGrwH86/Sczz9TFcd3mFhn7k0P4mBkk0SrD9OqQx8I=; b=pJQHsF3NrHFsGC
	qz+qFBdTl1BGKIGTFLU7PvnG/T5mgFtUV/6rlPgXMTQV0OxSN+ZbKPlwwtb+oYL6UVzQ4irWQIJ8e
	IlXAazD1wDPk2624epWkB/P6UNo/Y0ubMAmGoRbECW/2RVEvjtUZTjq1BgdrWseDM5ogP79rXWeej
	MytursnCGZU0/4pspvqjhX1kufY+Glwxg2Q/sIvX9LOlLaFEgF7O2LJAfiQzOXHk279Hrv8O0UKaa
	hC2+ns+1AWu6JywhkfG7Uy1h6hqemmVJvvAlJFL+fvyhC1YzsoCoKNgEqnTbxtzHSJynP36lsEOIp
	ya5q/5MhL2yXfPl1gzPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC1iv-00FEma-2n;
	Wed, 21 Jun 2023 17:34:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC1it-00FEm9-2W
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 17:34:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 21AD261633;
	Wed, 21 Jun 2023 17:34:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09BFDC433C8;
	Wed, 21 Jun 2023 17:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687368866;
	bh=w+j4f0hYpVnXaVscO0mrsKi1Q9BR0HA6avy4G1LwDVE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BmD950TE+eZ3JMUs23+Xmbcn1dt/hvs9VExg2PPUllZtuen9VHcm5u6G3ZJjftC2Q
	 MBgOS9h7cy4A4VIZxKgqaK8uQFiAPTfZDnPpmvTev/7+tjLpLTwBzBiHoyugqvasVa
	 HDasTrkAFVhFBD3MHXesnBzsskg4FMW27XXhOsayvSG7Qtq0S7H4dd1vSS4900UpmO
	 e2BhfXDFmTiOS1iqv7ytPHv40uTY/tTZtmYMoh7FEo0H/Mxzbu5ejyAdL18RprWVWE
	 eIvRmMU98dMAN3K6q++N3n1vxMFhGIBzNDvMp7KDCUS/DKLNSdMyXWBQm0L1X91Q5X
	 BP/Sb2tz3jWog==
Date: Wed, 21 Jun 2023 23:04:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Liu Ying <victor.liu@nxp.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: phy: mixel,mipi-dsi-phy: Remove
 assigned-clock* properties
Message-ID: <ZJM0nh0/xP1n5D1z@matsya>
References: <20230609071538.149712-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230609071538.149712-1-alexander.stein@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_103427_856487_833A28AD 
X-CRM114-Status: UNSURE (   6.11  )
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

On 09-06-23, 09:15, Alexander Stein wrote:
> With dt-schema v2021.02 these properties are added by default. Some SoC
> (e.g. imx8mq) configure more than just one clock using these properties.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
