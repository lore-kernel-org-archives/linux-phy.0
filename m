Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DEE1EE49AA
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 13:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5wwKFsDZSlTor5+Zi6QGVWaHXUo17/i1RJYq6E8XHg=; b=lNs2+K9D4JQEWp
	yupoD+9OxwLCo18rEz1NiNPIg57Ygm73PnI34tGOGhPhPBfht1dRhVk0y32uecwk5Xs6gmoJMrRsG
	GszkZrG6uU9Gfcsnfws5hFQH5iqDV7Xyes3JWrDJ6dxaQ23g05Xe7NP7H6GiScfOwImEJ5fLDN2sB
	WaTL0AHL2G4CANrhk+qlpGcVaY8uTX8GONQ7X3LVOKPRl+Di37tFvaJxwZYXkjY7kioQfuNOzO53k
	UFGxTZpP1ci+kYTLrW3HBQ0BT+ssmzWDEkSu/AS3e04RLdRfYY0pQgy58bDtLlPDbfv/mQ0TrInS7
	E1mRv0Ln6j6CmzWjJdTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYRmu-00G528-30;
	Tue, 22 Aug 2023 13:51:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYRms-00G519-08
	for linux-phy@lists.infradead.org;
	Tue, 22 Aug 2023 13:51:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DA28A61A6A;
	Tue, 22 Aug 2023 13:51:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D52DC433C8;
	Tue, 22 Aug 2023 13:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692712272;
	bh=eNJ1ArCqNfDsBkko0rVolZfY4UgGf4CCVx88itGrCnw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oy3NM4aapbcthQupb6Wm6LrjFaAYu6eNbEScDHGjGQcGoquI3t1j3wrpzY/39j1f0
	 k824I6VSQB5FRQIiXT9vjs0gOMHMpPxrKORx3ogRQB22SkPONdxLFMRwyttaxC+8Py
	 /gY5g/+6jaSoxJ0Ht0yxsD2wcrDyMe9dE5v7iN0epWTNFCq1hRmqPIbzM7I1YXzacT
	 kj71yI21OzXtBju9xYk65XVAsgQ00sSJCsDAk7ihqMsRjigyxMJLSWd/aWh5Ul3tS4
	 xKS+RDG9XL++zpnUssbvyWD4pzkFMDwsn+SWxexVPOD+HVpgw/ia0BEViqqhRcEEa3
	 g0tpZDF9aCORg==
Date: Tue, 22 Aug 2023 19:21:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	freedreno@lists.freedesktop.org
Subject: Re: [PATCH v4 2/3] phy: qcom: qmp-combo: switch to DRM_AUX_BRIDGE
Message-ID: <ZOS9SxQTWcKM+CBa@matsya>
References: <20230817145516.5924-1-dmitry.baryshkov@linaro.org>
 <20230817145516.5924-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230817145516.5924-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_065114_140059_6D39BC9F 
X-CRM114-Status: UNSURE (   7.52  )
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

On 17-08-23, 17:55, Dmitry Baryshkov wrote:
> Switch to using the new DRM_AUX_BRIDGE helper to create the
> transparent DRM bridge device instead of handcoding corresponding
> functionality.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
