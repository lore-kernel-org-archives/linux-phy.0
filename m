Return-Path: <SRS0=mSol=KJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0196C433B4
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 12:11:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AE13E61108
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 12:11:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AE13E61108
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G4Dlf1TKuziamghF54MMQ9vxW60CGEcUnTTxrXemAU0=; b=N4WEbtlr7pENfdKOsdjcuLuJa
	nnqkmWUla1bmyecTb0sjqxB3uPHDRja1aAtLWFwkYOPjMlm9tpEXfg6iDxqgb0eF3fGs/SYmyqYIv
	MRVEjjBl3wIqnXt7E37ED7lNOqG4eV8+rc5YSFOVEY6uw8d3ytOTvqrj/CjLa8tOszBX36kL0/QGO
	5bfkmqxqqh8QP+ooTx2vg7wb89a0kfkVs0Oy/l/dCz1oPWB4Z+lrT4xRn5ulI07c6XjHPKM1a3tZn
	dpUao5GcHs8PVuISMKi0IUePEsnS/LBTGoY7h4jdt7hN1/DBgwl6de+3l+1oQDkFUuRlDNAZEpcKA
	d4ojeKBSA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhWfT-007zwE-T7; Fri, 14 May 2021 12:11:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWfS-007zvb-0Y
 for linux-phy@desiato.infradead.org; Fri, 14 May 2021 12:11:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Q8aREhctYnz6lmqiMJFHMsU0YqjoHyBA5kVwm9e9txA=; b=d+V4E6IBoy4iHMGwu5vYHJ6GZT
 XBK0Ou6655ILk1xNcM+ZgaVTmb3iWatikwnoCgAFfeoTgQ7Tmi9F7T0i8jhAKfoqRG63kmJbqqGG5
 0j3PzS8HsPKrdZMgA1ZkMuHn94wCA3Eg78Kmcwc30kQQYWUqs8wImXjYoTnc6mrC3m9hxP4zZLL5P
 aS8EH6b4gD5rU7ibOB8JyfzcgbdoyVMnDaXEvI3+0xHlblvZNLXRLb56xvCexjZS+UJ2dcSGkk560
 JBVPeSTa4eaXI1F15Vp3IxOaRWg1cbb+dQ967KiL2RCdfrMacaXOyKMQbmXlB+Wi3x0Ln7mpN7vrX
 a/9fyFiA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWfP-00Bxk6-Il
 for linux-phy@lists.infradead.org; Fri, 14 May 2021 12:11:44 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2784C6143D;
 Fri, 14 May 2021 12:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620994303;
 bh=Ak8xjN9vVF6UKBxyyUKdQpAiCYZBC+5N0C8wu2TS6Xs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=onFjFsZggGuUM2bweNnTrpYq9UKdAZam423muyogzUsRVdq4JqVpVJP2+ZrYze5ET
 aG2O9i6d+z4KkUk3c0O0S4KmP6D0KYYK0Cpk61E572khbchZJP2nHWyT21Unhs24aV
 6ND7crz9uSHKZwVab2ksEv2MP/IsHYaOqvpUtwGT8PtPYV4aaeMAtHild0DI4Mwe4J
 vul4tOkg3PI4J/LbS5Opq+I56cCl3enJ2Z53j3YGD8aeqtRKJ2zEtpZwcHIpyzbhQP
 ZyN8zvRcJB0PAV2H6l/2Itg/dk53SiZWaFRPr+MVLMIIzBT30Bbxw3thPzcGobTnhE
 TovvD6L4/WPVA==
Date: Fri, 14 May 2021 17:41:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Chen Li <chenli@uniontech.com>
Cc: Al Cooper <alcooperx@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-phy@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH] phy: usb: Fix misuse of IS_ENABLED
Message-ID: <YJ5o+2tKH1JFV1BG@vkoul-mobl.Dlink>
References: <87czuggpra.wl-chenli@uniontech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87czuggpra.wl-chenli@uniontech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_051143_657794_D38D05FB 
X-CRM114-Status: UNSURE (   5.51  )
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

On 27-04-21, 15:17, Chen Li wrote:
> 
> While IS_ENABLED() is perfectly fine for CONFIG_* symbols, it is not
> for other symbols such as __BIG_ENDIAN that is provided directly by
> the compiler.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
