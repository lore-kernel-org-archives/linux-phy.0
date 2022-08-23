Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2285C32772
	for <linux-phy@archiver.kernel.org>; Tue, 23 Aug 2022 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sq9doKEQIsichyEsE1uQ5imXrqreUtXIgBwJ0FP55NA=; b=NndNedXpueBsNd
	p02uzC8xjVRTUJpNmgzvAXyDSxYwoMsJ/TnZfLV1emOhvOJ/5hjRE644lxrRo1QjEn/vcr/jGA99X
	/YfsY6QS9MXewXuOylGBnepxoAu4WWyZ996IICDPcxbLfffdwZowt51ClqzI57Zo4yVutyL72oyrF
	L3bsNUFiZ19IY5F5IUM75dypxgFYD/A9JiynEEqd1Mra1BW4TJsa/jrwXhA865qfJ2s8/oPk7QObq
	ni2c8siT+VMAXKnZnsCs/EwYnyRd4TeppIiJpgCE6ipv+KZY30oGAaVAYnYW6Kag8qKzKGzCTmM1q
	B05ejOUf8+31+rtz0uPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQalZ-008izK-9I; Tue, 23 Aug 2022 20:44:53 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQalN-008iy2-Kv; Tue, 23 Aug 2022 20:44:43 +0000
Received: from notapiano (unknown [194.36.25.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nfraprado)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0EDE56601E65;
	Tue, 23 Aug 2022 21:44:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661287480;
	bh=jqLAj0YQtQZUtqXH+BAY2b9SkhzwQO4Yvi/MUffe6Zs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UXlGRT0GN5ZkJgDkdHbW6movx3CyrChqNzrWEo3lqznM7S7DDEdcOhYyAGF4rG5Za
	 UudB8D5M/M5rQxqQuU5Y1Z2ITl3UC/oSPGCiTh2I7PtLCENdiHdlwGOfzXzkcmPIbX
	 Y3ecc0PrQcgGB9dEswKsR40q7xk1MYi17F4DXhiRogX10fDeKvlsOQZ2RTSNg43UOr
	 WQnSPdmTcQS7ZUmehwrOjFWYkJ337Kux9LJOvgJhPGds3NmwYcG18ErEQ1NU4B4UVk
	 0w4oPy7AXgzNkkZvf+lrAT6vq9N2X2qmlXxd5TdLwOAQ2hHGFRLxy9enmmRbb46+QA
	 x0IR0rPcAsvbA==
Date: Tue, 23 Aug 2022 16:44:32 -0400
From: =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <nfraprado@collabora.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Eddie Hung <eddie.hung@mediatek.com>
Subject: Re: [PATCH 1/7] dt-bindings: phy: mediatek,tphy: add support type of
 SGMII
Message-ID: <20220823204432.ugfs7k3dn4ibbcky@notapiano>
References: <20220819091344.2274-1-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220819091344.2274-1-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_134441_841014_632D73D8 
X-CRM114-Status: UNSURE (   8.54  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, Aug 19, 2022 at 05:13:38PM +0800, Chunfeng Yun wrote:
> Add support ethernet SGMII, forgot to update type supported.
> =

> Fixes: c01608b3b46b ("dt-bindings: phy: mediatek: tphy: support type swit=
ch by pericfg")
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Hi Chunfeng,

when sending a patch series of more than 1 patch, please add a cover letter
describing a higher level overview of the changes done in the patches. Exam=
ple:
[1]

Thanks,
N=EDcolas

[1] https://lore.kernel.org/all/20220629155956.1138955-1-nfraprado@collabor=
a.com/

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
