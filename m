Return-Path: <SRS0=3Sk+=OV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D14FC433F5
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 10:24:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1133E61A63
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 10:24:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1133E61A63
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/UYyo9qxqzhfB+I1RzLD80pyIc1cvHKrUqav9mP9HU=; b=WXkDKLdeThDgN3
	c+FbH9LiCDUw1s4idof1LTZsyKxe2DNzIf4Fx3Acf2rkD3X6ZZxhP7IXZyLn1/YBx4qdpsFB+rtrc
	v3k5BxJU4QaLuKWb7FP0ynho506Ka05pzftZ8zGbPnUm38NUpV68Qa+MMuGA2aiyvC0UNJHHH5B40
	bf1mBOIfS05mlnVZF4q3oyrMUwBGsGIFwLCHWqNmVaI8BxmYQA29RTlB4jD/2lM8KTPQXq4WUmWfH
	38hXJBqe0fA3zAjamM0f9fnFBJUXm8lRRezk+Va0bVVeJSecY/WKSwybdZPyebAp8gfc94PbpRutW
	u/04x8EAGnxe5nmUTbbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWFig-00HUDa-LR; Fri, 01 Oct 2021 10:24:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWFiU-00HUCP-LA; Fri, 01 Oct 2021 10:24:35 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 61D5A6103D;
 Fri,  1 Oct 2021 10:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633083874;
 bh=d2B3aqMqCeg19jkk4r/VHqci8GXUvcnxdV2Hf+/w4Og=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Oq0EJTGmH24SIL3sllAtZp7cphGmYZyf40/foG2HbPnUXk/plxpKAGr/YaiCcfOiF
 TRKJWDcOtQ+ziqW6RhhLTD2V6yqe/oLEsZqYjSfDHJyvEE7rXKEB0esqK8Hvv7mMeI
 TGd3F6hTPp/8DhoUDoi9veNWHyHBLijbkcDRtvdjM9ZD4j61+qUAtTNYKjHnN8LHnu
 +yVsdC2VnAVRHRqS88R27Xwrrv2hPFhxWLyBqSixR3m4ry3zerYCgb/CD6MsN/It4N
 o7J2ROHkwGASNURqiuqiWUPNMD1uodpKhwOhuKbqheyfTdpSR7zKUqbQSEoPkTJdzH
 jjBjbRs3GUsrQ==
Date: Fri, 1 Oct 2021 15:54:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Cai Huoqing <caihuoqing@baidu.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Make use of the helper function
 devm_add_action_or_reset()
Message-ID: <YVbh3gRziCXf1iAk@matsya>
References: <20210922130024.745-1-caihuoqing@baidu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210922130024.745-1-caihuoqing@baidu.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_032434_724136_D4CE9100 
X-CRM114-Status: UNSURE (   7.23  )
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

On 22-09-21, 21:00, Cai Huoqing wrote:
> The helper function devm_add_action_or_reset() will internally
> call devm_add_action(), and gif devm_add_action() fails then it will
> execute the action mentioned and return the error code. So
> use devm_add_action_or_reset() instead of devm_add_action()
> to simplify the error handling, reduce the code.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
