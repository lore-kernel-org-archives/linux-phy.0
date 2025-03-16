Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23B4EC282DE
	for <linux-phy@archiver.kernel.org>; Sun, 16 Mar 2025 17:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1Ks3pRTutNr4I5wqOOQt9YQZtm3HQFV7qzi3ffsgTA=; b=n8BntkAMYZASM3
	IJEkgr/fciEIvXNBkWqe5zp7rtl9oG3MBaqQM4Ks9JSvzw2s2NjuPFvP65RZKcnpQGYYXghuMggmF
	yNUVIZWTQLHAhj2AW2c7mXhek+kOOKvoRO02ivhP15EgQEEhX6CF6wsIqK9MOiOV5VW+tkl2/2iVM
	zBPFlxa6Gd9BWTR1WX+jQ1wwK5ecXsAfqxCzwyulvn47aqnwE1wR11wq1fw7cz6a8V4cH+1/eVxe2
	lYmgEZZAYVWkeHKsuyef+9Z/Y3t75gw0yTXuUpgQuH4ImGW/flCibvT0ZULyiLfBT2ckkVwVSNljA
	I9PV/Th7zC3HDcdOwyQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttrMS-00000000OOv-3ApQ;
	Sun, 16 Mar 2025 17:01:16 +0000
Received: from mo4-p01-ob.smtp.rzone.de ([85.215.255.52])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttrMP-00000000ODo-0I4X
	for linux-phy@lists.infradead.org;
	Sun, 16 Mar 2025 17:01:15 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1742144388; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=YoodfKxRBhB1/YfU5sEuhAMM6fpqu0ylzwJg/dBIugP2T4vRVhJamCed0/Wpx/jH3H
    xZfHZq3MmpeZ4JUUhzE2okI/ZaeyRw14tOEFl6AzyyTVi9Gtm4i240ipWixL05X9Emot
    rsMf567G5FVIHHE9Z/WVcFmabwprQGQBdddC2BkmjPmO9NdwAgbOdqv50caA7T0bX04X
    RjCInMvJAjrJc2QxTXAoiDjdn3es4yGtahAzqi1XmCmJ1LqaUrEFFr1PtxinYqvz//cc
    8rifEkNFU11SMBFEOxVBlszq32AEo7d+8ovIQcvZa0GmODZz0xGjraMyVpPvoSmyf85I
    2nIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1742144388;
    s=strato-dkim-0002; d=strato.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=/a4WBsJNkt2omozlDXzrC9B/dm4g50s1qwxJ6l1r5aw=;
    b=rN3GqVQahxfHaEpR+H/ehBNgC2TGP2P+htCMBhJxvM+O5jx3TeXfmM4JjRgufXt9Kx
    pDbJZ0HcRsRSB0TFOeD44G+VLqbff7ShwYLm6/9pgBDhIt7NC+PV5GG281Q9kJ1Wh77k
    TfwMBu3bCqhSQWQV1RIgWXw22tUzEwAbxx12yJKfYDXC65rq27+9g6jsWtGWoy82da29
    l6wyuDvSNJ6YtEPG++ykm864JLMQ/RvBSatsYRXnqGUD7NgcNNwVu9f/noIVhYaJEQyM
    8lljfwtZUatqlLUIr2lfy7b/jO45/xqQjENcJv1yBPozwvMQ2i4CbCfpu5GSYWQCwb/O
    VIbw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1742144388;
    s=strato-dkim-0002; d=goldelico.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=/a4WBsJNkt2omozlDXzrC9B/dm4g50s1qwxJ6l1r5aw=;
    b=p8HB5Aw0OWYcG++rh2RREItn6pc9Wjg8V0lOCygSUgkO1GwbAXsUMPd3gd1sl92qdk
    XcKhkDHI02ArrwVnoK3GK810A34HNPlGWov2chUGRKOATPNOazVyAnAQUk7wSFY8OtdC
    HZb4JGlmYPRoEMjuJmbkW9VDXUT2DzhQv/SzRHZ7pyh2vT246G+zyTJBU9MN8K2biF9x
    Q7hUZnpSGSIyiDrXL0V0oppMYS0bAacdsrE2BplKe6X+PPc1mpmNbziPHRvRmg/58idE
    z87BfUy1CYrjbQyIOs1gCtB/8c4T4cQAGLr/sWB4PCfXPjGOAxUcIICkoOWS2OE2xmok
    Fu3A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1742144388;
    s=strato-dkim-0003; d=goldelico.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=/a4WBsJNkt2omozlDXzrC9B/dm4g50s1qwxJ6l1r5aw=;
    b=qHfiG8wbdo54bqVuztfX0onua4cK4guN8SxMVYW3avnF6wDnN/2sJwzWWHrlVbRfIV
    1Mi4ED4WymReyJtbxgDA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o12DNOsPj0lFzL1yeTkZ"
Received: from smtpclient.apple
    by smtp.strato.de (RZmta 51.3.0 DYNA|AUTH)
    with ESMTPSA id Q56adc12GGxluvH
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate);
    Sun, 16 Mar 2025 17:59:47 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51.11.1\))
Subject: Re: [PATCH RESEND] phy: ingenic: fix unbalanced regulator_disable()
 warning
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <Z9b+wSNdyE1hN+cn@vaman>
Date: Sun, 16 Mar 2025 17:59:36 +0100
Cc: Paul Cercueil <paul@crapouillou.net>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Zhou Yanjie <zhouyanjie@wanyeetech.com>,
 linux-phy@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 kernel@pyra-handheld.com,
 linux-mips@vger.kernel.org
Message-Id: <3C1066EE-405D-43C6-912A-11943F1F43E9@goldelico.com>
References: <96da5fe557f3b2501447358895bd78decc4633ef.1735482146.git.hns@goldelico.com>
 <ab308c135c3ea5e050bbfb0b94a832c8d52d5380.camel@crapouillou.net>
 <AF49A39E-0534-4ADC-8E50-606A636D167A@goldelico.com>
 <c67e2ecbcdf481cddcc4c93716e38049e53d3e93.camel@crapouillou.net>
 <Z9b+wSNdyE1hN+cn@vaman>
To: Vinod Koul <vkoul@kernel.org>
X-Mailer: Apple Mail (2.3776.700.51.11.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250316_100113_262936_159251E6 
X-CRM114-Status: UNSURE (   7.21  )
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

Hi Vinod,

> Am 16.03.2025 um 17:39 schrieb Vinod Koul <vkoul@kernel.org>:
> 
> On 14-03-25, 11:33, Paul Cercueil wrote:
>> Vinod, can you take this?
> 
> I dont seem to have this in my queue, can you pls post it again
> 
> -- 
> ~Vinod
> 

Here it is:

https://patchwork.kernel.org/project/linux-phy/patch/96da5fe557f3b2501447358895bd78decc4633ef.1735482146.git.hns@goldelico.com/

Strangely it wasn't collected by https://patchwork.kernel.org/project/linux-mips/list/

BR and thanks,
Nikolaus


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
