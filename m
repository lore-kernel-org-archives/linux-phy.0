Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31631D68BCD
	for <linux-phy@archiver.kernel.org>; Fri, 15 Nov 2024 17:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOXx/q3ZMl22L4eaZXinTFMja9B4DN/7GifDuCkSfuU=; b=Qqo2ucf9EFlWC8
	NMQtk2rTgQYUxPYmKQIH3ydHcvguilgLodlNzz+CnmmfZy0oNIoj3NVnUpMraVraGDNLGbGkFVI1r
	pyUsoDnw3w0SakuISJUkrpsl2SGNdA04flfJU65w6iiQqhPhB4I5SYsQ7CJUCUfGzGEyYc8uLZ2lL
	ROzQCaA7Xp7FtvZtFbQM0NxEk/LG3ZGq31SeBiPQkOnjKqMxPQknTnS0UcakDZyyH1RaV7nryV+Gq
	WsU8JwXuNRWM6BdajDRWurFGSHDqC57TtNLfHKby/B8hyTIJfoRNnAAzeI21jmxdarenGVlKu6p6r
	UNy+yF3sxlUiHY+4Tbng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tC0Z1-00000003d3b-3ydk;
	Fri, 15 Nov 2024 17:56:59 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC0Yz-00000003d2i-3RzL
	for linux-phy@lists.infradead.org;
	Fri, 15 Nov 2024 17:56:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 211AFA42BDB;
	Fri, 15 Nov 2024 17:55:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75D3EC4CED0;
	Fri, 15 Nov 2024 17:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731693416;
	bh=dthHWDqjHt3SDq3sMo1fmc57I9OJQ9v4FyjjuiizZDg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m1eCqOblAG6U6/4EUIuMx4jmJBouCncFeOE4jF2rGq5rUOfsF1lyE2zbKbD/yL6DN
	 93ckvLhUro3Pt2b/rtYXsDYFmYjBDQVWNoMqoOrWQ150HIMlOdV2ky+kwJQr8Fpx6Y
	 HT+++6Gr4F6VfHzBkUT9p82G9hAq3gmoSxXACAExNorpP07dmTO+b0opYklajDk9eg
	 HV4vmSX7wcu2Cz0SvDa2GAJT1M1cp6RupArRGyogHyJtwKAbLr6heapUfmH8x/G7pQ
	 gjsmg1vGewqqdybFlO/RqCMCCBFSprKcR/iAfHVEeALr7KTIhmOWgStklNd7nAP0Ei
	 yKVPNM1dbtbNQ==
Date: Fri, 15 Nov 2024 11:56:54 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: konradybcio@kernel.org, linux-phy@lists.infradead.org,
	andersson@kernel.org, kw@linux.com, kernel@quicinc.com,
	linux-arm-msm@vger.kernel.org, neil.armstrong@linaro.org,
	conor+dt@kernel.org, linux-kernel@vger.kernel.org,
	quic_shashim@quicinc.com, kishon@kernel.org, lpieralisi@kernel.org,
	manivannan.sadhasivam@linaro.org, quic_qianyu@quicinc.com,
	quic_kaushalk@quicinc.com, quic_aiquny@quicinc.com,
	quic_tdas@quicinc.com, quic_tingweiz@quicinc.com,
	bhelgaas@google.com, robh+dt@kernel.org, devicetree@vger.kernel.org,
	vkoul@kernel.org
Subject: Re: [PATCH 3/5] dt-bindings: PCI: qcom,pcie-sa8775p: document qcs8300
Message-ID: <173169341435.3465850.13199039748236732939.robh@kernel.org>
References: <20241114095409.2682558-1-quic_ziyuzhan@quicinc.com>
 <20241114095409.2682558-4-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241114095409.2682558-4-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_095657_919961_5886A0CD 
X-CRM114-Status: UNSURE (   7.30  )
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


On Thu, 14 Nov 2024 17:54:07 +0800, Ziyue Zhang wrote:
> Add compatible for qcs8300 platform.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie-sa8775p.yaml         | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
