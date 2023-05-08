Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7148AC77B73
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 09:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9DYj6cGtm+FDYu0tsc9AYNpLsXxTu1fmaDGzUlq0JY=; b=Ypnc6ukuGzbzUt
	/YP/w2nhPVvxpRvjajirW4JgO4Z3y0g+Nx1zkxLGOzkiB6E3sao0eZP4lob3wJUuLhQh6qYLkKauo
	ubFi+jemLbTO4ngLVe4xWdhi5yyu8j6XnGLjpLhX84QhO2ivYLxPVZ/7GAPf6Aitxt8Ef/zySXETz
	CB5mc3Xdx1ToLXgyCQ78dQKszXBaJ6igM15ca222F+JkbX3qvketAskvm3KOX8p/14aEuxzX3xBUC
	jY+oAYWTZquWNLP2eHGM1G5YYMfY+IWkMFGfLV33OjbStSMpGPgU2jeMVrsyunYP3p3Bl6zgkvhQ/
	6ZtCk734qJ2HxpiqSZ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvxCj-0005b6-0M;
	Mon, 08 May 2023 09:30:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvxCh-0005aW-0J
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 09:30:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A0D576216D;
	Mon,  8 May 2023 09:30:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67E41C433D2;
	Mon,  8 May 2023 09:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683538245;
	bh=+eYVnMlwoYZ6LFjPJ8noxaWaBZjBLxV6a3cd6KJhDvM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d9gpGa5Yd53ziAwgOAXmo5UVXpZuqYAjgdPsVYF1eDRameQcM/t2bG+v6OB4FofcM
	 j51t+wMWezQHCEPZikaRYsgJN7d0d2fftsA4SEQmO8IjQVbXIaVpfscL5t8U3sKvJ7
	 zOz+ZKyBidGs4vp7Y/aF6nv84GfkMtNTWk64o8MkAp5e7yMS35ARBYbknte5krDr5z
	 NQexFw1C6HWvhlotMHJghVcyDiOiAVK54/+PlU01AKmKID2vi7PpHiqYnL3emh9Hfz
	 cXhL0Im1JTEaEIU/WaEnefh0KJ/kTIGAGFrIPpGi4Gw22DgXKGeHKVFkqp33vexSnI
	 KpiUXSzG9f4MA==
Date: Mon, 8 May 2023 15:00:41 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, dmitry.baryshkov@linaro.org,
	athierry@redhat.com, robh@kernel.org, konrad.dybcio@linaro.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 0/6] arm64: qcom: sa8775p: add support for USB
Message-ID: <ZFjBQXCgvwWVvA30@matsya>
References: <20230428130824.23803-1-quic_shazhuss@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230428130824.23803-1-quic_shazhuss@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_023047_175139_9081D759 
X-CRM114-Status: UNSURE (   8.59  )
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

On 28-04-23, 18:38, Shazad Hussain wrote:
> Update relavent DT bindings for USB, add new config to the phy driver,
> add USB and PHY nodes to the .dtsi and enable them in the board .dts
> for the sa8775p-ride platform.

Applied 1-4, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
