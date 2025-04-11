Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1192C369A8
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 07:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gB+D8dAIzpJyEG/F+rx84ki520tubIlejk2+mTdMIx4=; b=Ia1+dnDxSbTk8n
	TOePmueX0NgM0sFY/WwufwsRCthB4nZ7L6ljFgCo58zAzGrHCw9lRLcquEQX4ezY644PAklbFBgbP
	zYE30uxGGAd1K7y6RzUzasT3CvoxL5fnn9DMzpAhnaJzqiBSPPk7jXDy2uesM+l8Tfx+sjyBt7dok
	ZHcmFOwNyGDR7v+lBY3o8y1AtXUKGfVYoRCeKUb5jv3spA9NL7rcx7N8fu6CXfZYghNyA1WDAyMN7
	B+bGfGxRNyxolFcutHjWushLZT6XijjoFuHRi+N/1cxLn+nBQJe1gCw48zIAqvAMeMYIQjYX/b3Wp
	fbim/ofSPykCndLLBL0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38qI-0000000Cs1L-0zxp;
	Fri, 11 Apr 2025 07:30:26 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38Qx-0000000CoPn-2cAn
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 07:04:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 37EEDA4A761;
	Fri, 11 Apr 2025 06:58:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF37DC4CEE2;
	Fri, 11 Apr 2025 07:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744355054;
	bh=AjLGdudkEww13Nz7cV5HJs58X3vRvdgMVqM4PyTJpeA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QMVJvaKIvCEhjqbl5AqKs0cpHMyvu1N9cmHbvDrhBSxs7Kdh9vGOrbqCV8OyzU1oj
	 MoAAUhaKELSnT1jYgtHsWFZBKmuto0m8G1IXj1Nq3YBPlyB7bbpOfObfcyroYfONfz
	 JkM7glCX0GBEqBz8N3wVhBliQdK6gIybFR9tGH+6TgjPJma7eFyN2ZhnZn5+BhDYMp
	 Xe6XktaRK5r+dvJK6M12cOtwfUp5pssjCa21VPmtLv0sGiAVEUFBEOFsucn+0HNebo
	 5UufgYKdWdB7vcKKMQLZ6LQ82uZg91TUzR/+WTVa9WieLyWaJExYxLoPI58HaKOWYE
	 ybvRBYUI1P+WQ==
Date: Fri, 11 Apr 2025 12:34:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Varadarajan Narayanan <quic_varada@quicinc.com>,
	Dmitry Baryshkov <lumag@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qusb2: Update the phy settings for IPQ5424
Message-ID: <Z/i+6k6VseihdQ69@vaman>
References: <20250407-revert_hs_phy_settings-v1-1-ec94e316ea19@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250407-revert_hs_phy_settings-v1-1-ec94e316ea19@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_000415_723609_4DE1D1F0 
X-CRM114-Status: UNSURE (   7.98  )
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

On 07-04-25, 19:51, Kathiravan Thirumoorthy wrote:
> Update the phy settings for IPQ5424 to meet compliance requirements.

Can you specify which requirements are these?

> The current settings do not meet the requirements, and the design team
> has requested to use the settings used for IPQ6018.
> 
> Revert the commit 9c56a1de296e ("phy: qcom-qusb2: add QUSB2 support for
> IPQ5424") and reuse the IPQ6018 settings.

Why not do revert first and then add the settings?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
