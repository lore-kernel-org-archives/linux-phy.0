Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7926DD37499
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEX5QGJ4NlN0SNDzMPq22/F+KGGMhYUN+Kc+oFmuHxc=; b=Ug3uWs1yXihSPr
	zXm51n/Awm+jjsK8edMk9YwDwD+m4QTZpzpDHySie+ktuUlXHvPF01ht+jBIh90T5snee9NsziaeG
	3ZrBfRwis04+RAjKb9v6F3AFrTw88UoGnQOrx5aWOwc3O5iDs7c3JemBXn2GJvv7puzwE5GYnmFxf
	MZV/pj7jhq9WWKECUL+cbaFiB90Lio8wzqQtq0p4EPlme6qFZqUdQtoHYyNsPPISUdZWMxIpNipd/
	/jnbbncg/3BTMpuv353hmX7b6prcl1XO3lonihn573ALW6QFROPGE9YQEy2pAj5gs1zOKLbCICuOt
	4TK2HZa9SvBG4LITYzPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SlL-0000000FMNi-0eJQ;
	Thu, 17 Oct 2024 15:50:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SY0-0000000FJ2D-2xEZ
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 15:36:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BF3655C60F4;
	Thu, 17 Oct 2024 15:36:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC494C4CED0;
	Thu, 17 Oct 2024 15:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179379;
	bh=NfsiDZCdruACQ2h/ZlKOCEcp2Rm4sKuLxJgt6pCpxC8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=mcySTMRWCCeOzMzewoNtQoIPyP4dBZWRtec/7rLwk3CXE8Z8+OCKjBGL2ZYUWltcU
	 9V4PFEKWudMrPaMg+zK00b5kMmZ7AsHBWK544Np6K2vqD7GpZeaSOxlhAP6yJ3FAZ7
	 oggoJhinAFNVoyLzTUpo+v0iCKwJzdesl/6nN/a6p0bHHzT7gb8SSWjYDGgpfuZ3dJ
	 y9svJdW6u3Ua0O6tplYjsqTgXJQx6gPnHqqYxwUgEzWk5CHAuOVKGoP8RmWu6bCX0m
	 HsFv4D/CXJzjZ1G9dcF/o1UVarPF1duUjS0au6P94FGyAJAyBgVzGV9U1SQsg475UZ
	 IVCVUIxqqY2QQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <20240830-nxp-ptn3222-v2-0-4c6d8535cf6c@linaro.org>
References: <20240830-nxp-ptn3222-v2-0-4c6d8535cf6c@linaro.org>
Subject: Re: [PATCH v2 0/2] phy: add NXP PTN3222 eUSB2 to USB2 redriver
Message-Id: <172917937640.288841.14254055553308923025.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:06:16 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083620_819084_EB8E0C56 
X-CRM114-Status: UNSURE (   4.65  )
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


On Fri, 30 Aug 2024 11:20:44 +0300, Dmitry Baryshkov wrote:
> The NXP PTN3222 is the single-port eUSB2 to USB2 redriver that performs
> translation between eUSB2 and USB2 signalling schemes. It supports all
> three data rates: Low Speed, Full Speed and High Speed.
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: add NXP PTN3222 eUSB2 to USB2 redriver
      commit: 2df490e7374de8e940d353cfcafd3c91242841ea
[2/2] phy: add NXP PTN3222 eUSB2 to USB2 redriver
      commit: c9be539e11f0bf1665c03108d3b7881a5d67ae48

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
