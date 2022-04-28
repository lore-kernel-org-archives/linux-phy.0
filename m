Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFBE3C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 28 Apr 2022 09:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOY/RMhULJpBgn/XhAmwUsCGSRub8I0SW3LTz9wIrCA=; b=CpDn2LGpLj8YnO
	6mW+nf+VXAXRKHg92IFV3ullVRL4gSJDVYwDwTg55NswOotGuNi8Sv+ub/39K8FTAJgd52Wf1wE1l
	lG7C7NOZPmHYfOb+tG32O2igz2ALtU35E/tIz1hY67Gd8oF3cJC4LucbFJ/xjUwl2nJipenUZwDsh
	aN4Q6yk9jIoiAyBxBGJGZTAcPtOwNpXL/mEhmHSlcq7cqhOhhxCLmsEYHIE0ej5VuwY/K9mzf8KdR
	pg05oKNNUOBUX/NnPVMVBkPhMMZ6vwf5FaUPm3pI0cGipabZ3CzyM6phgCoSYfad5pzkgQX8KaAFU
	A5/CrpmFbaLnmbFn2Omw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nk0Ri-005iBI-Vs; Thu, 28 Apr 2022 09:28:23 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nk0Rd-005i6B-Uu; Thu, 28 Apr 2022 09:28:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1651138074;
 bh=eFZgk6Xo2r3J4Uyb52jBFgNOfo4TczpA6Hj0VOCH+fc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=KybraM88HC2T2G0LGan/LS+n9CzRPrOBDDIBvAioIqaWJNOLeUtVseyee/Y0T7Kcq
 LWdWNTWCbMfu2XeVGgMaoIUlf8cT79s1ygIPBCs02IebsHpjuz1z2uArPMqFlkZYh7
 Ee+IbmbZ2B5UfBhe/IOs3VVGYYs7cj3zkofscUNc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.145.42] ([217.61.145.42]) by web-mail.gmx.net
 (3c-app-gmx-bs20.server.lan [172.19.170.72]) (via HTTP); Thu, 28 Apr 2022
 11:27:54 +0200
MIME-Version: 1.0
Message-ID: <trinity-3a10bccf-c3ed-479f-81c8-b48712f34432-1651138074158@3c-app-gmx-bs20>
From: Frank Wunderlich <frank-w@public-files.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>, Peter Geis
 <pgwipeout@gmail.com>, Michael Riesch <michael.riesch@wolfvision.net>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Aw: Re: [RFC/RFT v2 03/11] dt-bindings: phy: rockchip: add PCIe v3
 constants
Date: Thu, 28 Apr 2022 11:27:54 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <918f5bc9-77f6-4d65-7432-ab53aadd6734@linaro.org>
References: <20220426132139.26761-1-linux@fw-web.de>
 <20220426132139.26761-4-linux@fw-web.de>
 <918f5bc9-77f6-4d65-7432-ab53aadd6734@linaro.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:wsQjhvHw03OY5IcD6GPw8L4IfaYMll709s1rJPu7F6jKvdMZbJupKHX3aXdWQlSwHl4rH
 q0y5TobR7HbHC3eFkpcjhICc9UC/uOE0OBigf/Wu1N6mJCT+t/Y//PUmpjx0gFT5kWUUrj3aEKIu
 E3/z8H9gidwVF9SoYPeD7VsBuhFfUkofarIvcD6lWGWP+ms+2Dwyg0dyMPWD1eJAO0zW11TA3L20
 oTr/fD+AB5krvbWGdwY9xiZIa2MMB/1XtU8Vz1gJPCBnnCullBnye99PKFJHKYRp2qpEPcsHZrzk
 Xc=
X-UI-Out-Filterresults: notjunk:1;V03:K0:d32c7QI5lGY=:gXg4gqErt5WQuXniUhwPna
 dltdAKRieo9JCv/AzGBuT8q2L3ioqoFdiRHc2q8qiyy12CbQHMz7X6fW1Uy1CIwdI6UJQe1E7
 Z4jcGj5NeGCN2FRDkQ9fLB0jk1w088ZXcYNdPmJCCs4vSRzqGrk30ErRnv5V5Gjg74NQiLCtn
 oWDRW6Zq3XJxD7MGiStKRMovX+be8+4P/AZKm9KxdtL3845U0g4hv5qzTUQYwMmJTkgSwkaK/
 CNwzZkYCTI1DTJdozfvCBeUsXHmouGv2S9HQs0gD0R0rJt2kfJUvNaW/N9qYnSTqC86BAk1fG
 ndi5wWby4pQNhU5I5IgAVoYEjfjSH0bQG+LE6q6AcKnlMRq/6zlN7Y5CflytnkdzdVKxQD7Ty
 UkKfHelrUHw0NhNc6jLmYY99P580fVmpi/V0YEqLo2P/8umNsPdQstZhC+8a1nCEKKfEtwsVH
 qup3Ke+X3zFi+1bVLqAr7KfyMI8H15mAxWuWjafWV3qK1Rby8//TDmqxcS2u54swPpLwW4VYy
 MjP/T/OwLH9gsXNTuztUMQyO9uWOgtLouKBjDKM+Oe1Cj6ht8Fi1Sp6Ewk15fTurCgJ3Hs1hy
 CwGHvQ6RlntTKaR72EraJo2xy2qxLiPEURHAfmum56fL4cC8drgFm7JDuE5+07mV9gaXZRG8T
 0bugyhfpWo5lZa+J/EfvDT0M5EeswAo3tYJj4J0M7AOYutTU7agIs5tnlqNd/jtlSw4DCG37S
 +OazLnHHFjyshW+eY/UdJdTy1B0g2QmE0xHDT0WAQbHqSHUqak/vskqtUCXAAiOLxt+9IobXR
 xj4VJ/d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_022818_358446_552270E1 
X-CRM114-Status: GOOD (  11.03  )
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

Hi

> Gesendet: Donnerstag, 28. April 2022 um 08:34 Uhr
> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
>
> On 26/04/2022 15:21, Frank Wunderlich wrote:
> > From: Frank Wunderlich <frank-w@public-files.de>
> >
> >  include/dt-bindings/phy/phy-rockchip-pcie3.h | 21 ++++++++++++++++++++
>
> Naming - vendor,device.

ok, would rename to rockchip,pcie3-phy.h, is this ok?

> > --- /dev/null
> > +++ b/include/dt-bindings/phy/phy-rockchip-pcie3.h
> > @@ -0,0 +1,21 @@
> > +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
>
> s/MIT/BSD-2-clause/ just like bindings because it is part of it. Unless
> you took it from something and it is already licensed like that?

took this with this license from downstream-repo, only removed snps from name and changed name of include guarding.

regards Frank

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
